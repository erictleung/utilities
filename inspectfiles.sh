#!/usr/bin/bash

# Description:
#   Various scripts to help with counting files from, say, a sequencing run

# Description:
#   Count number of files in directory based on some given regular expression
# Purpose:
#   Count number of sequencing files there are to make sure there is correct number i.e. paired ends
ls | \
  grep "lane1-s[0-9]\{3\}" | \
  wc -l
  
# Description:
#   WIP Extract sequence names that occur only once
# Purpose:
#   Check which sequencing paired end I'm missing, if any
ls | \
  grep -p "lane1-s[0-9]\{3\}"
