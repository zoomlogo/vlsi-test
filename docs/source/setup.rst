=====
Setup
=====

Dependencies
------------
The project requires the following tools to be present:

* gnu make
* Python with the libraries:

  * numpy
  * matplotlib
  * sphnix (only for generating the documentation)
* ngspice.
* xschem.
* magic.

Installing the PDK
------------------
Install uv::

    curl -LsSf https://astral.sh/uv/install.sh | sh


Using uv, install volare::

    uv tool install volare

Export the environment variable ``PDK_ROOT``::

    export PDK_ROOT=<path>

For this project, my pdk root path is ``~/tools/pdk``.

Then check for versions of sky130 and then install using the hash of the
version::

    volare ls-remote --pdk sky130
    volare enable --pdk sky130 <hash>
