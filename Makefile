SOURCE := nmos-sweep.spice

run:
	ngspice -b $(SOURCE)

view:
	python view.py

.PHONY: run
