-- ============================================================
-- MH Wilds Monster HP  (REFramework Lua MOD)
-- 現段階: Hello World 表示 + 設定画面 + 設定の保存
-- ============================================================

local MOD_NAME    = "Monster HP MOD"
local CONFIG_PATH = "monster_hp_config.json"  -- reframework/data/ に保存される

-- ---------- 設定 ----------
local default_config = {
    enabled   = true,
    pos_x     = 50,
    pos_y     = 50,
}

local config = {}

local function load_config()
    local loaded = json.load_file(CONFIG_PATH)
    for k, v in pairs(default_config) do
        if loaded ~= nil and loaded[k] ~= nil then
            config[k] = loaded[k]
        else
            config[k] = v
        end
    end
end

local function save_config()
    json.dump_file(CONFIG_PATH, config)
end

load_config()

-- ---------- 画面表示 ----------
re.on_frame(function()
    if not config.enabled then return end

    -- TODO: ここをモンスターHPの表示に置き換えていく
    draw.text("Hello World", config.pos_x, config.pos_y, 0xFFFFFFFF)
end)

-- ---------- 設定画面（REFrameworkメニュー内） ----------
re.on_draw_ui(function()
    if not imgui.tree_node(MOD_NAME) then return end

    local changed = false
    local c

    c, config.enabled = imgui.checkbox("表示する", config.enabled)
    changed = changed or c

    c, config.pos_x = imgui.slider_int("表示位置 X", config.pos_x, 0, 3840)
    changed = changed or c

    c, config.pos_y = imgui.slider_int("表示位置 Y", config.pos_y, 0, 2160)
    changed = changed or c

    if changed then save_config() end

    imgui.tree_pop()
end)
