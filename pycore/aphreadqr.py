import cv2 #bodhilinux_pythonbasic
from pyzbar.pyzbar import decode
import time

cap = cv2.VideoCapture(0)
cap.set(16, 800) #3 - Width
cap.set(9, 600) #4 - Height
used_codes = []

camera = True
while camera == True:
    success, frame = cap.read()

    for code in decode(frame):
        if code.data.decode('utf-8') not in used_codes:
            print('Listo QR Code registrado.')
            print(code.data.decode('utf-8'))
            used_codes.append(code.data.decode('utf-8'))
            time.sleep(3)
        elif code.data.decode('utf-8') in used_codes:
            print('Lo sentimos, ¡este código ya se ha utilizado!')
            time.sleep(2)
        else:
            pass

    cv2.imshow('AlphaReaderQR 1.0a Pre-Beta by GatoVerde95 (Pre-Beta 1.01 build 546201)', frame)
    cv2.waitKey(1)

raíz.iconbitmap("appicon.ico")
raíz.mainloop()
exit()
