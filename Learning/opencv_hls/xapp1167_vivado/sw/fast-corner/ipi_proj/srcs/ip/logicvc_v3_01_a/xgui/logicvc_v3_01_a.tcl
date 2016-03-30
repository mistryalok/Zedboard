#Definitional proc to organize widgets for parameters.
set c_family [string tolower [get_project_property ARCHITECTURE]]

proc create_gui { ipview } {
    variable c_family

    set Component_Name [ipgui::add_param $ipview -parent $ipview -name Component_Name]

    set Page0 [ ipgui::add_page $ipview  -name "IP core license and version" -layout vertical]
        set tabgroup0 [ipgui::add_group $ipview -parent $Page0 -name {IP License} -layout vertical]
            set C_IP_LICENSE_TYPE [ipgui::add_param $ipview -parent $tabgroup0 -name C_IP_LICENSE_TYPE]
            set C_IP_LICENSE_CHECK [ipgui::add_param $ipview -parent $tabgroup0 -name C_IP_LICENSE_CHECK]
            set C_IP_TIME_BEFORE_BREAK [ipgui::add_param $ipview -parent $tabgroup0 -name C_IP_TIME_BEFORE_BREAK]
        set tabgroup1 [ipgui::add_group $ipview -parent $Page0 -name {IP Version} -layout vertical]
            set C_IP_MAJOR_REVISION [ipgui::add_param $ipview -parent $tabgroup1 -name C_IP_MAJOR_REVISION]
            set C_IP_MINOR_REVISION [ipgui::add_param $ipview -parent $tabgroup1 -name C_IP_MINOR_REVISION]
            set C_IP_PATCH_LEVEL [ipgui::add_param $ipview -parent $tabgroup1 -name C_IP_PATCH_LEVEL]

    set Page1 [ ipgui::add_page $ipview  -name "Registers interface" -layout vertical]
        set tabgroup2 [ipgui::add_group $ipview -parent $Page1 -name {Registers General Settings} -layout vertical]
            set C_REGS_INTERFACE [ipgui::add_param $ipview -parent $tabgroup2 -widget comboBox -name C_REGS_INTERFACE]
            set C_READABLE_REGS [ipgui::add_param $ipview -parent $tabgroup2 -widget comboBox -name C_READABLE_REGS]
                set_property tooltip {To save additional resources user can disable the read register interface. In this mode only interrupt status register, double/triple video/CLUT buffer registers, power control register and IP version register are readable.} $C_READABLE_REGS
            set C_REG_BYTE_SWAP [ipgui::add_param $ipview -parent $tabgroup2 -widget comboBox -name C_REG_BYTE_SWAP]
                set_property tooltip {If set this will change byte ordering on register interface bus (B0B1B2B3 => B3B2B1B0).} $C_REG_BYTE_SWAP
        set tabgroup3 [ipgui::add_group $ipview -parent $Page1 -name {Registers Address Space} -layout vertical]
            set C_REGS_BASEADDR [ipgui::add_param $ipview -parent $tabgroup3 -name C_REGS_BASEADDR]
                set_property tooltip {Registers base address - used only if OPB or SPLB bus interface is implemented.} $C_REGS_BASEADDR
            set C_REGS_HIGHADDR [ipgui::add_param $ipview -parent $tabgroup3 -name C_REGS_HIGHADDR]
                set_property tooltip {Registers high address - used only if OPB or SPLB bus interface is implemented.} $C_REGS_HIGHADDR
        set tabgroup4 [ipgui::add_group $ipview -parent $Page1 -name {AXI4_Lite Interface} -layout vertical]
            set C_S_AXI_ADDR_WIDTH [ipgui::add_param $ipview -parent $tabgroup4 -name C_S_AXI_ADDR_WIDTH]
                set_property tooltip {AXI4-Lite interface address bus width.} $C_S_AXI_ADDR_WIDTH
            set C_S_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup4 -name C_S_AXI_DATA_WIDTH]
                set_property tooltip {AXI4-Lite interface data bus width.} $C_S_AXI_DATA_WIDTH
        set tabgroup5 [ipgui::add_group $ipview -parent $Page1 -name {SPLB Interface} -layout vertical]
            set C_SPLB_AWIDTH [ipgui::add_param $ipview -parent $tabgroup5 -name C_SPLB_AWIDTH]
                set_property tooltip {SPLB interface address bus width.} $C_SPLB_AWIDTH
            set C_SPLB_DWIDTH [ipgui::add_param $ipview -parent $tabgroup5 -name C_SPLB_DWIDTH]
                set_property tooltip {SPLB interface data bus width.} $C_SPLB_DWIDTH
            set C_SPLB_NATIVE_DWIDTH [ipgui::add_param $ipview -parent $tabgroup5 -name C_SPLB_NATIVE_DWIDTH]
                set_property tooltip {SPLB interface native data bus width.} $C_SPLB_NATIVE_DWIDTH
            set C_SPLB_MID_WIDTH [ipgui::add_param $ipview -parent $tabgroup5 -name C_SPLB_MID_WIDTH]
                set_property tooltip {PLB master ID bus width, the value is log2(C_SPLB_NUM_MASTERS).} $C_SPLB_MID_WIDTH
            set C_SPLB_NUM_MASTERS [ipgui::add_param $ipview -parent $tabgroup5 -name C_SPLB_NUM_MASTERS]
                set_property tooltip {Number of masters on SPLB interface bus.} $C_SPLB_NUM_MASTERS
        set tabgroup6 [ipgui::add_group $ipview -parent $Page1 -name {OPB Interface} -layout vertical]
            set C_OPB_AWIDTH [ipgui::add_param $ipview -parent $tabgroup6 -name C_OPB_AWIDTH]
                set_property tooltip {OPB interface address bus width.} $C_OPB_AWIDTH
            set C_OPB_DWIDTH [ipgui::add_param $ipview -parent $tabgroup6 -name C_OPB_DWIDTH]
                set_property tooltip {OPB interface data bus width.} $C_OPB_DWIDTH

    set Page2 [ ipgui::add_page $ipview  -name "Memory interface" -layout vertical]
        set tabgroup7 [ipgui::add_group $ipview -parent $Page2 -name {Memory General Settings} -layout vertical]
            set C_VMEM_INTERFACE [ipgui::add_param $ipview -parent $tabgroup7 -widget comboBox -name C_VMEM_INTERFACE]
            set C_MEM_BURST [ipgui::add_param $ipview -parent $tabgroup7 -widget comboBox -name C_MEM_BURST]
                set_property tooltip {For AXI4 and XMB interface available values are 16, 32 and 64. For 32-bit PLB interface bus only a burst of 16 words is possible, while for 64-bit and 128-bit PLB interface bus any of the available values can be selected.} $C_MEM_BURST
            set C_MEM_LITTLE_ENDIAN [ipgui::add_param $ipview -parent $tabgroup7 -widget comboBox -name C_MEM_LITTLE_ENDIAN]
                set_property tooltip {Default endianness for logiCVC memory access is little when AXI4 or XMB is implemented, and big when PLB is implemented.} $C_MEM_LITTLE_ENDIAN
            set C_MEM_BYTE_SWAP [ipgui::add_param $ipview -parent $tabgroup7 -widget comboBox -name C_MEM_BYTE_SWAP]
                set_property tooltip {If set this will change byte ordering on memory interface bus (B0B1B2B3 => B3B2B1B0 for 32-bit memory interface data bus width, B0B1B2B3B4B5B6B7 => B7B6B5B4B3B2B1B0 for 64-bit memory interface data bus width).} $C_MEM_BYTE_SWAP
        set tabgroup8 [ipgui::add_group $ipview -parent $Page2 -name {Memory Address Space} -layout vertical]
            set C_VMEM_BASEADDR [ipgui::add_param $ipview -parent $tabgroup8 -name C_VMEM_BASEADDR]
            set C_VMEM_HIGHADDR [ipgui::add_param $ipview -parent $tabgroup8 -name C_VMEM_HIGHADDR]
        set tabgroup9 [ipgui::add_group $ipview -parent $Page2 -name {AXI4 Interface} -layout vertical]
            set C_M_AXI_ADDR_WIDTH [ipgui::add_param $ipview -parent $tabgroup9 -name C_M_AXI_ADDR_WIDTH]
                set_property tooltip {AXI4 interface address bus width.} $C_M_AXI_ADDR_WIDTH
            set C_M_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup9 -widget comboBox -name C_M_AXI_DATA_WIDTH]
                set_property tooltip {AXI4 interface data bus width.} $C_M_AXI_DATA_WIDTH
            set C_M_AXI_THREAD_ID_WIDTH [ipgui::add_param $ipview -parent $tabgroup9 -name C_M_AXI_THREAD_ID_WIDTH]
                set_property tooltip {AXI4 interface thread ID width.} $C_M_AXI_THREAD_ID_WIDTH
        set tabgroup10 [ipgui::add_group $ipview -parent $Page2 -name {MPLB Interface} -layout vertical]
            set C_MPLB_AWIDTH [ipgui::add_param $ipview -parent $tabgroup10 -name C_MPLB_AWIDTH]
                set_property tooltip {MPLB interface address bus width.} $C_MPLB_AWIDTH
            set C_MPLB_DWIDTH [ipgui::add_param $ipview -parent $tabgroup10 -widget comboBox -name C_MPLB_DWIDTH]
                set_property tooltip {MPLB interface data bus width.} $C_MPLB_DWIDTH
            set C_MPLB_SMALLEST_SLAVE [ipgui::add_param $ipview -parent $tabgroup10 -name C_MPLB_SMALLEST_SLAVE]
                set_property tooltip {Smallest slave on MPLB interface bus.} $C_MPLB_SMALLEST_SLAVE
            set C_MPLB_NUM_MASTERS [ipgui::add_param $ipview -parent $tabgroup10 -name C_MPLB_NUM_MASTERS]
                set_property tooltip {Number of masters on MPLB interface bus.} $C_MPLB_NUM_MASTERS
            set C_MPLB_PRIORITY [ipgui::add_param $ipview -parent $tabgroup10 -widget comboBox -name C_MPLB_PRIORITY ]
                set_property tooltip {Priority on MPLB interface bus: 0 - the lowest, 3 - the highest.} $C_MPLB_PRIORITY
        set tabgroup11 [ipgui::add_group $ipview -parent $Page2 -name {XMB Interface} -layout vertical]
            set C_XMB_DATA_BUS_WIDTH [ipgui::add_param $ipview -parent $tabgroup11 -widget comboBox -name C_XMB_DATA_BUS_WIDTH]
                set_property tooltip {XMB interface data bus width.} $C_XMB_DATA_BUS_WIDTH

    set Page3 [ ipgui::add_page $ipview  -name "External video input" -layout vertical]
            set C_USE_E_PARALLEL_INPUT [ipgui::add_param $ipview -parent $Page3 -widget comboBox -name C_USE_E_PARALLEL_INPUT]
                set_property tooltip {Syncronize logiCVC to external parallel input and use data as one of the layers.} $C_USE_E_PARALLEL_INPUT
            set C_E_DATA_WIDTH [ipgui::add_param $ipview -parent $Page3 -widget comboBox -name C_E_DATA_WIDTH]
                set_property tooltip {External parallel input data width.} $C_E_DATA_WIDTH
            set C_E_LAYER [ipgui::add_param $ipview -parent $Page3 -widget comboBox -name C_E_LAYER ]
                set_property tooltip {Which layer should be used as external parallel stream.} $C_E_LAYER
            set C_USE_E_VCLK_BUFGMUX [ipgui::add_param $ipview -parent $Page3 -widget comboBox -name C_USE_E_VCLK_BUFGMUX]
                set_property tooltip {Use BUFGMUX for switching clock for external parallel input synchronization.} $C_USE_E_VCLK_BUFGMUX

    set Page4 [ ipgui::add_page $ipview  -name "General settings" -layout vertical]
        set tabgroup12 [ipgui::add_group $ipview -parent $Page4 -name {Layer General Settings} -layout vertical]
            set C_NUM_OF_LAYERS [ipgui::add_param $ipview -parent $tabgroup12 -widget comboBox -name C_NUM_OF_LAYERS ]
                set_property tooltip {Number of logiCVC layers to be instantiated.} $C_NUM_OF_LAYERS
            set C_USE_SIZE_POSITION [ipgui::add_param $ipview -parent $tabgroup12 -widget comboBox -name C_USE_SIZE_POSITION]
                set_property tooltip {Enable functionality of configurable layer size, position and offset.} $C_USE_SIZE_POSITION
            set C_ROW_STRIDE [ipgui::add_param $ipview -parent $tabgroup12 -widget comboBox -name C_ROW_STRIDE]
                set_property tooltip {Distance between same column pixels for adjacent rows in pixels.} $C_ROW_STRIDE
            set C_USE_BACKGROUND [ipgui::add_param $ipview -parent $tabgroup12 -widget comboBox -name C_USE_BACKGROUND]
                set_property tooltip {In case the last layer is configured as background, pixel value is read from logiCVC background color register and not from video memory buffer.} $C_USE_BACKGROUND
            set C_XCOLOR [ipgui::add_param $ipview -parent $tabgroup12 -widget comboBox -name C_XCOLOR]
                set_property tooltip {Enable XCOLOR functionality - pixel dithering.} $C_XCOLOR
        set tabgroup13 [ipgui::add_group $ipview -parent $Page4 -name {Layer Resources} -layout vertical]
            set C_USE_XTREME_DSP [ipgui::add_param $ipview -parent $tabgroup13 -widget comboBox -name C_USE_XTREME_DSP]
                set_property tooltip {Enable or disable the use of DSP resources for blender.} $C_USE_XTREME_DSP
            set C_USE_MULTIPLIER [ipgui::add_param $ipview -parent $tabgroup13 -widget comboBox -name C_USE_MULTIPLIER]
                set_property tooltip {Control the way in which multipliers in blender are implemented: 0 - LUT, 1 - block, 2 - auto.} $C_USE_MULTIPLIER
            set C_INCREASE_FIFO [ipgui::add_param $ipview -parent $tabgroup13 -widget comboBox -name C_INCREASE_FIFO]
                set_property tooltip {User can choose to increase the size of each layer FIFO at the expense of bigger BRAM utilization.} $C_INCREASE_FIFO
        set tabgroup14 [ipgui::add_group $ipview -parent $Page4 -name {Output Interface Settings} -layout vertical]
            set C_DISPLAY_INTERFACE [ipgui::add_param $ipview -parent $tabgroup14 -name C_DISPLAY_INTERFACE]
                set_property tooltip {Enable different output types. Parallel output is always active.} $C_DISPLAY_INTERFACE
            set C_DISPLAY_COLOR_SPACE [ipgui::add_param $ipview -parent $tabgroup14 -widget comboBox -name C_DISPLAY_COLOR_SPACE]
                set_property tooltip {Select output color space and format.} $C_DISPLAY_COLOR_SPACE
            set C_PIXEL_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup14 -name C_PIXEL_DATA_WIDTH]
                set_property tooltip {Parallel pixel data width towards the display - bits per pixel (bpp).} $C_PIXEL_DATA_WIDTH
            set C_LVDS_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup14 -widget comboBox -name C_LVDS_DATA_WIDTH ]
                set_property tooltip {Data width of the LVDS display interface type.} $C_LVDS_DATA_WIDTH
            set C_VCLK_PERIOD [ipgui::add_param $ipview -parent $tabgroup14 -name C_VCLK_PERIOD]
                set_property tooltip {VCLK period in ps when DVI display interface type is implemented.} $C_VCLK_PERIOD
            set C_DVI_CLK_MODE [ipgui::add_param $ipview -parent $tabgroup14 -widget comboBox -name C_DVI_CLK_MODE]
                set_property tooltip {Valid only for 7-series FPGA devices. Please consult the logiCVC-ML user's manual for more information on selecting the appropriate mode.} $C_DVI_CLK_MODE
            set C_USE_VCLK2 [ipgui::add_param $ipview -parent $tabgroup14 -widget comboBox -name C_USE_VCLK2]
                set_property tooltip {Pixel clock rising edge is set in the middle of the DDR RGB data eye, or if not used, synchronous.} $C_USE_VCLK2

    set Page5 [ ipgui::add_page $ipview  -name "Layer configuration" -layout vertical]
        set tabgroup15 [ipgui::add_group $ipview -parent $Page5 -name {Layer0 Configuration} -layout vertical]
            set C_LAYER_0_TYPE [ipgui::add_param $ipview -parent $tabgroup15 -widget comboBox -name C_LAYER_0_TYPE]
                set_property tooltip {Select between RGB or YCbCr layer.} $C_LAYER_0_TYPE
            set C_LAYER_0_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup15 -widget comboBox -name C_LAYER_0_DATA_WIDTH]
                set_property tooltip {Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.} $C_LAYER_0_DATA_WIDTH
            set C_LAYER_0_ALPHA_MODE [ipgui::add_param $ipview -parent $tabgroup15 -widget comboBox -name C_LAYER_0_ALPHA_MODE]
                set_property tooltip {Select between layer alpha, pixel alpha or CLUT alpha blending mode.} $C_LAYER_0_ALPHA_MODE
            set C_LAYER_0_OFFSET [ipgui::add_param $ipview -parent $tabgroup15 -name C_LAYER_0_OFFSET]
                set_property tooltip {Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.} $C_LAYER_0_OFFSET
            set C_BUFFER_0_OFFSET [ipgui::add_param $ipview -parent $tabgroup15 -name C_BUFFER_0_OFFSET]
                set_property tooltip {Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.} $C_BUFFER_0_OFFSET
        set tabgroup16 [ipgui::add_group $ipview -parent $Page5 -name {Layer1 Configuration} -layout vertical]
            set C_LAYER_1_TYPE [ipgui::add_param $ipview -parent $tabgroup16 -widget comboBox -name C_LAYER_1_TYPE]
                set_property tooltip {Select between RGB, YCbCr or alpha layer.} $C_LAYER_1_TYPE
            set C_LAYER_1_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup16 -widget comboBox -name C_LAYER_1_DATA_WIDTH]
                set_property tooltip {Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.} $C_LAYER_1_DATA_WIDTH
            set C_LAYER_1_ALPHA_MODE [ipgui::add_param $ipview -parent $tabgroup16 -widget comboBox -name C_LAYER_1_ALPHA_MODE]		
                set_property tooltip {Select between layer alpha, pixel alpha or CLUT alpha blending mode.} $C_LAYER_1_ALPHA_MODE
            set C_LAYER_1_OFFSET [ipgui::add_param $ipview -parent $tabgroup16 -name C_LAYER_1_OFFSET]
                set_property tooltip {Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.} $C_LAYER_1_OFFSET
            set C_BUFFER_1_OFFSET [ipgui::add_param $ipview -parent $tabgroup16 -name C_BUFFER_1_OFFSET]
                set_property tooltip {Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.} $C_BUFFER_1_OFFSET
        set tabgroup17 [ipgui::add_group $ipview -parent $Page5 -name {Layer2 Configuration} -layout vertical]
            set C_LAYER_2_TYPE [ipgui::add_param $ipview -parent $tabgroup17 -widget comboBox -name C_LAYER_2_TYPE]
                set_property tooltip {Select between RGB or YCbCr layer.} $C_LAYER_2_TYPE
            set C_LAYER_2_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup17 -widget comboBox -name C_LAYER_2_DATA_WIDTH]
                set_property tooltip {Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.} $C_LAYER_2_DATA_WIDTH
            set C_LAYER_2_ALPHA_MODE [ipgui::add_param $ipview -parent $tabgroup17 -widget comboBox -name C_LAYER_2_ALPHA_MODE]
                set_property tooltip {Select between layer alpha, pixel alpha or CLUT alpha blending mode.} $C_LAYER_2_ALPHA_MODE
            set C_LAYER_2_OFFSET [ipgui::add_param $ipview -parent $tabgroup17 -name C_LAYER_2_OFFSET]
                set_property tooltip {Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.} $C_LAYER_2_OFFSET
            set C_BUFFER_2_OFFSET [ipgui::add_param $ipview -parent $tabgroup17 -name C_BUFFER_2_OFFSET]
                set_property tooltip {Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.} $C_BUFFER_2_OFFSET
        set tabgroup18 [ipgui::add_group $ipview -parent $Page5 -name {Layer3 Configuration} -layout vertical]
            set C_LAYER_3_TYPE [ipgui::add_param $ipview -parent $tabgroup18 -widget comboBox -name C_LAYER_3_TYPE]
                set_property tooltip {Select between RGB, YCbCr or alpha layer.} $C_LAYER_3_TYPE
            set C_LAYER_3_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup18 -widget comboBox -name C_LAYER_3_DATA_WIDTH]
                set_property tooltip {Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.} $C_LAYER_3_DATA_WIDTH
            set C_LAYER_3_ALPHA_MODE [ipgui::add_param $ipview -parent $tabgroup18 -widget comboBox -name C_LAYER_3_ALPHA_MODE]
                set_property tooltip {Select between layer alpha, pixel alpha or CLUT alpha blending mode.} $C_LAYER_3_ALPHA_MODE
            set C_LAYER_3_OFFSET [ipgui::add_param $ipview -parent $tabgroup18 -name C_LAYER_3_OFFSET]
                set_property tooltip {Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.} $C_LAYER_3_OFFSET
            set C_BUFFER_3_OFFSET [ipgui::add_param $ipview -parent $tabgroup18 -name C_BUFFER_3_OFFSET]
                set_property tooltip {Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.} $C_BUFFER_3_OFFSET
        set tabgroup19 [ipgui::add_group $ipview -parent $Page5 -name {Layer4 Configuration} -layout vertical]
            set C_LAYER_4_TYPE [ipgui::add_param $ipview -parent $tabgroup19 -widget comboBox -name C_LAYER_4_TYPE]
                set_property tooltip {Select between RGB or YCbCr layer.} $C_LAYER_4_TYPE
            set C_LAYER_4_DATA_WIDTH [ipgui::add_param $ipview -parent $tabgroup19 -widget comboBox -name C_LAYER_4_DATA_WIDTH]
                set_property tooltip {Select  between 8, 16 or 24 data bits per pixel. For RGB layer, 24 represents an RGB 888 format, 16 represents RGB 565 format, while 8 can represent either RGB 332 or CLUT format, depending on layer alpha mode selection. For YCbCr layer, 24 represents an YCbCr 888 (4:4:4) format and 16 represents an YCb YCr 88 88 (4:2:2) format.} $C_LAYER_4_DATA_WIDTH
            set C_LAYER_4_ALPHA_MODE [ipgui::add_param $ipview -parent $tabgroup19 -widget comboBox -name C_LAYER_4_ALPHA_MODE]
                set_property tooltip {Select between layer alpha, pixel alpha or CLUT alpha blending mode.} $C_LAYER_4_ALPHA_MODE
            set C_LAYER_4_OFFSET [ipgui::add_param $ipview -parent $tabgroup19 -name C_LAYER_4_OFFSET]
                set_property tooltip {Layer address offset from video memory base address represented in number of lines where each line can have different  size. For example, 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024, 4 KB for 24 bpp layer and C_ROW_STRIDE  = 1024.} $C_LAYER_4_OFFSET
            set C_BUFFER_4_OFFSET [ipgui::add_param $ipview -parent $tabgroup19 -name C_BUFFER_4_OFFSET]
                set_property tooltip {Double buffer address offset relative to layer address offset represented in number of lines where each line can have different size. For example 1 KB for 8 bpp and C_ROW_STRIDE = 1024, 2 KB for 16 bpp and C_ROW_STRIDE = 1024 and 4 KB for 24 bpp layer and C_ROW_STRIDE = 1024. Triple buffer address offset is defined as double the double buffer offset.} $C_BUFFER_4_OFFSET
}

