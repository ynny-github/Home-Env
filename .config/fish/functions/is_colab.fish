function is_colab
    # 理想は COLAB_GPU だが 数値なのでうまくいかない
    if string lenght -q -- $LD_LIBRARY_PATH
        return 0
    else
        return 1
    end
end