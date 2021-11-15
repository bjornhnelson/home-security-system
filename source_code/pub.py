# https://stackoverflow.com/questions/37499739/how-can-i-send-a-image-by-using-mosquitto

import paho.mqtt.publish as publish
MQTT_SERVER = "127.0.0.1"  # Write Server IP Address
MQTT_PATH = "Image"

f=open("image.jpg", "rb")
fileContent = f.read()
byteArr = bytearray(fileContent)

publish.single(MQTT_PATH, byteArr, hostname=MQTT_SERVER)