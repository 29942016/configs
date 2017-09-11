#!/bin/bash

srcDir="/cygdrive/d/Repositories/inspect"
destDir="/cygdrive/d/bkp/inspect"

echo -e "\nBacking up [Inspect] to ${destDir}."

rsync --info=progress2 -ar /cygdrive/d/Repositories/inspect/ /cygdrive/d/bkp/inspect

echo -e "\nEnd of backup."
