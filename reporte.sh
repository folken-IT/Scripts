#!/bin/bash
#######################################################################
#Name:          reporte.sh
#Description:   Script to send computer's information
#Args:          None
#Author:        Folken
#Date:          08.07.2021
#######################################################################

###IMPORT SECTION###
source ./libs/functions.sh
source ./libs/htmlCode.sh
###VARIABLES SECTION ###
name="$1"
fileLogName=$(basename "$0" .sh)
toAddress="folken.it.services@gmail.com"
subject="My Computer's  status report"
memFree=$(free -g | grep "Mem" | awk -F' ' '{print $4}')
numCPU=$(lscpu |grep "CPU(s):" | head -1 |cut -d":" -f2|tr -d '[[:space:]]')


###MAIN SECTION###
f_log "$fileLogName" ""
f_log "$fileLogName" "PROGRAM START"
f_log "$fileLogName" "FreeMemory: $memFree GB"
f_log "$fileLogName" "NumeroProcessors: $numCPU"

rptInfo="
                <tr> <td>CPU Number: </td> <td>$numCPU</td></tr>
                <tr> <td>Free Mem: </td> <td>$memFree</td></tr>

"
f_log "$fileLogName" "Sending mail..."
f_sendMail "$subject" "$toAddress" "$rptInfo"

f_log "$fileLogName" "Mail Sent."

f_log "$fileLogName" "PROGRAM END"

