#!/bin/bash
dbup="/cygdrive/d/Repositories/inspect/trunk/SIMS.DBUP/bin/Debug/";

cd ${dbup}
./SIMS.DBUP.exe DESKTOP-6541KOB\\SQLExpress ins_test debuguser Welcome01!
echo -e "\n"
./SIMS.DBUP.exe DESKTOP-6541KOB\\SQLExpress ins_test
echo -e "\n"
./SIMS.DBUP.exe
echo -e "\n"

