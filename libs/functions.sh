#!/bin/bash
#######################################################################
#Name:          functions.sh
#Description:   Script contains basic functions for scripting
#Args:          None
#Author:        Folken
#Date:          08.03.2021
#######################################################################

tempDir="/tmp"
myDate="date '+%Y-%m-%d %H:%M:%S'"


###FUNCTION SECTION###
function f_log {
    filename="$1"
    msg="$2"
    echo "`eval $myDate`: $msg" >> $tempDir/$filename.log
}


function f_sendMail {
    subject="$1"
    to="$2"
    info="$3"

mail -s "$subject" --content-type="text/html" "$to" <<MARCA

$htmlStart

$info

$htmlEnd

MARCA

}