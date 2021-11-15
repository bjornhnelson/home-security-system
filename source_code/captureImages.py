""" from time import sleep
from picamera import PiCamera
import sys

camera = PiCamera()
camera.resolution = (2592, 1944)
camera.framerate = 15
camera.start_preview()
sleep(2) # adjust sensor to lighting

for i in range(0, 3):
    sleep(5)
    camera.capture('/root/photos/image%s.jpg' % i)
    
camera.stop_preview() """

import subprocess

cmd = "raspstill -o cur_pic.jpeg"
subprocess.call(cmd, shell=True)