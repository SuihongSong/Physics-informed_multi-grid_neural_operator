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
conv3d_238/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_238/kernel
�
%conv3d_238/kernel/Read/ReadVariableOpReadVariableOpconv3d_238/kernel**
_output_shapes
:*
dtype0
v
conv3d_238/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_238/bias
o
#conv3d_238/bias/Read/ReadVariableOpReadVariableOpconv3d_238/bias*
_output_shapes
:*
dtype0
z
dense_72/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_72/kernel
s
#dense_72/kernel/Read/ReadVariableOpReadVariableOpdense_72/kernel*
_output_shapes

:@@*
dtype0
r
dense_72/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_72/bias
k
!dense_72/bias/Read/ReadVariableOpReadVariableOpdense_72/bias*
_output_shapes
:@*
dtype0
�
conv3d_239/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_239/kernel
�
%conv3d_239/kernel/Read/ReadVariableOpReadVariableOpconv3d_239/kernel**
_output_shapes
:*
dtype0
v
conv3d_239/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_239/bias
o
#conv3d_239/bias/Read/ReadVariableOpReadVariableOpconv3d_239/bias*
_output_shapes
:*
dtype0
�
conv3d_240/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_240/kernel
�
%conv3d_240/kernel/Read/ReadVariableOpReadVariableOpconv3d_240/kernel**
_output_shapes
:*
dtype0
v
conv3d_240/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_240/bias
o
#conv3d_240/bias/Read/ReadVariableOpReadVariableOpconv3d_240/bias*
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api

	keras_api

	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
R
1	variables
2trainable_variables
3regularization_losses
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
<trainable_variables
=regularization_losses
>	keras_api
h

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
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
 
�
	variables
Elayer_regularization_losses

Flayers
trainable_variables
Gnon_trainable_variables
Hmetrics
Ilayer_metrics
regularization_losses
 
 
 
 
 
�
	variables
Jlayer_regularization_losses

