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
conv3d_352/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_352/kernel
�
%conv3d_352/kernel/Read/ReadVariableOpReadVariableOpconv3d_352/kernel**
_output_shapes
:*
dtype0
v
conv3d_352/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_352/bias
o
#conv3d_352/bias/Read/ReadVariableOpReadVariableOpconv3d_352/bias*
_output_shapes
:*
dtype0
�
conv3d_353/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_353/kernel
�
%conv3d_353/kernel/Read/ReadVariableOpReadVariableOpconv3d_353/kernel**
_output_shapes
:*
dtype0
v
conv3d_353/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_353/bias
o
#conv3d_353/bias/Read/ReadVariableOpReadVariableOpconv3d_353/bias*
_output_shapes
:*
dtype0
z
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_66/kernel
s
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes

:@@*
dtype0
r
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_66/bias
k
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
_output_shapes
:@*
dtype0
�
conv3d_354/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_354/kernel
�
%conv3d_354/kernel/Read/ReadVariableOpReadVariableOpconv3d_354/kernel**
_output_shapes
:*
dtype0
v
conv3d_354/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_354/bias
o
#conv3d_354/bias/Read/ReadVariableOpReadVariableOpconv3d_354/bias*
_output_shapes
:*
dtype0
�
conv3d_355/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_355/kernel
�
%conv3d_355/kernel/Read/ReadVariableOpReadVariableOpconv3d_355/kernel**
_output_shapes
:*
dtype0
v
conv3d_355/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_355/bias
o
#conv3d_355/bias/Read/ReadVariableOpReadVariableOpconv3d_355/bias*
_output_shapes
:*
dtype0
�
conv3d_356/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_356/kernel
�
%conv3d_356/kernel/Read/ReadVariableOpReadVariableOpconv3d_356/kernel**
_output_shapes
:*
dtype0
v
conv3d_356/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_356/bias
o
#conv3d_356/bias/Read/ReadVariableOpReadVariableOpconv3d_356/bias*
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
VARIABLE_VALUEconv3d_352/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_352/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_353/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_353/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_66/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_354/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_354/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_355/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_355/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_356/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_356/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_352/kernelconv3d_352/biasconv3d_353/kernelconv3d_353/biasdense_66/kerneldense_66/biasconv3d_354/kernelconv3d_354/biasconv3d_355/kernelconv3d_355/biasconv3d_356/kernelconv3d_356/bias*
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
&__inference_signature_wrapper_18238301
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_352/kernel/Read/ReadVariableOp#conv3d_352/bias/Read/ReadVariableOp%conv3d_353/kernel/Read/ReadVariableOp#conv3d_353/bias/Read/ReadVariableOp#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOp%conv3d_354/kernel/Read/ReadVariableOp#conv3d_354/bias/Read/ReadVariableOp%conv3d_355/kernel/Read/ReadVariableOp#conv3d_355/bias/Read/ReadVariableOp%conv3d_356/kernel/Read/ReadVariableOp#conv3d_356/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_18238863
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_352/kernelconv3d_352/biasconv3d_353/kernelconv3d_353/biasdense_66/kerneldense_66/biasconv3d_354/kernelconv3d_354/biasconv3d_355/kernelconv3d_355/biasconv3d_356/kernelconv3d_356/bias*
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
$__inference__traced_restore_18238909�
�
�
F__inference_dense_66_layer_call_and_return_conditional_losses_18238725

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
+__inference_model_66_layer_call_fn_18238330

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
F__inference_model_66_layer_call_and_return_conditional_losses_182378732
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
�
�

F__inference_model_66_layer_call_and_return_conditional_losses_18238575

