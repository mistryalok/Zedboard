*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2015 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current README.txt Version: 1.0.8
Date Last Modified:  30APR2015
Date Created:        01FEB2013

Associated Filename: xapp1167.zip

Supported Device(s): Xilinx Zynq-7000 SoC ZC702 Evaluation Kit
                     Xilinx Zynq-7000 SoC ZC702 Video and Imaging Kit
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

The applications shipped with this reference design include Linux kernel
header files and are not considered a "derivative work" for the purposes
of the GPL.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND HARDWARE REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION
7. REFERENCES


1. REVISION HISTORY 
====================

            Readme  
Date        Version      Revision Description
===============================================================================
09JAN2013   1.0.0       Video Library TRD -- Initial Release
01FEB2013   1.0.1       Slides update: system intergration and function list
                        sw update: new user libaray files
                        design update: simplify #pragma in top-level function
                        video library update: release 1.0
25FEB2013   1.0.2       Slides update: function list
                        sw/hw upgrade to 14.5
                        design update: ap_stable for rows/cols on top-level
12MAR2013   1.0.3       Slides update: new walkthrough steps
                        sw add option for run synthesizable algorithm on ARM
                        hw using xps_proj instead of pa_proj
                        designs put into sw directory, add new makefile rules
27MAR2013   1.0.4       Release 1.0, shipped with XAPP1167
                        include 4 pre-compiled OpenCV libraries (stripped) for 
                        ARM Linux, x86_64 Linux, x86_Linux and x86_Windows
                        sw add a new reference design: fast-corner
                        update makefile rules
                        add a Windows batch file
13MAY2013   1.0.5       Update designs and flow to ipi (2013.2)
                        rebuilt OpenCV libraries 2.4.5 for ARM
26AUG2013   1.0.6       Update to PetaLinux framework
                        add ffmpeg support using decoded video as input
16OCT2013   1.0.7       Update designs and flow to 2013.3
                            
30APR2015				Updated Reference Designs and other sections to reflect the current release.
===============================================================================



2. OVERVIEW
============

This README explains the Video Library TRD package and provides 
information minimum requirement and hardware setup.

The TRD is an embedded video processing application designed to showcase 
various features and capabilities of Zynq-7000 All Programmable SoC (AP SoC) 
device for the embedded domain. The TRD consists of two elements: The 
Zynq-7000 AP SoC Processing System (PS) and a video processing pipeline 
implemented in Programmable Logic (PL). The AP SoC allows the user to implement 
an video processing algorithm (e.g. edge enhancement, corner detection) either 
as a software program running on the Zynq-7000 AP SoC PS or as a hardware 
accelerator inside the PL.  

The TRD demonstrates how the user can accelerate an OpenCV application with 
Video Library and seamlessly switch between a software or a hardware 
implementation and evaluate the cost and benefit of each implementation. 

For more information, please refer XAPP1167.


3. SOFTWARE TOOLS AND HARDWARE REQUIREMENTS
============================================

Software:
  -- Vivado Design Suite, System Edition (include Vivado HLS), version 2013.2
  -- Proper installation of required license files for the TRD.
  -- ZC702 board uses CP210x USB to UART Bridge to provide COM port connection 
     to the board. This configuration is highly recommended because the UART 
     outputs information to hyper terminal right after power up.
     To use this feature, hyper terminal, Minicom, teraterm or equivalent
     terminal software on the host machine is required. For details, please
     refer to UG926 for USB-to-UART Bridge driver installation.
  -- For additional information on software installation, refer to UG798 (v14.6)

Hardware:
  -- The reference design targets the Zynq ZC702 evaluation board, Rev C or
     above.
  -- ZC702 evaluation board setup in the default configuration as documented
     in the Default Switch and Jumper Setting of UG850.
  -- AC power adapter (12VDC)
  -- HDMI-to-HDMI or HDMI-to-DVI cable (depending on available Monitor)
  -- Monitor capable of supporting 1080p60
  -- USB Type-A Female to USB Micro-B Male cable
  -- USB hub
  -- USB mouse
  -- USB keyboard
  -- USB Type A Male to USB Mini-B Male cable if using USB-to-UART bridge
  -- Optional: Avnet FMC IMAGEON daughter card for video input with 
     1080p input video source
  -- SD memory card reader for transferring files onto the SD card.
     (not included in the package)


