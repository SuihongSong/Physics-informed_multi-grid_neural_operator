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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:  *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
: *
dtype0
�
conv3d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_15/kernel
�
$conv3d_15/kernel/Read/ReadVariableOpReadVariableOpconv3d_15/kernel**
_output_shapes
:*
dtype0
t
conv3d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_15/bias
m
"conv3d_15/bias/Read/ReadVariableOpReadVariableOpconv3d_15/bias*
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
�
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
�
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
�
	variables
4layer_regularization_losses

5layers
trainable_variables
6non_trainable_variables
7metrics
8layer_metrics
regularization_losses
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
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
�
 	variables
>layer_regularization_losses

?layers
!trainable_variables
@non_trainable_variables
Ametrics
Blayer_metrics
"regularization_losses
\Z
VARIABLE_VALUEconv3d_15/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_15/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
�
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
�
serving_default_inputPlaceholder*3
_output_shapes!
:���������*
dtype0*(
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_7/kerneldense_7/biasconv3d_15/kernelconv3d_15/bias*
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
GPU2 *0,1,2,3J 8� *.
f)R'
%__inference_signature_wrapper_1620986
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp$conv3d_15/kernel/Read/ReadVariableOp"conv3d_15/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8� *)
f$R"
 __inference__traced_save_1621248
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_7/kerneldense_7/biasconv3d_15/kernelconv3d_15/bias*
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
GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__traced_restore_1621270��
�
�
F__inference_conv3d_15_layer_call_and_return_conditional_losses_1621213

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
�
D__inference_dense_7_layer_call_and_return_conditional_losses_1620762

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
�U
�
"__inference__wrapped_model_1620706	
input@
.model_7_dense_7_matmul_readvariableop_resource:  =
/model_7_dense_7_biasadd_readvariableop_resource: N
0model_7_conv3d_15_conv3d_readvariableop_resource:?
1model_7_conv3d_15_biasadd_readvariableop_resource:
identity��(model_7/conv3d_15/BiasAdd/ReadVariableOp�'model_7/conv3d_15/Conv3D/ReadVariableOp�&model_7/dense_7/BiasAdd/ReadVariableOp�%model_7/dense_7/MatMul/ReadVariableOp�
7model_7/tf.__operators__.getitem_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7model_7/tf.__operators__.getitem_12/strided_slice/stack�
9model_7/tf.__operators__.getitem_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2;
9model_7/tf.__operators__.getitem_12/strided_slice/stack_1�
9model_7/tf.__operators__.getitem_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9model_7/tf.__operators__.getitem_12/strided_slice/stack_2�
1model_7/tf.__operators__.getitem_12/strided_sliceStridedSliceinput@model_7/tf.__operators__.getitem_12/strided_slice/stack:output:0Bmodel_7/tf.__operators__.getitem_12/strided_slice/stack_1:output:0Bmodel_7/tf.__operators__.getitem_12/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask23
1model_7/tf.__operators__.getitem_12/strided_slice�
 model_7/range_conversion_7/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 model_7/range_conversion_7/sub/y�
model_7/range_conversion_7/subSub:model_7/tf.__operators__.getitem_12/strided_slice:output:0)model_7/range_conversion_7/sub/y:output:0*
T0*3
_output_shapes!
:���������2 
model_7/range_conversion_7/sub�
$model_7/range_conversion_7/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2&
$model_7/range_conversion_7/truediv/y�
"model_7/range_conversion_7/truedivRealDiv"model_7/range_conversion_7/sub:z:0-model_7/range_conversion_7/truediv/y:output:0*
T0*3
_output_shapes!
:���������2$
"model_7/range_conversion_7/truediv�
 model_7/range_conversion_7/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 model_7/range_conversion_7/mul/y�
model_7/range_conversion_7/mulMul&model_7/range_conversion_7/truediv:z:0)model_7/range_conversion_7/mul/y:output:0*
T0*3
_output_shapes!
:���������2 
model_7/range_conversion_7/mul�
 model_7/range_conversion_7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2"
 model_7/range_conversion_7/add/y�
model_7/range_conversion_7/addAddV2"model_7/range_conversion_7/mul:z:0)model_7/range_conversion_7/add/y:output:0*
T0*3
_output_shapes!
:���������2 
model_7/range_conversion_7/add�
7model_7/tf.__operators__.getitem_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       29
7model_7/tf.__operators__.getitem_13/strided_slice/stack�
9model_7/tf.__operators__.getitem_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2;
9model_7/tf.__operators__.getitem_13/strided_slice/stack_1�
9model_7/tf.__operators__.getitem_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9model_7/tf.__operators__.getitem_13/strided_slice/stack_2�
1model_7/tf.__operators__.getitem_13/strided_sliceStridedSliceinput@model_7/tf.__operators__.getitem_13/strided_slice/stack:output:0Bmodel_7/tf.__operators__.getitem_13/strided_slice/stack_1:output:0Bmodel_7/tf.__operators__.getitem_13/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask23
1model_7/tf.__operators__.getitem_13/strided_slice�
 model_7/tf.concat_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 model_7/tf.concat_10/concat/axis�
model_7/tf.concat_10/concatConcatV2"model_7/range_conversion_7/add:z:0:model_7/tf.__operators__.getitem_13/strided_slice:output:0)model_7/tf.concat_10/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_7/tf.concat_10/concat�
model_7/reshape_14/ShapeShape$model_7/tf.concat_10/concat:output:0*
T0*
_output_shapes
:2
model_7/reshape_14/Shape�
&model_7/reshape_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model_7/reshape_14/strided_slice/stack�
(model_7/reshape_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_7/reshape_14/strided_slice/stack_1�
(model_7/reshape_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_7/reshape_14/strided_slice/stack_2�
 model_7/reshape_14/strided_sliceStridedSlice!model_7/reshape_14/Shape:output:0/model_7/reshape_14/strided_slice/stack:output:01model_7/reshape_14/strided_slice/stack_1:output:01model_7/reshape_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model_7/reshape_14/strided_slice�
"model_7/reshape_14/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"model_7/reshape_14/Reshape/shape/1�
 model_7/reshape_14/Reshape/shapePack)model_7/reshape_14/strided_slice:output:0+model_7/reshape_14/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 model_7/reshape_14/Reshape/shape�
model_7/reshape_14/ReshapeReshape$model_7/tf.concat_10/concat:output:0)model_7/reshape_14/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
model_7/reshape_14/Reshape�
%model_7/dense_7/MatMul/ReadVariableOpReadVariableOp.model_7_dense_7_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02'
%model_7/dense_7/MatMul/ReadVariableOp�
model_7/dense_7/MatMulMatMul#model_7/reshape_14/Reshape:output:0-model_7/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_7/dense_7/MatMul�
&model_7/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_7_dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&model_7/dense_7/BiasAdd/ReadVariableOp�
model_7/dense_7/BiasAddBiasAdd model_7/dense_7/MatMul:product:0.model_7/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_7/dense_7/BiasAdd�
model_7/dense_7/SoftplusSoftplus model_7/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
model_7/dense_7/Softplus�
model_7/reshape_15/ShapeShape&model_7/dense_7/Softplus:activations:0*
T0*
_output_shapes
:2
model_7/reshape_15/Shape�
&model_7/reshape_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model_7/reshape_15/strided_slice/stack�
(model_7/reshape_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_7/reshape_15/strided_slice/stack_1�
(model_7/reshape_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_7/reshape_15/strided_slice/stack_2�
 model_7/reshape_15/strided_sliceStridedSlice!model_7/reshape_15/Shape:output:0/model_7/reshape_15/strided_slice/stack:output:01model_7/reshape_15/strided_slice/stack_1:output:01model_7/reshape_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model_7/reshape_15/strided_slice�
"model_7/reshape_15/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_7/reshape_15/Reshape/shape/1�
"model_7/reshape_15/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_7/reshape_15/Reshape/shape/2�
"model_7/reshape_15/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_7/reshape_15/Reshape/shape/3�
"model_7/reshape_15/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_7/reshape_15/Reshape/shape/4�
 model_7/reshape_15/Reshape/shapePack)model_7/reshape_15/strided_slice:output:0+model_7/reshape_15/Reshape/shape/1:output:0+model_7/reshape_15/Reshape/shape/2:output:0+model_7/reshape_15/Reshape/shape/3:output:0+model_7/reshape_15/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2"
 model_7/reshape_15/Reshape/shape�
model_7/reshape_15/ReshapeReshape&model_7/dense_7/Softplus:activations:0)model_7/reshape_15/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_7/reshape_15/Reshape�
'model_7/conv3d_15/Conv3D/ReadVariableOpReadVariableOp0model_7_conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_7/conv3d_15/Conv3D/ReadVariableOp�
model_7/conv3d_15/Conv3DConv3D#model_7/reshape_15/Reshape:output:0/model_7/conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_7/conv3d_15/Conv3D�
(model_7/conv3d_15/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_7/conv3d_15/BiasAdd/ReadVariableOp�
model_7/conv3d_15/BiasAddBiasAdd!model_7/conv3d_15/Conv3D:output:00model_7/conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_7/conv3d_15/BiasAdd�
IdentityIdentity"model_7/conv3d_15/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp)^model_7/conv3d_15/BiasAdd/ReadVariableOp(^model_7/conv3d_15/Conv3D/ReadVariableOp'^model_7/dense_7/BiasAdd/ReadVariableOp&^model_7/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2T
(model_7/conv3d_15/BiasAdd/ReadVariableOp(model_7/conv3d_15/BiasAdd/ReadVariableOp2R
'model_7/conv3d_15/Conv3D/ReadVariableOp'model_7/conv3d_15/Conv3D/ReadVariableOp2P
&model_7/dense_7/BiasAdd/ReadVariableOp&model_7/dense_7/BiasAdd/ReadVariableOp2N
%model_7/dense_7/MatMul/ReadVariableOp%model_7/dense_7/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�*
�
D__inference_model_7_layer_call_and_return_conditional_losses_1620971	
input!
dense_7_1620959:  
dense_7_1620961: /
conv3d_15_1620965:
conv3d_15_1620967:
identity��!conv3d_15/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
/tf.__operators__.getitem_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_12/strided_slice/stack�
1tf.__operators__.getitem_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_12/strided_slice/stack_1�
1tf.__operators__.getitem_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_12/strided_slice/stack_2�
)tf.__operators__.getitem_12/strided_sliceStridedSliceinput8tf.__operators__.getitem_12/strided_slice/stack:output:0:tf.__operators__.getitem_12/strided_slice/stack_1:output:0:tf.__operators__.getitem_12/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_12/strided_slice�
"range_conversion_7/PartitionedCallPartitionedCall2tf.__operators__.getitem_12/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_16207292$
"range_conversion_7/PartitionedCall�
/tf.__operators__.getitem_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_13/strided_slice/stack�
1tf.__operators__.getitem_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_13/strided_slice/stack_1�
1tf.__operators__.getitem_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_13/strided_slice/stack_2�
)tf.__operators__.getitem_13/strided_sliceStridedSliceinput8tf.__operators__.getitem_13/strided_slice/stack:output:0:tf.__operators__.getitem_13/strided_slice/stack_1:output:0:tf.__operators__.getitem_13/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_13/strided_slicev
tf.concat_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_10/concat/axis�
tf.concat_10/concatConcatV2+range_conversion_7/PartitionedCall:output:02tf.__operators__.getitem_13/strided_slice:output:0!tf.concat_10/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_10/concat�
reshape_14/PartitionedCallPartitionedCalltf.concat_10/concat:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_14_layer_call_and_return_conditional_losses_16207492
reshape_14/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall#reshape_14/PartitionedCall:output:0dense_7_1620959dense_7_1620961*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_16207622!
dense_7/StatefulPartitionedCall�
reshape_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_15_layer_call_and_return_conditional_losses_16207832
reshape_15/PartitionedCall�
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_15/PartitionedCall:output:0conv3d_15_1620965conv3d_15_1620967*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_16207952#
!conv3d_15/StatefulPartitionedCall�
IdentityIdentity*conv3d_15/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_15/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
�
)__inference_model_7_layer_call_fn_1620813	
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_16208022
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
�
�
)__inference_dense_7_layer_call_fn_1621163

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_16207622
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
�J
�
D__inference_model_7_layer_call_and_return_conditional_losses_1621120

