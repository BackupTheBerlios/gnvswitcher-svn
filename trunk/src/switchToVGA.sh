#!/bin/bash

cd `dirname $0`
logger -t nvResSwitcher Switching to \'vga\' monitor profile.
cat externalVGA.disper | disper -i -t left
