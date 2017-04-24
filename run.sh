#!/bin/bash
SCRIPTDIR=$( cd $(dirname $0); pwd )
logslist=$( cat "${SCRIPTDIR}/config/logslist" | tr '\n' ',' )
${SCRIPTDIR}/bin/mtail --progs "${SCRIPTDIR}/config/programs-enabled" --logs $logslist
