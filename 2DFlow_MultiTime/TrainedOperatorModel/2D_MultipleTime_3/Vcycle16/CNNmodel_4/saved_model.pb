Ко
ЪЁ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
╓
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
@
Softplus
features"T
activations"T"
Ttype:
2
╛
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258█┤
z
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_37/kernel
s
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes

:  *
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
: *
dtype0
К
conv3d_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_101/kernel
Г
%conv3d_101/kernel/Read/ReadVariableOpReadVariableOpconv3d_101/kernel**
_output_shapes
:*
dtype0
v
conv3d_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_101/bias
o
#conv3d_101/bias/Read/ReadVariableOpReadVariableOpconv3d_101/bias*
_output_shapes
:*
dtype0

NoOpNoOp
У
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╬
value─B┴ B║
Л
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer-7
	layer_with_weights-1
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api

	keras_api

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api

0
1
$2
%3

0
1
$2
%3
 
н

	variables
*layer_regularization_losses

+layers
trainable_variables
,non_trainable_variables
-metrics
.layer_metrics
regularization_losses
 
 
 
 
 
н
	variables
/layer_regularization_losses

0layers
trainable_variables
1non_trainable_variables
2metrics
3layer_metrics
regularization_losses
 
 
 
 
 
н
	variables
4layer_regularization_losses

5layers
trainable_variables
6non_trainable_variables
7metrics
8layer_metrics
regularization_losses
[Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_37/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
	variables
9layer_regularization_losses

:layers
trainable_variables
;non_trainable_variables
<metrics
=layer_metrics
regularization_losses
 
 
 
н
 	variables
>layer_regularization_losses

?layers
!trainable_variables
@non_trainable_variables
Ametrics
Blayer_metrics
"regularization_losses
][
VARIABLE_VALUEconv3d_101/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_101/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
н
&	variables
Clayer_regularization_losses

Dlayers
'trainable_variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
(regularization_losses
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Р
serving_default_inputPlaceholder*3
_output_shapes!
:         *
dtype0*(
shape:         
Ф
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_37/kerneldense_37/biasconv3d_101/kernelconv3d_101/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *.
f)R'
%__inference_signature_wrapper_7763689
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┐
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp%conv3d_101/kernel/Read/ReadVariableOp#conv3d_101/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *)
f$R"
 __inference__traced_save_7763951
ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_37/kerneldense_37/biasconv3d_101/kernelconv3d_101/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *,
f'R%
#__inference__traced_restore_7763973┤Н
╒
Д
G__inference_conv3d_101_layer_call_and_return_conditional_losses_7763916

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
П	
┘
*__inference_model_37_layer_call_fn_7763702

inputs
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_37_layer_call_and_return_conditional_losses_77635052
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
▀
ї
#__inference__traced_restore_7763973
file_prefix2
 assignvariableop_dense_37_kernel:  .
 assignvariableop_1_dense_37_bias: B
$assignvariableop_2_conv3d_101_kernel:0
"assignvariableop_3_conv3d_101_bias:

identity_5ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вAssignVariableOp_3Г
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*П
valueЕBВB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesШ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slices─
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_dense_37_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1е
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_37_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_101_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_101_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp║

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4c

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_5д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ъ
c
G__inference_reshape_74_layer_call_and_return_conditional_losses_7763452

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:          2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
М	
╪
*__inference_model_37_layer_call_fn_7763516	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_37_layer_call_and_return_conditional_losses_77635052
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
┴*
├
E__inference_model_37_layer_call_and_return_conditional_losses_7763647	
input"
dense_37_7763635:  
dense_37_7763637: 0
conv3d_101_7763641: 
conv3d_101_7763643:
identityИв"conv3d_101/StatefulPartitionedCallв dense_37/StatefulPartitionedCall│
/tf.__operators__.getitem_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_72/strided_slice/stack╖
1tf.__operators__.getitem_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_72/strided_slice/stack_1╖
1tf.__operators__.getitem_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_72/strided_slice/stack_2М
)tf.__operators__.getitem_72/strided_sliceStridedSliceinput8tf.__operators__.getitem_72/strided_slice/stack:output:0:tf.__operators__.getitem_72/strided_slice/stack_1:output:0:tf.__operators__.getitem_72/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_72/strided_slice╣
#range_conversion_37/PartitionedCallPartitionedCall2tf.__operators__.getitem_72/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_77634322%
#range_conversion_37/PartitionedCall│
/tf.__operators__.getitem_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_73/strided_slice/stack╖
1tf.__operators__.getitem_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_73/strided_slice/stack_1╖
1tf.__operators__.getitem_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_73/strided_slice/stack_2М
)tf.__operators__.getitem_73/strided_sliceStridedSliceinput8tf.__operators__.getitem_73/strided_slice/stack:output:0:tf.__operators__.getitem_73/strided_slice/stack_1:output:0:tf.__operators__.getitem_73/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_73/strided_slicev
tf.concat_68/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_68/concat/axisВ
tf.concat_68/concatConcatV2,range_conversion_37/PartitionedCall:output:02tf.__operators__.getitem_73/strided_slice:output:0!tf.concat_68/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_68/concat№
reshape_74/PartitionedCallPartitionedCalltf.concat_68/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_74_layer_call_and_return_conditional_losses_77634522
reshape_74/PartitionedCall┐
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#reshape_74/PartitionedCall:output:0dense_37_7763635dense_37_7763637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_77634652"
 dense_37/StatefulPartitionedCallХ
