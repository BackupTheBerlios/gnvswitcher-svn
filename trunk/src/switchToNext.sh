#!/bin/bash

# CONFIG
DISPER_BIN="disper"
PROFILES=( docked mobile )


# CODE
cd `dirname $0`

CURRENT_PROFILE_NUMBER=`cat current-profile`
NEXT_PROFILE_NUMBER=`echo "${CURRENT_PROFILE_NUMBER} + 1" | bc`
if [ $NEXT_PROFILE_NUMBER -eq ${#PROFILES[@]} ]; then
	NEXT_PROFILE_NUMBER=0
fi


logger -t nvResSwitcher "Switching profile '${PROFILES[$CURRENT_PROFILE_NUMBER]} -> ${PROFILES[$NEXT_PROFILE_NUMBER]}'"
cat ${PROFILES[$NEXT_PROFILE_NUMBER]}.disper | ${DISPER_BIN} -i


echo "${NEXT_PROFILE_NUMBER}" > current-profile
