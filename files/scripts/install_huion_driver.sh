#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

FILE=HuionTablet_LinuxDriver_v15.0.0.162.x86_64.tar.xz
DIR=huion_tablet_driver
cd /tmp/files
mkdir ${DIR} && tar -xf ${FILE} -C ${DIR}

./${DIR}/install.sh
rm -rf ${DIR}
rm ${FILE}