Klayers
trainable_variables
Lnon_trainable_variables
Mmetrics
Nlayer_metrics
regularization_losses
 
 
][
VARIABLE_VALUEconv3d_238/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_238/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
	variables
Olayer_regularization_losses

Players
 trainable_variables
Qnon_trainable_variables
Rmetrics
Slayer_metrics
!regularization_losses
 
 
 
�
#	variables
Tlayer_regularization_losses

Ulayers
$trainable_variables
Vnon_trainable_variables
Wmetrics
Xlayer_metrics
%regularization_losses
 
 
 
�
'	variables
Ylayer_regularization_losses

Zlayers
(trainable_variables
[non_trainable_variables
\metrics
]layer_metrics
)regularization_losses
[Y
VARIABLE_VALUEdense_72/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_72/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
�
-	variables
^layer_regularization_losses

_layers
.trainable_variables
`non_trainable_variables
ametrics
blayer_metrics
/regularization_losses
 
 
 
�
1	variables
clayer_regularization_losses

dlayers
2trainable_variables
enon_trainable_variables
fmetrics
glayer_metrics
3regularization_losses
 
 
 
 
][
VARIABLE_VALUEconv3d_239/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_239/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1

90
:1
 
�
;	variables
hlayer_regularization_losses

ilayers
<trainable_variables
jnon_trainable_variables
kmetrics
llayer_metrics
=regularization_losses
][
VARIABLE_VALUEconv3d_240/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_240/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
�
A	variables
mlayer_regularization_losses

nlayers
Btrainable_variables
onon_trainable_variables
pmetrics
qlayer_metrics
Cregularization_losses
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_238/kernelconv3d_238/biasdense_72/kerneldense_72/biasconv3d_239/kernelconv3d_239/biasconv3d_240/kernelconv3d_240/bias*
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
&__inference_signature_wrapper_15182435
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_238/kernel/Read/ReadVariableOp#conv3d_238/bias/Read/ReadVariableOp#dense_72/kernel/Read/ReadVariableOp!dense_72/bias/Read/ReadVariableOp%conv3d_239/kernel/Read/ReadVariableOp#conv3d_239/bias/Read/ReadVariableOp%conv3d_240/kernel/Read/ReadVariableOp#conv3d_240/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_15182847
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_238/kernelconv3d_238/biasdense_72/kerneldense_72/biasconv3d_239/kernelconv3d_239/biasconv3d_240/kernelconv3d_240/bias*
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
$__inference__traced_restore_15182881��
�
�
H__inference_conv3d_239_layer_call_and_return_conditional_losses_15182781

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
-__inference_conv3d_240_layer_call_fn_15182790

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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_151821222
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
�
�
F__inference_dense_72_layer_call_and_return_conditional_losses_15182064

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
�
J
.__inference_reshape_144_layer_call_fn_15182709

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
I__inference_reshape_144_layer_call_and_return_conditional_losses_151820512
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
�u
�
F__inference_model_72_layer_call_and_return_conditional_losses_15182558

inputsG
)conv3d_238_conv3d_readvariableop_resource:8
*conv3d_238_biasadd_readvariableop_resource:9
'dense_72_matmul_readvariableop_resource:@@6
(dense_72_biasadd_readvariableop_resource:@G
)conv3d_239_conv3d_readvariableop_resource:8
*conv3d_239_biasadd_readvariableop_resource:G
)conv3d_240_conv3d_readvariableop_resource:8
*conv3d_240_biasadd_readvariableop_resource:
identity��!conv3d_238/BiasAdd/ReadVariableOp� conv3d_238/Conv3D/ReadVariableOp�!conv3d_239/BiasAdd/ReadVariableOp� conv3d_239/Conv3D/ReadVariableOp�!conv3d_240/BiasAdd/ReadVariableOp� conv3d_240/Conv3D/ReadVariableOp�dense_72/BiasAdd/ReadVariableOp�dense_72/MatMul/ReadVariableOp�
0tf.__operators__.getitem_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_142/strided_slice/stack�
2tf.__operators__.getitem_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_142/strided_slice/stack_1�
2tf.__operators__.getitem_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_142/strided_slice/stack_2�
*tf.__operators__.getitem_142/strided_sliceStridedSliceinputs9tf.__operators__.getitem_142/strided_slice/stack:output:0;tf.__operators__.getitem_142/strided_slice/stack_1:output:0;tf.__operators__.getitem_142/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_142/strided_slice{
range_conversion_72/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_72/sub/y�
range_conversion_72/subSub3tf.__operators__.getitem_142/strided_slice:output:0"range_conversion_72/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/sub�
range_conversion_72/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_72/truediv/y�
range_conversion_72/truedivRealDivrange_conversion_72/sub:z:0&range_conversion_72/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/truediv{
range_conversion_72/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_72/mul/y�
range_conversion_72/mulMulrange_conversion_72/truediv:z:0"range_conversion_72/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/mul{
range_conversion_72/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_72/add/y�
range_conversion_72/addAddV2range_conversion_72/mul:z:0"range_conversion_72/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/add�
0tf.__operators__.getitem_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_143/strided_slice/stack�
2tf.__operators__.getitem_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_143/strided_slice/stack_1�
2tf.__operators__.getitem_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_143/strided_slice/stack_2�
*tf.__operators__.getitem_143/strided_sliceStridedSliceinputs9tf.__operators__.getitem_143/strided_slice/stack:output:0;tf.__operators__.getitem_143/strided_slice/stack_1:output:0;tf.__operators__.getitem_143/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_143/strided_slicex
tf.concat_154/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_154/concat/axis�
tf.concat_154/concatConcatV2range_conversion_72/add:z:03tf.__operators__.getitem_143/strided_slice:output:0"tf.concat_154/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_154/concat�
 conv3d_238/Conv3D/ReadVariableOpReadVariableOp)conv3d_238_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_238/Conv3D/ReadVariableOp�
conv3d_238/Conv3DConv3Dtf.concat_154/concat:output:0(conv3d_238/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_238/Conv3D�
!conv3d_238/BiasAdd/ReadVariableOpReadVariableOp*conv3d_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_238/BiasAdd/ReadVariableOp�
conv3d_238/BiasAddBiasAddconv3d_238/Conv3D:output:0)conv3d_238/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_238/BiasAdd�
conv3d_238/SoftplusSoftplusconv3d_238/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_238/Softplus�
#average_pooling3d_83/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_83/transpose/perm�
average_pooling3d_83/transpose	Transpose!conv3d_238/Softplus:activations:0,average_pooling3d_83/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_83/transpose�
average_pooling3d_83/AvgPool3D	AvgPool3D"average_pooling3d_83/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_83/AvgPool3D�
%average_pooling3d_83/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_83/transpose_1/perm�
 average_pooling3d_83/transpose_1	Transpose'average_pooling3d_83/AvgPool3D:output:0.average_pooling3d_83/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_83/transpose_1z
reshape_144/ShapeShape$average_pooling3d_83/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_144/Shape�
reshape_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_144/strided_slice/stack�
!reshape_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_1�
!reshape_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_2�
reshape_144/strided_sliceStridedSlicereshape_144/Shape:output:0(reshape_144/strided_slice/stack:output:0*reshape_144/strided_slice/stack_1:output:0*reshape_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_144/strided_slice|
reshape_144/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_144/Reshape/shape/1�
reshape_144/Reshape/shapePack"reshape_144/strided_slice:output:0$reshape_144/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_144/Reshape/shape�
reshape_144/ReshapeReshape$average_pooling3d_83/transpose_1:y:0"reshape_144/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_144/Reshape�
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_72/MatMul/ReadVariableOp�
dense_72/MatMulMatMulreshape_144/Reshape:output:0&dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/MatMul�
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_72/BiasAdd/ReadVariableOp�
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/BiasAdd
dense_72/SoftplusSoftplusdense_72/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_72/Softplusu
reshape_145/ShapeShapedense_72/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_145/Shape�
reshape_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_145/strided_slice/stack�
!reshape_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_1�
!reshape_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_2�
reshape_145/strided_sliceStridedSlicereshape_145/Shape:output:0(reshape_145/strided_slice/stack:output:0*reshape_145/strided_slice/stack_1:output:0*reshape_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_145/strided_slice|
reshape_145/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/1|
reshape_145/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/2|
reshape_145/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/3|
reshape_145/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/4�
reshape_145/Reshape/shapePack"reshape_145/strided_slice:output:0$reshape_145/Reshape/shape/1:output:0$reshape_145/Reshape/shape/2:output:0$reshape_145/Reshape/shape/3:output:0$reshape_145/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_145/Reshape/shape�
reshape_145/ReshapeReshapedense_72/Softplus:activations:0"reshape_145/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_145/Reshape�
tf.reshape_166/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_166/Reshape/shape�
tf.reshape_166/ReshapeReshapereshape_145/Reshape:output:0%tf.reshape_166/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_166/Reshape�
tf.tile_83/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_83/Tile/multiples�
tf.tile_83/TileTiletf.reshape_166/Reshape:output:0"tf.tile_83/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_83/Tile�
tf.reshape_167/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_167/Reshape/shape�
tf.reshape_167/ReshapeReshapetf.tile_83/Tile:output:0%tf.reshape_167/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_167/Reshapex
tf.concat_155/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_155/concat/axis�
tf.concat_155/concatConcatV2tf.reshape_167/Reshape:output:0!conv3d_238/Softplus:activations:0"tf.concat_155/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_155/concat�
 conv3d_239/Conv3D/ReadVariableOpReadVariableOp)conv3d_239_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_239/Conv3D/ReadVariableOp�
conv3d_239/Conv3DConv3Dtf.concat_155/concat:output:0(conv3d_239/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_239/Conv3D�
!conv3d_239/BiasAdd/ReadVariableOpReadVariableOp*conv3d_239_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_239/BiasAdd/ReadVariableOp�
conv3d_239/BiasAddBiasAddconv3d_239/Conv3D:output:0)conv3d_239/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_239/BiasAdd�
conv3d_239/SoftplusSoftplusconv3d_239/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_239/Softplus�
 conv3d_240/Conv3D/ReadVariableOpReadVariableOp)conv3d_240_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_240/Conv3D/ReadVariableOp�
conv3d_240/Conv3DConv3D!conv3d_239/Softplus:activations:0(conv3d_240/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_240/Conv3D�
!conv3d_240/BiasAdd/ReadVariableOpReadVariableOp*conv3d_240_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_240/BiasAdd/ReadVariableOp�
conv3d_240/BiasAddBiasAddconv3d_240/Conv3D:output:0)conv3d_240/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_240/BiasAdd�
IdentityIdentityconv3d_240/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_238/BiasAdd/ReadVariableOp!^conv3d_238/Conv3D/ReadVariableOp"^conv3d_239/BiasAdd/ReadVariableOp!^conv3d_239/Conv3D/ReadVariableOp"^conv3d_240/BiasAdd/ReadVariableOp!^conv3d_240/Conv3D/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_238/BiasAdd/ReadVariableOp!conv3d_238/BiasAdd/ReadVariableOp2D
 conv3d_238/Conv3D/ReadVariableOp conv3d_238/Conv3D/ReadVariableOp2F
!conv3d_239/BiasAdd/ReadVariableOp!conv3d_239/BiasAdd/ReadVariableOp2D
 conv3d_239/Conv3D/ReadVariableOp conv3d_239/Conv3D/ReadVariableOp2F
!conv3d_240/BiasAdd/ReadVariableOp!conv3d_240/BiasAdd/ReadVariableOp2D
 conv3d_240/Conv3D/ReadVariableOp conv3d_240/Conv3D/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
q
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_15182656

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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_15182676

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

�
+__inference_model_72_layer_call_fn_15182456

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
F__inference_model_72_layer_call_and_return_conditional_losses_151821292
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
�
�
-__inference_conv3d_238_layer_call_fn_15182665

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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_151820232
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
�
S
7__inference_average_pooling3d_83_layer_call_fn_15182686

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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_151820372
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
�'
�
$__inference__traced_restore_15182881
file_prefix@
"assignvariableop_conv3d_238_kernel:0
"assignvariableop_1_conv3d_238_bias:4
"assignvariableop_2_dense_72_kernel:@@.
 assignvariableop_3_dense_72_bias:@B
$assignvariableop_4_conv3d_239_kernel:0
"assignvariableop_5_conv3d_239_bias:B
$assignvariableop_6_conv3d_240_kernel:0
"assignvariableop_7_conv3d_240_bias:

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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_238_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_238_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_72_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_72_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_239_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_239_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_240_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_240_biasIdentity_7:output:0"/device:CPU:0*
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

�
+__inference_model_72_layer_call_fn_15182477

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
F__inference_model_72_layer_call_and_return_conditional_losses_151822802
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
e
I__inference_reshape_144_layer_call_and_return_conditional_losses_15182721

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
I__inference_reshape_145_layer_call_and_return_conditional_losses_15182761

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
�
S
7__inference_average_pooling3d_83_layer_call_fn_15182681

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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_151819642
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
n
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15182704

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
&__inference_signature_wrapper_15182435	
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
#__inference__wrapped_model_151819512
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
�
e
I__inference_reshape_145_layer_call_and_return_conditional_losses_15182085

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

�
+__inference_model_72_layer_call_fn_15182148	
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
F__inference_model_72_layer_call_and_return_conditional_losses_151821292
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
F__inference_model_72_layer_call_and_return_conditional_losses_15182280

inputs1
conv3d_238_15182248:!
conv3d_238_15182250:#
dense_72_15182255:@@
dense_72_15182257:@1
conv3d_239_15182269:!
conv3d_239_15182271:1
conv3d_240_15182274:!
conv3d_240_15182276:
identity��"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_142/strided_slice/stack�
2tf.__operators__.getitem_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_142/strided_slice/stack_1�
2tf.__operators__.getitem_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_142/strided_slice/stack_2�
*tf.__operators__.getitem_142/strided_sliceStridedSliceinputs9tf.__operators__.getitem_142/strided_slice/stack:output:0;tf.__operators__.getitem_142/strided_slice/stack_1:output:0;tf.__operators__.getitem_142/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_142/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_142/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_151820042%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_143/strided_slice/stack�
2tf.__operators__.getitem_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_143/strided_slice/stack_1�
2tf.__operators__.getitem_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_143/strided_slice/stack_2�
*tf.__operators__.getitem_143/strided_sliceStridedSliceinputs9tf.__operators__.getitem_143/strided_slice/stack:output:0;tf.__operators__.getitem_143/strided_slice/stack_1:output:0;tf.__operators__.getitem_143/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_143/strided_slicex
tf.concat_154/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_154/concat/axis�
tf.concat_154/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_143/strided_slice:output:0"tf.concat_154/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_154/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_154/concat:output:0conv3d_238_15182248conv3d_238_15182250*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_151820232$
"conv3d_238/StatefulPartitionedCall�
$average_pooling3d_83/PartitionedCallPartitionedCall+conv3d_238/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_151820372&
$average_pooling3d_83/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall-average_pooling3d_83/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_151820512
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_15182255dense_72_15182257*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_151820642"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_151820852
reshape_145/PartitionedCall�
tf.reshape_166/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_166/Reshape/shape�
tf.reshape_166/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_166/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_166/Reshape�
tf.tile_83/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_83/Tile/multiples�
tf.tile_83/TileTiletf.reshape_166/Reshape:output:0"tf.tile_83/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_83/Tile�
tf.reshape_167/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_167/Reshape/shape�
tf.reshape_167/ReshapeReshapetf.tile_83/Tile:output:0%tf.reshape_167/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_167/Reshapex
tf.concat_155/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_155/concat/axis�
tf.concat_155/concatConcatV2tf.reshape_167/Reshape:output:0+conv3d_238/StatefulPartitionedCall:output:0"tf.concat_155/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_155/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_155/concat:output:0conv3d_239_15182269conv3d_239_15182271*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_151821062$
"conv3d_239/StatefulPartitionedCall�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCall+conv3d_239/StatefulPartitionedCall:output:0conv3d_240_15182274conv3d_240_15182276*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_151821222$
"conv3d_240/StatefulPartitionedCall�
IdentityIdentity+conv3d_240/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
� 
�
!__inference__traced_save_15182847
file_prefix0
,savev2_conv3d_238_kernel_read_readvariableop.
*savev2_conv3d_238_bias_read_readvariableop.
*savev2_dense_72_kernel_read_readvariableop,
(savev2_dense_72_bias_read_readvariableop0
,savev2_conv3d_239_kernel_read_readvariableop.
*savev2_conv3d_239_bias_read_readvariableop0
,savev2_conv3d_240_kernel_read_readvariableop.
*savev2_conv3d_240_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_238_kernel_read_readvariableop*savev2_conv3d_238_bias_read_readvariableop*savev2_dense_72_kernel_read_readvariableop(savev2_dense_72_bias_read_readvariableop,savev2_conv3d_239_kernel_read_readvariableop*savev2_conv3d_239_bias_read_readvariableop,savev2_conv3d_240_kernel_read_readvariableop*savev2_conv3d_240_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
H__inference_conv3d_240_layer_call_and_return_conditional_losses_15182122

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
�	
q
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_15182004

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
�D
�
F__inference_model_72_layer_call_and_return_conditional_losses_15182412	
input1
conv3d_238_15182380:!
conv3d_238_15182382:#
dense_72_15182387:@@
dense_72_15182389:@1
conv3d_239_15182401:!
conv3d_239_15182403:1
conv3d_240_15182406:!
conv3d_240_15182408:
identity��"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_142/strided_slice/stack�
2tf.__operators__.getitem_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_142/strided_slice/stack_1�
2tf.__operators__.getitem_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_142/strided_slice/stack_2�
*tf.__operators__.getitem_142/strided_sliceStridedSliceinput9tf.__operators__.getitem_142/strided_slice/stack:output:0;tf.__operators__.getitem_142/strided_slice/stack_1:output:0;tf.__operators__.getitem_142/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_142/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_142/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_151820042%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_143/strided_slice/stack�
2tf.__operators__.getitem_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_143/strided_slice/stack_1�
2tf.__operators__.getitem_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_143/strided_slice/stack_2�
*tf.__operators__.getitem_143/strided_sliceStridedSliceinput9tf.__operators__.getitem_143/strided_slice/stack:output:0;tf.__operators__.getitem_143/strided_slice/stack_1:output:0;tf.__operators__.getitem_143/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_143/strided_slicex
tf.concat_154/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_154/concat/axis�
tf.concat_154/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_143/strided_slice:output:0"tf.concat_154/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_154/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_154/concat:output:0conv3d_238_15182380conv3d_238_15182382*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_151820232$
"conv3d_238/StatefulPartitionedCall�
$average_pooling3d_83/PartitionedCallPartitionedCall+conv3d_238/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_151820372&
$average_pooling3d_83/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall-average_pooling3d_83/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_151820512
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_15182387dense_72_15182389*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_151820642"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_151820852
reshape_145/PartitionedCall�
tf.reshape_166/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_166/Reshape/shape�
tf.reshape_166/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_166/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_166/Reshape�
tf.tile_83/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_83/Tile/multiples�
tf.tile_83/TileTiletf.reshape_166/Reshape:output:0"tf.tile_83/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_83/Tile�
tf.reshape_167/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_167/Reshape/shape�
tf.reshape_167/ReshapeReshapetf.tile_83/Tile:output:0%tf.reshape_167/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_167/Reshapex
tf.concat_155/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_155/concat/axis�
tf.concat_155/concatConcatV2tf.reshape_167/Reshape:output:0+conv3d_238/StatefulPartitionedCall:output:0"tf.concat_155/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_155/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_155/concat:output:0conv3d_239_15182401conv3d_239_15182403*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_151821062$
"conv3d_239/StatefulPartitionedCall�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCall+conv3d_239/StatefulPartitionedCall:output:0conv3d_240_15182406conv3d_240_15182408*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_151821222$
"conv3d_240/StatefulPartitionedCall�
IdentityIdentity+conv3d_240/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
n
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15182037

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
�
V
6__inference_range_conversion_72_layer_call_fn_15182644

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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_151820042
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
�

n
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15182695

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
�
�
+__inference_dense_72_layer_call_fn_15182730

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
F__inference_dense_72_layer_call_and_return_conditional_losses_151820642
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
��
�
#__inference__wrapped_model_15181951	
inputP
2model_72_conv3d_238_conv3d_readvariableop_resource:A
3model_72_conv3d_238_biasadd_readvariableop_resource:B
0model_72_dense_72_matmul_readvariableop_resource:@@?
1model_72_dense_72_biasadd_readvariableop_resource:@P
2model_72_conv3d_239_conv3d_readvariableop_resource:A
3model_72_conv3d_239_biasadd_readvariableop_resource:P
2model_72_conv3d_240_conv3d_readvariableop_resource:A
3model_72_conv3d_240_biasadd_readvariableop_resource:
identity��*model_72/conv3d_238/BiasAdd/ReadVariableOp�)model_72/conv3d_238/Conv3D/ReadVariableOp�*model_72/conv3d_239/BiasAdd/ReadVariableOp�)model_72/conv3d_239/Conv3D/ReadVariableOp�*model_72/conv3d_240/BiasAdd/ReadVariableOp�)model_72/conv3d_240/Conv3D/ReadVariableOp�(model_72/dense_72/BiasAdd/ReadVariableOp�'model_72/dense_72/MatMul/ReadVariableOp�
9model_72/tf.__operators__.getitem_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_72/tf.__operators__.getitem_142/strided_slice/stack�
;model_72/tf.__operators__.getitem_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_72/tf.__operators__.getitem_142/strided_slice/stack_1�
;model_72/tf.__operators__.getitem_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_72/tf.__operators__.getitem_142/strided_slice/stack_2�
3model_72/tf.__operators__.getitem_142/strided_sliceStridedSliceinputBmodel_72/tf.__operators__.getitem_142/strided_slice/stack:output:0Dmodel_72/tf.__operators__.getitem_142/strided_slice/stack_1:output:0Dmodel_72/tf.__operators__.getitem_142/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_72/tf.__operators__.getitem_142/strided_slice�
"model_72/range_conversion_72/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_72/range_conversion_72/sub/y�
 model_72/range_conversion_72/subSub<model_72/tf.__operators__.getitem_142/strided_slice:output:0+model_72/range_conversion_72/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_72/range_conversion_72/sub�
&model_72/range_conversion_72/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_72/range_conversion_72/truediv/y�
$model_72/range_conversion_72/truedivRealDiv$model_72/range_conversion_72/sub:z:0/model_72/range_conversion_72/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_72/range_conversion_72/truediv�
"model_72/range_conversion_72/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_72/range_conversion_72/mul/y�
 model_72/range_conversion_72/mulMul(model_72/range_conversion_72/truediv:z:0+model_72/range_conversion_72/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_72/range_conversion_72/mul�
"model_72/range_conversion_72/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_72/range_conversion_72/add/y�
 model_72/range_conversion_72/addAddV2$model_72/range_conversion_72/mul:z:0+model_72/range_conversion_72/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_72/range_conversion_72/add�
9model_72/tf.__operators__.getitem_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_72/tf.__operators__.getitem_143/strided_slice/stack�
;model_72/tf.__operators__.getitem_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_72/tf.__operators__.getitem_143/strided_slice/stack_1�
;model_72/tf.__operators__.getitem_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_72/tf.__operators__.getitem_143/strided_slice/stack_2�
3model_72/tf.__operators__.getitem_143/strided_sliceStridedSliceinputBmodel_72/tf.__operators__.getitem_143/strided_slice/stack:output:0Dmodel_72/tf.__operators__.getitem_143/strided_slice/stack_1:output:0Dmodel_72/tf.__operators__.getitem_143/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_72/tf.__operators__.getitem_143/strided_slice�
"model_72/tf.concat_154/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_72/tf.concat_154/concat/axis�
model_72/tf.concat_154/concatConcatV2$model_72/range_conversion_72/add:z:0<model_72/tf.__operators__.getitem_143/strided_slice:output:0+model_72/tf.concat_154/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_72/tf.concat_154/concat�
)model_72/conv3d_238/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_238_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_238/Conv3D/ReadVariableOp�
model_72/conv3d_238/Conv3DConv3D&model_72/tf.concat_154/concat:output:01model_72/conv3d_238/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_238/Conv3D�
*model_72/conv3d_238/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_238/BiasAdd/ReadVariableOp�
model_72/conv3d_238/BiasAddBiasAdd#model_72/conv3d_238/Conv3D:output:02model_72/conv3d_238/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_238/BiasAdd�
model_72/conv3d_238/SoftplusSoftplus$model_72/conv3d_238/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_72/conv3d_238/Softplus�
,model_72/average_pooling3d_83/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_72/average_pooling3d_83/transpose/perm�
'model_72/average_pooling3d_83/transpose	Transpose*model_72/conv3d_238/Softplus:activations:05model_72/average_pooling3d_83/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_72/average_pooling3d_83/transpose�
'model_72/average_pooling3d_83/AvgPool3D	AvgPool3D+model_72/average_pooling3d_83/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_72/average_pooling3d_83/AvgPool3D�
.model_72/average_pooling3d_83/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_72/average_pooling3d_83/transpose_1/perm�
)model_72/average_pooling3d_83/transpose_1	Transpose0model_72/average_pooling3d_83/AvgPool3D:output:07model_72/average_pooling3d_83/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_72/average_pooling3d_83/transpose_1�
model_72/reshape_144/ShapeShape-model_72/average_pooling3d_83/transpose_1:y:0*
T0*
_output_shapes
:2
model_72/reshape_144/Shape�
(model_72/reshape_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_72/reshape_144/strided_slice/stack�
*model_72/reshape_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_144/strided_slice/stack_1�
*model_72/reshape_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_144/strided_slice/stack_2�
"model_72/reshape_144/strided_sliceStridedSlice#model_72/reshape_144/Shape:output:01model_72/reshape_144/strided_slice/stack:output:03model_72/reshape_144/strided_slice/stack_1:output:03model_72/reshape_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_72/reshape_144/strided_slice�
$model_72/reshape_144/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_72/reshape_144/Reshape/shape/1�
"model_72/reshape_144/Reshape/shapePack+model_72/reshape_144/strided_slice:output:0-model_72/reshape_144/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_72/reshape_144/Reshape/shape�
model_72/reshape_144/ReshapeReshape-model_72/average_pooling3d_83/transpose_1:y:0+model_72/reshape_144/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_72/reshape_144/Reshape�
'model_72/dense_72/MatMul/ReadVariableOpReadVariableOp0model_72_dense_72_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_72/dense_72/MatMul/ReadVariableOp�
model_72/dense_72/MatMulMatMul%model_72/reshape_144/Reshape:output:0/model_72/dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_72/dense_72/MatMul�
(model_72/dense_72/BiasAdd/ReadVariableOpReadVariableOp1model_72_dense_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_72/dense_72/BiasAdd/ReadVariableOp�
model_72/dense_72/BiasAddBiasAdd"model_72/dense_72/MatMul:product:00model_72/dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_72/dense_72/BiasAdd�
model_72/dense_72/SoftplusSoftplus"model_72/dense_72/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_72/dense_72/Softplus�
model_72/reshape_145/ShapeShape(model_72/dense_72/Softplus:activations:0*
T0*
_output_shapes
:2
model_72/reshape_145/Shape�
(model_72/reshape_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_72/reshape_145/strided_slice/stack�
*model_72/reshape_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_145/strided_slice/stack_1�
*model_72/reshape_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_145/strided_slice/stack_2�
"model_72/reshape_145/strided_sliceStridedSlice#model_72/reshape_145/Shape:output:01model_72/reshape_145/strided_slice/stack:output:03model_72/reshape_145/strided_slice/stack_1:output:03model_72/reshape_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_72/reshape_145/strided_slice�
$model_72/reshape_145/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/1�
$model_72/reshape_145/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/2�
$model_72/reshape_145/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/3�
$model_72/reshape_145/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/4�
"model_72/reshape_145/Reshape/shapePack+model_72/reshape_145/strided_slice:output:0-model_72/reshape_145/Reshape/shape/1:output:0-model_72/reshape_145/Reshape/shape/2:output:0-model_72/reshape_145/Reshape/shape/3:output:0-model_72/reshape_145/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_72/reshape_145/Reshape/shape�
model_72/reshape_145/ReshapeReshape(model_72/dense_72/Softplus:activations:0+model_72/reshape_145/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_72/reshape_145/Reshape�
%model_72/tf.reshape_166/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_72/tf.reshape_166/Reshape/shape�
model_72/tf.reshape_166/ReshapeReshape%model_72/reshape_145/Reshape:output:0.model_72/tf.reshape_166/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_72/tf.reshape_166/Reshape�
"model_72/tf.tile_83/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_72/tf.tile_83/Tile/multiples�
model_72/tf.tile_83/TileTile(model_72/tf.reshape_166/Reshape:output:0+model_72/tf.tile_83/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_72/tf.tile_83/Tile�
%model_72/tf.reshape_167/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_72/tf.reshape_167/Reshape/shape�
model_72/tf.reshape_167/ReshapeReshape!model_72/tf.tile_83/Tile:output:0.model_72/tf.reshape_167/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_72/tf.reshape_167/Reshape�
"model_72/tf.concat_155/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_72/tf.concat_155/concat/axis�
model_72/tf.concat_155/concatConcatV2(model_72/tf.reshape_167/Reshape:output:0*model_72/conv3d_238/Softplus:activations:0+model_72/tf.concat_155/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_72/tf.concat_155/concat�
)model_72/conv3d_239/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_239_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_239/Conv3D/ReadVariableOp�
model_72/conv3d_239/Conv3DConv3D&model_72/tf.concat_155/concat:output:01model_72/conv3d_239/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_239/Conv3D�
*model_72/conv3d_239/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_239_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_239/BiasAdd/ReadVariableOp�
model_72/conv3d_239/BiasAddBiasAdd#model_72/conv3d_239/Conv3D:output:02model_72/conv3d_239/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_239/BiasAdd�
model_72/conv3d_239/SoftplusSoftplus$model_72/conv3d_239/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_72/conv3d_239/Softplus�
)model_72/conv3d_240/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_240_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_240/Conv3D/ReadVariableOp�
model_72/conv3d_240/Conv3DConv3D*model_72/conv3d_239/Softplus:activations:01model_72/conv3d_240/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_240/Conv3D�
*model_72/conv3d_240/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_240_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_240/BiasAdd/ReadVariableOp�
model_72/conv3d_240/BiasAddBiasAdd#model_72/conv3d_240/Conv3D:output:02model_72/conv3d_240/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_240/BiasAdd�
IdentityIdentity$model_72/conv3d_240/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_72/conv3d_238/BiasAdd/ReadVariableOp*^model_72/conv3d_238/Conv3D/ReadVariableOp+^model_72/conv3d_239/BiasAdd/ReadVariableOp*^model_72/conv3d_239/Conv3D/ReadVariableOp+^model_72/conv3d_240/BiasAdd/ReadVariableOp*^model_72/conv3d_240/Conv3D/ReadVariableOp)^model_72/dense_72/BiasAdd/ReadVariableOp(^model_72/dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2X
*model_72/conv3d_238/BiasAdd/ReadVariableOp*model_72/conv3d_238/BiasAdd/ReadVariableOp2V
)model_72/conv3d_238/Conv3D/ReadVariableOp)model_72/conv3d_238/Conv3D/ReadVariableOp2X
*model_72/conv3d_239/BiasAdd/ReadVariableOp*model_72/conv3d_239/BiasAdd/ReadVariableOp2V
)model_72/conv3d_239/Conv3D/ReadVariableOp)model_72/conv3d_239/Conv3D/ReadVariableOp2X
*model_72/conv3d_240/BiasAdd/ReadVariableOp*model_72/conv3d_240/BiasAdd/ReadVariableOp2V
)model_72/conv3d_240/Conv3D/ReadVariableOp)model_72/conv3d_240/Conv3D/ReadVariableOp2T
(model_72/dense_72/BiasAdd/ReadVariableOp(model_72/dense_72/BiasAdd/ReadVariableOp2R
'model_72/dense_72/MatMul/ReadVariableOp'model_72/dense_72/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
H__inference_conv3d_239_layer_call_and_return_conditional_losses_15182106

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
�u
�
F__inference_model_72_layer_call_and_return_conditional_losses_15182639

inputsG
)conv3d_238_conv3d_readvariableop_resource:8
*conv3d_238_biasadd_readvariableop_resource:9
'dense_72_matmul_readvariableop_resource:@@6
(dense_72_biasadd_readvariableop_resource:@G
)conv3d_239_conv3d_readvariableop_resource:8
*conv3d_239_biasadd_readvariableop_resource:G
)conv3d_240_conv3d_readvariableop_resource:8
*conv3d_240_biasadd_readvariableop_resource:
identity��!conv3d_238/BiasAdd/ReadVariableOp� conv3d_238/Conv3D/ReadVariableOp�!conv3d_239/BiasAdd/ReadVariableOp� conv3d_239/Conv3D/ReadVariableOp�!conv3d_240/BiasAdd/ReadVariableOp� conv3d_240/Conv3D/ReadVariableOp�dense_72/BiasAdd/ReadVariableOp�dense_72/MatMul/ReadVariableOp�
0tf.__operators__.getitem_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_142/strided_slice/stack�
2tf.__operators__.getitem_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_142/strided_slice/stack_1�
2tf.__operators__.getitem_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_142/strided_slice/stack_2�
*tf.__operators__.getitem_142/strided_sliceStridedSliceinputs9tf.__operators__.getitem_142/strided_slice/stack:output:0;tf.__operators__.getitem_142/strided_slice/stack_1:output:0;tf.__operators__.getitem_142/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_142/strided_slice{
range_conversion_72/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_72/sub/y�
range_conversion_72/subSub3tf.__operators__.getitem_142/strided_slice:output:0"range_conversion_72/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/sub�
range_conversion_72/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_72/truediv/y�
range_conversion_72/truedivRealDivrange_conversion_72/sub:z:0&range_conversion_72/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/truediv{
range_conversion_72/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_72/mul/y�
range_conversion_72/mulMulrange_conversion_72/truediv:z:0"range_conversion_72/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/mul{
range_conversion_72/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_72/add/y�
range_conversion_72/addAddV2range_conversion_72/mul:z:0"range_conversion_72/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/add�
0tf.__operators__.getitem_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_143/strided_slice/stack�
2tf.__operators__.getitem_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_143/strided_slice/stack_1�
2tf.__operators__.getitem_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_143/strided_slice/stack_2�
*tf.__operators__.getitem_143/strided_sliceStridedSliceinputs9tf.__operators__.getitem_143/strided_slice/stack:output:0;tf.__operators__.getitem_143/strided_slice/stack_1:output:0;tf.__operators__.getitem_143/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_143/strided_slicex
tf.concat_154/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_154/concat/axis�
tf.concat_154/concatConcatV2range_conversion_72/add:z:03tf.__operators__.getitem_143/strided_slice:output:0"tf.concat_154/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_154/concat�
 conv3d_238/Conv3D/ReadVariableOpReadVariableOp)conv3d_238_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_238/Conv3D/ReadVariableOp�
conv3d_238/Conv3DConv3Dtf.concat_154/concat:output:0(conv3d_238/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_238/Conv3D�
!conv3d_238/BiasAdd/ReadVariableOpReadVariableOp*conv3d_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_238/BiasAdd/ReadVariableOp�
conv3d_238/BiasAddBiasAddconv3d_238/Conv3D:output:0)conv3d_238/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_238/BiasAdd�
conv3d_238/SoftplusSoftplusconv3d_238/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_238/Softplus�
#average_pooling3d_83/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_83/transpose/perm�
average_pooling3d_83/transpose	Transpose!conv3d_238/Softplus:activations:0,average_pooling3d_83/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_83/transpose�
average_pooling3d_83/AvgPool3D	AvgPool3D"average_pooling3d_83/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_83/AvgPool3D�
%average_pooling3d_83/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_83/transpose_1/perm�
 average_pooling3d_83/transpose_1	Transpose'average_pooling3d_83/AvgPool3D:output:0.average_pooling3d_83/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_83/transpose_1z
reshape_144/ShapeShape$average_pooling3d_83/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_144/Shape�
reshape_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_144/strided_slice/stack�
!reshape_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_1�
!reshape_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_2�
reshape_144/strided_sliceStridedSlicereshape_144/Shape:output:0(reshape_144/strided_slice/stack:output:0*reshape_144/strided_slice/stack_1:output:0*reshape_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_144/strided_slice|
reshape_144/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_144/Reshape/shape/1�
reshape_144/Reshape/shapePack"reshape_144/strided_slice:output:0$reshape_144/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_144/Reshape/shape�
reshape_144/ReshapeReshape$average_pooling3d_83/transpose_1:y:0"reshape_144/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_144/Reshape�
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_72/MatMul/ReadVariableOp�
dense_72/MatMulMatMulreshape_144/Reshape:output:0&dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/MatMul�
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_72/BiasAdd/ReadVariableOp�
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/BiasAdd
dense_72/SoftplusSoftplusdense_72/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_72/Softplusu
reshape_145/ShapeShapedense_72/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_145/Shape�
reshape_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_145/strided_slice/stack�
!reshape_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_1�
!reshape_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_2�
reshape_145/strided_sliceStridedSlicereshape_145/Shape:output:0(reshape_145/strided_slice/stack:output:0*reshape_145/strided_slice/stack_1:output:0*reshape_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_145/strided_slice|
reshape_145/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/1|
reshape_145/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/2|
reshape_145/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/3|
reshape_145/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/4�
reshape_145/Reshape/shapePack"reshape_145/strided_slice:output:0$reshape_145/Reshape/shape/1:output:0$reshape_145/Reshape/shape/2:output:0$reshape_145/Reshape/shape/3:output:0$reshape_145/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_145/Reshape/shape�
reshape_145/ReshapeReshapedense_72/Softplus:activations:0"reshape_145/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_145/Reshape�
tf.reshape_166/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_166/Reshape/shape�
tf.reshape_166/ReshapeReshapereshape_145/Reshape:output:0%tf.reshape_166/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_166/Reshape�
tf.tile_83/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_83/Tile/multiples�
tf.tile_83/TileTiletf.reshape_166/Reshape:output:0"tf.tile_83/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_83/Tile�
tf.reshape_167/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_167/Reshape/shape�
tf.reshape_167/ReshapeReshapetf.tile_83/Tile:output:0%tf.reshape_167/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_167/Reshapex
tf.concat_155/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_155/concat/axis�
tf.concat_155/concatConcatV2tf.reshape_167/Reshape:output:0!conv3d_238/Softplus:activations:0"tf.concat_155/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_155/concat�
 conv3d_239/Conv3D/ReadVariableOpReadVariableOp)conv3d_239_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_239/Conv3D/ReadVariableOp�
conv3d_239/Conv3DConv3Dtf.concat_155/concat:output:0(conv3d_239/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_239/Conv3D�
!conv3d_239/BiasAdd/ReadVariableOpReadVariableOp*conv3d_239_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_239/BiasAdd/ReadVariableOp�
conv3d_239/BiasAddBiasAddconv3d_239/Conv3D:output:0)conv3d_239/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_239/BiasAdd�
conv3d_239/SoftplusSoftplusconv3d_239/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_239/Softplus�
 conv3d_240/Conv3D/ReadVariableOpReadVariableOp)conv3d_240_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_240/Conv3D/ReadVariableOp�
conv3d_240/Conv3DConv3D!conv3d_239/Softplus:activations:0(conv3d_240/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_240/Conv3D�
!conv3d_240/BiasAdd/ReadVariableOpReadVariableOp*conv3d_240_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_240/BiasAdd/ReadVariableOp�
conv3d_240/BiasAddBiasAddconv3d_240/Conv3D:output:0)conv3d_240/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_240/BiasAdd�
IdentityIdentityconv3d_240/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_238/BiasAdd/ReadVariableOp!^conv3d_238/Conv3D/ReadVariableOp"^conv3d_239/BiasAdd/ReadVariableOp!^conv3d_239/Conv3D/ReadVariableOp"^conv3d_240/BiasAdd/ReadVariableOp!^conv3d_240/Conv3D/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_238/BiasAdd/ReadVariableOp!conv3d_238/BiasAdd/ReadVariableOp2D
 conv3d_238/Conv3D/ReadVariableOp conv3d_238/Conv3D/ReadVariableOp2F
!conv3d_239/BiasAdd/ReadVariableOp!conv3d_239/BiasAdd/ReadVariableOp2D
 conv3d_239/Conv3D/ReadVariableOp conv3d_239/Conv3D/ReadVariableOp2F
!conv3d_240/BiasAdd/ReadVariableOp!conv3d_240/BiasAdd/ReadVariableOp2D
 conv3d_240/Conv3D/ReadVariableOp conv3d_240/Conv3D/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_238_layer_call_and_return_conditional_losses_15182023

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
F__inference_model_72_layer_call_and_return_conditional_losses_15182366	
input1
conv3d_238_15182334:!
conv3d_238_15182336:#
dense_72_15182341:@@
dense_72_15182343:@1
conv3d_239_15182355:!
conv3d_239_15182357:1
conv3d_240_15182360:!
conv3d_240_15182362:
identity��"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_142/strided_slice/stack�
2tf.__operators__.getitem_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_142/strided_slice/stack_1�
2tf.__operators__.getitem_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_142/strided_slice/stack_2�
*tf.__operators__.getitem_142/strided_sliceStridedSliceinput9tf.__operators__.getitem_142/strided_slice/stack:output:0;tf.__operators__.getitem_142/strided_slice/stack_1:output:0;tf.__operators__.getitem_142/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_142/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_142/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_151820042%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_143/strided_slice/stack�
2tf.__operators__.getitem_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_143/strided_slice/stack_1�
2tf.__operators__.getitem_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_143/strided_slice/stack_2�
*tf.__operators__.getitem_143/strided_sliceStridedSliceinput9tf.__operators__.getitem_143/strided_slice/stack:output:0;tf.__operators__.getitem_143/strided_slice/stack_1:output:0;tf.__operators__.getitem_143/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_143/strided_slicex
tf.concat_154/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_154/concat/axis�
tf.concat_154/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_143/strided_slice:output:0"tf.concat_154/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_154/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_154/concat:output:0conv3d_238_15182334conv3d_238_15182336*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_151820232$
"conv3d_238/StatefulPartitionedCall�
$average_pooling3d_83/PartitionedCallPartitionedCall+conv3d_238/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_151820372&
$average_pooling3d_83/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall-average_pooling3d_83/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_151820512
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_15182341dense_72_15182343*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_151820642"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_151820852
reshape_145/PartitionedCall�
tf.reshape_166/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_166/Reshape/shape�
tf.reshape_166/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_166/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_166/Reshape�
tf.tile_83/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_83/Tile/multiples�
tf.tile_83/TileTiletf.reshape_166/Reshape:output:0"tf.tile_83/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_83/Tile�
tf.reshape_167/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_167/Reshape/shape�
tf.reshape_167/ReshapeReshapetf.tile_83/Tile:output:0%tf.reshape_167/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_167/Reshapex
tf.concat_155/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_155/concat/axis�
tf.concat_155/concatConcatV2tf.reshape_167/Reshape:output:0+conv3d_238/StatefulPartitionedCall:output:0"tf.concat_155/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_155/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_155/concat:output:0conv3d_239_15182355conv3d_239_15182357*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_151821062$
"conv3d_239/StatefulPartitionedCall�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCall+conv3d_239/StatefulPartitionedCall:output:0conv3d_240_15182360conv3d_240_15182362*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_151821222$
"conv3d_240/StatefulPartitionedCall�
IdentityIdentity+conv3d_240/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
F__inference_dense_72_layer_call_and_return_conditional_losses_15182741

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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_15182800

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
�
J
.__inference_reshape_145_layer_call_fn_15182746

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
I__inference_reshape_145_layer_call_and_return_conditional_losses_151820852
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
�D
�
F__inference_model_72_layer_call_and_return_conditional_losses_15182129

inputs1
conv3d_238_15182024:!
conv3d_238_15182026:#
dense_72_15182065:@@
dense_72_15182067:@1
conv3d_239_15182107:!
conv3d_239_15182109:1
conv3d_240_15182123:!
conv3d_240_15182125:
identity��"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_142/strided_slice/stack�
2tf.__operators__.getitem_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_142/strided_slice/stack_1�
2tf.__operators__.getitem_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_142/strided_slice/stack_2�
*tf.__operators__.getitem_142/strided_sliceStridedSliceinputs9tf.__operators__.getitem_142/strided_slice/stack:output:0;tf.__operators__.getitem_142/strided_slice/stack_1:output:0;tf.__operators__.getitem_142/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_142/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_142/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_151820042%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_143/strided_slice/stack�
2tf.__operators__.getitem_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_143/strided_slice/stack_1�
2tf.__operators__.getitem_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_143/strided_slice/stack_2�
*tf.__operators__.getitem_143/strided_sliceStridedSliceinputs9tf.__operators__.getitem_143/strided_slice/stack:output:0;tf.__operators__.getitem_143/strided_slice/stack_1:output:0;tf.__operators__.getitem_143/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_143/strided_slicex
tf.concat_154/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_154/concat/axis�
tf.concat_154/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_143/strided_slice:output:0"tf.concat_154/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_154/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_154/concat:output:0conv3d_238_15182024conv3d_238_15182026*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_151820232$
"conv3d_238/StatefulPartitionedCall�
$average_pooling3d_83/PartitionedCallPartitionedCall+conv3d_238/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_151820372&
$average_pooling3d_83/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall-average_pooling3d_83/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_151820512
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_15182065dense_72_15182067*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_151820642"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_151820852
reshape_145/PartitionedCall�
tf.reshape_166/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_166/Reshape/shape�
tf.reshape_166/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_166/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_166/Reshape�
tf.tile_83/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_83/Tile/multiples�
tf.tile_83/TileTiletf.reshape_166/Reshape:output:0"tf.tile_83/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_83/Tile�
tf.reshape_167/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_167/Reshape/shape�
tf.reshape_167/ReshapeReshapetf.tile_83/Tile:output:0%tf.reshape_167/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_167/Reshapex
tf.concat_155/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_155/concat/axis�
tf.concat_155/concatConcatV2tf.reshape_167/Reshape:output:0+conv3d_238/StatefulPartitionedCall:output:0"tf.concat_155/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_155/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_155/concat:output:0conv3d_239_15182107conv3d_239_15182109*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_151821062$
"conv3d_239/StatefulPartitionedCall�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCall+conv3d_239/StatefulPartitionedCall:output:0conv3d_240_15182123conv3d_240_15182125*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_151821222$
"conv3d_240/StatefulPartitionedCall�
IdentityIdentity+conv3d_240/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_239_layer_call_fn_15182770

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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_151821062
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
+__inference_model_72_layer_call_fn_15182320	
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
F__inference_model_72_layer_call_and_return_conditional_losses_151822802
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
e
I__inference_reshape_144_layer_call_and_return_conditional_losses_15182051

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

n
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15181964

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

conv3d_240<
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
r__call__
*s&call_and_return_all_conditional_losses
t_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
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
 trainable_variables
!regularization_losses
"	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
�

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
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
<trainable_variables
=regularization_losses
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
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
 "
trackable_list_wrapper
�
	variables
Elayer_regularization_losses

Flayers
trainable_variables
Gnon_trainable_variables
Hmetrics
Ilayer_metrics
regularization_losses
r__call__
t_default_save_signature
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
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
	variables
Jlayer_regularization_losses

Klayers
trainable_variables
Lnon_trainable_variables
Mmetrics
Nlayer_metrics
regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_238/kernel
: 2conv3d_238/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
Olayer_regularization_losses

Players
 trainable_variables
Qnon_trainable_variables
Rmetrics
Slayer_metrics
!regularization_losses
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
#	variables
Tlayer_regularization_losses

Ulayers
$trainable_variables
Vnon_trainable_variables
Wmetrics
Xlayer_metrics
%regularization_losses
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
'	variables
Ylayer_regularization_losses

Zlayers
(trainable_variables
[non_trainable_variables
\metrics
]layer_metrics
)regularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_72/kernel
:@ 2dense_72/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
-	variables
^layer_regularization_losses

_layers
.trainable_variables
`non_trainable_variables
ametrics
blayer_metrics
/regularization_losses
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
1	variables
clayer_regularization_losses

dlayers
2trainable_variables
enon_trainable_variables
fmetrics
glayer_metrics
3regularization_losses
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
1:/ 2conv3d_239/kernel
: 2conv3d_239/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
;	variables
hlayer_regularization_losses

ilayers
<trainable_variables
jnon_trainable_variables
kmetrics
llayer_metrics
=regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_240/kernel
: 2conv3d_240/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
A	variables
mlayer_regularization_losses

nlayers
Btrainable_variables
onon_trainable_variables
pmetrics
qlayer_metrics
Cregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�2�
+__inference_model_72_layer_call_fn_15182148
+__inference_model_72_layer_call_fn_15182456
+__inference_model_72_layer_call_fn_15182477
+__inference_model_72_layer_call_fn_15182320�
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
F__inference_model_72_layer_call_and_return_conditional_losses_15182558
F__inference_model_72_layer_call_and_return_conditional_losses_15182639
F__inference_model_72_layer_call_and_return_conditional_losses_15182366
F__inference_model_72_layer_call_and_return_conditional_losses_15182412�
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
#__inference__wrapped_model_15181951input"�
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
6__inference_range_conversion_72_layer_call_fn_15182644�
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_15182656�
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
-__inference_conv3d_238_layer_call_fn_15182665�
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_15182676�
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
7__inference_average_pooling3d_83_layer_call_fn_15182681
7__inference_average_pooling3d_83_layer_call_fn_15182686�
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
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15182695
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15182704�
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
.__inference_reshape_144_layer_call_fn_15182709�
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_15182721�
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
+__inference_dense_72_layer_call_fn_15182730�
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
F__inference_dense_72_layer_call_and_return_conditional_losses_15182741�
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
.__inference_reshape_145_layer_call_fn_15182746�
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_15182761�
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
-__inference_conv3d_239_layer_call_fn_15182770�
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_15182781�
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
-__inference_conv3d_240_layer_call_fn_15182790�
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_15182800�
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
&__inference_signature_wrapper_15182435input"�
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
#__inference__wrapped_model_15181951�+,9:?@:�7
0�-
+�(
input���������
� "C�@
>

conv3d_2400�-

conv3d_240����������
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15182695�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_83_layer_call_and_return_conditional_losses_15182704p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_83_layer_call_fn_15182681�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_83_layer_call_fn_15182686c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_238_layer_call_and_return_conditional_losses_15182676t;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_238_layer_call_fn_15182665g;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_239_layer_call_and_return_conditional_losses_15182781t9:;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_239_layer_call_fn_15182770g9:;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_240_layer_call_and_return_conditional_losses_15182800t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_240_layer_call_fn_15182790g?@;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_72_layer_call_and_return_conditional_losses_15182741\+,/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_72_layer_call_fn_15182730O+,/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_72_layer_call_and_return_conditional_losses_15182366�+,9:?@B�?
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
F__inference_model_72_layer_call_and_return_conditional_losses_15182412�+,9:?@B�?
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
F__inference_model_72_layer_call_and_return_conditional_losses_15182558�+,9:?@C�@
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
F__inference_model_72_layer_call_and_return_conditional_losses_15182639�+,9:?@C�@
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
+__inference_model_72_layer_call_fn_15182148t+,9:?@B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_72_layer_call_fn_15182320t+,9:?@B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_72_layer_call_fn_15182456u+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_72_layer_call_fn_15182477u+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_15182656t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_72_layer_call_fn_15182644g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_144_layer_call_and_return_conditional_losses_15182721d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_144_layer_call_fn_15182709W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_145_layer_call_and_return_conditional_losses_15182761d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_145_layer_call_fn_15182746W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_15182435�+,9:?@C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_2400�-

conv3d_240���������