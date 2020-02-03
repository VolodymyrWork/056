#!/bin/bash

sort versions.txt | uniq -c | sort -n | tail -n 1
