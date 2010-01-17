#!/bin/bash

cd `dirname $0`
logger -t nvResSwitcher Switching to \'beamer\' monitor profile.
cat beamer.disper | disper -i
