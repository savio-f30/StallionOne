# Flightory Stallion (Non-VTOL) Build Log

This repository documents my first full fixed-wing UAV build: a Flightory Stallion in non-VTOL configuration.

The goal of this write-up is simple: make the real build process easy to review. It captures what I chose, where I got stuck, what failed, what changed, and what I learned after a crash on takeoff.

## Project snapshot

- Airframe: Flightory Stallion, non-VTOL, twin tractor, V-tail
- Flight controller: SpeedyBee F405 Wing
- Radio link: ELRS with RadioMaster Boxer
- Firmware path: INAV first, then transition toward ArduPilot Plane
- Powertrain direction: twin F60-class motors, 30-40A ESCs, 4S baseline
- Navigation direction: Matek M10Q-class GPS/compass, telemetry expansion over time

## Why this exists

Most RC build logs either stay too high-level or turn into scattered notes. This set is meant to bridge that gap.

It is not a rewritten product manual. It is a practical engineering record of:

- hardware decisions
- printing and structural tradeoffs
- wiring and integration friction
- firmware and mode strategy
- preflight logic
- crash analysis and next steps

## Build progression

1. Planned the airframe and hardware stack
2. Printed and assembled with lightweight vs strength tradeoffs
3. Integrated electronics and wiring
4. Configured firmware, modes, and radio mapping
5. Prepared for flight, launched, and experienced a takeoff crash
6. Reframed the project around validation and recovery

## Core themes from the process

- Speed vs quality: getting airborne quickly often conflicted with doing clean setup work.
- Small details, big consequences: servo geometry, mode mapping, and prop direction mattered as much as major components.
- Assisted flight is not autopilot: stabilization helped, but fundamentals still decided outcomes.
- Modularity paid off: serviceable wiring and reusable electronics made troubleshooting easier.

## How to read this repo

Start with these files in order:

1. `docs/01-reference-manual-notes.md`
2. `docs/02-build-choices-and-hardware.md`
3. `docs/03-printing-materials-and-structure.md`
4. `docs/04-firmware-and-flight-modes.md`
5. `docs/05-telemetry-gps-and-ground-station.md`
6. `docs/06-flight-prep-and-first-flights.md`
7. `docs/07-crash-notes-and-lessons-learned.md`
8. `docs/08-open-items-and-next-steps.md`
9. `docs/09-project-retrospective.md`

## Caution

Some settings discussed in this project were part of troubleshooting, not final airworthy configuration. Treat this as a decision log, then validate against official docs and real bench checks before flight.
