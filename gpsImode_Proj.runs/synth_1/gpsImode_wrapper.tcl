# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.cache/wt [current_project]
set_property parent.project_path F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths {
  f:/lynn.zheng/vivado_learing/ip_repo/newGpsIp_1.0
  f:/lynn.zheng/vivado_learing/gpsImode_Proj/ip_repo
} [current_project]
add_files F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/gpsImode.bd
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_processing_system7_0_0/gpsImode_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_axi_uartlite_0_0/gpsImode_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_axi_uartlite_0_0/gpsImode_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_axi_uartlite_0_0/gpsImode_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_rst_processing_system7_0_100M_0/gpsImode_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_rst_processing_system7_0_100M_0/gpsImode_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_rst_processing_system7_0_100M_0/gpsImode_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_xbar_0/gpsImode_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/ip/gpsImode_auto_pc_0/gpsImode_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/gpsImode_ooc.xdc]
set_property is_locked true [get_files F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/gpsImode.bd]

read_verilog -library xil_defaultlib F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/sources_1/bd/gpsImode/hdl/gpsImode_wrapper.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/constrs_1/imports/new/gps.xdc
set_property used_in_implementation false [get_files F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/constrs_1/imports/new/gps.xdc]

read_xdc F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/constrs_1/imports/new/imode.xdc
set_property used_in_implementation false [get_files F:/lynn.zheng/vivado_learing/gpsImode_Proj/gpsImode_Proj.srcs/constrs_1/imports/new/imode.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top gpsImode_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef gpsImode_wrapper.dcp

catch { report_utilization -file gpsImode_wrapper_utilization_synth.rpt -pb gpsImode_wrapper_utilization_synth.pb }