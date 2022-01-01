function is_colab
    if string lenght -q -- $COLAB_GPU
        return 0
    else
        return 1
    end
end