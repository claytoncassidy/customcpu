# Custom RV32I CPU

This is my custom RV32I single cycle RISC-V 50 MHz CPU, written in VHDL in Vivado 2025.1. It's been verified on an Artix 7 Basys 3 board.

## Instruction Processing

It implements 37 of the 40 RV32I instructions. The only ones missing are the system instructions: `FENCE`, `ECALL`, and `EBREAK`. These are left out because they need infrastructure (privilege levels, trap handling, and an OS) that is out of scope for this project, at least for now.

Everything else has been implemented and verified.
- All 10 R-type ops
- All 9 I-type arithmetic ops
- All 6 branches
- `JAL`/`JALR`
- `LUI`/`AUIPC`
- Full byte/halfword/word memory access (`LB`/`LH`/`LW`/`LBU`/`LHU`/`SB`/`SH`/`SW`)

## Verification

Every module has its own testbench. There's also a full top level test that runs a simple test program through the entire datapath. It covers every instruction type and every distinct wiring path. This was verified in simulation and on hardware using the on board LEDs and 7-segment displays.

btnC can be pressed to increment the instruction memory, and sw0 allows you to switch between the top and bottom 16 bits of the current output. If btnU is held and btnC is pressed, it resets back to the first instruction.

## Rebuilding The Project

There's a Tcl script in `scripts/` (`build_project.tcl`) that rebuilds the whole project, including all sources, block designs, and testbenches. By default, the board functionality wrapper is set as top, so there is not a clock cycle. If you set `top_wrapper` as the top, meaning not using the board debugging, the clock can be enabled. In `basys3.xdc`, `board_clk` can be changed to `clk_0` and set to about 50 MHz (~63.5 MHz absolute max). Open Vivado's Tcl Shell and run:

```
source {path/to/scripts/build_project.tcl}
```

## Further Plans

I plan on expanding this project in a few different ways:

- **V2 (Pipelined)**: This will be a 5 stage pipelined processor, which will require a full reworking. However, this will be used as a base to expand on and add to.
- **Video Output**: Some kind of memory output, almost certainly using VGA.
- **Bootloader**: Adding some sort of UART bootloader so that programs can be loaded onto the board rather than being hardcoded in `instruction_memory`.