for output in $(xrandr | grep " connected" | cut -d" " -f1); do
    xrandr --output "$output" --mode 1920x1080
done