proc C_IP_LICENSE_TYPE_updated {ipview} {
	# Procedure called when C_IP_LICENSE_TYPE is updated
	return true
}

proc validate_C_IP_LICENSE_TYPE {ipview} {
	# Procedure called to validate C_IP_LICENSE_TYPE
	return true
}

proc C_IP_MAJOR_REVISION_updated {ipview} {
	# Procedure called when C_IP_MAJOR_REVISION is updated
	return true
}

proc validate_C_IP_MAJOR_REVISION {ipview} {
	# Procedure called to validate C_IP_MAJOR_REVISION
	return true
}

proc C_IP_MINOR_REVISION_updated {ipview} {
	# Procedure called when C_IP_MINOR_REVISION is updated
	return true
}

proc validate_C_IP_MINOR_REVISION {ipview} {
	# Procedure called to validate C_IP_MINOR_REVISION
	return true
}

proc C_IP_PATCH_LEVEL_updated {ipview} {
	# Procedure called when C_IP_PATCH_LEVEL is updated
	return true
}

proc validate_C_IP_PATCH_LEVEL {ipview} {
	# Procedure called to validate C_IP_PATCH_LEVEL
	return true
}

proc C_IP_LICENSE_CHECK_updated {ipview} {
	# Procedure called when C_IP_LICENSE_CHECK is updated
	return true
}

