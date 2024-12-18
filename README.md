# Button

A button library for Roblox.

## Usage

### Creating a button

```luau
local Button = require(...);
local TextButton = ...;

local TestButton = Button.new(TextButton, function()
    print("Button clicked!");
end);
```

### Adding animations

```luau
TestButton
    :AddHoverAnimation("UP_SCALE")
    :AddHoldAnimation("DOWN_SCALE")
    :AddClickAnimation("RIPPLE");
```

### Adding sounds

```luau
TestButton
    :SetSound("UI_DOWN", "HoldBegin", {SoundId = 0})
    :SetSound("UI_UP", "HoldEnded", {SoundId = 0})
    :SetSound("UI_HOVER", "HoverBegin", {SoundId = 0});
```

### Destroying a button

```luau
TestButton:Destroy();
```

## Toggling effects

```luau
TestButton.Enabled = false;
TestButton.Enabled = true;
```