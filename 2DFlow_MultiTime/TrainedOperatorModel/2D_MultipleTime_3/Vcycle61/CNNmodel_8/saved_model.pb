��	
��
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
�
	AvgPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv3d_264/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_264/kernel
�
%conv3d_264/kernel/Read/ReadVariableOpReadVariableOpconv3d_264/kernel**
_output_shapes
:*
dtype0
v
conv3d_264/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_264/bias
o
#conv3d_264/bias/Read/ReadVariableOpReadVariableOpconv3d_264/bias*
_output_shapes
:*
dtype0
z
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_50/kernel
s
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes

:@@*
dtype0
r
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_50/bias
k
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes
:@*
dtype0
�
conv3d_265/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_265/kernel
�
%conv3d_265/kernel/Read/ReadVariableOpReadVariableOpconv3d_265/kernel**
_output_shapes
:*
dtype0
v
conv3d_265/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_265/bias
o
#conv3d_265/bias/Read/ReadVariableOpReadVariableOpconv3d_265/bias*
_output_shapes
:*
dtype0
�
conv3d_266/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_266/kernel
�
%conv3d_266/kernel/Read/ReadVariableOpReadVariableOpconv3d_266/kernel**
_output_shapes
:*
dtype0
v
conv3d_266/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_266/bias
o
#conv3d_266/bias/Read/ReadVariableOpReadVariableOpconv3d_266/bias*
_output_shapes
:*
dtype0

NoOpNoOp
� 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*� 
value� B�  B� 
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer-7
	layer_with_weights-1
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 

	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api

	keras_api

	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
R
'	variables
(regularization_losses
)trainable_variables
*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
R
1	variables
2regularization_losses
3trainable_variables
4	keras_api

5	keras_api

6	keras_api

7	keras_api

8	keras_api
h

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
h

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
 
8
0
1
+2
,3
94
:5
?6
@7
8
0
1
+2
,3
94
:5
?6
@7
�
Enon_trainable_variables
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
regularization_losses

Ilayers
	variables
trainable_variables
 
 
 
 
 
�
Jnon_trainable_variables
	variables
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
regularization_losses

