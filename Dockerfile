FROM python:3.7

ENV device_mac_addresses=not_set

RUN apt update && apt install psmisc
RUN pip3 install bluepy paho-mqtt
# RUN git clone https://github.com/AnthonyKNorman/Xiaomi_BLE_Temperature_Display_for_HA.git
RUN mkdir /xiaomi_ble
WORKDIR /xiaomi_ble
COPY LYWSD03MMC.py .
# ENTRYPOINT python3 LYWSD03MMC.py -d a4:c1:38:d6:89:d9,a4:c1:38:9f:33:e6,a4:c1:38:31:d7:7c,a4:c1:38:7c:99:07 -r -b 5 -c 1 -m ha.corp.lan.samuelli.net -del 60
ENTRYPOINT python3 LYWSD03MMC.py -d ${device_mac_addresses} -r -b 5 -c 1 -m ha.corp.lan.samuelli.net -del 60