#!/bin/bash
#######################################################################
#Name:          template.sh
#Description:   Script to test bash functionalities
#Args:          1) String name
#               2) second argument
#               None
#Author:        Folken
#Date:          08.03.2021
#######################################################################

###IMPORT SECTION###
source ./libs/functions.sh

###VARIABLES SECTION ###
name="$1"
fN=$(basename "$0" .sh)

f_log "$fN" ""
f_log "$fN" "PROGAM START"
sleep 2
###MAIN SECTION###
if [ -z "$name" ]
then
    f_log "$fN" "Variable name vacia"
else
    f_log "$fN" "Hello $name!"
fi

f_log "$fN" "PROGAM END"











