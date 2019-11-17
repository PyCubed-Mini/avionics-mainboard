# Motor1.py
# Motor forward & backward

import RPi.GPIO as GPIO
import time

P_MOTA1 = 18
P_MOTA2 = 22

def forward():
    GPIO.output(P_MOTA1, GPIO.HIGH)
    GPIO.output(P_MOTA2, GPIO.LOW)

def backward():        
    GPIO.output(P_MOTA1, GPIO.LOW)
    GPIO.output(P_MOTA2, GPIO.HIGH)
    
def stop():
    GPIO.output(P_MOTA1, GPIO.LOW)
    GPIO.output(P_MOTA2, GPIO.LOW)

def setup():
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(P_MOTA1, GPIO.OUT)
    GPIO.setup(P_MOTA2, GPIO.OUT)
    
print "starting"
setup()
while True:
    print "forward"
    forward()
    time.sleep(2)
    print "backward"
    backward()
    time.sleep(2)
    print "stop"
    stop()
    time.sleep(2)