proc validate_C_IP_LICENSE_CHECK {ipview} {
	# Procedure called to validate C_IP_LICENSE_CHECK
	return true
}

proc C_IP_TIME_BEFORE_BREAK_updated {ipview} {
	# Procedure called when C_IP_TIME_BEFORE_BREAK is updated
	return true
}

proc validate_C_IP_TIME_BEFORE_BREAK {ipview} {
	# Procedure called to validate C_IP_TIME_BEFORE_BREAK
	return true
}

proc C_REGS_INTERFACE_updated {ipview} {
	# Procedure called when C_REGS_INTERFACE is updated
	return true
}

proc validate_C_REGS_INTERFACE {ipview} {
	# Procedure called to validate C_REGS_INTERFACE
	return true
}

proc C_READABLE_REGS_updated {ipview} {
	# Procedure called when C_READABLE_REGS is updated
	return true
}

proc validate_C_READABLE_REGS {ipview} {
	# Procedure called to validate C_READABLE_REGS
	return true
}

proc C_REG_BYTE_SWAP_updated {ipview} {
	# Procedure called when C_REG_BYTE_SWAP is updated
	return true
}

proc validate_C_REG_BYTE_SWAP {ipview} {
	# Procedure called to validate C_REG_BYTE_SWAP
	return true
}

