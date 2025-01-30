function update_fish_theme_by_system_appearance
    if defaults read -g AppleInterfaceStyle 2>/dev/null | grep -q Dark
        fish_config theme choose Catppuccin\ Frappe
    else
        fish_config theme choose Catppuccin\ Latte
    end
end
