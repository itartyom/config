#!/usr/bin/env bash

get_cpu() {
    if [ "$(uname)" = "Darwin" ]; then
        top -l 1 | grep 'CPU usage' | awk '{print $3}'
    else
        top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4 "%"}'
    fi
}

get_ram() {
    if [ "$(uname)" = "Darwin" ]; then
        used=$(top -l 1 | awk '/PhysMem:/ {print $2}')
        total_bytes=$(sysctl -n hw.memsize)
        total_gb=$((total_bytes / 1024 / 1024 / 1024))
        printf "%s/%sG" "$used" "$total_gb"
    else
        free -h | awk '/^Mem:/ {print $3 "/" $2}'
    fi
}

get_swap() {
    if [ "$(uname)" = "Darwin" ]; then
        sysctl vm.swapusage | awk '{
            used=$7
            total=$4
            if (total == "0.00M") {
                print "N/A"
            } else {
                print used "/" total
            }
        }'
    else
        free -h | awk '/^Swap:/ {print $3 "/" $2}'
    fi
}

get_gpu() {
    if command -v nvidia-smi > /dev/null; then
        nvidia-smi --query-gpu=memory.used,memory.total --format=csv,noheader,nounits | awk -F', ' '{printf "%.0f%%", $1/$2 * 100}'
    else
        echo "N/A"
    fi
}

case "$1" in
    "cpu")
        get_cpu
        ;;
    "ram")
        get_ram
        ;;
    "swap")
        get_swap
        ;;
    "gpu")
        get_gpu
        ;;
    *)
        echo "Err"
        exit 1
        ;;
esac