proc C_REGS_BASEADDR_updated {ipview} {
	# Procedure called when C_REGS_BASEADDR is updated
	return true
}

proc validate_C_REGS_BASEADDR {ipview} {
	# Procedure called to validate C_REGS_BASEADDR
	return true
}

proc C_REGS_HIGHADDR_updated {ipview} {
	# Procedure called when C_REGS_HIGHADDR is updated
	return true
}

proc validate_C_REGS_HIGHADDR {ipview} {
	# Procedure called to validate C_REGS_HIGHADDR
	return true
}

proc C_OPB_AWIDTH_updated {ipview} {
	# Procedure called when C_OPB_AWIDTH is updated
	return true
}

proc validate_C_OPB_AWIDTH {ipview} {
	# Procedure called to validate C_OPB_AWIDTH
	return true
}

proc C_OPB_DWIDTH_updated {ipview} {
	# Procedure called when C_OPB_DWIDTH is updated
	return true
}

proc validate_C_OPB_DWIDTH {ipview} {
	# Procedure called to validate C_OPB_DWIDTH
	return true
}

proc C_SPLB_NUM_MASTERS_updated {ipview} {
	# Procedure called when C_SPLB_NUM_MASTERS is updated
	return true
}

proc validate_C_SPLB_NUM_MASTERS {ipview} {
	# Procedure called to validate C_SPLB_NUM_MASTERS
	return true
}

proc C_SPLB_MID_WIDTH_updated {ipview} {
	# Procedure called when C_SPLB_MID_WIDTH is updated
	return true
}

proc validate_C_SPLB_MID_WIDTH {ipview} {
	# Procedure called to validate C_SPLB_MID_WIDTH
	return true
}

proc C_SPLB_AWIDTH_updated {ipview} {
	# Procedure called when C_SPLB_AWIDTH is updated
	return true
}

proc validate_C_SPLB_AWIDTH {ipview} {
	# Procedure called to validate C_SPLB_AWIDTH
	return true
}

proc C_SPLB_DWIDTH_updated {ipview} {
	# Procedure called when C_SPLB_DWIDTH is updated
	return true
}

proc validate_C_SPLB_DWIDTH {ipview} {
	# Procedure called to validate C_SPLB_DWIDTH
	return true
}

proc C_SPLB_NATIVE_DWIDTH_updated {ipview} {
	# Procedure called when C_SPLB_NATIVE_DWIDTH is updated
	return true
}

proc validate_C_SPLB_NATIVE_DWIDTH {ipview} {
	# Procedure called to validate C_SPLB_NATIVE_DWIDTH
	return true
}

proc C_S_AXI_ADDR_WIDTH_updated {ipview} {
	# Procedure called when C_S_AXI_ADDR_WIDTH is updated
	return true
}