inputs8
&dense_7_matmul_readvariableop_resource:  5
'dense_7_biasadd_readvariableop_resource: F
(conv3d_15_conv3d_readvariableop_resource:7
)conv3d_15_biasadd_readvariableop_resource:
identity�� conv3d_15/BiasAdd/ReadVariableOp�conv3d_15/Conv3D/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
/tf.__operators__.getitem_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_12/strided_slice/stack�
1tf.__operators__.getitem_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_12/strided_slice/stack_1�
1tf.__operators__.getitem_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_12/strided_slice/stack_2�
)tf.__operators__.getitem_12/strided_sliceStridedSliceinputs8tf.__operators__.getitem_12/strided_slice/stack:output:0:tf.__operators__.getitem_12/strided_slice/stack_1:output:0:tf.__operators__.getitem_12/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_12/strided_slicey
range_conversion_7/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_7/sub/y�
range_conversion_7/subSub2tf.__operators__.getitem_12/strided_slice:output:0!range_conversion_7/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/sub�
range_conversion_7/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_7/truediv/y�
range_conversion_7/truedivRealDivrange_conversion_7/sub:z:0%range_conversion_7/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/truedivy
range_conversion_7/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_7/mul/y�
range_conversion_7/mulMulrange_conversion_7/truediv:z:0!range_conversion_7/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/muly
range_conversion_7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_7/add/y�
range_conversion_7/addAddV2range_conversion_7/mul:z:0!range_conversion_7/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/add�
/tf.__operators__.getitem_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_13/strided_slice/stack�
1tf.__operators__.getitem_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_13/strided_slice/stack_1�
1tf.__operators__.getitem_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_13/strided_slice/stack_2�
)tf.__operators__.getitem_13/strided_sliceStridedSliceinputs8tf.__operators__.getitem_13/strided_slice/stack:output:0:tf.__operators__.getitem_13/strided_slice/stack_1:output:0:tf.__operators__.getitem_13/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_13/strided_slicev
tf.concat_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_10/concat/axis�
tf.concat_10/concatConcatV2range_conversion_7/add:z:02tf.__operators__.getitem_13/strided_slice:output:0!tf.concat_10/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_10/concatp
reshape_14/ShapeShapetf.concat_10/concat:output:0*
T0*
_output_shapes
:2
reshape_14/Shape�
reshape_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_14/strided_slice/stack�
 reshape_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_1�
 reshape_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_2�
