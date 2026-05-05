SOURCE := nmos-sweep.sp

run:
	ngspice -b $(SOURCE)

view:
	python view.py

.PHONY: run
