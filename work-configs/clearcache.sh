#/bin/bash
runtime=$(date)

appData="C:/Users/oliver.buckler/AppData/Local/JetBrains"

echo "Starting at ${runtime}"
cd "${appData}"

echo "Checking file size of: ${appData} ..."
du -hcs ${appData}

read -p "Delete JetBrains DotMemory cache? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -rf ${appData}
fi

echo -e "\nCache Clearing Script Finished\n"


