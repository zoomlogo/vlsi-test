.. vlsi-test documentation master file, created by
   sphinx-quickstart on Thu May  7 11:51:15 2026.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

vlsi-test documentation
=======================
So, basically the goal was to simulate a simple NFET and get a working waveform
viewer... basically setting up the environment.  This enviroment can hopefully
be reused for other projects.

The basic spice netlist has comments to help understand. (I still dont know how
to read netlists quickly since the arguments are generally positional.)

The waveform viewer is a simple python script.

Updates
-------

* Start using xschem and made a basic current mirror.

* Added PMOS simulation.  Note that the :math:`I_D` for PMOS is less than that
  of NMOS for the same value of :math:`V_{DS}`.  (Why?)

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   setup
   current-mirror
