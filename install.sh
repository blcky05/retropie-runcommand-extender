#!/bin/sh
TMP=`realpath $0`
REPO_PATH=`dirname $TMP`/

SCRIPT_PATH=/opt/retropie/configs/all/
EXTENDER_SCRIPT=execute_runcommand_scripts
ONSTART_SCRIPT=runcommand-onstart
ONLAUNCH_SCRIPT=runcommand-onlaunch
ONEND_SCRIPT=runcommand-onend

EXTENDER_SCRIPT_PATH=${SCRIPT_PATH}${EXTENDER_SCRIPT}.sh
ONSTART_SCRIPT_PATH=${SCRIPT_PATH}${ONSTART_SCRIPT}.sh
ONLAUNCH_SCRIPT_PATH=${SCRIPT_PATH}${ONLAUNCH_SCRIPT}.sh
ONEND_SCRIPT_PATH=${SCRIPT_PATH}${ONEND_SCRIPT}.sh

# only continue if the install script has not already been executed
if [ -f "$EXTENDER_SCRIPT_PATH" ]; then
    echo "$EXTENDER_SCRIPT_PATH already exists. Exiting."
	exit 0
fi

# move existing scripts
if [ -f "$ONSTART_SCRIPT_PATH" ]; then
    mv $ONSTART_SCRIPT_PATH ${SCRIPT_PATH}${ONSTART_SCRIPT}-0.sh
fi

if [ -f "$ONLAUNCH_SCRIPT_PATH" ]; then
    mv $ONLAUNCH_SCRIPT_PATH ${SCRIPT_PATH}${ONLAUNCH_SCRIPT}-0.sh
fi

if [ -f "$ONEND_SCRIPT_PATH" ]; then
    mv $ONEND_SCRIPT_PATH ${SCRIPT_PATH}${ONEND_SCRIPT}-0.sh
fi

# symlink the extender scripts
ln -s ${REPO_PATH}${EXTENDER_SCRIPT}.sh $EXTENDER_SCRIPT_PATH
ln -s ${REPO_PATH}${ONSTART_SCRIPT}.sh $ONSTART_SCRIPT_PATH
ln -s ${REPO_PATH}${ONLAUNCH_SCRIPT}.sh $ONLAUNCH_SCRIPT_PATH
ln -s ${REPO_PATH}${ONEND_SCRIPT}.sh $ONEND_SCRIPT_PATH