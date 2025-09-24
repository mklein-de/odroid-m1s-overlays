OVERLAYS=ir-receiver

DTBO=$(foreach o,$(OVERLAYS),$(o).dtbo)

.PHONY: all
all: $(DTBO)

.PHONY: clean
clean:
	rm -f $(DTBO)

%.dtbo: %.dts
	dtc -I dts -O dtb -o $@ $<
