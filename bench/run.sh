#!/bin/bash
set -e

echo "Running performance benchmarks..."

# Example benchmark
start_time=$(date +%s%N)
python -m proof.src.main
end_time=$(date +%s%N)

runtime=$(( (end_time - start_time) / 1000000 ))
echo "Runtime: ${runtime}ms"

echo "Benchmarks completed"