��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258�
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:  *
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
: *
dtype0
�
conv3d_292/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_292/kernel
�
%conv3d_292/kernel/Read/ReadVariableOpReadVariableOpconv3d_292/kernel**
_output_shapes
:*
dtype0
v
conv3d_292/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_292/bias
o
#conv3d_292/bias/Read/ReadVariableOpReadVariableOpconv3d_292/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
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

regularization_losses
	variables
trainable_variables
	keras_api

signatures
 

	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api

	keras_api

	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
 	variables
!regularization_losses
"trainable_variables
#	keras_api
h

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
 

0
1
$2
%3

0
1
$2
%3
�
*non_trainable_variables
+metrics
,layer_regularization_losses
-layer_metrics

regularization_losses

.layers
	variables
trainable_variables
 
 
 
 
 
�
/non_trainable_variables
	variables
0metrics
1layer_regularization_losses
2layer_metrics
regularization_losses

3layers
trainable_variables
 
 
 
 
 
�
4non_trainable_variables
	variables
5metrics
6layer_regularization_losses
7layer_metrics
regularization_losses

8layers
trainable_variables
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
9non_trainable_variables
	variables
:metrics
;layer_regularization_losses
<layer_metrics
regularization_losses

=layers
trainable_variables
 
 
 
�
>non_trainable_variables
 	variables
?metrics
@layer_regularization_losses
Alayer_metrics
!regularization_losses