reshape_14/strided_sliceStridedSlicereshape_14/Shape:output:0'reshape_14/strided_slice/stack:output:0)reshape_14/strided_slice/stack_1:output:0)reshape_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_14/strided_slicez
reshape_14/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_14/Reshape/shape/1�
reshape_14/Reshape/shapePack!reshape_14/strided_slice:output:0#reshape_14/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_14/Reshape/shape�
reshape_14/ReshapeReshapetf.concat_10/concat:output:0!reshape_14/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_14/Reshape�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_7/MatMul/ReadVariableOp�
dense_7/MatMulMatMulreshape_14/Reshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_7/MatMul�
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_7/BiasAdd/ReadVariableOp�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_7/BiasAdd|
dense_7/SoftplusSoftplusdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_7/Softplusr
reshape_15/ShapeShapedense_7/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_15/Shape�
reshape_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_15/strided_slice/stack�
 reshape_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_1�
 reshape_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_2�
reshape_15/strided_sliceStridedSlicereshape_15/Shape:output:0'reshape_15/strided_slice/stack:output:0)reshape_15/strided_slice/stack_1:output:0)reshape_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_15/strided_slicez
reshape_15/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/1z
reshape_15/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/2z
reshape_15/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/3z
reshape_15/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/4�
reshape_15/Reshape/shapePack!reshape_15/strided_slice:output:0#reshape_15/Reshape/shape/1:output:0#reshape_15/Reshape/shape/2:output:0#reshape_15/Reshape/shape/3:output:0#reshape_15/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_15/Reshape/shape�
reshape_15/ReshapeReshapedense_7/Softplus:activations:0!reshape_15/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_15/Reshape�
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_15/Conv3D/ReadVariableOp�
conv3d_15/Conv3DConv3Dreshape_15/Reshape:output:0'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_15/Conv3D�
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_15/BiasAdd/ReadVariableOp�
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_15/BiasAdd�
IdentityIdentityconv3d_15/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
#__inference__traced_restore_1621270
file_prefix1
assignvariableop_dense_7_kernel:  -
assignvariableop_1_dense_7_bias: A
#assignvariableop_2_conv3d_15_kernel:/
!assignvariableop_3_conv3d_15_bias:

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
AssignVariableOpAssignVariableOpassignvariableop_dense_7_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_7_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_15_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_15_biasIdentity_3:output:0"/device:CPU:0*
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
�
�
 __inference__traced_save_1621248