inputsG
)conv3d_352_conv3d_readvariableop_resource:8
*conv3d_352_biasadd_readvariableop_resource:G
)conv3d_353_conv3d_readvariableop_resource:8
*conv3d_353_biasadd_readvariableop_resource:9
'dense_66_matmul_readvariableop_resource:@@6
(dense_66_biasadd_readvariableop_resource:@G
)conv3d_354_conv3d_readvariableop_resource:8
*conv3d_354_biasadd_readvariableop_resource:G
)conv3d_355_conv3d_readvariableop_resource:8
*conv3d_355_biasadd_readvariableop_resource:G
)conv3d_356_conv3d_readvariableop_resource:8
*conv3d_356_biasadd_readvariableop_resource:
identity��!conv3d_352/BiasAdd/ReadVariableOp� conv3d_352/Conv3D/ReadVariableOp�!conv3d_353/BiasAdd/ReadVariableOp� conv3d_353/Conv3D/ReadVariableOp�!conv3d_354/BiasAdd/ReadVariableOp� conv3d_354/Conv3D/ReadVariableOp�!conv3d_355/BiasAdd/ReadVariableOp� conv3d_355/Conv3D/ReadVariableOp�!conv3d_356/BiasAdd/ReadVariableOp� conv3d_356/Conv3D/ReadVariableOp�dense_66/BiasAdd/ReadVariableOp�dense_66/MatMul/ReadVariableOp�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice{
range_conversion_66/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_66/sub/y�
range_conversion_66/subSub3tf.__operators__.getitem_468/strided_slice:output:0"range_conversion_66/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/sub�
range_conversion_66/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_66/truediv/y�
range_conversion_66/truedivRealDivrange_conversion_66/sub:z:0&range_conversion_66/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/truediv{
range_conversion_66/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_66/mul/y�
range_conversion_66/mulMulrange_conversion_66/truediv:z:0"range_conversion_66/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/mul{
range_conversion_66/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_66/add/y�
range_conversion_66/addAddV2range_conversion_66/mul:z:0"range_conversion_66/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/add�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_639/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_639/concat/axis�
tf.concat_639/concatConcatV2range_conversion_66/add:z:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_639/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_639/concat�
 conv3d_352/Conv3D/ReadVariableOpReadVariableOp)conv3d_352_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_352/Conv3D/ReadVariableOp�
conv3d_352/Conv3DConv3Dtf.concat_639/concat:output:0(conv3d_352/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_352/Conv3D�
!conv3d_352/BiasAdd/ReadVariableOpReadVariableOp*conv3d_352_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_352/BiasAdd/ReadVariableOp�
conv3d_352/BiasAddBiasAddconv3d_352/Conv3D:output:0)conv3d_352/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_352/BiasAdd�
conv3d_352/SoftplusSoftplusconv3d_352/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_352/Softplus�
$average_pooling3d_143/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_143/transpose/perm�
average_pooling3d_143/transpose	Transpose!conv3d_352/Softplus:activations:0-average_pooling3d_143/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_143/transpose�
average_pooling3d_143/AvgPool3D	AvgPool3D#average_pooling3d_143/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_143/AvgPool3D�
&average_pooling3d_143/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_143/transpose_1/perm�
!average_pooling3d_143/transpose_1	Transpose(average_pooling3d_143/AvgPool3D:output:0/average_pooling3d_143/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_143/transpose_1�
 conv3d_353/Conv3D/ReadVariableOpReadVariableOp)conv3d_353_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_353/Conv3D/ReadVariableOp�
conv3d_353/Conv3DConv3D%average_pooling3d_143/transpose_1:y:0(conv3d_353/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_353/Conv3D�
!conv3d_353/BiasAdd/ReadVariableOpReadVariableOp*conv3d_353_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_353/BiasAdd/ReadVariableOp�
conv3d_353/BiasAddBiasAddconv3d_353/Conv3D:output:0)conv3d_353/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_353/BiasAdd�
conv3d_353/SoftplusSoftplusconv3d_353/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_353/Softplus�
$average_pooling3d_144/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_144/transpose/perm�
average_pooling3d_144/transpose	Transpose!conv3d_353/Softplus:activations:0-average_pooling3d_144/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_144/transpose�
average_pooling3d_144/AvgPool3D	AvgPool3D#average_pooling3d_144/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_144/AvgPool3D�
&average_pooling3d_144/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_144/transpose_1/perm�
!average_pooling3d_144/transpose_1	Transpose(average_pooling3d_144/AvgPool3D:output:0/average_pooling3d_144/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_144/transpose_1{
reshape_132/ShapeShape%average_pooling3d_144/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_132/Shape�
reshape_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_132/strided_slice/stack�
!reshape_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_1�
!reshape_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_2�
reshape_132/strided_sliceStridedSlicereshape_132/Shape:output:0(reshape_132/strided_slice/stack:output:0*reshape_132/strided_slice/stack_1:output:0*reshape_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_132/strided_slice|
reshape_132/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_132/Reshape/shape/1�
reshape_132/Reshape/shapePack"reshape_132/strided_slice:output:0$reshape_132/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_132/Reshape/shape�
reshape_132/ReshapeReshape%average_pooling3d_144/transpose_1:y:0"reshape_132/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_132/Reshape�
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_66/MatMul/ReadVariableOp�
dense_66/MatMulMatMulreshape_132/Reshape:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_66/MatMul�
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_66/BiasAdd/ReadVariableOp�
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_66/BiasAdd
dense_66/SoftplusSoftplusdense_66/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_66/Softplusu
reshape_133/ShapeShapedense_66/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_133/Shape�
reshape_133/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_133/strided_slice/stack�
!reshape_133/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_133/strided_slice/stack_1�
!reshape_133/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_133/strided_slice/stack_2�
reshape_133/strided_sliceStridedSlicereshape_133/Shape:output:0(reshape_133/strided_slice/stack:output:0*reshape_133/strided_slice/stack_1:output:0*reshape_133/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_133/strided_slice|
reshape_133/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/1|
reshape_133/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/2|
reshape_133/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/3|
reshape_133/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/4�
reshape_133/Reshape/shapePack"reshape_133/strided_slice:output:0$reshape_133/Reshape/shape/1:output:0$reshape_133/Reshape/shape/2:output:0$reshape_133/Reshape/shape/3:output:0$reshape_133/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_133/Reshape/shape�
reshape_133/ReshapeReshapedense_66/Softplus:activations:0"reshape_133/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_133/Reshape�
tf.reshape_810/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_810/Reshape/shape�
tf.reshape_810/ReshapeReshapereshape_133/Reshape:output:0%tf.reshape_810/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_810/Reshape�
tf.tile_405/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_405/Tile/multiples�
tf.tile_405/TileTiletf.reshape_810/Reshape:output:0#tf.tile_405/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_405/Tile�
tf.reshape_811/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_811/Reshape/shape�
tf.reshape_811/ReshapeReshapetf.tile_405/Tile:output:0%tf.reshape_811/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_811/Reshapex
tf.concat_640/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_640/concat/axis�
tf.concat_640/concatConcatV2tf.reshape_811/Reshape:output:0!conv3d_353/Softplus:activations:0"tf.concat_640/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_640/concat�
 conv3d_354/Conv3D/ReadVariableOpReadVariableOp)conv3d_354_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_354/Conv3D/ReadVariableOp�
conv3d_354/Conv3DConv3Dtf.concat_640/concat:output:0(conv3d_354/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_354/Conv3D�
!conv3d_354/BiasAdd/ReadVariableOpReadVariableOp*conv3d_354_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_354/BiasAdd/ReadVariableOp�
conv3d_354/BiasAddBiasAddconv3d_354/Conv3D:output:0)conv3d_354/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_354/BiasAdd�
conv3d_354/SoftplusSoftplusconv3d_354/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_354/Softplus�
tf.reshape_812/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_812/Reshape/shape�
tf.reshape_812/ReshapeReshape!conv3d_354/Softplus:activations:0%tf.reshape_812/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_812/Reshape�
tf.tile_406/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_406/Tile/multiples�
tf.tile_406/TileTiletf.reshape_812/Reshape:output:0#tf.tile_406/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_406/Tile�
tf.reshape_813/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_813/Reshape/shape�
tf.reshape_813/ReshapeReshapetf.tile_406/Tile:output:0%tf.reshape_813/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_813/Reshapex
tf.concat_641/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_641/concat/axis�
tf.concat_641/concatConcatV2tf.reshape_813/Reshape:output:0!conv3d_352/Softplus:activations:0"tf.concat_641/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_641/concat�
 conv3d_355/Conv3D/ReadVariableOpReadVariableOp)conv3d_355_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_355/Conv3D/ReadVariableOp�
conv3d_355/Conv3DConv3Dtf.concat_641/concat:output:0(conv3d_355/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_355/Conv3D�
!conv3d_355/BiasAdd/ReadVariableOpReadVariableOp*conv3d_355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_355/BiasAdd/ReadVariableOp�
conv3d_355/BiasAddBiasAddconv3d_355/Conv3D:output:0)conv3d_355/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_355/BiasAdd�
conv3d_355/SoftplusSoftplusconv3d_355/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_355/Softplus�
 conv3d_356/Conv3D/ReadVariableOpReadVariableOp)conv3d_356_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_356/Conv3D/ReadVariableOp�
conv3d_356/Conv3DConv3D!conv3d_355/Softplus:activations:0(conv3d_356/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_356/Conv3D�
!conv3d_356/BiasAdd/ReadVariableOpReadVariableOp*conv3d_356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_356/BiasAdd/ReadVariableOp�
conv3d_356/BiasAddBiasAddconv3d_356/Conv3D:output:0)conv3d_356/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_356/BiasAdd�
IdentityIdentityconv3d_356/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_352/BiasAdd/ReadVariableOp!^conv3d_352/Conv3D/ReadVariableOp"^conv3d_353/BiasAdd/ReadVariableOp!^conv3d_353/Conv3D/ReadVariableOp"^conv3d_354/BiasAdd/ReadVariableOp!^conv3d_354/Conv3D/ReadVariableOp"^conv3d_355/BiasAdd/ReadVariableOp!^conv3d_355/Conv3D/ReadVariableOp"^conv3d_356/BiasAdd/ReadVariableOp!^conv3d_356/Conv3D/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_352/BiasAdd/ReadVariableOp!conv3d_352/BiasAdd/ReadVariableOp2D
 conv3d_352/Conv3D/ReadVariableOp conv3d_352/Conv3D/ReadVariableOp2F
!conv3d_353/BiasAdd/ReadVariableOp!conv3d_353/BiasAdd/ReadVariableOp2D
 conv3d_353/Conv3D/ReadVariableOp conv3d_353/Conv3D/ReadVariableOp2F
!conv3d_354/BiasAdd/ReadVariableOp!conv3d_354/BiasAdd/ReadVariableOp2D
 conv3d_354/Conv3D/ReadVariableOp conv3d_354/Conv3D/ReadVariableOp2F
!conv3d_355/BiasAdd/ReadVariableOp!conv3d_355/BiasAdd/ReadVariableOp2D
 conv3d_355/Conv3D/ReadVariableOp conv3d_355/Conv3D/ReadVariableOp2F
!conv3d_356/BiasAdd/ReadVariableOp!conv3d_356/BiasAdd/ReadVariableOp2D
 conv3d_356/Conv3D/ReadVariableOp conv3d_356/Conv3D/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_355_layer_call_fn_18238774

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
H__inference_conv3d_355_layer_call_and_return_conditional_losses_182378502
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
�^
�
F__inference_model_66_layer_call_and_return_conditional_losses_18238270	
input1
conv3d_352_18238219:!
conv3d_352_18238221:1
conv3d_353_18238225:!
conv3d_353_18238227:#
dense_66_18238232:@@
dense_66_18238234:@1
conv3d_354_18238246:!
conv3d_354_18238248:1
conv3d_355_18238259:!
conv3d_355_18238261:1
conv3d_356_18238264:!
conv3d_356_18238266:
identity��"conv3d_352/StatefulPartitionedCall�"conv3d_353/StatefulPartitionedCall�"conv3d_354/StatefulPartitionedCall�"conv3d_355/StatefulPartitionedCall�"conv3d_356/StatefulPartitionedCall� dense_66/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinput9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
#range_conversion_66/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
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
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_182376962%
#range_conversion_66/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinput9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_639/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_639/concat/axis�
tf.concat_639/concatConcatV2,range_conversion_66/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_639/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_639/concat�
"conv3d_352/StatefulPartitionedCallStatefulPartitionedCalltf.concat_639/concat:output:0conv3d_352_18238219conv3d_352_18238221*
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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_182377152$
"conv3d_352/StatefulPartitionedCall�
%average_pooling3d_143/PartitionedCallPartitionedCall+conv3d_352/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_182377292'
%average_pooling3d_143/PartitionedCall�
"conv3d_353/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_143/PartitionedCall:output:0conv3d_353_18238225conv3d_353_18238227*
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
H__inference_conv3d_353_layer_call_and_return_conditional_losses_182377422$
"conv3d_353/StatefulPartitionedCall�
%average_pooling3d_144/PartitionedCallPartitionedCall+conv3d_353/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_182377562'
%average_pooling3d_144/PartitionedCall�
reshape_132/PartitionedCallPartitionedCall.average_pooling3d_144/PartitionedCall:output:0*
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
I__inference_reshape_132_layer_call_and_return_conditional_losses_182377702
reshape_132/PartitionedCall�
 dense_66/StatefulPartitionedCallStatefulPartitionedCall$reshape_132/PartitionedCall:output:0dense_66_18238232dense_66_18238234*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_182377832"
 dense_66/StatefulPartitionedCall�
reshape_133/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
I__inference_reshape_133_layer_call_and_return_conditional_losses_182378042
reshape_133/PartitionedCall�
tf.reshape_810/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_810/Reshape/shape�
tf.reshape_810/ReshapeReshape$reshape_133/PartitionedCall:output:0%tf.reshape_810/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_810/Reshape�
tf.tile_405/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_405/Tile/multiples�
tf.tile_405/TileTiletf.reshape_810/Reshape:output:0#tf.tile_405/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_405/Tile�
tf.reshape_811/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_811/Reshape/shape�
tf.reshape_811/ReshapeReshapetf.tile_405/Tile:output:0%tf.reshape_811/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_811/Reshapex
tf.concat_640/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_640/concat/axis�
tf.concat_640/concatConcatV2tf.reshape_811/Reshape:output:0+conv3d_353/StatefulPartitionedCall:output:0"tf.concat_640/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_640/concat�
"conv3d_354/StatefulPartitionedCallStatefulPartitionedCalltf.concat_640/concat:output:0conv3d_354_18238246conv3d_354_18238248*
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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_182378252$
"conv3d_354/StatefulPartitionedCall�
tf.reshape_812/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_812/Reshape/shape�
tf.reshape_812/ReshapeReshape+conv3d_354/StatefulPartitionedCall:output:0%tf.reshape_812/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_812/Reshape�
tf.tile_406/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_406/Tile/multiples�
tf.tile_406/TileTiletf.reshape_812/Reshape:output:0#tf.tile_406/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_406/Tile�
tf.reshape_813/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_813/Reshape/shape�
tf.reshape_813/ReshapeReshapetf.tile_406/Tile:output:0%tf.reshape_813/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_813/Reshapex
tf.concat_641/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_641/concat/axis�
tf.concat_641/concatConcatV2tf.reshape_813/Reshape:output:0+conv3d_352/StatefulPartitionedCall:output:0"tf.concat_641/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_641/concat�
"conv3d_355/StatefulPartitionedCallStatefulPartitionedCalltf.concat_641/concat:output:0conv3d_355_18238259conv3d_355_18238261*
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
H__inference_conv3d_355_layer_call_and_return_conditional_losses_182378502$
"conv3d_355/StatefulPartitionedCall�
"conv3d_356/StatefulPartitionedCallStatefulPartitionedCall+conv3d_355/StatefulPartitionedCall:output:0conv3d_356_18238264conv3d_356_18238266*
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
H__inference_conv3d_356_layer_call_and_return_conditional_losses_182378662$
"conv3d_356/StatefulPartitionedCall�
IdentityIdentity+conv3d_356/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_352/StatefulPartitionedCall#^conv3d_353/StatefulPartitionedCall#^conv3d_354/StatefulPartitionedCall#^conv3d_355/StatefulPartitionedCall#^conv3d_356/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_352/StatefulPartitionedCall"conv3d_352/StatefulPartitionedCall2H
"conv3d_353/StatefulPartitionedCall"conv3d_353/StatefulPartitionedCall2H
"conv3d_354/StatefulPartitionedCall"conv3d_354/StatefulPartitionedCall2H
"conv3d_355/StatefulPartitionedCall"conv3d_355/StatefulPartitionedCall2H
"conv3d_356/StatefulPartitionedCall"conv3d_356/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
-__inference_conv3d_352_layer_call_fn_18238601

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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_182377152
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
�
�
-__inference_conv3d_354_layer_call_fn_18238754

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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_182378252
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

o
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18238679

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
�7
�
$__inference__traced_restore_18238909
file_prefix@
"assignvariableop_conv3d_352_kernel:0
"assignvariableop_1_conv3d_352_bias:B
$assignvariableop_2_conv3d_353_kernel:0
"assignvariableop_3_conv3d_353_bias:4
"assignvariableop_4_dense_66_kernel:@@.
 assignvariableop_5_dense_66_bias:@B
$assignvariableop_6_conv3d_354_kernel:0
"assignvariableop_7_conv3d_354_bias:B
$assignvariableop_8_conv3d_355_kernel:0
"assignvariableop_9_conv3d_355_bias:C
%assignvariableop_10_conv3d_356_kernel:1
#assignvariableop_11_conv3d_356_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_352_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_352_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_353_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_353_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_66_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_66_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_354_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_354_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_355_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_355_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_356_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_356_biasIdentity_11:output:0"/device:CPU:0*
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
�
T
8__inference_average_pooling3d_144_layer_call_fn_18238670

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
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_182377562
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
q
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_18237696

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
H__inference_conv3d_353_layer_call_and_return_conditional_losses_18237742

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
�
e
I__inference_reshape_133_layer_call_and_return_conditional_losses_18237804

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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_18237715

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

o
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18238631

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
�
T
8__inference_average_pooling3d_143_layer_call_fn_18238622

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
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_182377292
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
�
�
H__inference_conv3d_356_layer_call_and_return_conditional_losses_18237866

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
q
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_18238592

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
�
+__inference_model_66_layer_call_fn_18238140	
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
F__inference_model_66_layer_call_and_return_conditional_losses_182380842
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
�
�
H__inference_conv3d_355_layer_call_and_return_conditional_losses_18238785

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
�
&__inference_signature_wrapper_18238301	
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
#__inference__wrapped_model_182376132
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
J
.__inference_reshape_133_layer_call_fn_18238730

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
I__inference_reshape_133_layer_call_and_return_conditional_losses_182378042
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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_18238612

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
J
.__inference_reshape_132_layer_call_fn_18238693

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
I__inference_reshape_132_layer_call_and_return_conditional_losses_182377702
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
�^
�
F__inference_model_66_layer_call_and_return_conditional_losses_18237873

inputs1
conv3d_352_18237716:!
conv3d_352_18237718:1
conv3d_353_18237743:!
conv3d_353_18237745:#
dense_66_18237784:@@
dense_66_18237786:@1
conv3d_354_18237826:!
conv3d_354_18237828:1
conv3d_355_18237851:!
conv3d_355_18237853:1
conv3d_356_18237867:!
conv3d_356_18237869:
identity��"conv3d_352/StatefulPartitionedCall�"conv3d_353/StatefulPartitionedCall�"conv3d_354/StatefulPartitionedCall�"conv3d_355/StatefulPartitionedCall�"conv3d_356/StatefulPartitionedCall� dense_66/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
#range_conversion_66/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
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
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_182376962%
#range_conversion_66/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_639/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_639/concat/axis�
tf.concat_639/concatConcatV2,range_conversion_66/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_639/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_639/concat�
"conv3d_352/StatefulPartitionedCallStatefulPartitionedCalltf.concat_639/concat:output:0conv3d_352_18237716conv3d_352_18237718*
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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_182377152$
"conv3d_352/StatefulPartitionedCall�
%average_pooling3d_143/PartitionedCallPartitionedCall+conv3d_352/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_182377292'
%average_pooling3d_143/PartitionedCall�
"conv3d_353/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_143/PartitionedCall:output:0conv3d_353_18237743conv3d_353_18237745*
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
H__inference_conv3d_353_layer_call_and_return_conditional_losses_182377422$
"conv3d_353/StatefulPartitionedCall�
%average_pooling3d_144/PartitionedCallPartitionedCall+conv3d_353/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_182377562'
%average_pooling3d_144/PartitionedCall�
reshape_132/PartitionedCallPartitionedCall.average_pooling3d_144/PartitionedCall:output:0*
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
I__inference_reshape_132_layer_call_and_return_conditional_losses_182377702
reshape_132/PartitionedCall�
 dense_66/StatefulPartitionedCallStatefulPartitionedCall$reshape_132/PartitionedCall:output:0dense_66_18237784dense_66_18237786*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_182377832"
 dense_66/StatefulPartitionedCall�
reshape_133/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
I__inference_reshape_133_layer_call_and_return_conditional_losses_182378042
reshape_133/PartitionedCall�
tf.reshape_810/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_810/Reshape/shape�
tf.reshape_810/ReshapeReshape$reshape_133/PartitionedCall:output:0%tf.reshape_810/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_810/Reshape�
tf.tile_405/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_405/Tile/multiples�
tf.tile_405/TileTiletf.reshape_810/Reshape:output:0#tf.tile_405/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_405/Tile�
tf.reshape_811/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_811/Reshape/shape�
tf.reshape_811/ReshapeReshapetf.tile_405/Tile:output:0%tf.reshape_811/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_811/Reshapex
tf.concat_640/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_640/concat/axis�
tf.concat_640/concatConcatV2tf.reshape_811/Reshape:output:0+conv3d_353/StatefulPartitionedCall:output:0"tf.concat_640/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_640/concat�
"conv3d_354/StatefulPartitionedCallStatefulPartitionedCalltf.concat_640/concat:output:0conv3d_354_18237826conv3d_354_18237828*
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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_182378252$
"conv3d_354/StatefulPartitionedCall�
tf.reshape_812/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_812/Reshape/shape�
tf.reshape_812/ReshapeReshape+conv3d_354/StatefulPartitionedCall:output:0%tf.reshape_812/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_812/Reshape�
tf.tile_406/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_406/Tile/multiples�
tf.tile_406/TileTiletf.reshape_812/Reshape:output:0#tf.tile_406/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_406/Tile�
tf.reshape_813/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_813/Reshape/shape�
tf.reshape_813/ReshapeReshapetf.tile_406/Tile:output:0%tf.reshape_813/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_813/Reshapex
tf.concat_641/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_641/concat/axis�
tf.concat_641/concatConcatV2tf.reshape_813/Reshape:output:0+conv3d_352/StatefulPartitionedCall:output:0"tf.concat_641/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_641/concat�
"conv3d_355/StatefulPartitionedCallStatefulPartitionedCalltf.concat_641/concat:output:0conv3d_355_18237851conv3d_355_18237853*
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
H__inference_conv3d_355_layer_call_and_return_conditional_losses_182378502$
"conv3d_355/StatefulPartitionedCall�
"conv3d_356/StatefulPartitionedCallStatefulPartitionedCall+conv3d_355/StatefulPartitionedCall:output:0conv3d_356_18237867conv3d_356_18237869*
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
H__inference_conv3d_356_layer_call_and_return_conditional_losses_182378662$
"conv3d_356/StatefulPartitionedCall�
IdentityIdentity+conv3d_356/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_352/StatefulPartitionedCall#^conv3d_353/StatefulPartitionedCall#^conv3d_354/StatefulPartitionedCall#^conv3d_355/StatefulPartitionedCall#^conv3d_356/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_352/StatefulPartitionedCall"conv3d_352/StatefulPartitionedCall2H
"conv3d_353/StatefulPartitionedCall"conv3d_353/StatefulPartitionedCall2H
"conv3d_354/StatefulPartitionedCall"conv3d_354/StatefulPartitionedCall2H
"conv3d_355/StatefulPartitionedCall"conv3d_355/StatefulPartitionedCall2H
"conv3d_356/StatefulPartitionedCall"conv3d_356/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

o
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18237626

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
#__inference__wrapped_model_18237613	
inputP
2model_66_conv3d_352_conv3d_readvariableop_resource:A
3model_66_conv3d_352_biasadd_readvariableop_resource:P
2model_66_conv3d_353_conv3d_readvariableop_resource:A
3model_66_conv3d_353_biasadd_readvariableop_resource:B
0model_66_dense_66_matmul_readvariableop_resource:@@?
1model_66_dense_66_biasadd_readvariableop_resource:@P
2model_66_conv3d_354_conv3d_readvariableop_resource:A
3model_66_conv3d_354_biasadd_readvariableop_resource:P
2model_66_conv3d_355_conv3d_readvariableop_resource:A
3model_66_conv3d_355_biasadd_readvariableop_resource:P
2model_66_conv3d_356_conv3d_readvariableop_resource:A
3model_66_conv3d_356_biasadd_readvariableop_resource:
identity��*model_66/conv3d_352/BiasAdd/ReadVariableOp�)model_66/conv3d_352/Conv3D/ReadVariableOp�*model_66/conv3d_353/BiasAdd/ReadVariableOp�)model_66/conv3d_353/Conv3D/ReadVariableOp�*model_66/conv3d_354/BiasAdd/ReadVariableOp�)model_66/conv3d_354/Conv3D/ReadVariableOp�*model_66/conv3d_355/BiasAdd/ReadVariableOp�)model_66/conv3d_355/Conv3D/ReadVariableOp�*model_66/conv3d_356/BiasAdd/ReadVariableOp�)model_66/conv3d_356/Conv3D/ReadVariableOp�(model_66/dense_66/BiasAdd/ReadVariableOp�'model_66/dense_66/MatMul/ReadVariableOp�
9model_66/tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_66/tf.__operators__.getitem_468/strided_slice/stack�
;model_66/tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_66/tf.__operators__.getitem_468/strided_slice/stack_1�
;model_66/tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_66/tf.__operators__.getitem_468/strided_slice/stack_2�
3model_66/tf.__operators__.getitem_468/strided_sliceStridedSliceinputBmodel_66/tf.__operators__.getitem_468/strided_slice/stack:output:0Dmodel_66/tf.__operators__.getitem_468/strided_slice/stack_1:output:0Dmodel_66/tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_66/tf.__operators__.getitem_468/strided_slice�
"model_66/range_conversion_66/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_66/range_conversion_66/sub/y�
 model_66/range_conversion_66/subSub<model_66/tf.__operators__.getitem_468/strided_slice:output:0+model_66/range_conversion_66/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_66/range_conversion_66/sub�
&model_66/range_conversion_66/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_66/range_conversion_66/truediv/y�
$model_66/range_conversion_66/truedivRealDiv$model_66/range_conversion_66/sub:z:0/model_66/range_conversion_66/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_66/range_conversion_66/truediv�
"model_66/range_conversion_66/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_66/range_conversion_66/mul/y�
 model_66/range_conversion_66/mulMul(model_66/range_conversion_66/truediv:z:0+model_66/range_conversion_66/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_66/range_conversion_66/mul�
"model_66/range_conversion_66/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_66/range_conversion_66/add/y�
 model_66/range_conversion_66/addAddV2$model_66/range_conversion_66/mul:z:0+model_66/range_conversion_66/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_66/range_conversion_66/add�
9model_66/tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_66/tf.__operators__.getitem_469/strided_slice/stack�
;model_66/tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_66/tf.__operators__.getitem_469/strided_slice/stack_1�
;model_66/tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_66/tf.__operators__.getitem_469/strided_slice/stack_2�
3model_66/tf.__operators__.getitem_469/strided_sliceStridedSliceinputBmodel_66/tf.__operators__.getitem_469/strided_slice/stack:output:0Dmodel_66/tf.__operators__.getitem_469/strided_slice/stack_1:output:0Dmodel_66/tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_66/tf.__operators__.getitem_469/strided_slice�
"model_66/tf.concat_639/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_66/tf.concat_639/concat/axis�
model_66/tf.concat_639/concatConcatV2$model_66/range_conversion_66/add:z:0<model_66/tf.__operators__.getitem_469/strided_slice:output:0+model_66/tf.concat_639/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_66/tf.concat_639/concat�
)model_66/conv3d_352/Conv3D/ReadVariableOpReadVariableOp2model_66_conv3d_352_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_66/conv3d_352/Conv3D/ReadVariableOp�
model_66/conv3d_352/Conv3DConv3D&model_66/tf.concat_639/concat:output:01model_66/conv3d_352/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_66/conv3d_352/Conv3D�
*model_66/conv3d_352/BiasAdd/ReadVariableOpReadVariableOp3model_66_conv3d_352_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_66/conv3d_352/BiasAdd/ReadVariableOp�
model_66/conv3d_352/BiasAddBiasAdd#model_66/conv3d_352/Conv3D:output:02model_66/conv3d_352/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_66/conv3d_352/BiasAdd�
model_66/conv3d_352/SoftplusSoftplus$model_66/conv3d_352/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_66/conv3d_352/Softplus�
-model_66/average_pooling3d_143/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_66/average_pooling3d_143/transpose/perm�
(model_66/average_pooling3d_143/transpose	Transpose*model_66/conv3d_352/Softplus:activations:06model_66/average_pooling3d_143/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_66/average_pooling3d_143/transpose�
(model_66/average_pooling3d_143/AvgPool3D	AvgPool3D,model_66/average_pooling3d_143/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_66/average_pooling3d_143/AvgPool3D�
/model_66/average_pooling3d_143/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_66/average_pooling3d_143/transpose_1/perm�
*model_66/average_pooling3d_143/transpose_1	Transpose1model_66/average_pooling3d_143/AvgPool3D:output:08model_66/average_pooling3d_143/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_66/average_pooling3d_143/transpose_1�
)model_66/conv3d_353/Conv3D/ReadVariableOpReadVariableOp2model_66_conv3d_353_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_66/conv3d_353/Conv3D/ReadVariableOp�
model_66/conv3d_353/Conv3DConv3D.model_66/average_pooling3d_143/transpose_1:y:01model_66/conv3d_353/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_66/conv3d_353/Conv3D�
*model_66/conv3d_353/BiasAdd/ReadVariableOpReadVariableOp3model_66_conv3d_353_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_66/conv3d_353/BiasAdd/ReadVariableOp�
model_66/conv3d_353/BiasAddBiasAdd#model_66/conv3d_353/Conv3D:output:02model_66/conv3d_353/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_66/conv3d_353/BiasAdd�
model_66/conv3d_353/SoftplusSoftplus$model_66/conv3d_353/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_66/conv3d_353/Softplus�
-model_66/average_pooling3d_144/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_66/average_pooling3d_144/transpose/perm�
(model_66/average_pooling3d_144/transpose	Transpose*model_66/conv3d_353/Softplus:activations:06model_66/average_pooling3d_144/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_66/average_pooling3d_144/transpose�
(model_66/average_pooling3d_144/AvgPool3D	AvgPool3D,model_66/average_pooling3d_144/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_66/average_pooling3d_144/AvgPool3D�
/model_66/average_pooling3d_144/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_66/average_pooling3d_144/transpose_1/perm�
*model_66/average_pooling3d_144/transpose_1	Transpose1model_66/average_pooling3d_144/AvgPool3D:output:08model_66/average_pooling3d_144/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_66/average_pooling3d_144/transpose_1�
model_66/reshape_132/ShapeShape.model_66/average_pooling3d_144/transpose_1:y:0*
T0*
_output_shapes
:2
model_66/reshape_132/Shape�
(model_66/reshape_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_66/reshape_132/strided_slice/stack�
*model_66/reshape_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_66/reshape_132/strided_slice/stack_1�
*model_66/reshape_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_66/reshape_132/strided_slice/stack_2�
"model_66/reshape_132/strided_sliceStridedSlice#model_66/reshape_132/Shape:output:01model_66/reshape_132/strided_slice/stack:output:03model_66/reshape_132/strided_slice/stack_1:output:03model_66/reshape_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_66/reshape_132/strided_slice�
$model_66/reshape_132/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_66/reshape_132/Reshape/shape/1�
"model_66/reshape_132/Reshape/shapePack+model_66/reshape_132/strided_slice:output:0-model_66/reshape_132/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_66/reshape_132/Reshape/shape�
model_66/reshape_132/ReshapeReshape.model_66/average_pooling3d_144/transpose_1:y:0+model_66/reshape_132/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_66/reshape_132/Reshape�
'model_66/dense_66/MatMul/ReadVariableOpReadVariableOp0model_66_dense_66_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_66/dense_66/MatMul/ReadVariableOp�
model_66/dense_66/MatMulMatMul%model_66/reshape_132/Reshape:output:0/model_66/dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_66/dense_66/MatMul�
(model_66/dense_66/BiasAdd/ReadVariableOpReadVariableOp1model_66_dense_66_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_66/dense_66/BiasAdd/ReadVariableOp�
model_66/dense_66/BiasAddBiasAdd"model_66/dense_66/MatMul:product:00model_66/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_66/dense_66/BiasAdd�
model_66/dense_66/SoftplusSoftplus"model_66/dense_66/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_66/dense_66/Softplus�
model_66/reshape_133/ShapeShape(model_66/dense_66/Softplus:activations:0*
T0*
_output_shapes
:2
model_66/reshape_133/Shape�
(model_66/reshape_133/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_66/reshape_133/strided_slice/stack�
*model_66/reshape_133/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_66/reshape_133/strided_slice/stack_1�
*model_66/reshape_133/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_66/reshape_133/strided_slice/stack_2�
"model_66/reshape_133/strided_sliceStridedSlice#model_66/reshape_133/Shape:output:01model_66/reshape_133/strided_slice/stack:output:03model_66/reshape_133/strided_slice/stack_1:output:03model_66/reshape_133/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_66/reshape_133/strided_slice�
$model_66/reshape_133/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_66/reshape_133/Reshape/shape/1�
$model_66/reshape_133/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_66/reshape_133/Reshape/shape/2�
$model_66/reshape_133/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_66/reshape_133/Reshape/shape/3�
$model_66/reshape_133/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_66/reshape_133/Reshape/shape/4�
"model_66/reshape_133/Reshape/shapePack+model_66/reshape_133/strided_slice:output:0-model_66/reshape_133/Reshape/shape/1:output:0-model_66/reshape_133/Reshape/shape/2:output:0-model_66/reshape_133/Reshape/shape/3:output:0-model_66/reshape_133/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_66/reshape_133/Reshape/shape�
model_66/reshape_133/ReshapeReshape(model_66/dense_66/Softplus:activations:0+model_66/reshape_133/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_66/reshape_133/Reshape�
%model_66/tf.reshape_810/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_66/tf.reshape_810/Reshape/shape�
model_66/tf.reshape_810/ReshapeReshape%model_66/reshape_133/Reshape:output:0.model_66/tf.reshape_810/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_66/tf.reshape_810/Reshape�
#model_66/tf.tile_405/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_66/tf.tile_405/Tile/multiples�
model_66/tf.tile_405/TileTile(model_66/tf.reshape_810/Reshape:output:0,model_66/tf.tile_405/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_66/tf.tile_405/Tile�
%model_66/tf.reshape_811/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_66/tf.reshape_811/Reshape/shape�
model_66/tf.reshape_811/ReshapeReshape"model_66/tf.tile_405/Tile:output:0.model_66/tf.reshape_811/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_66/tf.reshape_811/Reshape�
"model_66/tf.concat_640/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_66/tf.concat_640/concat/axis�
model_66/tf.concat_640/concatConcatV2(model_66/tf.reshape_811/Reshape:output:0*model_66/conv3d_353/Softplus:activations:0+model_66/tf.concat_640/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_66/tf.concat_640/concat�
)model_66/conv3d_354/Conv3D/ReadVariableOpReadVariableOp2model_66_conv3d_354_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_66/conv3d_354/Conv3D/ReadVariableOp�
model_66/conv3d_354/Conv3DConv3D&model_66/tf.concat_640/concat:output:01model_66/conv3d_354/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_66/conv3d_354/Conv3D�
*model_66/conv3d_354/BiasAdd/ReadVariableOpReadVariableOp3model_66_conv3d_354_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_66/conv3d_354/BiasAdd/ReadVariableOp�
model_66/conv3d_354/BiasAddBiasAdd#model_66/conv3d_354/Conv3D:output:02model_66/conv3d_354/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_66/conv3d_354/BiasAdd�
model_66/conv3d_354/SoftplusSoftplus$model_66/conv3d_354/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_66/conv3d_354/Softplus�
%model_66/tf.reshape_812/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_66/tf.reshape_812/Reshape/shape�
model_66/tf.reshape_812/ReshapeReshape*model_66/conv3d_354/Softplus:activations:0.model_66/tf.reshape_812/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_66/tf.reshape_812/Reshape�
#model_66/tf.tile_406/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_66/tf.tile_406/Tile/multiples�
model_66/tf.tile_406/TileTile(model_66/tf.reshape_812/Reshape:output:0,model_66/tf.tile_406/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_66/tf.tile_406/Tile�
%model_66/tf.reshape_813/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_66/tf.reshape_813/Reshape/shape�
model_66/tf.reshape_813/ReshapeReshape"model_66/tf.tile_406/Tile:output:0.model_66/tf.reshape_813/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_66/tf.reshape_813/Reshape�
"model_66/tf.concat_641/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_66/tf.concat_641/concat/axis�
model_66/tf.concat_641/concatConcatV2(model_66/tf.reshape_813/Reshape:output:0*model_66/conv3d_352/Softplus:activations:0+model_66/tf.concat_641/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_66/tf.concat_641/concat�
)model_66/conv3d_355/Conv3D/ReadVariableOpReadVariableOp2model_66_conv3d_355_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_66/conv3d_355/Conv3D/ReadVariableOp�
model_66/conv3d_355/Conv3DConv3D&model_66/tf.concat_641/concat:output:01model_66/conv3d_355/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_66/conv3d_355/Conv3D�
*model_66/conv3d_355/BiasAdd/ReadVariableOpReadVariableOp3model_66_conv3d_355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_66/conv3d_355/BiasAdd/ReadVariableOp�
model_66/conv3d_355/BiasAddBiasAdd#model_66/conv3d_355/Conv3D:output:02model_66/conv3d_355/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_66/conv3d_355/BiasAdd�
model_66/conv3d_355/SoftplusSoftplus$model_66/conv3d_355/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_66/conv3d_355/Softplus�
)model_66/conv3d_356/Conv3D/ReadVariableOpReadVariableOp2model_66_conv3d_356_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_66/conv3d_356/Conv3D/ReadVariableOp�
model_66/conv3d_356/Conv3DConv3D*model_66/conv3d_355/Softplus:activations:01model_66/conv3d_356/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_66/conv3d_356/Conv3D�
*model_66/conv3d_356/BiasAdd/ReadVariableOpReadVariableOp3model_66_conv3d_356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_66/conv3d_356/BiasAdd/ReadVariableOp�
model_66/conv3d_356/BiasAddBiasAdd#model_66/conv3d_356/Conv3D:output:02model_66/conv3d_356/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_66/conv3d_356/BiasAdd�
IdentityIdentity$model_66/conv3d_356/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_66/conv3d_352/BiasAdd/ReadVariableOp*^model_66/conv3d_352/Conv3D/ReadVariableOp+^model_66/conv3d_353/BiasAdd/ReadVariableOp*^model_66/conv3d_353/Conv3D/ReadVariableOp+^model_66/conv3d_354/BiasAdd/ReadVariableOp*^model_66/conv3d_354/Conv3D/ReadVariableOp+^model_66/conv3d_355/BiasAdd/ReadVariableOp*^model_66/conv3d_355/Conv3D/ReadVariableOp+^model_66/conv3d_356/BiasAdd/ReadVariableOp*^model_66/conv3d_356/Conv3D/ReadVariableOp)^model_66/dense_66/BiasAdd/ReadVariableOp(^model_66/dense_66/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2X
*model_66/conv3d_352/BiasAdd/ReadVariableOp*model_66/conv3d_352/BiasAdd/ReadVariableOp2V
)model_66/conv3d_352/Conv3D/ReadVariableOp)model_66/conv3d_352/Conv3D/ReadVariableOp2X
*model_66/conv3d_353/BiasAdd/ReadVariableOp*model_66/conv3d_353/BiasAdd/ReadVariableOp2V
)model_66/conv3d_353/Conv3D/ReadVariableOp)model_66/conv3d_353/Conv3D/ReadVariableOp2X
*model_66/conv3d_354/BiasAdd/ReadVariableOp*model_66/conv3d_354/BiasAdd/ReadVariableOp2V
)model_66/conv3d_354/Conv3D/ReadVariableOp)model_66/conv3d_354/Conv3D/ReadVariableOp2X
*model_66/conv3d_355/BiasAdd/ReadVariableOp*model_66/conv3d_355/BiasAdd/ReadVariableOp2V
)model_66/conv3d_355/Conv3D/ReadVariableOp)model_66/conv3d_355/Conv3D/ReadVariableOp2X
*model_66/conv3d_356/BiasAdd/ReadVariableOp*model_66/conv3d_356/BiasAdd/ReadVariableOp2V
)model_66/conv3d_356/Conv3D/ReadVariableOp)model_66/conv3d_356/Conv3D/ReadVariableOp2T
(model_66/dense_66/BiasAdd/ReadVariableOp(model_66/dense_66/BiasAdd/ReadVariableOp2R
'model_66/dense_66/MatMul/ReadVariableOp'model_66/dense_66/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
o
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18237729

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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_18237825

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
e
I__inference_reshape_132_layer_call_and_return_conditional_losses_18238705

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
�
�
-__inference_conv3d_356_layer_call_fn_18238794

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
H__inference_conv3d_356_layer_call_and_return_conditional_losses_182378662
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
�
+__inference_model_66_layer_call_fn_18238359

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
F__inference_model_66_layer_call_and_return_conditional_losses_182380842
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
�
�
H__inference_conv3d_356_layer_call_and_return_conditional_losses_18238804

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
e
I__inference_reshape_132_layer_call_and_return_conditional_losses_18237770

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
�^
�
F__inference_model_66_layer_call_and_return_conditional_losses_18238205	
input1
conv3d_352_18238154:!
conv3d_352_18238156:1
conv3d_353_18238160:!
conv3d_353_18238162:#
dense_66_18238167:@@
dense_66_18238169:@1
conv3d_354_18238181:!
conv3d_354_18238183:1
conv3d_355_18238194:!
conv3d_355_18238196:1
conv3d_356_18238199:!
conv3d_356_18238201:
identity��"conv3d_352/StatefulPartitionedCall�"conv3d_353/StatefulPartitionedCall�"conv3d_354/StatefulPartitionedCall�"conv3d_355/StatefulPartitionedCall�"conv3d_356/StatefulPartitionedCall� dense_66/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinput9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
#range_conversion_66/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
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
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_182376962%
#range_conversion_66/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinput9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_639/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_639/concat/axis�
tf.concat_639/concatConcatV2,range_conversion_66/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_639/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_639/concat�
"conv3d_352/StatefulPartitionedCallStatefulPartitionedCalltf.concat_639/concat:output:0conv3d_352_18238154conv3d_352_18238156*
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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_182377152$
"conv3d_352/StatefulPartitionedCall�
%average_pooling3d_143/PartitionedCallPartitionedCall+conv3d_352/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_182377292'
%average_pooling3d_143/PartitionedCall�
"conv3d_353/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_143/PartitionedCall:output:0conv3d_353_18238160conv3d_353_18238162*
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
H__inference_conv3d_353_layer_call_and_return_conditional_losses_182377422$
"conv3d_353/StatefulPartitionedCall�
%average_pooling3d_144/PartitionedCallPartitionedCall+conv3d_353/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_182377562'
%average_pooling3d_144/PartitionedCall�
reshape_132/PartitionedCallPartitionedCall.average_pooling3d_144/PartitionedCall:output:0*
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
I__inference_reshape_132_layer_call_and_return_conditional_losses_182377702
reshape_132/PartitionedCall�
 dense_66/StatefulPartitionedCallStatefulPartitionedCall$reshape_132/PartitionedCall:output:0dense_66_18238167dense_66_18238169*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_182377832"
 dense_66/StatefulPartitionedCall�
reshape_133/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
I__inference_reshape_133_layer_call_and_return_conditional_losses_182378042
reshape_133/PartitionedCall�
tf.reshape_810/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_810/Reshape/shape�
tf.reshape_810/ReshapeReshape$reshape_133/PartitionedCall:output:0%tf.reshape_810/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_810/Reshape�
tf.tile_405/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_405/Tile/multiples�
tf.tile_405/TileTiletf.reshape_810/Reshape:output:0#tf.tile_405/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_405/Tile�
tf.reshape_811/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_811/Reshape/shape�
tf.reshape_811/ReshapeReshapetf.tile_405/Tile:output:0%tf.reshape_811/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_811/Reshapex
tf.concat_640/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_640/concat/axis�
tf.concat_640/concatConcatV2tf.reshape_811/Reshape:output:0+conv3d_353/StatefulPartitionedCall:output:0"tf.concat_640/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_640/concat�
"conv3d_354/StatefulPartitionedCallStatefulPartitionedCalltf.concat_640/concat:output:0conv3d_354_18238181conv3d_354_18238183*
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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_182378252$
"conv3d_354/StatefulPartitionedCall�
tf.reshape_812/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_812/Reshape/shape�
tf.reshape_812/ReshapeReshape+conv3d_354/StatefulPartitionedCall:output:0%tf.reshape_812/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_812/Reshape�
tf.tile_406/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_406/Tile/multiples�
tf.tile_406/TileTiletf.reshape_812/Reshape:output:0#tf.tile_406/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_406/Tile�
tf.reshape_813/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_813/Reshape/shape�
tf.reshape_813/ReshapeReshapetf.tile_406/Tile:output:0%tf.reshape_813/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_813/Reshapex
tf.concat_641/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_641/concat/axis�
tf.concat_641/concatConcatV2tf.reshape_813/Reshape:output:0+conv3d_352/StatefulPartitionedCall:output:0"tf.concat_641/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_641/concat�
"conv3d_355/StatefulPartitionedCallStatefulPartitionedCalltf.concat_641/concat:output:0conv3d_355_18238194conv3d_355_18238196*
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
H__inference_conv3d_355_layer_call_and_return_conditional_losses_182378502$
"conv3d_355/StatefulPartitionedCall�
"conv3d_356/StatefulPartitionedCallStatefulPartitionedCall+conv3d_355/StatefulPartitionedCall:output:0conv3d_356_18238199conv3d_356_18238201*
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
H__inference_conv3d_356_layer_call_and_return_conditional_losses_182378662$
"conv3d_356/StatefulPartitionedCall�
IdentityIdentity+conv3d_356/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_352/StatefulPartitionedCall#^conv3d_353/StatefulPartitionedCall#^conv3d_354/StatefulPartitionedCall#^conv3d_355/StatefulPartitionedCall#^conv3d_356/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_352/StatefulPartitionedCall"conv3d_352/StatefulPartitionedCall2H
"conv3d_353/StatefulPartitionedCall"conv3d_353/StatefulPartitionedCall2H
"conv3d_354/StatefulPartitionedCall"conv3d_354/StatefulPartitionedCall2H
"conv3d_355/StatefulPartitionedCall"conv3d_355/StatefulPartitionedCall2H
"conv3d_356/StatefulPartitionedCall"conv3d_356/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
o
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18238688

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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_18238765

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
�
�

F__inference_model_66_layer_call_and_return_conditional_losses_18238467

inputsG
)conv3d_352_conv3d_readvariableop_resource:8
*conv3d_352_biasadd_readvariableop_resource:G
)conv3d_353_conv3d_readvariableop_resource:8
*conv3d_353_biasadd_readvariableop_resource:9
'dense_66_matmul_readvariableop_resource:@@6
(dense_66_biasadd_readvariableop_resource:@G
)conv3d_354_conv3d_readvariableop_resource:8
*conv3d_354_biasadd_readvariableop_resource:G
)conv3d_355_conv3d_readvariableop_resource:8
*conv3d_355_biasadd_readvariableop_resource:G
)conv3d_356_conv3d_readvariableop_resource:8
*conv3d_356_biasadd_readvariableop_resource:
identity��!conv3d_352/BiasAdd/ReadVariableOp� conv3d_352/Conv3D/ReadVariableOp�!conv3d_353/BiasAdd/ReadVariableOp� conv3d_353/Conv3D/ReadVariableOp�!conv3d_354/BiasAdd/ReadVariableOp� conv3d_354/Conv3D/ReadVariableOp�!conv3d_355/BiasAdd/ReadVariableOp� conv3d_355/Conv3D/ReadVariableOp�!conv3d_356/BiasAdd/ReadVariableOp� conv3d_356/Conv3D/ReadVariableOp�dense_66/BiasAdd/ReadVariableOp�dense_66/MatMul/ReadVariableOp�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice{
range_conversion_66/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_66/sub/y�
range_conversion_66/subSub3tf.__operators__.getitem_468/strided_slice:output:0"range_conversion_66/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/sub�
range_conversion_66/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_66/truediv/y�
range_conversion_66/truedivRealDivrange_conversion_66/sub:z:0&range_conversion_66/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/truediv{
range_conversion_66/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_66/mul/y�
range_conversion_66/mulMulrange_conversion_66/truediv:z:0"range_conversion_66/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/mul{
range_conversion_66/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_66/add/y�
range_conversion_66/addAddV2range_conversion_66/mul:z:0"range_conversion_66/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_66/add�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_639/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_639/concat/axis�
tf.concat_639/concatConcatV2range_conversion_66/add:z:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_639/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_639/concat�
 conv3d_352/Conv3D/ReadVariableOpReadVariableOp)conv3d_352_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_352/Conv3D/ReadVariableOp�
conv3d_352/Conv3DConv3Dtf.concat_639/concat:output:0(conv3d_352/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_352/Conv3D�
!conv3d_352/BiasAdd/ReadVariableOpReadVariableOp*conv3d_352_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_352/BiasAdd/ReadVariableOp�
conv3d_352/BiasAddBiasAddconv3d_352/Conv3D:output:0)conv3d_352/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_352/BiasAdd�
conv3d_352/SoftplusSoftplusconv3d_352/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_352/Softplus�
$average_pooling3d_143/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_143/transpose/perm�
average_pooling3d_143/transpose	Transpose!conv3d_352/Softplus:activations:0-average_pooling3d_143/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_143/transpose�
average_pooling3d_143/AvgPool3D	AvgPool3D#average_pooling3d_143/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_143/AvgPool3D�
&average_pooling3d_143/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_143/transpose_1/perm�
!average_pooling3d_143/transpose_1	Transpose(average_pooling3d_143/AvgPool3D:output:0/average_pooling3d_143/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_143/transpose_1�
 conv3d_353/Conv3D/ReadVariableOpReadVariableOp)conv3d_353_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_353/Conv3D/ReadVariableOp�
conv3d_353/Conv3DConv3D%average_pooling3d_143/transpose_1:y:0(conv3d_353/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_353/Conv3D�
!conv3d_353/BiasAdd/ReadVariableOpReadVariableOp*conv3d_353_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_353/BiasAdd/ReadVariableOp�
conv3d_353/BiasAddBiasAddconv3d_353/Conv3D:output:0)conv3d_353/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_353/BiasAdd�
conv3d_353/SoftplusSoftplusconv3d_353/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_353/Softplus�
$average_pooling3d_144/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_144/transpose/perm�
average_pooling3d_144/transpose	Transpose!conv3d_353/Softplus:activations:0-average_pooling3d_144/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_144/transpose�
average_pooling3d_144/AvgPool3D	AvgPool3D#average_pooling3d_144/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_144/AvgPool3D�
&average_pooling3d_144/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_144/transpose_1/perm�
!average_pooling3d_144/transpose_1	Transpose(average_pooling3d_144/AvgPool3D:output:0/average_pooling3d_144/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_144/transpose_1{
reshape_132/ShapeShape%average_pooling3d_144/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_132/Shape�
reshape_132/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_132/strided_slice/stack�
!reshape_132/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_1�
!reshape_132/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_132/strided_slice/stack_2�
reshape_132/strided_sliceStridedSlicereshape_132/Shape:output:0(reshape_132/strided_slice/stack:output:0*reshape_132/strided_slice/stack_1:output:0*reshape_132/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_132/strided_slice|
reshape_132/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_132/Reshape/shape/1�
reshape_132/Reshape/shapePack"reshape_132/strided_slice:output:0$reshape_132/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_132/Reshape/shape�
reshape_132/ReshapeReshape%average_pooling3d_144/transpose_1:y:0"reshape_132/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_132/Reshape�
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_66/MatMul/ReadVariableOp�
dense_66/MatMulMatMulreshape_132/Reshape:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_66/MatMul�
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_66/BiasAdd/ReadVariableOp�
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_66/BiasAdd
dense_66/SoftplusSoftplusdense_66/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_66/Softplusu
reshape_133/ShapeShapedense_66/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_133/Shape�
reshape_133/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_133/strided_slice/stack�
!reshape_133/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_133/strided_slice/stack_1�
!reshape_133/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_133/strided_slice/stack_2�
reshape_133/strided_sliceStridedSlicereshape_133/Shape:output:0(reshape_133/strided_slice/stack:output:0*reshape_133/strided_slice/stack_1:output:0*reshape_133/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_133/strided_slice|
reshape_133/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/1|
reshape_133/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/2|
reshape_133/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/3|
reshape_133/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_133/Reshape/shape/4�
reshape_133/Reshape/shapePack"reshape_133/strided_slice:output:0$reshape_133/Reshape/shape/1:output:0$reshape_133/Reshape/shape/2:output:0$reshape_133/Reshape/shape/3:output:0$reshape_133/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_133/Reshape/shape�
reshape_133/ReshapeReshapedense_66/Softplus:activations:0"reshape_133/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_133/Reshape�
tf.reshape_810/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_810/Reshape/shape�
tf.reshape_810/ReshapeReshapereshape_133/Reshape:output:0%tf.reshape_810/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_810/Reshape�
tf.tile_405/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_405/Tile/multiples�
tf.tile_405/TileTiletf.reshape_810/Reshape:output:0#tf.tile_405/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_405/Tile�
tf.reshape_811/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_811/Reshape/shape�
tf.reshape_811/ReshapeReshapetf.tile_405/Tile:output:0%tf.reshape_811/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_811/Reshapex
tf.concat_640/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_640/concat/axis�
tf.concat_640/concatConcatV2tf.reshape_811/Reshape:output:0!conv3d_353/Softplus:activations:0"tf.concat_640/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_640/concat�
 conv3d_354/Conv3D/ReadVariableOpReadVariableOp)conv3d_354_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_354/Conv3D/ReadVariableOp�
conv3d_354/Conv3DConv3Dtf.concat_640/concat:output:0(conv3d_354/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_354/Conv3D�
!conv3d_354/BiasAdd/ReadVariableOpReadVariableOp*conv3d_354_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_354/BiasAdd/ReadVariableOp�
conv3d_354/BiasAddBiasAddconv3d_354/Conv3D:output:0)conv3d_354/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_354/BiasAdd�
conv3d_354/SoftplusSoftplusconv3d_354/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_354/Softplus�
tf.reshape_812/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_812/Reshape/shape�
tf.reshape_812/ReshapeReshape!conv3d_354/Softplus:activations:0%tf.reshape_812/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_812/Reshape�
tf.tile_406/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_406/Tile/multiples�
tf.tile_406/TileTiletf.reshape_812/Reshape:output:0#tf.tile_406/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_406/Tile�
tf.reshape_813/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_813/Reshape/shape�
tf.reshape_813/ReshapeReshapetf.tile_406/Tile:output:0%tf.reshape_813/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_813/Reshapex
tf.concat_641/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_641/concat/axis�
tf.concat_641/concatConcatV2tf.reshape_813/Reshape:output:0!conv3d_352/Softplus:activations:0"tf.concat_641/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_641/concat�
 conv3d_355/Conv3D/ReadVariableOpReadVariableOp)conv3d_355_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_355/Conv3D/ReadVariableOp�
conv3d_355/Conv3DConv3Dtf.concat_641/concat:output:0(conv3d_355/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_355/Conv3D�
!conv3d_355/BiasAdd/ReadVariableOpReadVariableOp*conv3d_355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_355/BiasAdd/ReadVariableOp�
conv3d_355/BiasAddBiasAddconv3d_355/Conv3D:output:0)conv3d_355/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_355/BiasAdd�
conv3d_355/SoftplusSoftplusconv3d_355/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_355/Softplus�
 conv3d_356/Conv3D/ReadVariableOpReadVariableOp)conv3d_356_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_356/Conv3D/ReadVariableOp�
conv3d_356/Conv3DConv3D!conv3d_355/Softplus:activations:0(conv3d_356/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_356/Conv3D�
!conv3d_356/BiasAdd/ReadVariableOpReadVariableOp*conv3d_356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_356/BiasAdd/ReadVariableOp�
conv3d_356/BiasAddBiasAddconv3d_356/Conv3D:output:0)conv3d_356/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_356/BiasAdd�
IdentityIdentityconv3d_356/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_352/BiasAdd/ReadVariableOp!^conv3d_352/Conv3D/ReadVariableOp"^conv3d_353/BiasAdd/ReadVariableOp!^conv3d_353/Conv3D/ReadVariableOp"^conv3d_354/BiasAdd/ReadVariableOp!^conv3d_354/Conv3D/ReadVariableOp"^conv3d_355/BiasAdd/ReadVariableOp!^conv3d_355/Conv3D/ReadVariableOp"^conv3d_356/BiasAdd/ReadVariableOp!^conv3d_356/Conv3D/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_352/BiasAdd/ReadVariableOp!conv3d_352/BiasAdd/ReadVariableOp2D
 conv3d_352/Conv3D/ReadVariableOp conv3d_352/Conv3D/ReadVariableOp2F
!conv3d_353/BiasAdd/ReadVariableOp!conv3d_353/BiasAdd/ReadVariableOp2D
 conv3d_353/Conv3D/ReadVariableOp conv3d_353/Conv3D/ReadVariableOp2F
!conv3d_354/BiasAdd/ReadVariableOp!conv3d_354/BiasAdd/ReadVariableOp2D
 conv3d_354/Conv3D/ReadVariableOp conv3d_354/Conv3D/ReadVariableOp2F
!conv3d_355/BiasAdd/ReadVariableOp!conv3d_355/BiasAdd/ReadVariableOp2D
 conv3d_355/Conv3D/ReadVariableOp conv3d_355/Conv3D/ReadVariableOp2F
!conv3d_356/BiasAdd/ReadVariableOp!conv3d_356/BiasAdd/ReadVariableOp2D
 conv3d_356/Conv3D/ReadVariableOp conv3d_356/Conv3D/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
o
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18238640

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
�
�
-__inference_conv3d_353_layer_call_fn_18238649

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
H__inference_conv3d_353_layer_call_and_return_conditional_losses_182377422
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
�&
�
!__inference__traced_save_18238863
file_prefix0
,savev2_conv3d_352_kernel_read_readvariableop.
*savev2_conv3d_352_bias_read_readvariableop0
,savev2_conv3d_353_kernel_read_readvariableop.
*savev2_conv3d_353_bias_read_readvariableop.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop0
,savev2_conv3d_354_kernel_read_readvariableop.
*savev2_conv3d_354_bias_read_readvariableop0
,savev2_conv3d_355_kernel_read_readvariableop.
*savev2_conv3d_355_bias_read_readvariableop0
,savev2_conv3d_356_kernel_read_readvariableop.
*savev2_conv3d_356_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_352_kernel_read_readvariableop*savev2_conv3d_352_bias_read_readvariableop,savev2_conv3d_353_kernel_read_readvariableop*savev2_conv3d_353_bias_read_readvariableop*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop,savev2_conv3d_354_kernel_read_readvariableop*savev2_conv3d_354_bias_read_readvariableop,savev2_conv3d_355_kernel_read_readvariableop*savev2_conv3d_355_bias_read_readvariableop,savev2_conv3d_356_kernel_read_readvariableop*savev2_conv3d_356_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�^
�
F__inference_model_66_layer_call_and_return_conditional_losses_18238084

inputs1
conv3d_352_18238033:!
conv3d_352_18238035:1
conv3d_353_18238039:!
conv3d_353_18238041:#
dense_66_18238046:@@
dense_66_18238048:@1
conv3d_354_18238060:!
conv3d_354_18238062:1
conv3d_355_18238073:!
conv3d_355_18238075:1
conv3d_356_18238078:!
conv3d_356_18238080:
identity��"conv3d_352/StatefulPartitionedCall�"conv3d_353/StatefulPartitionedCall�"conv3d_354/StatefulPartitionedCall�"conv3d_355/StatefulPartitionedCall�"conv3d_356/StatefulPartitionedCall� dense_66/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
#range_conversion_66/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
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
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_182376962%
#range_conversion_66/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_639/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_639/concat/axis�
tf.concat_639/concatConcatV2,range_conversion_66/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_639/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_639/concat�
"conv3d_352/StatefulPartitionedCallStatefulPartitionedCalltf.concat_639/concat:output:0conv3d_352_18238033conv3d_352_18238035*
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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_182377152$
"conv3d_352/StatefulPartitionedCall�
%average_pooling3d_143/PartitionedCallPartitionedCall+conv3d_352/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_182377292'
%average_pooling3d_143/PartitionedCall�
"conv3d_353/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_143/PartitionedCall:output:0conv3d_353_18238039conv3d_353_18238041*
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
H__inference_conv3d_353_layer_call_and_return_conditional_losses_182377422$
"conv3d_353/StatefulPartitionedCall�
%average_pooling3d_144/PartitionedCallPartitionedCall+conv3d_353/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_182377562'
%average_pooling3d_144/PartitionedCall�
reshape_132/PartitionedCallPartitionedCall.average_pooling3d_144/PartitionedCall:output:0*
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
I__inference_reshape_132_layer_call_and_return_conditional_losses_182377702
reshape_132/PartitionedCall�
 dense_66/StatefulPartitionedCallStatefulPartitionedCall$reshape_132/PartitionedCall:output:0dense_66_18238046dense_66_18238048*
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
F__inference_dense_66_layer_call_and_return_conditional_losses_182377832"
 dense_66/StatefulPartitionedCall�
reshape_133/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
I__inference_reshape_133_layer_call_and_return_conditional_losses_182378042
reshape_133/PartitionedCall�
tf.reshape_810/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_810/Reshape/shape�
tf.reshape_810/ReshapeReshape$reshape_133/PartitionedCall:output:0%tf.reshape_810/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_810/Reshape�
tf.tile_405/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_405/Tile/multiples�
tf.tile_405/TileTiletf.reshape_810/Reshape:output:0#tf.tile_405/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_405/Tile�
tf.reshape_811/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_811/Reshape/shape�
tf.reshape_811/ReshapeReshapetf.tile_405/Tile:output:0%tf.reshape_811/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_811/Reshapex
tf.concat_640/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_640/concat/axis�
tf.concat_640/concatConcatV2tf.reshape_811/Reshape:output:0+conv3d_353/StatefulPartitionedCall:output:0"tf.concat_640/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_640/concat�
"conv3d_354/StatefulPartitionedCallStatefulPartitionedCalltf.concat_640/concat:output:0conv3d_354_18238060conv3d_354_18238062*
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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_182378252$
"conv3d_354/StatefulPartitionedCall�
tf.reshape_812/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_812/Reshape/shape�
tf.reshape_812/ReshapeReshape+conv3d_354/StatefulPartitionedCall:output:0%tf.reshape_812/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_812/Reshape�
tf.tile_406/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_406/Tile/multiples�
tf.tile_406/TileTiletf.reshape_812/Reshape:output:0#tf.tile_406/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_406/Tile�
tf.reshape_813/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_813/Reshape/shape�
tf.reshape_813/ReshapeReshapetf.tile_406/Tile:output:0%tf.reshape_813/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_813/Reshapex
tf.concat_641/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_641/concat/axis�
tf.concat_641/concatConcatV2tf.reshape_813/Reshape:output:0+conv3d_352/StatefulPartitionedCall:output:0"tf.concat_641/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_641/concat�
"conv3d_355/StatefulPartitionedCallStatefulPartitionedCalltf.concat_641/concat:output:0conv3d_355_18238073conv3d_355_18238075*
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
H__inference_conv3d_355_layer_call_and_return_conditional_losses_182378502$
"conv3d_355/StatefulPartitionedCall�
"conv3d_356/StatefulPartitionedCallStatefulPartitionedCall+conv3d_355/StatefulPartitionedCall:output:0conv3d_356_18238078conv3d_356_18238080*
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
H__inference_conv3d_356_layer_call_and_return_conditional_losses_182378662$
"conv3d_356/StatefulPartitionedCall�
IdentityIdentity+conv3d_356/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_352/StatefulPartitionedCall#^conv3d_353/StatefulPartitionedCall#^conv3d_354/StatefulPartitionedCall#^conv3d_355/StatefulPartitionedCall#^conv3d_356/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_352/StatefulPartitionedCall"conv3d_352/StatefulPartitionedCall2H
"conv3d_353/StatefulPartitionedCall"conv3d_353/StatefulPartitionedCall2H
"conv3d_354/StatefulPartitionedCall"conv3d_354/StatefulPartitionedCall2H
"conv3d_355/StatefulPartitionedCall"conv3d_355/StatefulPartitionedCall2H
"conv3d_356/StatefulPartitionedCall"conv3d_356/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

o
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18237656

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
o
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18237756

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
�
e
I__inference_reshape_133_layer_call_and_return_conditional_losses_18238745

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
�
+__inference_model_66_layer_call_fn_18237900	
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
F__inference_model_66_layer_call_and_return_conditional_losses_182378732
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
�
�
F__inference_dense_66_layer_call_and_return_conditional_losses_18237783

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
�
T
8__inference_average_pooling3d_143_layer_call_fn_18238617

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
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_182376262
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
�
�
+__inference_dense_66_layer_call_fn_18238714

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
F__inference_dense_66_layer_call_and_return_conditional_losses_182377832
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
�
H__inference_conv3d_355_layer_call_and_return_conditional_losses_18237850

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
�
T
8__inference_average_pooling3d_144_layer_call_fn_18238665

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
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_182376562
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
�
V
6__inference_range_conversion_66_layer_call_fn_18238580

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
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_182376962
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
�
�
H__inference_conv3d_353_layer_call_and_return_conditional_losses_18238660

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
serving_default_input:0���������J

conv3d_356<
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
1:/ 2conv3d_352/kernel
: 2conv3d_352/bias
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
1:/ 2conv3d_353/kernel
: 2conv3d_353/bias
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
#:!@@ 2dense_66/kernel
:@ 2dense_66/bias
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
1:/ 2conv3d_354/kernel
: 2conv3d_354/bias
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
1:/ 2conv3d_355/kernel
: 2conv3d_355/bias
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
1:/ 2conv3d_356/kernel
: 2conv3d_356/bias
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
+__inference_model_66_layer_call_fn_18237900
+__inference_model_66_layer_call_fn_18238330
+__inference_model_66_layer_call_fn_18238359
+__inference_model_66_layer_call_fn_18238140�
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
#__inference__wrapped_model_18237613input"�
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
F__inference_model_66_layer_call_and_return_conditional_losses_18238467
F__inference_model_66_layer_call_and_return_conditional_losses_18238575
F__inference_model_66_layer_call_and_return_conditional_losses_18238205
F__inference_model_66_layer_call_and_return_conditional_losses_18238270�
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
6__inference_range_conversion_66_layer_call_fn_18238580�
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
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_18238592�
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
-__inference_conv3d_352_layer_call_fn_18238601�
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
H__inference_conv3d_352_layer_call_and_return_conditional_losses_18238612�
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
8__inference_average_pooling3d_143_layer_call_fn_18238617
8__inference_average_pooling3d_143_layer_call_fn_18238622�
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
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18238631
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18238640�
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
-__inference_conv3d_353_layer_call_fn_18238649�
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
H__inference_conv3d_353_layer_call_and_return_conditional_losses_18238660�
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
8__inference_average_pooling3d_144_layer_call_fn_18238665
8__inference_average_pooling3d_144_layer_call_fn_18238670�
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
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18238679
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18238688�
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
.__inference_reshape_132_layer_call_fn_18238693�
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
I__inference_reshape_132_layer_call_and_return_conditional_losses_18238705�
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
+__inference_dense_66_layer_call_fn_18238714�
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
F__inference_dense_66_layer_call_and_return_conditional_losses_18238725�
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
.__inference_reshape_133_layer_call_fn_18238730�
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
I__inference_reshape_133_layer_call_and_return_conditional_losses_18238745�
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
-__inference_conv3d_354_layer_call_fn_18238754�
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
H__inference_conv3d_354_layer_call_and_return_conditional_losses_18238765�
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
-__inference_conv3d_355_layer_call_fn_18238774�
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
H__inference_conv3d_355_layer_call_and_return_conditional_losses_18238785�
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
-__inference_conv3d_356_layer_call_fn_18238794�
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
H__inference_conv3d_356_layer_call_and_return_conditional_losses_18238804�
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
&__inference_signature_wrapper_18238301input"�
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
#__inference__wrapped_model_18237613�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "C�@
>

conv3d_3560�-

conv3d_356����������
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18238631�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_143_layer_call_and_return_conditional_losses_18238640p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_143_layer_call_fn_18238617�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_143_layer_call_fn_18238622c;�8
1�.
,�)
inputs���������
� "$�!����������
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18238679�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_144_layer_call_and_return_conditional_losses_18238688p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_144_layer_call_fn_18238665�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_144_layer_call_fn_18238670c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_352_layer_call_and_return_conditional_losses_18238612t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_352_layer_call_fn_18238601g$%;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_353_layer_call_and_return_conditional_losses_18238660t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_353_layer_call_fn_18238649g./;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_354_layer_call_and_return_conditional_losses_18238765tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_354_layer_call_fn_18238754gJK;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_355_layer_call_and_return_conditional_losses_18238785tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_355_layer_call_fn_18238774gTU;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_356_layer_call_and_return_conditional_losses_18238804tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_356_layer_call_fn_18238794gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_66_layer_call_and_return_conditional_losses_18238725\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_66_layer_call_fn_18238714O<=/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_66_layer_call_and_return_conditional_losses_18238205�$%./<=JKTUZ[B�?
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
F__inference_model_66_layer_call_and_return_conditional_losses_18238270�$%./<=JKTUZ[B�?
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
F__inference_model_66_layer_call_and_return_conditional_losses_18238467�$%./<=JKTUZ[C�@
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
F__inference_model_66_layer_call_and_return_conditional_losses_18238575�$%./<=JKTUZ[C�@
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
+__inference_model_66_layer_call_fn_18237900x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_66_layer_call_fn_18238140x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_66_layer_call_fn_18238330y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_66_layer_call_fn_18238359y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_66_layer_call_and_return_conditional_losses_18238592t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_66_layer_call_fn_18238580g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_132_layer_call_and_return_conditional_losses_18238705d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_132_layer_call_fn_18238693W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_133_layer_call_and_return_conditional_losses_18238745d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_133_layer_call_fn_18238730W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_18238301�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_3560�-

conv3d_356���������