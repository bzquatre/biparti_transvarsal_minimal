from PyQt5.QtWidgets import QApplication,QWidget,QLabel,QLineEdit,QPushButton,QTableWidget,QHBoxLayout,QVBoxLayout,QMessageBox
from PyQt5.QtGui import QIntValidator
import sys
import pandas as pd
import networkx as nx
import matplotlib.pyplot as plt
def style():
    return"""
    

            """
class Windo(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("USTHB >> youcef >> ghrphe biparti et transvarsal minimal ")
        self.setGeometry(200,100,1024,600)
        self.colm=QLineEdit()
        self.colm.returnPressed.connect(self.addcolm)
        self.line=QLineEdit()
        self.colm.setValidator(QIntValidator(0,10000,self))
        self.line.returnPressed.connect(self.addline)
        self.table=QTableWidget()
        self.table.horizontalHeader().setStyleSheet("background-color:#ffffff;font-size: 25px;color:#00AEFF;border-radius:0px;")
        self.table.verticalHeader().setStyleSheet("background-color:#ffffff;font-size: 25px;color:#00AEFF;border-radius:0px;")
        self.line.setValidator(QIntValidator(0,10000,self))
        self.btnghraph1=QPushButton(text="Ghraphe Biparti")
        self.btnghraph1.clicked.connect(self.listable)
        self.btntranv=QPushButton(text= "Transvarsal Minimum")
        self.btntranv.clicked.connect(self.btn2)
        self.btnghraph2=QPushButton(text="Ghraphe de Transvarsal Minimum")
        self.btnghraph2.setStyleSheet('padding: 15px 25px;')
        self.btnghraph2.clicked.connect(self.btn3)
        self.setLayout(self.layout())
        self.show()
        self.showMaximized()
    def btn2(self):
        try:
            matching = nx.bipartite.maximum_matching(self.B)
            vertex_cover = nx.bipartite.to_vertex_cover(self.B, matching)
        except:
            QMessageBox.information(self,'ERROR ',"le ghraphe net pas bipartite")
        else:
            QMessageBox.information(self,'Trenversal minimal ',f"T = {','.join(list(vertex_cover))}       Card(T) ={len(list(vertex_cover))}")
    def btn3(self):
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
    def separ(self,s,a):
        s=s
        x=[]
        y=[]
        x.append(s[0])  
        i=0
        J=0
        while len(x)+len(y)<len(s):
            print(i) 
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
            print(i)
            if i==len(s)-1:
                i=0
                J+=1
                if J==len(s)-1:
                    return QMessageBox.information(self,'ERROR ',"le ghraphe net pas bipartite")
            else:
                i+=1  
        return x,y
    def listable(self):
        
        l=[]
        for i in range(self.table.rowCount()-1):
            try:
                l.append(self.table.item(i+1,0).text())
            except:
                return QMessageBox.information(self,'ERROR ',"size tout les sommet")
        z=[]
        for i in range(self.table.columnCount()-1):
            k=[]   
            for j in range(self.table.rowCount()-1): 
                try:
                    m=self.table.item(j+1,i+1).text()
                except:
                    pass
                else:
                    if m=='1':
                        k.append(self.table.item(j+1,0).text())  
                    elif m=='' or m=='0':
                        pass
                    else:
                        return QMessageBox.information(self,'ERROR ',"la matrice net pas insidence")
            if len(k)!=2:
                return QMessageBox.information(self,'ERROR ',"la matrice net pas insidence")
            z.append((k[0],k[1],{'weight': 1}))
        try:
            x,y=self.separ(l,z)
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
    def addcolm(self):
        self.table.setColumnCount(int(self.colm.text())+1)
    def addline(self):
        self.table.setRowCount(int(self.line.text())+1)
        self.showMaximized()
    def layout(self):
        v=QVBoxLayout()
        h=QHBoxLayout()
        h.addWidget(QLabel('X :'))
        h.addWidget(self.colm)
        h.addWidget(QLabel('Y :'))
        h.addWidget(self.line)
        h1=QHBoxLayout()
        h1.addWidget(self.btnghraph1)
        h1.addWidget(self.btntranv)
        h1.addWidget(self.btnghraph2)
        v.addLayout(h)
        v.addWidget(self.table)
        v.addLayout(h1)
        return v
if __name__=="__main__":
    app=QApplication(sys.argv)
    app.setStyleSheet(open("style.qss","r").read())
    windo=Windo()
    sys.exit(app.exec_())