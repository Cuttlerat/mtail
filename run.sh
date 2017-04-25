#!/bin/bash
SCRIPTDIR=$( cd $(dirname $0); pwd )
logslist=$( cat "${SCRIPTDIR}/config/logslist" | tr '\n' ',' )
mtail=mtail_linux64
${SCRIPTDIR}/bin/${mtail} --progs "${SCRIPTDIR}/config/programs-enabled" --logs $logslist
