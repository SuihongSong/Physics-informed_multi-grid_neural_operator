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
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_64/kernel
s
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes

:  *
dtype0
r
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_64/bias
k
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes
: *
dtype0
�
conv3d_300/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_300/kernel
�
%conv3d_300/kernel/Read/ReadVariableOpReadVariableOpconv3d_300/kernel**
_output_shapes
:*
dtype0
v
conv3d_300/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_300/bias
o
#conv3d_300/bias/Read/ReadVariableOpReadVariableOpconv3d_300/bias*
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
regularization_losses
	variables
trainable_variables
	keras_api

	keras_api

	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
 regularization_losses
!	variables
"trainable_variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'	variables
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
*layer_regularization_losses

+layers

regularization_losses
,layer_metrics
	variables
-non_trainable_variables
trainable_variables
.metrics
 
 
 
 
 
�
/layer_regularization_losses

0layers
regularization_losses
1layer_metrics
	variables
2non_trainable_variables
trainable_variables
3metrics
 
 
 
 
 
�
4layer_regularization_losses

5layers
regularization_losses
6layer_metrics
	variables
7non_trainable_variables
trainable_variables
8metrics
[Y
VARIABLE_VALUEdense_64/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_64/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
9layer_regularization_losses

:layers
regularization_losses
;layer_metrics
	variables
<non_trainable_variables
trainable_variables
=metrics
 
 
 
�
>layer_regularization_losses

?layers
 regularization_losses
@layer_metrics
!	variables
Anon_trainable_variables
"trainable_variables
Bmetrics
][
VARIABLE_VALUEconv3d_300/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_300/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
�
Clayer_regularization_losses

Dlayers
&regularization_losses
Elayer_metrics
'	variables
Fnon_trainable_variables
(trainable_variables
Gmetrics
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
�
serving_default_inputPlaceholder*3
_output_shapes!
:���������*
dtype0*(
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_64/kerneldense_64/biasconv3d_300/kernelconv3d_300/bias*
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
&__inference_signature_wrapper_14550103
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOp%conv3d_300/kernel/Read/ReadVariableOp#conv3d_300/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_14550365
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_64/kerneldense_64/biasconv3d_300/kernelconv3d_300/bias*
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
$__inference__traced_restore_14550387��
�
e
I__inference_reshape_128_layer_call_and_return_conditional_losses_14550271

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
�
J
.__inference_reshape_129_layer_call_fn_14550296

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
I__inference_reshape_129_layer_call_and_return_conditional_losses_145499002
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
�L
�
F__inference_model_64_layer_call_and_return_conditional_losses_14550183

inputs9
'dense_64_matmul_readvariableop_resource:  6
(dense_64_biasadd_readvariableop_resource: G
)conv3d_300_conv3d_readvariableop_resource:8
*conv3d_300_biasadd_readvariableop_resource:
identity��!conv3d_300/BiasAdd/ReadVariableOp� conv3d_300/Conv3D/ReadVariableOp�dense_64/BiasAdd/ReadVariableOp�dense_64/MatMul/ReadVariableOp�
0tf.__operators__.getitem_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_274/strided_slice/stack�
2tf.__operators__.getitem_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_274/strided_slice/stack_1�
2tf.__operators__.getitem_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_274/strided_slice/stack_2�
*tf.__operators__.getitem_274/strided_sliceStridedSliceinputs9tf.__operators__.getitem_274/strided_slice/stack:output:0;tf.__operators__.getitem_274/strided_slice/stack_1:output:0;tf.__operators__.getitem_274/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_274/strided_slice{
range_conversion_64/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_64/sub/y�
range_conversion_64/subSub3tf.__operators__.getitem_274/strided_slice:output:0"range_conversion_64/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/sub�
range_conversion_64/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_64/truediv/y�
range_conversion_64/truedivRealDivrange_conversion_64/sub:z:0&range_conversion_64/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/truediv{
range_conversion_64/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_64/mul/y�
range_conversion_64/mulMulrange_conversion_64/truediv:z:0"range_conversion_64/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/mul{
range_conversion_64/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_64/add/y�
range_conversion_64/addAddV2range_conversion_64/mul:z:0"range_conversion_64/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/add�
0tf.__operators__.getitem_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_275/strided_slice/stack�
2tf.__operators__.getitem_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_275/strided_slice/stack_1�
2tf.__operators__.getitem_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_275/strided_slice/stack_2�
*tf.__operators__.getitem_275/strided_sliceStridedSliceinputs9tf.__operators__.getitem_275/strided_slice/stack:output:0;tf.__operators__.getitem_275/strided_slice/stack_1:output:0;tf.__operators__.getitem_275/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_275/strided_slicex
tf.concat_339/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_339/concat/axis�
tf.concat_339/concatConcatV2range_conversion_64/add:z:03tf.__operators__.getitem_275/strided_slice:output:0"tf.concat_339/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_339/concats
reshape_128/ShapeShapetf.concat_339/concat:output:0*
T0*
_output_shapes
:2
reshape_128/Shape�
reshape_128/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_128/strided_slice/stack�
!reshape_128/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_128/strided_slice/stack_1�
!reshape_128/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_128/strided_slice/stack_2�
reshape_128/strided_sliceStridedSlicereshape_128/Shape:output:0(reshape_128/strided_slice/stack:output:0*reshape_128/strided_slice/stack_1:output:0*reshape_128/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_128/strided_slice|
reshape_128/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_128/Reshape/shape/1�
reshape_128/Reshape/shapePack"reshape_128/strided_slice:output:0$reshape_128/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_128/Reshape/shape�
reshape_128/ReshapeReshapetf.concat_339/concat:output:0"reshape_128/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_128/Reshape�
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_64/MatMul/ReadVariableOp�
dense_64/MatMulMatMulreshape_128/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_64/MatMul�
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_64/BiasAdd/ReadVariableOp�
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_64/BiasAdd
dense_64/SoftplusSoftplusdense_64/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_64/Softplusu
reshape_129/ShapeShapedense_64/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_129/Shape�
reshape_129/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_129/strided_slice/stack�
!reshape_129/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_129/strided_slice/stack_1�
!reshape_129/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_129/strided_slice/stack_2�
reshape_129/strided_sliceStridedSlicereshape_129/Shape:output:0(reshape_129/strided_slice/stack:output:0*reshape_129/strided_slice/stack_1:output:0*reshape_129/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_129/strided_slice|
reshape_129/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/1|
reshape_129/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/2|
reshape_129/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/3|
reshape_129/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/4�
reshape_129/Reshape/shapePack"reshape_129/strided_slice:output:0$reshape_129/Reshape/shape/1:output:0$reshape_129/Reshape/shape/2:output:0$reshape_129/Reshape/shape/3:output:0$reshape_129/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_129/Reshape/shape�
reshape_129/ReshapeReshapedense_64/Softplus:activations:0"reshape_129/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_129/Reshape�
 conv3d_300/Conv3D/ReadVariableOpReadVariableOp)conv3d_300_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_300/Conv3D/ReadVariableOp�
conv3d_300/Conv3DConv3Dreshape_129/Reshape:output:0(conv3d_300/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_300/Conv3D�
!conv3d_300/BiasAdd/ReadVariableOpReadVariableOp*conv3d_300_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_300/BiasAdd/ReadVariableOp�
conv3d_300/BiasAddBiasAddconv3d_300/Conv3D:output:0)conv3d_300/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_300/BiasAdd�
IdentityIdentityconv3d_300/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_300/BiasAdd/ReadVariableOp!^conv3d_300/Conv3D/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_300/BiasAdd/ReadVariableOp!conv3d_300/BiasAdd/ReadVariableOp2D
 conv3d_300/Conv3D/ReadVariableOp conv3d_300/Conv3D/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_300_layer_call_and_return_conditional_losses_14549912

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
F__inference_model_64_layer_call_and_return_conditional_losses_14550237

inputs9
'dense_64_matmul_readvariableop_resource:  6
(dense_64_biasadd_readvariableop_resource: G
)conv3d_300_conv3d_readvariableop_resource:8
*conv3d_300_biasadd_readvariableop_resource:
identity��!conv3d_300/BiasAdd/ReadVariableOp� conv3d_300/Conv3D/ReadVariableOp�dense_64/BiasAdd/ReadVariableOp�dense_64/MatMul/ReadVariableOp�
0tf.__operators__.getitem_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_274/strided_slice/stack�
2tf.__operators__.getitem_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_274/strided_slice/stack_1�
2tf.__operators__.getitem_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_274/strided_slice/stack_2�
*tf.__operators__.getitem_274/strided_sliceStridedSliceinputs9tf.__operators__.getitem_274/strided_slice/stack:output:0;tf.__operators__.getitem_274/strided_slice/stack_1:output:0;tf.__operators__.getitem_274/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_274/strided_slice{
range_conversion_64/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_64/sub/y�
range_conversion_64/subSub3tf.__operators__.getitem_274/strided_slice:output:0"range_conversion_64/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/sub�
range_conversion_64/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_64/truediv/y�
range_conversion_64/truedivRealDivrange_conversion_64/sub:z:0&range_conversion_64/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/truediv{
range_conversion_64/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_64/mul/y�
range_conversion_64/mulMulrange_conversion_64/truediv:z:0"range_conversion_64/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/mul{
range_conversion_64/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_64/add/y�
range_conversion_64/addAddV2range_conversion_64/mul:z:0"range_conversion_64/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_64/add�
0tf.__operators__.getitem_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_275/strided_slice/stack�
2tf.__operators__.getitem_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_275/strided_slice/stack_1�
2tf.__operators__.getitem_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_275/strided_slice/stack_2�
*tf.__operators__.getitem_275/strided_sliceStridedSliceinputs9tf.__operators__.getitem_275/strided_slice/stack:output:0;tf.__operators__.getitem_275/strided_slice/stack_1:output:0;tf.__operators__.getitem_275/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_275/strided_slicex
tf.concat_339/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_339/concat/axis�
tf.concat_339/concatConcatV2range_conversion_64/add:z:03tf.__operators__.getitem_275/strided_slice:output:0"tf.concat_339/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_339/concats
reshape_128/ShapeShapetf.concat_339/concat:output:0*
T0*
_output_shapes
:2
reshape_128/Shape�
reshape_128/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_128/strided_slice/stack�
!reshape_128/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_128/strided_slice/stack_1�
!reshape_128/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_128/strided_slice/stack_2�
reshape_128/strided_sliceStridedSlicereshape_128/Shape:output:0(reshape_128/strided_slice/stack:output:0*reshape_128/strided_slice/stack_1:output:0*reshape_128/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_128/strided_slice|
reshape_128/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_128/Reshape/shape/1�
reshape_128/Reshape/shapePack"reshape_128/strided_slice:output:0$reshape_128/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_128/Reshape/shape�
reshape_128/ReshapeReshapetf.concat_339/concat:output:0"reshape_128/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_128/Reshape�
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_64/MatMul/ReadVariableOp�
dense_64/MatMulMatMulreshape_128/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_64/MatMul�
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_64/BiasAdd/ReadVariableOp�
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_64/BiasAdd
dense_64/SoftplusSoftplusdense_64/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_64/Softplusu
reshape_129/ShapeShapedense_64/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_129/Shape�
reshape_129/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_129/strided_slice/stack�
!reshape_129/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_129/strided_slice/stack_1�
!reshape_129/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_129/strided_slice/stack_2�
reshape_129/strided_sliceStridedSlicereshape_129/Shape:output:0(reshape_129/strided_slice/stack:output:0*reshape_129/strided_slice/stack_1:output:0*reshape_129/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_129/strided_slice|
reshape_129/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/1|
reshape_129/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/2|
reshape_129/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/3|
reshape_129/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_129/Reshape/shape/4�
reshape_129/Reshape/shapePack"reshape_129/strided_slice:output:0$reshape_129/Reshape/shape/1:output:0$reshape_129/Reshape/shape/2:output:0$reshape_129/Reshape/shape/3:output:0$reshape_129/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_129/Reshape/shape�
reshape_129/ReshapeReshapedense_64/Softplus:activations:0"reshape_129/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_129/Reshape�
 conv3d_300/Conv3D/ReadVariableOpReadVariableOp)conv3d_300_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_300/Conv3D/ReadVariableOp�
conv3d_300/Conv3DConv3Dreshape_129/Reshape:output:0(conv3d_300/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_300/Conv3D�
!conv3d_300/BiasAdd/ReadVariableOpReadVariableOp*conv3d_300_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_300/BiasAdd/ReadVariableOp�
conv3d_300/BiasAddBiasAddconv3d_300/Conv3D:output:0)conv3d_300/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_300/BiasAdd�
IdentityIdentityconv3d_300/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_300/BiasAdd/ReadVariableOp!^conv3d_300/Conv3D/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_300/BiasAdd/ReadVariableOp!conv3d_300/BiasAdd/ReadVariableOp2D
 conv3d_300/Conv3D/ReadVariableOp conv3d_300/Conv3D/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_dense_64_layer_call_and_return_conditional_losses_14550291

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
�
�
F__inference_dense_64_layer_call_and_return_conditional_losses_14549879

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
�	
�
+__inference_model_64_layer_call_fn_14550034	
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
F__inference_model_64_layer_call_and_return_conditional_losses_145500102
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
�
�
!__inference__traced_save_14550365
file_prefix.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop0
,savev2_conv3d_300_kernel_read_readvariableop.
*savev2_conv3d_300_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop,savev2_conv3d_300_kernel_read_readvariableop*savev2_conv3d_300_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
H__inference_conv3d_300_layer_call_and_return_conditional_losses_14550330

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
�*
�
F__inference_model_64_layer_call_and_return_conditional_losses_14550010

inputs#
dense_64_14549998:  
dense_64_14550000: 1
conv3d_300_14550004:!
conv3d_300_14550006:
identity��"conv3d_300/StatefulPartitionedCall� dense_64/StatefulPartitionedCall�
0tf.__operators__.getitem_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_274/strided_slice/stack�
2tf.__operators__.getitem_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_274/strided_slice/stack_1�
2tf.__operators__.getitem_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_274/strided_slice/stack_2�
*tf.__operators__.getitem_274/strided_sliceStridedSliceinputs9tf.__operators__.getitem_274/strided_slice/stack:output:0;tf.__operators__.getitem_274/strided_slice/stack_1:output:0;tf.__operators__.getitem_274/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_274/strided_slice�
#range_conversion_64/PartitionedCallPartitionedCall3tf.__operators__.getitem_274/strided_slice:output:0*
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
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_145498462%
#range_conversion_64/PartitionedCall�
0tf.__operators__.getitem_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_275/strided_slice/stack�
2tf.__operators__.getitem_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_275/strided_slice/stack_1�
2tf.__operators__.getitem_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_275/strided_slice/stack_2�
*tf.__operators__.getitem_275/strided_sliceStridedSliceinputs9tf.__operators__.getitem_275/strided_slice/stack:output:0;tf.__operators__.getitem_275/strided_slice/stack_1:output:0;tf.__operators__.getitem_275/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_275/strided_slicex
tf.concat_339/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_339/concat/axis�
tf.concat_339/concatConcatV2,range_conversion_64/PartitionedCall:output:03tf.__operators__.getitem_275/strided_slice:output:0"tf.concat_339/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_339/concat�
reshape_128/PartitionedCallPartitionedCalltf.concat_339/concat:output:0*
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
I__inference_reshape_128_layer_call_and_return_conditional_losses_145498662
reshape_128/PartitionedCall�
 dense_64/StatefulPartitionedCallStatefulPartitionedCall$reshape_128/PartitionedCall:output:0dense_64_14549998dense_64_14550000*
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
F__inference_dense_64_layer_call_and_return_conditional_losses_145498792"
 dense_64/StatefulPartitionedCall�
reshape_129/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
I__inference_reshape_129_layer_call_and_return_conditional_losses_145499002
reshape_129/PartitionedCall�
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCall$reshape_129/PartitionedCall:output:0conv3d_300_14550004conv3d_300_14550006*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_145499122$
"conv3d_300/StatefulPartitionedCall�
IdentityIdentity+conv3d_300/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_300/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
�
+__inference_model_64_layer_call_fn_14550116

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
F__inference_model_64_layer_call_and_return_conditional_losses_145499192
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
F__inference_model_64_layer_call_and_return_conditional_losses_14550088	
input#
dense_64_14550076:  
dense_64_14550078: 1
conv3d_300_14550082:!
conv3d_300_14550084:
identity��"conv3d_300/StatefulPartitionedCall� dense_64/StatefulPartitionedCall�
0tf.__operators__.getitem_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_274/strided_slice/stack�
2tf.__operators__.getitem_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_274/strided_slice/stack_1�
2tf.__operators__.getitem_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_274/strided_slice/stack_2�
*tf.__operators__.getitem_274/strided_sliceStridedSliceinput9tf.__operators__.getitem_274/strided_slice/stack:output:0;tf.__operators__.getitem_274/strided_slice/stack_1:output:0;tf.__operators__.getitem_274/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_274/strided_slice�
#range_conversion_64/PartitionedCallPartitionedCall3tf.__operators__.getitem_274/strided_slice:output:0*
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
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_145498462%
#range_conversion_64/PartitionedCall�
0tf.__operators__.getitem_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_275/strided_slice/stack�
2tf.__operators__.getitem_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_275/strided_slice/stack_1�
2tf.__operators__.getitem_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_275/strided_slice/stack_2�
*tf.__operators__.getitem_275/strided_sliceStridedSliceinput9tf.__operators__.getitem_275/strided_slice/stack:output:0;tf.__operators__.getitem_275/strided_slice/stack_1:output:0;tf.__operators__.getitem_275/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_275/strided_slicex
tf.concat_339/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_339/concat/axis�
tf.concat_339/concatConcatV2,range_conversion_64/PartitionedCall:output:03tf.__operators__.getitem_275/strided_slice:output:0"tf.concat_339/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_339/concat�
reshape_128/PartitionedCallPartitionedCalltf.concat_339/concat:output:0*
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
I__inference_reshape_128_layer_call_and_return_conditional_losses_145498662
reshape_128/PartitionedCall�
 dense_64/StatefulPartitionedCallStatefulPartitionedCall$reshape_128/PartitionedCall:output:0dense_64_14550076dense_64_14550078*
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
F__inference_dense_64_layer_call_and_return_conditional_losses_145498792"
 dense_64/StatefulPartitionedCall�
reshape_129/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
I__inference_reshape_129_layer_call_and_return_conditional_losses_145499002
reshape_129/PartitionedCall�
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCall$reshape_129/PartitionedCall:output:0conv3d_300_14550082conv3d_300_14550084*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_145499122$
"conv3d_300/StatefulPartitionedCall�
IdentityIdentity+conv3d_300/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_300/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
V
6__inference_range_conversion_64_layer_call_fn_14550242

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
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_145498462
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
�
�
+__inference_dense_64_layer_call_fn_14550280

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
F__inference_dense_64_layer_call_and_return_conditional_losses_145498792
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
�	
�
+__inference_model_64_layer_call_fn_14549930	
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
F__inference_model_64_layer_call_and_return_conditional_losses_145499192
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
F__inference_model_64_layer_call_and_return_conditional_losses_14550061	
input#
dense_64_14550049:  
dense_64_14550051: 1
conv3d_300_14550055:!
conv3d_300_14550057:
identity��"conv3d_300/StatefulPartitionedCall� dense_64/StatefulPartitionedCall�
0tf.__operators__.getitem_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_274/strided_slice/stack�
2tf.__operators__.getitem_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_274/strided_slice/stack_1�
2tf.__operators__.getitem_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_274/strided_slice/stack_2�
*tf.__operators__.getitem_274/strided_sliceStridedSliceinput9tf.__operators__.getitem_274/strided_slice/stack:output:0;tf.__operators__.getitem_274/strided_slice/stack_1:output:0;tf.__operators__.getitem_274/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_274/strided_slice�
#range_conversion_64/PartitionedCallPartitionedCall3tf.__operators__.getitem_274/strided_slice:output:0*
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
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_145498462%
#range_conversion_64/PartitionedCall�
0tf.__operators__.getitem_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_275/strided_slice/stack�
2tf.__operators__.getitem_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_275/strided_slice/stack_1�
2tf.__operators__.getitem_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_275/strided_slice/stack_2�
*tf.__operators__.getitem_275/strided_sliceStridedSliceinput9tf.__operators__.getitem_275/strided_slice/stack:output:0;tf.__operators__.getitem_275/strided_slice/stack_1:output:0;tf.__operators__.getitem_275/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_275/strided_slicex
tf.concat_339/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_339/concat/axis�
tf.concat_339/concatConcatV2,range_conversion_64/PartitionedCall:output:03tf.__operators__.getitem_275/strided_slice:output:0"tf.concat_339/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_339/concat�
reshape_128/PartitionedCallPartitionedCalltf.concat_339/concat:output:0*
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
I__inference_reshape_128_layer_call_and_return_conditional_losses_145498662
reshape_128/PartitionedCall�
 dense_64/StatefulPartitionedCallStatefulPartitionedCall$reshape_128/PartitionedCall:output:0dense_64_14550049dense_64_14550051*
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
F__inference_dense_64_layer_call_and_return_conditional_losses_145498792"
 dense_64/StatefulPartitionedCall�
reshape_129/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
I__inference_reshape_129_layer_call_and_return_conditional_losses_145499002
reshape_129/PartitionedCall�
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCall$reshape_129/PartitionedCall:output:0conv3d_300_14550055conv3d_300_14550057*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_145499122$
"conv3d_300/StatefulPartitionedCall�
IdentityIdentity+conv3d_300/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_300/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
�
+__inference_model_64_layer_call_fn_14550129

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
F__inference_model_64_layer_call_and_return_conditional_losses_145500102
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
�
e
I__inference_reshape_129_layer_call_and_return_conditional_losses_14550311

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
�
�
$__inference__traced_restore_14550387
file_prefix2
 assignvariableop_dense_64_kernel:  .
 assignvariableop_1_dense_64_bias: B
$assignvariableop_2_conv3d_300_kernel:0
"assignvariableop_3_conv3d_300_bias:

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
AssignVariableOpAssignVariableOp assignvariableop_dense_64_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_64_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_300_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_300_biasIdentity_3:output:0"/device:CPU:0*
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
q
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_14550254

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
�
�
&__inference_signature_wrapper_14550103	
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
#__inference__wrapped_model_145498232
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
�
e
I__inference_reshape_129_layer_call_and_return_conditional_losses_14549900

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
�
e
I__inference_reshape_128_layer_call_and_return_conditional_losses_14549866

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
�
J
.__inference_reshape_128_layer_call_fn_14550259

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
I__inference_reshape_128_layer_call_and_return_conditional_losses_145498662
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
�W
�
#__inference__wrapped_model_14549823	
inputB
0model_64_dense_64_matmul_readvariableop_resource:  ?
1model_64_dense_64_biasadd_readvariableop_resource: P
2model_64_conv3d_300_conv3d_readvariableop_resource:A
3model_64_conv3d_300_biasadd_readvariableop_resource:
identity��*model_64/conv3d_300/BiasAdd/ReadVariableOp�)model_64/conv3d_300/Conv3D/ReadVariableOp�(model_64/dense_64/BiasAdd/ReadVariableOp�'model_64/dense_64/MatMul/ReadVariableOp�
9model_64/tf.__operators__.getitem_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_64/tf.__operators__.getitem_274/strided_slice/stack�
;model_64/tf.__operators__.getitem_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_64/tf.__operators__.getitem_274/strided_slice/stack_1�
;model_64/tf.__operators__.getitem_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_64/tf.__operators__.getitem_274/strided_slice/stack_2�
3model_64/tf.__operators__.getitem_274/strided_sliceStridedSliceinputBmodel_64/tf.__operators__.getitem_274/strided_slice/stack:output:0Dmodel_64/tf.__operators__.getitem_274/strided_slice/stack_1:output:0Dmodel_64/tf.__operators__.getitem_274/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_64/tf.__operators__.getitem_274/strided_slice�
"model_64/range_conversion_64/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_64/range_conversion_64/sub/y�
 model_64/range_conversion_64/subSub<model_64/tf.__operators__.getitem_274/strided_slice:output:0+model_64/range_conversion_64/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_64/range_conversion_64/sub�
&model_64/range_conversion_64/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_64/range_conversion_64/truediv/y�
$model_64/range_conversion_64/truedivRealDiv$model_64/range_conversion_64/sub:z:0/model_64/range_conversion_64/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_64/range_conversion_64/truediv�
"model_64/range_conversion_64/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_64/range_conversion_64/mul/y�
 model_64/range_conversion_64/mulMul(model_64/range_conversion_64/truediv:z:0+model_64/range_conversion_64/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_64/range_conversion_64/mul�
"model_64/range_conversion_64/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_64/range_conversion_64/add/y�
 model_64/range_conversion_64/addAddV2$model_64/range_conversion_64/mul:z:0+model_64/range_conversion_64/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_64/range_conversion_64/add�
9model_64/tf.__operators__.getitem_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_64/tf.__operators__.getitem_275/strided_slice/stack�
;model_64/tf.__operators__.getitem_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_64/tf.__operators__.getitem_275/strided_slice/stack_1�
;model_64/tf.__operators__.getitem_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_64/tf.__operators__.getitem_275/strided_slice/stack_2�
3model_64/tf.__operators__.getitem_275/strided_sliceStridedSliceinputBmodel_64/tf.__operators__.getitem_275/strided_slice/stack:output:0Dmodel_64/tf.__operators__.getitem_275/strided_slice/stack_1:output:0Dmodel_64/tf.__operators__.getitem_275/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_64/tf.__operators__.getitem_275/strided_slice�
"model_64/tf.concat_339/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_64/tf.concat_339/concat/axis�
model_64/tf.concat_339/concatConcatV2$model_64/range_conversion_64/add:z:0<model_64/tf.__operators__.getitem_275/strided_slice:output:0+model_64/tf.concat_339/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_64/tf.concat_339/concat�
model_64/reshape_128/ShapeShape&model_64/tf.concat_339/concat:output:0*
T0*
_output_shapes
:2
model_64/reshape_128/Shape�
(model_64/reshape_128/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_64/reshape_128/strided_slice/stack�
*model_64/reshape_128/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_64/reshape_128/strided_slice/stack_1�
*model_64/reshape_128/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_64/reshape_128/strided_slice/stack_2�
"model_64/reshape_128/strided_sliceStridedSlice#model_64/reshape_128/Shape:output:01model_64/reshape_128/strided_slice/stack:output:03model_64/reshape_128/strided_slice/stack_1:output:03model_64/reshape_128/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_64/reshape_128/strided_slice�
$model_64/reshape_128/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$model_64/reshape_128/Reshape/shape/1�
"model_64/reshape_128/Reshape/shapePack+model_64/reshape_128/strided_slice:output:0-model_64/reshape_128/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_64/reshape_128/Reshape/shape�
model_64/reshape_128/ReshapeReshape&model_64/tf.concat_339/concat:output:0+model_64/reshape_128/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
model_64/reshape_128/Reshape�
'model_64/dense_64/MatMul/ReadVariableOpReadVariableOp0model_64_dense_64_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'model_64/dense_64/MatMul/ReadVariableOp�
model_64/dense_64/MatMulMatMul%model_64/reshape_128/Reshape:output:0/model_64/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_64/dense_64/MatMul�
(model_64/dense_64/BiasAdd/ReadVariableOpReadVariableOp1model_64_dense_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_64/dense_64/BiasAdd/ReadVariableOp�
model_64/dense_64/BiasAddBiasAdd"model_64/dense_64/MatMul:product:00model_64/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_64/dense_64/BiasAdd�
model_64/dense_64/SoftplusSoftplus"model_64/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
model_64/dense_64/Softplus�
model_64/reshape_129/ShapeShape(model_64/dense_64/Softplus:activations:0*
T0*
_output_shapes
:2
model_64/reshape_129/Shape�
(model_64/reshape_129/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_64/reshape_129/strided_slice/stack�
*model_64/reshape_129/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_64/reshape_129/strided_slice/stack_1�
*model_64/reshape_129/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_64/reshape_129/strided_slice/stack_2�
"model_64/reshape_129/strided_sliceStridedSlice#model_64/reshape_129/Shape:output:01model_64/reshape_129/strided_slice/stack:output:03model_64/reshape_129/strided_slice/stack_1:output:03model_64/reshape_129/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_64/reshape_129/strided_slice�
$model_64/reshape_129/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_64/reshape_129/Reshape/shape/1�
$model_64/reshape_129/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_64/reshape_129/Reshape/shape/2�
$model_64/reshape_129/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_64/reshape_129/Reshape/shape/3�
$model_64/reshape_129/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_64/reshape_129/Reshape/shape/4�
"model_64/reshape_129/Reshape/shapePack+model_64/reshape_129/strided_slice:output:0-model_64/reshape_129/Reshape/shape/1:output:0-model_64/reshape_129/Reshape/shape/2:output:0-model_64/reshape_129/Reshape/shape/3:output:0-model_64/reshape_129/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_64/reshape_129/Reshape/shape�
model_64/reshape_129/ReshapeReshape(model_64/dense_64/Softplus:activations:0+model_64/reshape_129/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_64/reshape_129/Reshape�
)model_64/conv3d_300/Conv3D/ReadVariableOpReadVariableOp2model_64_conv3d_300_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_64/conv3d_300/Conv3D/ReadVariableOp�
model_64/conv3d_300/Conv3DConv3D%model_64/reshape_129/Reshape:output:01model_64/conv3d_300/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_64/conv3d_300/Conv3D�
*model_64/conv3d_300/BiasAdd/ReadVariableOpReadVariableOp3model_64_conv3d_300_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_64/conv3d_300/BiasAdd/ReadVariableOp�
model_64/conv3d_300/BiasAddBiasAdd#model_64/conv3d_300/Conv3D:output:02model_64/conv3d_300/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_64/conv3d_300/BiasAdd�
IdentityIdentity$model_64/conv3d_300/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_64/conv3d_300/BiasAdd/ReadVariableOp*^model_64/conv3d_300/Conv3D/ReadVariableOp)^model_64/dense_64/BiasAdd/ReadVariableOp(^model_64/dense_64/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2X
*model_64/conv3d_300/BiasAdd/ReadVariableOp*model_64/conv3d_300/BiasAdd/ReadVariableOp2V
)model_64/conv3d_300/Conv3D/ReadVariableOp)model_64/conv3d_300/Conv3D/ReadVariableOp2T
(model_64/dense_64/BiasAdd/ReadVariableOp(model_64/dense_64/BiasAdd/ReadVariableOp2R
'model_64/dense_64/MatMul/ReadVariableOp'model_64/dense_64/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
q
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_14549846

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
�
�
-__inference_conv3d_300_layer_call_fn_14550320

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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_145499122
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
�*
�
F__inference_model_64_layer_call_and_return_conditional_losses_14549919

inputs#
dense_64_14549880:  
dense_64_14549882: 1
conv3d_300_14549913:!
conv3d_300_14549915:
identity��"conv3d_300/StatefulPartitionedCall� dense_64/StatefulPartitionedCall�
0tf.__operators__.getitem_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_274/strided_slice/stack�
2tf.__operators__.getitem_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_274/strided_slice/stack_1�
2tf.__operators__.getitem_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_274/strided_slice/stack_2�
*tf.__operators__.getitem_274/strided_sliceStridedSliceinputs9tf.__operators__.getitem_274/strided_slice/stack:output:0;tf.__operators__.getitem_274/strided_slice/stack_1:output:0;tf.__operators__.getitem_274/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_274/strided_slice�
#range_conversion_64/PartitionedCallPartitionedCall3tf.__operators__.getitem_274/strided_slice:output:0*
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
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_145498462%
#range_conversion_64/PartitionedCall�
0tf.__operators__.getitem_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_275/strided_slice/stack�
2tf.__operators__.getitem_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_275/strided_slice/stack_1�
2tf.__operators__.getitem_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_275/strided_slice/stack_2�
*tf.__operators__.getitem_275/strided_sliceStridedSliceinputs9tf.__operators__.getitem_275/strided_slice/stack:output:0;tf.__operators__.getitem_275/strided_slice/stack_1:output:0;tf.__operators__.getitem_275/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_275/strided_slicex
tf.concat_339/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_339/concat/axis�
tf.concat_339/concatConcatV2,range_conversion_64/PartitionedCall:output:03tf.__operators__.getitem_275/strided_slice:output:0"tf.concat_339/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_339/concat�
reshape_128/PartitionedCallPartitionedCalltf.concat_339/concat:output:0*
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
I__inference_reshape_128_layer_call_and_return_conditional_losses_145498662
reshape_128/PartitionedCall�
 dense_64/StatefulPartitionedCallStatefulPartitionedCall$reshape_128/PartitionedCall:output:0dense_64_14549880dense_64_14549882*
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
F__inference_dense_64_layer_call_and_return_conditional_losses_145498792"
 dense_64/StatefulPartitionedCall�
reshape_129/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
I__inference_reshape_129_layer_call_and_return_conditional_losses_145499002
reshape_129/PartitionedCall�
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCall$reshape_129/PartitionedCall:output:0conv3d_300_14549913conv3d_300_14549915*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_145499122$
"conv3d_300/StatefulPartitionedCall�
IdentityIdentity+conv3d_300/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_300/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
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

conv3d_300<
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
*I&call_and_return_all_conditional_losses
J_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
regularization_losses
	variables
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
regularization_losses
	variables
trainable_variables
	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
 regularization_losses
!	variables
"trainable_variables
#	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
�

$kernel
%bias
&regularization_losses
'	variables
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
*layer_regularization_losses

+layers

regularization_losses
,layer_metrics
	variables
-non_trainable_variables
trainable_variables
.metrics
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
�
/layer_regularization_losses

0layers
regularization_losses
1layer_metrics
	variables
2non_trainable_variables
trainable_variables
3metrics
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
4layer_regularization_losses

5layers
regularization_losses
6layer_metrics
	variables
7non_trainable_variables
trainable_variables
8metrics
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
#:!   2dense_64/kernel
:  2dense_64/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
9layer_regularization_losses

:layers
regularization_losses
;layer_metrics
	variables
<non_trainable_variables
trainable_variables
=metrics
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
>layer_regularization_losses

?layers
 regularization_losses
@layer_metrics
!	variables
Anon_trainable_variables
"trainable_variables
Bmetrics
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_300/kernel
: 2conv3d_300/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
�
Clayer_regularization_losses

Dlayers
&regularization_losses
Elayer_metrics
'	variables
Fnon_trainable_variables
(trainable_variables
Gmetrics
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2�
+__inference_model_64_layer_call_fn_14549930
+__inference_model_64_layer_call_fn_14550116
+__inference_model_64_layer_call_fn_14550129
+__inference_model_64_layer_call_fn_14550034�
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
�2�
F__inference_model_64_layer_call_and_return_conditional_losses_14550183
F__inference_model_64_layer_call_and_return_conditional_losses_14550237
F__inference_model_64_layer_call_and_return_conditional_losses_14550061
F__inference_model_64_layer_call_and_return_conditional_losses_14550088�
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
#__inference__wrapped_model_14549823input"�
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
�2�
6__inference_range_conversion_64_layer_call_fn_14550242�
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
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_14550254�
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
.__inference_reshape_128_layer_call_fn_14550259�
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
I__inference_reshape_128_layer_call_and_return_conditional_losses_14550271�
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
+__inference_dense_64_layer_call_fn_14550280�
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
F__inference_dense_64_layer_call_and_return_conditional_losses_14550291�
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
.__inference_reshape_129_layer_call_fn_14550296�
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
I__inference_reshape_129_layer_call_and_return_conditional_losses_14550311�
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
-__inference_conv3d_300_layer_call_fn_14550320�
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_14550330�
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
&__inference_signature_wrapper_14550103input"�
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
#__inference__wrapped_model_14549823�$%:�7
0�-
+�(
input���������
� "C�@
>

conv3d_3000�-

conv3d_300����������
H__inference_conv3d_300_layer_call_and_return_conditional_losses_14550330t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_300_layer_call_fn_14550320g$%;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_64_layer_call_and_return_conditional_losses_14550291\/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� ~
+__inference_dense_64_layer_call_fn_14550280O/�,
%�"
 �
inputs��������� 
� "���������� �
F__inference_model_64_layer_call_and_return_conditional_losses_14550061}$%B�?
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
F__inference_model_64_layer_call_and_return_conditional_losses_14550088}$%B�?
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
F__inference_model_64_layer_call_and_return_conditional_losses_14550183~$%C�@
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
F__inference_model_64_layer_call_and_return_conditional_losses_14550237~$%C�@
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
+__inference_model_64_layer_call_fn_14549930p$%B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_64_layer_call_fn_14550034p$%B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_64_layer_call_fn_14550116q$%C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_64_layer_call_fn_14550129q$%C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_64_layer_call_and_return_conditional_losses_14550254t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_64_layer_call_fn_14550242g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_128_layer_call_and_return_conditional_losses_14550271d;�8
1�.
,�)
inputs���������
� "%�"
�
0��������� 
� �
.__inference_reshape_128_layer_call_fn_14550259W;�8
1�.
,�)
inputs���������
� "���������� �
I__inference_reshape_129_layer_call_and_return_conditional_losses_14550311d/�,
%�"
 �
inputs��������� 
� "1�.
'�$
0���������
� �
.__inference_reshape_129_layer_call_fn_14550296W/�,
%�"
 �
inputs��������� 
� "$�!����������
&__inference_signature_wrapper_14550103�$%C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_3000�-

conv3d_300���������