reshape_75/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_75_layer_call_and_return_conditional_losses_77634862
reshape_75/PartitionedCall╒
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCall#reshape_75/PartitionedCall:output:0conv3d_101_7763641conv3d_101_7763643*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_77634982$
"conv3d_101/StatefulPartitionedCallТ
IdentityIdentity+conv3d_101/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityЦ
NoOpNoOp#^conv3d_101/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
╒
Д
G__inference_conv3d_101_layer_call_and_return_conditional_losses_7763498

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
■
Ч
*__inference_dense_37_layer_call_fn_7763866

inputs
unknown:  
	unknown_0: 
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_77634652
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ы
U
5__inference_range_conversion_37_layer_call_fn_7763828

parameters
identityщ
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_77634322
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
У
Ў
E__inference_dense_37_layer_call_and_return_conditional_losses_7763877

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:          2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╚K
ф
E__inference_model_37_layer_call_and_return_conditional_losses_7763769

inputs9
'dense_37_matmul_readvariableop_resource:  6
(dense_37_biasadd_readvariableop_resource: G
)conv3d_101_conv3d_readvariableop_resource:8
*conv3d_101_biasadd_readvariableop_resource:
identityИв!conv3d_101/BiasAdd/ReadVariableOpв conv3d_101/Conv3D/ReadVariableOpвdense_37/BiasAdd/ReadVariableOpвdense_37/MatMul/ReadVariableOp│
/tf.__operators__.getitem_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_72/strided_slice/stack╖
1tf.__operators__.getitem_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_72/strided_slice/stack_1╖
1tf.__operators__.getitem_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_72/strided_slice/stack_2Н
)tf.__operators__.getitem_72/strided_sliceStridedSliceinputs8tf.__operators__.getitem_72/strided_slice/stack:output:0:tf.__operators__.getitem_72/strided_slice/stack_1:output:0:tf.__operators__.getitem_72/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_72/strided_slice{
range_conversion_37/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_37/sub/y╧
range_conversion_37/subSub2tf.__operators__.getitem_72/strided_slice:output:0"range_conversion_37/sub/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/subГ
range_conversion_37/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_37/truediv/y╚
range_conversion_37/truedivRealDivrange_conversion_37/sub:z:0&range_conversion_37/truediv/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/truediv{
range_conversion_37/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_37/mul/y╝
range_conversion_37/mulMulrange_conversion_37/truediv:z:0"range_conversion_37/mul/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/mul{
range_conversion_37/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_37/add/y║
range_conversion_37/addAddV2range_conversion_37/mul:z:0"range_conversion_37/add/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/add│
/tf.__operators__.getitem_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_73/strided_slice/stack╖
1tf.__operators__.getitem_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_73/strided_slice/stack_1╖
1tf.__operators__.getitem_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_73/strided_slice/stack_2Н
)tf.__operators__.getitem_73/strided_sliceStridedSliceinputs8tf.__operators__.getitem_73/strided_slice/stack:output:0:tf.__operators__.getitem_73/strided_slice/stack_1:output:0:tf.__operators__.getitem_73/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_73/strided_slicev
tf.concat_68/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_68/concat/axisё
tf.concat_68/concatConcatV2range_conversion_37/add:z:02tf.__operators__.getitem_73/strided_slice:output:0!tf.concat_68/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_68/concatp
reshape_74/ShapeShapetf.concat_68/concat:output:0*
T0*
_output_shapes
:2
reshape_74/ShapeК
reshape_74/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_74/strided_slice/stackО
 reshape_74/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_74/strided_slice/stack_1О
 reshape_74/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_74/strided_slice/stack_2д
reshape_74/strided_sliceStridedSlicereshape_74/Shape:output:0'reshape_74/strided_slice/stack:output:0)reshape_74/strided_slice/stack_1:output:0)reshape_74/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_74/strided_slicez
reshape_74/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_74/Reshape/shape/1▓
reshape_74/Reshape/shapePack!reshape_74/strided_slice:output:0#reshape_74/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_74/Reshape/shapeж
reshape_74/ReshapeReshapetf.concat_68/concat:output:0!reshape_74/Reshape/shape:output:0*
T0*'
_output_shapes
:          2
reshape_74/Reshapeи
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_37/MatMul/ReadVariableOpг
dense_37/MatMulMatMulreshape_74/Reshape:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_37/MatMulз
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_37/BiasAdd/ReadVariableOpе
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_37/BiasAdd
dense_37/SoftplusSoftplusdense_37/BiasAdd:output:0*
T0*'
_output_shapes
:          2
dense_37/Softpluss
reshape_75/ShapeShapedense_37/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_75/ShapeК
reshape_75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_75/strided_slice/stackО
 reshape_75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_75/strided_slice/stack_1О
 reshape_75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_75/strided_slice/stack_2д
reshape_75/strided_sliceStridedSlicereshape_75/Shape:output:0'reshape_75/strided_slice/stack:output:0)reshape_75/strided_slice/stack_1:output:0)reshape_75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_75/strided_slicez
reshape_75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/1z
reshape_75/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/2z
reshape_75/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/3z
reshape_75/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/4б
reshape_75/Reshape/shapePack!reshape_75/strided_slice:output:0#reshape_75/Reshape/shape/1:output:0#reshape_75/Reshape/shape/2:output:0#reshape_75/Reshape/shape/3:output:0#reshape_75/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_75/Reshape/shape╡
reshape_75/ReshapeReshapedense_37/Softplus:activations:0!reshape_75/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_75/Reshape║
 conv3d_101/Conv3D/ReadVariableOpReadVariableOp)conv3d_101_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_101/Conv3D/ReadVariableOpЎ
