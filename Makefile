.PHONY: run

run:
	docker run -e device_mac_addresses=DEVICE_MAC_ADDRESSES --net=host --privileged --rm xiaomi_ble_temperature_display_for_ha