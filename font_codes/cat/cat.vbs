Set objShell = CreateObject("WScript.Shell")
MsgBox "Hola, Presione ''Aceptar'' para seguir " & strInput & "!", vbInformation, "AlphaSuiteQR 1.0 Pre-Beta"
intOption = MsgBox("Seleccione una herramienta:" & vbCrLf & _
                   "1. Ejecutar AlphaReaderQR (presione Si)" & vbCrLf & _
                   "2. Ejecutar AlphaGenQR (presione No)", vbQuestion + vbYesNo, "AlphaSuiteQR 1.0 Pre-Beta")
If intOption = vbYes Then
    objShell.Run "pycore\aphreadqr.py"
Else
    objShell.Run "pycore\aphgenqr.py"
End If
