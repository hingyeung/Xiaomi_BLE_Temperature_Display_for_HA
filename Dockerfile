FROM python:3.7

ENV device_mac_addresses=not_set

RUN apt update && apt install psmisc
RUN pip3 install bluepy paho-mqtt
RUN mkdir /xiaomi_ble
WORKDIR /xiaomi_ble
COPY LYWSD03MMC.py .
ENTRYPOINT python3 LYWSD03MMC.py -d ${device_mac_addresses} -r -b 5 -c 1 -m ha.corp.lan.samuelli.net -del 60