#!/bin/bash

cd `dirname $0`
logger -t nvResSwitcher Switching to \'docked\' monitor profile.
cat docked.disper | disper -i
