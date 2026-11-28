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
        local go = player:get_field("<Object>k__BackingField")
        local tr = go:call("get_Transform")
        local pos = tr:call("get_Position")
        draw.text(string.format("X:%.1f Y:%.1f Z:%.1f", pos.x, pos.y, pos.z), 50, 110, 0xFFFFFF00)
    else
        draw.text("Player NG", 50, 80, 0xFFFF0000)
    end

    local em = sdk.get_managed_singleton("app.EnemyManager")
    if em == nil then
        return
    end
    local list = em:get_field("_EnemyList")
    local arr = list:get_field("_RawArray")
    if arr == nil then
        return
    end

    local count = 0
    for i = 0, arr:get_size() - 1 do
        if arr:get_element(i) ~= nil then
            count = count + 1
        end
    end
    draw.text("Enemy: " .. count, 50, 140, 0xFFFF8800)
end)