conv3d_101/Conv3DConv3Dreshape_75/Reshape:output:0(conv3d_101/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_101/Conv3Dн
!conv3d_101/BiasAdd/ReadVariableOpReadVariableOp*conv3d_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_101/BiasAdd/ReadVariableOp╧
conv3d_101/BiasAddBiasAddconv3d_101/Conv3D:output:0)conv3d_101/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_101/BiasAddВ
IdentityIdentityconv3d_101/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity╪
NoOpNoOp"^conv3d_101/BiasAdd/ReadVariableOp!^conv3d_101/Conv3D/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2F
!conv3d_101/BiasAdd/ReadVariableOp!conv3d_101/BiasAdd/ReadVariableOp2D
 conv3d_101/Conv3D/ReadVariableOp conv3d_101/Conv3D/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╚K
ф
E__inference_model_37_layer_call_and_return_conditional_losses_7763823

inputs9
'dense_37_matmul_readvariableop_resource:  6
(dense_37_biasadd_readvariableop_resource: G
)conv3d_101_conv3d_readvariableop_resource:8
*conv3d_101_biasadd_readvariableop_resource:
identityИв!conv3d_101/BiasAdd/ReadVariableOpв conv3d_101/Conv3D/ReadVariableOpвdense_37/BiasAdd/ReadVariableOpвdense_37/MatMul/ReadVariableOp│
/tf.__operators__.getitem_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_72/strided_slice/stack╖
1tf.__operators__.getitem_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_72/strided_slice/stack_1╖
1tf.__operators__.getitem_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_72/strided_slice/stack_2Н
)tf.__operators__.getitem_72/strided_sliceStridedSliceinputs8tf.__operators__.getitem_72/strided_slice/stack:output:0:tf.__operators__.getitem_72/strided_slice/stack_1:output:0:tf.__operators__.getitem_72/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_72/strided_slice{
range_conversion_37/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_37/sub/y╧
range_conversion_37/subSub2tf.__operators__.getitem_72/strided_slice:output:0"range_conversion_37/sub/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/subГ
range_conversion_37/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_37/truediv/y╚
range_conversion_37/truedivRealDivrange_conversion_37/sub:z:0&range_conversion_37/truediv/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/truediv{
range_conversion_37/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_37/mul/y╝
range_conversion_37/mulMulrange_conversion_37/truediv:z:0"range_conversion_37/mul/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/mul{
range_conversion_37/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_37/add/y║
range_conversion_37/addAddV2range_conversion_37/mul:z:0"range_conversion_37/add/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_37/add│
/tf.__operators__.getitem_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_73/strided_slice/stack╖
1tf.__operators__.getitem_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_73/strided_slice/stack_1╖
1tf.__operators__.getitem_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_73/strided_slice/stack_2Н
)tf.__operators__.getitem_73/strided_sliceStridedSliceinputs8tf.__operators__.getitem_73/strided_slice/stack:output:0:tf.__operators__.getitem_73/strided_slice/stack_1:output:0:tf.__operators__.getitem_73/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_73/strided_slicev
tf.concat_68/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_68/concat/axisё
tf.concat_68/concatConcatV2range_conversion_37/add:z:02tf.__operators__.getitem_73/strided_slice:output:0!tf.concat_68/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_68/concatp
reshape_74/ShapeShapetf.concat_68/concat:output:0*
T0*
_output_shapes
:2
reshape_74/ShapeК
reshape_74/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_74/strided_slice/stackО
 reshape_74/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_74/strided_slice/stack_1О
 reshape_74/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_74/strided_slice/stack_2д
reshape_74/strided_sliceStridedSlicereshape_74/Shape:output:0'reshape_74/strided_slice/stack:output:0)reshape_74/strided_slice/stack_1:output:0)reshape_74/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_74/strided_slicez
reshape_74/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_74/Reshape/shape/1▓
reshape_74/Reshape/shapePack!reshape_74/strided_slice:output:0#reshape_74/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_74/Reshape/shapeж
reshape_74/ReshapeReshapetf.concat_68/concat:output:0!reshape_74/Reshape/shape:output:0*
T0*'
_output_shapes
:          2
reshape_74/Reshapeи
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_37/MatMul/ReadVariableOpг
dense_37/MatMulMatMulreshape_74/Reshape:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_37/MatMulз
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_37/BiasAdd/ReadVariableOpе
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_37/BiasAdd
dense_37/SoftplusSoftplusdense_37/BiasAdd:output:0*
T0*'
_output_shapes
:          2
dense_37/Softpluss
reshape_75/ShapeShapedense_37/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_75/ShapeК
reshape_75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_75/strided_slice/stackО
 reshape_75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_75/strided_slice/stack_1О
 reshape_75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_75/strided_slice/stack_2д
reshape_75/strided_sliceStridedSlicereshape_75/Shape:output:0'reshape_75/strided_slice/stack:output:0)reshape_75/strided_slice/stack_1:output:0)reshape_75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_75/strided_slicez
reshape_75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/1z
reshape_75/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/2z
reshape_75/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/3z
reshape_75/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_75/Reshape/shape/4б
reshape_75/Reshape/shapePack!reshape_75/strided_slice:output:0#reshape_75/Reshape/shape/1:output:0#reshape_75/Reshape/shape/2:output:0#reshape_75/Reshape/shape/3:output:0#reshape_75/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_75/Reshape/shape╡
reshape_75/ReshapeReshapedense_37/Softplus:activations:0!reshape_75/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_75/Reshape║
 conv3d_101/Conv3D/ReadVariableOpReadVariableOp)conv3d_101_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_101/Conv3D/ReadVariableOpЎ
