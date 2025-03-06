-- 定义 Alacritty 的 Dropdown 快捷键
hs.hotkey.bind({"ctrl", "cmd"}, "=", function()
    local alacritty = hs.application.get("Alacritty")
    if alacritty == nil then
        hs.application.launchOrFocus("/Applications/Alacritty.app")
    else
        if alacritty:isHidden() then
            hs.application.launchOrFocus("/Applications/Alacritty.app")
            
        else
            alacritty:hide()
        end
    end
end)