file_prefix-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop/
+savev2_conv3d_15_kernel_read_readvariableop-
)savev2_conv3d_15_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop+savev2_conv3d_15_kernel_read_readvariableop)savev2_conv3d_15_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
o
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_1620729

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
�*
�
D__inference_model_7_layer_call_and_return_conditional_losses_1620893

inputs!
dense_7_1620881:  
dense_7_1620883: /
conv3d_15_1620887:
conv3d_15_1620889:
identity��!conv3d_15/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
/tf.__operators__.getitem_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_12/strided_slice/stack�
1tf.__operators__.getitem_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_12/strided_slice/stack_1�
1tf.__operators__.getitem_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_12/strided_slice/stack_2�
)tf.__operators__.getitem_12/strided_sliceStridedSliceinputs8tf.__operators__.getitem_12/strided_slice/stack:output:0:tf.__operators__.getitem_12/strided_slice/stack_1:output:0:tf.__operators__.getitem_12/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_12/strided_slice�
"range_conversion_7/PartitionedCallPartitionedCall2tf.__operators__.getitem_12/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_16207292$
"range_conversion_7/PartitionedCall�
/tf.__operators__.getitem_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_13/strided_slice/stack�
1tf.__operators__.getitem_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_13/strided_slice/stack_1�
1tf.__operators__.getitem_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_13/strided_slice/stack_2�
)tf.__operators__.getitem_13/strided_sliceStridedSliceinputs8tf.__operators__.getitem_13/strided_slice/stack:output:0:tf.__operators__.getitem_13/strided_slice/stack_1:output:0:tf.__operators__.getitem_13/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_13/strided_slicev
tf.concat_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_10/concat/axis�
tf.concat_10/concatConcatV2+range_conversion_7/PartitionedCall:output:02tf.__operators__.getitem_13/strided_slice:output:0!tf.concat_10/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_10/concat�
reshape_14/PartitionedCallPartitionedCalltf.concat_10/concat:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_14_layer_call_and_return_conditional_losses_16207492
reshape_14/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall#reshape_14/PartitionedCall:output:0dense_7_1620881dense_7_1620883*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_16207622!
dense_7/StatefulPartitionedCall�
reshape_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_15_layer_call_and_return_conditional_losses_16207832
reshape_15/PartitionedCall�
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_15/PartitionedCall:output:0conv3d_15_1620887conv3d_15_1620889*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_16207952#
!conv3d_15/StatefulPartitionedCall�
IdentityIdentity*conv3d_15/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_15/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
c
G__inference_reshape_14_layer_call_and_return_conditional_losses_1621154

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
H
,__inference_reshape_15_layer_call_fn_1621179

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_15_layer_call_and_return_conditional_losses_16207832
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
�
H
,__inference_reshape_14_layer_call_fn_1621142

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_14_layer_call_and_return_conditional_losses_16207492
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
�
�
+__inference_conv3d_15_layer_call_fn_1621203

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_16207952
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
D__inference_model_7_layer_call_and_return_conditional_losses_1620944	
input!
dense_7_1620932:  
dense_7_1620934: /
conv3d_15_1620938:
conv3d_15_1620940:
identity��!conv3d_15/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
/tf.__operators__.getitem_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_12/strided_slice/stack�
1tf.__operators__.getitem_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_12/strided_slice/stack_1�
1tf.__operators__.getitem_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_12/strided_slice/stack_2�
)tf.__operators__.getitem_12/strided_sliceStridedSliceinput8tf.__operators__.getitem_12/strided_slice/stack:output:0:tf.__operators__.getitem_12/strided_slice/stack_1:output:0:tf.__operators__.getitem_12/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_12/strided_slice�
"range_conversion_7/PartitionedCallPartitionedCall2tf.__operators__.getitem_12/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_16207292$
"range_conversion_7/PartitionedCall�
/tf.__operators__.getitem_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_13/strided_slice/stack�
1tf.__operators__.getitem_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_13/strided_slice/stack_1�
1tf.__operators__.getitem_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_13/strided_slice/stack_2�
)tf.__operators__.getitem_13/strided_sliceStridedSliceinput8tf.__operators__.getitem_13/strided_slice/stack:output:0:tf.__operators__.getitem_13/strided_slice/stack_1:output:0:tf.__operators__.getitem_13/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_13/strided_slicev
tf.concat_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_10/concat/axis�
tf.concat_10/concatConcatV2+range_conversion_7/PartitionedCall:output:02tf.__operators__.getitem_13/strided_slice:output:0!tf.concat_10/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_10/concat�
reshape_14/PartitionedCallPartitionedCalltf.concat_10/concat:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_14_layer_call_and_return_conditional_losses_16207492
reshape_14/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall#reshape_14/PartitionedCall:output:0dense_7_1620932dense_7_1620934*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_16207622!
dense_7/StatefulPartitionedCall�
reshape_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_15_layer_call_and_return_conditional_losses_16207832
reshape_15/PartitionedCall�
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_15/PartitionedCall:output:0conv3d_15_1620938conv3d_15_1620940*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_16207952#
!conv3d_15/StatefulPartitionedCall�
IdentityIdentity*conv3d_15/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_15/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�*
�
D__inference_model_7_layer_call_and_return_conditional_losses_1620802