conv3d_101/Conv3DConv3Dreshape_75/Reshape:output:0(conv3d_101/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_101/Conv3Dн
!conv3d_101/BiasAdd/ReadVariableOpReadVariableOp*conv3d_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_101/BiasAdd/ReadVariableOp╧
conv3d_101/BiasAddBiasAddconv3d_101/Conv3D:output:0)conv3d_101/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_101/BiasAddВ
IdentityIdentityconv3d_101/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity╪
NoOpNoOp"^conv3d_101/BiasAdd/ReadVariableOp!^conv3d_101/Conv3D/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2F
!conv3d_101/BiasAdd/ReadVariableOp!conv3d_101/BiasAdd/ReadVariableOp2D
 conv3d_101/Conv3D/ReadVariableOp conv3d_101/Conv3D/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
У
Ў
E__inference_dense_37_layer_call_and_return_conditional_losses_7763465

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:          2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
┐
е
,__inference_conv3d_101_layer_call_fn_7763906

inputs%
unknown:
	unknown_0:
identityИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_77634982
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╤
н
 __inference__traced_save_7763951
file_prefix.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop0
,savev2_conv3d_101_kernel_read_readvariableop.
*savev2_conv3d_101_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*П
valueЕBВB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesТ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesю
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop,savev2_conv3d_101_kernel_read_readvariableop*savev2_conv3d_101_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*C
_input_shapes2
0: :  : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:  : 

_output_shapes
: :0,
*
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
х
H
,__inference_reshape_74_layer_call_fn_7763845

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_74_layer_call_and_return_conditional_losses_77634522
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
М	
╪
*__inference_model_37_layer_call_fn_7763620	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_37_layer_call_and_return_conditional_losses_77635962
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
╓	
p
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_7763840

parameters
identityS
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sub/yk
subSub
parameterssub/y:output:0*
T0*3
_output_shapes!
:         2
sub[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
	truediv/yx
truedivRealDivsub:z:0truediv/y:output:0*
T0*3
_output_shapes!
:         2	
truedivS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/yl
mulMultruediv:z:0mul/y:output:0*
T0*3
_output_shapes!
:         2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:         2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
Ъ
c
G__inference_reshape_75_layer_call_and_return_conditional_losses_7763897

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3d
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/4╘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
┼*
─
E__inference_model_37_layer_call_and_return_conditional_losses_7763596

inputs"
dense_37_7763584:  
dense_37_7763586: 0
conv3d_101_7763590: 
conv3d_101_7763592:
identityИв"conv3d_101/StatefulPartitionedCallв dense_37/StatefulPartitionedCall│
/tf.__operators__.getitem_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_72/strided_slice/stack╖
1tf.__operators__.getitem_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_72/strided_slice/stack_1╖
1tf.__operators__.getitem_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_72/strided_slice/stack_2Н
)tf.__operators__.getitem_72/strided_sliceStridedSliceinputs8tf.__operators__.getitem_72/strided_slice/stack:output:0:tf.__operators__.getitem_72/strided_slice/stack_1:output:0:tf.__operators__.getitem_72/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_72/strided_slice╣
#range_conversion_37/PartitionedCallPartitionedCall2tf.__operators__.getitem_72/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_77634322%
#range_conversion_37/PartitionedCall│
/tf.__operators__.getitem_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_73/strided_slice/stack╖
1tf.__operators__.getitem_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_73/strided_slice/stack_1╖
1tf.__operators__.getitem_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_73/strided_slice/stack_2Н
)tf.__operators__.getitem_73/strided_sliceStridedSliceinputs8tf.__operators__.getitem_73/strided_slice/stack:output:0:tf.__operators__.getitem_73/strided_slice/stack_1:output:0:tf.__operators__.getitem_73/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_73/strided_slicev
tf.concat_68/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_68/concat/axisВ
tf.concat_68/concatConcatV2,range_conversion_37/PartitionedCall:output:02tf.__operators__.getitem_73/strided_slice:output:0!tf.concat_68/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_68/concat№
reshape_74/PartitionedCallPartitionedCalltf.concat_68/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_74_layer_call_and_return_conditional_losses_77634522
reshape_74/PartitionedCall┐
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#reshape_74/PartitionedCall:output:0dense_37_7763584dense_37_7763586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_77634652"
 dense_37/StatefulPartitionedCallХ
