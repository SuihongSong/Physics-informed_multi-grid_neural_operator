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
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:  *
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
: *
dtype0
�
conv3d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_63/kernel
�
$conv3d_63/kernel/Read/ReadVariableOpReadVariableOpconv3d_63/kernel**
_output_shapes
:*
dtype0
t
conv3d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_63/bias
m
"conv3d_63/bias/Read/ReadVariableOpReadVariableOpconv3d_63/bias*
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
VARIABLE_VALUEdense_15/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_63/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_63/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_15/kerneldense_15/biasconv3d_63/kernelconv3d_63/bias*
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
%__inference_signature_wrapper_3620859
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp$conv3d_63/kernel/Read/ReadVariableOp"conv3d_63/bias/Read/ReadVariableOpConst*
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
 __inference__traced_save_3621121
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_15/kerneldense_15/biasconv3d_63/kernelconv3d_63/bias*
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
#__inference__traced_restore_3621143��
�
�
%__inference_signature_wrapper_3620859	
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
"__inference__wrapped_model_36205792
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
�V
�
"__inference__wrapped_model_3620579	
inputB
0model_15_dense_15_matmul_readvariableop_resource:  ?
1model_15_dense_15_biasadd_readvariableop_resource: O
1model_15_conv3d_63_conv3d_readvariableop_resource:@
2model_15_conv3d_63_biasadd_readvariableop_resource:
identity��)model_15/conv3d_63/BiasAdd/ReadVariableOp�(model_15/conv3d_63/Conv3D/ReadVariableOp�(model_15/dense_15/BiasAdd/ReadVariableOp�'model_15/dense_15/MatMul/ReadVariableOp�
9model_15/tf.__operators__.getitem_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_15/tf.__operators__.getitem_176/strided_slice/stack�
;model_15/tf.__operators__.getitem_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_15/tf.__operators__.getitem_176/strided_slice/stack_1�
;model_15/tf.__operators__.getitem_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_15/tf.__operators__.getitem_176/strided_slice/stack_2�
3model_15/tf.__operators__.getitem_176/strided_sliceStridedSliceinputBmodel_15/tf.__operators__.getitem_176/strided_slice/stack:output:0Dmodel_15/tf.__operators__.getitem_176/strided_slice/stack_1:output:0Dmodel_15/tf.__operators__.getitem_176/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_15/tf.__operators__.getitem_176/strided_slice�
"model_15/range_conversion_15/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_15/range_conversion_15/sub/y�
 model_15/range_conversion_15/subSub<model_15/tf.__operators__.getitem_176/strided_slice:output:0+model_15/range_conversion_15/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_15/range_conversion_15/sub�
&model_15/range_conversion_15/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_15/range_conversion_15/truediv/y�
$model_15/range_conversion_15/truedivRealDiv$model_15/range_conversion_15/sub:z:0/model_15/range_conversion_15/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_15/range_conversion_15/truediv�
"model_15/range_conversion_15/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_15/range_conversion_15/mul/y�
 model_15/range_conversion_15/mulMul(model_15/range_conversion_15/truediv:z:0+model_15/range_conversion_15/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_15/range_conversion_15/mul�
"model_15/range_conversion_15/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_15/range_conversion_15/add/y�
 model_15/range_conversion_15/addAddV2$model_15/range_conversion_15/mul:z:0+model_15/range_conversion_15/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_15/range_conversion_15/add�
9model_15/tf.__operators__.getitem_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_15/tf.__operators__.getitem_177/strided_slice/stack�
;model_15/tf.__operators__.getitem_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_15/tf.__operators__.getitem_177/strided_slice/stack_1�
;model_15/tf.__operators__.getitem_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_15/tf.__operators__.getitem_177/strided_slice/stack_2�
3model_15/tf.__operators__.getitem_177/strided_sliceStridedSliceinputBmodel_15/tf.__operators__.getitem_177/strided_slice/stack:output:0Dmodel_15/tf.__operators__.getitem_177/strided_slice/stack_1:output:0Dmodel_15/tf.__operators__.getitem_177/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_15/tf.__operators__.getitem_177/strided_slice�
"model_15/tf.concat_196/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_15/tf.concat_196/concat/axis�
model_15/tf.concat_196/concatConcatV2$model_15/range_conversion_15/add:z:0<model_15/tf.__operators__.getitem_177/strided_slice:output:0+model_15/tf.concat_196/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_15/tf.concat_196/concat�
model_15/reshape_30/ShapeShape&model_15/tf.concat_196/concat:output:0*
T0*
_output_shapes
:2
model_15/reshape_30/Shape�
'model_15/reshape_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_15/reshape_30/strided_slice/stack�
)model_15/reshape_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/reshape_30/strided_slice/stack_1�
)model_15/reshape_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/reshape_30/strided_slice/stack_2�
!model_15/reshape_30/strided_sliceStridedSlice"model_15/reshape_30/Shape:output:00model_15/reshape_30/strided_slice/stack:output:02model_15/reshape_30/strided_slice/stack_1:output:02model_15/reshape_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_15/reshape_30/strided_slice�
#model_15/reshape_30/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_15/reshape_30/Reshape/shape/1�
!model_15/reshape_30/Reshape/shapePack*model_15/reshape_30/strided_slice:output:0,model_15/reshape_30/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_15/reshape_30/Reshape/shape�
model_15/reshape_30/ReshapeReshape&model_15/tf.concat_196/concat:output:0*model_15/reshape_30/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
model_15/reshape_30/Reshape�
'model_15/dense_15/MatMul/ReadVariableOpReadVariableOp0model_15_dense_15_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'model_15/dense_15/MatMul/ReadVariableOp�
model_15/dense_15/MatMulMatMul$model_15/reshape_30/Reshape:output:0/model_15/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_15/dense_15/MatMul�
(model_15/dense_15/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_15/dense_15/BiasAdd/ReadVariableOp�
model_15/dense_15/BiasAddBiasAdd"model_15/dense_15/MatMul:product:00model_15/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_15/dense_15/BiasAdd�
model_15/dense_15/SoftplusSoftplus"model_15/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
model_15/dense_15/Softplus�
model_15/reshape_31/ShapeShape(model_15/dense_15/Softplus:activations:0*
T0*
_output_shapes
:2
model_15/reshape_31/Shape�
'model_15/reshape_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_15/reshape_31/strided_slice/stack�
)model_15/reshape_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/reshape_31/strided_slice/stack_1�
)model_15/reshape_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_15/reshape_31/strided_slice/stack_2�
!model_15/reshape_31/strided_sliceStridedSlice"model_15/reshape_31/Shape:output:00model_15/reshape_31/strided_slice/stack:output:02model_15/reshape_31/strided_slice/stack_1:output:02model_15/reshape_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_15/reshape_31/strided_slice�
#model_15/reshape_31/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_15/reshape_31/Reshape/shape/1�
#model_15/reshape_31/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_15/reshape_31/Reshape/shape/2�
#model_15/reshape_31/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_15/reshape_31/Reshape/shape/3�
#model_15/reshape_31/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_15/reshape_31/Reshape/shape/4�
!model_15/reshape_31/Reshape/shapePack*model_15/reshape_31/strided_slice:output:0,model_15/reshape_31/Reshape/shape/1:output:0,model_15/reshape_31/Reshape/shape/2:output:0,model_15/reshape_31/Reshape/shape/3:output:0,model_15/reshape_31/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_15/reshape_31/Reshape/shape�
model_15/reshape_31/ReshapeReshape(model_15/dense_15/Softplus:activations:0*model_15/reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_15/reshape_31/Reshape�
(model_15/conv3d_63/Conv3D/ReadVariableOpReadVariableOp1model_15_conv3d_63_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_15/conv3d_63/Conv3D/ReadVariableOp�
model_15/conv3d_63/Conv3DConv3D$model_15/reshape_31/Reshape:output:00model_15/conv3d_63/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_15/conv3d_63/Conv3D�
)model_15/conv3d_63/BiasAdd/ReadVariableOpReadVariableOp2model_15_conv3d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_15/conv3d_63/BiasAdd/ReadVariableOp�
model_15/conv3d_63/BiasAddBiasAdd"model_15/conv3d_63/Conv3D:output:01model_15/conv3d_63/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_15/conv3d_63/BiasAdd�
IdentityIdentity#model_15/conv3d_63/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp*^model_15/conv3d_63/BiasAdd/ReadVariableOp)^model_15/conv3d_63/Conv3D/ReadVariableOp)^model_15/dense_15/BiasAdd/ReadVariableOp(^model_15/dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2V
)model_15/conv3d_63/BiasAdd/ReadVariableOp)model_15/conv3d_63/BiasAdd/ReadVariableOp2T
(model_15/conv3d_63/Conv3D/ReadVariableOp(model_15/conv3d_63/Conv3D/ReadVariableOp2T
(model_15/dense_15/BiasAdd/ReadVariableOp(model_15/dense_15/BiasAdd/ReadVariableOp2R
'model_15/dense_15/MatMul/ReadVariableOp'model_15/dense_15/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
p
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_3620602

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
H
,__inference_reshape_31_layer_call_fn_3621052

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
G__inference_reshape_31_layer_call_and_return_conditional_losses_36206562
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
E__inference_model_15_layer_call_and_return_conditional_losses_3620844	
input"
dense_15_3620832:  
dense_15_3620834: /
conv3d_63_3620838:
conv3d_63_3620840:
identity��!conv3d_63/StatefulPartitionedCall� dense_15/StatefulPartitionedCall�
0tf.__operators__.getitem_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_176/strided_slice/stack�
2tf.__operators__.getitem_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_176/strided_slice/stack_1�
2tf.__operators__.getitem_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_176/strided_slice/stack_2�
*tf.__operators__.getitem_176/strided_sliceStridedSliceinput9tf.__operators__.getitem_176/strided_slice/stack:output:0;tf.__operators__.getitem_176/strided_slice/stack_1:output:0;tf.__operators__.getitem_176/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_176/strided_slice�
#range_conversion_15/PartitionedCallPartitionedCall3tf.__operators__.getitem_176/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_36206022%
#range_conversion_15/PartitionedCall�
0tf.__operators__.getitem_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_177/strided_slice/stack�
2tf.__operators__.getitem_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_177/strided_slice/stack_1�
2tf.__operators__.getitem_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_177/strided_slice/stack_2�
*tf.__operators__.getitem_177/strided_sliceStridedSliceinput9tf.__operators__.getitem_177/strided_slice/stack:output:0;tf.__operators__.getitem_177/strided_slice/stack_1:output:0;tf.__operators__.getitem_177/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_177/strided_slicex
tf.concat_196/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_196/concat/axis�
tf.concat_196/concatConcatV2,range_conversion_15/PartitionedCall:output:03tf.__operators__.getitem_177/strided_slice:output:0"tf.concat_196/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_196/concat�
reshape_30/PartitionedCallPartitionedCalltf.concat_196/concat:output:0*
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
G__inference_reshape_30_layer_call_and_return_conditional_losses_36206222
reshape_30/PartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_30/PartitionedCall:output:0dense_15_3620832dense_15_3620834*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_36206352"
 dense_15/StatefulPartitionedCall�
reshape_31/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
G__inference_reshape_31_layer_call_and_return_conditional_losses_36206562
reshape_31/PartitionedCall�
!conv3d_63/StatefulPartitionedCallStatefulPartitionedCall#reshape_31/PartitionedCall:output:0conv3d_63_3620838conv3d_63_3620840*
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
F__inference_conv3d_63_layer_call_and_return_conditional_losses_36206682#
!conv3d_63/StatefulPartitionedCall�
IdentityIdentity*conv3d_63/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_63/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_63/StatefulPartitionedCall!conv3d_63/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�*
�
E__inference_model_15_layer_call_and_return_conditional_losses_3620766

inputs"
dense_15_3620754:  
dense_15_3620756: /
conv3d_63_3620760:
conv3d_63_3620762:
identity��!conv3d_63/StatefulPartitionedCall� dense_15/StatefulPartitionedCall�
0tf.__operators__.getitem_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_176/strided_slice/stack�
2tf.__operators__.getitem_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_176/strided_slice/stack_1�
2tf.__operators__.getitem_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_176/strided_slice/stack_2�
*tf.__operators__.getitem_176/strided_sliceStridedSliceinputs9tf.__operators__.getitem_176/strided_slice/stack:output:0;tf.__operators__.getitem_176/strided_slice/stack_1:output:0;tf.__operators__.getitem_176/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_176/strided_slice�
#range_conversion_15/PartitionedCallPartitionedCall3tf.__operators__.getitem_176/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_36206022%
#range_conversion_15/PartitionedCall�
0tf.__operators__.getitem_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_177/strided_slice/stack�
2tf.__operators__.getitem_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_177/strided_slice/stack_1�
2tf.__operators__.getitem_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_177/strided_slice/stack_2�
*tf.__operators__.getitem_177/strided_sliceStridedSliceinputs9tf.__operators__.getitem_177/strided_slice/stack:output:0;tf.__operators__.getitem_177/strided_slice/stack_1:output:0;tf.__operators__.getitem_177/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_177/strided_slicex
tf.concat_196/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_196/concat/axis�
tf.concat_196/concatConcatV2,range_conversion_15/PartitionedCall:output:03tf.__operators__.getitem_177/strided_slice:output:0"tf.concat_196/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_196/concat�
reshape_30/PartitionedCallPartitionedCalltf.concat_196/concat:output:0*
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
G__inference_reshape_30_layer_call_and_return_conditional_losses_36206222
reshape_30/PartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_30/PartitionedCall:output:0dense_15_3620754dense_15_3620756*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_36206352"
 dense_15/StatefulPartitionedCall�
reshape_31/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
G__inference_reshape_31_layer_call_and_return_conditional_losses_36206562
reshape_31/PartitionedCall�
!conv3d_63/StatefulPartitionedCallStatefulPartitionedCall#reshape_31/PartitionedCall:output:0conv3d_63_3620760conv3d_63_3620762*
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
F__inference_conv3d_63_layer_call_and_return_conditional_losses_36206682#
!conv3d_63/StatefulPartitionedCall�
IdentityIdentity*conv3d_63/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_63/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_63/StatefulPartitionedCall!conv3d_63/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
c
G__inference_reshape_30_layer_call_and_return_conditional_losses_3621027

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
c
G__inference_reshape_30_layer_call_and_return_conditional_losses_3620622

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
*__inference_model_15_layer_call_fn_3620872

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_36206752
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
E__inference_dense_15_layer_call_and_return_conditional_losses_3620635

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
�
�
#__inference__traced_restore_3621143
file_prefix2
 assignvariableop_dense_15_kernel:  .
 assignvariableop_1_dense_15_bias: A
#assignvariableop_2_conv3d_63_kernel:/
!assignvariableop_3_conv3d_63_bias:

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
AssignVariableOpAssignVariableOp assignvariableop_dense_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_63_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_63_biasIdentity_3:output:0"/device:CPU:0*
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
�*
�
E__inference_model_15_layer_call_and_return_conditional_losses_3620675

inputs"
dense_15_3620636:  
dense_15_3620638: /
conv3d_63_3620669:
conv3d_63_3620671:
identity��!conv3d_63/StatefulPartitionedCall� dense_15/StatefulPartitionedCall�
0tf.__operators__.getitem_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_176/strided_slice/stack�
2tf.__operators__.getitem_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_176/strided_slice/stack_1�
2tf.__operators__.getitem_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_176/strided_slice/stack_2�
*tf.__operators__.getitem_176/strided_sliceStridedSliceinputs9tf.__operators__.getitem_176/strided_slice/stack:output:0;tf.__operators__.getitem_176/strided_slice/stack_1:output:0;tf.__operators__.getitem_176/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_176/strided_slice�
#range_conversion_15/PartitionedCallPartitionedCall3tf.__operators__.getitem_176/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_36206022%
#range_conversion_15/PartitionedCall�
0tf.__operators__.getitem_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_177/strided_slice/stack�
2tf.__operators__.getitem_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_177/strided_slice/stack_1�
2tf.__operators__.getitem_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_177/strided_slice/stack_2�
*tf.__operators__.getitem_177/strided_sliceStridedSliceinputs9tf.__operators__.getitem_177/strided_slice/stack:output:0;tf.__operators__.getitem_177/strided_slice/stack_1:output:0;tf.__operators__.getitem_177/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_177/strided_slicex
tf.concat_196/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_196/concat/axis�
tf.concat_196/concatConcatV2,range_conversion_15/PartitionedCall:output:03tf.__operators__.getitem_177/strided_slice:output:0"tf.concat_196/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_196/concat�
reshape_30/PartitionedCallPartitionedCalltf.concat_196/concat:output:0*
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
G__inference_reshape_30_layer_call_and_return_conditional_losses_36206222
reshape_30/PartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_30/PartitionedCall:output:0dense_15_3620636dense_15_3620638*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_36206352"
 dense_15/StatefulPartitionedCall�
reshape_31/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
G__inference_reshape_31_layer_call_and_return_conditional_losses_36206562
reshape_31/PartitionedCall�
!conv3d_63/StatefulPartitionedCallStatefulPartitionedCall#reshape_31/PartitionedCall:output:0conv3d_63_3620669conv3d_63_3620671*
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
F__inference_conv3d_63_layer_call_and_return_conditional_losses_36206682#
!conv3d_63/StatefulPartitionedCall�
IdentityIdentity*conv3d_63/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_63/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_63/StatefulPartitionedCall!conv3d_63/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
c
G__inference_reshape_31_layer_call_and_return_conditional_losses_3621067

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
�
�
+__inference_conv3d_63_layer_call_fn_3621076

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
F__inference_conv3d_63_layer_call_and_return_conditional_losses_36206682
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
�
*__inference_model_15_layer_call_fn_3620885

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_36207662
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
�K
�
E__inference_model_15_layer_call_and_return_conditional_losses_3620939

inputs9
'dense_15_matmul_readvariableop_resource:  6
(dense_15_biasadd_readvariableop_resource: F
(conv3d_63_conv3d_readvariableop_resource:7
)conv3d_63_biasadd_readvariableop_resource:
identity�� conv3d_63/BiasAdd/ReadVariableOp�conv3d_63/Conv3D/ReadVariableOp�dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�
0tf.__operators__.getitem_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_176/strided_slice/stack�
2tf.__operators__.getitem_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_176/strided_slice/stack_1�
2tf.__operators__.getitem_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_176/strided_slice/stack_2�
*tf.__operators__.getitem_176/strided_sliceStridedSliceinputs9tf.__operators__.getitem_176/strided_slice/stack:output:0;tf.__operators__.getitem_176/strided_slice/stack_1:output:0;tf.__operators__.getitem_176/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_176/strided_slice{
range_conversion_15/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_15/sub/y�
range_conversion_15/subSub3tf.__operators__.getitem_176/strided_slice:output:0"range_conversion_15/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/sub�
range_conversion_15/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_15/truediv/y�
range_conversion_15/truedivRealDivrange_conversion_15/sub:z:0&range_conversion_15/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/truediv{
range_conversion_15/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_15/mul/y�
range_conversion_15/mulMulrange_conversion_15/truediv:z:0"range_conversion_15/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/mul{
range_conversion_15/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_15/add/y�
range_conversion_15/addAddV2range_conversion_15/mul:z:0"range_conversion_15/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/add�
0tf.__operators__.getitem_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_177/strided_slice/stack�
2tf.__operators__.getitem_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_177/strided_slice/stack_1�
2tf.__operators__.getitem_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_177/strided_slice/stack_2�
*tf.__operators__.getitem_177/strided_sliceStridedSliceinputs9tf.__operators__.getitem_177/strided_slice/stack:output:0;tf.__operators__.getitem_177/strided_slice/stack_1:output:0;tf.__operators__.getitem_177/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_177/strided_slicex
tf.concat_196/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_196/concat/axis�
tf.concat_196/concatConcatV2range_conversion_15/add:z:03tf.__operators__.getitem_177/strided_slice:output:0"tf.concat_196/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_196/concatq
reshape_30/ShapeShapetf.concat_196/concat:output:0*
T0*
_output_shapes
:2
reshape_30/Shape�
reshape_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_30/strided_slice/stack�
 reshape_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_30/strided_slice/stack_1�
 reshape_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_30/strided_slice/stack_2�
reshape_30/strided_sliceStridedSlicereshape_30/Shape:output:0'reshape_30/strided_slice/stack:output:0)reshape_30/strided_slice/stack_1:output:0)reshape_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_30/strided_slicez
reshape_30/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_30/Reshape/shape/1�
reshape_30/Reshape/shapePack!reshape_30/strided_slice:output:0#reshape_30/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_30/Reshape/shape�
reshape_30/ReshapeReshapetf.concat_196/concat:output:0!reshape_30/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_30/Reshape�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_15/MatMul/ReadVariableOp�
dense_15/MatMulMatMulreshape_30/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_15/MatMul�
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_15/BiasAdd/ReadVariableOp�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_15/BiasAdd
dense_15/SoftplusSoftplusdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_15/Softpluss
reshape_31/ShapeShapedense_15/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_31/Shape�
reshape_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_31/strided_slice/stack�
 reshape_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_31/strided_slice/stack_1�
 reshape_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_31/strided_slice/stack_2�
reshape_31/strided_sliceStridedSlicereshape_31/Shape:output:0'reshape_31/strided_slice/stack:output:0)reshape_31/strided_slice/stack_1:output:0)reshape_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_31/strided_slicez
reshape_31/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/1z
reshape_31/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/2z
reshape_31/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/3z
reshape_31/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/4�
reshape_31/Reshape/shapePack!reshape_31/strided_slice:output:0#reshape_31/Reshape/shape/1:output:0#reshape_31/Reshape/shape/2:output:0#reshape_31/Reshape/shape/3:output:0#reshape_31/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_31/Reshape/shape�
reshape_31/ReshapeReshapedense_15/Softplus:activations:0!reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_31/Reshape�
conv3d_63/Conv3D/ReadVariableOpReadVariableOp(conv3d_63_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_63/Conv3D/ReadVariableOp�
conv3d_63/Conv3DConv3Dreshape_31/Reshape:output:0'conv3d_63/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_63/Conv3D�
 conv3d_63/BiasAdd/ReadVariableOpReadVariableOp)conv3d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_63/BiasAdd/ReadVariableOp�
conv3d_63/BiasAddBiasAddconv3d_63/Conv3D:output:0(conv3d_63/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_63/BiasAdd�
IdentityIdentityconv3d_63/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_63/BiasAdd/ReadVariableOp ^conv3d_63/Conv3D/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2D
 conv3d_63/BiasAdd/ReadVariableOp conv3d_63/BiasAdd/ReadVariableOp2B
conv3d_63/Conv3D/ReadVariableOpconv3d_63/Conv3D/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�K
�
E__inference_model_15_layer_call_and_return_conditional_losses_3620993

inputs9
'dense_15_matmul_readvariableop_resource:  6
(dense_15_biasadd_readvariableop_resource: F
(conv3d_63_conv3d_readvariableop_resource:7
)conv3d_63_biasadd_readvariableop_resource:
identity�� conv3d_63/BiasAdd/ReadVariableOp�conv3d_63/Conv3D/ReadVariableOp�dense_15/BiasAdd/ReadVariableOp�dense_15/MatMul/ReadVariableOp�
0tf.__operators__.getitem_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_176/strided_slice/stack�
2tf.__operators__.getitem_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_176/strided_slice/stack_1�
2tf.__operators__.getitem_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_176/strided_slice/stack_2�
*tf.__operators__.getitem_176/strided_sliceStridedSliceinputs9tf.__operators__.getitem_176/strided_slice/stack:output:0;tf.__operators__.getitem_176/strided_slice/stack_1:output:0;tf.__operators__.getitem_176/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_176/strided_slice{
range_conversion_15/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_15/sub/y�
range_conversion_15/subSub3tf.__operators__.getitem_176/strided_slice:output:0"range_conversion_15/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/sub�
range_conversion_15/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_15/truediv/y�
range_conversion_15/truedivRealDivrange_conversion_15/sub:z:0&range_conversion_15/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/truediv{
range_conversion_15/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_15/mul/y�
range_conversion_15/mulMulrange_conversion_15/truediv:z:0"range_conversion_15/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/mul{
range_conversion_15/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_15/add/y�
range_conversion_15/addAddV2range_conversion_15/mul:z:0"range_conversion_15/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_15/add�
0tf.__operators__.getitem_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_177/strided_slice/stack�
2tf.__operators__.getitem_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_177/strided_slice/stack_1�
2tf.__operators__.getitem_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_177/strided_slice/stack_2�
*tf.__operators__.getitem_177/strided_sliceStridedSliceinputs9tf.__operators__.getitem_177/strided_slice/stack:output:0;tf.__operators__.getitem_177/strided_slice/stack_1:output:0;tf.__operators__.getitem_177/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_177/strided_slicex
tf.concat_196/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_196/concat/axis�
tf.concat_196/concatConcatV2range_conversion_15/add:z:03tf.__operators__.getitem_177/strided_slice:output:0"tf.concat_196/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_196/concatq
reshape_30/ShapeShapetf.concat_196/concat:output:0*
T0*
_output_shapes
:2
reshape_30/Shape�
reshape_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_30/strided_slice/stack�
 reshape_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_30/strided_slice/stack_1�
 reshape_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_30/strided_slice/stack_2�
reshape_30/strided_sliceStridedSlicereshape_30/Shape:output:0'reshape_30/strided_slice/stack:output:0)reshape_30/strided_slice/stack_1:output:0)reshape_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_30/strided_slicez
reshape_30/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_30/Reshape/shape/1�
reshape_30/Reshape/shapePack!reshape_30/strided_slice:output:0#reshape_30/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_30/Reshape/shape�
reshape_30/ReshapeReshapetf.concat_196/concat:output:0!reshape_30/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_30/Reshape�
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_15/MatMul/ReadVariableOp�
dense_15/MatMulMatMulreshape_30/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_15/MatMul�
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_15/BiasAdd/ReadVariableOp�
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_15/BiasAdd
dense_15/SoftplusSoftplusdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_15/Softpluss
reshape_31/ShapeShapedense_15/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_31/Shape�
reshape_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_31/strided_slice/stack�
 reshape_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_31/strided_slice/stack_1�
 reshape_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_31/strided_slice/stack_2�
reshape_31/strided_sliceStridedSlicereshape_31/Shape:output:0'reshape_31/strided_slice/stack:output:0)reshape_31/strided_slice/stack_1:output:0)reshape_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_31/strided_slicez
reshape_31/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/1z
reshape_31/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/2z
reshape_31/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/3z
reshape_31/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_31/Reshape/shape/4�
reshape_31/Reshape/shapePack!reshape_31/strided_slice:output:0#reshape_31/Reshape/shape/1:output:0#reshape_31/Reshape/shape/2:output:0#reshape_31/Reshape/shape/3:output:0#reshape_31/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_31/Reshape/shape�
reshape_31/ReshapeReshapedense_15/Softplus:activations:0!reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_31/Reshape�
conv3d_63/Conv3D/ReadVariableOpReadVariableOp(conv3d_63_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_63/Conv3D/ReadVariableOp�
conv3d_63/Conv3DConv3Dreshape_31/Reshape:output:0'conv3d_63/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_63/Conv3D�
 conv3d_63/BiasAdd/ReadVariableOpReadVariableOp)conv3d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_63/BiasAdd/ReadVariableOp�
conv3d_63/BiasAddBiasAddconv3d_63/Conv3D:output:0(conv3d_63/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_63/BiasAdd�
IdentityIdentityconv3d_63/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_63/BiasAdd/ReadVariableOp ^conv3d_63/Conv3D/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2D
 conv3d_63/BiasAdd/ReadVariableOp conv3d_63/BiasAdd/ReadVariableOp2B
conv3d_63/Conv3D/ReadVariableOpconv3d_63/Conv3D/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_63_layer_call_and_return_conditional_losses_3621086

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
E__inference_model_15_layer_call_and_return_conditional_losses_3620817	
input"
dense_15_3620805:  
dense_15_3620807: /
conv3d_63_3620811:
conv3d_63_3620813:
identity��!conv3d_63/StatefulPartitionedCall� dense_15/StatefulPartitionedCall�
0tf.__operators__.getitem_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_176/strided_slice/stack�
2tf.__operators__.getitem_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_176/strided_slice/stack_1�
2tf.__operators__.getitem_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_176/strided_slice/stack_2�
*tf.__operators__.getitem_176/strided_sliceStridedSliceinput9tf.__operators__.getitem_176/strided_slice/stack:output:0;tf.__operators__.getitem_176/strided_slice/stack_1:output:0;tf.__operators__.getitem_176/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_176/strided_slice�
#range_conversion_15/PartitionedCallPartitionedCall3tf.__operators__.getitem_176/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_36206022%
#range_conversion_15/PartitionedCall�
0tf.__operators__.getitem_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_177/strided_slice/stack�
2tf.__operators__.getitem_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_177/strided_slice/stack_1�
2tf.__operators__.getitem_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_177/strided_slice/stack_2�
*tf.__operators__.getitem_177/strided_sliceStridedSliceinput9tf.__operators__.getitem_177/strided_slice/stack:output:0;tf.__operators__.getitem_177/strided_slice/stack_1:output:0;tf.__operators__.getitem_177/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_177/strided_slicex
tf.concat_196/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_196/concat/axis�
tf.concat_196/concatConcatV2,range_conversion_15/PartitionedCall:output:03tf.__operators__.getitem_177/strided_slice:output:0"tf.concat_196/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_196/concat�
reshape_30/PartitionedCallPartitionedCalltf.concat_196/concat:output:0*
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
G__inference_reshape_30_layer_call_and_return_conditional_losses_36206222
reshape_30/PartitionedCall�
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#reshape_30/PartitionedCall:output:0dense_15_3620805dense_15_3620807*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_36206352"
 dense_15/StatefulPartitionedCall�
reshape_31/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
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
G__inference_reshape_31_layer_call_and_return_conditional_losses_36206562
reshape_31/PartitionedCall�
!conv3d_63/StatefulPartitionedCallStatefulPartitionedCall#reshape_31/PartitionedCall:output:0conv3d_63_3620811conv3d_63_3620813*
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
F__inference_conv3d_63_layer_call_and_return_conditional_losses_36206682#
!conv3d_63/StatefulPartitionedCall�
IdentityIdentity*conv3d_63/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_63/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : 2F
!conv3d_63/StatefulPartitionedCall!conv3d_63/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
*__inference_dense_15_layer_call_fn_3621036

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_36206352
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
*__inference_model_15_layer_call_fn_3620686	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_36206752
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
�
U
5__inference_range_conversion_15_layer_call_fn_3620998

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_36206022
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
�
H
,__inference_reshape_30_layer_call_fn_3621015

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
G__inference_reshape_30_layer_call_and_return_conditional_losses_36206222
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
p
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_3621010

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
�
F__inference_conv3d_63_layer_call_and_return_conditional_losses_3620668

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
*__inference_model_15_layer_call_fn_3620790	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_36207662
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
 __inference__traced_save_3621121
file_prefix.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop/
+savev2_conv3d_63_kernel_read_readvariableop-
)savev2_conv3d_63_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop+savev2_conv3d_63_kernel_read_readvariableop)savev2_conv3d_63_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
c
G__inference_reshape_31_layer_call_and_return_conditional_losses_3620656

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
�
E__inference_dense_15_layer_call_and_return_conditional_losses_3621047

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
serving_default_input:0���������I
	conv3d_63<
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
#:!   2dense_15/kernel
:  2dense_15/bias
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
0:. 2conv3d_63/kernel
: 2conv3d_63/bias
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
*__inference_model_15_layer_call_fn_3620686
*__inference_model_15_layer_call_fn_3620872
*__inference_model_15_layer_call_fn_3620885
*__inference_model_15_layer_call_fn_3620790�
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
E__inference_model_15_layer_call_and_return_conditional_losses_3620939
E__inference_model_15_layer_call_and_return_conditional_losses_3620993
E__inference_model_15_layer_call_and_return_conditional_losses_3620817
E__inference_model_15_layer_call_and_return_conditional_losses_3620844�
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
"__inference__wrapped_model_3620579input"�
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
5__inference_range_conversion_15_layer_call_fn_3620998�
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
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_3621010�
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
,__inference_reshape_30_layer_call_fn_3621015�
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
G__inference_reshape_30_layer_call_and_return_conditional_losses_3621027�
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
*__inference_dense_15_layer_call_fn_3621036�
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
E__inference_dense_15_layer_call_and_return_conditional_losses_3621047�
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
,__inference_reshape_31_layer_call_fn_3621052�
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
G__inference_reshape_31_layer_call_and_return_conditional_losses_3621067�
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
+__inference_conv3d_63_layer_call_fn_3621076�
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
F__inference_conv3d_63_layer_call_and_return_conditional_losses_3621086�
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
%__inference_signature_wrapper_3620859input"�
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
"__inference__wrapped_model_3620579�$%:�7
0�-
+�(
input���������
� "A�>
<
	conv3d_63/�,
	conv3d_63����������
F__inference_conv3d_63_layer_call_and_return_conditional_losses_3621086t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_63_layer_call_fn_3621076g$%;�8
1�.
,�)
inputs���������
� "$�!����������
E__inference_dense_15_layer_call_and_return_conditional_losses_3621047\/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� }
*__inference_dense_15_layer_call_fn_3621036O/�,
%�"
 �
inputs��������� 
� "���������� �
E__inference_model_15_layer_call_and_return_conditional_losses_3620817}$%B�?
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
E__inference_model_15_layer_call_and_return_conditional_losses_3620844}$%B�?
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
E__inference_model_15_layer_call_and_return_conditional_losses_3620939~$%C�@
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
E__inference_model_15_layer_call_and_return_conditional_losses_3620993~$%C�@
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
*__inference_model_15_layer_call_fn_3620686p$%B�?
8�5
+�(
input���������
p 

 
� "$�!����������
*__inference_model_15_layer_call_fn_3620790p$%B�?
8�5
+�(
input���������
p

 
� "$�!����������
*__inference_model_15_layer_call_fn_3620872q$%C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
*__inference_model_15_layer_call_fn_3620885q$%C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
P__inference_range_conversion_15_layer_call_and_return_conditional_losses_3621010t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
5__inference_range_conversion_15_layer_call_fn_3620998g?�<
5�2
0�-

parameters���������
� "$�!����������
G__inference_reshape_30_layer_call_and_return_conditional_losses_3621027d;�8
1�.
,�)
inputs���������
� "%�"
�
0��������� 
� �
,__inference_reshape_30_layer_call_fn_3621015W;�8
1�.
,�)
inputs���������
� "���������� �
G__inference_reshape_31_layer_call_and_return_conditional_losses_3621067d/�,
%�"
 �
inputs��������� 
� "1�.
'�$
0���������
� �
,__inference_reshape_31_layer_call_fn_3621052W/�,
%�"
 �
inputs��������� 
� "$�!����������
%__inference_signature_wrapper_3620859�$%C�@
� 
9�6
4
input+�(
input���������"A�>
<
	conv3d_63/�,
	conv3d_63���������