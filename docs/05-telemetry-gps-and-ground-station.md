# Telemetry, GPS, and Ground Station

This page captures how telemetry and navigation goals evolved through the build.

## Starting telemetry target

The first goal was intentionally modest:

- battery visibility
- flight mode/status visibility

That baseline is often enough for early, safer flights.

## ELRS telemetry expectations

Two tiers emerged during setup:

### Tier 1: basic telemetry to the radio
- voltage and essential status feedback

### Tier 2: richer MAVLink-style data
- broader telemetry in ground station tools
- more complex wiring, protocol, and link decisions

The project repeatedly showed that jumping straight to Tier 2 can create avoidable complexity.

## Ground station direction

I evaluated QGroundControl and Mission Planner workflows, including platform constraints and whether external telemetry radios would be needed later.

## GPS readiness: what mattered

For stabilized/manual-assist first flights, GPS is helpful but not strictly required.

For dependable advanced functions, GPS becomes critical:

- RTL
- waypoint navigation
- stronger position-aware safety behavior

## Sensor misconception to avoid

Barometer and IMU data improve attitude and altitude estimation, but they do not replace GPS position for true navigation tasks.

## Staged approach that makes sense now

1. Validate mechanics and control behavior.
2. Fly with stable assisted modes.
3. Ensure basic telemetry is reliable.
4. Add GPS and verify health.
5. Expand to advanced ground-station and mission workflows.

## Summary

The biggest gain came from sequencing complexity, not from adding features all at once.
