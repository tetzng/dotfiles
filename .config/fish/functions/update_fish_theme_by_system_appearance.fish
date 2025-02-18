function update_fish_theme_by_system_appearance
    set -l os (uname)

    if test $os != Darwin
        return
    end

    if defaults read -g AppleInterfaceStyle 2>/dev/null | grep -q Dark
        fish_config theme choose Catppuccin\ Frappe
    else
        fish_config theme choose Catppuccin\ Latte
    end
end
