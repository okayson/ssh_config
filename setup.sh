#!/bin/bash

TargetDir=$(cd $(dirname $0); pwd)
LinkDir=~/.ssh
Targets=(config config.d)

# --------------------------------------------------
for target in ${Targets[@]}
do
  [ -L ${LinkDir}/${target} ] && echo "link exist:${target}...abort!" && exit
  [ -f ${LinkDir}/${target} ] && echo "file exist:${target}...abort!" && exit
  [ -d ${LinkDir}/${target} ] && echo "dir exist:${target}...abort!" && exit
done

for target in ${Targets[@]}
do
  ln -s ${TargetDir}/${target} ${LinkDir}/${target}
  chmod 700 ${TargetDir}/${target}
  echo "Linked ... ${LinkDir}/${target} -> ${TargetDir}/${target}"
done

