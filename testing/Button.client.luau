local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Button = require(ReplicatedStorage.Button);

-- Sounds
local CLICK_DOWN_SETTINGS = {
	SoundId = 0;
	Volume = 0.8;
	Pitch = 1;
};

local CLICK_UP_SETTINGS = {
	SoundId = 0;
	Volume = 1;
	Pitch = 1;
};

local HOVER_SETTINGS = {
	SoundId = 0;
	Volume = 0.2;
	Pitch = 1;
}

local TestButton = Button.new(..., function()
    print("Button clicked!");
end)
    :AddHoverAnimation("UP_SCALE")
    :AddHoldAnimation("DOWN_SCALE")
    :AddClickAnimation("RIPPLE")
    :SetSound("UI_DOWN", "HoldBegin", CLICK_DOWN_SETTINGS)
    :SetSound("UI_UP", "HoldEnded", CLICK_UP_SETTINGS)
    :SetSound("UI_HOVER", "HoverBegin", HOVER_SETTINGS);


-- Destroy
TestButton:Destroy();

-- Set effects to disabled
TestButton.Enabled = false;