Blayers
"trainable_variables
][
VARIABLE_VALUEconv3d_292/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_292/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
�
Cnon_trainable_variables
&	variables
Dmetrics
Elayer_regularization_losses
Flayer_metrics
'regularization_losses

Glayers
(trainable_variables
 
 
 
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
�
serving_default_inputPlaceholder*3
_output_shapes!
:���������*
dtype0*(
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_56/kerneldense_56/biasconv3d_292/kernelconv3d_292/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� */
f*R(
&__inference_signature_wrapper_15387118
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp%conv3d_292/kernel/Read/ReadVariableOp#conv3d_292/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8� **
f%R#
!__inference__traced_save_15387380
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_56/kerneldense_56/biasconv3d_292/kernelconv3d_292/bias*
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
GPU2 *0,1,2,3J 8� *-
f(R&
$__inference__traced_restore_15387402��
�
J
.__inference_reshape_112_layer_call_fn_15387274

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_112_layer_call_and_return_conditional_losses_153868812
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
�
+__inference_model_56_layer_call_fn_15386945	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_56_layer_call_and_return_conditional_losses_153869342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
q
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_15386861

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
:���������2
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
:���������2	
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
:���������2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�
J
.__inference_reshape_113_layer_call_fn_15387311

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_113_layer_call_and_return_conditional_losses_153869152
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�*
�
F__inference_model_56_layer_call_and_return_conditional_losses_15386934

inputs#
dense_56_15386895:  
dense_56_15386897: 1
conv3d_292_15386928:!
conv3d_292_15386930:
identity��"conv3d_292/StatefulPartitionedCall� dense_56/StatefulPartitionedCall�
0tf.__operators__.getitem_448/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_448/strided_slice/stack�
2tf.__operators__.getitem_448/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_448/strided_slice/stack_1�
2tf.__operators__.getitem_448/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_448/strided_slice/stack_2�
*tf.__operators__.getitem_448/strided_sliceStridedSliceinputs9tf.__operators__.getitem_448/strided_slice/stack:output:0;tf.__operators__.getitem_448/strided_slice/stack_1:output:0;tf.__operators__.getitem_448/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_448/strided_slice�
#range_conversion_56/PartitionedCallPartitionedCall3tf.__operators__.getitem_448/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_153868612%
#range_conversion_56/PartitionedCall�
0tf.__operators__.getitem_449/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_449/strided_slice/stack�
2tf.__operators__.getitem_449/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_449/strided_slice/stack_1�
2tf.__operators__.getitem_449/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_449/strided_slice/stack_2�
*tf.__operators__.getitem_449/strided_sliceStridedSliceinputs9tf.__operators__.getitem_449/strided_slice/stack:output:0;tf.__operators__.getitem_449/strided_slice/stack_1:output:0;tf.__operators__.getitem_449/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_449/strided_slicex
tf.concat_604/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_604/concat/axis�
tf.concat_604/concatConcatV2,range_conversion_56/PartitionedCall:output:03tf.__operators__.getitem_449/strided_slice:output:0"tf.concat_604/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_604/concat�
reshape_112/PartitionedCallPartitionedCalltf.concat_604/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_112_layer_call_and_return_conditional_losses_153868812
reshape_112/PartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCall$reshape_112/PartitionedCall:output:0dense_56_15386895dense_56_15386897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_153868942"
 dense_56/StatefulPartitionedCall�
reshape_113/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_113_layer_call_and_return_conditional_losses_153869152
reshape_113/PartitionedCall�
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall$reshape_113/PartitionedCall:output:0conv3d_292_15386928conv3d_292_15386930*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_292_layer_call_and_return_conditional_losses_153869272$
"conv3d_292/StatefulPartitionedCall�
IdentityIdentity+conv3d_292/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_292/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_292_layer_call_and_return_conditional_losses_15387345

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�L
�
F__inference_model_56_layer_call_and_return_conditional_losses_15387198

inputs9
'dense_56_matmul_readvariableop_resource:  6
(dense_56_biasadd_readvariableop_resource: G
)conv3d_292_conv3d_readvariableop_resource:8
*conv3d_292_biasadd_readvariableop_resource:
identity��!conv3d_292/BiasAdd/ReadVariableOp� conv3d_292/Conv3D/ReadVariableOp�dense_56/BiasAdd/ReadVariableOp�dense_56/MatMul/ReadVariableOp�
0tf.__operators__.getitem_448/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_448/strided_slice/stack�
2tf.__operators__.getitem_448/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_448/strided_slice/stack_1�
2tf.__operators__.getitem_448/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_448/strided_slice/stack_2�
*tf.__operators__.getitem_448/strided_sliceStridedSliceinputs9tf.__operators__.getitem_448/strided_slice/stack:output:0;tf.__operators__.getitem_448/strided_slice/stack_1:output:0;tf.__operators__.getitem_448/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_448/strided_slice{
range_conversion_56/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_56/sub/y�
range_conversion_56/subSub3tf.__operators__.getitem_448/strided_slice:output:0"range_conversion_56/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/sub�
range_conversion_56/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_56/truediv/y�
range_conversion_56/truedivRealDivrange_conversion_56/sub:z:0&range_conversion_56/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/truediv{
range_conversion_56/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_56/mul/y�
range_conversion_56/mulMulrange_conversion_56/truediv:z:0"range_conversion_56/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/mul{
range_conversion_56/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_56/add/y�
range_conversion_56/addAddV2range_conversion_56/mul:z:0"range_conversion_56/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/add�
0tf.__operators__.getitem_449/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_449/strided_slice/stack�
2tf.__operators__.getitem_449/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_449/strided_slice/stack_1�
2tf.__operators__.getitem_449/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_449/strided_slice/stack_2�
*tf.__operators__.getitem_449/strided_sliceStridedSliceinputs9tf.__operators__.getitem_449/strided_slice/stack:output:0;tf.__operators__.getitem_449/strided_slice/stack_1:output:0;tf.__operators__.getitem_449/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_449/strided_slicex
tf.concat_604/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_604/concat/axis�
tf.concat_604/concatConcatV2range_conversion_56/add:z:03tf.__operators__.getitem_449/strided_slice:output:0"tf.concat_604/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_604/concats
reshape_112/ShapeShapetf.concat_604/concat:output:0*
T0*
_output_shapes
:2
reshape_112/Shape�
reshape_112/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_112/strided_slice/stack�
!reshape_112/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_112/strided_slice/stack_1�
!reshape_112/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_112/strided_slice/stack_2�
reshape_112/strided_sliceStridedSlicereshape_112/Shape:output:0(reshape_112/strided_slice/stack:output:0*reshape_112/strided_slice/stack_1:output:0*reshape_112/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_112/strided_slice|
reshape_112/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_112/Reshape/shape/1�
reshape_112/Reshape/shapePack"reshape_112/strided_slice:output:0$reshape_112/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_112/Reshape/shape�
reshape_112/ReshapeReshapetf.concat_604/concat:output:0"reshape_112/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_112/Reshape�
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_56/MatMul/ReadVariableOp�
dense_56/MatMulMatMulreshape_112/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_56/MatMul�
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_56/BiasAdd/ReadVariableOp�
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_56/BiasAdd
dense_56/SoftplusSoftplusdense_56/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_56/Softplusu
reshape_113/ShapeShapedense_56/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_113/Shape�
reshape_113/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_113/strided_slice/stack�
!reshape_113/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_113/strided_slice/stack_1�
!reshape_113/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_113/strided_slice/stack_2�
reshape_113/strided_sliceStridedSlicereshape_113/Shape:output:0(reshape_113/strided_slice/stack:output:0*reshape_113/strided_slice/stack_1:output:0*reshape_113/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_113/strided_slice|
reshape_113/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/1|
reshape_113/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/2|
reshape_113/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/3|
reshape_113/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/4�
reshape_113/Reshape/shapePack"reshape_113/strided_slice:output:0$reshape_113/Reshape/shape/1:output:0$reshape_113/Reshape/shape/2:output:0$reshape_113/Reshape/shape/3:output:0$reshape_113/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_113/Reshape/shape�
reshape_113/ReshapeReshapedense_56/Softplus:activations:0"reshape_113/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_113/Reshape�
 conv3d_292/Conv3D/ReadVariableOpReadVariableOp)conv3d_292_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_292/Conv3D/ReadVariableOp�
conv3d_292/Conv3DConv3Dreshape_113/Reshape:output:0(conv3d_292/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_292/Conv3D�
!conv3d_292/BiasAdd/ReadVariableOpReadVariableOp*conv3d_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_292/BiasAdd/ReadVariableOp�
conv3d_292/BiasAddBiasAddconv3d_292/Conv3D:output:0)conv3d_292/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_292/BiasAdd�
IdentityIdentityconv3d_292/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_292/BiasAdd/ReadVariableOp!^conv3d_292/Conv3D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_292/BiasAdd/ReadVariableOp!conv3d_292/BiasAdd/ReadVariableOp2D
 conv3d_292/Conv3D/ReadVariableOp conv3d_292/Conv3D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
!__inference__traced_save_15387380
file_prefix.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop0
,savev2_conv3d_292_kernel_read_readvariableop.
*savev2_conv3d_292_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop,savev2_conv3d_292_kernel_read_readvariableop*savev2_conv3d_292_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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
�L
�
F__inference_model_56_layer_call_and_return_conditional_losses_15387252

inputs9
'dense_56_matmul_readvariableop_resource:  6
(dense_56_biasadd_readvariableop_resource: G
)conv3d_292_conv3d_readvariableop_resource:8
*conv3d_292_biasadd_readvariableop_resource:
identity��!conv3d_292/BiasAdd/ReadVariableOp� conv3d_292/Conv3D/ReadVariableOp�dense_56/BiasAdd/ReadVariableOp�dense_56/MatMul/ReadVariableOp�
0tf.__operators__.getitem_448/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_448/strided_slice/stack�
2tf.__operators__.getitem_448/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_448/strided_slice/stack_1�
2tf.__operators__.getitem_448/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_448/strided_slice/stack_2�
*tf.__operators__.getitem_448/strided_sliceStridedSliceinputs9tf.__operators__.getitem_448/strided_slice/stack:output:0;tf.__operators__.getitem_448/strided_slice/stack_1:output:0;tf.__operators__.getitem_448/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_448/strided_slice{
range_conversion_56/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_56/sub/y�
range_conversion_56/subSub3tf.__operators__.getitem_448/strided_slice:output:0"range_conversion_56/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/sub�
range_conversion_56/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_56/truediv/y�
range_conversion_56/truedivRealDivrange_conversion_56/sub:z:0&range_conversion_56/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/truediv{
range_conversion_56/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_56/mul/y�
range_conversion_56/mulMulrange_conversion_56/truediv:z:0"range_conversion_56/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/mul{
range_conversion_56/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_56/add/y�
range_conversion_56/addAddV2range_conversion_56/mul:z:0"range_conversion_56/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_56/add�
0tf.__operators__.getitem_449/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_449/strided_slice/stack�
2tf.__operators__.getitem_449/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_449/strided_slice/stack_1�
2tf.__operators__.getitem_449/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_449/strided_slice/stack_2�
*tf.__operators__.getitem_449/strided_sliceStridedSliceinputs9tf.__operators__.getitem_449/strided_slice/stack:output:0;tf.__operators__.getitem_449/strided_slice/stack_1:output:0;tf.__operators__.getitem_449/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_449/strided_slicex
tf.concat_604/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_604/concat/axis�
tf.concat_604/concatConcatV2range_conversion_56/add:z:03tf.__operators__.getitem_449/strided_slice:output:0"tf.concat_604/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_604/concats
reshape_112/ShapeShapetf.concat_604/concat:output:0*
T0*
_output_shapes
:2
reshape_112/Shape�
reshape_112/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_112/strided_slice/stack�
!reshape_112/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_112/strided_slice/stack_1�
!reshape_112/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_112/strided_slice/stack_2�
reshape_112/strided_sliceStridedSlicereshape_112/Shape:output:0(reshape_112/strided_slice/stack:output:0*reshape_112/strided_slice/stack_1:output:0*reshape_112/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_112/strided_slice|
reshape_112/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_112/Reshape/shape/1�
reshape_112/Reshape/shapePack"reshape_112/strided_slice:output:0$reshape_112/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_112/Reshape/shape�
reshape_112/ReshapeReshapetf.concat_604/concat:output:0"reshape_112/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_112/Reshape�
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_56/MatMul/ReadVariableOp�
dense_56/MatMulMatMulreshape_112/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_56/MatMul�
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_56/BiasAdd/ReadVariableOp�
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_56/BiasAdd
dense_56/SoftplusSoftplusdense_56/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_56/Softplusu
reshape_113/ShapeShapedense_56/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_113/Shape�
reshape_113/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_113/strided_slice/stack�
!reshape_113/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_113/strided_slice/stack_1�
!reshape_113/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_113/strided_slice/stack_2�
reshape_113/strided_sliceStridedSlicereshape_113/Shape:output:0(reshape_113/strided_slice/stack:output:0*reshape_113/strided_slice/stack_1:output:0*reshape_113/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_113/strided_slice|
reshape_113/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/1|
reshape_113/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/2|
reshape_113/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/3|
reshape_113/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_113/Reshape/shape/4�
reshape_113/Reshape/shapePack"reshape_113/strided_slice:output:0$reshape_113/Reshape/shape/1:output:0$reshape_113/Reshape/shape/2:output:0$reshape_113/Reshape/shape/3:output:0$reshape_113/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_113/Reshape/shape�
reshape_113/ReshapeReshapedense_56/Softplus:activations:0"reshape_113/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_113/Reshape�
 conv3d_292/Conv3D/ReadVariableOpReadVariableOp)conv3d_292_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_292/Conv3D/ReadVariableOp�
conv3d_292/Conv3DConv3Dreshape_113/Reshape:output:0(conv3d_292/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_292/Conv3D�
!conv3d_292/BiasAdd/ReadVariableOpReadVariableOp*conv3d_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_292/BiasAdd/ReadVariableOp�
conv3d_292/BiasAddBiasAddconv3d_292/Conv3D:output:0)conv3d_292/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_292/BiasAdd�
IdentityIdentityconv3d_292/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_292/BiasAdd/ReadVariableOp!^conv3d_292/Conv3D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_292/BiasAdd/ReadVariableOp!conv3d_292/BiasAdd/ReadVariableOp2D
 conv3d_292/Conv3D/ReadVariableOp conv3d_292/Conv3D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_56_layer_call_fn_15387295

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_153868942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
-__inference_conv3d_292_layer_call_fn_15387335

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_292_layer_call_and_return_conditional_losses_153869272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_112_layer_call_and_return_conditional_losses_15386881

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
strided_slice/stack_2�
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
Reshape/shape/1�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:��������� 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_dense_56_layer_call_and_return_conditional_losses_15387306

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
e
I__inference_reshape_113_layer_call_and_return_conditional_losses_15387326

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
strided_slice/stack_2�
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
Reshape/shape/4�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:���������2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
V
6__inference_range_conversion_56_layer_call_fn_15387257

parameters
identity�
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_153868612
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�
e
I__inference_reshape_113_layer_call_and_return_conditional_losses_15386915

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
strided_slice/stack_2�
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
Reshape/shape/4�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:���������2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�*
�
F__inference_model_56_layer_call_and_return_conditional_losses_15387076	
input#
dense_56_15387064:  
dense_56_15387066: 1
conv3d_292_15387070:!
conv3d_292_15387072:
identity��"conv3d_292/StatefulPartitionedCall� dense_56/StatefulPartitionedCall�
0tf.__operators__.getitem_448/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_448/strided_slice/stack�
2tf.__operators__.getitem_448/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_448/strided_slice/stack_1�
2tf.__operators__.getitem_448/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_448/strided_slice/stack_2�
*tf.__operators__.getitem_448/strided_sliceStridedSliceinput9tf.__operators__.getitem_448/strided_slice/stack:output:0;tf.__operators__.getitem_448/strided_slice/stack_1:output:0;tf.__operators__.getitem_448/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_448/strided_slice�
#range_conversion_56/PartitionedCallPartitionedCall3tf.__operators__.getitem_448/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_153868612%
#range_conversion_56/PartitionedCall�
0tf.__operators__.getitem_449/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_449/strided_slice/stack�
2tf.__operators__.getitem_449/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_449/strided_slice/stack_1�
2tf.__operators__.getitem_449/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_449/strided_slice/stack_2�
*tf.__operators__.getitem_449/strided_sliceStridedSliceinput9tf.__operators__.getitem_449/strided_slice/stack:output:0;tf.__operators__.getitem_449/strided_slice/stack_1:output:0;tf.__operators__.getitem_449/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_449/strided_slicex
tf.concat_604/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_604/concat/axis�
tf.concat_604/concatConcatV2,range_conversion_56/PartitionedCall:output:03tf.__operators__.getitem_449/strided_slice:output:0"tf.concat_604/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_604/concat�
reshape_112/PartitionedCallPartitionedCalltf.concat_604/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_112_layer_call_and_return_conditional_losses_153868812
reshape_112/PartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCall$reshape_112/PartitionedCall:output:0dense_56_15387064dense_56_15387066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_153868942"
 dense_56/StatefulPartitionedCall�
reshape_113/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_113_layer_call_and_return_conditional_losses_153869152
reshape_113/PartitionedCall�
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall$reshape_113/PartitionedCall:output:0conv3d_292_15387070conv3d_292_15387072*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_292_layer_call_and_return_conditional_losses_153869272$
"conv3d_292/StatefulPartitionedCall�
IdentityIdentity+conv3d_292/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_292/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�W
�
#__inference__wrapped_model_15386838	
inputB
0model_56_dense_56_matmul_readvariableop_resource:  ?
1model_56_dense_56_biasadd_readvariableop_resource: P
2model_56_conv3d_292_conv3d_readvariableop_resource:A
3model_56_conv3d_292_biasadd_readvariableop_resource:
identity��*model_56/conv3d_292/BiasAdd/ReadVariableOp�)model_56/conv3d_292/Conv3D/ReadVariableOp�(model_56/dense_56/BiasAdd/ReadVariableOp�'model_56/dense_56/MatMul/ReadVariableOp�
9model_56/tf.__operators__.getitem_448/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_56/tf.__operators__.getitem_448/strided_slice/stack�
;model_56/tf.__operators__.getitem_448/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_56/tf.__operators__.getitem_448/strided_slice/stack_1�
;model_56/tf.__operators__.getitem_448/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_56/tf.__operators__.getitem_448/strided_slice/stack_2�
3model_56/tf.__operators__.getitem_448/strided_sliceStridedSliceinputBmodel_56/tf.__operators__.getitem_448/strided_slice/stack:output:0Dmodel_56/tf.__operators__.getitem_448/strided_slice/stack_1:output:0Dmodel_56/tf.__operators__.getitem_448/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_56/tf.__operators__.getitem_448/strided_slice�
"model_56/range_conversion_56/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_56/range_conversion_56/sub/y�
 model_56/range_conversion_56/subSub<model_56/tf.__operators__.getitem_448/strided_slice:output:0+model_56/range_conversion_56/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_56/range_conversion_56/sub�
&model_56/range_conversion_56/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_56/range_conversion_56/truediv/y�
$model_56/range_conversion_56/truedivRealDiv$model_56/range_conversion_56/sub:z:0/model_56/range_conversion_56/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_56/range_conversion_56/truediv�
"model_56/range_conversion_56/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_56/range_conversion_56/mul/y�
 model_56/range_conversion_56/mulMul(model_56/range_conversion_56/truediv:z:0+model_56/range_conversion_56/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_56/range_conversion_56/mul�
"model_56/range_conversion_56/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_56/range_conversion_56/add/y�
 model_56/range_conversion_56/addAddV2$model_56/range_conversion_56/mul:z:0+model_56/range_conversion_56/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_56/range_conversion_56/add�
9model_56/tf.__operators__.getitem_449/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_56/tf.__operators__.getitem_449/strided_slice/stack�
;model_56/tf.__operators__.getitem_449/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_56/tf.__operators__.getitem_449/strided_slice/stack_1�
;model_56/tf.__operators__.getitem_449/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_56/tf.__operators__.getitem_449/strided_slice/stack_2�
3model_56/tf.__operators__.getitem_449/strided_sliceStridedSliceinputBmodel_56/tf.__operators__.getitem_449/strided_slice/stack:output:0Dmodel_56/tf.__operators__.getitem_449/strided_slice/stack_1:output:0Dmodel_56/tf.__operators__.getitem_449/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_56/tf.__operators__.getitem_449/strided_slice�
"model_56/tf.concat_604/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_56/tf.concat_604/concat/axis�
model_56/tf.concat_604/concatConcatV2$model_56/range_conversion_56/add:z:0<model_56/tf.__operators__.getitem_449/strided_slice:output:0+model_56/tf.concat_604/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_56/tf.concat_604/concat�
model_56/reshape_112/ShapeShape&model_56/tf.concat_604/concat:output:0*
T0*
_output_shapes
:2
model_56/reshape_112/Shape�
(model_56/reshape_112/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_56/reshape_112/strided_slice/stack�
*model_56/reshape_112/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_56/reshape_112/strided_slice/stack_1�
*model_56/reshape_112/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_56/reshape_112/strided_slice/stack_2�
"model_56/reshape_112/strided_sliceStridedSlice#model_56/reshape_112/Shape:output:01model_56/reshape_112/strided_slice/stack:output:03model_56/reshape_112/strided_slice/stack_1:output:03model_56/reshape_112/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_56/reshape_112/strided_slice�
$model_56/reshape_112/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$model_56/reshape_112/Reshape/shape/1�
"model_56/reshape_112/Reshape/shapePack+model_56/reshape_112/strided_slice:output:0-model_56/reshape_112/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_56/reshape_112/Reshape/shape�
model_56/reshape_112/ReshapeReshape&model_56/tf.concat_604/concat:output:0+model_56/reshape_112/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
model_56/reshape_112/Reshape�
'model_56/dense_56/MatMul/ReadVariableOpReadVariableOp0model_56_dense_56_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'model_56/dense_56/MatMul/ReadVariableOp�
model_56/dense_56/MatMulMatMul%model_56/reshape_112/Reshape:output:0/model_56/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_56/dense_56/MatMul�
(model_56/dense_56/BiasAdd/ReadVariableOpReadVariableOp1model_56_dense_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_56/dense_56/BiasAdd/ReadVariableOp�
model_56/dense_56/BiasAddBiasAdd"model_56/dense_56/MatMul:product:00model_56/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_56/dense_56/BiasAdd�
model_56/dense_56/SoftplusSoftplus"model_56/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
model_56/dense_56/Softplus�
model_56/reshape_113/ShapeShape(model_56/dense_56/Softplus:activations:0*
T0*
_output_shapes
:2
model_56/reshape_113/Shape�
(model_56/reshape_113/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_56/reshape_113/strided_slice/stack�
*model_56/reshape_113/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_56/reshape_113/strided_slice/stack_1�
*model_56/reshape_113/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_56/reshape_113/strided_slice/stack_2�
"model_56/reshape_113/strided_sliceStridedSlice#model_56/reshape_113/Shape:output:01model_56/reshape_113/strided_slice/stack:output:03model_56/reshape_113/strided_slice/stack_1:output:03model_56/reshape_113/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_56/reshape_113/strided_slice�
$model_56/reshape_113/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_56/reshape_113/Reshape/shape/1�
$model_56/reshape_113/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_56/reshape_113/Reshape/shape/2�
$model_56/reshape_113/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_56/reshape_113/Reshape/shape/3�
$model_56/reshape_113/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_56/reshape_113/Reshape/shape/4�
"model_56/reshape_113/Reshape/shapePack+model_56/reshape_113/strided_slice:output:0-model_56/reshape_113/Reshape/shape/1:output:0-model_56/reshape_113/Reshape/shape/2:output:0-model_56/reshape_113/Reshape/shape/3:output:0-model_56/reshape_113/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_56/reshape_113/Reshape/shape�
model_56/reshape_113/ReshapeReshape(model_56/dense_56/Softplus:activations:0+model_56/reshape_113/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_56/reshape_113/Reshape�
)model_56/conv3d_292/Conv3D/ReadVariableOpReadVariableOp2model_56_conv3d_292_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_56/conv3d_292/Conv3D/ReadVariableOp�
model_56/conv3d_292/Conv3DConv3D%model_56/reshape_113/Reshape:output:01model_56/conv3d_292/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_56/conv3d_292/Conv3D�
*model_56/conv3d_292/BiasAdd/ReadVariableOpReadVariableOp3model_56_conv3d_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_56/conv3d_292/BiasAdd/ReadVariableOp�
model_56/conv3d_292/BiasAddBiasAdd#model_56/conv3d_292/Conv3D:output:02model_56/conv3d_292/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_56/conv3d_292/BiasAdd�
IdentityIdentity$model_56/conv3d_292/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_56/conv3d_292/BiasAdd/ReadVariableOp*^model_56/conv3d_292/Conv3D/ReadVariableOp)^model_56/dense_56/BiasAdd/ReadVariableOp(^model_56/dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2X
*model_56/conv3d_292/BiasAdd/ReadVariableOp*model_56/conv3d_292/BiasAdd/ReadVariableOp2V
)model_56/conv3d_292/Conv3D/ReadVariableOp)model_56/conv3d_292/Conv3D/ReadVariableOp2T
(model_56/dense_56/BiasAdd/ReadVariableOp(model_56/dense_56/BiasAdd/ReadVariableOp2R
'model_56/dense_56/MatMul/ReadVariableOp'model_56/dense_56/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
�
+__inference_model_56_layer_call_fn_15387144

inputs
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_56_layer_call_and_return_conditional_losses_153870252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_15387118	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__wrapped_model_153868382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
H__inference_conv3d_292_layer_call_and_return_conditional_losses_15386927

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_112_layer_call_and_return_conditional_losses_15387286

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
strided_slice/stack_2�
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
Reshape/shape/1�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:��������� 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
q
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_15387269

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
:���������2
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
:���������2	
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
:���������2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�	
�
+__inference_model_56_layer_call_fn_15387131

inputs
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_56_layer_call_and_return_conditional_losses_153869342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�*
�
F__inference_model_56_layer_call_and_return_conditional_losses_15387025

inputs#
dense_56_15387013:  
dense_56_15387015: 1
conv3d_292_15387019:!
conv3d_292_15387021:
identity��"conv3d_292/StatefulPartitionedCall� dense_56/StatefulPartitionedCall�
0tf.__operators__.getitem_448/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_448/strided_slice/stack�
2tf.__operators__.getitem_448/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_448/strided_slice/stack_1�
2tf.__operators__.getitem_448/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_448/strided_slice/stack_2�
*tf.__operators__.getitem_448/strided_sliceStridedSliceinputs9tf.__operators__.getitem_448/strided_slice/stack:output:0;tf.__operators__.getitem_448/strided_slice/stack_1:output:0;tf.__operators__.getitem_448/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_448/strided_slice�
#range_conversion_56/PartitionedCallPartitionedCall3tf.__operators__.getitem_448/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_153868612%
#range_conversion_56/PartitionedCall�
0tf.__operators__.getitem_449/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_449/strided_slice/stack�
2tf.__operators__.getitem_449/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_449/strided_slice/stack_1�
2tf.__operators__.getitem_449/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_449/strided_slice/stack_2�
*tf.__operators__.getitem_449/strided_sliceStridedSliceinputs9tf.__operators__.getitem_449/strided_slice/stack:output:0;tf.__operators__.getitem_449/strided_slice/stack_1:output:0;tf.__operators__.getitem_449/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_449/strided_slicex
tf.concat_604/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_604/concat/axis�
tf.concat_604/concatConcatV2,range_conversion_56/PartitionedCall:output:03tf.__operators__.getitem_449/strided_slice:output:0"tf.concat_604/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_604/concat�
reshape_112/PartitionedCallPartitionedCalltf.concat_604/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_112_layer_call_and_return_conditional_losses_153868812
reshape_112/PartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCall$reshape_112/PartitionedCall:output:0dense_56_15387013dense_56_15387015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_153868942"
 dense_56/StatefulPartitionedCall�
reshape_113/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_113_layer_call_and_return_conditional_losses_153869152
reshape_113/PartitionedCall�
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall$reshape_113/PartitionedCall:output:0conv3d_292_15387019conv3d_292_15387021*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_292_layer_call_and_return_conditional_losses_153869272$
"conv3d_292/StatefulPartitionedCall�
IdentityIdentity+conv3d_292/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_292/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
$__inference__traced_restore_15387402
file_prefix2
 assignvariableop_dense_56_kernel:  .
 assignvariableop_1_dense_56_bias: B
$assignvariableop_2_conv3d_292_kernel:0
"assignvariableop_3_conv3d_292_bias:

identity_5��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slices�
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

Identity�
AssignVariableOpAssignVariableOp assignvariableop_dense_56_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_56_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_292_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_292_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4c

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_5�
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
�	
�
+__inference_model_56_layer_call_fn_15387049	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_56_layer_call_and_return_conditional_losses_153870252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�*
�
F__inference_model_56_layer_call_and_return_conditional_losses_15387103	
input#
dense_56_15387091:  
dense_56_15387093: 1
conv3d_292_15387097:!
conv3d_292_15387099:
identity��"conv3d_292/StatefulPartitionedCall� dense_56/StatefulPartitionedCall�
0tf.__operators__.getitem_448/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_448/strided_slice/stack�
2tf.__operators__.getitem_448/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_448/strided_slice/stack_1�
2tf.__operators__.getitem_448/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_448/strided_slice/stack_2�
*tf.__operators__.getitem_448/strided_sliceStridedSliceinput9tf.__operators__.getitem_448/strided_slice/stack:output:0;tf.__operators__.getitem_448/strided_slice/stack_1:output:0;tf.__operators__.getitem_448/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_448/strided_slice�
#range_conversion_56/PartitionedCallPartitionedCall3tf.__operators__.getitem_448/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_153868612%
#range_conversion_56/PartitionedCall�
0tf.__operators__.getitem_449/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_449/strided_slice/stack�
2tf.__operators__.getitem_449/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_449/strided_slice/stack_1�
2tf.__operators__.getitem_449/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_449/strided_slice/stack_2�
*tf.__operators__.getitem_449/strided_sliceStridedSliceinput9tf.__operators__.getitem_449/strided_slice/stack:output:0;tf.__operators__.getitem_449/strided_slice/stack_1:output:0;tf.__operators__.getitem_449/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_449/strided_slicex
tf.concat_604/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_604/concat/axis�
tf.concat_604/concatConcatV2,range_conversion_56/PartitionedCall:output:03tf.__operators__.getitem_449/strided_slice:output:0"tf.concat_604/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_604/concat�
reshape_112/PartitionedCallPartitionedCalltf.concat_604/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_112_layer_call_and_return_conditional_losses_153868812
reshape_112/PartitionedCall�
 dense_56/StatefulPartitionedCallStatefulPartitionedCall$reshape_112/PartitionedCall:output:0dense_56_15387091dense_56_15387093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_153868942"
 dense_56/StatefulPartitionedCall�
reshape_113/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_113_layer_call_and_return_conditional_losses_153869152
reshape_113/PartitionedCall�
"conv3d_292/StatefulPartitionedCallStatefulPartitionedCall$reshape_113/PartitionedCall:output:0conv3d_292_15387097conv3d_292_15387099*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_292_layer_call_and_return_conditional_losses_153869272$
"conv3d_292/StatefulPartitionedCall�
IdentityIdentity+conv3d_292/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_292/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_292/StatefulPartitionedCall"conv3d_292/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
F__inference_dense_56_layer_call_and_return_conditional_losses_15386894

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input:
serving_default_input:0���������J

conv3d_292<
StatefulPartitionedCall:0���������tensorflow/serving/predict:�a
�
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

regularization_losses
	variables
trainable_variables
	keras_api

signatures
H__call__
I_default_save_signature
*J&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
regularization_losses
trainable_variables
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
�
	variables
regularization_losses
trainable_variables
	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
 	variables
!regularization_losses
"trainable_variables
#	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
�

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
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
�
*non_trainable_variables
+metrics
,layer_regularization_losses
-layer_metrics

regularization_losses

.layers
	variables
trainable_variables
H__call__
I_default_save_signature
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
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
�
/non_trainable_variables
	variables
0metrics
1layer_regularization_losses
2layer_metrics
regularization_losses

3layers
trainable_variables
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
�
4non_trainable_variables
	variables
5metrics
6layer_regularization_losses
7layer_metrics
regularization_losses

8layers
trainable_variables
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
#:!   2dense_56/kernel
:  2dense_56/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
9non_trainable_variables
	variables
:metrics
;layer_regularization_losses
<layer_metrics
regularization_losses

=layers
trainable_variables
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
�
>non_trainable_variables
 	variables
?metrics
@layer_regularization_losses
Alayer_metrics
!regularization_losses

Blayers
"trainable_variables
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_292/kernel
: 2conv3d_292/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
�
Cnon_trainable_variables
&	variables
Dmetrics
Elayer_regularization_losses
Flayer_metrics
'regularization_losses

Glayers
(trainable_variables
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
�2�
+__inference_model_56_layer_call_fn_15386945
+__inference_model_56_layer_call_fn_15387131
+__inference_model_56_layer_call_fn_15387144
+__inference_model_56_layer_call_fn_15387049�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference__wrapped_model_15386838input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_model_56_layer_call_and_return_conditional_losses_15387198
F__inference_model_56_layer_call_and_return_conditional_losses_15387252
F__inference_model_56_layer_call_and_return_conditional_losses_15387076
F__inference_model_56_layer_call_and_return_conditional_losses_15387103�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_range_conversion_56_layer_call_fn_15387257�
���
FullArgSpec!
args�
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_15387269�
���
FullArgSpec!
args�
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_reshape_112_layer_call_fn_15387274�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_reshape_112_layer_call_and_return_conditional_losses_15387286�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_56_layer_call_fn_15387295�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_dense_56_layer_call_and_return_conditional_losses_15387306�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_reshape_113_layer_call_fn_15387311�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_reshape_113_layer_call_and_return_conditional_losses_15387326�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_conv3d_292_layer_call_fn_15387335�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_conv3d_292_layer_call_and_return_conditional_losses_15387345�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_15387118input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
#__inference__wrapped_model_15386838�$%:�7
0�-
+�(
input���������
� "C�@
>

conv3d_2920�-

conv3d_292����������
H__inference_conv3d_292_layer_call_and_return_conditional_losses_15387345t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_292_layer_call_fn_15387335g$%;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_56_layer_call_and_return_conditional_losses_15387306\/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� ~
+__inference_dense_56_layer_call_fn_15387295O/�,
%�"
 �
inputs��������� 
� "���������� �
F__inference_model_56_layer_call_and_return_conditional_losses_15387076}$%B�?
8�5
+�(
input���������
p 

 
� "1�.
'�$
0���������
� �
F__inference_model_56_layer_call_and_return_conditional_losses_15387103}$%B�?
8�5
+�(
input���������
p

 
� "1�.
'�$
0���������
� �
F__inference_model_56_layer_call_and_return_conditional_losses_15387198~$%C�@
9�6
,�)
inputs���������
p 

 
� "1�.
'�$
0���������
� �
F__inference_model_56_layer_call_and_return_conditional_losses_15387252~$%C�@
9�6
,�)
inputs���������
p

 
� "1�.
'�$
0���������
� �
+__inference_model_56_layer_call_fn_15386945p$%B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_56_layer_call_fn_15387049p$%B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_56_layer_call_fn_15387131q$%C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_56_layer_call_fn_15387144q$%C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_56_layer_call_and_return_conditional_losses_15387269t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_56_layer_call_fn_15387257g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_112_layer_call_and_return_conditional_losses_15387286d;�8
1�.
,�)
inputs���������
� "%�"
�
0��������� 
� �
.__inference_reshape_112_layer_call_fn_15387274W;�8
1�.
,�)
inputs���������
� "���������� �
I__inference_reshape_113_layer_call_and_return_conditional_losses_15387326d/�,
%�"
 �
inputs��������� 
� "1�.
'�$
0���������
� �
.__inference_reshape_113_layer_call_fn_15387311W/�,
%�"
 �
inputs��������� 
� "$�!����������
&__inference_signature_wrapper_15387118�$%C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_2920�-

conv3d_292���������