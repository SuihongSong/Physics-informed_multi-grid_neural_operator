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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv3d_259/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_259/kernel
�
%conv3d_259/kernel/Read/ReadVariableOpReadVariableOpconv3d_259/kernel**
_output_shapes
:*
dtype0
v
conv3d_259/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_259/bias
o
#conv3d_259/bias/Read/ReadVariableOpReadVariableOpconv3d_259/bias*
_output_shapes
:*
dtype0
�
conv3d_260/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_260/kernel
�
%conv3d_260/kernel/Read/ReadVariableOpReadVariableOpconv3d_260/kernel**
_output_shapes
:*
dtype0
v
conv3d_260/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_260/bias
o
#conv3d_260/bias/Read/ReadVariableOpReadVariableOpconv3d_260/bias*
_output_shapes
:*
dtype0
z
dense_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_49/kernel
s
#dense_49/kernel/Read/ReadVariableOpReadVariableOpdense_49/kernel*
_output_shapes

:@@*
dtype0
r
dense_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_49/bias
k
!dense_49/bias/Read/ReadVariableOpReadVariableOpdense_49/bias*
_output_shapes
:@*
dtype0
�
conv3d_261/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_261/kernel
�
%conv3d_261/kernel/Read/ReadVariableOpReadVariableOpconv3d_261/kernel**
_output_shapes
:*
dtype0
v
conv3d_261/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_261/bias
o
#conv3d_261/bias/Read/ReadVariableOpReadVariableOpconv3d_261/bias*
_output_shapes
:*
dtype0
�
conv3d_262/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_262/kernel
�
%conv3d_262/kernel/Read/ReadVariableOpReadVariableOpconv3d_262/kernel**
_output_shapes
:*
dtype0
v
conv3d_262/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_262/bias
o
#conv3d_262/bias/Read/ReadVariableOpReadVariableOpconv3d_262/bias*
_output_shapes
:*
dtype0
�
conv3d_263/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_263/kernel
�
%conv3d_263/kernel/Read/ReadVariableOpReadVariableOpconv3d_263/kernel**
_output_shapes
:*
dtype0
v
conv3d_263/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_263/bias
o
#conv3d_263/bias/Read/ReadVariableOpReadVariableOpconv3d_263/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�-
value�-B�- B�-
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-3
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-4
layer-21
layer_with_weights-5
layer-22
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 

	keras_api
R
	variables
regularization_losses
 trainable_variables
!	keras_api

"	keras_api

#	keras_api
h

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
R
*	variables
+regularization_losses
,trainable_variables
-	keras_api
h

.kernel
/bias
0	variables
1regularization_losses
2trainable_variables
3	keras_api
R
4	variables
5regularization_losses
6trainable_variables
7	keras_api
R
8	variables
9regularization_losses
:trainable_variables
;	keras_api
h

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
R
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api

F	keras_api

G	keras_api

H	keras_api

I	keras_api
h

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api

P	keras_api

Q	keras_api

R	keras_api

S	keras_api
h

Tkernel
Ubias
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
h

Zkernel
[bias
\	variables
]regularization_losses
^trainable_variables
_	keras_api
 
