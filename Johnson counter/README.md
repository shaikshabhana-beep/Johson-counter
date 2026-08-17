# Johnson Counter

## Description

A Johnson Counter is a shift-register based counter in which the inverted output of the last flip-flop is fed back to the first flip-flop. An N-bit Johnson Counter generates 2N unique states.

## Features

* 4-bit Johnson Counter
* Synchronous operation
* Active-high reset
* Generates 8 unique states
* Designed using Verilog HDL

## Files

* `johnson_counter.v` – RTL design code
* `johnson_counter_tb.v` – Testbench
* `expected_output.txt` – Expected simulation output

## Working

For a 4-bit Johnson Counter, the sequence is:

`0000 → 1000 → 1100 → 1110 → 1111 → 0111 → 0011 → 0001 → 0000`

The inverted MSB is connected back to the LSB.

## Tools

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado

## Applications

* Digital counters
* Frequency division
* Sequence generation
* Control circuits
* Digital electronics experiments
