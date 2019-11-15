#!/bin/bash
########################################################################################################################

################## NC-Verilog simrun ################

#export behav_DIR="/home/isn/vivado_proj/test_nc/pcie_7x_0_ex/pcie_7x_0_ex.sim/sim_1/behav"
#export PATH="$PATH":$behav_DIR

cd ./sim_dir

source  ./compile.sh
source  ./elaborate.sh
source  ./simulate.sh

cd ..
