gui: Support for programming graphical user interfaces
======================================================

This package contains the library `Graphics.UI` to support the implementation
of graphical user interfaces for Curry programs.
Since it is based on Tcl/Tk, the library requires a
Tcl/Tk implementation (including the windowing shell `wish`)
which can be downloaded [here](http://www.scriptics.com/software/tcltk/))
or installed in a Ubuntu distribution by

    sudo apt-get install tk tcl

In this case, the windowing shell `wish` must be
in the path (one can also modify the definition of the
function `openGuiPort` in the library `Graphics.UI`).

The basic ideas are described in detail
[in this paper](http://www.informatik.uni-kiel.de/~mh/papers/PADL00.html)

The directory `examples` contains a collection of example programs.

--------------------------------------------------------------------------
