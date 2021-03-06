#!/bin/sh
set -e
set -u

BLUE='\033[1;34m'
NC='\033[0m'
DIR=$(cd "$(dirname "$0")"; pwd)

printf "${BLUE}Building Theia plug-in${NC}\n"
cd ${DIR}/ui && ./build.sh

printf "${BLUE}Generating Che plug-in file...${NC}\n"
cd ${DIR}/assembly && ./build.sh
printf "${BLUE}Generated in assembly/che-service-plugin.tar.gz${NC}\n"
