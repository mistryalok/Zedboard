<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="10">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>axi_stream_counter</name>
		<ret_bitwidth>32</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>counter</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>counter</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_2">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>counterValue_load</name>
						<fileName>simple_axi_stream_counter/.settings/axi_stream.cpp</fileName>
						<fileDirectory>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</fileDirectory>
						<lineNumber>8</lineNumber>
						<contextFuncName>axi_stream_counter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>simple_axi_stream_counter/.settings/axi_stream.cpp</first>
											<second>axi_stream_counter</second>
										</first>
										<second>8</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>13</item>
				</oprand_edges>
				<opcode>load</opcode>
			</item>
			<item class_id_reference="9" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>counterValue_assign</name>
						<fileName>simple_axi_stream_counter/.settings/axi_stream.cpp</fileName>
						<fileDirectory>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</fileDirectory>
						<lineNumber>8</lineNumber>
						<contextFuncName>axi_stream_counter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>simple_axi_stream_counter/.settings/axi_stream.cpp</first>
											<second>axi_stream_counter</second>
										</first>
										<second>8</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>14</item>
					<item>16</item>
				</oprand_edges>
				<opcode>add</opcode>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name></name>
						<fileName>simple_axi_stream_counter/.settings/axi_stream.cpp</fileName>
						<fileDirectory>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</fileDirectory>
						<lineNumber>8</lineNumber>
						<contextFuncName>axi_stream_counter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>simple_axi_stream_counter/.settings/axi_stream.cpp</first>
											<second>axi_stream_counter</second>
										</first>
										<second>8</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>17</item>
					<item>18</item>
					<item>47</item>
				</oprand_edges>
				<opcode>store</opcode>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name></name>
						<fileName>simple_axi_stream_counter/.settings/axi_stream.cpp</fileName>
						<fileDirectory>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</fileDirectory>
						<lineNumber>9</lineNumber>
						<contextFuncName>axi_stream_counter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>simple_axi_stream_counter/.settings/axi_stream.cpp</first>
											<second>axi_stream_counter</second>
										</first>
										<second>9</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>20</item>
					<item>21</item>
					<item>22</item>
				</oprand_edges>
				<opcode>write</opcode>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name></name>
						<fileName>simple_axi_stream_counter/.settings/axi_stream.cpp</fileName>
						<fileDirectory>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</fileDirectory>
						<lineNumber>10</lineNumber>
						<contextFuncName>axi_stream_counter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>simple_axi_stream_counter/.settings/axi_stream.cpp</first>
											<second>axi_stream_counter</second>
										</first>
										<second>10</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>24</item>
				</oprand_edges>
				<opcode>ret</opcode>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_7">
				<Value>
					<Obj>
						<type>2</type>
						<id>15</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_8">
				<Value>
					<Obj>
						<type>2</type>
						<id>23</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>0</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_9">
				<Obj>
					<type>3</type>
					<id>12</id>
					<name>axi_stream_counter</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>5</count>
					<item_version>0</item_version>
					<item>7</item>
					<item>8</item>
					<item>9</item>
					<item>10</item>
					<item>11</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_10">
				<id>13</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_11">
				<id>14</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_12">
				<id>16</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_13">
				<id>17</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_14">
				<id>18</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_15">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_17">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>47</id>
				<edge_type>4</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>9</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_19">
			<mId>1</mId>
			<mTag>axi_stream_counter</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="24" tracking_level="1" version="0" object_id="_20">
		<states class_id="25" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="26" tracking_level="1" version="0" object_id="_21">
				<id>1</id>
				<operations class_id="27" tracking_level="0" version="0">
					<count>9</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_22">
						<id>3</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_23">
						<id>4</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_24">
						<id>5</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_25">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_26">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_27">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_28">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_29">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_30">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="29" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</transitions>
	</fsm>
	<res class_id="30" tracking_level="1" version="0" object_id="_31">
		<dp_component_resource class_id="31" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</dp_component_resource>
		<dp_expression_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_expression_resource>
		<dp_fifo_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_fifo_resource>
		<dp_memory_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_memory_resource>
		<dp_multiplexer_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_multiplexer_resource>
		<dp_register_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_register_resource>
		<dp_component_map class_id="32" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</dp_component_map>
		<dp_expression_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_expression_map>
		<dp_fifo_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_fifo_map>
		<dp_memory_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_memory_map>
	</res>
	<node_label_latency class_id="33" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="34" tracking_level="0" version="0">
			<first>7</first>
			<second class_id="35" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="36" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>12</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="39" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</regions>
	<dp_fu_nodes class_id="40" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="41" tracking_level="0" version="0">
			<first>22</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>30</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>34</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>41</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="43" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="44" tracking_level="0" version="0">
			<first>counterValue_assign_fu_34</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>3</count>
		<item_version>0</item_version>
		<item>
			<first>counterValue_load_load_fu_30</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>stg_8_store_fu_41</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>stg_9_write_fu_22</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="46" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="47" tracking_level="0" version="0">
			<first>counter</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>write</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>10</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