inputs!
dense_7_1620763:  
dense_7_1620765: /
conv3d_15_1620796:
conv3d_15_1620798:
identity��!conv3d_15/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
/tf.__operators__.getitem_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_12/strided_slice/stack�
1tf.__operators__.getitem_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_12/strided_slice/stack_1�
1tf.__operators__.getitem_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_12/strided_slice/stack_2�
)tf.__operators__.getitem_12/strided_sliceStridedSliceinputs8tf.__operators__.getitem_12/strided_slice/stack:output:0:tf.__operators__.getitem_12/strided_slice/stack_1:output:0:tf.__operators__.getitem_12/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_12/strided_slice�
"range_conversion_7/PartitionedCallPartitionedCall2tf.__operators__.getitem_12/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_16207292$
"range_conversion_7/PartitionedCall�
/tf.__operators__.getitem_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_13/strided_slice/stack�
1tf.__operators__.getitem_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_13/strided_slice/stack_1�
1tf.__operators__.getitem_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_13/strided_slice/stack_2�
)tf.__operators__.getitem_13/strided_sliceStridedSliceinputs8tf.__operators__.getitem_13/strided_slice/stack:output:0:tf.__operators__.getitem_13/strided_slice/stack_1:output:0:tf.__operators__.getitem_13/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_13/strided_slicev
tf.concat_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_10/concat/axis�
tf.concat_10/concatConcatV2+range_conversion_7/PartitionedCall:output:02tf.__operators__.getitem_13/strided_slice:output:0!tf.concat_10/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_10/concat�
reshape_14/PartitionedCallPartitionedCalltf.concat_10/concat:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_14_layer_call_and_return_conditional_losses_16207492
reshape_14/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall#reshape_14/PartitionedCall:output:0dense_7_1620763dense_7_1620765*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_16207622!
dense_7/StatefulPartitionedCall�
reshape_15/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_15_layer_call_and_return_conditional_losses_16207832
reshape_15/PartitionedCall�
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_15/PartitionedCall:output:0conv3d_15_1620796conv3d_15_1620798*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_16207952#
!conv3d_15/StatefulPartitionedCall�
IdentityIdentity*conv3d_15/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_15/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_15_layer_call_and_return_conditional_losses_1620795

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
�
)__inference_model_7_layer_call_fn_1620999

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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_16208022
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
c
G__inference_reshape_15_layer_call_and_return_conditional_losses_1620783

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
T
4__inference_range_conversion_7_layer_call_fn_1621125

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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_16207292
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
�
�
D__inference_dense_7_layer_call_and_return_conditional_losses_1621174

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
c
G__inference_reshape_15_layer_call_and_return_conditional_losses_1621194

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
o
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_1621137

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
c
G__inference_reshape_14_layer_call_and_return_conditional_losses_1620749

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
�J
�
D__inference_model_7_layer_call_and_return_conditional_losses_1621066

