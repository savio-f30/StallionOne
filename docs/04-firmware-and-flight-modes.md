# Firmware and Flight Modes

This page explains the firmware path and mode strategy behind the build.

## Firmware path

I started in INAV for quicker access to stabilization and assisted flight, then leaned toward ArduPilot Plane as requirements grew.

The shift was driven by interest in:

- stronger fixed-wing autonomy tooling
- mission workflows
- more robust long-term GPS integration

## Practical mode strategy

### Primary early-flight mode: FBWA
Why it fit:
- stabilized manual control
- lower pilot workload than full manual
- safer first fixed-wing learning curve

### Follow-on modes: FBWB / Cruise
Used as progression modes once trim and basic handling are proven.

### RTL and autonomous modes
Useful, but not a substitute for setup quality. They only become trustworthy after control, GPS, and failsafe behavior are validated.

## Hard lesson from configuration work

Software setup friction clustered around the same points:

- channel mapping versus expected behavior
- output assignment and mixer logic
- arming behavior
- switch-state interpretation

## What this build reinforced

A flight controller can stabilize a correctly configured aircraft. It cannot rescue a chain of unresolved fundamentals.

Required fundamentals remained:

- correct CG
- correct surface direction
- correct motor/prop orientation
- clear, verified mode mapping
- disciplined launch technique

## Summary

Assisted modes were the right direction for this project. The key was learning that assistance only works when the full setup chain is verified end to end.