proc validate_C_S_AXI_ADDR_WIDTH {ipview} {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc C_S_AXI_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_S_AXI_DATA_WIDTH is updated
	return true
}

proc validate_C_S_AXI_DATA_WIDTH {ipview} {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc C_VMEM_INTERFACE_updated {ipview} {
	# Procedure called when C_VMEM_INTERFACE is updated
	return true
}

proc validate_C_VMEM_INTERFACE {ipview} {
	# Procedure called to validate C_VMEM_INTERFACE
	return true
}

proc C_VMEM_BASEADDR_updated {ipview} {
	# Procedure called when C_VMEM_BASEADDR is updated
	return true
}

proc validate_C_VMEM_BASEADDR {ipview} {
	# Procedure called to validate C_VMEM_BASEADDR
	return true
}

proc C_VMEM_HIGHADDR_updated {ipview} {
	# Procedure called when C_VMEM_HIGHADDR is updated
	return true
}

proc validate_C_VMEM_HIGHADDR {ipview} {
	# Procedure called to validate C_VMEM_HIGHADDR
	return true
}

proc C_MEM_BURST_updated {ipview} {
	# Procedure called when C_MEM_BURST is updated
	return true
}

proc validate_C_MEM_BURST {ipview} {
	# Procedure called to validate C_MEM_BURST
	return true
}

proc C_MEM_BYTE_SWAP_updated {ipview} {
	# Procedure called when C_MEM_BYTE_SWAP is updated
	return true
}

proc validate_C_MEM_BYTE_SWAP {ipview} {
	# Procedure called to validate C_MEM_BYTE_SWAP
	return true
}

proc C_MEM_LITTLE_ENDIAN_updated {ipview} {
	# Procedure called when C_MEM_LITTLE_ENDIAN is updated
	return true
}

proc validate_C_MEM_LITTLE_ENDIAN {ipview} {
	# Procedure called to validate C_MEM_LITTLE_ENDIAN
	return true
}

proc C_MPLB_NUM_MASTERS_updated {ipview} {
	# Procedure called when C_MPLB_NUM_MASTERS is updated
	return true
}

proc validate_C_MPLB_NUM_MASTERS {ipview} {
	# Procedure called to validate C_MPLB_NUM_MASTERS
	return true
}

proc C_MPLB_AWIDTH_updated {ipview} {
	# Procedure called when C_MPLB_AWIDTH is updated
	return true
}

proc validate_C_MPLB_AWIDTH {ipview} {
	# Procedure called to validate C_MPLB_AWIDTH
	return true
}

proc C_MPLB_DWIDTH_updated {ipview} {
	# Procedure called when C_MPLB_DWIDTH is updated
	return true
}

proc validate_C_MPLB_DWIDTH {ipview} {
	# Procedure called to validate C_MPLB_DWIDTH
	return true
}

proc C_MPLB_PRIORITY_updated {ipview} {
	# Procedure called when C_MPLB_PRIORITY is updated
	return true
}

proc validate_C_MPLB_PRIORITY {ipview} {
	# Procedure called to validate C_MPLB_PRIORITY
	return true
}

proc C_MPLB_SMALLEST_SLAVE_updated {ipview} {
	# Procedure called when C_MPLB_SMALLEST_SLAVE is updated
	return true
}

proc validate_C_MPLB_SMALLEST_SLAVE {ipview} {
	# Procedure called to validate C_MPLB_SMALLEST_SLAVE
	return true
}

proc C_XMB_DATA_BUS_WIDTH_updated {ipview} {
	# Procedure called when C_XMB_DATA_BUS_WIDTH is updated
	return true
}

proc validate_C_XMB_DATA_BUS_WIDTH {ipview} {
	# Procedure called to validate C_XMB_DATA_BUS_WIDTH
	return true
}

proc C_M_AXI_THREAD_ID_WIDTH_updated {ipview} {
	# Procedure called when C_M_AXI_THREAD_ID_WIDTH is updated
	return true
}

proc validate_C_M_AXI_THREAD_ID_WIDTH {ipview} {
	# Procedure called to validate C_M_AXI_THREAD_ID_WIDTH
	return true
}

proc C_M_AXI_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_M_AXI_DATA_WIDTH is updated
	return true
}

proc validate_C_M_AXI_DATA_WIDTH {ipview} {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc C_M_AXI_ADDR_WIDTH_updated {ipview} {
	# Procedure called when C_M_AXI_ADDR_WIDTH is updated
	return true
}

proc validate_C_M_AXI_ADDR_WIDTH {ipview} {
	# Procedure called to validate C_M_AXI_ADDR_WIDTH
	return true
}

proc C_USE_E_PARALLEL_INPUT_updated {ipview} {
	# Procedure called when C_USE_E_PARALLEL_INPUT is updated
	return true
}

proc validate_C_USE_E_PARALLEL_INPUT {ipview} {
	# Procedure called to validate C_USE_E_PARALLEL_INPUT
	return true
}

proc C_USE_E_VCLK_BUFGMUX_updated {ipview} {
	# Procedure called when C_USE_E_VCLK_BUFGMUX is updated
	return true
}

proc validate_C_USE_E_VCLK_BUFGMUX {ipview} {
	# Procedure called to validate C_USE_E_VCLK_BUFGMUX
	return true
}

proc C_E_LAYER_updated {ipview} {
	# Procedure called when C_E_LAYER is updated
	return true
}

proc validate_C_E_LAYER {ipview} {
	# Procedure called to validate C_E_LAYER
	return true
}

proc C_E_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_E_DATA_WIDTH is updated
	return true
}

proc validate_C_E_DATA_WIDTH {ipview} {
	# Procedure called to validate C_E_DATA_WIDTH
	return true
}

proc C_INCREASE_FIFO_updated {ipview} {
	# Procedure called when C_INCREASE_FIFO is updated
	return true
}

proc validate_C_INCREASE_FIFO {ipview} {
	# Procedure called to validate C_INCREASE_FIFO
	return true
}

proc C_PIXEL_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_PIXEL_DATA_WIDTH is updated
	return true
}

proc validate_C_PIXEL_DATA_WIDTH {ipview} {
	# Procedure called to validate C_PIXEL_DATA_WIDTH
	return true
}

proc C_USE_VCLK2_updated {ipview} {
	# Procedure called when C_USE_VCLK2 is updated
	return true
}

proc validate_C_USE_VCLK2 {ipview} {
	# Procedure called to validate C_USE_VCLK2
	return true
}

proc C_ROW_STRIDE_updated {ipview} {
	# Procedure called when C_ROW_STRIDE is updated
	return true
}

proc validate_C_ROW_STRIDE {ipview} {
	# Procedure called to validate C_ROW_STRIDE
	return true
}

proc C_XCOLOR_updated {ipview} {
	# Procedure called when C_XCOLOR is updated
	return true
}

proc validate_C_XCOLOR {ipview} {
	# Procedure called to validate C_XCOLOR
	return true
}

proc C_USE_SIZE_POSITION_updated {ipview} {
	# Procedure called when C_USE_SIZE_POSITION is updated
	return true
}

proc validate_C_USE_SIZE_POSITION {ipview} {
	# Procedure called to validate C_USE_SIZE_POSITION
	return true
}

proc C_DISPLAY_INTERFACE_updated {ipview} {
	# Procedure called when C_DISPLAY_INTERFACE is updated
	return true
}

