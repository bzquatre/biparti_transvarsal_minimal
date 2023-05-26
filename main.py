from PyQt5.QtWidgets import QApplication,QFileDialog, QTableWidgetItem,QWidget,QLabel,QLineEdit,QPushButton,QTableWidget,QHBoxLayout,QVBoxLayout,QMessageBox
from PyQt5.QtGui import QIntValidator,QIcon
import sys,os,csv
import pandas as pd
import networkx as nx
import matplotlib.pyplot as plt

class Windo(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowIcon(QIcon('Icon.ico'))
        self.setWindowTitle("ghrphe biparti et transvarsal minimal ")
        self.setGeometry(200,100,1024,600)
        self.columns,self.lines=QLineEdit(),QLineEdit()
        self.columns.setValidator(QIntValidator(0,100))
        self.lines.setValidator(QIntValidator(0,100,self))
        self.lines.textChanged.connect(self.addLines)
        self.columns.textChanged.connect(self.addColumns)
        self.table=QTableWidget()
        self.table.itemChanged.connect(self.disavleButtons)
        self.create_bipartite_graph=QPushButton(text="Ghraphe Biparti")
        self.create_bipartite_graph.clicked.connect(self.bipartiteGraph)
        self.transvarsal_minimum=QPushButton(text= "Transvarsal Minimum")
        self.import_csv=QPushButton(text= "Import CSV")
        self.import_csv.clicked.connect(self.importCsv)
        self.transvarsal_minimum.clicked.connect(self.calculateTransvarsalMinimum)
        self.ghraphe_Transvarsal_minimum=QPushButton(text="Ghraphe de Transvarsal Minimum")
        self.ghraphe_Transvarsal_minimum.clicked.connect(self.drawGhrapheTransvarsalMinimum)
        self.setLayout()
        self.show()
    def disavleButtons(self):
        self.transvarsal_minimum.setDisabled(True)
        self.ghraphe_Transvarsal_minimum.setDisabled(True)
    def calculateTransvarsalMinimum(self):
        try:
            matching = nx.bipartite.maximum_matching(self.B)
            vertex_cover = nx.bipartite.to_vertex_cover(self.B, matching)
        except:
            QMessageBox.information(self,'ERROR ',"le ghraphe net pas bipartite")
        else:
            QMessageBox.information(None,'Trenversal minimal ',f"T = {','.join(list(vertex_cover))}       Card(T) ={len(list(vertex_cover))}")
    def drawGhrapheTransvarsalMinimum(self):
         try:
            matching = nx.bipartite.maximum_matching(self.B)
            vertex_cover = nx.bipartite.to_vertex_cover(self.B, matching)
         except:

            QMessageBox.information(self,'ERROR ',"le ghraphe net pas bipartite")
         else:
            color_map = []
            for i in self.B:
                if i in list(vertex_cover) :
                    color_map.append('green')   
                else: 
                    color_map.append('blue') 
            nx.draw(self.B,self.pos, node_color=color_map, with_labels=False)
            nx.draw_networkx_labels(self.B, self.pos1)
            plt.show()
    def bipartiteGraph(self):
        def separ(s,a):
            s=s
            x=[]
            y=[]
            x.append(s[0])  
            i=0
            J=0
            while len(x)+len(y)<len(s):
               
                if s[i] in x :  
                    for j in a:
                        if j[0]==s[i] :
                            if j[1] not in y:
                                y.append(j[1])
                        if j[1]==s[i] :
                            if j[0] not in y:
                                y.append(j[0])
                elif s[i] in y :  
                    for j in a:
                        if j[0]==s[i] :
                            if j[1] not in x :
                                x.append(j[1])
                        elif j[1]==s[i] :
                            if j[0] not in x:
                                x.append(j[0])
              
                if i==len(s)-1:
                    i=0
                    J+=1
                    if J==len(s)-1:
                        return QMessageBox.information(self,'ERROR ',"le ghraphe net pas bipartite")
                else:
                    i+=1  
            return x,y
        l=[]
        for i in range(1,self.table.rowCount()):
            try:
                l.append(self.table.item(i,0).text())
            except:
                return QMessageBox.information(self,'ERROR ',"size tout les sommet")
        for i in range(1,self.table.columnCount()):
            try:
                l.append(self.table.item(0,i).text())
            except:
                return QMessageBox.information(self,'ERROR ',"size tout les sommet")
        z=[]
        for i in range(1,self.table.columnCount()):
            for j in range(1,self.table.rowCount()): 
                if not self.table.item(j,i) :
                    return QMessageBox.information(self,'ERROR ',"size tout les sommet")
                if self.table.item(j,i).text()=='1':
                    z.append((self.table.item(j,0).text(),self.table.item(0,i).text(),{'weight': 1}))
        try:
            x,y=separ(l,z)
        except:
            pass
        else:
            B = nx.Graph()
            B.add_nodes_from(x, bipartite=0)
            B.add_nodes_from(y, bipartite=1)
            B.add_edges_from(z)
            pos = {node:[0, i] for i,node in enumerate(x)}
            pos.update({node:[1, i] for i,node in enumerate(y)})
            nx.draw(B, pos, with_labels=False)
            self.pos=pos
            for p in pos:  # raise text positions
                pos[p][1] += 0.25
            nx.draw_networkx_labels(B, pos)
            plt.show()
            self.pos1=pos
            self.B=B
            self.transvarsal_minimum.setDisabled(False)
            self.ghraphe_Transvarsal_minimum.setDisabled(False)
    def importCsv(self):
        home_directory = os.getenv('HOME')
        fname, _ = QFileDialog.getOpenFileName(self, 'Open CSV File', home_directory, 'CSV files (*.csv)')
        if fname!='':
            with open(fname, 'r') as file:
                reader = csv.reader(file)
                data = list(reader)
            self.lines.setText(str(len(data)-1))
            self.columns.setText(str(len(data[0])-1))
            for row in range(len(data)):
                for column in range(len(data[row])):
                    self.table.setItem(row, column, QTableWidgetItem(data[row][column]))
    def addColumns(self):
        try:
            self.table.setColumnCount(int(self.columns.text())+1)
        except:
            pass
    def addLines(self): 
        try:
            self.table.setRowCount(int(self.lines.text())+1)
        except:
            pass
    def setLayout(self):
        v=QVBoxLayout()
        h=QHBoxLayout()
        h.addWidget(QLabel('X :'))
        h.addWidget(self.columns)
        h.addWidget(QLabel('Y :'))
        h.addWidget(self.lines)
        h.addWidget(self.import_csv)
        h1=QHBoxLayout()
        h1.addWidget(self.create_bipartite_graph)
        h1.addWidget(self.transvarsal_minimum)
        h1.addWidget(self.ghraphe_Transvarsal_minimum)
        v.addLayout(h)
        v.addWidget(self.table)
        v.addLayout(h1)
        return super().setLayout(v)
if __name__=="__main__":
    app=QApplication(sys.argv)
    app.setStyleSheet(open("style.qss","r").read())
    windo=Windo()
    sys.exit(app.exec_())