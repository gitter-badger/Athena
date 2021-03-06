# Architecture-specific HAL

This directory shall contain source and header files for all 
HAL (Hardware Abstraction Layer) code. If the set of libraries is 
specific to a BOARD (due to auto-generated pin-mux or other source/header files) 
as opposed to a CHIP in general, please locate those files in the correct 
locations within the "board" directory.

The combination of this HAL, and a user-written HAL 
interface shall allow any user application to be ported word-for-word 
between various hardware platforms. In theory, the only change to be 
made to target an STM32 F3 board instead of a TI Hercules Launchpad for 
instance is a change in the Makefile target for firmware build and load.

Code contained within these directories is NOT copyrighted by any developer 
on the NYU Cubesat team (unless otherwise stated), but rather distributed by the 
architecture's vendor with a permissive license (typically BSD or LGPL). 
I am not a lawyer, but any license for software within this directory shall 
be considered compatible with the LGPL license used for all higher-level 
implementation and HAL interface software committed by me to this repository.

(c) Abhimanyu Ghosh, 2017
