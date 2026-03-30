# Flightory Stallion (Non-VTOL) Build Log

This repository documents my first full fixed-wing UAV build: a Flightory Stallion in non-VTOL configuration.

It is a practical record of what I actually experienced: the decisions I made, the mistakes I made, the crash I had, and how I now plan to recover and validate the aircraft properly.

## At a glance

- Airframe: Flightory Stallion, non-VTOL, twin tractor, V-tail
- Flight controller: SpeedyBee F405 Wing
- Radio link: ELRS with RadioMaster Boxer
- Firmware path: INAV first, then moving toward ArduPilot Plane
- Powertrain direction: twin F60-class motors, 30-40A ESCs, 4S baseline

## Personal build summary

I started this build trying to move fast and get in the air quickly. That worked for momentum, but it also created setup debt. Small details like linkage fit, output mapping, and prop/motor orientation took more time than expected and had bigger consequences than expected.

The deeper I got, the more this stopped being "just a printed plane" project and became a full systems-integration project. I had to think across structure, electronics, firmware, telemetry, and flight operations at the same time.

My first takeoff ended in a crash. That forced a reset in approach: less guessing, more written checks, and stricter validation before the next launch.

## Read by topic (click to jump)

- Hardware decisions and component path: [Build Choices and Hardware](docs/02-build-choices-and-hardware.md)
- Printing strategy and structural tradeoffs: [Printing, Materials, and Structure](docs/03-printing-materials-and-structure.md)
- Firmware journey and flight-mode logic: [Firmware and Flight Modes](docs/04-firmware-and-flight-modes.md)
- Telemetry and GPS integration approach: [Telemetry, GPS, and Ground Station](docs/05-telemetry-gps-and-ground-station.md)
- Preflight process and first-flight context: [Flight Prep and First Flights](docs/06-flight-prep-and-first-flights.md)
- What failed and what I learned from it: [Crash Notes and Lessons Learned](docs/07-crash-notes-and-lessons-learned.md)
- Current recovery plan and remaining work: [Open Items and Next Steps](docs/08-open-items-and-next-steps.md)
- Big-picture reflection from the full process: [Project Retrospective](docs/09-project-retrospective.md)

## Suggested reading order

If you want my personal experience first, read:

1. [Build Choices and Hardware](docs/02-build-choices-and-hardware.md)
2. [Printing, Materials, and Structure](docs/03-printing-materials-and-structure.md)
3. [Firmware and Flight Modes](docs/04-firmware-and-flight-modes.md)
4. [Telemetry, GPS, and Ground Station](docs/05-telemetry-gps-and-ground-station.md)
5. [Flight Prep and First Flights](docs/06-flight-prep-and-first-flights.md)
6. [Crash Notes and Lessons Learned](docs/07-crash-notes-and-lessons-learned.md)
7. [Open Items and Next Steps](docs/08-open-items-and-next-steps.md)
8. [Project Retrospective](docs/09-project-retrospective.md)

Reference-only manual baseline (optional): [Reference Manual Notes](docs/01-reference-manual-notes.md)

## Important note

Some settings in this repo came from active troubleshooting, not final airworthy configuration. Treat this as a build and decision log, then verify against official documentation and bench checks before flight.
