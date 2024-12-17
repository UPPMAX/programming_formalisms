#!/bin/bash
git log --format=tformat:"%an, %ci" --since="5 months ago" > git_times.csv
