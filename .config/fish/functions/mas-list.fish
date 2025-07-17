function mas-list --description "print like mas list"
    mdfind -onlyin /Applications 'kMDItemAppStoreHasReceipt=1' \
        | xargs -I{} mdls -attr kMDItemAppStoreAdamID -attr kMDItemDisplayName -attr kMDItemVersion '{}' \
        | sed -E 's/.* = |"|\.app//g' \
        | tr '\n' '\0' \
        | xargs -0 -n 3 fish -c 'printf "%s/%s/(%s)\n" $argv[1] $argv[2] $argv[3]' \
        | column -s / -t
end
