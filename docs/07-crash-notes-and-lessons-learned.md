# Crash Notes and Lessons Learned

This page is direct on purpose.

## Event

The aircraft crashed during takeoff.

Given the setup history, the issue was likely not a single isolated mistake, but a combination of unresolved items.

## Most likely cause categories

1. Control logic error
- reversed or mixed surface behavior
- mismatch between expected and actual stick response

2. Flight-mode mismatch
- aircraft launched in a different mode than intended

3. Propulsion asymmetry
- wrong prop side, wrong motor direction, or thrust imbalance

4. CG/weight problem
- launch behavior degraded by incorrect balance with actual flight battery

5. Launch executed with unresolved uncertainty
- several "probably fine" assumptions compounded under time pressure

## Core lesson

Small uncertainties stack. In fixed-wing launch conditions, stacked uncertainty becomes failure quickly.

## Post-crash recovery protocol

1. Treat throw technique as only one variable, not the default cause.
2. Re-verify every control direction by hand.
3. Re-verify motor direction and prop orientation by hand.
4. Re-check CG with the intended flight configuration.
5. Confirm actual mode switching at the aircraft, not only in software.
6. Inspect linkages, horns, centering, mounts, and structural joints.
7. Use a written checklist. Do not rely on memory.

## Why this matters

This section turns the crash from a vague setback into a concrete validation framework for the next flight attempt.
