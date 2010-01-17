#!/bin/bash

cd `dirname $0`
logger -t nvResSwitcher Switching to \'mobile\' monitor profile.
cat mobile.disper | disper -s
