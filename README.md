# OzzyTMBM - Triple Monitor Brightness Manager

As a triple monitor user, this is my brightness manager for external monitors which supports DDC/CI protocol.

## Requirements

This plugin requires [ddcctl](https://github.com/kfix/ddcctl) command to be installed on your machine.

## Installation

Download spoon file from [releases](https://github.com/ozguncagri/OzzyTMBM/releases) page and install it with double clicking it, then open your hammerspoon config and add this line to it;

```lua
hs.loadSpoon("OzzyTMBM")
```

then reload your config; you are ready to go.

## Key Symbol Legend

| Symbol | Keyboar Key  |
|:--:|:--|
| ⇧ | Shift |
| ⌃ | Control |
| ⌥ | Option |
| ⌘ | Command |

---

## Manage All External Monitors

| Hotkey | Operation  |
|:--:|:--|
| ⌃+⌥+⌘+Y | Increase brightness of all external displays by 10 |
| ⌃+⌥+⌘+H | Decrease brightness of all external displays by 10 |
| ⇧+⌃+⌥+⌘+Y | Set brightness of all external displays to maximum (100) |
| ⇧+⌃+⌥+⌘+H | Set brightness of all external displays to minimum (0) |

## Manage First External Monitor

| Hotkey | Operation  |
|:--:|:--|
| ⌃+⌥+⌘+U | Increase brightness of first external display by 10 |
| ⌃+⌥+⌘+J | Decrease brightness of first external display by 10 |
| ⇧+⌃+⌥+⌘+U | Set brightness of first external display to maximum (100) |
| ⇧+⌃+⌥+⌘+J | Set brightness of first external display to minimum (0) |

## Manage Second External Monitor

| Hotkey | Operation  |
|:--:|:--|
| ⌃+⌥+⌘+T | Increase brightness of second external display by 10 |
| ⌃+⌥+⌘+G | Decrease brightness of second external display by 10 |
| ⇧+⌃+⌥+⌘+T | Set brightness of second external display to maximum (100) |
| ⇧+⌃+⌥+⌘+G | Set brightness of second external display to minimum (0) |

