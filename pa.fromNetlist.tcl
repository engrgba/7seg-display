
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name kit7seg -dir "D:/Gul Bahar Data/FPGAs/XILINX ISE/New folder/kit7seg/planAhead_run_1" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Gul Bahar Data/FPGAs/XILINX ISE/New folder/kit7seg/Wishbone_Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Gul Bahar Data/FPGAs/XILINX ISE/New folder/kit7seg} {ipcore_dir} }
add_files [list {ipcore_dir/icon.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/ila.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Wishbone_Controller.ucf" [current_fileset -constrset]
add_files [list {Wishbone_Controller.ucf}] -fileset [get_property constrset [current_run]]
link_design