inputs8
&dense_7_matmul_readvariableop_resource:  5
'dense_7_biasadd_readvariableop_resource: F
(conv3d_15_conv3d_readvariableop_resource:7
)conv3d_15_biasadd_readvariableop_resource:
identity�� conv3d_15/BiasAdd/ReadVariableOp�conv3d_15/Conv3D/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
/tf.__operators__.getitem_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_12/strided_slice/stack�
1tf.__operators__.getitem_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_12/strided_slice/stack_1�
1tf.__operators__.getitem_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_12/strided_slice/stack_2�
)tf.__operators__.getitem_12/strided_sliceStridedSliceinputs8tf.__operators__.getitem_12/strided_slice/stack:output:0:tf.__operators__.getitem_12/strided_slice/stack_1:output:0:tf.__operators__.getitem_12/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_12/strided_slicey
range_conversion_7/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_7/sub/y�
range_conversion_7/subSub2tf.__operators__.getitem_12/strided_slice:output:0!range_conversion_7/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/sub�
range_conversion_7/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_7/truediv/y�
range_conversion_7/truedivRealDivrange_conversion_7/sub:z:0%range_conversion_7/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/truedivy
range_conversion_7/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_7/mul/y�
range_conversion_7/mulMulrange_conversion_7/truediv:z:0!range_conversion_7/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/muly
range_conversion_7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_7/add/y�
range_conversion_7/addAddV2range_conversion_7/mul:z:0!range_conversion_7/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_7/add�
/tf.__operators__.getitem_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_13/strided_slice/stack�
1tf.__operators__.getitem_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_13/strided_slice/stack_1�
1tf.__operators__.getitem_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_13/strided_slice/stack_2�
)tf.__operators__.getitem_13/strided_sliceStridedSliceinputs8tf.__operators__.getitem_13/strided_slice/stack:output:0:tf.__operators__.getitem_13/strided_slice/stack_1:output:0:tf.__operators__.getitem_13/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_13/strided_slicev
tf.concat_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_10/concat/axis�
tf.concat_10/concatConcatV2range_conversion_7/add:z:02tf.__operators__.getitem_13/strided_slice:output:0!tf.concat_10/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_10/concatp
reshape_14/ShapeShapetf.concat_10/concat:output:0*
T0*
_output_shapes
:2
reshape_14/Shape�
reshape_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_14/strided_slice/stack�
 reshape_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_1�
 reshape_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_2�
reshape_14/strided_sliceStridedSlicereshape_14/Shape:output:0'reshape_14/strided_slice/stack:output:0)reshape_14/strided_slice/stack_1:output:0)reshape_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_14/strided_slicez
reshape_14/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_14/Reshape/shape/1�
reshape_14/Reshape/shapePack!reshape_14/strided_slice:output:0#reshape_14/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_14/Reshape/shape�
reshape_14/ReshapeReshapetf.concat_10/concat:output:0!reshape_14/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_14/Reshape�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_7/MatMul/ReadVariableOp�
dense_7/MatMulMatMulreshape_14/Reshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_7/MatMul�
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_7/BiasAdd/ReadVariableOp�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_7/BiasAdd|
dense_7/SoftplusSoftplusdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_7/Softplusr
reshape_15/ShapeShapedense_7/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_15/Shape�
reshape_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_15/strided_slice/stack�
 reshape_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_1�
 reshape_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_2�
reshape_15/strided_sliceStridedSlicereshape_15/Shape:output:0'reshape_15/strided_slice/stack:output:0)reshape_15/strided_slice/stack_1:output:0)reshape_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_15/strided_slicez
reshape_15/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/1z
reshape_15/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/2z
reshape_15/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/3z
reshape_15/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/4�
reshape_15/Reshape/shapePack!reshape_15/strided_slice:output:0#reshape_15/Reshape/shape/1:output:0#reshape_15/Reshape/shape/2:output:0#reshape_15/Reshape/shape/3:output:0#reshape_15/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_15/Reshape/shape�
reshape_15/ReshapeReshapedense_7/Softplus:activations:0!reshape_15/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_15/Reshape�
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_15/Conv3D/ReadVariableOp�
conv3d_15/Conv3DConv3Dreshape_15/Reshape:output:0'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_15/Conv3D�
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_15/BiasAdd/ReadVariableOp�
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_15/BiasAdd�
IdentityIdentityconv3d_15/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_1620986	
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
GPU2 *0,1,2,3J 8� *+
f&R$
"__inference__wrapped_model_16207062
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
�
)__inference_model_7_layer_call_fn_1621012

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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_16208932
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
�	
�
)__inference_model_7_layer_call_fn_1620917	
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_16208932
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

