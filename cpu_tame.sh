#!/usr/bin/env bash

for i in {0..19}; do 
	sudo cpufreq-set -c ${i} -g powersave --min 500Mhz --max 3700Mhz 
done

watch grep \"cpu MHz\" /proc/cpuinfo
