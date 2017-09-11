#!/bin/bash
innoLocation="/cygdrive/c/Program Files (x86)/Inno Setup 5" #iscc.exe"

inspectScriptName="Release Script - Full Install.iss"
inspectScriptLocation="D:\\Repositories\\inspect\\"

inspectReleaseLocation="D:\\Repositories\\inspect\\Output" 
inspectReleaseLocationCyg="/cygdrive/d/Repositories/inspect/Output"

vmwareShare="/cygdrive/d/VirtualBox VMs/Virtual-Share"

echo 'Inno Compile Script'

echo -e "${sims4ReleaseScript}"

# Build release version
cd "${innoLocation}"
./iscc.exe "${inspectScriptLocation}${inspectScriptName}"

# Copy to remote testing share directory
echo "Copying [ ${inspectReleaseLocation} ] => [ ${vmwareShare} ]"
rsync -ar --info=progress2 ${inspectReleaseLocationCyg}/* "${vmwareShare}"

# Open binary location
explorer "${inspectReleaseLocation}"
 
echo -e '\nFinished compiling [Inspect]\n'