reshape_75/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_75_layer_call_and_return_conditional_losses_77634862
reshape_75/PartitionedCall╒
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCall#reshape_75/PartitionedCall:output:0conv3d_101_7763590conv3d_101_7763592*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_77634982$
"conv3d_101/StatefulPartitionedCallТ
IdentityIdentity+conv3d_101/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityЦ
NoOpNoOp#^conv3d_101/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
П	
┘
*__inference_model_37_layer_call_fn_7763715

inputs
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_37_layer_call_and_return_conditional_losses_77635962
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ъ
c
G__inference_reshape_75_layer_call_and_return_conditional_losses_7763486

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3d
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/4╘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
┼*
─
E__inference_model_37_layer_call_and_return_conditional_losses_7763505

inputs"
dense_37_7763466:  
dense_37_7763468: 0
conv3d_101_7763499: 
conv3d_101_7763501:
identityИв"conv3d_101/StatefulPartitionedCallв dense_37/StatefulPartitionedCall│
/tf.__operators__.getitem_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_72/strided_slice/stack╖
1tf.__operators__.getitem_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_72/strided_slice/stack_1╖
1tf.__operators__.getitem_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_72/strided_slice/stack_2Н
)tf.__operators__.getitem_72/strided_sliceStridedSliceinputs8tf.__operators__.getitem_72/strided_slice/stack:output:0:tf.__operators__.getitem_72/strided_slice/stack_1:output:0:tf.__operators__.getitem_72/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_72/strided_slice╣
#range_conversion_37/PartitionedCallPartitionedCall2tf.__operators__.getitem_72/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_77634322%
#range_conversion_37/PartitionedCall│
/tf.__operators__.getitem_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_73/strided_slice/stack╖
1tf.__operators__.getitem_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_73/strided_slice/stack_1╖
1tf.__operators__.getitem_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_73/strided_slice/stack_2Н
)tf.__operators__.getitem_73/strided_sliceStridedSliceinputs8tf.__operators__.getitem_73/strided_slice/stack:output:0:tf.__operators__.getitem_73/strided_slice/stack_1:output:0:tf.__operators__.getitem_73/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_73/strided_slicev
tf.concat_68/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_68/concat/axisВ
tf.concat_68/concatConcatV2,range_conversion_37/PartitionedCall:output:02tf.__operators__.getitem_73/strided_slice:output:0!tf.concat_68/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_68/concat№
reshape_74/PartitionedCallPartitionedCalltf.concat_68/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_74_layer_call_and_return_conditional_losses_77634522
reshape_74/PartitionedCall┐
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#reshape_74/PartitionedCall:output:0dense_37_7763466dense_37_7763468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_77634652"
 dense_37/StatefulPartitionedCallХ