proc validate_C_DISPLAY_INTERFACE {ipview} {
	# Procedure called to validate C_DISPLAY_INTERFACE
	return true
}

proc C_DISPLAY_COLOR_SPACE_updated {ipview} {
	# Procedure called when C_DISPLAY_COLOR_SPACE is updated
	return true
}

proc validate_C_DISPLAY_COLOR_SPACE {ipview} {
	# Procedure called to validate C_DISPLAY_COLOR_SPACE
	return true
}

proc C_LVDS_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_LVDS_DATA_WIDTH is updated
	return true
}

proc validate_C_LVDS_DATA_WIDTH {ipview} {
	# Procedure called to validate C_LVDS_DATA_WIDTH
	return true
}

proc C_VCLK_PERIOD_updated {ipview} {
	# Procedure called when C_VCLK_PERIOD is updated
	return true
}

proc validate_C_VCLK_PERIOD {ipview} {
	# Procedure called to validate C_VCLK_PERIOD
	return true
}

proc C_NUM_OF_LAYERS_updated {ipview} {
	# Procedure called when C_NUM_OF_LAYERS is updated
	return true
}

proc validate_C_NUM_OF_LAYERS {ipview} {
	# Procedure called to validate C_NUM_OF_LAYERS
	return true
}

proc C_USE_BACKGROUND_updated {ipview} {
	# Procedure called when C_USE_BACKGROUND is updated
	return true
}

proc validate_C_USE_BACKGROUND {ipview} {
	# Procedure called to validate C_USE_BACKGROUND
	return true
}

proc C_USE_XTREME_DSP_updated {ipview} {
	# Procedure called when C_USE_XTREME_DSP is updated
	return true
}

proc validate_C_USE_XTREME_DSP {ipview} {
	# Procedure called to validate C_USE_XTREME_DSP
	return true
}

proc C_USE_MULTIPLIER_updated {ipview} {
	# Procedure called when C_USE_MULTIPLIER is updated
	return true
}

proc validate_C_USE_MULTIPLIER {ipview} {
	# Procedure called to validate C_USE_MULTIPLIER
	return true
}

proc C_LAYER_0_TYPE_updated {ipview} {
	# Procedure called when C_LAYER_0_TYPE is updated
	return true
}

proc validate_C_LAYER_0_TYPE {ipview} {
	# Procedure called to validate C_LAYER_0_TYPE
	return true
}

proc C_LAYER_1_TYPE_updated {ipview} {
	# Procedure called when C_LAYER_1_TYPE is updated
	return true
}

proc validate_C_LAYER_1_TYPE {ipview} {
	# Procedure called to validate C_LAYER_1_TYPE
	return true
}

proc C_LAYER_2_TYPE_updated {ipview} {
	# Procedure called when C_LAYER_2_TYPE is updated
	return true
}

proc validate_C_LAYER_2_TYPE {ipview} {
	# Procedure called to validate C_LAYER_2_TYPE
	return true
}

proc C_LAYER_3_TYPE_updated {ipview} {
	# Procedure called when C_LAYER_3_TYPE is updated
	return true
}

proc validate_C_LAYER_3_TYPE {ipview} {
	# Procedure called to validate C_LAYER_3_TYPE
	return true
}

proc C_LAYER_4_TYPE_updated {ipview} {
	# Procedure called when C_LAYER_4_TYPE is updated
	return true
}

proc validate_C_LAYER_4_TYPE {ipview} {
	# Procedure called to validate C_LAYER_4_TYPE
	return true
}

proc C_LAYER_0_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_LAYER_0_DATA_WIDTH is updated
	return true
}

proc validate_C_LAYER_0_DATA_WIDTH {ipview} {
	# Procedure called to validate C_LAYER_0_DATA_WIDTH
	return true
}

proc C_LAYER_1_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_LAYER_1_DATA_WIDTH is updated
	return true
}

proc validate_C_LAYER_1_DATA_WIDTH {ipview} {
	# Procedure called to validate C_LAYER_1_DATA_WIDTH
	return true
}

proc C_LAYER_2_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_LAYER_2_DATA_WIDTH is updated
	return true
}

proc validate_C_LAYER_2_DATA_WIDTH {ipview} {
	# Procedure called to validate C_LAYER_2_DATA_WIDTH
	return true
}

proc C_LAYER_3_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_LAYER_3_DATA_WIDTH is updated
	return true
}

proc validate_C_LAYER_3_DATA_WIDTH {ipview} {
	# Procedure called to validate C_LAYER_3_DATA_WIDTH
	return true
}

proc C_LAYER_4_DATA_WIDTH_updated {ipview} {
	# Procedure called when C_LAYER_4_DATA_WIDTH is updated
	return true
}

proc validate_C_LAYER_4_DATA_WIDTH {ipview} {
	# Procedure called to validate C_LAYER_4_DATA_WIDTH
	return true
}

proc C_LAYER_0_ALPHA_MODE_updated {ipview} {
	# Procedure called when C_LAYER_0_ALPHA_MODE is updated
	return true
}

proc validate_C_LAYER_0_ALPHA_MODE {ipview} {
	# Procedure called to validate C_LAYER_0_ALPHA_MODE
	return true
}

proc C_LAYER_1_ALPHA_MODE_updated {ipview} {
	# Procedure called when C_LAYER_1_ALPHA_MODE is updated
	return true
}

proc validate_C_LAYER_1_ALPHA_MODE {ipview} {
	# Procedure called to validate C_LAYER_1_ALPHA_MODE
	return true
}

proc C_LAYER_2_ALPHA_MODE_updated {ipview} {
	# Procedure called when C_LAYER_2_ALPHA_MODE is updated
	return true
}

proc validate_C_LAYER_2_ALPHA_MODE {ipview} {
	# Procedure called to validate C_LAYER_2_ALPHA_MODE
	return true
}

proc C_LAYER_3_ALPHA_MODE_updated {ipview} {
	# Procedure called when C_LAYER_3_ALPHA_MODE is updated
	return true
}

proc validate_C_LAYER_3_ALPHA_MODE {ipview} {
	# Procedure called to validate C_LAYER_3_ALPHA_MODE
	return true
}

proc C_LAYER_4_ALPHA_MODE_updated {ipview} {
	# Procedure called when C_LAYER_4_ALPHA_MODE is updated
	return true
}

proc validate_C_LAYER_4_ALPHA_MODE {ipview} {
	# Procedure called to validate C_LAYER_4_ALPHA_MODE
	return true
}

proc C_LAYER_0_OFFSET_updated {ipview} {
	# Procedure called when C_LAYER_0_OFFSET is updated
	return true
}

proc validate_C_LAYER_0_OFFSET {ipview} {
	# Procedure called to validate C_LAYER_0_OFFSET
	return true
}

proc C_LAYER_1_OFFSET_updated {ipview} {
	# Procedure called when C_LAYER_1_OFFSET is updated
	return true
}

proc validate_C_LAYER_1_OFFSET {ipview} {
	# Procedure called to validate C_LAYER_1_OFFSET
	return true
}

proc C_LAYER_2_OFFSET_updated {ipview} {
	# Procedure called when C_LAYER_2_OFFSET is updated
	return true
}

proc validate_C_LAYER_2_OFFSET {ipview} {
	# Procedure called to validate C_LAYER_2_OFFSET
	return true
}