4. DESIGN FILE HIERARCHY
=========================

The directory structure underneath this top-level folder is described 
below:

|-- boot_image/
|   |-- bootgen.sh              # Script to build BOOT.bin
|   |-- bootimage.bif           # Include file names to create boot image
|   |-- system.bit              # Hardware bitstream to configure the FPGA
|   |-- u-boot.elf              # u-boot Boot Loader executable
|   |-- zynq_fsbl.elf           # Zynq First stage boot loader executable
|
|-- doc/
|   |-- lgpl-2.1.txt            # Copy of LGPL license
|
|-- hw/
|   |-- ipi_proj/               # IPI project for reference designs
|
|-- opencv_install/
|   |-- arm_Linux/              # OpenCV libraries and header files for ARM
|
|-- sd_image/
|   |-- BOOT.bin                # Zynq Boot Image, which is created from 
|   |                             FSBL, hardware bitstream and u-boot
|   |-- image.ub                # PetaLinux image file
|   |-- input_video             # Input video file
|   |-- video_library_cmd       # Cmd line based Linux application executable
|
|-- sw/
|   |-- demo/                   # Demo design for OpenCV-acceleration
|   |-- fast-corner/            # Corner-detection design for OpenCV-acceleration
|   |-- share/                  # Shared source files for ARM Linux application
|
|-- README.txt                  # This file
|
|-- Video_Library_Windows.bat   # The batch file to start TRD on Windows

    
5. INSTALLATION AND OPERATING INSTRUCTIONS 
===========================================

ZC702 Initial Setup:
--------------------

-- All jumpers and switches should be in default setting except SW16.
   Mode switch SW16 should be set to boot from SD card.
   See image for SD boot in Getting Started Guide (UG926).
   For a board with SW16, use the following configuration
   1: GND
   2: GND
   3: VCC
   4: VCC
   5: GND
   J21, J20, J22, J25, J26: Unstuffed
   For Rev C version of the board which does not have SW16,
   use the following jumper settings:
   J21: 2-3
   J20: 2-3
   J22: 1-2
   J25: 1-2
   J26: 2-3
-- Connect one end of the HDMI cable to board HDMI connector, connect the other
   end to the monitor's HDMI or DVI input
-- Connect USB Mini-B side of USB-to-Mini-B cable to the on-board mini USB 
   connector (J17). Connect USB side to the control PC to enable USB-to-UART 
   bridge.
-- Connect the AC power adapter
-- Connect USB Micro-B cable to on-board USB Micro connector J1, then connect 
   up USB hub, mouse and keyboard.
-- Optional: If Avnet Imageon card is used, connect the card to FMC slot 2.
   Connect 1080p video input source to HDMI-IN.

Building Design:
----------------

To enable easily building the reference designs, a Makefile is also provided 
with the following targets:
   'make elf'       -- build sw (video_library_cmd)
   'make sim'       -- build and run csim test
   'make core'      -- synthesis and export IP
   'make bitstream' -- generate bistream (system.bit)
   'make boot'      -- generate boot image (BOOT.bin)
   'make all'       -- build sw and hw, generate sd_image

Running 'make all' from the Linux command line or the Vivado HLS Command Prompt 
under Windows that launched by provided batch file rebuilds the entire design 
and generates an SD card image that can be run. Detailed instructions to Build 
Hardware and Software for this TRD are provided in XAPP1167.

The pre compiled files in sd_image directory can be loaded on SD card root
to get started with the design. Here various options can be explored.


6. OTHER INFORMATION 
=====================


7. REFERENCES
==============

XAPP1167 - Accelerating OpenCV Applications with Zynq-7000 All Programmable
           SoC using Vivado HLS Video Libraries
UG902 - Vivado Design Suite User Guide: High-Level Synthesis
US873 - Zynq Concepts, Tools and Techniques
UG798 - Xilinx Design Tools: Installation and Licensing Guide
UG926 - Zynq-7000 ZC702 Evaluation Kit Getting Started Guide
UG850 - ZC702 Evaluation Board User Guide
http://www.wiki.xilinx.com/Zynq+Base+TRD+2013.2
