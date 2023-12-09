# function fish_greeting -d "Display system information as a greeting"
#     set_color $fish_color_autosuggestion
#
#     set -l system_info (system_profiler SPSoftwareDataType | string collect)
#     set -l sys_version (echo "$system_info" | rg "System Version: (.+)" -r '$1' | string trim)
#     set -l kernel_version (echo "$system_info" | rg "Kernel Version: (.+)" -r '$1' | string trim)
#     set -l time_since_boot (echo "$system_info" | rg "Time since boot: (.+)" -r '$1' | string trim)
#
#     echo "You're running $sys_version with $kernel_version,"
#     echo "and your system has been up for $time_since_boot."
# end
