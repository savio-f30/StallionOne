# Build Choices and Hardware

This page captures the hardware path I actually took and why.

## Airframe scope

I stayed focused on the non-VTOL Stallion path. Other platforms came up in discussion, but this build log reflects fixed-wing decisions only.

## Flight stack decisions

- Flight controller: SpeedyBee F405 Wing
- Radio/control link: ELRS with RadioMaster Boxer
- GPS direction: Matek M10Q-class module with compass
- Firmware direction: started with INAV, then moved toward ArduPilot Plane

## Why this stack made sense

- Good feature-to-cost ratio
- Solid ecosystem for fixed-wing support
- Practical path from stabilized manual flight to GPS-backed capability

## Where complexity showed up

- Output mapping and mode assignment were unforgiving
- Telemetry expectations grew faster than wiring and configuration maturity
- GPS and compass integration added setup overhead early

## Powertrain direction

- Twin F60-class motors
- Twin ESC layout (35A class)
- Counter-rotating prop pair
- 4S starting point for early flights

The repeated lesson: twin-motor setups are extremely sensitive to prop side and motor direction mistakes.

## Linkage and small-hardware reality

Most friction came from details that look minor on paper:

- pushrod diameter and fit
- clevis vs stopper vs Z-bend choices
- servo horn hole fitment
- serviceability after assembly

These choices directly affected control smoothness and trust in the airframe.

## Wiring and connector strategy

I biased toward modular, repairable wiring:

- practical connector choices over permanent solder-only chains
- extension planning for wing and fuselage routing
- layouts that make maintenance possible after incidents

## Battery and payload philosophy

- Keep first flights lighter and CG-correct before chasing endurance
- Preserve nose/payload flexibility for future FPV configurations

## Bottom line

This was not a minimalist throwaway build. The intent was a reusable fixed-wing platform with room to grow into telemetry, GPS features, and more advanced flight workflows.
