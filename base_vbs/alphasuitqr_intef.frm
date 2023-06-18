VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "AlphaSuitQR 1.0 Pre-beta by GatoVerde95"
   ClientHeight    =   5295
   ClientLeft      =   7380
   ClientTop       =   3375
   ClientWidth     =   6555
   Icon            =   "alphasuitqr_intef.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5295
   ScaleWidth      =   6555
   Begin VB.CommandButton Command4 
      Caption         =   "Ejecutar por VBScript"
      Height          =   495
      Left            =   3120
      TabIndex        =   8
      Top             =   4680
      Width           =   1335
   End
   Begin VB.PictureBox Picture1 
      Height          =   2655
      Left            =   840
      Picture         =   "alphasuitqr_intef.frx":1084A
      ScaleHeight     =   2595
      ScaleWidth      =   4755
      TabIndex        =   3
      Top             =   480
      Width           =   4815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Salir del Launcher"
      Height          =   375
      Left            =   4680
      TabIndex        =   2
      Top             =   4800
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "AlphaGenQR"
      Height          =   495
      Left            =   1560
      TabIndex        =   1
      Top             =   4680
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "AlphaReaderQR"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   4680
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "Hola!! : ) Bienvenido, este programa esta en Pre-beta"
      Height          =   255
      Left            =   1200
      TabIndex        =   9
      Top             =   3240
      Width           =   3975
   End
   Begin VB.Label Label3 
      Caption         =   "3. Ejecutar por VBScript (Algo inestable)"
      Height          =   375
      Left            =   960
      TabIndex        =   7
      Top             =   4320
      Width           =   3015
   End
   Begin VB.Label Label2 
      Caption         =   "2. AlphaGenQR - Generador de Codigo QR"
      Height          =   255
      Index           =   1
      Left            =   960
      TabIndex        =   6
      Top             =   3960
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "1. AlphaReaderQR - Lector de Codigo QR"
      Height          =   255
      Index           =   0
      Left            =   960
      TabIndex        =   5
      Top             =   3600
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "AlphaSuitQR 1.0 Pre-beta. Seleccione que Suit va a usar."
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Text1_Change()

End Sub

Private Sub Command1_Click()
    Dim strCmd As String
    Dim strPath As String
    
    'Obtén la ruta completa del archivo Python
    strPath = App.Path & "\pycore\aphreadqr.py" 'Reemplaza "nombre_del_archivo.py" con el nombre real de tu archivo Python
    
    'Construye el comando para ejecutar el archivo Python
    strCmd = "python " & Chr(34) & strPath & Chr(34) 'Asegúrate de tener Python instalado y configurado en tu sistema
    
    'Ejecuta el comando en la línea de comandos
    Shell strCmd, vbNormalFocus
End Sub


Private Sub Command2_Click()
    Dim strCmd As String
    Dim strPath As String
    
    'Obtén la ruta completa del archivo Python
    strPath = App.Path & "\pycore\aphgenqr.py" 'Reemplaza "nombre_del_archivo.py" con el nombre real de tu archivo Python
    
    'Construye el comando para ejecutar el archivo Python
    strCmd = "python " & Chr(34) & strPath & Chr(34) 'Asegúrate de tener Python instalado y configurado en tu sistema
   
    'Ejecuta el comando en la línea de comandos
    Shell strCmd, vbNormalFocus
End Sub

Private Sub Command3_Click()
    End
End Sub

Private Sub Command4_Click()
    Dim scriptPath As String
    scriptPath = App.Path & "\cat\cat.vbs" ' Reemplaza "nombre_del_script" con el nombre de tu archivo VBScript

    Shell "WScript.exe """ & scriptPath & """", vbNormalFocus
End Sub

