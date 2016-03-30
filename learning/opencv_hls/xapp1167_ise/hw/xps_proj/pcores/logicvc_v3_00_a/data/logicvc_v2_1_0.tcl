###############################################################################
## This confidential and proprietary code may be used only as authorized
## by licensing agreement from Xylon d.o.o.
## In the event of publication, the following notice is applicable:
##
## Copyright 2011 - Xylon d.o.o.
## All rights reserved.
##
## The entire notice above must be reproduced on all authorized copies.
###############################################################################


###############################################################################
## IPLEVEL UPDATE
###############################################################################

proc update_lvds_dwidth { param_handle } {

    set retval  4

    set mhsinst [xget_hw_parent_handle $param_handle]
    set display_interface [xget_hw_parameter_value $mhsinst "C_DISPLAY_INTERFACE"]

    ## PARAMETER C_DISPLAY_INTERFACE = 0, DT = INTEGER, RANGE = (0,1,2,3,4,5), VALUES = (0=Parallel, 1=ITU656, 2=LVDS 4bit, 3=Camera link 4bit, 4=LVDS 3bit, 5=DVI), DESC = "Display interface"

    if {($display_interface == 4)} {
        set retval  3
    }

	return $retval

}

proc update_endian { param_handle } {

    set mhsinst [xget_hw_parent_handle $param_handle]
    set mem_interface_type   [xget_hw_parameter_value $mhsinst "C_VMEM_INTERFACE"]

    ## default is Little endian
    set retval 1

    if {$mem_interface_type == 0} {
        ## PLB - set to Big endian
        set retval 0
    }

	return $retval
}

proc iplevel_update_lvds_dwidth { param_handle } {

    set retval [update_lvds_dwidth $param_handle]

    return $retval
}

proc iplevel_update_endian { param_handle } {

    set retval [update_endian $param_handle]

    return $retval
}




###############################################################################
## IPLEVEL DRC
###############################################################################
proc check_iplevel_settings {mhsinst} {

    drc_pix_data_width $mhsinst
    drc_mem_burst $mhsinst
    drc_color_space $mhsinst
    drc_background $mhsinst
    drc_layer $mhsinst

}


###############################################################################
## Checks pixel data width setting
###############################################################################
proc drc_pix_data_width { mhsinst } {

    set display_interface [xget_hw_parameter_value $mhsinst "C_DISPLAY_INTERFACE"]
    set pixel_data_width [xget_hw_parameter_value $mhsinst "C_PIXEL_DATA_WIDTH"]
    set display_color_space [xget_hw_parameter_value $mhsinst "C_DISPLAY_COLOR_SPACE"]

    ## PARAMETER C_DISPLAY_COLOR_SPACE = 0, DT = INTEGER, RANGE = (0,1,2), VALUES = (0=RGB, 1=YCbCr 4:2:2, 2=YCbCr 4:4:4), DESC = "Display interface color space"
    ## if C_DISPLAY_COLOR_SPACE = 2 (YCbCr 4:4:4) then C_PIXEL_DATA_WIDTH is set to 24
    ## if C_DISPLAY_COLOR_SPACE = 1 (YCbCr 4:2:2) then C_PIXEL_DATA_WIDTH is set to 16

    if {($display_interface == 0)} {
        if {($display_color_space == 2 && $pixel_data_width != 24)} {
            error "When YCbCr 4:4:4 output color space is used (C_DISPLAY_COLOR_SPACE = 2), output pixel data width (C_PIXEL_DATA_WIDTH) value must be 24!"
        } elseif {($display_color_space == 1 && $pixel_data_width != 16)} {
            error "When YCbCr 4:2:2 output color space is used (C_DISPLAY_COLOR_SPACE = 1), output pixel data width (C_PIXEL_DATA_WIDTH) value must be 16!"
        }
    }

}

###############################################################################
## Checks memory burst width setting
###############################################################################
proc drc_mem_burst { mhsinst } {

    set mem_interface_type [xget_hw_parameter_value $mhsinst "C_VMEM_INTERFACE"]
    set mplb_native_dwidth [xget_hw_parameter_value $mhsinst "C_MPLB_NATIVE_DWIDTH"]
    set mem_burst [xget_hw_parameter_value $mhsinst "C_MEM_BURST"]

    if {$mem_interface_type == 0 && $mplb_native_dwidth == 32 && $mem_burst != 4} {
        ## if PLB memory interface with data_width 32 C_MEM_BURST must be 4 (16 transfers per burst)
        error "Number of transfers per burst (C_MEM_BURST) value when PLB interface is used with C_MPLB_NATIVE_DWIDTH = 32 must be 16 (4)"
    }

}

###############################################################################
## Checks output interface color space settings
###############################################################################
proc drc_color_space { mhsinst } {

    set display_interface [xget_hw_parameter_value $mhsinst "C_DISPLAY_INTERFACE"]
    set display_color_space [xget_hw_parameter_value $mhsinst "C_DISPLAY_COLOR_SPACE"]

    ## PARAMETER C_DISPLAY_INTERFACE = 0, DT = INTEGER, RANGE = (0,1,2,3,4,5), VALUES = (0=Parallel, 1=ITU656, 2=LVDS 4bit, 3=Camera link 4bit, 4=LVDS 3bit, 5=DVI), DESC = "Display interface"
    ## PARAMETER C_DISPLAY_COLOR_SPACE = 0, DT = INTEGER, RANGE = (0,1,2), VALUES = (0=RGB, 1=YCbCr 4:2:2, 2=YCbCr 4:4:4), DESC = "Display interface color space"

    if {($display_interface == 1 && $display_color_space != 1)} {
        error "When ITU656 output is used YCbCr 4:2:2 color space must be selected!"
    } elseif {($display_color_space == 1)} {
        if {($display_interface != 0 && $display_interface != 1)} {
            error "YCbCr 4:2:2 color space output can only be used with parallel or ITU656 output interfaces!"
        }
    }

}