V
$0
%1
.2
/3
<4
=5
J6
K7
T8
U9
Z10
[11
V
$0
%1
.2
/3
<4
=5
J6
K7
T8
U9
Z10
[11
�
`non_trainable_variables
ametrics
blayer_regularization_losses
clayer_metrics
regularization_losses

dlayers
	variables
trainable_variables
 
 
 
 
 
�
enon_trainable_variables
	variables
fmetrics
glayer_regularization_losses
hlayer_metrics
regularization_losses

ilayers
 trainable_variables
 
 
][
VARIABLE_VALUEconv3d_259/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_259/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
�
jnon_trainable_variables
&	variables
kmetrics
llayer_regularization_losses
mlayer_metrics
'regularization_losses

nlayers
(trainable_variables
 
 
 
�
onon_trainable_variables
*	variables
pmetrics
qlayer_regularization_losses
rlayer_metrics
+regularization_losses

slayers
,trainable_variables
][
VARIABLE_VALUEconv3d_260/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_260/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
 

.0
/1
�
tnon_trainable_variables
0	variables
umetrics
vlayer_regularization_losses
wlayer_metrics
1regularization_losses

xlayers
2trainable_variables
 
 
 
�
ynon_trainable_variables
4	variables
zmetrics
{layer_regularization_losses
|layer_metrics
5regularization_losses

}layers
6trainable_variables
 
 
 
�
~non_trainable_variables
8	variables
metrics
 �layer_regularization_losses
�layer_metrics
9regularization_losses
�layers
:trainable_variables
[Y
VARIABLE_VALUEdense_49/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_49/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
�
�non_trainable_variables
>	variables
�metrics
 �layer_regularization_losses
�layer_metrics
?regularization_losses
�layers
@trainable_variables
 
 
 
�
�non_trainable_variables
B	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Cregularization_losses
�layers
Dtrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_261/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_261/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 

J0
K1
�
�non_trainable_variables
L	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Mregularization_losses
�layers
Ntrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_262/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_262/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1
 

T0
U1
�
�non_trainable_variables
V	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Wregularization_losses
�layers
Xtrainable_variables
][
VARIABLE_VALUEconv3d_263/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_263/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1
 

Z0
[1
�
�non_trainable_variables
\	variables
�metrics
 �layer_regularization_losses
�layer_metrics
]regularization_losses
�layers
^trainable_variables
 
 
 
 
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
15
16
17
18
19
20
21
22
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
:���������*
dtype0*(
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_259/kernelconv3d_259/biasconv3d_260/kernelconv3d_260/biasdense_49/kerneldense_49/biasconv3d_261/kernelconv3d_261/biasconv3d_262/kernelconv3d_262/biasconv3d_263/kernelconv3d_263/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� */
f*R(
&__inference_signature_wrapper_14222573
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_259/kernel/Read/ReadVariableOp#conv3d_259/bias/Read/ReadVariableOp%conv3d_260/kernel/Read/ReadVariableOp#conv3d_260/bias/Read/ReadVariableOp#dense_49/kernel/Read/ReadVariableOp!dense_49/bias/Read/ReadVariableOp%conv3d_261/kernel/Read/ReadVariableOp#conv3d_261/bias/Read/ReadVariableOp%conv3d_262/kernel/Read/ReadVariableOp#conv3d_262/bias/Read/ReadVariableOp%conv3d_263/kernel/Read/ReadVariableOp#conv3d_263/bias/Read/ReadVariableOpConst*
Tin
2*
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
!__inference__traced_save_14223135
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_259/kernelconv3d_259/biasconv3d_260/kernelconv3d_260/biasdense_49/kerneldense_49/biasconv3d_261/kernelconv3d_261/biasconv3d_262/kernelconv3d_262/biasconv3d_263/kernelconv3d_263/bias*
Tin
2*
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
$__inference__traced_restore_14223181��
�
�
F__inference_dense_49_layer_call_and_return_conditional_losses_14222055

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

o
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14221898

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
��
�

F__inference_model_49_layer_call_and_return_conditional_losses_14222739

inputsG
)conv3d_259_conv3d_readvariableop_resource:8
*conv3d_259_biasadd_readvariableop_resource:G
)conv3d_260_conv3d_readvariableop_resource:8
*conv3d_260_biasadd_readvariableop_resource:9
'dense_49_matmul_readvariableop_resource:@@6
(dense_49_biasadd_readvariableop_resource:@G
)conv3d_261_conv3d_readvariableop_resource:8
*conv3d_261_biasadd_readvariableop_resource:G
)conv3d_262_conv3d_readvariableop_resource:8
*conv3d_262_biasadd_readvariableop_resource:G
)conv3d_263_conv3d_readvariableop_resource:8
*conv3d_263_biasadd_readvariableop_resource:
identity��!conv3d_259/BiasAdd/ReadVariableOp� conv3d_259/Conv3D/ReadVariableOp�!conv3d_260/BiasAdd/ReadVariableOp� conv3d_260/Conv3D/ReadVariableOp�!conv3d_261/BiasAdd/ReadVariableOp� conv3d_261/Conv3D/ReadVariableOp�!conv3d_262/BiasAdd/ReadVariableOp� conv3d_262/Conv3D/ReadVariableOp�!conv3d_263/BiasAdd/ReadVariableOp� conv3d_263/Conv3D/ReadVariableOp�dense_49/BiasAdd/ReadVariableOp�dense_49/MatMul/ReadVariableOp�
0tf.__operators__.getitem_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_434/strided_slice/stack�
2tf.__operators__.getitem_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_434/strided_slice/stack_1�
2tf.__operators__.getitem_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_434/strided_slice/stack_2�
*tf.__operators__.getitem_434/strided_sliceStridedSliceinputs9tf.__operators__.getitem_434/strided_slice/stack:output:0;tf.__operators__.getitem_434/strided_slice/stack_1:output:0;tf.__operators__.getitem_434/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_434/strided_slice{
range_conversion_49/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_49/sub/y�
range_conversion_49/subSub3tf.__operators__.getitem_434/strided_slice:output:0"range_conversion_49/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/sub�
range_conversion_49/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_49/truediv/y�
range_conversion_49/truedivRealDivrange_conversion_49/sub:z:0&range_conversion_49/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/truediv{
range_conversion_49/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_49/mul/y�
range_conversion_49/mulMulrange_conversion_49/truediv:z:0"range_conversion_49/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/mul{
range_conversion_49/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_49/add/y�
range_conversion_49/addAddV2range_conversion_49/mul:z:0"range_conversion_49/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/add�
0tf.__operators__.getitem_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_435/strided_slice/stack�
2tf.__operators__.getitem_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_435/strided_slice/stack_1�
2tf.__operators__.getitem_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_435/strided_slice/stack_2�
*tf.__operators__.getitem_435/strided_sliceStridedSliceinputs9tf.__operators__.getitem_435/strided_slice/stack:output:0;tf.__operators__.getitem_435/strided_slice/stack_1:output:0;tf.__operators__.getitem_435/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_435/strided_slicex
tf.concat_584/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_584/concat/axis�
tf.concat_584/concatConcatV2range_conversion_49/add:z:03tf.__operators__.getitem_435/strided_slice:output:0"tf.concat_584/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_584/concat�
 conv3d_259/Conv3D/ReadVariableOpReadVariableOp)conv3d_259_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_259/Conv3D/ReadVariableOp�
conv3d_259/Conv3DConv3Dtf.concat_584/concat:output:0(conv3d_259/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_259/Conv3D�
!conv3d_259/BiasAdd/ReadVariableOpReadVariableOp*conv3d_259_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_259/BiasAdd/ReadVariableOp�
conv3d_259/BiasAddBiasAddconv3d_259/Conv3D:output:0)conv3d_259/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_259/BiasAdd�
conv3d_259/SoftplusSoftplusconv3d_259/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_259/Softplus�
$average_pooling3d_105/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_105/transpose/perm�
average_pooling3d_105/transpose	Transpose!conv3d_259/Softplus:activations:0-average_pooling3d_105/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_105/transpose�
average_pooling3d_105/AvgPool3D	AvgPool3D#average_pooling3d_105/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_105/AvgPool3D�
&average_pooling3d_105/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_105/transpose_1/perm�
!average_pooling3d_105/transpose_1	Transpose(average_pooling3d_105/AvgPool3D:output:0/average_pooling3d_105/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_105/transpose_1�
 conv3d_260/Conv3D/ReadVariableOpReadVariableOp)conv3d_260_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_260/Conv3D/ReadVariableOp�
conv3d_260/Conv3DConv3D%average_pooling3d_105/transpose_1:y:0(conv3d_260/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_260/Conv3D�
!conv3d_260/BiasAdd/ReadVariableOpReadVariableOp*conv3d_260_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_260/BiasAdd/ReadVariableOp�
conv3d_260/BiasAddBiasAddconv3d_260/Conv3D:output:0)conv3d_260/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_260/BiasAdd�
conv3d_260/SoftplusSoftplusconv3d_260/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_260/Softplus�
$average_pooling3d_106/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_106/transpose/perm�
average_pooling3d_106/transpose	Transpose!conv3d_260/Softplus:activations:0-average_pooling3d_106/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_106/transpose�
average_pooling3d_106/AvgPool3D	AvgPool3D#average_pooling3d_106/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_106/AvgPool3D�
&average_pooling3d_106/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_106/transpose_1/perm�
!average_pooling3d_106/transpose_1	Transpose(average_pooling3d_106/AvgPool3D:output:0/average_pooling3d_106/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_106/transpose_1y
reshape_98/ShapeShape%average_pooling3d_106/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_98/Shape�
reshape_98/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_98/strided_slice/stack�
 reshape_98/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_98/strided_slice/stack_1�
 reshape_98/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_98/strided_slice/stack_2�
reshape_98/strided_sliceStridedSlicereshape_98/Shape:output:0'reshape_98/strided_slice/stack:output:0)reshape_98/strided_slice/stack_1:output:0)reshape_98/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_98/strided_slicez
reshape_98/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_98/Reshape/shape/1�
reshape_98/Reshape/shapePack!reshape_98/strided_slice:output:0#reshape_98/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_98/Reshape/shape�
reshape_98/ReshapeReshape%average_pooling3d_106/transpose_1:y:0!reshape_98/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_98/Reshape�
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_49/MatMul/ReadVariableOp�
dense_49/MatMulMatMulreshape_98/Reshape:output:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_49/MatMul�
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_49/BiasAdd/ReadVariableOp�
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_49/BiasAdd
dense_49/SoftplusSoftplusdense_49/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_49/Softpluss
reshape_99/ShapeShapedense_49/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_99/Shape�
reshape_99/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_99/strided_slice/stack�
 reshape_99/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_99/strided_slice/stack_1�
 reshape_99/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_99/strided_slice/stack_2�
reshape_99/strided_sliceStridedSlicereshape_99/Shape:output:0'reshape_99/strided_slice/stack:output:0)reshape_99/strided_slice/stack_1:output:0)reshape_99/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_99/strided_slicez
reshape_99/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/1z
reshape_99/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/2z
reshape_99/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/3z
reshape_99/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/4�
reshape_99/Reshape/shapePack!reshape_99/strided_slice:output:0#reshape_99/Reshape/shape/1:output:0#reshape_99/Reshape/shape/2:output:0#reshape_99/Reshape/shape/3:output:0#reshape_99/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_99/Reshape/shape�
reshape_99/ReshapeReshapedense_49/Softplus:activations:0!reshape_99/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_99/Reshape�
tf.reshape_734/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_734/Reshape/shape�
tf.reshape_734/ReshapeReshapereshape_99/Reshape:output:0%tf.reshape_734/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_734/Reshape�
tf.tile_367/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_367/Tile/multiples�
tf.tile_367/TileTiletf.reshape_734/Reshape:output:0#tf.tile_367/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_367/Tile�
tf.reshape_735/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_735/Reshape/shape�
tf.reshape_735/ReshapeReshapetf.tile_367/Tile:output:0%tf.reshape_735/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_735/Reshapex
tf.concat_585/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_585/concat/axis�
tf.concat_585/concatConcatV2tf.reshape_735/Reshape:output:0!conv3d_260/Softplus:activations:0"tf.concat_585/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_585/concat�
 conv3d_261/Conv3D/ReadVariableOpReadVariableOp)conv3d_261_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_261/Conv3D/ReadVariableOp�
conv3d_261/Conv3DConv3Dtf.concat_585/concat:output:0(conv3d_261/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_261/Conv3D�
!conv3d_261/BiasAdd/ReadVariableOpReadVariableOp*conv3d_261_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_261/BiasAdd/ReadVariableOp�
conv3d_261/BiasAddBiasAddconv3d_261/Conv3D:output:0)conv3d_261/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_261/BiasAdd�
conv3d_261/SoftplusSoftplusconv3d_261/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_261/Softplus�
tf.reshape_736/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_736/Reshape/shape�
tf.reshape_736/ReshapeReshape!conv3d_261/Softplus:activations:0%tf.reshape_736/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_736/Reshape�
tf.tile_368/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_368/Tile/multiples�
tf.tile_368/TileTiletf.reshape_736/Reshape:output:0#tf.tile_368/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_368/Tile�
tf.reshape_737/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_737/Reshape/shape�
tf.reshape_737/ReshapeReshapetf.tile_368/Tile:output:0%tf.reshape_737/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_737/Reshapex
tf.concat_586/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_586/concat/axis�
tf.concat_586/concatConcatV2tf.reshape_737/Reshape:output:0!conv3d_259/Softplus:activations:0"tf.concat_586/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_586/concat�
 conv3d_262/Conv3D/ReadVariableOpReadVariableOp)conv3d_262_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_262/Conv3D/ReadVariableOp�
conv3d_262/Conv3DConv3Dtf.concat_586/concat:output:0(conv3d_262/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_262/Conv3D�
!conv3d_262/BiasAdd/ReadVariableOpReadVariableOp*conv3d_262_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_262/BiasAdd/ReadVariableOp�
conv3d_262/BiasAddBiasAddconv3d_262/Conv3D:output:0)conv3d_262/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_262/BiasAdd�
conv3d_262/SoftplusSoftplusconv3d_262/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_262/Softplus�
 conv3d_263/Conv3D/ReadVariableOpReadVariableOp)conv3d_263_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_263/Conv3D/ReadVariableOp�
conv3d_263/Conv3DConv3D!conv3d_262/Softplus:activations:0(conv3d_263/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_263/Conv3D�
!conv3d_263/BiasAdd/ReadVariableOpReadVariableOp*conv3d_263_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_263/BiasAdd/ReadVariableOp�
conv3d_263/BiasAddBiasAddconv3d_263/Conv3D:output:0)conv3d_263/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_263/BiasAdd�
IdentityIdentityconv3d_263/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_259/BiasAdd/ReadVariableOp!^conv3d_259/Conv3D/ReadVariableOp"^conv3d_260/BiasAdd/ReadVariableOp!^conv3d_260/Conv3D/ReadVariableOp"^conv3d_261/BiasAdd/ReadVariableOp!^conv3d_261/Conv3D/ReadVariableOp"^conv3d_262/BiasAdd/ReadVariableOp!^conv3d_262/Conv3D/ReadVariableOp"^conv3d_263/BiasAdd/ReadVariableOp!^conv3d_263/Conv3D/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_259/BiasAdd/ReadVariableOp!conv3d_259/BiasAdd/ReadVariableOp2D
 conv3d_259/Conv3D/ReadVariableOp conv3d_259/Conv3D/ReadVariableOp2F
!conv3d_260/BiasAdd/ReadVariableOp!conv3d_260/BiasAdd/ReadVariableOp2D
 conv3d_260/Conv3D/ReadVariableOp conv3d_260/Conv3D/ReadVariableOp2F
!conv3d_261/BiasAdd/ReadVariableOp!conv3d_261/BiasAdd/ReadVariableOp2D
 conv3d_261/Conv3D/ReadVariableOp conv3d_261/Conv3D/ReadVariableOp2F
!conv3d_262/BiasAdd/ReadVariableOp!conv3d_262/BiasAdd/ReadVariableOp2D
 conv3d_262/Conv3D/ReadVariableOp conv3d_262/Conv3D/ReadVariableOp2F
!conv3d_263/BiasAdd/ReadVariableOp!conv3d_263/BiasAdd/ReadVariableOp2D
 conv3d_263/Conv3D/ReadVariableOp conv3d_263/Conv3D/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
T
8__inference_average_pooling3d_105_layer_call_fn_14222889

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
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_142218982
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
�^
�
F__inference_model_49_layer_call_and_return_conditional_losses_14222145

inputs1
conv3d_259_14221988:!
conv3d_259_14221990:1
conv3d_260_14222015:!
conv3d_260_14222017:#
dense_49_14222056:@@
dense_49_14222058:@1
conv3d_261_14222098:!
conv3d_261_14222100:1
conv3d_262_14222123:!
conv3d_262_14222125:1
conv3d_263_14222139:!
conv3d_263_14222141:
identity��"conv3d_259/StatefulPartitionedCall�"conv3d_260/StatefulPartitionedCall�"conv3d_261/StatefulPartitionedCall�"conv3d_262/StatefulPartitionedCall�"conv3d_263/StatefulPartitionedCall� dense_49/StatefulPartitionedCall�
0tf.__operators__.getitem_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_434/strided_slice/stack�
2tf.__operators__.getitem_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_434/strided_slice/stack_1�
2tf.__operators__.getitem_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_434/strided_slice/stack_2�
*tf.__operators__.getitem_434/strided_sliceStridedSliceinputs9tf.__operators__.getitem_434/strided_slice/stack:output:0;tf.__operators__.getitem_434/strided_slice/stack_1:output:0;tf.__operators__.getitem_434/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_434/strided_slice�
#range_conversion_49/PartitionedCallPartitionedCall3tf.__operators__.getitem_434/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_142219682%
#range_conversion_49/PartitionedCall�
0tf.__operators__.getitem_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_435/strided_slice/stack�
2tf.__operators__.getitem_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_435/strided_slice/stack_1�
2tf.__operators__.getitem_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_435/strided_slice/stack_2�
*tf.__operators__.getitem_435/strided_sliceStridedSliceinputs9tf.__operators__.getitem_435/strided_slice/stack:output:0;tf.__operators__.getitem_435/strided_slice/stack_1:output:0;tf.__operators__.getitem_435/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_435/strided_slicex
tf.concat_584/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_584/concat/axis�
tf.concat_584/concatConcatV2,range_conversion_49/PartitionedCall:output:03tf.__operators__.getitem_435/strided_slice:output:0"tf.concat_584/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_584/concat�
"conv3d_259/StatefulPartitionedCallStatefulPartitionedCalltf.concat_584/concat:output:0conv3d_259_14221988conv3d_259_14221990*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_259_layer_call_and_return_conditional_losses_142219872$
"conv3d_259/StatefulPartitionedCall�
%average_pooling3d_105/PartitionedCallPartitionedCall+conv3d_259/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_142220012'
%average_pooling3d_105/PartitionedCall�
"conv3d_260/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_105/PartitionedCall:output:0conv3d_260_14222015conv3d_260_14222017*
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
H__inference_conv3d_260_layer_call_and_return_conditional_losses_142220142$
"conv3d_260/StatefulPartitionedCall�
%average_pooling3d_106/PartitionedCallPartitionedCall+conv3d_260/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_142220282'
%average_pooling3d_106/PartitionedCall�
reshape_98/PartitionedCallPartitionedCall.average_pooling3d_106/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_98_layer_call_and_return_conditional_losses_142220422
reshape_98/PartitionedCall�
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#reshape_98/PartitionedCall:output:0dense_49_14222056dense_49_14222058*
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
F__inference_dense_49_layer_call_and_return_conditional_losses_142220552"
 dense_49/StatefulPartitionedCall�
reshape_99/PartitionedCallPartitionedCall)dense_49/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_99_layer_call_and_return_conditional_losses_142220762
reshape_99/PartitionedCall�
tf.reshape_734/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_734/Reshape/shape�
tf.reshape_734/ReshapeReshape#reshape_99/PartitionedCall:output:0%tf.reshape_734/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_734/Reshape�
tf.tile_367/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_367/Tile/multiples�
tf.tile_367/TileTiletf.reshape_734/Reshape:output:0#tf.tile_367/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_367/Tile�
tf.reshape_735/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_735/Reshape/shape�
tf.reshape_735/ReshapeReshapetf.tile_367/Tile:output:0%tf.reshape_735/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_735/Reshapex
tf.concat_585/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_585/concat/axis�
tf.concat_585/concatConcatV2tf.reshape_735/Reshape:output:0+conv3d_260/StatefulPartitionedCall:output:0"tf.concat_585/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_585/concat�
"conv3d_261/StatefulPartitionedCallStatefulPartitionedCalltf.concat_585/concat:output:0conv3d_261_14222098conv3d_261_14222100*
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
H__inference_conv3d_261_layer_call_and_return_conditional_losses_142220972$
"conv3d_261/StatefulPartitionedCall�
tf.reshape_736/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_736/Reshape/shape�
tf.reshape_736/ReshapeReshape+conv3d_261/StatefulPartitionedCall:output:0%tf.reshape_736/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_736/Reshape�
tf.tile_368/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_368/Tile/multiples�
tf.tile_368/TileTiletf.reshape_736/Reshape:output:0#tf.tile_368/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_368/Tile�
tf.reshape_737/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_737/Reshape/shape�
tf.reshape_737/ReshapeReshapetf.tile_368/Tile:output:0%tf.reshape_737/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_737/Reshapex
tf.concat_586/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_586/concat/axis�
tf.concat_586/concatConcatV2tf.reshape_737/Reshape:output:0+conv3d_259/StatefulPartitionedCall:output:0"tf.concat_586/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_586/concat�
"conv3d_262/StatefulPartitionedCallStatefulPartitionedCalltf.concat_586/concat:output:0conv3d_262_14222123conv3d_262_14222125*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_262_layer_call_and_return_conditional_losses_142221222$
"conv3d_262/StatefulPartitionedCall�
"conv3d_263/StatefulPartitionedCallStatefulPartitionedCall+conv3d_262/StatefulPartitionedCall:output:0conv3d_263_14222139conv3d_263_14222141*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_263_layer_call_and_return_conditional_losses_142221382$
"conv3d_263/StatefulPartitionedCall�
IdentityIdentity+conv3d_263/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_259/StatefulPartitionedCall#^conv3d_260/StatefulPartitionedCall#^conv3d_261/StatefulPartitionedCall#^conv3d_262/StatefulPartitionedCall#^conv3d_263/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_259/StatefulPartitionedCall"conv3d_259/StatefulPartitionedCall2H
"conv3d_260/StatefulPartitionedCall"conv3d_260/StatefulPartitionedCall2H
"conv3d_261/StatefulPartitionedCall"conv3d_261/StatefulPartitionedCall2H
"conv3d_262/StatefulPartitionedCall"conv3d_262/StatefulPartitionedCall2H
"conv3d_263/StatefulPartitionedCall"conv3d_263/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
o
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14222028

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

o
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14221928

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
��
�
#__inference__wrapped_model_14221885	
inputP
2model_49_conv3d_259_conv3d_readvariableop_resource:A
3model_49_conv3d_259_biasadd_readvariableop_resource:P
2model_49_conv3d_260_conv3d_readvariableop_resource:A
3model_49_conv3d_260_biasadd_readvariableop_resource:B
0model_49_dense_49_matmul_readvariableop_resource:@@?
1model_49_dense_49_biasadd_readvariableop_resource:@P
2model_49_conv3d_261_conv3d_readvariableop_resource:A
3model_49_conv3d_261_biasadd_readvariableop_resource:P
2model_49_conv3d_262_conv3d_readvariableop_resource:A
3model_49_conv3d_262_biasadd_readvariableop_resource:P
2model_49_conv3d_263_conv3d_readvariableop_resource:A
3model_49_conv3d_263_biasadd_readvariableop_resource:
identity��*model_49/conv3d_259/BiasAdd/ReadVariableOp�)model_49/conv3d_259/Conv3D/ReadVariableOp�*model_49/conv3d_260/BiasAdd/ReadVariableOp�)model_49/conv3d_260/Conv3D/ReadVariableOp�*model_49/conv3d_261/BiasAdd/ReadVariableOp�)model_49/conv3d_261/Conv3D/ReadVariableOp�*model_49/conv3d_262/BiasAdd/ReadVariableOp�)model_49/conv3d_262/Conv3D/ReadVariableOp�*model_49/conv3d_263/BiasAdd/ReadVariableOp�)model_49/conv3d_263/Conv3D/ReadVariableOp�(model_49/dense_49/BiasAdd/ReadVariableOp�'model_49/dense_49/MatMul/ReadVariableOp�
9model_49/tf.__operators__.getitem_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_49/tf.__operators__.getitem_434/strided_slice/stack�
;model_49/tf.__operators__.getitem_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_49/tf.__operators__.getitem_434/strided_slice/stack_1�
;model_49/tf.__operators__.getitem_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_49/tf.__operators__.getitem_434/strided_slice/stack_2�
3model_49/tf.__operators__.getitem_434/strided_sliceStridedSliceinputBmodel_49/tf.__operators__.getitem_434/strided_slice/stack:output:0Dmodel_49/tf.__operators__.getitem_434/strided_slice/stack_1:output:0Dmodel_49/tf.__operators__.getitem_434/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_49/tf.__operators__.getitem_434/strided_slice�
"model_49/range_conversion_49/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_49/range_conversion_49/sub/y�
 model_49/range_conversion_49/subSub<model_49/tf.__operators__.getitem_434/strided_slice:output:0+model_49/range_conversion_49/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_49/range_conversion_49/sub�
&model_49/range_conversion_49/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_49/range_conversion_49/truediv/y�
$model_49/range_conversion_49/truedivRealDiv$model_49/range_conversion_49/sub:z:0/model_49/range_conversion_49/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_49/range_conversion_49/truediv�
"model_49/range_conversion_49/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_49/range_conversion_49/mul/y�
 model_49/range_conversion_49/mulMul(model_49/range_conversion_49/truediv:z:0+model_49/range_conversion_49/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_49/range_conversion_49/mul�
"model_49/range_conversion_49/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_49/range_conversion_49/add/y�
 model_49/range_conversion_49/addAddV2$model_49/range_conversion_49/mul:z:0+model_49/range_conversion_49/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_49/range_conversion_49/add�
9model_49/tf.__operators__.getitem_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_49/tf.__operators__.getitem_435/strided_slice/stack�
;model_49/tf.__operators__.getitem_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_49/tf.__operators__.getitem_435/strided_slice/stack_1�
;model_49/tf.__operators__.getitem_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_49/tf.__operators__.getitem_435/strided_slice/stack_2�
3model_49/tf.__operators__.getitem_435/strided_sliceStridedSliceinputBmodel_49/tf.__operators__.getitem_435/strided_slice/stack:output:0Dmodel_49/tf.__operators__.getitem_435/strided_slice/stack_1:output:0Dmodel_49/tf.__operators__.getitem_435/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_49/tf.__operators__.getitem_435/strided_slice�
"model_49/tf.concat_584/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_49/tf.concat_584/concat/axis�
model_49/tf.concat_584/concatConcatV2$model_49/range_conversion_49/add:z:0<model_49/tf.__operators__.getitem_435/strided_slice:output:0+model_49/tf.concat_584/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_49/tf.concat_584/concat�
)model_49/conv3d_259/Conv3D/ReadVariableOpReadVariableOp2model_49_conv3d_259_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_49/conv3d_259/Conv3D/ReadVariableOp�
model_49/conv3d_259/Conv3DConv3D&model_49/tf.concat_584/concat:output:01model_49/conv3d_259/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_49/conv3d_259/Conv3D�
*model_49/conv3d_259/BiasAdd/ReadVariableOpReadVariableOp3model_49_conv3d_259_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_49/conv3d_259/BiasAdd/ReadVariableOp�
model_49/conv3d_259/BiasAddBiasAdd#model_49/conv3d_259/Conv3D:output:02model_49/conv3d_259/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_49/conv3d_259/BiasAdd�
model_49/conv3d_259/SoftplusSoftplus$model_49/conv3d_259/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_49/conv3d_259/Softplus�
-model_49/average_pooling3d_105/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_49/average_pooling3d_105/transpose/perm�
(model_49/average_pooling3d_105/transpose	Transpose*model_49/conv3d_259/Softplus:activations:06model_49/average_pooling3d_105/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_49/average_pooling3d_105/transpose�
(model_49/average_pooling3d_105/AvgPool3D	AvgPool3D,model_49/average_pooling3d_105/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_49/average_pooling3d_105/AvgPool3D�
/model_49/average_pooling3d_105/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_49/average_pooling3d_105/transpose_1/perm�
*model_49/average_pooling3d_105/transpose_1	Transpose1model_49/average_pooling3d_105/AvgPool3D:output:08model_49/average_pooling3d_105/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_49/average_pooling3d_105/transpose_1�
)model_49/conv3d_260/Conv3D/ReadVariableOpReadVariableOp2model_49_conv3d_260_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_49/conv3d_260/Conv3D/ReadVariableOp�
model_49/conv3d_260/Conv3DConv3D.model_49/average_pooling3d_105/transpose_1:y:01model_49/conv3d_260/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_49/conv3d_260/Conv3D�
*model_49/conv3d_260/BiasAdd/ReadVariableOpReadVariableOp3model_49_conv3d_260_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_49/conv3d_260/BiasAdd/ReadVariableOp�
model_49/conv3d_260/BiasAddBiasAdd#model_49/conv3d_260/Conv3D:output:02model_49/conv3d_260/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_49/conv3d_260/BiasAdd�
model_49/conv3d_260/SoftplusSoftplus$model_49/conv3d_260/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_49/conv3d_260/Softplus�
-model_49/average_pooling3d_106/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_49/average_pooling3d_106/transpose/perm�
(model_49/average_pooling3d_106/transpose	Transpose*model_49/conv3d_260/Softplus:activations:06model_49/average_pooling3d_106/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_49/average_pooling3d_106/transpose�
(model_49/average_pooling3d_106/AvgPool3D	AvgPool3D,model_49/average_pooling3d_106/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_49/average_pooling3d_106/AvgPool3D�
/model_49/average_pooling3d_106/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_49/average_pooling3d_106/transpose_1/perm�
*model_49/average_pooling3d_106/transpose_1	Transpose1model_49/average_pooling3d_106/AvgPool3D:output:08model_49/average_pooling3d_106/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_49/average_pooling3d_106/transpose_1�
model_49/reshape_98/ShapeShape.model_49/average_pooling3d_106/transpose_1:y:0*
T0*
_output_shapes
:2
model_49/reshape_98/Shape�
'model_49/reshape_98/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_49/reshape_98/strided_slice/stack�
)model_49/reshape_98/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_49/reshape_98/strided_slice/stack_1�
)model_49/reshape_98/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_49/reshape_98/strided_slice/stack_2�
!model_49/reshape_98/strided_sliceStridedSlice"model_49/reshape_98/Shape:output:00model_49/reshape_98/strided_slice/stack:output:02model_49/reshape_98/strided_slice/stack_1:output:02model_49/reshape_98/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_49/reshape_98/strided_slice�
#model_49/reshape_98/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_49/reshape_98/Reshape/shape/1�
!model_49/reshape_98/Reshape/shapePack*model_49/reshape_98/strided_slice:output:0,model_49/reshape_98/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_49/reshape_98/Reshape/shape�
model_49/reshape_98/ReshapeReshape.model_49/average_pooling3d_106/transpose_1:y:0*model_49/reshape_98/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_49/reshape_98/Reshape�
'model_49/dense_49/MatMul/ReadVariableOpReadVariableOp0model_49_dense_49_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_49/dense_49/MatMul/ReadVariableOp�
model_49/dense_49/MatMulMatMul$model_49/reshape_98/Reshape:output:0/model_49/dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_49/dense_49/MatMul�
(model_49/dense_49/BiasAdd/ReadVariableOpReadVariableOp1model_49_dense_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_49/dense_49/BiasAdd/ReadVariableOp�
model_49/dense_49/BiasAddBiasAdd"model_49/dense_49/MatMul:product:00model_49/dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_49/dense_49/BiasAdd�
model_49/dense_49/SoftplusSoftplus"model_49/dense_49/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_49/dense_49/Softplus�
model_49/reshape_99/ShapeShape(model_49/dense_49/Softplus:activations:0*
T0*
_output_shapes
:2
model_49/reshape_99/Shape�
'model_49/reshape_99/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_49/reshape_99/strided_slice/stack�
)model_49/reshape_99/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_49/reshape_99/strided_slice/stack_1�
)model_49/reshape_99/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_49/reshape_99/strided_slice/stack_2�
!model_49/reshape_99/strided_sliceStridedSlice"model_49/reshape_99/Shape:output:00model_49/reshape_99/strided_slice/stack:output:02model_49/reshape_99/strided_slice/stack_1:output:02model_49/reshape_99/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_49/reshape_99/strided_slice�
#model_49/reshape_99/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_49/reshape_99/Reshape/shape/1�
#model_49/reshape_99/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_49/reshape_99/Reshape/shape/2�
#model_49/reshape_99/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_49/reshape_99/Reshape/shape/3�
#model_49/reshape_99/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_49/reshape_99/Reshape/shape/4�
!model_49/reshape_99/Reshape/shapePack*model_49/reshape_99/strided_slice:output:0,model_49/reshape_99/Reshape/shape/1:output:0,model_49/reshape_99/Reshape/shape/2:output:0,model_49/reshape_99/Reshape/shape/3:output:0,model_49/reshape_99/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_49/reshape_99/Reshape/shape�
model_49/reshape_99/ReshapeReshape(model_49/dense_49/Softplus:activations:0*model_49/reshape_99/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_49/reshape_99/Reshape�
%model_49/tf.reshape_734/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_49/tf.reshape_734/Reshape/shape�
model_49/tf.reshape_734/ReshapeReshape$model_49/reshape_99/Reshape:output:0.model_49/tf.reshape_734/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_49/tf.reshape_734/Reshape�
#model_49/tf.tile_367/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_49/tf.tile_367/Tile/multiples�
model_49/tf.tile_367/TileTile(model_49/tf.reshape_734/Reshape:output:0,model_49/tf.tile_367/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_49/tf.tile_367/Tile�
%model_49/tf.reshape_735/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_49/tf.reshape_735/Reshape/shape�
model_49/tf.reshape_735/ReshapeReshape"model_49/tf.tile_367/Tile:output:0.model_49/tf.reshape_735/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_49/tf.reshape_735/Reshape�
"model_49/tf.concat_585/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_49/tf.concat_585/concat/axis�
model_49/tf.concat_585/concatConcatV2(model_49/tf.reshape_735/Reshape:output:0*model_49/conv3d_260/Softplus:activations:0+model_49/tf.concat_585/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_49/tf.concat_585/concat�
)model_49/conv3d_261/Conv3D/ReadVariableOpReadVariableOp2model_49_conv3d_261_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_49/conv3d_261/Conv3D/ReadVariableOp�
model_49/conv3d_261/Conv3DConv3D&model_49/tf.concat_585/concat:output:01model_49/conv3d_261/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_49/conv3d_261/Conv3D�
*model_49/conv3d_261/BiasAdd/ReadVariableOpReadVariableOp3model_49_conv3d_261_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_49/conv3d_261/BiasAdd/ReadVariableOp�
model_49/conv3d_261/BiasAddBiasAdd#model_49/conv3d_261/Conv3D:output:02model_49/conv3d_261/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_49/conv3d_261/BiasAdd�
model_49/conv3d_261/SoftplusSoftplus$model_49/conv3d_261/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_49/conv3d_261/Softplus�
%model_49/tf.reshape_736/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_49/tf.reshape_736/Reshape/shape�
model_49/tf.reshape_736/ReshapeReshape*model_49/conv3d_261/Softplus:activations:0.model_49/tf.reshape_736/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_49/tf.reshape_736/Reshape�
#model_49/tf.tile_368/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_49/tf.tile_368/Tile/multiples�
model_49/tf.tile_368/TileTile(model_49/tf.reshape_736/Reshape:output:0,model_49/tf.tile_368/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_49/tf.tile_368/Tile�
%model_49/tf.reshape_737/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_49/tf.reshape_737/Reshape/shape�
model_49/tf.reshape_737/ReshapeReshape"model_49/tf.tile_368/Tile:output:0.model_49/tf.reshape_737/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_49/tf.reshape_737/Reshape�
"model_49/tf.concat_586/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_49/tf.concat_586/concat/axis�
model_49/tf.concat_586/concatConcatV2(model_49/tf.reshape_737/Reshape:output:0*model_49/conv3d_259/Softplus:activations:0+model_49/tf.concat_586/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_49/tf.concat_586/concat�
)model_49/conv3d_262/Conv3D/ReadVariableOpReadVariableOp2model_49_conv3d_262_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_49/conv3d_262/Conv3D/ReadVariableOp�
model_49/conv3d_262/Conv3DConv3D&model_49/tf.concat_586/concat:output:01model_49/conv3d_262/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_49/conv3d_262/Conv3D�
*model_49/conv3d_262/BiasAdd/ReadVariableOpReadVariableOp3model_49_conv3d_262_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_49/conv3d_262/BiasAdd/ReadVariableOp�
model_49/conv3d_262/BiasAddBiasAdd#model_49/conv3d_262/Conv3D:output:02model_49/conv3d_262/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_49/conv3d_262/BiasAdd�
model_49/conv3d_262/SoftplusSoftplus$model_49/conv3d_262/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_49/conv3d_262/Softplus�
)model_49/conv3d_263/Conv3D/ReadVariableOpReadVariableOp2model_49_conv3d_263_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_49/conv3d_263/Conv3D/ReadVariableOp�
model_49/conv3d_263/Conv3DConv3D*model_49/conv3d_262/Softplus:activations:01model_49/conv3d_263/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_49/conv3d_263/Conv3D�
*model_49/conv3d_263/BiasAdd/ReadVariableOpReadVariableOp3model_49_conv3d_263_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_49/conv3d_263/BiasAdd/ReadVariableOp�
model_49/conv3d_263/BiasAddBiasAdd#model_49/conv3d_263/Conv3D:output:02model_49/conv3d_263/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_49/conv3d_263/BiasAdd�
IdentityIdentity$model_49/conv3d_263/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_49/conv3d_259/BiasAdd/ReadVariableOp*^model_49/conv3d_259/Conv3D/ReadVariableOp+^model_49/conv3d_260/BiasAdd/ReadVariableOp*^model_49/conv3d_260/Conv3D/ReadVariableOp+^model_49/conv3d_261/BiasAdd/ReadVariableOp*^model_49/conv3d_261/Conv3D/ReadVariableOp+^model_49/conv3d_262/BiasAdd/ReadVariableOp*^model_49/conv3d_262/Conv3D/ReadVariableOp+^model_49/conv3d_263/BiasAdd/ReadVariableOp*^model_49/conv3d_263/Conv3D/ReadVariableOp)^model_49/dense_49/BiasAdd/ReadVariableOp(^model_49/dense_49/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2X
*model_49/conv3d_259/BiasAdd/ReadVariableOp*model_49/conv3d_259/BiasAdd/ReadVariableOp2V
)model_49/conv3d_259/Conv3D/ReadVariableOp)model_49/conv3d_259/Conv3D/ReadVariableOp2X
*model_49/conv3d_260/BiasAdd/ReadVariableOp*model_49/conv3d_260/BiasAdd/ReadVariableOp2V
)model_49/conv3d_260/Conv3D/ReadVariableOp)model_49/conv3d_260/Conv3D/ReadVariableOp2X
*model_49/conv3d_261/BiasAdd/ReadVariableOp*model_49/conv3d_261/BiasAdd/ReadVariableOp2V
)model_49/conv3d_261/Conv3D/ReadVariableOp)model_49/conv3d_261/Conv3D/ReadVariableOp2X
*model_49/conv3d_262/BiasAdd/ReadVariableOp*model_49/conv3d_262/BiasAdd/ReadVariableOp2V
)model_49/conv3d_262/Conv3D/ReadVariableOp)model_49/conv3d_262/Conv3D/ReadVariableOp2X
*model_49/conv3d_263/BiasAdd/ReadVariableOp*model_49/conv3d_263/BiasAdd/ReadVariableOp2V
)model_49/conv3d_263/Conv3D/ReadVariableOp)model_49/conv3d_263/Conv3D/ReadVariableOp2T
(model_49/dense_49/BiasAdd/ReadVariableOp(model_49/dense_49/BiasAdd/ReadVariableOp2R
'model_49/dense_49/MatMul/ReadVariableOp'model_49/dense_49/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
-__inference_conv3d_260_layer_call_fn_14222921

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
H__inference_conv3d_260_layer_call_and_return_conditional_losses_142220142
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
q
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_14221968

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�
�
H__inference_conv3d_260_layer_call_and_return_conditional_losses_14222014

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
�
+__inference_model_49_layer_call_fn_14222631

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_49_layer_call_and_return_conditional_losses_142223562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�^
�
F__inference_model_49_layer_call_and_return_conditional_losses_14222477	
input1
conv3d_259_14222426:!
conv3d_259_14222428:1
conv3d_260_14222432:!
conv3d_260_14222434:#
dense_49_14222439:@@
dense_49_14222441:@1
conv3d_261_14222453:!
conv3d_261_14222455:1
conv3d_262_14222466:!
conv3d_262_14222468:1
conv3d_263_14222471:!
conv3d_263_14222473:
identity��"conv3d_259/StatefulPartitionedCall�"conv3d_260/StatefulPartitionedCall�"conv3d_261/StatefulPartitionedCall�"conv3d_262/StatefulPartitionedCall�"conv3d_263/StatefulPartitionedCall� dense_49/StatefulPartitionedCall�
0tf.__operators__.getitem_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_434/strided_slice/stack�
2tf.__operators__.getitem_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_434/strided_slice/stack_1�
2tf.__operators__.getitem_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_434/strided_slice/stack_2�
*tf.__operators__.getitem_434/strided_sliceStridedSliceinput9tf.__operators__.getitem_434/strided_slice/stack:output:0;tf.__operators__.getitem_434/strided_slice/stack_1:output:0;tf.__operators__.getitem_434/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_434/strided_slice�
#range_conversion_49/PartitionedCallPartitionedCall3tf.__operators__.getitem_434/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_142219682%
#range_conversion_49/PartitionedCall�
0tf.__operators__.getitem_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_435/strided_slice/stack�
2tf.__operators__.getitem_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_435/strided_slice/stack_1�
2tf.__operators__.getitem_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_435/strided_slice/stack_2�
*tf.__operators__.getitem_435/strided_sliceStridedSliceinput9tf.__operators__.getitem_435/strided_slice/stack:output:0;tf.__operators__.getitem_435/strided_slice/stack_1:output:0;tf.__operators__.getitem_435/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_435/strided_slicex
tf.concat_584/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_584/concat/axis�
tf.concat_584/concatConcatV2,range_conversion_49/PartitionedCall:output:03tf.__operators__.getitem_435/strided_slice:output:0"tf.concat_584/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_584/concat�
"conv3d_259/StatefulPartitionedCallStatefulPartitionedCalltf.concat_584/concat:output:0conv3d_259_14222426conv3d_259_14222428*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_259_layer_call_and_return_conditional_losses_142219872$
"conv3d_259/StatefulPartitionedCall�
%average_pooling3d_105/PartitionedCallPartitionedCall+conv3d_259/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_142220012'
%average_pooling3d_105/PartitionedCall�
"conv3d_260/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_105/PartitionedCall:output:0conv3d_260_14222432conv3d_260_14222434*
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
H__inference_conv3d_260_layer_call_and_return_conditional_losses_142220142$
"conv3d_260/StatefulPartitionedCall�
%average_pooling3d_106/PartitionedCallPartitionedCall+conv3d_260/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_142220282'
%average_pooling3d_106/PartitionedCall�
reshape_98/PartitionedCallPartitionedCall.average_pooling3d_106/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_98_layer_call_and_return_conditional_losses_142220422
reshape_98/PartitionedCall�
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#reshape_98/PartitionedCall:output:0dense_49_14222439dense_49_14222441*
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
F__inference_dense_49_layer_call_and_return_conditional_losses_142220552"
 dense_49/StatefulPartitionedCall�
reshape_99/PartitionedCallPartitionedCall)dense_49/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_99_layer_call_and_return_conditional_losses_142220762
reshape_99/PartitionedCall�
tf.reshape_734/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_734/Reshape/shape�
tf.reshape_734/ReshapeReshape#reshape_99/PartitionedCall:output:0%tf.reshape_734/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_734/Reshape�
tf.tile_367/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_367/Tile/multiples�
tf.tile_367/TileTiletf.reshape_734/Reshape:output:0#tf.tile_367/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_367/Tile�
tf.reshape_735/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_735/Reshape/shape�
tf.reshape_735/ReshapeReshapetf.tile_367/Tile:output:0%tf.reshape_735/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_735/Reshapex
tf.concat_585/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_585/concat/axis�
tf.concat_585/concatConcatV2tf.reshape_735/Reshape:output:0+conv3d_260/StatefulPartitionedCall:output:0"tf.concat_585/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_585/concat�
"conv3d_261/StatefulPartitionedCallStatefulPartitionedCalltf.concat_585/concat:output:0conv3d_261_14222453conv3d_261_14222455*
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
H__inference_conv3d_261_layer_call_and_return_conditional_losses_142220972$
"conv3d_261/StatefulPartitionedCall�
tf.reshape_736/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_736/Reshape/shape�
tf.reshape_736/ReshapeReshape+conv3d_261/StatefulPartitionedCall:output:0%tf.reshape_736/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_736/Reshape�
tf.tile_368/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_368/Tile/multiples�
tf.tile_368/TileTiletf.reshape_736/Reshape:output:0#tf.tile_368/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_368/Tile�
tf.reshape_737/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_737/Reshape/shape�
tf.reshape_737/ReshapeReshapetf.tile_368/Tile:output:0%tf.reshape_737/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_737/Reshapex
tf.concat_586/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_586/concat/axis�
tf.concat_586/concatConcatV2tf.reshape_737/Reshape:output:0+conv3d_259/StatefulPartitionedCall:output:0"tf.concat_586/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_586/concat�
"conv3d_262/StatefulPartitionedCallStatefulPartitionedCalltf.concat_586/concat:output:0conv3d_262_14222466conv3d_262_14222468*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_262_layer_call_and_return_conditional_losses_142221222$
"conv3d_262/StatefulPartitionedCall�
"conv3d_263/StatefulPartitionedCallStatefulPartitionedCall+conv3d_262/StatefulPartitionedCall:output:0conv3d_263_14222471conv3d_263_14222473*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_263_layer_call_and_return_conditional_losses_142221382$
"conv3d_263/StatefulPartitionedCall�
IdentityIdentity+conv3d_263/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_259/StatefulPartitionedCall#^conv3d_260/StatefulPartitionedCall#^conv3d_261/StatefulPartitionedCall#^conv3d_262/StatefulPartitionedCall#^conv3d_263/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_259/StatefulPartitionedCall"conv3d_259/StatefulPartitionedCall2H
"conv3d_260/StatefulPartitionedCall"conv3d_260/StatefulPartitionedCall2H
"conv3d_261/StatefulPartitionedCall"conv3d_261/StatefulPartitionedCall2H
"conv3d_262/StatefulPartitionedCall"conv3d_262/StatefulPartitionedCall2H
"conv3d_263/StatefulPartitionedCall"conv3d_263/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
T
8__inference_average_pooling3d_105_layer_call_fn_14222894

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
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_142220012
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_261_layer_call_fn_14223026

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
H__inference_conv3d_261_layer_call_and_return_conditional_losses_142220972
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
�
�
-__inference_conv3d_263_layer_call_fn_14223066

inputs%
unknown:
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
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_263_layer_call_and_return_conditional_losses_142221382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_261_layer_call_and_return_conditional_losses_14222097

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
H__inference_conv3d_259_layer_call_and_return_conditional_losses_14221987

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
I
-__inference_reshape_98_layer_call_fn_14222965

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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_98_layer_call_and_return_conditional_losses_142220422
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
�
d
H__inference_reshape_99_layer_call_and_return_conditional_losses_14223017

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
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14222912

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
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
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
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
d
H__inference_reshape_98_layer_call_and_return_conditional_losses_14222042

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
�
T
8__inference_average_pooling3d_106_layer_call_fn_14222942

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
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_142220282
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
H__inference_conv3d_263_layer_call_and_return_conditional_losses_14223076

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
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
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_model_49_layer_call_fn_14222412	
input%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_49_layer_call_and_return_conditional_losses_142223562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�^
�
F__inference_model_49_layer_call_and_return_conditional_losses_14222356

inputs1
conv3d_259_14222305:!
conv3d_259_14222307:1
conv3d_260_14222311:!
conv3d_260_14222313:#
dense_49_14222318:@@
dense_49_14222320:@1
conv3d_261_14222332:!
conv3d_261_14222334:1
conv3d_262_14222345:!
conv3d_262_14222347:1
conv3d_263_14222350:!
conv3d_263_14222352:
identity��"conv3d_259/StatefulPartitionedCall�"conv3d_260/StatefulPartitionedCall�"conv3d_261/StatefulPartitionedCall�"conv3d_262/StatefulPartitionedCall�"conv3d_263/StatefulPartitionedCall� dense_49/StatefulPartitionedCall�
0tf.__operators__.getitem_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_434/strided_slice/stack�
2tf.__operators__.getitem_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_434/strided_slice/stack_1�
2tf.__operators__.getitem_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_434/strided_slice/stack_2�
*tf.__operators__.getitem_434/strided_sliceStridedSliceinputs9tf.__operators__.getitem_434/strided_slice/stack:output:0;tf.__operators__.getitem_434/strided_slice/stack_1:output:0;tf.__operators__.getitem_434/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_434/strided_slice�
#range_conversion_49/PartitionedCallPartitionedCall3tf.__operators__.getitem_434/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_142219682%
#range_conversion_49/PartitionedCall�
0tf.__operators__.getitem_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_435/strided_slice/stack�
2tf.__operators__.getitem_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_435/strided_slice/stack_1�
2tf.__operators__.getitem_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_435/strided_slice/stack_2�
*tf.__operators__.getitem_435/strided_sliceStridedSliceinputs9tf.__operators__.getitem_435/strided_slice/stack:output:0;tf.__operators__.getitem_435/strided_slice/stack_1:output:0;tf.__operators__.getitem_435/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_435/strided_slicex
tf.concat_584/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_584/concat/axis�
tf.concat_584/concatConcatV2,range_conversion_49/PartitionedCall:output:03tf.__operators__.getitem_435/strided_slice:output:0"tf.concat_584/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_584/concat�
"conv3d_259/StatefulPartitionedCallStatefulPartitionedCalltf.concat_584/concat:output:0conv3d_259_14222305conv3d_259_14222307*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_259_layer_call_and_return_conditional_losses_142219872$
"conv3d_259/StatefulPartitionedCall�
%average_pooling3d_105/PartitionedCallPartitionedCall+conv3d_259/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_142220012'
%average_pooling3d_105/PartitionedCall�
"conv3d_260/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_105/PartitionedCall:output:0conv3d_260_14222311conv3d_260_14222313*
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
H__inference_conv3d_260_layer_call_and_return_conditional_losses_142220142$
"conv3d_260/StatefulPartitionedCall�
%average_pooling3d_106/PartitionedCallPartitionedCall+conv3d_260/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_142220282'
%average_pooling3d_106/PartitionedCall�
reshape_98/PartitionedCallPartitionedCall.average_pooling3d_106/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_98_layer_call_and_return_conditional_losses_142220422
reshape_98/PartitionedCall�
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#reshape_98/PartitionedCall:output:0dense_49_14222318dense_49_14222320*
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
F__inference_dense_49_layer_call_and_return_conditional_losses_142220552"
 dense_49/StatefulPartitionedCall�
reshape_99/PartitionedCallPartitionedCall)dense_49/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_99_layer_call_and_return_conditional_losses_142220762
reshape_99/PartitionedCall�
tf.reshape_734/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_734/Reshape/shape�
tf.reshape_734/ReshapeReshape#reshape_99/PartitionedCall:output:0%tf.reshape_734/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_734/Reshape�
tf.tile_367/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_367/Tile/multiples�
tf.tile_367/TileTiletf.reshape_734/Reshape:output:0#tf.tile_367/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_367/Tile�
tf.reshape_735/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_735/Reshape/shape�
tf.reshape_735/ReshapeReshapetf.tile_367/Tile:output:0%tf.reshape_735/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_735/Reshapex
tf.concat_585/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_585/concat/axis�
tf.concat_585/concatConcatV2tf.reshape_735/Reshape:output:0+conv3d_260/StatefulPartitionedCall:output:0"tf.concat_585/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_585/concat�
"conv3d_261/StatefulPartitionedCallStatefulPartitionedCalltf.concat_585/concat:output:0conv3d_261_14222332conv3d_261_14222334*
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
H__inference_conv3d_261_layer_call_and_return_conditional_losses_142220972$
"conv3d_261/StatefulPartitionedCall�
tf.reshape_736/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_736/Reshape/shape�
tf.reshape_736/ReshapeReshape+conv3d_261/StatefulPartitionedCall:output:0%tf.reshape_736/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_736/Reshape�
tf.tile_368/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_368/Tile/multiples�
tf.tile_368/TileTiletf.reshape_736/Reshape:output:0#tf.tile_368/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_368/Tile�
tf.reshape_737/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_737/Reshape/shape�
tf.reshape_737/ReshapeReshapetf.tile_368/Tile:output:0%tf.reshape_737/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_737/Reshapex
tf.concat_586/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_586/concat/axis�
tf.concat_586/concatConcatV2tf.reshape_737/Reshape:output:0+conv3d_259/StatefulPartitionedCall:output:0"tf.concat_586/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_586/concat�
"conv3d_262/StatefulPartitionedCallStatefulPartitionedCalltf.concat_586/concat:output:0conv3d_262_14222345conv3d_262_14222347*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_262_layer_call_and_return_conditional_losses_142221222$
"conv3d_262/StatefulPartitionedCall�
"conv3d_263/StatefulPartitionedCallStatefulPartitionedCall+conv3d_262/StatefulPartitionedCall:output:0conv3d_263_14222350conv3d_263_14222352*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_263_layer_call_and_return_conditional_losses_142221382$
"conv3d_263/StatefulPartitionedCall�
IdentityIdentity+conv3d_263/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_259/StatefulPartitionedCall#^conv3d_260/StatefulPartitionedCall#^conv3d_261/StatefulPartitionedCall#^conv3d_262/StatefulPartitionedCall#^conv3d_263/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_259/StatefulPartitionedCall"conv3d_259/StatefulPartitionedCall2H
"conv3d_260/StatefulPartitionedCall"conv3d_260/StatefulPartitionedCall2H
"conv3d_261/StatefulPartitionedCall"conv3d_261/StatefulPartitionedCall2H
"conv3d_262/StatefulPartitionedCall"conv3d_262/StatefulPartitionedCall2H
"conv3d_263/StatefulPartitionedCall"conv3d_263/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_model_49_layer_call_fn_14222602

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_49_layer_call_and_return_conditional_losses_142221452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�^
�
F__inference_model_49_layer_call_and_return_conditional_losses_14222542	
input1
conv3d_259_14222491:!
conv3d_259_14222493:1
conv3d_260_14222497:!
conv3d_260_14222499:#
dense_49_14222504:@@
dense_49_14222506:@1
conv3d_261_14222518:!
conv3d_261_14222520:1
conv3d_262_14222531:!
conv3d_262_14222533:1
conv3d_263_14222536:!
conv3d_263_14222538:
identity��"conv3d_259/StatefulPartitionedCall�"conv3d_260/StatefulPartitionedCall�"conv3d_261/StatefulPartitionedCall�"conv3d_262/StatefulPartitionedCall�"conv3d_263/StatefulPartitionedCall� dense_49/StatefulPartitionedCall�
0tf.__operators__.getitem_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_434/strided_slice/stack�
2tf.__operators__.getitem_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_434/strided_slice/stack_1�
2tf.__operators__.getitem_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_434/strided_slice/stack_2�
*tf.__operators__.getitem_434/strided_sliceStridedSliceinput9tf.__operators__.getitem_434/strided_slice/stack:output:0;tf.__operators__.getitem_434/strided_slice/stack_1:output:0;tf.__operators__.getitem_434/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_434/strided_slice�
#range_conversion_49/PartitionedCallPartitionedCall3tf.__operators__.getitem_434/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_142219682%
#range_conversion_49/PartitionedCall�
0tf.__operators__.getitem_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_435/strided_slice/stack�
2tf.__operators__.getitem_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_435/strided_slice/stack_1�
2tf.__operators__.getitem_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_435/strided_slice/stack_2�
*tf.__operators__.getitem_435/strided_sliceStridedSliceinput9tf.__operators__.getitem_435/strided_slice/stack:output:0;tf.__operators__.getitem_435/strided_slice/stack_1:output:0;tf.__operators__.getitem_435/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_435/strided_slicex
tf.concat_584/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_584/concat/axis�
tf.concat_584/concatConcatV2,range_conversion_49/PartitionedCall:output:03tf.__operators__.getitem_435/strided_slice:output:0"tf.concat_584/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_584/concat�
"conv3d_259/StatefulPartitionedCallStatefulPartitionedCalltf.concat_584/concat:output:0conv3d_259_14222491conv3d_259_14222493*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_259_layer_call_and_return_conditional_losses_142219872$
"conv3d_259/StatefulPartitionedCall�
%average_pooling3d_105/PartitionedCallPartitionedCall+conv3d_259/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *\
fWRU
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_142220012'
%average_pooling3d_105/PartitionedCall�
"conv3d_260/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_105/PartitionedCall:output:0conv3d_260_14222497conv3d_260_14222499*
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
H__inference_conv3d_260_layer_call_and_return_conditional_losses_142220142$
"conv3d_260/StatefulPartitionedCall�
%average_pooling3d_106/PartitionedCallPartitionedCall+conv3d_260/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_142220282'
%average_pooling3d_106/PartitionedCall�
reshape_98/PartitionedCallPartitionedCall.average_pooling3d_106/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_98_layer_call_and_return_conditional_losses_142220422
reshape_98/PartitionedCall�
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#reshape_98/PartitionedCall:output:0dense_49_14222504dense_49_14222506*
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
F__inference_dense_49_layer_call_and_return_conditional_losses_142220552"
 dense_49/StatefulPartitionedCall�
reshape_99/PartitionedCallPartitionedCall)dense_49/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_99_layer_call_and_return_conditional_losses_142220762
reshape_99/PartitionedCall�
tf.reshape_734/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_734/Reshape/shape�
tf.reshape_734/ReshapeReshape#reshape_99/PartitionedCall:output:0%tf.reshape_734/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_734/Reshape�
tf.tile_367/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_367/Tile/multiples�
tf.tile_367/TileTiletf.reshape_734/Reshape:output:0#tf.tile_367/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_367/Tile�
tf.reshape_735/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_735/Reshape/shape�
tf.reshape_735/ReshapeReshapetf.tile_367/Tile:output:0%tf.reshape_735/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_735/Reshapex
tf.concat_585/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_585/concat/axis�
tf.concat_585/concatConcatV2tf.reshape_735/Reshape:output:0+conv3d_260/StatefulPartitionedCall:output:0"tf.concat_585/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_585/concat�
"conv3d_261/StatefulPartitionedCallStatefulPartitionedCalltf.concat_585/concat:output:0conv3d_261_14222518conv3d_261_14222520*
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
H__inference_conv3d_261_layer_call_and_return_conditional_losses_142220972$
"conv3d_261/StatefulPartitionedCall�
tf.reshape_736/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_736/Reshape/shape�
tf.reshape_736/ReshapeReshape+conv3d_261/StatefulPartitionedCall:output:0%tf.reshape_736/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_736/Reshape�
tf.tile_368/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_368/Tile/multiples�
tf.tile_368/TileTiletf.reshape_736/Reshape:output:0#tf.tile_368/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_368/Tile�
tf.reshape_737/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_737/Reshape/shape�
tf.reshape_737/ReshapeReshapetf.tile_368/Tile:output:0%tf.reshape_737/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_737/Reshapex
tf.concat_586/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_586/concat/axis�
tf.concat_586/concatConcatV2tf.reshape_737/Reshape:output:0+conv3d_259/StatefulPartitionedCall:output:0"tf.concat_586/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_586/concat�
"conv3d_262/StatefulPartitionedCallStatefulPartitionedCalltf.concat_586/concat:output:0conv3d_262_14222531conv3d_262_14222533*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_262_layer_call_and_return_conditional_losses_142221222$
"conv3d_262/StatefulPartitionedCall�
"conv3d_263/StatefulPartitionedCallStatefulPartitionedCall+conv3d_262/StatefulPartitionedCall:output:0conv3d_263_14222536conv3d_263_14222538*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_263_layer_call_and_return_conditional_losses_142221382$
"conv3d_263/StatefulPartitionedCall�
IdentityIdentity+conv3d_263/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_259/StatefulPartitionedCall#^conv3d_260/StatefulPartitionedCall#^conv3d_261/StatefulPartitionedCall#^conv3d_262/StatefulPartitionedCall#^conv3d_263/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_259/StatefulPartitionedCall"conv3d_259/StatefulPartitionedCall2H
"conv3d_260/StatefulPartitionedCall"conv3d_260/StatefulPartitionedCall2H
"conv3d_261/StatefulPartitionedCall"conv3d_261/StatefulPartitionedCall2H
"conv3d_262/StatefulPartitionedCall"conv3d_262/StatefulPartitionedCall2H
"conv3d_263/StatefulPartitionedCall"conv3d_263/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
-__inference_conv3d_259_layer_call_fn_14222873

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_259_layer_call_and_return_conditional_losses_142219872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_model_49_layer_call_fn_14222172	
input%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_49_layer_call_and_return_conditional_losses_142221452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
I
-__inference_reshape_99_layer_call_fn_14223002

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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_99_layer_call_and_return_conditional_losses_142220762
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
�
�
H__inference_conv3d_261_layer_call_and_return_conditional_losses_14223037

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

o
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14222903

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
�
T
8__inference_average_pooling3d_106_layer_call_fn_14222937

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
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_142219282
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
H__inference_conv3d_260_layer_call_and_return_conditional_losses_14222932

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
�
V
6__inference_range_conversion_49_layer_call_fn_14222852

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
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_142219682
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
��
�

F__inference_model_49_layer_call_and_return_conditional_losses_14222847

inputsG
)conv3d_259_conv3d_readvariableop_resource:8
*conv3d_259_biasadd_readvariableop_resource:G
)conv3d_260_conv3d_readvariableop_resource:8
*conv3d_260_biasadd_readvariableop_resource:9
'dense_49_matmul_readvariableop_resource:@@6
(dense_49_biasadd_readvariableop_resource:@G
)conv3d_261_conv3d_readvariableop_resource:8
*conv3d_261_biasadd_readvariableop_resource:G
)conv3d_262_conv3d_readvariableop_resource:8
*conv3d_262_biasadd_readvariableop_resource:G
)conv3d_263_conv3d_readvariableop_resource:8
*conv3d_263_biasadd_readvariableop_resource:
identity��!conv3d_259/BiasAdd/ReadVariableOp� conv3d_259/Conv3D/ReadVariableOp�!conv3d_260/BiasAdd/ReadVariableOp� conv3d_260/Conv3D/ReadVariableOp�!conv3d_261/BiasAdd/ReadVariableOp� conv3d_261/Conv3D/ReadVariableOp�!conv3d_262/BiasAdd/ReadVariableOp� conv3d_262/Conv3D/ReadVariableOp�!conv3d_263/BiasAdd/ReadVariableOp� conv3d_263/Conv3D/ReadVariableOp�dense_49/BiasAdd/ReadVariableOp�dense_49/MatMul/ReadVariableOp�
0tf.__operators__.getitem_434/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_434/strided_slice/stack�
2tf.__operators__.getitem_434/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_434/strided_slice/stack_1�
2tf.__operators__.getitem_434/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_434/strided_slice/stack_2�
*tf.__operators__.getitem_434/strided_sliceStridedSliceinputs9tf.__operators__.getitem_434/strided_slice/stack:output:0;tf.__operators__.getitem_434/strided_slice/stack_1:output:0;tf.__operators__.getitem_434/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_434/strided_slice{
range_conversion_49/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_49/sub/y�
range_conversion_49/subSub3tf.__operators__.getitem_434/strided_slice:output:0"range_conversion_49/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/sub�
range_conversion_49/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_49/truediv/y�
range_conversion_49/truedivRealDivrange_conversion_49/sub:z:0&range_conversion_49/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/truediv{
range_conversion_49/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_49/mul/y�
range_conversion_49/mulMulrange_conversion_49/truediv:z:0"range_conversion_49/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/mul{
range_conversion_49/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_49/add/y�
range_conversion_49/addAddV2range_conversion_49/mul:z:0"range_conversion_49/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_49/add�
0tf.__operators__.getitem_435/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_435/strided_slice/stack�
2tf.__operators__.getitem_435/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_435/strided_slice/stack_1�
2tf.__operators__.getitem_435/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_435/strided_slice/stack_2�
*tf.__operators__.getitem_435/strided_sliceStridedSliceinputs9tf.__operators__.getitem_435/strided_slice/stack:output:0;tf.__operators__.getitem_435/strided_slice/stack_1:output:0;tf.__operators__.getitem_435/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_435/strided_slicex
tf.concat_584/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_584/concat/axis�
tf.concat_584/concatConcatV2range_conversion_49/add:z:03tf.__operators__.getitem_435/strided_slice:output:0"tf.concat_584/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_584/concat�
 conv3d_259/Conv3D/ReadVariableOpReadVariableOp)conv3d_259_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_259/Conv3D/ReadVariableOp�
conv3d_259/Conv3DConv3Dtf.concat_584/concat:output:0(conv3d_259/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_259/Conv3D�
!conv3d_259/BiasAdd/ReadVariableOpReadVariableOp*conv3d_259_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_259/BiasAdd/ReadVariableOp�
conv3d_259/BiasAddBiasAddconv3d_259/Conv3D:output:0)conv3d_259/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_259/BiasAdd�
conv3d_259/SoftplusSoftplusconv3d_259/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_259/Softplus�
$average_pooling3d_105/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_105/transpose/perm�
average_pooling3d_105/transpose	Transpose!conv3d_259/Softplus:activations:0-average_pooling3d_105/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_105/transpose�
average_pooling3d_105/AvgPool3D	AvgPool3D#average_pooling3d_105/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_105/AvgPool3D�
&average_pooling3d_105/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_105/transpose_1/perm�
!average_pooling3d_105/transpose_1	Transpose(average_pooling3d_105/AvgPool3D:output:0/average_pooling3d_105/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_105/transpose_1�
 conv3d_260/Conv3D/ReadVariableOpReadVariableOp)conv3d_260_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_260/Conv3D/ReadVariableOp�
conv3d_260/Conv3DConv3D%average_pooling3d_105/transpose_1:y:0(conv3d_260/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_260/Conv3D�
!conv3d_260/BiasAdd/ReadVariableOpReadVariableOp*conv3d_260_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_260/BiasAdd/ReadVariableOp�
conv3d_260/BiasAddBiasAddconv3d_260/Conv3D:output:0)conv3d_260/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_260/BiasAdd�
conv3d_260/SoftplusSoftplusconv3d_260/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_260/Softplus�
$average_pooling3d_106/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_106/transpose/perm�
average_pooling3d_106/transpose	Transpose!conv3d_260/Softplus:activations:0-average_pooling3d_106/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_106/transpose�
average_pooling3d_106/AvgPool3D	AvgPool3D#average_pooling3d_106/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_106/AvgPool3D�
&average_pooling3d_106/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_106/transpose_1/perm�
!average_pooling3d_106/transpose_1	Transpose(average_pooling3d_106/AvgPool3D:output:0/average_pooling3d_106/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_106/transpose_1y
reshape_98/ShapeShape%average_pooling3d_106/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_98/Shape�
reshape_98/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_98/strided_slice/stack�
 reshape_98/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_98/strided_slice/stack_1�
 reshape_98/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_98/strided_slice/stack_2�
reshape_98/strided_sliceStridedSlicereshape_98/Shape:output:0'reshape_98/strided_slice/stack:output:0)reshape_98/strided_slice/stack_1:output:0)reshape_98/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_98/strided_slicez
reshape_98/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_98/Reshape/shape/1�
reshape_98/Reshape/shapePack!reshape_98/strided_slice:output:0#reshape_98/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_98/Reshape/shape�
reshape_98/ReshapeReshape%average_pooling3d_106/transpose_1:y:0!reshape_98/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_98/Reshape�
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_49/MatMul/ReadVariableOp�
dense_49/MatMulMatMulreshape_98/Reshape:output:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_49/MatMul�
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_49/BiasAdd/ReadVariableOp�
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_49/BiasAdd
dense_49/SoftplusSoftplusdense_49/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_49/Softpluss
reshape_99/ShapeShapedense_49/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_99/Shape�
reshape_99/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_99/strided_slice/stack�
 reshape_99/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_99/strided_slice/stack_1�
 reshape_99/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_99/strided_slice/stack_2�
reshape_99/strided_sliceStridedSlicereshape_99/Shape:output:0'reshape_99/strided_slice/stack:output:0)reshape_99/strided_slice/stack_1:output:0)reshape_99/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_99/strided_slicez
reshape_99/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/1z
reshape_99/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/2z
reshape_99/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/3z
reshape_99/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_99/Reshape/shape/4�
reshape_99/Reshape/shapePack!reshape_99/strided_slice:output:0#reshape_99/Reshape/shape/1:output:0#reshape_99/Reshape/shape/2:output:0#reshape_99/Reshape/shape/3:output:0#reshape_99/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_99/Reshape/shape�
reshape_99/ReshapeReshapedense_49/Softplus:activations:0!reshape_99/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_99/Reshape�
tf.reshape_734/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_734/Reshape/shape�
tf.reshape_734/ReshapeReshapereshape_99/Reshape:output:0%tf.reshape_734/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_734/Reshape�
tf.tile_367/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_367/Tile/multiples�
tf.tile_367/TileTiletf.reshape_734/Reshape:output:0#tf.tile_367/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_367/Tile�
tf.reshape_735/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_735/Reshape/shape�
tf.reshape_735/ReshapeReshapetf.tile_367/Tile:output:0%tf.reshape_735/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_735/Reshapex
tf.concat_585/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_585/concat/axis�
tf.concat_585/concatConcatV2tf.reshape_735/Reshape:output:0!conv3d_260/Softplus:activations:0"tf.concat_585/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_585/concat�
 conv3d_261/Conv3D/ReadVariableOpReadVariableOp)conv3d_261_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_261/Conv3D/ReadVariableOp�
conv3d_261/Conv3DConv3Dtf.concat_585/concat:output:0(conv3d_261/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_261/Conv3D�
!conv3d_261/BiasAdd/ReadVariableOpReadVariableOp*conv3d_261_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_261/BiasAdd/ReadVariableOp�
conv3d_261/BiasAddBiasAddconv3d_261/Conv3D:output:0)conv3d_261/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_261/BiasAdd�
conv3d_261/SoftplusSoftplusconv3d_261/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_261/Softplus�
tf.reshape_736/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_736/Reshape/shape�
tf.reshape_736/ReshapeReshape!conv3d_261/Softplus:activations:0%tf.reshape_736/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_736/Reshape�
tf.tile_368/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_368/Tile/multiples�
tf.tile_368/TileTiletf.reshape_736/Reshape:output:0#tf.tile_368/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_368/Tile�
tf.reshape_737/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_737/Reshape/shape�
tf.reshape_737/ReshapeReshapetf.tile_368/Tile:output:0%tf.reshape_737/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_737/Reshapex
tf.concat_586/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_586/concat/axis�
tf.concat_586/concatConcatV2tf.reshape_737/Reshape:output:0!conv3d_259/Softplus:activations:0"tf.concat_586/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_586/concat�
 conv3d_262/Conv3D/ReadVariableOpReadVariableOp)conv3d_262_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_262/Conv3D/ReadVariableOp�
conv3d_262/Conv3DConv3Dtf.concat_586/concat:output:0(conv3d_262/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_262/Conv3D�
!conv3d_262/BiasAdd/ReadVariableOpReadVariableOp*conv3d_262_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_262/BiasAdd/ReadVariableOp�
conv3d_262/BiasAddBiasAddconv3d_262/Conv3D:output:0)conv3d_262/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_262/BiasAdd�
conv3d_262/SoftplusSoftplusconv3d_262/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_262/Softplus�
 conv3d_263/Conv3D/ReadVariableOpReadVariableOp)conv3d_263_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_263/Conv3D/ReadVariableOp�
conv3d_263/Conv3DConv3D!conv3d_262/Softplus:activations:0(conv3d_263/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_263/Conv3D�
!conv3d_263/BiasAdd/ReadVariableOpReadVariableOp*conv3d_263_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_263/BiasAdd/ReadVariableOp�
conv3d_263/BiasAddBiasAddconv3d_263/Conv3D:output:0)conv3d_263/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_263/BiasAdd�
IdentityIdentityconv3d_263/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_259/BiasAdd/ReadVariableOp!^conv3d_259/Conv3D/ReadVariableOp"^conv3d_260/BiasAdd/ReadVariableOp!^conv3d_260/Conv3D/ReadVariableOp"^conv3d_261/BiasAdd/ReadVariableOp!^conv3d_261/Conv3D/ReadVariableOp"^conv3d_262/BiasAdd/ReadVariableOp!^conv3d_262/Conv3D/ReadVariableOp"^conv3d_263/BiasAdd/ReadVariableOp!^conv3d_263/Conv3D/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_259/BiasAdd/ReadVariableOp!conv3d_259/BiasAdd/ReadVariableOp2D
 conv3d_259/Conv3D/ReadVariableOp conv3d_259/Conv3D/ReadVariableOp2F
!conv3d_260/BiasAdd/ReadVariableOp!conv3d_260/BiasAdd/ReadVariableOp2D
 conv3d_260/Conv3D/ReadVariableOp conv3d_260/Conv3D/ReadVariableOp2F
!conv3d_261/BiasAdd/ReadVariableOp!conv3d_261/BiasAdd/ReadVariableOp2D
 conv3d_261/Conv3D/ReadVariableOp conv3d_261/Conv3D/ReadVariableOp2F
!conv3d_262/BiasAdd/ReadVariableOp!conv3d_262/BiasAdd/ReadVariableOp2D
 conv3d_262/Conv3D/ReadVariableOp conv3d_262/Conv3D/ReadVariableOp2F
!conv3d_263/BiasAdd/ReadVariableOp!conv3d_263/BiasAdd/ReadVariableOp2D
 conv3d_263/Conv3D/ReadVariableOp conv3d_263/Conv3D/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
q
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_14222864

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�	
o
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14222001

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
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
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
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_263_layer_call_and_return_conditional_losses_14222138

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
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
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_49_layer_call_fn_14222986

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
F__inference_dense_49_layer_call_and_return_conditional_losses_142220552
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
�
�
-__inference_conv3d_262_layer_call_fn_14223046

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_262_layer_call_and_return_conditional_losses_142221222
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
o
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14222960

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
�7
�
$__inference__traced_restore_14223181
file_prefix@
"assignvariableop_conv3d_259_kernel:0
"assignvariableop_1_conv3d_259_bias:B
$assignvariableop_2_conv3d_260_kernel:0
"assignvariableop_3_conv3d_260_bias:4
"assignvariableop_4_dense_49_kernel:@@.
 assignvariableop_5_dense_49_bias:@B
$assignvariableop_6_conv3d_261_kernel:0
"assignvariableop_7_conv3d_261_bias:B
$assignvariableop_8_conv3d_262_kernel:0
"assignvariableop_9_conv3d_262_bias:C
%assignvariableop_10_conv3d_263_kernel:1
#assignvariableop_11_conv3d_263_bias:
identity_13��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_259_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_259_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_260_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_260_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_49_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_49_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_261_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_261_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_262_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_262_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_263_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_263_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12f
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_13�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
H__inference_conv3d_259_layer_call_and_return_conditional_losses_14222884

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_262_layer_call_and_return_conditional_losses_14222122

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
d
H__inference_reshape_99_layer_call_and_return_conditional_losses_14222076

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
�&
�
!__inference__traced_save_14223135
file_prefix0
,savev2_conv3d_259_kernel_read_readvariableop.
*savev2_conv3d_259_bias_read_readvariableop0
,savev2_conv3d_260_kernel_read_readvariableop.
*savev2_conv3d_260_bias_read_readvariableop.
*savev2_dense_49_kernel_read_readvariableop,
(savev2_dense_49_bias_read_readvariableop0
,savev2_conv3d_261_kernel_read_readvariableop.
*savev2_conv3d_261_bias_read_readvariableop0
,savev2_conv3d_262_kernel_read_readvariableop.
*savev2_conv3d_262_bias_read_readvariableop0
,savev2_conv3d_263_kernel_read_readvariableop.
*savev2_conv3d_263_bias_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_259_kernel_read_readvariableop*savev2_conv3d_259_bias_read_readvariableop,savev2_conv3d_260_kernel_read_readvariableop*savev2_conv3d_260_bias_read_readvariableop*savev2_dense_49_kernel_read_readvariableop(savev2_dense_49_bias_read_readvariableop,savev2_conv3d_261_kernel_read_readvariableop*savev2_conv3d_261_bias_read_readvariableop,savev2_conv3d_262_kernel_read_readvariableop*savev2_conv3d_262_bias_read_readvariableop,savev2_conv3d_263_kernel_read_readvariableop*savev2_conv3d_263_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::@@:@::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:0,
*
_output_shapes
:: 

_output_shapes
::0	,
*
_output_shapes
:: 


_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
�
�
H__inference_conv3d_262_layer_call_and_return_conditional_losses_14223057

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

o
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14222951

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
d
H__inference_reshape_98_layer_call_and_return_conditional_losses_14222977

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
�
F__inference_dense_49_layer_call_and_return_conditional_losses_14222997

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
�
&__inference_signature_wrapper_14222573	
input%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__wrapped_model_142218852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

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
serving_default_input:0���������J

conv3d_263<
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer_with_weights-1
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-3
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-4
layer-21
layer_with_weights-5
layer-22
regularization_losses
	variables
trainable_variables
	keras_api

signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
regularization_losses
 trainable_variables
!	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
"	keras_api"
_tf_keras_layer
(
#	keras_api"
_tf_keras_layer
�

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+regularization_losses
,trainable_variables
-	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

.kernel
/bias
0	variables
1regularization_losses
2trainable_variables
3	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5regularization_losses
6trainable_variables
7	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8	variables
9regularization_losses
:trainable_variables
;	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
F	keras_api"
_tf_keras_layer
(
G	keras_api"
_tf_keras_layer
(
H	keras_api"
_tf_keras_layer
(
I	keras_api"
_tf_keras_layer
�

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
P	keras_api"
_tf_keras_layer
(
Q	keras_api"
_tf_keras_layer
(
R	keras_api"
_tf_keras_layer
(
S	keras_api"
_tf_keras_layer
�

Tkernel
Ubias
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Zkernel
[bias
\	variables
]regularization_losses
^trainable_variables
_	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
v
$0
%1
.2
/3
<4
=5
J6
K7
T8
U9
Z10
[11"
trackable_list_wrapper
v
$0
%1
.2
/3
<4
=5
J6
K7
T8
U9
Z10
[11"
trackable_list_wrapper
�
`non_trainable_variables
ametrics
blayer_regularization_losses
clayer_metrics
regularization_losses

dlayers
	variables
trainable_variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
enon_trainable_variables
	variables
fmetrics
glayer_regularization_losses
hlayer_metrics
regularization_losses

ilayers
 trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_259/kernel
: 2conv3d_259/bias
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
jnon_trainable_variables
&	variables
kmetrics
llayer_regularization_losses
mlayer_metrics
'regularization_losses

nlayers
(trainable_variables
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
�
onon_trainable_variables
*	variables
pmetrics
qlayer_regularization_losses
rlayer_metrics
+regularization_losses

slayers
,trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_260/kernel
: 2conv3d_260/bias
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
�
tnon_trainable_variables
0	variables
umetrics
vlayer_regularization_losses
wlayer_metrics
1regularization_losses

xlayers
2trainable_variables
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
�
ynon_trainable_variables
4	variables
zmetrics
{layer_regularization_losses
|layer_metrics
5regularization_losses

}layers
6trainable_variables
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
�
~non_trainable_variables
8	variables
metrics
 �layer_regularization_losses
�layer_metrics
9regularization_losses
�layers
:trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_49/kernel
:@ 2dense_49/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
�
�non_trainable_variables
>	variables
�metrics
 �layer_regularization_losses
�layer_metrics
?regularization_losses
�layers
@trainable_variables
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
�
�non_trainable_variables
B	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Cregularization_losses
�layers
Dtrainable_variables
�__call__
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
1:/ 2conv3d_261/kernel
: 2conv3d_261/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
�
�non_trainable_variables
L	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Mregularization_losses
�layers
Ntrainable_variables
�__call__
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
1:/ 2conv3d_262/kernel
: 2conv3d_262/bias
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
�
�non_trainable_variables
V	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Wregularization_losses
�layers
Xtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_263/kernel
: 2conv3d_263/bias
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
�
�non_trainable_variables
\	variables
�metrics
 �layer_regularization_losses
�layer_metrics
]regularization_losses
�layers
^trainable_variables
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
15
16
17
18
19
20
21
22"
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
+__inference_model_49_layer_call_fn_14222172
+__inference_model_49_layer_call_fn_14222602
+__inference_model_49_layer_call_fn_14222631
+__inference_model_49_layer_call_fn_14222412�
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
#__inference__wrapped_model_14221885input"�
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
F__inference_model_49_layer_call_and_return_conditional_losses_14222739
F__inference_model_49_layer_call_and_return_conditional_losses_14222847
F__inference_model_49_layer_call_and_return_conditional_losses_14222477
F__inference_model_49_layer_call_and_return_conditional_losses_14222542�
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
6__inference_range_conversion_49_layer_call_fn_14222852�
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
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_14222864�
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
-__inference_conv3d_259_layer_call_fn_14222873�
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
H__inference_conv3d_259_layer_call_and_return_conditional_losses_14222884�
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
8__inference_average_pooling3d_105_layer_call_fn_14222889
8__inference_average_pooling3d_105_layer_call_fn_14222894�
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
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14222903
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14222912�
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
-__inference_conv3d_260_layer_call_fn_14222921�
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
H__inference_conv3d_260_layer_call_and_return_conditional_losses_14222932�
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
8__inference_average_pooling3d_106_layer_call_fn_14222937
8__inference_average_pooling3d_106_layer_call_fn_14222942�
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
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14222951
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14222960�
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
-__inference_reshape_98_layer_call_fn_14222965�
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
H__inference_reshape_98_layer_call_and_return_conditional_losses_14222977�
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
+__inference_dense_49_layer_call_fn_14222986�
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
F__inference_dense_49_layer_call_and_return_conditional_losses_14222997�
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
-__inference_reshape_99_layer_call_fn_14223002�
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
H__inference_reshape_99_layer_call_and_return_conditional_losses_14223017�
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
-__inference_conv3d_261_layer_call_fn_14223026�
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
H__inference_conv3d_261_layer_call_and_return_conditional_losses_14223037�
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
-__inference_conv3d_262_layer_call_fn_14223046�
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
H__inference_conv3d_262_layer_call_and_return_conditional_losses_14223057�
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
-__inference_conv3d_263_layer_call_fn_14223066�
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
H__inference_conv3d_263_layer_call_and_return_conditional_losses_14223076�
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
&__inference_signature_wrapper_14222573input"�
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
#__inference__wrapped_model_14221885�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "C�@
>

conv3d_2630�-

conv3d_263����������
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14222903�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_105_layer_call_and_return_conditional_losses_14222912p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_105_layer_call_fn_14222889�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_105_layer_call_fn_14222894c;�8
1�.
,�)
inputs���������
� "$�!����������
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14222951�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_106_layer_call_and_return_conditional_losses_14222960p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_106_layer_call_fn_14222937�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_106_layer_call_fn_14222942c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_259_layer_call_and_return_conditional_losses_14222884t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_259_layer_call_fn_14222873g$%;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_260_layer_call_and_return_conditional_losses_14222932t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_260_layer_call_fn_14222921g./;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_261_layer_call_and_return_conditional_losses_14223037tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_261_layer_call_fn_14223026gJK;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_262_layer_call_and_return_conditional_losses_14223057tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_262_layer_call_fn_14223046gTU;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_263_layer_call_and_return_conditional_losses_14223076tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_263_layer_call_fn_14223066gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_49_layer_call_and_return_conditional_losses_14222997\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_49_layer_call_fn_14222986O<=/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_49_layer_call_and_return_conditional_losses_14222477�$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "1�.
'�$
0���������
� �
F__inference_model_49_layer_call_and_return_conditional_losses_14222542�$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "1�.
'�$
0���������
� �
F__inference_model_49_layer_call_and_return_conditional_losses_14222739�$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "1�.
'�$
0���������
� �
F__inference_model_49_layer_call_and_return_conditional_losses_14222847�$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "1�.
'�$
0���������
� �
+__inference_model_49_layer_call_fn_14222172x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_49_layer_call_fn_14222412x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_49_layer_call_fn_14222602y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_49_layer_call_fn_14222631y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_49_layer_call_and_return_conditional_losses_14222864t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_49_layer_call_fn_14222852g?�<
5�2
0�-

parameters���������
� "$�!����������
H__inference_reshape_98_layer_call_and_return_conditional_losses_14222977d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
-__inference_reshape_98_layer_call_fn_14222965W;�8
1�.
,�)
inputs���������
� "����������@�
H__inference_reshape_99_layer_call_and_return_conditional_losses_14223017d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
-__inference_reshape_99_layer_call_fn_14223002W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_14222573�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_2630�-

conv3d_263���������