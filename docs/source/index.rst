.. vlsi-test documentation master file, created by
   sphinx-quickstart on Thu May  7 11:51:15 2026.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

vlsi-test documentation
=======================
The goal here was to get started on VLSI design and simulation and document my
process to make it reproducible for others (hopefully).

Updates
-------

* Layout the CMOS inverter using magic and extract parasitics and simulate them.

* Made a CMOS inverter.

* Start using xschem and made a basic current mirror.

* Added PMOS simulation.  Note that the :math:`I_D` for PMOS is less than that
  of NMOS for the same value of :math:`V_{DS}`.  (Why?)

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   setup
   current-mirror
   cmos-inverter
