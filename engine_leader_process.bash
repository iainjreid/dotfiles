#!/bin/bash

RENDER_PIPE=./engine_render_pipe

if [[ ! -p $RENDER_PIPE ]]; then
    echo "Render process not running"
    exit 1
fi

print_coors () {
    for i in "${@}"; do {
        echo $i >$RENDER_PIPE
    } & done
}

declare -a COORS=()

for x in $(seq 1 $(tput cols)); do
    TMP=""

    if [ $(($x%2)) -eq 0 ]; then
        for y in $(seq 1 $(tput lines)); do
            if [ $(($y%2)) -eq 0 ]; then
                TMP+="\\\033[0;31m█"
            else
                TMP+="\\\033[0;32m█"
            fi
        done
    else
        for y in $(seq 1 $(tput lines)); do
            if [ $(($y%2)) -eq 0 ]; then
                TMP+="\\\033[0;33m█"
            else
                TMP+="\\\033[0;34m█"
            fi
        done
    fi

    COORS+=("$x,1,$TMP")
done

# time {
#     print_coors "${COORS[@]}"
# }

time {
    declare -a TMP=()
    declare -a PID_LIST=()

    for i in "${COORS[@]}"; do
        TMP+=($i)

        if [ "${#TMP[@]}" -eq 10 ]; then
            print_coors "${TMP[@]}"  &
            PID_LIST+=($!)
            TMP=()
        fi
    done

    if [ "${#TMP[@]}" -gt "0" ]; then
        print_coors "${TMP[@]}"  &
        PID_LIST+=($!)
        TMP=()
    fi

    for pid in "${PID_LIST[@]}"; do
        wait $pid
    done
}