proc C_LAYER_3_OFFSET_updated {ipview} {
	# Procedure called when C_LAYER_3_OFFSET is updated
	return true
}

proc validate_C_LAYER_3_OFFSET {ipview} {
	# Procedure called to validate C_LAYER_3_OFFSET
	return true
}

proc C_LAYER_4_OFFSET_updated {ipview} {
	# Procedure called when C_LAYER_4_OFFSET is updated
	return true
}

proc validate_C_LAYER_4_OFFSET {ipview} {
	# Procedure called to validate C_LAYER_4_OFFSET
	return true
}

proc C_BUFFER_0_OFFSET_updated {ipview} {
	# Procedure called when C_BUFFER_0_OFFSET is updated
	return true
}

proc validate_C_BUFFER_0_OFFSET {ipview} {
	# Procedure called to validate C_BUFFER_0_OFFSET
	return true
}

proc C_BUFFER_1_OFFSET_updated {ipview} {
	# Procedure called when C_BUFFER_1_OFFSET is updated
	return true
}

proc validate_C_BUFFER_1_OFFSET {ipview} {
	# Procedure called to validate C_BUFFER_1_OFFSET
	return true
}

proc C_BUFFER_2_OFFSET_updated {ipview} {
	# Procedure called when C_BUFFER_2_OFFSET is updated
	return true
}

proc validate_C_BUFFER_2_OFFSET {ipview} {
	# Procedure called to validate C_BUFFER_2_OFFSET
	return true
}

proc C_BUFFER_3_OFFSET_updated {ipview} {
	# Procedure called when C_BUFFER_3_OFFSET is updated
	return true
}

proc validate_C_BUFFER_3_OFFSET {ipview} {
	# Procedure called to validate C_BUFFER_3_OFFSET
	return true
}

proc C_BUFFER_4_OFFSET_updated {ipview} {
	# Procedure called when C_BUFFER_4_OFFSET is updated
	return true
}

proc validate_C_BUFFER_4_OFFSET {ipview} {
	# Procedure called to validate C_BUFFER_4_OFFSET
	return true
}

proc C_DVI_CLK_MODE_updated {ipview} {
	# Procedure called when C_DVI_CLK_MODE is updated
	return true
}

proc validate_C_DVI_CLK_MODE {ipview} {
	# Procedure called to validate C_DVI_CLK_MODE
	return true
}

proc updateModel_C_FAMILY {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	variable c_family
	set_property modelparam_value $c_family [ipgui::get_modelparamspec C_FAMILY -of $ipview]
	return true
}

proc updateModel_C_IP_LICENSE_TYPE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_IP_LICENSE_TYPE -of $ipview ]] [ipgui::get_modelparamspec C_IP_LICENSE_TYPE -of $ipview ]

	return true
}

proc updateModel_C_IP_MAJOR_REVISION {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_IP_MAJOR_REVISION -of $ipview ]] [ipgui::get_modelparamspec C_IP_MAJOR_REVISION -of $ipview ]

	return true
}

proc updateModel_C_IP_MINOR_REVISION {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_IP_MINOR_REVISION -of $ipview ]] [ipgui::get_modelparamspec C_IP_MINOR_REVISION -of $ipview ]

	return true
}

proc updateModel_C_IP_PATCH_LEVEL {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_IP_PATCH_LEVEL -of $ipview ]] [ipgui::get_modelparamspec C_IP_PATCH_LEVEL -of $ipview ]

	return true
}

proc updateModel_C_IP_LICENSE_CHECK {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_IP_LICENSE_CHECK -of $ipview ]] [ipgui::get_modelparamspec C_IP_LICENSE_CHECK -of $ipview ]

	return true
}

proc updateModel_C_IP_TIME_BEFORE_BREAK {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_IP_TIME_BEFORE_BREAK -of $ipview ]] [ipgui::get_modelparamspec C_IP_TIME_BEFORE_BREAK -of $ipview ]

	return true
}

proc updateModel_C_VMEM_INTERFACE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_VMEM_INTERFACE -of $ipview ]] [ipgui::get_modelparamspec C_VMEM_INTERFACE -of $ipview ]

	return true
}

proc updateModel_C_VMEM_BASEADDR {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_VMEM_BASEADDR -of $ipview ]] [ipgui::get_modelparamspec C_VMEM_BASEADDR -of $ipview ]

	return true
}

proc updateModel_C_VMEM_HIGHADDR {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_VMEM_HIGHADDR -of $ipview ]] [ipgui::get_modelparamspec C_VMEM_HIGHADDR -of $ipview ]

	return true
}

proc updateModel_C_MEM_BURST {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MEM_BURST -of $ipview ]] [ipgui::get_modelparamspec C_MEM_BURST -of $ipview ]

	return true
}

proc updateModel_C_MEM_BYTE_SWAP {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MEM_BYTE_SWAP -of $ipview ]] [ipgui::get_modelparamspec C_MEM_BYTE_SWAP -of $ipview ]

	return true
}

proc updateModel_C_MEM_LITTLE_ENDIAN {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	
	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MEM_LITTLE_ENDIAN -of $ipview ]] [ipgui::get_modelparamspec C_MEM_LITTLE_ENDIAN -of $ipview ]

	return true
}

proc updateModel_C_INCREASE_FIFO {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_INCREASE_FIFO -of $ipview ]] [ipgui::get_modelparamspec C_INCREASE_FIFO -of $ipview ]

	return true
}

proc updateModel_C_MPLB_NUM_MASTERS {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MPLB_NUM_MASTERS -of $ipview ]] [ipgui::get_modelparamspec C_MPLB_NUM_MASTERS -of $ipview ]

	return true
}

proc updateModel_C_MPLB_AWIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MPLB_AWIDTH -of $ipview ]] [ipgui::get_modelparamspec C_MPLB_AWIDTH -of $ipview ]

	return true
}

proc updateModel_C_MPLB_DWIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MPLB_DWIDTH -of $ipview ]] [ipgui::get_modelparamspec C_MPLB_DWIDTH -of $ipview ]

	return true
}

proc updateModel_C_MPLB_PRIORITY {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MPLB_PRIORITY -of $ipview ]] [ipgui::get_modelparamspec C_MPLB_PRIORITY -of $ipview ]

	return true
}

proc updateModel_C_MPLB_SMALLEST_SLAVE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MPLB_SMALLEST_SLAVE -of $ipview ]] [ipgui::get_modelparamspec C_MPLB_SMALLEST_SLAVE -of $ipview ]

	return true
}

proc updateModel_C_XMB_DATA_BUS_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_XMB_DATA_BUS_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_XMB_DATA_BUS_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_M_AXI_THREAD_ID_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_M_AXI_THREAD_ID_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_M_AXI_THREAD_ID_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_M_AXI_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_M_AXI_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_M_AXI_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_M_AXI_ADDR_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_M_AXI_ADDR_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_M_AXI_ADDR_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_REGS_INTERFACE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_REGS_INTERFACE -of $ipview ]] [ipgui::get_modelparamspec C_REGS_INTERFACE -of $ipview ]

	return true
}

proc updateModel_C_READABLE_REGS {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_READABLE_REGS -of $ipview ]] [ipgui::get_modelparamspec C_READABLE_REGS -of $ipview ]

	return true
}

proc updateModel_C_REG_BYTE_SWAP {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_REG_BYTE_SWAP -of $ipview ]] [ipgui::get_modelparamspec C_REG_BYTE_SWAP -of $ipview ]

	return true
}

