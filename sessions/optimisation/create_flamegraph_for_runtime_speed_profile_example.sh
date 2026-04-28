#!/bin/bash
python -m cProfile -o runtime_speed_profile_example.prof runtime_speed_profile_example_no_profiling.py

rm -f runtime_speed_profile_example.svg

python runtime_speed_profile_example_no_profiling.py runtime_speed_profile_example.prof > runtime_speed_profile_example.svg

inkscape -w 1024 -h 1024 runtime_speed_profile_example.svg -o runtime_speed_profile_example.png
