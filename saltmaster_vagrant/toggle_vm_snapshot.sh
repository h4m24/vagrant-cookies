#!/bin/bash
#
# VAGRANT_NAME="$2"
#
# SNAPSHOT_NAME="INITIAL_STATE"
#
# MINION_MACHINE_NAME=$(VBoxManage list runningvms | grep $VAGRANT_NAME_[0-9] | awk '{print $1}' | sed 's#"##g' )
#
#
#
#
# if [ $1 == 'take' ]; then
#   VBoxManage snapshot $MINION_MACHINE_NAME take $SNAPSHOT_NAME
# elif [[ $1 == 'restore' ]]; then
#   VBoxManage controlvm $MINION_MACHINE_NAME savestate
#   VBoxManage snapshot $MINION_MACHINE_NAME restore INITIAL_MINION_STATE
#   VBoxManage startvm $MINION_MACHINE_NAME --type headless
# else
#   exit
# fi

if [ $1 == 'take' ]; then
  vagrant snapshot save  saltminion INITIAL_STATE_WORKS
  vagrant snapshot save  saltmaster INITIAL_STATE_WORKS
elif [[ $1 == 'reset' ]]; then
  vagrant snapshot restore  saltminion INITIAL_STATE_WORKS
  vagrant snapshot restore  saltmaster INITIAL_STATE_WORKS
else
  echo $0 [take|reset]
  exit
fi
