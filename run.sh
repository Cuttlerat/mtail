#!/bin/bash
OLDPWD=$( PWD )
SCRIPTDIR=$( dirname $0 )
cd ${SCRIPTDIR} || exit 1
LOGSLIST=$( tr '\n' ',' < "${SCRIPTDIR}/config/logslist" )
MTAIL="mtail_linux64"
${SCRIPTDIR}/bin/${MTAIL} --progs "${SCRIPTDIR}/config/programs-enabled" --logs ${LOGSLIST}
cd ${OLDPWD}
