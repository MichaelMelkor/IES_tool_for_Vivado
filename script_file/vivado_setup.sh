#!/bin/bash
########################### set ENV_PATH #############################
#### ----------------------- change here -----------------------
#export behav_DIR="/home/isn/vivado_proj/test_nc/pcie_7x_0_ex/pcie_7x_0_ex.sim/sim_1/behav"
#### ----------------------- change here -----------------------
#export PATH="$PATH":$behav_DIR


###################################### make a sim_dir ##########################################
mkdir ./sim_dir 
cd ./sim_dir

########################## COPY some documents #######################
#copy elaborate.sh
cp $behav_DIR/setup.sh . -rf
source ./setup.sh

#copy compile.sh and change origin_dir
cp $behav_DIR/compile.sh . -rf
cat compile.sh|grep 'origin_dir="."' | sed -i 's/origin_dir="."/origin_dir="$behav_DIR"/g' compile.sh

#copy elaborate.sh
cp $behav_DIR/elaborate.sh . -rf

#copy simulate.sh and delete "-gui         -input *.do"
cp $behav_DIR/simulate.sh . -rf
cat simulate.sh|grep ' -gui' | sed -i 's/ -gui//g' simulate.sh
cat simulate.sh | grep ' -input'| sed -i 's/\(.*\)\-input.*\.do\(.*\)/\1-input ..\/script_file\/opt_for_sim.do\2/g' simulate.sh	

#copy other documents, don't copy those /.shm/ /.sh/ /.log/ /cds.lib/ /hdl.var/ /ies/ 
rsync -av $behav_DIR/ ./ --exclude=*.shm --exclude=*.sh --exclude=*.log --exclude=cds.lib --exclude=hdl.var --exclude=ies

############################# return to .. #################################
cd ..


