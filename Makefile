.PHONY: build-image run-image

build-image:
	docker build -t xiaomi_ble_temperature_display_for_ha .

run-image:
	docker run -e device_mac_addresses=${DEVICE_MAC_ADDRESSES} --name=ble_temperature --net=host --privileged --rm xiaomi_ble_temperature_display_for_ha