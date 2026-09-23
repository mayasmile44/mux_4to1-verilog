# 4-to-1 Multiplexer RTL Design

## Overview

This project implements a 4-to-1 multiplexer using Verilog HDL.

The design selects one of four 1-bit inputs based on two select signals.

## Function

| S1 | S0 | Output |
|----|----|--------|
| 0  | 0  | D0     |
| 0  | 1  | D1     |
| 1  | 0  | D2     |
| 1  | 1  | D3     |

## Project Structure

```text
4to1mux/
├── rtl/
│   └── 4to1mux.v
├── tb/
│   └── mux4to1_tb.sv
├── waves/
│   └── mux4to1.vcd
├── .gitignore
└── README.md
