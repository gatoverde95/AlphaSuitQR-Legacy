import  qrcode
print ("-------------AlphaGenQR 1.0a Pre-Beta by GatoVerde95 (Pre-Beta 1.01 build 546201) by GatoVerde95-------------")
print ("Hola!!!!!! :) Bienvenido")
print ("A continuacion haga lo que le pida:")
print ("- Escriba el contenido que tendra su codigo QR:")
img=qrcode.make(input())
img.save("qr_generated.png")
print ("Hecho!, su codigo QR se ha generado")
time.sleep(3)
print ("Cerrando AlphaGenQR.......")
time.sleep(3)
print ("Apagando Librerias.......")
time.sleep(3)
print ("Cerrando Python 3.......")
time.sleep(3)
exit()
