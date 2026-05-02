

frames=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")
end=$((SECONDS + 3))  # change nunber to decide loading length

while [ $SECONDS -lt $end ]; do
    for frame in "${frames[@]}"; do
        printf "\r%s Loading..." "$frame"
        sleep 0.1
        [ $SECONDS -ge $end ] && break  # exit
    done
done
printf "\r              \n"