Nlayers
trainable_variables
 
 
][
VARIABLE_VALUEconv3d_264/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_264/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
Onon_trainable_variables
	variables
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
 regularization_losses

Slayers
!trainable_variables
 
 
 
�
Tnon_trainable_variables
#	variables
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
$regularization_losses

Xlayers
%trainable_variables
 
 
 
�
Ynon_trainable_variables
'	variables
Zmetrics
[layer_regularization_losses
\layer_metrics
(regularization_losses

]layers
)trainable_variables
[Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_50/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
�
^non_trainable_variables
-	variables
_metrics
`layer_regularization_losses
alayer_metrics
.regularization_losses

blayers
/trainable_variables
 
 
 
�
cnon_trainable_variables
1	variables
dmetrics
elayer_regularization_losses
flayer_metrics
2regularization_losses

glayers
3trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_265/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_265/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
�
hnon_trainable_variables
;	variables
imetrics
jlayer_regularization_losses
klayer_metrics
<regularization_losses

llayers
=trainable_variables
][
VARIABLE_VALUEconv3d_266/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_266/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
�
mnon_trainable_variables
A	variables
nmetrics
olayer_regularization_losses
player_metrics
Bregularization_losses

qlayers
Ctrainable_variables
 
 
 
 
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
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
:���������*
dtype0*(
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_264/kernelconv3d_264/biasdense_50/kerneldense_50/biasconv3d_265/kernelconv3d_265/biasconv3d_266/kernelconv3d_266/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� */
f*R(
&__inference_signature_wrapper_14223798
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_264/kernel/Read/ReadVariableOp#conv3d_264/bias/Read/ReadVariableOp#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp%conv3d_265/kernel/Read/ReadVariableOp#conv3d_265/bias/Read/ReadVariableOp%conv3d_266/kernel/Read/ReadVariableOp#conv3d_266/bias/Read/ReadVariableOpConst*
Tin
2
*
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
!__inference__traced_save_14224210
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_264/kernelconv3d_264/biasdense_50/kerneldense_50/biasconv3d_265/kernelconv3d_265/biasconv3d_266/kernelconv3d_266/bias*
Tin
2	*
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
$__inference__traced_restore_14224244��
�	
q
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_14223367

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
Ƈ
�
#__inference__wrapped_model_14223314	
inputP
2model_50_conv3d_264_conv3d_readvariableop_resource:A
3model_50_conv3d_264_biasadd_readvariableop_resource:B
0model_50_dense_50_matmul_readvariableop_resource:@@?
1model_50_dense_50_biasadd_readvariableop_resource:@P
2model_50_conv3d_265_conv3d_readvariableop_resource:A
3model_50_conv3d_265_biasadd_readvariableop_resource:P
2model_50_conv3d_266_conv3d_readvariableop_resource:A
3model_50_conv3d_266_biasadd_readvariableop_resource:
identity��*model_50/conv3d_264/BiasAdd/ReadVariableOp�)model_50/conv3d_264/Conv3D/ReadVariableOp�*model_50/conv3d_265/BiasAdd/ReadVariableOp�)model_50/conv3d_265/Conv3D/ReadVariableOp�*model_50/conv3d_266/BiasAdd/ReadVariableOp�)model_50/conv3d_266/Conv3D/ReadVariableOp�(model_50/dense_50/BiasAdd/ReadVariableOp�'model_50/dense_50/MatMul/ReadVariableOp�
9model_50/tf.__operators__.getitem_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_50/tf.__operators__.getitem_436/strided_slice/stack�
;model_50/tf.__operators__.getitem_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_50/tf.__operators__.getitem_436/strided_slice/stack_1�
;model_50/tf.__operators__.getitem_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_50/tf.__operators__.getitem_436/strided_slice/stack_2�
3model_50/tf.__operators__.getitem_436/strided_sliceStridedSliceinputBmodel_50/tf.__operators__.getitem_436/strided_slice/stack:output:0Dmodel_50/tf.__operators__.getitem_436/strided_slice/stack_1:output:0Dmodel_50/tf.__operators__.getitem_436/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_50/tf.__operators__.getitem_436/strided_slice�
"model_50/range_conversion_50/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_50/range_conversion_50/sub/y�
 model_50/range_conversion_50/subSub<model_50/tf.__operators__.getitem_436/strided_slice:output:0+model_50/range_conversion_50/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_50/range_conversion_50/sub�
&model_50/range_conversion_50/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_50/range_conversion_50/truediv/y�
$model_50/range_conversion_50/truedivRealDiv$model_50/range_conversion_50/sub:z:0/model_50/range_conversion_50/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_50/range_conversion_50/truediv�
"model_50/range_conversion_50/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_50/range_conversion_50/mul/y�
 model_50/range_conversion_50/mulMul(model_50/range_conversion_50/truediv:z:0+model_50/range_conversion_50/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_50/range_conversion_50/mul�
"model_50/range_conversion_50/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_50/range_conversion_50/add/y�
 model_50/range_conversion_50/addAddV2$model_50/range_conversion_50/mul:z:0+model_50/range_conversion_50/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_50/range_conversion_50/add�
9model_50/tf.__operators__.getitem_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_50/tf.__operators__.getitem_437/strided_slice/stack�
;model_50/tf.__operators__.getitem_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_50/tf.__operators__.getitem_437/strided_slice/stack_1�
;model_50/tf.__operators__.getitem_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_50/tf.__operators__.getitem_437/strided_slice/stack_2�
3model_50/tf.__operators__.getitem_437/strided_sliceStridedSliceinputBmodel_50/tf.__operators__.getitem_437/strided_slice/stack:output:0Dmodel_50/tf.__operators__.getitem_437/strided_slice/stack_1:output:0Dmodel_50/tf.__operators__.getitem_437/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_50/tf.__operators__.getitem_437/strided_slice�
"model_50/tf.concat_587/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_50/tf.concat_587/concat/axis�
model_50/tf.concat_587/concatConcatV2$model_50/range_conversion_50/add:z:0<model_50/tf.__operators__.getitem_437/strided_slice:output:0+model_50/tf.concat_587/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_50/tf.concat_587/concat�
)model_50/conv3d_264/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_264_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_264/Conv3D/ReadVariableOp�
model_50/conv3d_264/Conv3DConv3D&model_50/tf.concat_587/concat:output:01model_50/conv3d_264/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_264/Conv3D�
*model_50/conv3d_264/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_264_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_264/BiasAdd/ReadVariableOp�
model_50/conv3d_264/BiasAddBiasAdd#model_50/conv3d_264/Conv3D:output:02model_50/conv3d_264/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_50/conv3d_264/BiasAdd�
model_50/conv3d_264/SoftplusSoftplus$model_50/conv3d_264/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_50/conv3d_264/Softplus�
-model_50/average_pooling3d_107/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_50/average_pooling3d_107/transpose/perm�
(model_50/average_pooling3d_107/transpose	Transpose*model_50/conv3d_264/Softplus:activations:06model_50/average_pooling3d_107/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_50/average_pooling3d_107/transpose�
(model_50/average_pooling3d_107/AvgPool3D	AvgPool3D,model_50/average_pooling3d_107/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_50/average_pooling3d_107/AvgPool3D�
/model_50/average_pooling3d_107/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_50/average_pooling3d_107/transpose_1/perm�
*model_50/average_pooling3d_107/transpose_1	Transpose1model_50/average_pooling3d_107/AvgPool3D:output:08model_50/average_pooling3d_107/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_50/average_pooling3d_107/transpose_1�
model_50/reshape_100/ShapeShape.model_50/average_pooling3d_107/transpose_1:y:0*
T0*
_output_shapes
:2
model_50/reshape_100/Shape�
(model_50/reshape_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_50/reshape_100/strided_slice/stack�
*model_50/reshape_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_100/strided_slice/stack_1�
*model_50/reshape_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_100/strided_slice/stack_2�
"model_50/reshape_100/strided_sliceStridedSlice#model_50/reshape_100/Shape:output:01model_50/reshape_100/strided_slice/stack:output:03model_50/reshape_100/strided_slice/stack_1:output:03model_50/reshape_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_50/reshape_100/strided_slice�
$model_50/reshape_100/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_50/reshape_100/Reshape/shape/1�
"model_50/reshape_100/Reshape/shapePack+model_50/reshape_100/strided_slice:output:0-model_50/reshape_100/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_50/reshape_100/Reshape/shape�
model_50/reshape_100/ReshapeReshape.model_50/average_pooling3d_107/transpose_1:y:0+model_50/reshape_100/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_50/reshape_100/Reshape�
'model_50/dense_50/MatMul/ReadVariableOpReadVariableOp0model_50_dense_50_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_50/dense_50/MatMul/ReadVariableOp�
model_50/dense_50/MatMulMatMul%model_50/reshape_100/Reshape:output:0/model_50/dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_50/dense_50/MatMul�
(model_50/dense_50/BiasAdd/ReadVariableOpReadVariableOp1model_50_dense_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_50/dense_50/BiasAdd/ReadVariableOp�
model_50/dense_50/BiasAddBiasAdd"model_50/dense_50/MatMul:product:00model_50/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_50/dense_50/BiasAdd�
model_50/dense_50/SoftplusSoftplus"model_50/dense_50/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_50/dense_50/Softplus�
model_50/reshape_101/ShapeShape(model_50/dense_50/Softplus:activations:0*
T0*
_output_shapes
:2
model_50/reshape_101/Shape�
(model_50/reshape_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_50/reshape_101/strided_slice/stack�
*model_50/reshape_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_101/strided_slice/stack_1�
*model_50/reshape_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_101/strided_slice/stack_2�
"model_50/reshape_101/strided_sliceStridedSlice#model_50/reshape_101/Shape:output:01model_50/reshape_101/strided_slice/stack:output:03model_50/reshape_101/strided_slice/stack_1:output:03model_50/reshape_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_50/reshape_101/strided_slice�
$model_50/reshape_101/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/1�
$model_50/reshape_101/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/2�
$model_50/reshape_101/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/3�
$model_50/reshape_101/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/4�
"model_50/reshape_101/Reshape/shapePack+model_50/reshape_101/strided_slice:output:0-model_50/reshape_101/Reshape/shape/1:output:0-model_50/reshape_101/Reshape/shape/2:output:0-model_50/reshape_101/Reshape/shape/3:output:0-model_50/reshape_101/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_50/reshape_101/Reshape/shape�
model_50/reshape_101/ReshapeReshape(model_50/dense_50/Softplus:activations:0+model_50/reshape_101/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_50/reshape_101/Reshape�
%model_50/tf.reshape_738/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_50/tf.reshape_738/Reshape/shape�
model_50/tf.reshape_738/ReshapeReshape%model_50/reshape_101/Reshape:output:0.model_50/tf.reshape_738/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_50/tf.reshape_738/Reshape�
#model_50/tf.tile_369/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_50/tf.tile_369/Tile/multiples�
model_50/tf.tile_369/TileTile(model_50/tf.reshape_738/Reshape:output:0,model_50/tf.tile_369/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_50/tf.tile_369/Tile�
%model_50/tf.reshape_739/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_50/tf.reshape_739/Reshape/shape�
model_50/tf.reshape_739/ReshapeReshape"model_50/tf.tile_369/Tile:output:0.model_50/tf.reshape_739/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_50/tf.reshape_739/Reshape�
"model_50/tf.concat_588/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_50/tf.concat_588/concat/axis�
model_50/tf.concat_588/concatConcatV2(model_50/tf.reshape_739/Reshape:output:0*model_50/conv3d_264/Softplus:activations:0+model_50/tf.concat_588/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_50/tf.concat_588/concat�
)model_50/conv3d_265/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_265_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_265/Conv3D/ReadVariableOp�
model_50/conv3d_265/Conv3DConv3D&model_50/tf.concat_588/concat:output:01model_50/conv3d_265/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_265/Conv3D�
*model_50/conv3d_265/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_265_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_265/BiasAdd/ReadVariableOp�
model_50/conv3d_265/BiasAddBiasAdd#model_50/conv3d_265/Conv3D:output:02model_50/conv3d_265/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_50/conv3d_265/BiasAdd�
model_50/conv3d_265/SoftplusSoftplus$model_50/conv3d_265/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_50/conv3d_265/Softplus�
)model_50/conv3d_266/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_266_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_266/Conv3D/ReadVariableOp�
model_50/conv3d_266/Conv3DConv3D*model_50/conv3d_265/Softplus:activations:01model_50/conv3d_266/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_266/Conv3D�
*model_50/conv3d_266/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_266_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_266/BiasAdd/ReadVariableOp�
model_50/conv3d_266/BiasAddBiasAdd#model_50/conv3d_266/Conv3D:output:02model_50/conv3d_266/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_50/conv3d_266/BiasAdd�
IdentityIdentity$model_50/conv3d_266/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_50/conv3d_264/BiasAdd/ReadVariableOp*^model_50/conv3d_264/Conv3D/ReadVariableOp+^model_50/conv3d_265/BiasAdd/ReadVariableOp*^model_50/conv3d_265/Conv3D/ReadVariableOp+^model_50/conv3d_266/BiasAdd/ReadVariableOp*^model_50/conv3d_266/Conv3D/ReadVariableOp)^model_50/dense_50/BiasAdd/ReadVariableOp(^model_50/dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2X
*model_50/conv3d_264/BiasAdd/ReadVariableOp*model_50/conv3d_264/BiasAdd/ReadVariableOp2V
)model_50/conv3d_264/Conv3D/ReadVariableOp)model_50/conv3d_264/Conv3D/ReadVariableOp2X
*model_50/conv3d_265/BiasAdd/ReadVariableOp*model_50/conv3d_265/BiasAdd/ReadVariableOp2V
)model_50/conv3d_265/Conv3D/ReadVariableOp)model_50/conv3d_265/Conv3D/ReadVariableOp2X
*model_50/conv3d_266/BiasAdd/ReadVariableOp*model_50/conv3d_266/BiasAdd/ReadVariableOp2V
)model_50/conv3d_266/Conv3D/ReadVariableOp)model_50/conv3d_266/Conv3D/ReadVariableOp2T
(model_50/dense_50/BiasAdd/ReadVariableOp(model_50/dense_50/BiasAdd/ReadVariableOp2R
'model_50/dense_50/MatMul/ReadVariableOp'model_50/dense_50/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
� 
�
!__inference__traced_save_14224210
file_prefix0
,savev2_conv3d_264_kernel_read_readvariableop.
*savev2_conv3d_264_bias_read_readvariableop.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop0
,savev2_conv3d_265_kernel_read_readvariableop.
*savev2_conv3d_265_bias_read_readvariableop0
,savev2_conv3d_266_kernel_read_readvariableop.
*savev2_conv3d_266_bias_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_264_kernel_read_readvariableop*savev2_conv3d_264_bias_read_readvariableop*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop,savev2_conv3d_265_kernel_read_readvariableop*savev2_conv3d_265_bias_read_readvariableop,savev2_conv3d_266_kernel_read_readvariableop*savev2_conv3d_266_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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

identity_1Identity_1:output:0*{
_input_shapesj
h: :::@@:@::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::	

_output_shapes
: 
�	
q
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_14224019

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�
�
H__inference_conv3d_266_layer_call_and_return_conditional_losses_14223485

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
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
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�u
�
F__inference_model_50_layer_call_and_return_conditional_losses_14223921

inputsG
)conv3d_264_conv3d_readvariableop_resource:8
*conv3d_264_biasadd_readvariableop_resource:9
'dense_50_matmul_readvariableop_resource:@@6
(dense_50_biasadd_readvariableop_resource:@G
)conv3d_265_conv3d_readvariableop_resource:8
*conv3d_265_biasadd_readvariableop_resource:G
)conv3d_266_conv3d_readvariableop_resource:8
*conv3d_266_biasadd_readvariableop_resource:
identity��!conv3d_264/BiasAdd/ReadVariableOp� conv3d_264/Conv3D/ReadVariableOp�!conv3d_265/BiasAdd/ReadVariableOp� conv3d_265/Conv3D/ReadVariableOp�!conv3d_266/BiasAdd/ReadVariableOp� conv3d_266/Conv3D/ReadVariableOp�dense_50/BiasAdd/ReadVariableOp�dense_50/MatMul/ReadVariableOp�
0tf.__operators__.getitem_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_436/strided_slice/stack�
2tf.__operators__.getitem_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_436/strided_slice/stack_1�
2tf.__operators__.getitem_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_436/strided_slice/stack_2�
*tf.__operators__.getitem_436/strided_sliceStridedSliceinputs9tf.__operators__.getitem_436/strided_slice/stack:output:0;tf.__operators__.getitem_436/strided_slice/stack_1:output:0;tf.__operators__.getitem_436/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_436/strided_slice{
range_conversion_50/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_50/sub/y�
range_conversion_50/subSub3tf.__operators__.getitem_436/strided_slice:output:0"range_conversion_50/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/sub�
range_conversion_50/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_50/truediv/y�
range_conversion_50/truedivRealDivrange_conversion_50/sub:z:0&range_conversion_50/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/truediv{
range_conversion_50/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_50/mul/y�
range_conversion_50/mulMulrange_conversion_50/truediv:z:0"range_conversion_50/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/mul{
range_conversion_50/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_50/add/y�
range_conversion_50/addAddV2range_conversion_50/mul:z:0"range_conversion_50/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/add�
0tf.__operators__.getitem_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_437/strided_slice/stack�
2tf.__operators__.getitem_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_437/strided_slice/stack_1�
2tf.__operators__.getitem_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_437/strided_slice/stack_2�
*tf.__operators__.getitem_437/strided_sliceStridedSliceinputs9tf.__operators__.getitem_437/strided_slice/stack:output:0;tf.__operators__.getitem_437/strided_slice/stack_1:output:0;tf.__operators__.getitem_437/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_437/strided_slicex
tf.concat_587/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_587/concat/axis�
tf.concat_587/concatConcatV2range_conversion_50/add:z:03tf.__operators__.getitem_437/strided_slice:output:0"tf.concat_587/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_587/concat�
 conv3d_264/Conv3D/ReadVariableOpReadVariableOp)conv3d_264_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_264/Conv3D/ReadVariableOp�
conv3d_264/Conv3DConv3Dtf.concat_587/concat:output:0(conv3d_264/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_264/Conv3D�
!conv3d_264/BiasAdd/ReadVariableOpReadVariableOp*conv3d_264_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_264/BiasAdd/ReadVariableOp�
conv3d_264/BiasAddBiasAddconv3d_264/Conv3D:output:0)conv3d_264/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_264/BiasAdd�
conv3d_264/SoftplusSoftplusconv3d_264/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_264/Softplus�
$average_pooling3d_107/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_107/transpose/perm�
average_pooling3d_107/transpose	Transpose!conv3d_264/Softplus:activations:0-average_pooling3d_107/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_107/transpose�
average_pooling3d_107/AvgPool3D	AvgPool3D#average_pooling3d_107/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_107/AvgPool3D�
&average_pooling3d_107/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_107/transpose_1/perm�
!average_pooling3d_107/transpose_1	Transpose(average_pooling3d_107/AvgPool3D:output:0/average_pooling3d_107/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_107/transpose_1{
reshape_100/ShapeShape%average_pooling3d_107/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_100/Shape�
reshape_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_100/strided_slice/stack�
!reshape_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_1�
!reshape_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_2�
reshape_100/strided_sliceStridedSlicereshape_100/Shape:output:0(reshape_100/strided_slice/stack:output:0*reshape_100/strided_slice/stack_1:output:0*reshape_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_100/strided_slice|
reshape_100/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_100/Reshape/shape/1�
reshape_100/Reshape/shapePack"reshape_100/strided_slice:output:0$reshape_100/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_100/Reshape/shape�
reshape_100/ReshapeReshape%average_pooling3d_107/transpose_1:y:0"reshape_100/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_100/Reshape�
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_50/MatMul/ReadVariableOp�
dense_50/MatMulMatMulreshape_100/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_50/MatMul�
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_50/BiasAdd/ReadVariableOp�
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_50/BiasAdd
dense_50/SoftplusSoftplusdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_50/Softplusu
reshape_101/ShapeShapedense_50/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_101/Shape�
reshape_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_101/strided_slice/stack�
!reshape_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_1�
!reshape_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_2�
reshape_101/strided_sliceStridedSlicereshape_101/Shape:output:0(reshape_101/strided_slice/stack:output:0*reshape_101/strided_slice/stack_1:output:0*reshape_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_101/strided_slice|
reshape_101/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/1|
reshape_101/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/2|
reshape_101/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/3|
reshape_101/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/4�
reshape_101/Reshape/shapePack"reshape_101/strided_slice:output:0$reshape_101/Reshape/shape/1:output:0$reshape_101/Reshape/shape/2:output:0$reshape_101/Reshape/shape/3:output:0$reshape_101/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_101/Reshape/shape�
reshape_101/ReshapeReshapedense_50/Softplus:activations:0"reshape_101/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_101/Reshape�
tf.reshape_738/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_738/Reshape/shape�
tf.reshape_738/ReshapeReshapereshape_101/Reshape:output:0%tf.reshape_738/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_738/Reshape�
tf.tile_369/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_369/Tile/multiples�
tf.tile_369/TileTiletf.reshape_738/Reshape:output:0#tf.tile_369/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_369/Tile�
tf.reshape_739/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_739/Reshape/shape�
tf.reshape_739/ReshapeReshapetf.tile_369/Tile:output:0%tf.reshape_739/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_739/Reshapex
tf.concat_588/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_588/concat/axis�
tf.concat_588/concatConcatV2tf.reshape_739/Reshape:output:0!conv3d_264/Softplus:activations:0"tf.concat_588/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_588/concat�
 conv3d_265/Conv3D/ReadVariableOpReadVariableOp)conv3d_265_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_265/Conv3D/ReadVariableOp�
conv3d_265/Conv3DConv3Dtf.concat_588/concat:output:0(conv3d_265/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_265/Conv3D�
!conv3d_265/BiasAdd/ReadVariableOpReadVariableOp*conv3d_265_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_265/BiasAdd/ReadVariableOp�
conv3d_265/BiasAddBiasAddconv3d_265/Conv3D:output:0)conv3d_265/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_265/BiasAdd�
conv3d_265/SoftplusSoftplusconv3d_265/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_265/Softplus�
 conv3d_266/Conv3D/ReadVariableOpReadVariableOp)conv3d_266_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_266/Conv3D/ReadVariableOp�
conv3d_266/Conv3DConv3D!conv3d_265/Softplus:activations:0(conv3d_266/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_266/Conv3D�
!conv3d_266/BiasAdd/ReadVariableOpReadVariableOp*conv3d_266_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_266/BiasAdd/ReadVariableOp�
conv3d_266/BiasAddBiasAddconv3d_266/Conv3D:output:0)conv3d_266/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_266/BiasAdd�
IdentityIdentityconv3d_266/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_264/BiasAdd/ReadVariableOp!^conv3d_264/Conv3D/ReadVariableOp"^conv3d_265/BiasAdd/ReadVariableOp!^conv3d_265/Conv3D/ReadVariableOp"^conv3d_266/BiasAdd/ReadVariableOp!^conv3d_266/Conv3D/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_264/BiasAdd/ReadVariableOp!conv3d_264/BiasAdd/ReadVariableOp2D
 conv3d_264/Conv3D/ReadVariableOp conv3d_264/Conv3D/ReadVariableOp2F
!conv3d_265/BiasAdd/ReadVariableOp!conv3d_265/BiasAdd/ReadVariableOp2D
 conv3d_265/Conv3D/ReadVariableOp conv3d_265/Conv3D/ReadVariableOp2F
!conv3d_266/BiasAdd/ReadVariableOp!conv3d_266/BiasAdd/ReadVariableOp2D
 conv3d_266/Conv3D/ReadVariableOp conv3d_266/Conv3D/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

�
+__inference_model_50_layer_call_fn_14223819

inputs%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_142234922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�D
�
F__inference_model_50_layer_call_and_return_conditional_losses_14223729	
input1
conv3d_264_14223697:!
conv3d_264_14223699:#
dense_50_14223704:@@
dense_50_14223706:@1
conv3d_265_14223718:!
conv3d_265_14223720:1
conv3d_266_14223723:!
conv3d_266_14223725:
identity��"conv3d_264/StatefulPartitionedCall�"conv3d_265/StatefulPartitionedCall�"conv3d_266/StatefulPartitionedCall� dense_50/StatefulPartitionedCall�
0tf.__operators__.getitem_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_436/strided_slice/stack�
2tf.__operators__.getitem_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_436/strided_slice/stack_1�
2tf.__operators__.getitem_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_436/strided_slice/stack_2�
*tf.__operators__.getitem_436/strided_sliceStridedSliceinput9tf.__operators__.getitem_436/strided_slice/stack:output:0;tf.__operators__.getitem_436/strided_slice/stack_1:output:0;tf.__operators__.getitem_436/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_436/strided_slice�
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_436/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_142233672%
#range_conversion_50/PartitionedCall�
0tf.__operators__.getitem_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_437/strided_slice/stack�
2tf.__operators__.getitem_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_437/strided_slice/stack_1�
2tf.__operators__.getitem_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_437/strided_slice/stack_2�
*tf.__operators__.getitem_437/strided_sliceStridedSliceinput9tf.__operators__.getitem_437/strided_slice/stack:output:0;tf.__operators__.getitem_437/strided_slice/stack_1:output:0;tf.__operators__.getitem_437/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_437/strided_slicex
tf.concat_587/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_587/concat/axis�
tf.concat_587/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_437/strided_slice:output:0"tf.concat_587/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_587/concat�
"conv3d_264/StatefulPartitionedCallStatefulPartitionedCalltf.concat_587/concat:output:0conv3d_264_14223697conv3d_264_14223699*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_264_layer_call_and_return_conditional_losses_142233862$
"conv3d_264/StatefulPartitionedCall�
%average_pooling3d_107/PartitionedCallPartitionedCall+conv3d_264/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_142234002'
%average_pooling3d_107/PartitionedCall�
reshape_100/PartitionedCallPartitionedCall.average_pooling3d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_142234142
reshape_100/PartitionedCall�
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_14223704dense_50_14223706*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_50_layer_call_and_return_conditional_losses_142234272"
 dense_50/StatefulPartitionedCall�
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_142234482
reshape_101/PartitionedCall�
tf.reshape_738/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_738/Reshape/shape�
tf.reshape_738/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_738/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_738/Reshape�
tf.tile_369/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_369/Tile/multiples�
tf.tile_369/TileTiletf.reshape_738/Reshape:output:0#tf.tile_369/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_369/Tile�
tf.reshape_739/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_739/Reshape/shape�
tf.reshape_739/ReshapeReshapetf.tile_369/Tile:output:0%tf.reshape_739/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_739/Reshapex
tf.concat_588/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_588/concat/axis�
tf.concat_588/concatConcatV2tf.reshape_739/Reshape:output:0+conv3d_264/StatefulPartitionedCall:output:0"tf.concat_588/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_588/concat�
"conv3d_265/StatefulPartitionedCallStatefulPartitionedCalltf.concat_588/concat:output:0conv3d_265_14223718conv3d_265_14223720*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_265_layer_call_and_return_conditional_losses_142234692$
"conv3d_265/StatefulPartitionedCall�
"conv3d_266/StatefulPartitionedCallStatefulPartitionedCall+conv3d_265/StatefulPartitionedCall:output:0conv3d_266_14223723conv3d_266_14223725*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_266_layer_call_and_return_conditional_losses_142234852$
"conv3d_266/StatefulPartitionedCall�
IdentityIdentity+conv3d_266/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_264/StatefulPartitionedCall#^conv3d_265/StatefulPartitionedCall#^conv3d_266/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_264/StatefulPartitionedCall"conv3d_264/StatefulPartitionedCall2H
"conv3d_265/StatefulPartitionedCall"conv3d_265/StatefulPartitionedCall2H
"conv3d_266/StatefulPartitionedCall"conv3d_266/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
H__inference_conv3d_265_layer_call_and_return_conditional_losses_14223469

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_264_layer_call_fn_14224028

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_264_layer_call_and_return_conditional_losses_142233862
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
J
.__inference_reshape_100_layer_call_fn_14224072

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
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_142234142
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_50_layer_call_fn_14224093

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_50_layer_call_and_return_conditional_losses_142234272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
o
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14224067

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
T
8__inference_average_pooling3d_107_layer_call_fn_14224044

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_142233272
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�

�
&__inference_signature_wrapper_14223798	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__wrapped_model_142233142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�D
�
F__inference_model_50_layer_call_and_return_conditional_losses_14223775	
input1
conv3d_264_14223743:!
conv3d_264_14223745:#
dense_50_14223750:@@
dense_50_14223752:@1
conv3d_265_14223764:!
conv3d_265_14223766:1
conv3d_266_14223769:!
conv3d_266_14223771:
identity��"conv3d_264/StatefulPartitionedCall�"conv3d_265/StatefulPartitionedCall�"conv3d_266/StatefulPartitionedCall� dense_50/StatefulPartitionedCall�
0tf.__operators__.getitem_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_436/strided_slice/stack�
2tf.__operators__.getitem_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_436/strided_slice/stack_1�
2tf.__operators__.getitem_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_436/strided_slice/stack_2�
*tf.__operators__.getitem_436/strided_sliceStridedSliceinput9tf.__operators__.getitem_436/strided_slice/stack:output:0;tf.__operators__.getitem_436/strided_slice/stack_1:output:0;tf.__operators__.getitem_436/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_436/strided_slice�
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_436/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_142233672%
#range_conversion_50/PartitionedCall�
0tf.__operators__.getitem_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_437/strided_slice/stack�
2tf.__operators__.getitem_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_437/strided_slice/stack_1�
2tf.__operators__.getitem_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_437/strided_slice/stack_2�
*tf.__operators__.getitem_437/strided_sliceStridedSliceinput9tf.__operators__.getitem_437/strided_slice/stack:output:0;tf.__operators__.getitem_437/strided_slice/stack_1:output:0;tf.__operators__.getitem_437/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_437/strided_slicex
tf.concat_587/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_587/concat/axis�
tf.concat_587/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_437/strided_slice:output:0"tf.concat_587/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_587/concat�
"conv3d_264/StatefulPartitionedCallStatefulPartitionedCalltf.concat_587/concat:output:0conv3d_264_14223743conv3d_264_14223745*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_264_layer_call_and_return_conditional_losses_142233862$
"conv3d_264/StatefulPartitionedCall�
%average_pooling3d_107/PartitionedCallPartitionedCall+conv3d_264/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_142234002'
%average_pooling3d_107/PartitionedCall�
reshape_100/PartitionedCallPartitionedCall.average_pooling3d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_142234142
reshape_100/PartitionedCall�
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_14223750dense_50_14223752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_50_layer_call_and_return_conditional_losses_142234272"
 dense_50/StatefulPartitionedCall�
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_142234482
reshape_101/PartitionedCall�
tf.reshape_738/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_738/Reshape/shape�
tf.reshape_738/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_738/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_738/Reshape�
tf.tile_369/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_369/Tile/multiples�
tf.tile_369/TileTiletf.reshape_738/Reshape:output:0#tf.tile_369/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_369/Tile�
tf.reshape_739/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_739/Reshape/shape�
tf.reshape_739/ReshapeReshapetf.tile_369/Tile:output:0%tf.reshape_739/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_739/Reshapex
tf.concat_588/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_588/concat/axis�
tf.concat_588/concatConcatV2tf.reshape_739/Reshape:output:0+conv3d_264/StatefulPartitionedCall:output:0"tf.concat_588/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_588/concat�
"conv3d_265/StatefulPartitionedCallStatefulPartitionedCalltf.concat_588/concat:output:0conv3d_265_14223764conv3d_265_14223766*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_265_layer_call_and_return_conditional_losses_142234692$
"conv3d_265/StatefulPartitionedCall�
"conv3d_266/StatefulPartitionedCallStatefulPartitionedCall+conv3d_265/StatefulPartitionedCall:output:0conv3d_266_14223769conv3d_266_14223771*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_266_layer_call_and_return_conditional_losses_142234852$
"conv3d_266/StatefulPartitionedCall�
IdentityIdentity+conv3d_266/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_264/StatefulPartitionedCall#^conv3d_265/StatefulPartitionedCall#^conv3d_266/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_264/StatefulPartitionedCall"conv3d_264/StatefulPartitionedCall2H
"conv3d_265/StatefulPartitionedCall"conv3d_265/StatefulPartitionedCall2H
"conv3d_266/StatefulPartitionedCall"conv3d_266/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�D
�
F__inference_model_50_layer_call_and_return_conditional_losses_14223643

inputs1
conv3d_264_14223611:!
conv3d_264_14223613:#
dense_50_14223618:@@
dense_50_14223620:@1
conv3d_265_14223632:!
conv3d_265_14223634:1
conv3d_266_14223637:!
conv3d_266_14223639:
identity��"conv3d_264/StatefulPartitionedCall�"conv3d_265/StatefulPartitionedCall�"conv3d_266/StatefulPartitionedCall� dense_50/StatefulPartitionedCall�
0tf.__operators__.getitem_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_436/strided_slice/stack�
2tf.__operators__.getitem_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_436/strided_slice/stack_1�
2tf.__operators__.getitem_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_436/strided_slice/stack_2�
*tf.__operators__.getitem_436/strided_sliceStridedSliceinputs9tf.__operators__.getitem_436/strided_slice/stack:output:0;tf.__operators__.getitem_436/strided_slice/stack_1:output:0;tf.__operators__.getitem_436/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_436/strided_slice�
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_436/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_142233672%
#range_conversion_50/PartitionedCall�
0tf.__operators__.getitem_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_437/strided_slice/stack�
2tf.__operators__.getitem_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_437/strided_slice/stack_1�
2tf.__operators__.getitem_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_437/strided_slice/stack_2�
*tf.__operators__.getitem_437/strided_sliceStridedSliceinputs9tf.__operators__.getitem_437/strided_slice/stack:output:0;tf.__operators__.getitem_437/strided_slice/stack_1:output:0;tf.__operators__.getitem_437/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_437/strided_slicex
tf.concat_587/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_587/concat/axis�
tf.concat_587/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_437/strided_slice:output:0"tf.concat_587/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_587/concat�
"conv3d_264/StatefulPartitionedCallStatefulPartitionedCalltf.concat_587/concat:output:0conv3d_264_14223611conv3d_264_14223613*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_264_layer_call_and_return_conditional_losses_142233862$
"conv3d_264/StatefulPartitionedCall�
%average_pooling3d_107/PartitionedCallPartitionedCall+conv3d_264/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_142234002'
%average_pooling3d_107/PartitionedCall�
reshape_100/PartitionedCallPartitionedCall.average_pooling3d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_142234142
reshape_100/PartitionedCall�
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_14223618dense_50_14223620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_50_layer_call_and_return_conditional_losses_142234272"
 dense_50/StatefulPartitionedCall�
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_142234482
reshape_101/PartitionedCall�
tf.reshape_738/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_738/Reshape/shape�
tf.reshape_738/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_738/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_738/Reshape�
tf.tile_369/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_369/Tile/multiples�
tf.tile_369/TileTiletf.reshape_738/Reshape:output:0#tf.tile_369/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_369/Tile�
tf.reshape_739/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_739/Reshape/shape�
tf.reshape_739/ReshapeReshapetf.tile_369/Tile:output:0%tf.reshape_739/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_739/Reshapex
tf.concat_588/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_588/concat/axis�
tf.concat_588/concatConcatV2tf.reshape_739/Reshape:output:0+conv3d_264/StatefulPartitionedCall:output:0"tf.concat_588/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_588/concat�
"conv3d_265/StatefulPartitionedCallStatefulPartitionedCalltf.concat_588/concat:output:0conv3d_265_14223632conv3d_265_14223634*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_265_layer_call_and_return_conditional_losses_142234692$
"conv3d_265/StatefulPartitionedCall�
"conv3d_266/StatefulPartitionedCallStatefulPartitionedCall+conv3d_265/StatefulPartitionedCall:output:0conv3d_266_14223637conv3d_266_14223639*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_266_layer_call_and_return_conditional_losses_142234852$
"conv3d_266/StatefulPartitionedCall�
IdentityIdentity+conv3d_266/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_264/StatefulPartitionedCall#^conv3d_265/StatefulPartitionedCall#^conv3d_266/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_264/StatefulPartitionedCall"conv3d_264/StatefulPartitionedCall2H
"conv3d_265/StatefulPartitionedCall"conv3d_265/StatefulPartitionedCall2H
"conv3d_266/StatefulPartitionedCall"conv3d_266/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_264_layer_call_and_return_conditional_losses_14223386

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�D
�
F__inference_model_50_layer_call_and_return_conditional_losses_14223492

inputs1
conv3d_264_14223387:!
conv3d_264_14223389:#
dense_50_14223428:@@
dense_50_14223430:@1
conv3d_265_14223470:!
conv3d_265_14223472:1
conv3d_266_14223486:!
conv3d_266_14223488:
identity��"conv3d_264/StatefulPartitionedCall�"conv3d_265/StatefulPartitionedCall�"conv3d_266/StatefulPartitionedCall� dense_50/StatefulPartitionedCall�
0tf.__operators__.getitem_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_436/strided_slice/stack�
2tf.__operators__.getitem_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_436/strided_slice/stack_1�
2tf.__operators__.getitem_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_436/strided_slice/stack_2�
*tf.__operators__.getitem_436/strided_sliceStridedSliceinputs9tf.__operators__.getitem_436/strided_slice/stack:output:0;tf.__operators__.getitem_436/strided_slice/stack_1:output:0;tf.__operators__.getitem_436/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_436/strided_slice�
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_436/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_142233672%
#range_conversion_50/PartitionedCall�
0tf.__operators__.getitem_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_437/strided_slice/stack�
2tf.__operators__.getitem_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_437/strided_slice/stack_1�
2tf.__operators__.getitem_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_437/strided_slice/stack_2�
*tf.__operators__.getitem_437/strided_sliceStridedSliceinputs9tf.__operators__.getitem_437/strided_slice/stack:output:0;tf.__operators__.getitem_437/strided_slice/stack_1:output:0;tf.__operators__.getitem_437/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_437/strided_slicex
tf.concat_587/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_587/concat/axis�
tf.concat_587/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_437/strided_slice:output:0"tf.concat_587/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_587/concat�
"conv3d_264/StatefulPartitionedCallStatefulPartitionedCalltf.concat_587/concat:output:0conv3d_264_14223387conv3d_264_14223389*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_264_layer_call_and_return_conditional_losses_142233862$
"conv3d_264/StatefulPartitionedCall�
%average_pooling3d_107/PartitionedCallPartitionedCall+conv3d_264/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_142234002'
%average_pooling3d_107/PartitionedCall�
reshape_100/PartitionedCallPartitionedCall.average_pooling3d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_142234142
reshape_100/PartitionedCall�
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_14223428dense_50_14223430*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_50_layer_call_and_return_conditional_losses_142234272"
 dense_50/StatefulPartitionedCall�
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_142234482
reshape_101/PartitionedCall�
tf.reshape_738/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_738/Reshape/shape�
tf.reshape_738/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_738/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_738/Reshape�
tf.tile_369/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_369/Tile/multiples�
tf.tile_369/TileTiletf.reshape_738/Reshape:output:0#tf.tile_369/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_369/Tile�
tf.reshape_739/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_739/Reshape/shape�
tf.reshape_739/ReshapeReshapetf.tile_369/Tile:output:0%tf.reshape_739/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_739/Reshapex
tf.concat_588/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_588/concat/axis�
tf.concat_588/concatConcatV2tf.reshape_739/Reshape:output:0+conv3d_264/StatefulPartitionedCall:output:0"tf.concat_588/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_588/concat�
"conv3d_265/StatefulPartitionedCallStatefulPartitionedCalltf.concat_588/concat:output:0conv3d_265_14223470conv3d_265_14223472*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_265_layer_call_and_return_conditional_losses_142234692$
"conv3d_265/StatefulPartitionedCall�
"conv3d_266/StatefulPartitionedCallStatefulPartitionedCall+conv3d_265/StatefulPartitionedCall:output:0conv3d_266_14223486conv3d_266_14223488*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_266_layer_call_and_return_conditional_losses_142234852$
"conv3d_266/StatefulPartitionedCall�
IdentityIdentity+conv3d_266/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_264/StatefulPartitionedCall#^conv3d_265/StatefulPartitionedCall#^conv3d_266/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_264/StatefulPartitionedCall"conv3d_264/StatefulPartitionedCall2H
"conv3d_265/StatefulPartitionedCall"conv3d_265/StatefulPartitionedCall2H
"conv3d_266/StatefulPartitionedCall"conv3d_266/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
V
6__inference_range_conversion_50_layer_call_fn_14224007

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
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_142233672
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�
J
.__inference_reshape_101_layer_call_fn_14224109

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
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_142234482
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
T
8__inference_average_pooling3d_107_layer_call_fn_14224049

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
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_142234002
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_266_layer_call_and_return_conditional_losses_14224163

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
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
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�u
�
F__inference_model_50_layer_call_and_return_conditional_losses_14224002

inputsG
)conv3d_264_conv3d_readvariableop_resource:8
*conv3d_264_biasadd_readvariableop_resource:9
'dense_50_matmul_readvariableop_resource:@@6
(dense_50_biasadd_readvariableop_resource:@G
)conv3d_265_conv3d_readvariableop_resource:8
*conv3d_265_biasadd_readvariableop_resource:G
)conv3d_266_conv3d_readvariableop_resource:8
*conv3d_266_biasadd_readvariableop_resource:
identity��!conv3d_264/BiasAdd/ReadVariableOp� conv3d_264/Conv3D/ReadVariableOp�!conv3d_265/BiasAdd/ReadVariableOp� conv3d_265/Conv3D/ReadVariableOp�!conv3d_266/BiasAdd/ReadVariableOp� conv3d_266/Conv3D/ReadVariableOp�dense_50/BiasAdd/ReadVariableOp�dense_50/MatMul/ReadVariableOp�
0tf.__operators__.getitem_436/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_436/strided_slice/stack�
2tf.__operators__.getitem_436/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_436/strided_slice/stack_1�
2tf.__operators__.getitem_436/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_436/strided_slice/stack_2�
*tf.__operators__.getitem_436/strided_sliceStridedSliceinputs9tf.__operators__.getitem_436/strided_slice/stack:output:0;tf.__operators__.getitem_436/strided_slice/stack_1:output:0;tf.__operators__.getitem_436/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_436/strided_slice{
range_conversion_50/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_50/sub/y�
range_conversion_50/subSub3tf.__operators__.getitem_436/strided_slice:output:0"range_conversion_50/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/sub�
range_conversion_50/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_50/truediv/y�
range_conversion_50/truedivRealDivrange_conversion_50/sub:z:0&range_conversion_50/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/truediv{
range_conversion_50/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_50/mul/y�
range_conversion_50/mulMulrange_conversion_50/truediv:z:0"range_conversion_50/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/mul{
range_conversion_50/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_50/add/y�
range_conversion_50/addAddV2range_conversion_50/mul:z:0"range_conversion_50/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_50/add�
0tf.__operators__.getitem_437/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_437/strided_slice/stack�
2tf.__operators__.getitem_437/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_437/strided_slice/stack_1�
2tf.__operators__.getitem_437/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_437/strided_slice/stack_2�
*tf.__operators__.getitem_437/strided_sliceStridedSliceinputs9tf.__operators__.getitem_437/strided_slice/stack:output:0;tf.__operators__.getitem_437/strided_slice/stack_1:output:0;tf.__operators__.getitem_437/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_437/strided_slicex
tf.concat_587/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_587/concat/axis�
tf.concat_587/concatConcatV2range_conversion_50/add:z:03tf.__operators__.getitem_437/strided_slice:output:0"tf.concat_587/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_587/concat�
 conv3d_264/Conv3D/ReadVariableOpReadVariableOp)conv3d_264_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_264/Conv3D/ReadVariableOp�
conv3d_264/Conv3DConv3Dtf.concat_587/concat:output:0(conv3d_264/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_264/Conv3D�
!conv3d_264/BiasAdd/ReadVariableOpReadVariableOp*conv3d_264_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_264/BiasAdd/ReadVariableOp�
conv3d_264/BiasAddBiasAddconv3d_264/Conv3D:output:0)conv3d_264/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_264/BiasAdd�
conv3d_264/SoftplusSoftplusconv3d_264/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_264/Softplus�
$average_pooling3d_107/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_107/transpose/perm�
average_pooling3d_107/transpose	Transpose!conv3d_264/Softplus:activations:0-average_pooling3d_107/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_107/transpose�
average_pooling3d_107/AvgPool3D	AvgPool3D#average_pooling3d_107/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_107/AvgPool3D�
&average_pooling3d_107/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_107/transpose_1/perm�
!average_pooling3d_107/transpose_1	Transpose(average_pooling3d_107/AvgPool3D:output:0/average_pooling3d_107/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_107/transpose_1{
reshape_100/ShapeShape%average_pooling3d_107/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_100/Shape�
reshape_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_100/strided_slice/stack�
!reshape_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_1�
!reshape_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_2�
reshape_100/strided_sliceStridedSlicereshape_100/Shape:output:0(reshape_100/strided_slice/stack:output:0*reshape_100/strided_slice/stack_1:output:0*reshape_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_100/strided_slice|
reshape_100/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_100/Reshape/shape/1�
reshape_100/Reshape/shapePack"reshape_100/strided_slice:output:0$reshape_100/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_100/Reshape/shape�
reshape_100/ReshapeReshape%average_pooling3d_107/transpose_1:y:0"reshape_100/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_100/Reshape�
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_50/MatMul/ReadVariableOp�
dense_50/MatMulMatMulreshape_100/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_50/MatMul�
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_50/BiasAdd/ReadVariableOp�
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_50/BiasAdd
dense_50/SoftplusSoftplusdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_50/Softplusu
reshape_101/ShapeShapedense_50/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_101/Shape�
reshape_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_101/strided_slice/stack�
!reshape_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_1�
!reshape_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_2�
reshape_101/strided_sliceStridedSlicereshape_101/Shape:output:0(reshape_101/strided_slice/stack:output:0*reshape_101/strided_slice/stack_1:output:0*reshape_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_101/strided_slice|
reshape_101/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/1|
reshape_101/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/2|
reshape_101/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/3|
reshape_101/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/4�
reshape_101/Reshape/shapePack"reshape_101/strided_slice:output:0$reshape_101/Reshape/shape/1:output:0$reshape_101/Reshape/shape/2:output:0$reshape_101/Reshape/shape/3:output:0$reshape_101/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_101/Reshape/shape�
reshape_101/ReshapeReshapedense_50/Softplus:activations:0"reshape_101/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_101/Reshape�
tf.reshape_738/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_738/Reshape/shape�
tf.reshape_738/ReshapeReshapereshape_101/Reshape:output:0%tf.reshape_738/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_738/Reshape�
tf.tile_369/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_369/Tile/multiples�
tf.tile_369/TileTiletf.reshape_738/Reshape:output:0#tf.tile_369/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_369/Tile�
tf.reshape_739/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_739/Reshape/shape�
tf.reshape_739/ReshapeReshapetf.tile_369/Tile:output:0%tf.reshape_739/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_739/Reshapex
tf.concat_588/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_588/concat/axis�
tf.concat_588/concatConcatV2tf.reshape_739/Reshape:output:0!conv3d_264/Softplus:activations:0"tf.concat_588/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_588/concat�
 conv3d_265/Conv3D/ReadVariableOpReadVariableOp)conv3d_265_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_265/Conv3D/ReadVariableOp�
conv3d_265/Conv3DConv3Dtf.concat_588/concat:output:0(conv3d_265/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_265/Conv3D�
!conv3d_265/BiasAdd/ReadVariableOpReadVariableOp*conv3d_265_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_265/BiasAdd/ReadVariableOp�
conv3d_265/BiasAddBiasAddconv3d_265/Conv3D:output:0)conv3d_265/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_265/BiasAdd�
conv3d_265/SoftplusSoftplusconv3d_265/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_265/Softplus�
 conv3d_266/Conv3D/ReadVariableOpReadVariableOp)conv3d_266_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_266/Conv3D/ReadVariableOp�
conv3d_266/Conv3DConv3D!conv3d_265/Softplus:activations:0(conv3d_266/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_266/Conv3D�
!conv3d_266/BiasAdd/ReadVariableOpReadVariableOp*conv3d_266_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_266/BiasAdd/ReadVariableOp�
conv3d_266/BiasAddBiasAddconv3d_266/Conv3D:output:0)conv3d_266/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_266/BiasAdd�
IdentityIdentityconv3d_266/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_264/BiasAdd/ReadVariableOp!^conv3d_264/Conv3D/ReadVariableOp"^conv3d_265/BiasAdd/ReadVariableOp!^conv3d_265/Conv3D/ReadVariableOp"^conv3d_266/BiasAdd/ReadVariableOp!^conv3d_266/Conv3D/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_264/BiasAdd/ReadVariableOp!conv3d_264/BiasAdd/ReadVariableOp2D
 conv3d_264/Conv3D/ReadVariableOp conv3d_264/Conv3D/ReadVariableOp2F
!conv3d_265/BiasAdd/ReadVariableOp!conv3d_265/BiasAdd/ReadVariableOp2D
 conv3d_265/Conv3D/ReadVariableOp conv3d_265/Conv3D/ReadVariableOp2F
!conv3d_266/BiasAdd/ReadVariableOp!conv3d_266/BiasAdd/ReadVariableOp2D
 conv3d_266/Conv3D/ReadVariableOp conv3d_266/Conv3D/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_100_layer_call_and_return_conditional_losses_14224084

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
value	B :@2
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
:���������@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
o
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14223400

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_264_layer_call_and_return_conditional_losses_14224039

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

o
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14223327

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�'
�
$__inference__traced_restore_14224244
file_prefix@
"assignvariableop_conv3d_264_kernel:0
"assignvariableop_1_conv3d_264_bias:4
"assignvariableop_2_dense_50_kernel:@@.
 assignvariableop_3_dense_50_bias:@B
$assignvariableop_4_conv3d_265_kernel:0
"assignvariableop_5_conv3d_265_bias:B
$assignvariableop_6_conv3d_266_kernel:0
"assignvariableop_7_conv3d_266_bias:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_264_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_264_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_50_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_50_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_265_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_265_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_266_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_266_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8c

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_9�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
e
I__inference_reshape_100_layer_call_and_return_conditional_losses_14223414

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
value	B :@2
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
:���������@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_101_layer_call_and_return_conditional_losses_14224124

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
value	B :2
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
:���������2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
-__inference_conv3d_265_layer_call_fn_14224133

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_265_layer_call_and_return_conditional_losses_142234692
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

�
+__inference_model_50_layer_call_fn_14223511	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_142234922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
F__inference_dense_50_layer_call_and_return_conditional_losses_14223427

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
H__inference_conv3d_265_layer_call_and_return_conditional_losses_14224144

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

�
+__inference_model_50_layer_call_fn_14223683	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_142236432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
-__inference_conv3d_266_layer_call_fn_14224153

inputs%
unknown:
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
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_266_layer_call_and_return_conditional_losses_142234852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_101_layer_call_and_return_conditional_losses_14223448

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
value	B :2
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
:���������2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

o
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14224058

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�

�
+__inference_model_50_layer_call_fn_14223840

inputs%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_142236432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_dense_50_layer_call_and_return_conditional_losses_14224104

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
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
serving_default_input:0���������J

conv3d_266<
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer-7
	layer_with_weights-1
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
regularization_losses
	variables
trainable_variables
	keras_api

signatures
r__call__
s_default_save_signature
*t&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
regularization_losses
trainable_variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
�

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#	variables
$regularization_losses
%trainable_variables
&	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
'	variables
(regularization_losses
)trainable_variables
*	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
�

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1	variables
2regularization_losses
3trainable_variables
4	keras_api
__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
5	keras_api"
_tf_keras_layer
(
6	keras_api"
_tf_keras_layer
(
7	keras_api"
_tf_keras_layer
(
8	keras_api"
_tf_keras_layer
�

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
X
0
1
+2
,3
94
:5
?6
@7"
trackable_list_wrapper
X
0
1
+2
,3
94
:5
?6
@7"
trackable_list_wrapper
�
Enon_trainable_variables
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
regularization_losses

Ilayers
	variables
trainable_variables
r__call__
s_default_save_signature
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
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
Jnon_trainable_variables
	variables
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
regularization_losses

Nlayers
trainable_variables
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_264/kernel
: 2conv3d_264/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Onon_trainable_variables
	variables
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
 regularization_losses

Slayers
!trainable_variables
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tnon_trainable_variables
#	variables
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
$regularization_losses

Xlayers
%trainable_variables
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ynon_trainable_variables
'	variables
Zmetrics
[layer_regularization_losses
\layer_metrics
(regularization_losses

]layers
)trainable_variables
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_50/kernel
:@ 2dense_50/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
^non_trainable_variables
-	variables
_metrics
`layer_regularization_losses
alayer_metrics
.regularization_losses

blayers
/trainable_variables
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
cnon_trainable_variables
1	variables
dmetrics
elayer_regularization_losses
flayer_metrics
2regularization_losses

glayers
3trainable_variables
__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_265/kernel
: 2conv3d_265/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
�
hnon_trainable_variables
;	variables
imetrics
jlayer_regularization_losses
klayer_metrics
<regularization_losses

llayers
=trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_266/kernel
: 2conv3d_266/bias
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
�
mnon_trainable_variables
A	variables
nmetrics
olayer_regularization_losses
player_metrics
Bregularization_losses

qlayers
Ctrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
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
+__inference_model_50_layer_call_fn_14223511
+__inference_model_50_layer_call_fn_14223819
+__inference_model_50_layer_call_fn_14223840
+__inference_model_50_layer_call_fn_14223683�
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
#__inference__wrapped_model_14223314input"�
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
F__inference_model_50_layer_call_and_return_conditional_losses_14223921
F__inference_model_50_layer_call_and_return_conditional_losses_14224002
F__inference_model_50_layer_call_and_return_conditional_losses_14223729
F__inference_model_50_layer_call_and_return_conditional_losses_14223775�
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
6__inference_range_conversion_50_layer_call_fn_14224007�
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
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_14224019�
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
-__inference_conv3d_264_layer_call_fn_14224028�
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
H__inference_conv3d_264_layer_call_and_return_conditional_losses_14224039�
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
�2�
8__inference_average_pooling3d_107_layer_call_fn_14224044
8__inference_average_pooling3d_107_layer_call_fn_14224049�
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
�2�
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14224058
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14224067�
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
.__inference_reshape_100_layer_call_fn_14224072�
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
I__inference_reshape_100_layer_call_and_return_conditional_losses_14224084�
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
+__inference_dense_50_layer_call_fn_14224093�
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
F__inference_dense_50_layer_call_and_return_conditional_losses_14224104�
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
.__inference_reshape_101_layer_call_fn_14224109�
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
I__inference_reshape_101_layer_call_and_return_conditional_losses_14224124�
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
-__inference_conv3d_265_layer_call_fn_14224133�
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
H__inference_conv3d_265_layer_call_and_return_conditional_losses_14224144�
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
-__inference_conv3d_266_layer_call_fn_14224153�
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
H__inference_conv3d_266_layer_call_and_return_conditional_losses_14224163�
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
&__inference_signature_wrapper_14223798input"�
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
#__inference__wrapped_model_14223314�+,9:?@:�7
0�-
+�(
input���������
� "C�@
>

conv3d_2660�-

conv3d_266����������
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14224058�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_107_layer_call_and_return_conditional_losses_14224067p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_107_layer_call_fn_14224044�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_107_layer_call_fn_14224049c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_264_layer_call_and_return_conditional_losses_14224039t;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_264_layer_call_fn_14224028g;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_265_layer_call_and_return_conditional_losses_14224144t9:;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_265_layer_call_fn_14224133g9:;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_266_layer_call_and_return_conditional_losses_14224163t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_266_layer_call_fn_14224153g?@;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_50_layer_call_and_return_conditional_losses_14224104\+,/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_50_layer_call_fn_14224093O+,/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_50_layer_call_and_return_conditional_losses_14223729�+,9:?@B�?
8�5
+�(
input���������
p 

 
� "1�.
'�$
0���������
� �
F__inference_model_50_layer_call_and_return_conditional_losses_14223775�+,9:?@B�?
8�5
+�(
input���������
p

 
� "1�.
'�$
0���������
� �
F__inference_model_50_layer_call_and_return_conditional_losses_14223921�+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "1�.
'�$
0���������
� �
F__inference_model_50_layer_call_and_return_conditional_losses_14224002�+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "1�.
'�$
0���������
� �
+__inference_model_50_layer_call_fn_14223511t+,9:?@B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_50_layer_call_fn_14223683t+,9:?@B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_50_layer_call_fn_14223819u+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_50_layer_call_fn_14223840u+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_14224019t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_50_layer_call_fn_14224007g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_100_layer_call_and_return_conditional_losses_14224084d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_100_layer_call_fn_14224072W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_101_layer_call_and_return_conditional_losses_14224124d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_101_layer_call_fn_14224109W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_14223798�+,9:?@C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_2660�-

conv3d_266���������