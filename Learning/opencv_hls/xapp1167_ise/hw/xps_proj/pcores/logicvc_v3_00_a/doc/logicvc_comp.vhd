
package logicbricks is

   -- START COMPONENT
   component logicvc is
      generic (
         -- Version generics
         C_IP_LICENSE_TYPE        : integer := 0; -- IP encryption type: 0 = source, 1 = evaluation, 2 = release, 3 = university evaluation
         C_IP_MAJOR_REVISION      : integer := 0; -- IP major revision: 0 - 31; vXX_yy_z
         C_IP_MINOR_REVISION      : integer := 0; -- IP minor revision: 0 - 31; vxx_YY_z
         C_IP_PATCH_LEVEL         : integer := 0; -- IP patch level: 0 - 25; vxx_yy_Z
         C_IP_LICENSE_CHECK       : integer := 0; -- IP license check: 0 = no, 1 = yes
         C_IP_TIME_BEFORE_BREAK   : integer := 0; -- IP time before break: 0 = infinite, 1 = 1h, 2 = 12h, 3 = 24h
         C_FAMILY                 : string  := "spartan6";
         -- Video memory generics
         C_VMEM_INTERFACE         : integer := 0;  -- Use PLB, XMB or AXI to access video memory:  0 - PLB, 1 - XMB, 2 - AXI
         C_VMEM_BASEADDR          : std_logic_vector := x"FFFFFFFF";
         C_VMEM_HIGHADDR          : std_logic_vector := x"00000000";
         C_MEM_BURST              : integer := 4;  -- Memory burst width; 4, 5 or 6. (4 means burst lasts 16 transfers), Used for XMB and AXI
         C_MEM_BYTE_SWAP          : integer := 0;  -- Memory access byte swap: 0 - Do not swap, 1 - Swap
         C_MEM_LITTLE_ENDIAN      : integer := 1;  -- Memory access endianness: 0 - Big endian, 1 - Little endian
         C_INCREASE_FIFO          : integer := 1;  -- FIFO size multiplication factor: 1=1x, 2=2x, 4=4x, 8=8x
         -- Master PLB generics
         C_MPLB_NUM_MASTERS       : integer := 8;
         C_MPLB_AWIDTH            : integer := 32;
         C_MPLB_DWIDTH            : integer := 64;
         C_MPLB_PRIORITY          : integer := 3;
         C_MPLB_SMALLEST_SLAVE    : integer := 32;
         -- XMB generics
         C_XMB_DATA_BUS_WIDTH     : integer := 64;  -- XMB Memory interface data bus width
         -- Master AXI generics
         C_M_AXI_THREAD_ID_WIDTH  : integer := 1;
         C_M_AXI_DATA_WIDTH       : integer := 64;
         C_M_AXI_ADDR_WIDTH       : integer := 32;
         -- Registers generics
         C_REGS_INTERFACE         : integer := 0;  -- Use OPB, PLB or AXI interface for registers: 0 - OPB, 1 - PLB, 2 - AXI
         C_READABLE_REGS          : integer := 1;  -- Are logiCVC registers readable?: 0 - no, 1 - yes
         C_REG_BYTE_SWAP          : integer := 0;  -- Registers access byte swap: 0 - Do not swap, 1 - Swap
         -- OPB generics
         C_REGS_BASEADDR          : std_logic_vector := x"FFFFFFFF";
         C_REGS_HIGHADDR          : std_logic_vector := x"00000000";
         C_OPB_AWIDTH             : integer := 32;
         C_OPB_DWIDTH             : integer := 32;
         -- Slave PLB generics
         C_SPLB_NUM_MASTERS       : integer := 8;
         C_SPLB_MID_WIDTH         : integer := 1;
         C_SPLB_AWIDTH            : integer := 32;
         C_SPLB_DWIDTH            : integer := 32;
         C_SPLB_NATIVE_DWIDTH     : integer := 32;
         -- AXI4-Lite Slave generics
         C_S_AXI_ADDR_WIDTH       : integer := 32;
         C_S_AXI_DATA_WIDTH       : integer := 32;
         -- Output format
         C_PIXEL_DATA_WIDTH       : integer := 24;  -- Output data width: 12, 15, 16, 18 or 24
         C_USE_VCLK2              : integer := 1;  -- pix_clk rising edge will be in the middle of the DDR RGB data eye or synchronous if not used
         C_ROW_STRIDE             : integer := 1024;  -- Row stride in number of pixels
         C_XCOLOR                 : integer := 0;
         C_USE_SIZE_POSITION      : integer := 0;  -- Use layer size, position and offset functionality: 0 - no, 1 - yes
         C_DISPLAY_INTERFACE      : integer := 0;  -- Select output interface type: 0 - parallel only, 1 - ITU656, 2 - LVDS 4bit, 3 - camera link, 4 - LVDS 3bit, 5 - DVI
         C_DISPLAY_COLOR_SPACE    : integer := 0;  -- Select output interface color space: 0 - RGB, 1 - YCbCr 4:2:2, 2 - YCbCr 4:4:4
         C_LVDS_DATA_WIDTH        : integer := 4;  -- 3 or 4
         C_VCLK_PERIOD            : integer := 25000;  -- vclk clock period in ps
         -- Multilayer generics
         C_NUM_OF_LAYERS          : positive := 3;  -- Number of logiCVC layers: 1, 2, 3, 4 or 5
         C_LAYER_0_TYPE           : integer := 0;  -- Layer 0 type: 0 - RGB, 1 - YCbCr
         C_LAYER_1_TYPE           : integer := 0;  -- Layer 0 type: 0 - RGB, 1 - YCbCr, 2 - Alpha
         C_LAYER_2_TYPE           : integer := 0;  -- Layer 0 type: 0 - RGB, 1 - YCbCr
         C_LAYER_3_TYPE           : integer := 0;  -- Layer 0 type: 0 - RGB, 1 - YCbCr, 2 - Alpha
         C_LAYER_4_TYPE           : integer := 0;  -- Layer 0 type: 0 - RGB, 1 - YCbCr
         C_LAYER_0_DATA_WIDTH     : positive := 16;   -- Layer 0 data width: 8, 16, 24 bit
         C_LAYER_1_DATA_WIDTH     : positive := 16;   -- Layer 1 data width: 8, 16, 24 bit
         C_LAYER_2_DATA_WIDTH     : positive := 16;   -- Layer 2 data width: 8, 16, 24 bit
         C_LAYER_3_DATA_WIDTH     : positive := 16;   -- Layer 3 data width: 8, 16, 24 bit
         C_LAYER_4_DATA_WIDTH     : positive := 16;   -- Layer 4 data width: 8, 16, 24 bit
         C_LAYER_0_ALPHA_MODE     : integer := 0;     -- Layer 0 alpha blending mode: 0 - layer, 1 - pixel, 2 - clut 16, 3 - clut 24
         C_LAYER_1_ALPHA_MODE     : integer := 0;  -- Layer 1 alpha blending mode: 0 - layer, 1 - pixel, 2 - clut 16, 3 - clut 24
         C_LAYER_2_ALPHA_MODE     : integer := 0;  -- Layer 2 alpha blending mode: 0 - layer, 1 - pixel, 2 - clut 16, 3 - clut 24
         C_LAYER_3_ALPHA_MODE     : integer := 0;  -- Layer 3 alpha blending mode: 0 - layer, 1 - pixel, 2 - clut 16, 3 - clut 24
         C_LAYER_4_ALPHA_MODE     : integer := 0;  -- Layer 4 alpha blending mode: 0 - layer, 1 - pixel, 2 - clut 16, 3 - clut 24
         C_USE_BACKGROUND         : integer := 0;     -- configure last layer as background: 0 - no, 1 - yes
         C_USE_XTREME_DSP         : integer := 2;     -- enable or disable use of DSP resources: 0 - no,  1 - yes,   2 - auto
         C_USE_MULTIPLIER         : integer := 2;     -- control way in which multipliers in blender are implemented: 0 - lut, 1 - block, 2 - auto
         C_LAYER_0_OFFSET         : natural := 0;     -- address offset for layer 0 in 2k steps for 16bpp and 1k steps for 8bpp
         C_LAYER_1_OFFSET         : natural := 2048;  -- address offset for layer 1 in 2k steps for 16bpp and 1k steps for 8bpp
         C_LAYER_2_OFFSET         : natural := 4096;  -- address offset for layer 2 in 2k steps for 16bpp and 1k steps for 8bpp
         C_LAYER_3_OFFSET         : natural := 6144;  -- address offset for layer 3 in 2k steps for 16bpp and 1k steps for 8bpp
         C_LAYER_4_OFFSET         : natural := 8192;  -- address offset for layer 4 in 2k steps for 16bpp and 1k steps for 8bpp
         C_BUFFER_0_OFFSET        : natural := 1024;  -- address offset for layer 0 double buffer relative to LAYER_0_OFFSET
         C_BUFFER_1_OFFSET        : natural := 1024;  -- address offset for layer 1 double buffer relative to LAYER_1_OFFSET
         C_BUFFER_2_OFFSET        : natural := 1024;  -- address offset for layer 2 double buffer relative to LAYER_2_OFFSET
         C_BUFFER_3_OFFSET        : natural := 1024;  -- address offset for layer 3 double buffer relative to LAYER_3_OFFSET
         C_BUFFER_4_OFFSET        : natural := 1024;  -- address offset for layer 4 double buffer relative to LAYER_4_OFFSET
         -- Extern parallel input generics
         C_USE_E_PARALLEL_INPUT   : integer := 0;   -- Syncronize logiCVC to external parallel input and use data as one layer: 0 - no, 1 - yes
         C_USE_E_VCLK_BUFGMUX     : integer := 1;   -- Use BUFGMUX for switching video clock to e_vclk, else use vclk
         C_E_LAYER                : integer := 0;   -- External parallel input layer: 0, 1, 2, 3, 4
         C_E_DATA_WIDTH           : integer := 24   -- External parallel input data width: 8, 16, 24 bit
      );
      port(
         rst                   : in  std_logic;  -- Global reset
         mclk                  : in  std_logic;  -- Memory clock
         vclk                  : in  std_logic;  -- Video clock
         vclk2                 : in  std_logic;  -- Video clock x2
         itu_clk_in            : in  std_logic;  -- It has to be 27 MHz and synchronous to vclk
         lvds_clk              : in  std_logic;  -- lvds clock is 3.5x video clock
         lvds_clkn             : in  std_logic;  -- Inverted lvds_clk
         -- Xylon Memory Bus (XMB)
         mem_req               : out std_logic;
         mem_wr                : out std_logic;
         mem_ack               : in  std_logic := '0';
         mem_addr              : out std_logic_vector(31 downto 0);
         mem_data              : out std_logic_vector(C_XMB_DATA_BUS_WIDTH - 1 downto 0);
         mem_data_be           : out std_logic_vector(C_XMB_DATA_BUS_WIDTH / 8 - 1 downto 0);
         mem_wrack             : in  std_logic := '0';
         mem_burst             : out std_logic_vector(C_MEM_BURST - 1 downto 0);
         mem_data_valid        : in std_logic := '0';
         mem_data_in           : in std_logic_vector(C_XMB_DATA_BUS_WIDTH - 1 downto 0) := (others => '0');
         -- PLB  --------------
         -- Master
         mplb_rst              : in  std_logic;
         plb_maddrack          : in  std_logic;
         plb_mrearbitrate      : in  std_logic;
         plb_mssize            : in  std_logic_vector(0 to 1);
         plb_mbusy             : in  std_logic;
         plb_mrderr            : in  std_logic;
         plb_mwrerr            : in  std_logic;
         plb_mtimeout          : in  std_logic;
         plb_mirq              : in  std_logic;
         m_request             : out std_logic;
         m_priority            : out std_logic_vector(0 to 1);
         m_buslock             : out std_logic;
         m_rnw                 : out std_logic;
         m_be                  : out std_logic_vector(0 to (C_MPLB_DWIDTH / 8) - 1);
         m_size                : out std_logic_vector(0 to 3);
         m_type                : out std_logic_vector(0 to 2);
         m_msize               : out std_logic_vector(0 to 1);
         m_tattribute          : out std_logic_vector(0 to 15);
         m_lockerr             : out std_logic;
         m_abort               : out std_logic;
         m_abus                : out std_logic_vector(0 to (C_MPLB_AWIDTH - 1));
         m_uabus               : out std_logic_vector(0 to (C_MPLB_AWIDTH - 1));
         plb_mwrdack           : in  std_logic;
         plb_mwrbterm          : in  std_logic;
         m_wrburst             : out std_logic;
         m_wrdbus              : out std_logic_vector(0 to (C_MPLB_DWIDTH - 1));
         plb_mrddack           : in  std_logic;
         plb_mrdbterm          : in  std_logic;
         plb_mrdwdaddr         : in  std_logic_vector(0 to 3);
         plb_mrddbus           : in  std_logic_vector(0 to (C_MPLB_DWIDTH - 1));
         m_rdburst             : out std_logic;
         -- AXI  --------------
         -- Master
         M_AXI_ARESETN         : in  std_logic;
         M_AXI_AWID            : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH - 1 downto 0);
         M_AXI_AWADDR          : out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
         M_AXI_AWLEN           : out std_logic_vector(7 downto 0);
         M_AXI_AWSIZE          : out std_logic_vector(2 downto 0);
         M_AXI_AWBURST         : out std_logic_vector(1 downto 0);
         M_AXI_AWLOCK          : out std_logic_vector(1 downto 0);
         M_AXI_AWCACHE         : out std_logic_vector(3 downto 0);
         M_AXI_AWPROT          : out std_logic_vector(2 downto 0);
         M_AXI_AWQOS           : out std_logic_vector(3 downto 0);
         M_AXI_AWVALID         : out std_logic;
         M_AXI_AWREADY         : in  std_logic;
         M_AXI_WDATA           : out std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
         M_AXI_WSTRB           : out std_logic_vector(C_M_AXI_DATA_WIDTH / 8 - 1 downto 0);
         M_AXI_WLAST           : out std_logic;
         M_AXI_WVALID          : out std_logic;
         M_AXI_WREADY          : in  std_logic;
         M_AXI_BID             : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH - 1 downto 0);
         M_AXI_BRESP           : in  std_logic_vector(1 downto 0);
         M_AXI_BVALID          : in  std_logic;
         M_AXI_BREADY          : out std_logic;
         M_AXI_ARID            : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH - 1 downto 0);
         M_AXI_ARADDR          : out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
         M_AXI_ARLEN           : out std_logic_vector(7 downto 0);
         M_AXI_ARSIZE          : out std_logic_vector(2 downto 0);
         M_AXI_ARBURST         : out std_logic_vector(1 downto 0);
         M_AXI_ARLOCK          : out std_logic_vector(1 downto 0);
         M_AXI_ARCACHE         : out std_logic_vector(3 downto 0);
         M_AXI_ARPROT          : out std_logic_vector(2 downto 0);
         M_AXI_ARQOS           : out std_logic_vector(3 downto 0);
         M_AXI_ARVALID         : out std_logic;
         M_AXI_ARREADY         : in  std_logic;
         M_AXI_RID             : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH - 1 downto 0);
         M_AXI_RDATA           : in  std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
         M_AXI_RRESP           : in  std_logic_vector(1 downto 0);
         M_AXI_RLAST           : in  std_logic;
         M_AXI_RVALID          : in  std_logic;
         M_AXI_RREADY          : out std_logic;
         ----------------------
         -- OPB  --------------
         -- Slave
         OPB_Clk               : in  std_logic;
         OPB_Rst               : in  std_logic;
         OPB_ABus              : in  std_logic_vector(0 to C_OPB_AWIDTH - 1);
         OPB_BE                : in  std_logic_vector(0 to C_OPB_DWIDTH / 8 - 1);
         OPB_RNW               : in  std_logic;
         OPB_select            : in  std_logic;
         OPB_seqAddr           : in  std_logic;
         OPB_DBus              : in  std_logic_vector(0 to C_OPB_DWIDTH - 1);
         Sl_DBus               : out std_logic_vector(0 to C_OPB_DWIDTH - 1);
         Sl_errAck             : out std_logic;
         Sl_retry              : out std_logic;
         Sl_toutSup            : out std_logic;
         Sl_xferAck            : out std_logic;
         ----------------------
         -- PLB  --------------
         -- Slave
         SPLB_Clk              : in  std_logic;
         SPLB_Rst              : in  std_logic;
         PLB_ABus              : in  std_logic_vector(0 to C_SPLB_AWIDTH - 1);
         PLB_UABus             : in  std_logic_vector(0 to C_SPLB_AWIDTH - 1);
         PLB_PAValid           : in  std_logic;
         PLB_SAValid           : in  std_logic;
         PLB_rdPrim            : in  std_logic;
         PLB_wrPrim            : in  std_logic;
         PLB_masterID          : in  std_logic_vector(0 to C_SPLB_MID_WIDTH - 1);
         PLB_abort             : in  std_logic;
         PLB_busLock           : in  std_logic;
         PLB_RNW               : in  std_logic;
         PLB_BE                : in  std_logic_vector(0 to C_SPLB_DWIDTH / 8 - 1);
         PLB_MSize             : in  std_logic_vector(0 to 1);
         PLB_size              : in  std_logic_vector(0 to 3);
         PLB_type              : in  std_logic_vector(0 to 2);
         PLB_tattribute        : in  std_logic_vector(0 to 15);
         PLB_lockErr           : in  std_logic;
         PLB_wrDBus            : in  std_logic_vector(0 to C_SPLB_DWIDTH - 1);
         PLB_wrBurst           : in  std_logic;
         PLB_rdBurst           : in  std_logic;
         PLB_rdPendReq         : in  std_logic;
         PLB_wrPendReq         : in  std_logic;
         PLB_rdPendPri         : in  std_logic_vector(0 to 1);
         PLB_wrPendPri         : in  std_logic_vector(0 to 1);
         PLB_reqPri            : in  std_logic_vector(0 to 1);
         Sl_addrAck            : out std_logic;
         Sl_SSize              : out std_logic_vector(0 to 1);
         Sl_wait               : out std_logic;
         Sl_rearbitrate        : out std_logic;
         Sl_wrDAck             : out std_logic;
         Sl_wrComp             : out std_logic;
         Sl_wrBTerm            : out std_logic;
         Sl_rdDBus             : out std_logic_vector(0 to C_SPLB_DWIDTH - 1);
         Sl_rdWdAddr           : out std_logic_vector(0 to 3);
         Sl_rdDAck             : out std_logic;
         Sl_rdComp             : out std_logic;
         Sl_rdBTerm            : out std_logic;
         Sl_MBusy              : out std_logic_vector(0 to C_SPLB_NUM_MASTERS - 1);
         Sl_MRdErr             : out std_logic_vector(0 to C_SPLB_NUM_MASTERS - 1);
         Sl_MWrErr             : out std_logic_vector(0 to C_SPLB_NUM_MASTERS - 1);
         Sl_MIRQ               : out std_logic_vector(0 to C_SPLB_NUM_MASTERS - 1);
         ----------------------
         -- AXI4-Lite  --------
         -- Slave
         S_AXI_ACLK            : in  std_logic;
         S_AXI_ARESETN         : in  std_logic;
         S_AXI_AWADDR          : in  std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
         S_AXI_AWVALID         : in  std_logic;
         S_AXI_AWREADY         : out std_logic;
         S_AXI_WDATA           : in  std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
         S_AXI_WSTRB           : in  std_logic_vector((C_S_AXI_DATA_WIDTH / 8) - 1 downto 0);
         S_AXI_WVALID          : in  std_logic;
         S_AXI_WREADY          : out std_logic;
         S_AXI_BRESP           : out std_logic_vector(1 downto 0);
         S_AXI_BVALID          : out std_logic;
         S_AXI_BREADY          : in  std_logic;
         S_AXI_ARADDR          : in  std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
         S_AXI_ARVALID         : in  std_logic;
         S_AXI_ARREADY         : out std_logic;
         S_AXI_RDATA           : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
         S_AXI_RRESP           : out std_logic_vector(1 downto 0);
         S_AXI_RVALID          : out std_logic;
         S_AXI_RREADY          : in  std_logic;
         ----------------------
         -- Video Outputs  --------------
         pix_clk_i             : in  std_logic;  -- Pixel clock
         pix_clk_o             : out std_logic;  -- Pixel clock
         pix_clk_t             : out std_logic;  -- Pixel clock
         pix_clk_n_i           : in  std_logic;  -- Pixel clock inverted
         pix_clk_n_o           : out std_logic;  -- Pixel clock inverted
         pix_clk_n_t           : out std_logic;  -- Pixel clock inverted
         d_pix_i               : in  std_logic_vector(C_PIXEL_DATA_WIDTH - 1 downto 0);  -- Pixel data bus
         d_pix_o               : out std_logic_vector(C_PIXEL_DATA_WIDTH - 1 downto 0);  -- Pixel data bus
         d_pix_t               : out std_logic;  -- Pixel data bus
         hsync_i               : in  std_logic;  -- Hsync
         hsync_o               : out std_logic;  -- Hsync
         hsync_t               : out std_logic;  -- Hsync
         vsync_i               : in  std_logic;  -- Vsync
         vsync_o               : out std_logic;  -- Vsync
         vsync_t               : out std_logic;  -- Vsync
         blank_i               : in  std_logic;  -- Blank
         blank_o               : out std_logic;  -- Blank
         blank_t               : out std_logic;  -- Blank
         itu656_clk_o          : out std_logic;                    -- ITU656 clock output
         itu656_data_o         : out std_logic_vector(7 downto 0); -- ITU656 data output
         lvds_data_out_p       : out std_logic_vector(C_LVDS_DATA_WIDTH - 1 downto 0); -- lvds data, positive
         lvds_data_out_n       : out std_logic_vector(C_LVDS_DATA_WIDTH - 1 downto 0); -- lvds data, negative
         lvds_clk_out_p        : out std_logic;                                        -- lvds clk, positive
         lvds_clk_out_n        : out std_logic;                                        -- lvds clk, negative
         pllvclk_locked        : in  std_logic;                                        -- PLL_BASE LOCKED (spartan6, LVDS clk gen)
         dvi_clk_p             : out std_logic;                    -- DVI clock, positive
         dvi_clk_n             : out std_logic;                    -- DVI clock, negative
         dvi_data_p            : out std_logic_vector(2 downto 0); -- DVI data, positive
         dvi_data_n            : out std_logic_vector(2 downto 0); -- DVI data, negative
         ----------------------
         -- External parallel input  --------------
         e_vclk                : in  std_logic;                                     -- External video clock
         e_vsync               : in  std_logic;                                     -- External vsync
         e_hsync               : in  std_logic;                                     -- External hsync
         e_blank               : in  std_logic;                                     -- External blank
         e_data                : in  std_logic_vector(C_E_DATA_WIDTH - 1 downto 0); -- External data
         e_video_present       : in  std_logic;                                     -- External video present flag
         ----------------------
         -- Other  --------------
         e_curr_vbuff          : in  std_logic_vector(C_NUM_OF_LAYERS * 2 - 1 downto 0);  -- Current external stream vbuffer
         e_next_vbuff          : out std_logic_vector(C_NUM_OF_LAYERS * 2 - 1 downto 0);  -- Next external stream vbuffer to write to
         e_sw_vbuff            : in  std_logic_vector(C_NUM_OF_LAYERS - 1 downto 0);      -- Switch video buffers from external source
         e_sw_grant            : out std_logic_vector(C_NUM_OF_LAYERS - 1 downto 0);      -- Video buffers switch req granted
         vcdivsel              : out std_logic_vector(1 downto 0);   -- vclk div select bits
         vclksel               : out std_logic_vector(2 downto 0);   -- vclk select bits
         en_vdd                : out std_logic; -- vdd enable
         en_blight             : out std_logic; -- backlight enable
         v_en                  : out std_logic; -- Enable display control/data signals
         en_vee                : out std_logic; -- vee enable
         interrupt             : out std_logic  -- logiCVC interrupt signal, level sensitive, high active
      );
   end component;

end logicbricks;