reshape_75/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_75_layer_call_and_return_conditional_losses_77634862
reshape_75/PartitionedCall╒
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCall#reshape_75/PartitionedCall:output:0conv3d_101_7763499conv3d_101_7763501*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_77634982$
"conv3d_101/StatefulPartitionedCallТ
IdentityIdentity+conv3d_101/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityЦ
NoOpNoOp#^conv3d_101/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
х
H
,__inference_reshape_75_layer_call_fn_7763882

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_75_layer_call_and_return_conditional_losses_77634862
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
ёV
И
"__inference__wrapped_model_7763409	
inputB
0model_37_dense_37_matmul_readvariableop_resource:  ?
1model_37_dense_37_biasadd_readvariableop_resource: P
2model_37_conv3d_101_conv3d_readvariableop_resource:A
3model_37_conv3d_101_biasadd_readvariableop_resource:
identityИв*model_37/conv3d_101/BiasAdd/ReadVariableOpв)model_37/conv3d_101/Conv3D/ReadVariableOpв(model_37/dense_37/BiasAdd/ReadVariableOpв'model_37/dense_37/MatMul/ReadVariableOp┼
8model_37/tf.__operators__.getitem_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_37/tf.__operators__.getitem_72/strided_slice/stack╔
:model_37/tf.__operators__.getitem_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_37/tf.__operators__.getitem_72/strided_slice/stack_1╔
:model_37/tf.__operators__.getitem_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_37/tf.__operators__.getitem_72/strided_slice/stack_2╣
2model_37/tf.__operators__.getitem_72/strided_sliceStridedSliceinputAmodel_37/tf.__operators__.getitem_72/strided_slice/stack:output:0Cmodel_37/tf.__operators__.getitem_72/strided_slice/stack_1:output:0Cmodel_37/tf.__operators__.getitem_72/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask24
2model_37/tf.__operators__.getitem_72/strided_sliceН
"model_37/range_conversion_37/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_37/range_conversion_37/sub/yє
 model_37/range_conversion_37/subSub;model_37/tf.__operators__.getitem_72/strided_slice:output:0+model_37/range_conversion_37/sub/y:output:0*
T0*3
_output_shapes!
:         2"
 model_37/range_conversion_37/subХ
&model_37/range_conversion_37/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_37/range_conversion_37/truediv/yь
$model_37/range_conversion_37/truedivRealDiv$model_37/range_conversion_37/sub:z:0/model_37/range_conversion_37/truediv/y:output:0*
T0*3
_output_shapes!
:         2&
$model_37/range_conversion_37/truedivН
"model_37/range_conversion_37/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_37/range_conversion_37/mul/yр
 model_37/range_conversion_37/mulMul(model_37/range_conversion_37/truediv:z:0+model_37/range_conversion_37/mul/y:output:0*
T0*3
_output_shapes!
:         2"
 model_37/range_conversion_37/mulН
"model_37/range_conversion_37/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_37/range_conversion_37/add/y▐
 model_37/range_conversion_37/addAddV2$model_37/range_conversion_37/mul:z:0+model_37/range_conversion_37/add/y:output:0*
T0*3
_output_shapes!
:         2"
 model_37/range_conversion_37/add┼
8model_37/tf.__operators__.getitem_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_37/tf.__operators__.getitem_73/strided_slice/stack╔
:model_37/tf.__operators__.getitem_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_37/tf.__operators__.getitem_73/strided_slice/stack_1╔
:model_37/tf.__operators__.getitem_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_37/tf.__operators__.getitem_73/strided_slice/stack_2╣
2model_37/tf.__operators__.getitem_73/strided_sliceStridedSliceinputAmodel_37/tf.__operators__.getitem_73/strided_slice/stack:output:0Cmodel_37/tf.__operators__.getitem_73/strided_slice/stack_1:output:0Cmodel_37/tf.__operators__.getitem_73/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask24
2model_37/tf.__operators__.getitem_73/strided_sliceИ
!model_37/tf.concat_68/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_37/tf.concat_68/concat/axisЮ
model_37/tf.concat_68/concatConcatV2$model_37/range_conversion_37/add:z:0;model_37/tf.__operators__.getitem_73/strided_slice:output:0*model_37/tf.concat_68/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_37/tf.concat_68/concatЛ
model_37/reshape_74/ShapeShape%model_37/tf.concat_68/concat:output:0*
T0*
_output_shapes
:2
model_37/reshape_74/ShapeЬ
'model_37/reshape_74/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_37/reshape_74/strided_slice/stackа
)model_37/reshape_74/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_37/reshape_74/strided_slice/stack_1а
)model_37/reshape_74/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_37/reshape_74/strided_slice/stack_2┌
!model_37/reshape_74/strided_sliceStridedSlice"model_37/reshape_74/Shape:output:00model_37/reshape_74/strided_slice/stack:output:02model_37/reshape_74/strided_slice/stack_1:output:02model_37/reshape_74/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_37/reshape_74/strided_sliceМ
#model_37/reshape_74/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_37/reshape_74/Reshape/shape/1╓
!model_37/reshape_74/Reshape/shapePack*model_37/reshape_74/strided_slice:output:0,model_37/reshape_74/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_37/reshape_74/Reshape/shape╩
model_37/reshape_74/ReshapeReshape%model_37/tf.concat_68/concat:output:0*model_37/reshape_74/Reshape/shape:output:0*
T0*'
_output_shapes
:          2
model_37/reshape_74/Reshape├
'model_37/dense_37/MatMul/ReadVariableOpReadVariableOp0model_37_dense_37_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'model_37/dense_37/MatMul/ReadVariableOp╟
model_37/dense_37/MatMulMatMul$model_37/reshape_74/Reshape:output:0/model_37/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
model_37/dense_37/MatMul┬
(model_37/dense_37/BiasAdd/ReadVariableOpReadVariableOp1model_37_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_37/dense_37/BiasAdd/ReadVariableOp╔
model_37/dense_37/BiasAddBiasAdd"model_37/dense_37/MatMul:product:00model_37/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
model_37/dense_37/BiasAddЪ
model_37/dense_37/SoftplusSoftplus"model_37/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:          2
model_37/dense_37/SoftplusО
model_37/reshape_75/ShapeShape(model_37/dense_37/Softplus:activations:0*
T0*
_output_shapes
:2
model_37/reshape_75/ShapeЬ
'model_37/reshape_75/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_37/reshape_75/strided_slice/stackа
)model_37/reshape_75/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_37/reshape_75/strided_slice/stack_1а
)model_37/reshape_75/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_37/reshape_75/strided_slice/stack_2┌
!model_37/reshape_75/strided_sliceStridedSlice"model_37/reshape_75/Shape:output:00model_37/reshape_75/strided_slice/stack:output:02model_37/reshape_75/strided_slice/stack_1:output:02model_37/reshape_75/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_37/reshape_75/strided_sliceМ
#model_37/reshape_75/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_37/reshape_75/Reshape/shape/1М
#model_37/reshape_75/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_37/reshape_75/Reshape/shape/2М
#model_37/reshape_75/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_37/reshape_75/Reshape/shape/3М
#model_37/reshape_75/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_37/reshape_75/Reshape/shape/4р
!model_37/reshape_75/Reshape/shapePack*model_37/reshape_75/strided_slice:output:0,model_37/reshape_75/Reshape/shape/1:output:0,model_37/reshape_75/Reshape/shape/2:output:0,model_37/reshape_75/Reshape/shape/3:output:0,model_37/reshape_75/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_37/reshape_75/Reshape/shape┘
model_37/reshape_75/ReshapeReshape(model_37/dense_37/Softplus:activations:0*model_37/reshape_75/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_37/reshape_75/Reshape╒
)model_37/conv3d_101/Conv3D/ReadVariableOpReadVariableOp2model_37_conv3d_101_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_37/conv3d_101/Conv3D/ReadVariableOpЪ
model_37/conv3d_101/Conv3DConv3D$model_37/reshape_75/Reshape:output:01model_37/conv3d_101/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_37/conv3d_101/Conv3D╚
*model_37/conv3d_101/BiasAdd/ReadVariableOpReadVariableOp3model_37_conv3d_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_37/conv3d_101/BiasAdd/ReadVariableOpє
model_37/conv3d_101/BiasAddBiasAdd#model_37/conv3d_101/Conv3D:output:02model_37/conv3d_101/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_37/conv3d_101/BiasAddЛ
IdentityIdentity$model_37/conv3d_101/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity№
NoOpNoOp+^model_37/conv3d_101/BiasAdd/ReadVariableOp*^model_37/conv3d_101/Conv3D/ReadVariableOp)^model_37/dense_37/BiasAdd/ReadVariableOp(^model_37/dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2X
*model_37/conv3d_101/BiasAdd/ReadVariableOp*model_37/conv3d_101/BiasAdd/ReadVariableOp2V
)model_37/conv3d_101/Conv3D/ReadVariableOp)model_37/conv3d_101/Conv3D/ReadVariableOp2T
(model_37/dense_37/BiasAdd/ReadVariableOp(model_37/dense_37/BiasAdd/ReadVariableOp2R
'model_37/dense_37/MatMul/ReadVariableOp'model_37/dense_37/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         

_user_specified_nameinput
Ъ
c
G__inference_reshape_74_layer_call_and_return_conditional_losses_7763857

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:          2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╓	
p
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_7763432

parameters
identityS
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sub/yk
subSub
parameterssub/y:output:0*
T0*3
_output_shapes!
:         2
sub[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
	truediv/yx
truedivRealDivsub:z:0truediv/y:output:0*
T0*3
_output_shapes!
:         2	
truedivS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/yl
mulMultruediv:z:0mul/y:output:0*
T0*3
_output_shapes!
:         2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:         2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
┴*
├
E__inference_model_37_layer_call_and_return_conditional_losses_7763674	
input"
dense_37_7763662:  
dense_37_7763664: 0
conv3d_101_7763668: 
conv3d_101_7763670:
identityИв"conv3d_101/StatefulPartitionedCallв dense_37/StatefulPartitionedCall│
/tf.__operators__.getitem_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_72/strided_slice/stack╖
1tf.__operators__.getitem_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_72/strided_slice/stack_1╖
1tf.__operators__.getitem_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_72/strided_slice/stack_2М
)tf.__operators__.getitem_72/strided_sliceStridedSliceinput8tf.__operators__.getitem_72/strided_slice/stack:output:0:tf.__operators__.getitem_72/strided_slice/stack_1:output:0:tf.__operators__.getitem_72/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_72/strided_slice╣
#range_conversion_37/PartitionedCallPartitionedCall2tf.__operators__.getitem_72/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_77634322%
#range_conversion_37/PartitionedCall│
/tf.__operators__.getitem_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_73/strided_slice/stack╖
1tf.__operators__.getitem_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_73/strided_slice/stack_1╖
1tf.__operators__.getitem_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_73/strided_slice/stack_2М
)tf.__operators__.getitem_73/strided_sliceStridedSliceinput8tf.__operators__.getitem_73/strided_slice/stack:output:0:tf.__operators__.getitem_73/strided_slice/stack_1:output:0:tf.__operators__.getitem_73/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_73/strided_slicev
tf.concat_68/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_68/concat/axisВ
tf.concat_68/concatConcatV2,range_conversion_37/PartitionedCall:output:02tf.__operators__.getitem_73/strided_slice:output:0!tf.concat_68/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_68/concat№
reshape_74/PartitionedCallPartitionedCalltf.concat_68/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_74_layer_call_and_return_conditional_losses_77634522
reshape_74/PartitionedCall┐
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#reshape_74/PartitionedCall:output:0dense_37_7763662dense_37_7763664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_77634652"
 dense_37/StatefulPartitionedCallХ
reshape_75/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_75_layer_call_and_return_conditional_losses_77634862
reshape_75/PartitionedCall╒
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCall#reshape_75/PartitionedCall:output:0conv3d_101_7763668conv3d_101_7763670*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_77634982$
"conv3d_101/StatefulPartitionedCallТ
IdentityIdentity+conv3d_101/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityЦ
NoOpNoOp#^conv3d_101/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
ф
╙
%__inference_signature_wrapper_7763689	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *+
f&R$
"__inference__wrapped_model_77634092
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┴
serving_defaultн
C
input:
serving_default_input:0         J

conv3d_101<
StatefulPartitionedCall:0         tensorflow/serving/predict:Шa
¤
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer-7
	layer_with_weights-1
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
H__call__
*I&call_and_return_all_conditional_losses
J_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
е
 	variables
!trainable_variables
"regularization_losses
#	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
$2
%3"
trackable_list_wrapper
<
0
1
$2
%3"
trackable_list_wrapper
 "
trackable_list_wrapper
╩

	variables
*layer_regularization_losses

+layers
trainable_variables
,non_trainable_variables
-metrics
.layer_metrics
regularization_losses
H__call__
J_default_save_signature
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
/layer_regularization_losses

0layers
trainable_variables
1non_trainable_variables
2metrics
3layer_metrics
regularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
4layer_regularization_losses

5layers
trainable_variables
6non_trainable_variables
7metrics
8layer_metrics
regularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
#:!   2dense_37/kernel
:  2dense_37/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
9layer_regularization_losses

:layers
trainable_variables
;non_trainable_variables
<metrics
=layer_metrics
regularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
 	variables
>layer_regularization_losses

?layers
!trainable_variables
@non_trainable_variables
Ametrics
Blayer_metrics
"regularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_101/kernel
: 2conv3d_101/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
&	variables
Clayer_regularization_losses

Dlayers
'trainable_variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
(regularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ў2є
*__inference_model_37_layer_call_fn_7763516
*__inference_model_37_layer_call_fn_7763702
*__inference_model_37_layer_call_fn_7763715
*__inference_model_37_layer_call_fn_7763620└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
E__inference_model_37_layer_call_and_return_conditional_losses_7763769
E__inference_model_37_layer_call_and_return_conditional_losses_7763823
E__inference_model_37_layer_call_and_return_conditional_losses_7763647
E__inference_model_37_layer_call_and_return_conditional_losses_7763674└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╦B╚
"__inference__wrapped_model_7763409input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
у2р
5__inference_range_conversion_37_layer_call_fn_7763828ж
Э▓Щ
FullArgSpec!
argsЪ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■2√
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_7763840ж
Э▓Щ
FullArgSpec!
argsЪ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_reshape_74_layer_call_fn_7763845в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_reshape_74_layer_call_and_return_conditional_losses_7763857в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_dense_37_layer_call_fn_7763866в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_dense_37_layer_call_and_return_conditional_losses_7763877в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_reshape_75_layer_call_fn_7763882в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_reshape_75_layer_call_and_return_conditional_losses_7763897в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_conv3d_101_layer_call_fn_7763906в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_conv3d_101_layer_call_and_return_conditional_losses_7763916в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╩B╟
%__inference_signature_wrapper_7763689input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 о
"__inference__wrapped_model_7763409З$%:в7
0в-
+К(
input         
к "Cк@
>

conv3d_1010К-

conv3d_101         ┐
G__inference_conv3d_101_layer_call_and_return_conditional_losses_7763916t$%;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ч
,__inference_conv3d_101_layer_call_fn_7763906g$%;в8
1в.
,К)
inputs         
к "$К!         е
E__inference_dense_37_layer_call_and_return_conditional_losses_7763877\/в,
%в"
 К
inputs          
к "%в"
К
0          
Ъ }
*__inference_dense_37_layer_call_fn_7763866O/в,
%в"
 К
inputs          
к "К          ╞
E__inference_model_37_layer_call_and_return_conditional_losses_7763647}$%Bв?
8в5
+К(
input         
p 

 
к "1в.
'К$
0         
Ъ ╞
E__inference_model_37_layer_call_and_return_conditional_losses_7763674}$%Bв?
8в5
+К(
input         
p

 
к "1в.
'К$
0         
Ъ ╟
E__inference_model_37_layer_call_and_return_conditional_losses_7763769~$%Cв@
9в6
,К)
inputs         
p 

 
к "1в.
'К$
0         
Ъ ╟
E__inference_model_37_layer_call_and_return_conditional_losses_7763823~$%Cв@
9в6
,К)
inputs         
p

 
к "1в.
'К$
0         
Ъ Ю
*__inference_model_37_layer_call_fn_7763516p$%Bв?
8в5
+К(
input         
p 

 
к "$К!         Ю
*__inference_model_37_layer_call_fn_7763620p$%Bв?
8в5
+К(
input         
p

 
к "$К!         Я
*__inference_model_37_layer_call_fn_7763702q$%Cв@
9в6
,К)
inputs         
p 

 
к "$К!         Я
*__inference_model_37_layer_call_fn_7763715q$%Cв@
9в6
,К)
inputs         
p

 
к "$К!         ╚
P__inference_range_conversion_37_layer_call_and_return_conditional_losses_7763840t?в<
5в2
0К-

parameters         
к "1в.
'К$
0         
Ъ а
5__inference_range_conversion_37_layer_call_fn_7763828g?в<
5в2
0К-

parameters         
к "$К!         п
G__inference_reshape_74_layer_call_and_return_conditional_losses_7763857d;в8
1в.
,К)
inputs         
к "%в"
К
0          
Ъ З
,__inference_reshape_74_layer_call_fn_7763845W;в8
1в.
,К)
inputs         
к "К          п
G__inference_reshape_75_layer_call_and_return_conditional_losses_7763897d/в,
%в"
 К
inputs          
к "1в.
'К$
0         
Ъ З
,__inference_reshape_75_layer_call_fn_7763882W/в,
%в"
 К
inputs          
к "$К!         ║
%__inference_signature_wrapper_7763689Р$%Cв@
в 
9к6
4
input+К(
input         "Cк@
>

conv3d_1010К-

conv3d_101         