###############################################################################
## Checks background layer settings
###############################################################################
proc drc_background { mhsinst } {

    set use_background [xget_hw_parameter_value $mhsinst "C_USE_BACKGROUND"]
    set num_of_layers [xget_hw_parameter_value $mhsinst "C_NUM_OF_LAYERS"]
    set last_layer [expr $num_of_layers-1]
    set layer_type [concat C_LAYER_${last_layer}_TYPE]
    set layer_data_width [concat C_LAYER_${last_layer}_DATA_WIDTH]
    set last_layer_type [xget_hw_parameter_value $mhsinst $layer_type]
    set last_layer_data_width [xget_hw_parameter_value $mhsinst $layer_data_width]

    ## Check if background layer is not YCbCr 8 or 16bit
    if {($use_background == 1)} {
        if {($last_layer_type == 1 && $last_layer_data_width != 24)} {
            error "Background layer can only be RGB 8, 16, or 24bit or YCbCR 24bit (4:4:4)!"
        }
    }

}

###############################################################################
## Checks active layers settings
###############################################################################
proc drc_layer { mhsinst } {

    set num_of_layers [xget_hw_parameter_value $mhsinst "C_NUM_OF_LAYERS"]
    set use_e_parallel_input [xget_hw_parameter_value $mhsinst "C_USE_E_PARALLEL_INPUT"]
    set e_layer [xget_hw_parameter_value $mhsinst "C_E_LAYER"]
    set e_data_width [xget_hw_parameter_value $mhsinst "C_E_DATA_WIDTH"]

    for {set x 0} {$x < $num_of_layers} {incr x 1} {
        set layer_type [concat C_LAYER_${x}_TYPE]
        set layer_alpha_mode [concat C_LAYER_${x}_ALPHA_MODE]
        set layer_data_width [concat C_LAYER_${x}_DATA_WIDTH]
        set cur_layer_type [xget_hw_parameter_value $mhsinst $layer_type]
        set cur_layer_alpha_mode [xget_hw_parameter_value $mhsinst $layer_alpha_mode]
        set cur_layer_data_width [xget_hw_parameter_value $mhsinst $layer_data_width]

        ## Check if CLUT alpha blending layer is configured as 8bit wide.
        if {(($cur_layer_alpha_mode == 2 || $cur_layer_alpha_mode == 3) && $cur_layer_data_width != 8)} {
            error "Error configuring Layer $x. CLUT alpha blending mode (C_LAYER_ALPHA_MODE = 2 or 3) is only possible with 8bit layer data width (C_LAYER_DATA_WIDTH = 8)!"
        }
        ## Check if YCbCr layers are 16 or 24 bit wide or in the case of 8 bit if it is 24bit CLUT (4:4:4).
        if {($cur_layer_type == 1  && $cur_layer_data_width == 8 && $cur_layer_alpha_mode != 3)} {
            error "Error configuring Layer $x. YCbCr layers can be 16 or 24bit wide. In the case of 8 bit wide YCbCr layer, layer alpha mode has to be 24bit CLUT (C_LAYER_ALPHA_MODE = 3)!"
        }
        ## Check if 16bit YCbCr layers are using layer alpha mode.
        if {($cur_layer_type == 1  && $cur_layer_data_width == 16 && $cur_layer_alpha_mode != 0)} {
            error "Error configuring Layer $x. 16bit YCbCr layers (4:2:2) can not use pixel alpha blending mode. In case you want to use pixel alpha blending with YCbCr layers you must use 24bit width (4:4:4)!"
        }
        ## Check if last layer in the configuration is not an alpha layer. Only RGB or YCbCr are possible. Check this for layers 1 and 3 because only those layers can be alpha layers.
        if {([expr $x+1] == $num_of_layers && $cur_layer_type == 2)} {
            error "Last layer cannot be alpha layer (C_LAYER_TYPE = 2), only data layer (RGB or YCbCr)!"
        }
        ## Check if alpha layer is set up to 8bit.
        if {($cur_layer_type == 2 && $cur_layer_data_width != 8)} {
            error "Error configuring Layer $x. Alpha layer (C_LAYER_TYPE = 2) can only be 8bit wide!"
        }

        ## Check external parallel input layer parameters.
        if {($use_e_parallel_input == 1 && $e_layer == $x)} {
            ## Check if external parallel input layer is not setup to alpha plane.
            if {($cur_layer_type == 2)} {
                error "Error configuring Layer $x. External parallel input layer can only be RGB or YCbCr (C_LAYER_TYPE = 0 or 1) and not alpha layer (C_LAYER_TYPE = 2)!"
            }
            ## Check if external parallel input width is the same as layer data width.
            if {($cur_layer_data_width != $e_data_width)} {
                error "Error configuring Layer $x. External parallel input is routed to Layer $x so its data width must be the same as layer data width (C_E_DATA_WIDTH = C_LAYER_DATA_WIDTH)!"
            }
            ## Check if external parallel input layer is using layer alpha.
            if {($cur_layer_alpha_mode != 0)} {
                error "Error configuring Layer $x. External parallel input layer (Layer $x) can only be configured to use layer alpha (C_LAYER_ALPHA_MODE = 0)!"
            }
        }


    }

}
