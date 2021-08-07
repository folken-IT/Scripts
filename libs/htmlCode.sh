#!/bin/bash
#######################################################################
#Name:          htmlCode.sh
#Description:   Variables for html code
#Args:          None
#Author:        Folken
#Date:          08.03.2021
#######################################################################

rptID="report"
divStyle="width: 51%; margin:0 auto;"

htmlStart="
<html>
    <head>
    <style>
h3 {
  text-align: center;
}

#report {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#report td, #report th {
  border: 1px solid #ddd;
  padding: 8px;
}

#report tr:nth-child(even){background-color: #f2f2f2;}

#report tr:hover {background-color: #ddd;}

#report th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>

        <title>Satus report</title>
    </head>
    <body>
        <div style=$divStyle>
            
            <table id=$rptID>
            <h3 text>Status report</h3>

                <tr> <th>Property</th> <th>Value</th></tr>
"

htmlEnd="                
            </table>
        </div>
        
        
    </body>
</html>

"