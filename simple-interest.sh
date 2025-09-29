#!/usr/bin/env bash
# simple-interest.sh - calculate simple interest and total amount

set -euo pipefail

if [ $# -eq 3 ]; then
  P=$1
  R=$2
  T=$3
else
  read -p "Principal: " P
  read -p "Rate (%): " R
  read -p "Time (years): " T
fi

SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc -l)
TOTAL=$(echo "scale=2; $P + $SI" | bc -l)

echo "Principal: $P"
echo "Rate: $R%"
echo "Time: $T years"
echo "Simple Interest: $SI"
echo "Total Amount: $TOTAL"
