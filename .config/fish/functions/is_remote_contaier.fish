function is_remote_container
    if string lenght -q -- $REMOTE_CONTAINERS
        return 0
    else
        return 1
    end
end