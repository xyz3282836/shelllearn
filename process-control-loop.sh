#!/bin/bash

for ((i = 0; i < 2; i++)); do
    echo $i
done

aa=(1 3 5)
for VAR in "${aa[@]}"; do
    echo $VAR
done
read switchstr
case $switchstr in
1)
    echo "1 case"
    ;;
2)
    echo "2 case"
    ;;
*)
    echo "any"
    ;;
esac

while true; do
    read num
    case $num in
    1 | 2)
        echo "plan"
        ;;
    *)
        echo "continue next"
        continue
        ;;
    esac
done
