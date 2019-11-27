# general blink routine
# should work on all boards with an "LED" pin defined in firmware
#
# M.Holliday
# import board
# import time
from digitalio import DigitalInOut, Direction, Pull
from gpiozero import PWMOutputDevice
from time import sleep
​
​
# # Built in LEDs
# led = DigitalInOut(board.LED)
# led.direction = Direction.OUTPUT
​
# ######################### MAIN LOOP ##############################
# delay = 1
# i = 0
# while True:
#   print(i)
#   led.value = 1
#   time.sleep(delay) # make bigger to slow down
#   led.value = 0
#   time.sleep(delay) # make bigger to slow down
#   i += 1
​
#///////////////// Define Motor Driver GPIO Pins /////////////////
​
# Motor A, Left Side GPIO CONSTANTS
PWM_FORWARD_LEFT_PIN = 23	# IN1 - Forward Drive
PWM_REVERSE_LEFT_PIN = 22	# IN2 - Reverse Drive
ENABLE = 28 #Enable pin
​
# Motor B, Right Side GPIO CONSTANTS# Initialise objects for H-Bridge PWM pins
# Set initial duty cycle to 0 and frequency to 1000
forwardLeft = PWMOutputDevice(PWM_FORWARD_LEFT_PIN, True, 0, 1000)
reverseLeft = PWMOutputDevice(PWM_REVERSE_LEFT_PIN, True, 0, 1000)
forwardRight = PWMOutputDevice(PWM_FORWARD_RIGHT_PIN, True, 0, 1000)
reverseRight = PWMOutputDevice(PWM_REVERSE_RIGHT_PIN, True, 0, 1000)
setEnable = PWMOutputDevice(ENABLE, True, 0, 1000)
​
​
def allStop():
	forwardLeft.value = 0
	reverseLeft.value = 0
	setEnable.value = 0
def forwardDrive():
	forwardLeft.value = 1.0
	reverseLeft.value = 0
	setEnable.value = 1.0
def reverseDrive():
	forwardLeft.value = 0
	reverseLeft.value = 1.0
	setEnable.value = 1.0
def spinLeft():
	forwardLeft.value = 0
	reverseLeft.value = 1.0
	setEnable.value = 1.0
def SpinRight():
	forwardLeft.value = 1.0
	reverseLeft.value = 0
	setEnable.value = 1.0
def forwardTurnLeft():
	forwardLeft.value = 0.2
	reverseLeft.value = 0
	setEnable.value = 1.0
def forwardTurnRight():
	forwardLeft.value = 0.8
	reverseLeft.value = 0
	setEnable.value = 1.0
def reverseTurnLeft():
	forwardLeft.value = 0
	reverseLeft.value = 0.2
	setEnable.value = 1.0
def reverseTurnRight():
	forwardLeft.value = 0
	reverseLeft.value = 0.8
	setEnable.value = 1.0
def main():
	i = 0
	while True:
		print i
		allStop()
		forwardDrive()
		sleep(5)
		reverseDrive()
		sleep(5)
		spinLeft()
		sleep(5)
		SpinRight()
		sleep(5)
		forwardTurnLeft()
		sleep(5)
		forwardTurnRight()
		sleep(5)
		reverseTurnLeft()
		sleep(5)
		reverseTurnRight()
		sleep(5)
		allStop()
		i += 1
