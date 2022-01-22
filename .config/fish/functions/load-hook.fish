function load-hook
    # type $argv >/dev/null ^&1
    if test $status -eq 0
        eval ($argv hook fish)
    end
end