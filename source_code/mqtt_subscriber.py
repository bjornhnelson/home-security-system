# https://tutorials-raspberrypi.com/raspberry-pi-mqtt-broker-client-wireless-communication/

import paho.mqtt.publish as publish
MQTT_SERVER = "localhost"
MQTT_PATH = "test_channel"
publish.single(MQTT_PATH, "Hello World!", hostname=MQTT_SERVER)
