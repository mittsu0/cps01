#!/bin/bash
ls -l | awk '(NR!=1){print}' | awk '(NR%2==0){print}'