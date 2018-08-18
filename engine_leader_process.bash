#!/bin/sh

RENDER_PIPE=./engine_render_pipe

if [[ ! -p $RENDER_PIPE ]]; then
    echo "Render process not running"
    exit 1
fi

print_coors () {
    for i in "${@}"; do {
        echo "$i" >$RENDER_PIPE
    } done
}

declare -a COORS=()

for y in $(seq 1 $(tput lines)); do
    # TMP=""

    if [ $(($y%2)) -eq 0 ]; then
        for x in $(seq 1 $(tput cols)); do
            if [ $(($x%2)) -eq 0 ]; then
                COORS+=("$y,$x,31")
                # TMP+="\\\033[0;31m█"
            else
                COORS+=("$y,$x,32")
                # TMP+="\\\033[0;32m█"
            fi
        done
    else
        for x in $(seq 1 $(tput cols)); do
            if [ $(($x%2)) -eq 0 ]; then
                COORS+=("$y,$x,33")
                # TMP+="\\\033[0;33m█"
            else
                COORS+=("$y,$x,34")
                # TMP+="\\\033[0;34m█"
            fi
        done
    fi

    # COORS+=("$y,1,$TMP")
done

time {
    print_coors "${COORS[@]}"
}

# time {
#     declare -a TMP=()
#     declare -a PID_LIST=()

#     for i in "${COORS[@]}"; do
#         TMP+=($i)

#         if [ "${#TMP[@]}" -eq 10 ]; then
#             print_coors "${TMP[@]}"  &
#             PID_LIST+=($!)
#             TMP=()
#         fi
#     done

#     if [ "${#TMP[@]}" -gt "0" ]; then
#         print_coors "${TMP[@]}"  &
#         PID_LIST+=($!)
#         TMP=()
#     fi

#     for pid in "${PID_LIST[@]}"; do
#         wait $pid
#     done
# }