proc updateModel_C_REGS_BASEADDR {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_REGS_BASEADDR -of $ipview ]] [ipgui::get_modelparamspec C_REGS_BASEADDR -of $ipview ]

	return true
}

proc updateModel_C_REGS_HIGHADDR {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_REGS_HIGHADDR -of $ipview ]] [ipgui::get_modelparamspec C_REGS_HIGHADDR -of $ipview ]

	return true
}

proc updateModel_C_OPB_AWIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_OPB_AWIDTH -of $ipview ]] [ipgui::get_modelparamspec C_OPB_AWIDTH -of $ipview ]

	return true
}

proc updateModel_C_OPB_DWIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_OPB_DWIDTH -of $ipview ]] [ipgui::get_modelparamspec C_OPB_DWIDTH -of $ipview ]

	return true
}

proc updateModel_C_SPLB_NUM_MASTERS {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_SPLB_NUM_MASTERS -of $ipview ]] [ipgui::get_modelparamspec C_SPLB_NUM_MASTERS -of $ipview ]

	return true
}

proc updateModel_C_SPLB_MID_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_SPLB_MID_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_SPLB_MID_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_SPLB_AWIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_SPLB_AWIDTH -of $ipview ]] [ipgui::get_modelparamspec C_SPLB_AWIDTH -of $ipview ]

	return true
}

proc updateModel_C_SPLB_DWIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_SPLB_DWIDTH -of $ipview ]] [ipgui::get_modelparamspec C_SPLB_DWIDTH -of $ipview ]

	return true
}

proc updateModel_C_SPLB_NATIVE_DWIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_SPLB_NATIVE_DWIDTH -of $ipview ]] [ipgui::get_modelparamspec C_SPLB_NATIVE_DWIDTH -of $ipview ]

	return true
}

proc updateModel_C_S_AXI_ADDR_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_S_AXI_ADDR_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_S_AXI_ADDR_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_S_AXI_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_S_AXI_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_S_AXI_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_PIXEL_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_PIXEL_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_PIXEL_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_USE_VCLK2 {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_VCLK2 -of $ipview ]] [ipgui::get_modelparamspec C_USE_VCLK2 -of $ipview ]

	return true
}

proc updateModel_C_ROW_STRIDE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_ROW_STRIDE -of $ipview ]] [ipgui::get_modelparamspec C_ROW_STRIDE -of $ipview ]

	return true
}

proc updateModel_C_XCOLOR {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_XCOLOR -of $ipview ]] [ipgui::get_modelparamspec C_XCOLOR -of $ipview ]

	return true
}

proc updateModel_C_USE_SIZE_POSITION {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_SIZE_POSITION -of $ipview ]] [ipgui::get_modelparamspec C_USE_SIZE_POSITION -of $ipview ]

	return true
}

proc updateModel_C_DISPLAY_INTERFACE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_DISPLAY_INTERFACE -of $ipview ]] [ipgui::get_modelparamspec C_DISPLAY_INTERFACE -of $ipview ]

	return true
}

proc updateModel_C_DISPLAY_COLOR_SPACE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_DISPLAY_COLOR_SPACE -of $ipview ]] [ipgui::get_modelparamspec C_DISPLAY_COLOR_SPACE -of $ipview ]

	return true
}

proc updateModel_C_LVDS_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LVDS_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_LVDS_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_VCLK_PERIOD {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_VCLK_PERIOD -of $ipview ]] [ipgui::get_modelparamspec C_VCLK_PERIOD -of $ipview ]

	return true
}

proc updateModel_C_NUM_OF_LAYERS {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_NUM_OF_LAYERS -of $ipview ]] [ipgui::get_modelparamspec C_NUM_OF_LAYERS -of $ipview ]

	return true
}

proc updateModel_C_LAYER_0_TYPE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_0_TYPE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_0_TYPE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_1_TYPE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_1_TYPE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_1_TYPE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_2_TYPE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_2_TYPE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_2_TYPE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_3_TYPE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_3_TYPE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_3_TYPE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_4_TYPE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_4_TYPE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_4_TYPE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_0_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_0_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_0_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_LAYER_1_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_1_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_1_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_LAYER_2_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_2_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_2_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_LAYER_3_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_3_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_3_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_LAYER_4_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_4_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_4_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_LAYER_0_ALPHA_MODE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_0_ALPHA_MODE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_0_ALPHA_MODE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_1_ALPHA_MODE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_1_ALPHA_MODE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_1_ALPHA_MODE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_2_ALPHA_MODE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_2_ALPHA_MODE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_2_ALPHA_MODE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_3_ALPHA_MODE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_3_ALPHA_MODE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_3_ALPHA_MODE -of $ipview ]

	return true
}

proc updateModel_C_LAYER_4_ALPHA_MODE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_4_ALPHA_MODE -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_4_ALPHA_MODE -of $ipview ]

	return true
}

proc updateModel_C_USE_BACKGROUND {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_BACKGROUND -of $ipview ]] [ipgui::get_modelparamspec C_USE_BACKGROUND -of $ipview ]

	return true
}

proc updateModel_C_USE_XTREME_DSP {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_XTREME_DSP -of $ipview ]] [ipgui::get_modelparamspec C_USE_XTREME_DSP -of $ipview ]

	return true
}

proc updateModel_C_USE_MULTIPLIER {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_MULTIPLIER -of $ipview ]] [ipgui::get_modelparamspec C_USE_MULTIPLIER -of $ipview ]

	return true
}

proc updateModel_C_LAYER_0_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_0_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_0_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_LAYER_1_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_1_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_1_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_LAYER_2_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_2_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_2_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_LAYER_3_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_3_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_3_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_LAYER_4_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_LAYER_4_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_LAYER_4_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_BUFFER_0_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_BUFFER_0_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_BUFFER_0_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_BUFFER_1_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_BUFFER_1_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_BUFFER_1_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_BUFFER_2_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_BUFFER_2_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_BUFFER_2_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_BUFFER_3_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_BUFFER_3_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_BUFFER_3_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_BUFFER_4_OFFSET {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_BUFFER_4_OFFSET -of $ipview ]] [ipgui::get_modelparamspec C_BUFFER_4_OFFSET -of $ipview ]

	return true
}

proc updateModel_C_USE_E_PARALLEL_INPUT {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_E_PARALLEL_INPUT -of $ipview ]] [ipgui::get_modelparamspec C_USE_E_PARALLEL_INPUT -of $ipview ]

	return true
}

proc updateModel_C_USE_E_VCLK_BUFGMUX {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_USE_E_VCLK_BUFGMUX -of $ipview ]] [ipgui::get_modelparamspec C_USE_E_VCLK_BUFGMUX -of $ipview ]

	return true
}

proc updateModel_C_E_LAYER {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_E_LAYER -of $ipview ]] [ipgui::get_modelparamspec C_E_LAYER -of $ipview ]

	return true
}

proc updateModel_C_E_DATA_WIDTH {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_E_DATA_WIDTH -of $ipview ]] [ipgui::get_modelparamspec C_E_DATA_WIDTH -of $ipview ]

	return true
}

proc updateModel_C_DVI_CLK_MODE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_DVI_CLK_MODE -of $ipview ]] [ipgui::get_modelparamspec C_DVI_CLK_MODE -of $ipview ]

	return true
}

