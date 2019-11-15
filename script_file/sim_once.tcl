
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
set_property target_simulator IES [current_project]

#############################################   Change to ***your own Path for Xilinx-Lib*** here   ########################
set_property compxlib.ies_compiled_library_dir /home/isn/EDA/Cadence/INCISIVE152/compile_simlib [current_project]
#############################################   Change to ***your own Path for Xilinx-Lib*** here   ########################

launch_simulation -scripts_only




