# rtl-to-gdsii-design-of-a-faulty-evm
# RTL-to-GDSII Implementation of a Hardware Trojan Enabled Electronic Voting Machine

> Complete RTL-to-GDSII ASIC implementation of a Hardware Trojan-enabled Electronic Voting Machine (EVM) using Verilog and the Cadence Digital Design Suite (Xcelium, Genus, and Innovus).

![Language](https://img.shields.io/badge/Language-Verilog-blue)
![EDA](https://img.shields.io/badge/EDA-Cadence-red)
![Flow](https://img.shields.io/badge/Flow-RTL--to--GDSII-success)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

# Overview

Electronic Voting Machines (EVMs) form the backbone of modern electoral systems, making their integrity critical to ensuring trustworthy election outcomes. This project demonstrates how a **Hardware Trojan** can be intentionally embedded into a digital system while remaining functionally invisible during conventional verification and seamlessly propagating through the complete ASIC implementation flow.

The design operates identically to a legitimate Electronic Voting Machine during the initial **50 mock-poll votes**. Once this threshold is exceeded, a concealed Hardware Trojan activates and redirects all subsequent votes internally to **Party C**, while continuing to display the correct LED indications and buzzer responses, thereby maintaining the illusion of normal operation.

This project covers the complete digital ASIC design methodology from **RTL development to final GDSII generation**, demonstrating how malicious logic can remain hidden throughout synthesis, timing analysis, physical design, and implementation.

---

# Key Features

- Verilog RTL implementation of a three-party Electronic Voting Machine
- Embedded Hardware Trojan using a Trigger-Payload architecture
- Ballot-controlled voting mechanism
- LED and buzzer feedback
- Functional verification using Cadence Xcelium
- Logic synthesis using Cadence Genus
- Static Timing Analysis (STA)
- Physical implementation using Cadence Innovus
- Floorplanning
- Power Planning
- Standard Cell Placement
- Clock Tree Synthesis (CTS)
- Signal Routing
- Design Rule Check (DRC)
- Connectivity Verification
- Final GDSII generation

---

# Hardware Trojan Architecture

## Trigger

The Trojan remains inactive during normal operation and activates only after the first **50 votes** have been cast.

```
Vote Count > 50
```

## Payload

Once triggered,

```
Vote Input
      │
      ▼
Trojan Logic
      │
      ▼
Redirect Vote
      │
      ▼
Party C
```

Meanwhile,

- LED indication remains correct
- Buzzer acknowledgement remains unchanged
- External behaviour appears completely legitimate

This represents a classic Hardware Trojan consisting of a dormant trigger and a concealed malicious payload.

---

# Design Flow

```
Specification

        │
        ▼

RTL Design (Verilog)

        │
        ▼

Functional Verification
(Cadence Xcelium)

        │
        ▼

Logic Synthesis
(Cadence Genus)

        │
        ▼

Static Timing Analysis

        │
        ▼

Floorplanning

        │
        ▼

Power Planning

        │
        ▼

Standard Cell Placement

        │
        ▼

Clock Tree Synthesis

        │
        ▼

Routing

        │
        ▼

DRC Verification

        │
        ▼

Connectivity Verification

        │
        ▼

GDSII Generation
```

---

# Repository Structure

```
rtl-to-gdsii-hardware-trojan-evm

├── RTL/
│   RTL source files

├── TB/
│   Functional verification testbench

├── CONST/
│   Timing constraints

├── SIM/
│   Simulation scripts and waveforms

├── SYNTH/
│   Cadence Genus synthesis scripts and reports

├── PD/
│   Physical Design implementation using Innovus

├── PICS/
│   Project screenshots

├── docs/
│   Project Report

└── scripts/
    TCL automation scripts
```

---

# Functional Verification

The RTL was verified using **Cadence Xcelium** with a comprehensive testbench covering:

- Reset functionality
- Ballot enable logic
- Vote counting
- LED indication
- Buzzer operation
- Trigger activation
- Trojan payload execution

Simulation confirmed normal behaviour for the first 50 votes followed by successful activation of the hidden vote-redirection logic.

---

# Logic Synthesis

RTL synthesis was performed using **Cadence Genus**.

The synthesis flow included:

- RTL Elaboration
- Logic Optimization
- Technology Mapping
- Gate-Level Netlist Generation
- Area Optimization
- Timing Optimization

Special care was taken to ensure that the Hardware Trojan remained functionally preserved during synthesis without being optimized away.

---

# Physical Design

Physical implementation was completed using **Cadence Innovus**.

The complete backend flow included:

- Floorplanning
- Power Planning
- Standard Cell Placement
- Clock Tree Synthesis
- Signal Routing
- Timing Optimization
- DRC Verification
- Connectivity Verification
- GDSII Generation

---

# Results

The project successfully completed the complete RTL-to-GDSII implementation flow.

| Stage | Status |
|--------|--------|
| RTL Design | ✅ |
| Functional Verification | ✅ |
| Logic Synthesis | ✅ |
| Static Timing Analysis | ✅ |
| Floorplanning | ✅ |
| Placement | ✅ |
| Clock Tree Synthesis | ✅ |
| Routing | ✅ |
| Connectivity Verification | ✅ |
| DRC Verification | ✅ |
| GDSII Generation | ✅ |

The design achieved:

- Positive timing slack
- Zero DRC violations
- Zero connectivity violations
- Successful GDSII generation

while preserving the concealed Hardware Trojan throughout the implementation flow.

---

# Project Screenshots

The repository includes screenshots for each stage of the ASIC flow.

- RTL Architecture
- Simulation Waveforms
- Synthesized Netlist
- Floorplanning
- Placement
- Clock Tree Synthesis
- Routing
- DRC Verification
- Timing Report
- Area Report
- Final GDSII Layout

---

# Tools Used

- Verilog HDL
- Cadence Xcelium
- Cadence Genus
- Cadence Innovus

---

# Skills Demonstrated

- RTL Design
- Verilog HDL
- Functional Verification
- Hardware Security
- Hardware Trojans
- ASIC Design Flow
- Logic Synthesis
- Static Timing Analysis (STA)
- Physical Design
- Floorplanning
- Power Planning
- Standard Cell Placement
- Clock Tree Synthesis
- Routing
- DRC Verification
- GDSII Generation

---

# Future Enhancements

- UVM-Based Verification
- Formal Verification
- DFT Integration
- Scan Chain Insertion
- ATPG
- Hardware Trojan Detection Framework
- Security-Aware RTL Verification

---

# License

This repository is intended solely for educational and research purposes.
