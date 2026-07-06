# Smart Elevator Controller (Digital System Design Project)

## Overview

This project implements an **8-floor smart elevator controller** in
**SystemVerilog** for FPGA-based digital system design.

The controller accepts: - Internal floor requests (`floor_req`) -
External hall call requests (`call_req`)

It stores requests, determines the next destination using a simple
priority algorithm, moves the elevator one floor at a time, stops for a
short delay at requested floors, clears serviced requests, and displays
the current floor on a 7-segment display.

## Features

-   8-floor elevator
-   Configurable initial direction (up/down)
-   Separate registers for floor and hall requests
-   Combined request queue
-   Priority-based scheduling
-   Direction-aware request masking
-   Stop delay before clearing requests
-   7-segment floor display
-   RGB LED status indication
-   Simulation mode (bypasses clock divider)

## Inputs

  Signal         Description
  -------------- ----------------------------------
  clk            System clock
  rst            Active-high reset
  dir_pin_init   Initial direction (1=up, 0=down)
  enable         Enables elevator movement
  floor_req      Internal floor request
  call_req       External hall request
  wr_floor       Latches floor request
  wr_call        Latches hall request

## Outputs

  Signal           Description
  ---------------- ----------------------
  seg              Seven-segment output
  an               Active anode
  red/green/blue   Elevator status LEDs

## Internal Operation

### Request Registers

Floor requests and hall requests are stored separately and OR'ed into a
single request bitmap.

### Direction Masking

When moving upward, only requests above the current floor are
considered. When moving downward, only requests below the current floor
are considered.

### Priority Encoder

`smart_priority_encode()` searches for the nearest valid request in the
current direction.

### Movement FSM

1.  Reset initializes floor 0.
2.  If elevator reaches a requested floor:
    -   Enter stop-delay state.
    -   Wait several cycles.
    -   Clear serviced requests.
3.  Otherwise:
    -   Move one floor toward the selected target.
4.  If no request exists in the current direction but requests remain:
    -   Reverse direction.

### Clock Divider

For FPGA hardware a clock divider slows elevator movement. Simulation
mode (`SIM=1`) bypasses the divider.

## Display

### Seven Segment

Displays current floor number.

### RGB LEDs

  Color   Meaning
  ------- ----------------------------
  Blue    Idle or stopped at a floor
  Red     Moving upward
  Green   Moving downward

## Verification

A self-checking SystemVerilog testbench was created.

It includes: - 100 MHz clock generation - Random request generation -
Automatic request writing - Output monitoring using `$display` -
Assertion checking that only one display anode is active - Multiple
randomized simulation scenarios

## Concepts Used

-   RTL Design
-   SystemVerilog
-   Finite State Machine (FSM)
-   Priority Encoder
-   Combinational Logic
-   Sequential Logic
-   Registers
-   Clock Divider
-   Functional Verification
-   Assertions
-   Randomized Testbench

## Tools

-   Vivado
-   SystemVerilog

## Future Improvements

-   SCAN/LOOK elevator scheduling
-   Door open/close controller
-   Emergency mode
-   Overload detection
-   Multiple elevators
