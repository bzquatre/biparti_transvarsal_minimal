; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Transvarsal Minimal"
#define MyAppVersion "1.0"
#define MyAppPublisher "BzQuatre"
#define MyAppURL "https://www.bzquatre.me"
#define MyAppExeName "Transvarsal Minimal.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{25FC4649-565D-47B3-90E1-9473FDE629D7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=C:\Users\bzquatre\projects\biparti_transvarsal_minimal\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist
OutputBaseFilename=Transvarsal Minimal Setup
SetupIconFile=C:\Users\bzquatre\projects\biparti_transvarsal_minimal\Icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_asyncio.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_ctypes.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_decimal.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_elementtree.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_lzma.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_multiprocessing.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_overlapped.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_queue.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_sqlite3.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\_uuid.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-console-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-datetime-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-debug-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-errorhandling-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-file-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-file-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-file-l2-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-handle-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-heap-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-interlocked-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-libraryloader-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-localization-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-memory-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-namedpipe-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-processenvironment-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-processthreads-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-processthreads-l1-1-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-profile-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-rtlsupport-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-string-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-synch-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-synch-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-sysinfo-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-timezone-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-core-util-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-conio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-convert-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-environment-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-filesystem-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-heap-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-locale-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-math-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-private-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-process-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-runtime-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-stdio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-string-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-time-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\api-ms-win-crt-utility-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\base_library.zip"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\Icon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\libcrypto-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\libffi-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\libopenblas64__v0.3.21-gcc_10_3_0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\libssl-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\pyexpat.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\python3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\python311.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\style.qss"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\Transvarsal Minimal.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\ucrtbase.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\VCRUNTIME140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\VCRUNTIME140_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\bzquatre\projects\biparti_transvarsal_minimal\dist\Transvarsal Minimal\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

