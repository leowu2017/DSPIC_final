proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir E:/DSPIC_final/DSPIC_final.data/wt [current_project]
  set_property parent.project_dir E:/DSPIC_final [current_project]
  add_files E:/DSPIC_final/DSPIC_final.runs/synth_1/flp32_complex_subtracter.dcp
  link_design -top flp32_complex_subtracter -part xa7a100tcsg324-1Q
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force flp32_complex_subtracter_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  catch { report_io -file flp32_complex_subtracter_io_placed.rpt }
  catch { report_clock_utilization -file flp32_complex_subtracter_clock_utilization_placed.rpt }
  catch { report_utilization -file flp32_complex_subtracter_utilization_placed.rpt -pb flp32_complex_subtracter_utilization_placed.pb }
  catch { report_control_sets -verbose -file flp32_complex_subtracter_control_sets_placed.rpt }
  write_checkpoint -force flp32_complex_subtracter_placed.dcp
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  catch { report_drc -file flp32_complex_subtracter_drc_routed.rpt -pb flp32_complex_subtracter_drc_routed.pb }
  catch { report_power -file flp32_complex_subtracter_power_routed.rpt -pb flp32_complex_subtracter_power_summary_routed.pb }
  catch { report_route_status -file flp32_complex_subtracter_route_status.rpt -pb flp32_complex_subtracter_route_status.pb }
  catch { report_timing_summary -file flp32_complex_subtracter_timing_summary_routed.rpt -pb flp32_complex_subtracter_timing_summary_routed.pb }
  write_checkpoint -force flp32_complex_subtracter_routed.dcp
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

