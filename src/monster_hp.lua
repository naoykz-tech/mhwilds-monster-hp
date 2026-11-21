re.on_frame(function()
    draw.text("Hello World", 50, 50, 0xFFFFFFFF)
    local pm = sdk.get_managed_singleton("app.PlayerManager")
    if pm == nil then
        draw.text("PM NG", 50, 80, 0xFFFF0000)
        return
    end

    local player = pm:call("getMasterPlayer")
    if player ~= nil then
        draw.text("Player OK", 50, 80, 0xFF00FF00)
    else
        draw.text("Player NG", 50, 80, 0xFFFF0000)
    end
 end)
