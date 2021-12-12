#!/bin/bash

TargetDir=$(cd $(dirname $0); pwd)

UpdatedRC=~/.bashrc
AliasFile=${TargetDir}/ssh_aliases

grep "${AliasFile}" ${UpdatedRC} >/dev/null
if [ $? -eq 0 ]; then
	echo "'${AliasFile}' is already setuped in '${UpdatedRC}'."
else
	echo "Setup '${AliasFile}' in '${UpdatedRC}'."
	echo "" >> ${UpdatedRC}
	echo "[ -f ${AliasFile} ] && source ${AliasFile}" >> ${UpdatedRC}
	echo "${UpdatedRC} is updated. Please reload it."
fi

