# Venyx UI Library

## Showcase
[Watch the showcase here](https://venyx.wtf/medias/ipY1h0WVia.mp4)

## Features
- Sleek, simple, and animated design
- Clean source
- Button, keybind, dropdown, slider, toggle
- Colorpicker with rgb options
- Message/Notification system


## Notes
- Mouse events are not bindable
- No error handling, following doc should be enough
- Bugs exist, good luck fixing them
- Ui objects are made so custom resizing can be easily implemented if wished
- Didn't implement dropdown callback correctly, feel free to fix the crashes

## Example
```lua
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Venyx", 5013109572)

-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Test", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addToggle("Toggle", nil, function(value)
	print("Toggled", value)
end)
section1:addButton("Button", function()
	print("Clicked")
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
	print("Input", value)

	if focusLost then
		venyx:Notify("Title", value)
	end
end)

section2:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
	print("Activated Keybind")
	venyx:toggle()
end, function()
	print("Changed Keybind")
end)
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", 0, -100, 100, function(value)
	print("Dragged", value)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
	print("Selected", text)
end)
section2:addButton("Button")

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
```



## Documentation
```
library.new(title)
    title <string> -> title of the ui 

    return -> library

library:toggle(toggle)
    toggle <boolean> -> toggles ui

library:setTheme(theme, color)
    theme <string> -> theme to change, choices are listed in source
    color <color3> -> color to change to

library:Notify(title, context, callback)
    title <string> -> title of notification
    context <string> -> description of notification
    callback <function> 
        return (value)
            value <boolean> -> accepted or cancelled

library:SelectPage(page, toggle)
    page <table> -> page to edit
    toggle <boolean>

library:addPage(title, icon)
    title <string> title of page
    icon <string> asset id of icon (optional)

    return -> page

page:addSection(title)
    title <string> -> title of page

    return -> section

page:Resize(scroll)
    -> resizes page based on contents absolutesize, automatic
    scroll <boolean> -> scroll to last canvas position

section:addButton(title, callback)
    title <string> -> title of button
    callback <function>
        return (update)
            update <function> -> section.updateButton(button)

    return -> button

section:updateButton(button, title)
    button <instance or string> -> button to edit
    title <string> -> title of button

section:addToggle(title, default, callback)
    title <string> -> title of toggle
    default <boolean> -> default value of toggle
    callback <function>
        return (value, update)
            value <boolean> -> new toggle value
            update <function> -> section.updateToggle(toggle)

    return -> toggle

section:updateToggle(toggle, title, value)
    toggle <instance or string> -> toggle to edit
    title <string> -> title of toggle
    value <boolean> -> value of toggle

section:addTextbox(title, default, callback)
    title <string> -> title of textbox
    default <string> -> default content of textbox
    callback <function>
        return (text, focus, update)
            text <string> -> textbox content
            focus <boolean> -> focus lost signal
            update <function> -> section.updateTextbox(textbox)

    return -> textbox

section:updateTextbox(textbox, title, text)
    textbox <instance or string> -> textbox to edit
    title <string> -> title of textbox
    text <boolean> -> content of textbox

section:addKeybind(title, default, callback, changedCallback)
    title <string> -> title of keybind
    defualt <keycode> -> default binded key
    callback <function> -> callback for key pressed
        return (update)
            update <function> -> section.updateKeybind(keybind)
    changedCallback <function> -> callback for when bind is changed
        return (key, update)
            key <keycode or nil> -> new key binded
            update <function> -> section.updateKeybind(keybind)

    return -> keybind

section:updateKeybind(keybind, title, key)
    keybind <instance or string> -> keybind to edit
    title <string> -> title of keybind
    key <keycode> -> key to bind

section:addColorPicker(title, default, callback)
    title <string> -> title of colorpicker
    default <color3> -> default color of colorpicker
    callback <function> -> callback for color changed
        return (color, update)
            color <color3> -> new color of colorpicker
            update <function> -> section.updateColorPicker(colorpicker)

    return -> colorpicker

section:updateColorPicker(colorpicker, title, color)
    colorpicker <instance or string> -> colorpicker to edit
    title <string> -> title of colorpicker
    color <color3> -> color3 of colorpicker

section:addSlider(title, default, min, max, callback)
    title <string> -> title of slider
    default <number> -> default value of slider
    min <number> -> minimum value of dragger
    max <number> -> maximum value of dragger
    callback <function>
        return (value, update)
            value <number> -> value of slider
            update <function> -> section.updateSlider(slider)
    
    return -> slider

section:updateSlider(slider, title, value, min, max)
    slider <instance or string> -> slider to edit
    title <string> -> title of slider
    default <number> -> default value of slider
    min <number> -> minimum value of dragger
    max <number> -> maximum value of dragger

section:addDropdown(title, list, callback)
    title <string> -> title of dropdown
    list <table> -> content of dropdown
    callback <function>
        return (value)
            value <string> -> text of button clicked

    return -> dropdown

section:updateDropdown(dropdown, title, list, callback)
    dropdown <instance or string> -> dropdown to edit
    title <string> -> title of dropdown
    list <table> -> content of dropdown

section:Resize(smooth)
    -> resizes section based on contents absolutesize, automatic
    smooth <boolean> -> resize with tween
```
