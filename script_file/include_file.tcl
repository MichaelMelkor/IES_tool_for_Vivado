
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

set_property include_dirs $env(inc_list) [get_filesets sim_1]
puts $env(inc_list)






