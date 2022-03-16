#!/bin/bash
ls -l | awk '(NR!=1){print}' | awk '(NR%2==1){print}'