_user_specified_nameinput"�L
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
serving_default_input:0���������I
	conv3d_15<
StatefulPartitionedCall:0���������tensorflow/serving/predict:�`
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
�
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
�
	variables
trainable_variables
regularization_losses
	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
�

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
�
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
�
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
�
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
":    2dense_7/kernel
:  2dense_7/bias
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
�
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
�
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
0:. 2conv3d_15/kernel
: 2conv3d_15/bias
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
�
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
�2�
)__inference_model_7_layer_call_fn_1620813
)__inference_model_7_layer_call_fn_1620999
)__inference_model_7_layer_call_fn_1621012
)__inference_model_7_layer_call_fn_1620917�
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
D__inference_model_7_layer_call_and_return_conditional_losses_1621066
D__inference_model_7_layer_call_and_return_conditional_losses_1621120
D__inference_model_7_layer_call_and_return_conditional_losses_1620944
D__inference_model_7_layer_call_and_return_conditional_losses_1620971�
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
"__inference__wrapped_model_1620706input"�
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
4__inference_range_conversion_7_layer_call_fn_1621125�
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
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_1621137�
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
,__inference_reshape_14_layer_call_fn_1621142�
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
G__inference_reshape_14_layer_call_and_return_conditional_losses_1621154�
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
)__inference_dense_7_layer_call_fn_1621163�
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
D__inference_dense_7_layer_call_and_return_conditional_losses_1621174�
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
,__inference_reshape_15_layer_call_fn_1621179�
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
G__inference_reshape_15_layer_call_and_return_conditional_losses_1621194�
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
+__inference_conv3d_15_layer_call_fn_1621203�
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
F__inference_conv3d_15_layer_call_and_return_conditional_losses_1621213�
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
%__inference_signature_wrapper_1620986input"�
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
"__inference__wrapped_model_1620706�$%:�7
0�-
+�(
input���������
� "A�>
<
	conv3d_15/�,
	conv3d_15����������
F__inference_conv3d_15_layer_call_and_return_conditional_losses_1621213t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_15_layer_call_fn_1621203g$%;�8
1�.
,�)
inputs���������
� "$�!����������
D__inference_dense_7_layer_call_and_return_conditional_losses_1621174\/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� |
)__inference_dense_7_layer_call_fn_1621163O/�,
%�"
 �
inputs��������� 
� "���������� �
D__inference_model_7_layer_call_and_return_conditional_losses_1620944}$%B�?
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
D__inference_model_7_layer_call_and_return_conditional_losses_1620971}$%B�?
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
D__inference_model_7_layer_call_and_return_conditional_losses_1621066~$%C�@
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
D__inference_model_7_layer_call_and_return_conditional_losses_1621120~$%C�@
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
)__inference_model_7_layer_call_fn_1620813p$%B�?
8�5
+�(
input���������
p 

 
� "$�!����������
)__inference_model_7_layer_call_fn_1620917p$%B�?
8�5
+�(
input���������
p

 
� "$�!����������
)__inference_model_7_layer_call_fn_1620999q$%C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
)__inference_model_7_layer_call_fn_1621012q$%C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
O__inference_range_conversion_7_layer_call_and_return_conditional_losses_1621137t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
4__inference_range_conversion_7_layer_call_fn_1621125g?�<
5�2
0�-

parameters���������
� "$�!����������
G__inference_reshape_14_layer_call_and_return_conditional_losses_1621154d;�8
1�.
,�)
inputs���������
� "%�"
�
0��������� 
� �
,__inference_reshape_14_layer_call_fn_1621142W;�8
1�.
,�)
inputs���������
� "���������� �
G__inference_reshape_15_layer_call_and_return_conditional_losses_1621194d/�,
%�"
 �
inputs��������� 
� "1�.
'�$
0���������
� �
,__inference_reshape_15_layer_call_fn_1621179W/�,
%�"
 �
inputs��������� 
� "$�!����������
%__inference_signature_wrapper_1620986�$%C�@
� 
9�6
4
input+�(
input���������"A�>
<
	conv3d_15/�,
	conv3d_15���������