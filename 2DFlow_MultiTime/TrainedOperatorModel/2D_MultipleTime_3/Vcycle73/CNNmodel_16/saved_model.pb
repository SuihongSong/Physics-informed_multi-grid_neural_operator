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
conv3d_527/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_527/kernel
�
%conv3d_527/kernel/Read/ReadVariableOpReadVariableOpconv3d_527/kernel**
_output_shapes
:*
dtype0
v
conv3d_527/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_527/bias
o
#conv3d_527/bias/Read/ReadVariableOpReadVariableOpconv3d_527/bias*
_output_shapes
:*
dtype0
�
conv3d_528/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_528/kernel
�
%conv3d_528/kernel/Read/ReadVariableOpReadVariableOpconv3d_528/kernel**
_output_shapes
:*
dtype0
v
conv3d_528/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_528/bias
o
#conv3d_528/bias/Read/ReadVariableOpReadVariableOpconv3d_528/bias*
_output_shapes
:*
dtype0
|
dense_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_101/kernel
u
$dense_101/kernel/Read/ReadVariableOpReadVariableOpdense_101/kernel*
_output_shapes

:@@*
dtype0
t
dense_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_101/bias
m
"dense_101/bias/Read/ReadVariableOpReadVariableOpdense_101/bias*
_output_shapes
:@*
dtype0
�
conv3d_529/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_529/kernel
�
%conv3d_529/kernel/Read/ReadVariableOpReadVariableOpconv3d_529/kernel**
_output_shapes
:*
dtype0
v
conv3d_529/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_529/bias
o
#conv3d_529/bias/Read/ReadVariableOpReadVariableOpconv3d_529/bias*
_output_shapes
:*
dtype0
�
conv3d_530/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_530/kernel
�
%conv3d_530/kernel/Read/ReadVariableOpReadVariableOpconv3d_530/kernel**
_output_shapes
:*
dtype0
v
conv3d_530/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_530/bias
o
#conv3d_530/bias/Read/ReadVariableOpReadVariableOpconv3d_530/bias*
_output_shapes
:*
dtype0
�
conv3d_531/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_531/kernel
�
%conv3d_531/kernel/Read/ReadVariableOpReadVariableOpconv3d_531/kernel**
_output_shapes
:*
dtype0
v
conv3d_531/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_531/bias
o
#conv3d_531/bias/Read/ReadVariableOpReadVariableOpconv3d_531/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�.
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
VARIABLE_VALUEconv3d_527/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_527/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_528/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_528/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEdense_101/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_101/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_529/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_529/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_530/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_530/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_531/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_531/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_527/kernelconv3d_527/biasconv3d_528/kernelconv3d_528/biasdense_101/kerneldense_101/biasconv3d_529/kernelconv3d_529/biasconv3d_530/kernelconv3d_530/biasconv3d_531/kernelconv3d_531/bias*
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
&__inference_signature_wrapper_26375801
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_527/kernel/Read/ReadVariableOp#conv3d_527/bias/Read/ReadVariableOp%conv3d_528/kernel/Read/ReadVariableOp#conv3d_528/bias/Read/ReadVariableOp$dense_101/kernel/Read/ReadVariableOp"dense_101/bias/Read/ReadVariableOp%conv3d_529/kernel/Read/ReadVariableOp#conv3d_529/bias/Read/ReadVariableOp%conv3d_530/kernel/Read/ReadVariableOp#conv3d_530/bias/Read/ReadVariableOp%conv3d_531/kernel/Read/ReadVariableOp#conv3d_531/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_26376363
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_527/kernelconv3d_527/biasconv3d_528/kernelconv3d_528/biasdense_101/kerneldense_101/biasconv3d_529/kernelconv3d_529/biasconv3d_530/kernelconv3d_530/biasconv3d_531/kernelconv3d_531/bias*
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
$__inference__traced_restore_26376409��
�
e
I__inference_reshape_203_layer_call_and_return_conditional_losses_26376245

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
e
I__inference_reshape_202_layer_call_and_return_conditional_losses_26375270

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
�_
�
G__inference_model_101_layer_call_and_return_conditional_losses_26375584

inputs1
conv3d_527_26375533:!
conv3d_527_26375535:1
conv3d_528_26375539:!
conv3d_528_26375541:$
dense_101_26375546:@@ 
dense_101_26375548:@1
conv3d_529_26375560:!
conv3d_529_26375562:1
conv3d_530_26375573:!
conv3d_530_26375575:1
conv3d_531_26375578:!
conv3d_531_26375580:
identity��"conv3d_527/StatefulPartitionedCall�"conv3d_528/StatefulPartitionedCall�"conv3d_529/StatefulPartitionedCall�"conv3d_530/StatefulPartitionedCall�"conv3d_531/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall�
0tf.__operators__.getitem_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_538/strided_slice/stack�
2tf.__operators__.getitem_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_538/strided_slice/stack_1�
2tf.__operators__.getitem_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_538/strided_slice/stack_2�
*tf.__operators__.getitem_538/strided_sliceStridedSliceinputs9tf.__operators__.getitem_538/strided_slice/stack:output:0;tf.__operators__.getitem_538/strided_slice/stack_1:output:0;tf.__operators__.getitem_538/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_538/strided_slice�
$range_conversion_101/PartitionedCallPartitionedCall3tf.__operators__.getitem_538/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_263751962&
$range_conversion_101/PartitionedCall�
0tf.__operators__.getitem_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_539/strided_slice/stack�
2tf.__operators__.getitem_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_539/strided_slice/stack_1�
2tf.__operators__.getitem_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_539/strided_slice/stack_2�
*tf.__operators__.getitem_539/strided_sliceStridedSliceinputs9tf.__operators__.getitem_539/strided_slice/stack:output:0;tf.__operators__.getitem_539/strided_slice/stack_1:output:0;tf.__operators__.getitem_539/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_539/strided_slicex
tf.concat_744/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_744/concat/axis�
tf.concat_744/concatConcatV2-range_conversion_101/PartitionedCall:output:03tf.__operators__.getitem_539/strided_slice:output:0"tf.concat_744/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_744/concat�
"conv3d_527/StatefulPartitionedCallStatefulPartitionedCalltf.concat_744/concat:output:0conv3d_527_26375533conv3d_527_26375535*
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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_263752152$
"conv3d_527/StatefulPartitionedCall�
%average_pooling3d_213/PartitionedCallPartitionedCall+conv3d_527/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_263752292'
%average_pooling3d_213/PartitionedCall�
"conv3d_528/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_213/PartitionedCall:output:0conv3d_528_26375539conv3d_528_26375541*
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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_263752422$
"conv3d_528/StatefulPartitionedCall�
%average_pooling3d_214/PartitionedCallPartitionedCall+conv3d_528/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_263752562'
%average_pooling3d_214/PartitionedCall�
reshape_202/PartitionedCallPartitionedCall.average_pooling3d_214/PartitionedCall:output:0*
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
I__inference_reshape_202_layer_call_and_return_conditional_losses_263752702
reshape_202/PartitionedCall�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall$reshape_202/PartitionedCall:output:0dense_101_26375546dense_101_26375548*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_dense_101_layer_call_and_return_conditional_losses_263752832#
!dense_101/StatefulPartitionedCall�
reshape_203/PartitionedCallPartitionedCall*dense_101/StatefulPartitionedCall:output:0*
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
I__inference_reshape_203_layer_call_and_return_conditional_losses_263753042
reshape_203/PartitionedCall�
tf.reshape_950/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_950/Reshape/shape�
tf.reshape_950/ReshapeReshape$reshape_203/PartitionedCall:output:0%tf.reshape_950/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_950/Reshape�
tf.tile_475/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_475/Tile/multiples�
tf.tile_475/TileTiletf.reshape_950/Reshape:output:0#tf.tile_475/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_475/Tile�
tf.reshape_951/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_951/Reshape/shape�
tf.reshape_951/ReshapeReshapetf.tile_475/Tile:output:0%tf.reshape_951/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_951/Reshapex
tf.concat_745/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_745/concat/axis�
tf.concat_745/concatConcatV2tf.reshape_951/Reshape:output:0+conv3d_528/StatefulPartitionedCall:output:0"tf.concat_745/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_745/concat�
"conv3d_529/StatefulPartitionedCallStatefulPartitionedCalltf.concat_745/concat:output:0conv3d_529_26375560conv3d_529_26375562*
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
H__inference_conv3d_529_layer_call_and_return_conditional_losses_263753252$
"conv3d_529/StatefulPartitionedCall�
tf.reshape_952/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_952/Reshape/shape�
tf.reshape_952/ReshapeReshape+conv3d_529/StatefulPartitionedCall:output:0%tf.reshape_952/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_952/Reshape�
tf.tile_476/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_476/Tile/multiples�
tf.tile_476/TileTiletf.reshape_952/Reshape:output:0#tf.tile_476/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_476/Tile�
tf.reshape_953/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_953/Reshape/shape�
tf.reshape_953/ReshapeReshapetf.tile_476/Tile:output:0%tf.reshape_953/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_953/Reshapex
tf.concat_746/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_746/concat/axis�
tf.concat_746/concatConcatV2tf.reshape_953/Reshape:output:0+conv3d_527/StatefulPartitionedCall:output:0"tf.concat_746/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_746/concat�
"conv3d_530/StatefulPartitionedCallStatefulPartitionedCalltf.concat_746/concat:output:0conv3d_530_26375573conv3d_530_26375575*
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
H__inference_conv3d_530_layer_call_and_return_conditional_losses_263753502$
"conv3d_530/StatefulPartitionedCall�
"conv3d_531/StatefulPartitionedCallStatefulPartitionedCall+conv3d_530/StatefulPartitionedCall:output:0conv3d_531_26375578conv3d_531_26375580*
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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_263753662$
"conv3d_531/StatefulPartitionedCall�
IdentityIdentity+conv3d_531/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_527/StatefulPartitionedCall#^conv3d_528/StatefulPartitionedCall#^conv3d_529/StatefulPartitionedCall#^conv3d_530/StatefulPartitionedCall#^conv3d_531/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_527/StatefulPartitionedCall"conv3d_527/StatefulPartitionedCall2H
"conv3d_528/StatefulPartitionedCall"conv3d_528/StatefulPartitionedCall2H
"conv3d_529/StatefulPartitionedCall"conv3d_529/StatefulPartitionedCall2H
"conv3d_530/StatefulPartitionedCall"conv3d_530/StatefulPartitionedCall2H
"conv3d_531/StatefulPartitionedCall"conv3d_531/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�_
�
G__inference_model_101_layer_call_and_return_conditional_losses_26375705	
input1
conv3d_527_26375654:!
conv3d_527_26375656:1
conv3d_528_26375660:!
conv3d_528_26375662:$
dense_101_26375667:@@ 
dense_101_26375669:@1
conv3d_529_26375681:!
conv3d_529_26375683:1
conv3d_530_26375694:!
conv3d_530_26375696:1
conv3d_531_26375699:!
conv3d_531_26375701:
identity��"conv3d_527/StatefulPartitionedCall�"conv3d_528/StatefulPartitionedCall�"conv3d_529/StatefulPartitionedCall�"conv3d_530/StatefulPartitionedCall�"conv3d_531/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall�
0tf.__operators__.getitem_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_538/strided_slice/stack�
2tf.__operators__.getitem_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_538/strided_slice/stack_1�
2tf.__operators__.getitem_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_538/strided_slice/stack_2�
*tf.__operators__.getitem_538/strided_sliceStridedSliceinput9tf.__operators__.getitem_538/strided_slice/stack:output:0;tf.__operators__.getitem_538/strided_slice/stack_1:output:0;tf.__operators__.getitem_538/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_538/strided_slice�
$range_conversion_101/PartitionedCallPartitionedCall3tf.__operators__.getitem_538/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_263751962&
$range_conversion_101/PartitionedCall�
0tf.__operators__.getitem_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_539/strided_slice/stack�
2tf.__operators__.getitem_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_539/strided_slice/stack_1�
2tf.__operators__.getitem_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_539/strided_slice/stack_2�
*tf.__operators__.getitem_539/strided_sliceStridedSliceinput9tf.__operators__.getitem_539/strided_slice/stack:output:0;tf.__operators__.getitem_539/strided_slice/stack_1:output:0;tf.__operators__.getitem_539/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_539/strided_slicex
tf.concat_744/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_744/concat/axis�
tf.concat_744/concatConcatV2-range_conversion_101/PartitionedCall:output:03tf.__operators__.getitem_539/strided_slice:output:0"tf.concat_744/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_744/concat�
"conv3d_527/StatefulPartitionedCallStatefulPartitionedCalltf.concat_744/concat:output:0conv3d_527_26375654conv3d_527_26375656*
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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_263752152$
"conv3d_527/StatefulPartitionedCall�
%average_pooling3d_213/PartitionedCallPartitionedCall+conv3d_527/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_263752292'
%average_pooling3d_213/PartitionedCall�
"conv3d_528/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_213/PartitionedCall:output:0conv3d_528_26375660conv3d_528_26375662*
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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_263752422$
"conv3d_528/StatefulPartitionedCall�
%average_pooling3d_214/PartitionedCallPartitionedCall+conv3d_528/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_263752562'
%average_pooling3d_214/PartitionedCall�
reshape_202/PartitionedCallPartitionedCall.average_pooling3d_214/PartitionedCall:output:0*
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
I__inference_reshape_202_layer_call_and_return_conditional_losses_263752702
reshape_202/PartitionedCall�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall$reshape_202/PartitionedCall:output:0dense_101_26375667dense_101_26375669*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_dense_101_layer_call_and_return_conditional_losses_263752832#
!dense_101/StatefulPartitionedCall�
reshape_203/PartitionedCallPartitionedCall*dense_101/StatefulPartitionedCall:output:0*
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
I__inference_reshape_203_layer_call_and_return_conditional_losses_263753042
reshape_203/PartitionedCall�
tf.reshape_950/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_950/Reshape/shape�
tf.reshape_950/ReshapeReshape$reshape_203/PartitionedCall:output:0%tf.reshape_950/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_950/Reshape�
tf.tile_475/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_475/Tile/multiples�
tf.tile_475/TileTiletf.reshape_950/Reshape:output:0#tf.tile_475/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_475/Tile�
tf.reshape_951/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_951/Reshape/shape�
tf.reshape_951/ReshapeReshapetf.tile_475/Tile:output:0%tf.reshape_951/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_951/Reshapex
tf.concat_745/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_745/concat/axis�
tf.concat_745/concatConcatV2tf.reshape_951/Reshape:output:0+conv3d_528/StatefulPartitionedCall:output:0"tf.concat_745/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_745/concat�
"conv3d_529/StatefulPartitionedCallStatefulPartitionedCalltf.concat_745/concat:output:0conv3d_529_26375681conv3d_529_26375683*
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
H__inference_conv3d_529_layer_call_and_return_conditional_losses_263753252$
"conv3d_529/StatefulPartitionedCall�
tf.reshape_952/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_952/Reshape/shape�
tf.reshape_952/ReshapeReshape+conv3d_529/StatefulPartitionedCall:output:0%tf.reshape_952/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_952/Reshape�
tf.tile_476/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_476/Tile/multiples�
tf.tile_476/TileTiletf.reshape_952/Reshape:output:0#tf.tile_476/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_476/Tile�
tf.reshape_953/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_953/Reshape/shape�
tf.reshape_953/ReshapeReshapetf.tile_476/Tile:output:0%tf.reshape_953/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_953/Reshapex
tf.concat_746/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_746/concat/axis�
tf.concat_746/concatConcatV2tf.reshape_953/Reshape:output:0+conv3d_527/StatefulPartitionedCall:output:0"tf.concat_746/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_746/concat�
"conv3d_530/StatefulPartitionedCallStatefulPartitionedCalltf.concat_746/concat:output:0conv3d_530_26375694conv3d_530_26375696*
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
H__inference_conv3d_530_layer_call_and_return_conditional_losses_263753502$
"conv3d_530/StatefulPartitionedCall�
"conv3d_531/StatefulPartitionedCallStatefulPartitionedCall+conv3d_530/StatefulPartitionedCall:output:0conv3d_531_26375699conv3d_531_26375701*
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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_263753662$
"conv3d_531/StatefulPartitionedCall�
IdentityIdentity+conv3d_531/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_527/StatefulPartitionedCall#^conv3d_528/StatefulPartitionedCall#^conv3d_529/StatefulPartitionedCall#^conv3d_530/StatefulPartitionedCall#^conv3d_531/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_527/StatefulPartitionedCall"conv3d_527/StatefulPartitionedCall2H
"conv3d_528/StatefulPartitionedCall"conv3d_528/StatefulPartitionedCall2H
"conv3d_529/StatefulPartitionedCall"conv3d_529/StatefulPartitionedCall2H
"conv3d_530/StatefulPartitionedCall"conv3d_530/StatefulPartitionedCall2H
"conv3d_531/StatefulPartitionedCall"conv3d_531/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
H__inference_conv3d_530_layer_call_and_return_conditional_losses_26376285

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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26376140

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
�
T
8__inference_average_pooling3d_214_layer_call_fn_26376170

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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_263752562
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
�
�
-__inference_conv3d_527_layer_call_fn_26376101

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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_263752152
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
r
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_26376092

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
��
�

G__inference_model_101_layer_call_and_return_conditional_losses_26375967

inputsG
)conv3d_527_conv3d_readvariableop_resource:8
*conv3d_527_biasadd_readvariableop_resource:G
)conv3d_528_conv3d_readvariableop_resource:8
*conv3d_528_biasadd_readvariableop_resource::
(dense_101_matmul_readvariableop_resource:@@7
)dense_101_biasadd_readvariableop_resource:@G
)conv3d_529_conv3d_readvariableop_resource:8
*conv3d_529_biasadd_readvariableop_resource:G
)conv3d_530_conv3d_readvariableop_resource:8
*conv3d_530_biasadd_readvariableop_resource:G
)conv3d_531_conv3d_readvariableop_resource:8
*conv3d_531_biasadd_readvariableop_resource:
identity��!conv3d_527/BiasAdd/ReadVariableOp� conv3d_527/Conv3D/ReadVariableOp�!conv3d_528/BiasAdd/ReadVariableOp� conv3d_528/Conv3D/ReadVariableOp�!conv3d_529/BiasAdd/ReadVariableOp� conv3d_529/Conv3D/ReadVariableOp�!conv3d_530/BiasAdd/ReadVariableOp� conv3d_530/Conv3D/ReadVariableOp�!conv3d_531/BiasAdd/ReadVariableOp� conv3d_531/Conv3D/ReadVariableOp� dense_101/BiasAdd/ReadVariableOp�dense_101/MatMul/ReadVariableOp�
0tf.__operators__.getitem_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_538/strided_slice/stack�
2tf.__operators__.getitem_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_538/strided_slice/stack_1�
2tf.__operators__.getitem_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_538/strided_slice/stack_2�
*tf.__operators__.getitem_538/strided_sliceStridedSliceinputs9tf.__operators__.getitem_538/strided_slice/stack:output:0;tf.__operators__.getitem_538/strided_slice/stack_1:output:0;tf.__operators__.getitem_538/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_538/strided_slice}
range_conversion_101/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_101/sub/y�
range_conversion_101/subSub3tf.__operators__.getitem_538/strided_slice:output:0#range_conversion_101/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/sub�
range_conversion_101/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_101/truediv/y�
range_conversion_101/truedivRealDivrange_conversion_101/sub:z:0'range_conversion_101/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/truediv}
range_conversion_101/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_101/mul/y�
range_conversion_101/mulMul range_conversion_101/truediv:z:0#range_conversion_101/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/mul}
range_conversion_101/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_101/add/y�
range_conversion_101/addAddV2range_conversion_101/mul:z:0#range_conversion_101/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/add�
0tf.__operators__.getitem_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_539/strided_slice/stack�
2tf.__operators__.getitem_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_539/strided_slice/stack_1�
2tf.__operators__.getitem_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_539/strided_slice/stack_2�
*tf.__operators__.getitem_539/strided_sliceStridedSliceinputs9tf.__operators__.getitem_539/strided_slice/stack:output:0;tf.__operators__.getitem_539/strided_slice/stack_1:output:0;tf.__operators__.getitem_539/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_539/strided_slicex
tf.concat_744/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_744/concat/axis�
tf.concat_744/concatConcatV2range_conversion_101/add:z:03tf.__operators__.getitem_539/strided_slice:output:0"tf.concat_744/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_744/concat�
 conv3d_527/Conv3D/ReadVariableOpReadVariableOp)conv3d_527_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_527/Conv3D/ReadVariableOp�
conv3d_527/Conv3DConv3Dtf.concat_744/concat:output:0(conv3d_527/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_527/Conv3D�
!conv3d_527/BiasAdd/ReadVariableOpReadVariableOp*conv3d_527_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_527/BiasAdd/ReadVariableOp�
conv3d_527/BiasAddBiasAddconv3d_527/Conv3D:output:0)conv3d_527/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_527/BiasAdd�
conv3d_527/SoftplusSoftplusconv3d_527/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_527/Softplus�
$average_pooling3d_213/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_213/transpose/perm�
average_pooling3d_213/transpose	Transpose!conv3d_527/Softplus:activations:0-average_pooling3d_213/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_213/transpose�
average_pooling3d_213/AvgPool3D	AvgPool3D#average_pooling3d_213/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_213/AvgPool3D�
&average_pooling3d_213/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_213/transpose_1/perm�
!average_pooling3d_213/transpose_1	Transpose(average_pooling3d_213/AvgPool3D:output:0/average_pooling3d_213/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_213/transpose_1�
 conv3d_528/Conv3D/ReadVariableOpReadVariableOp)conv3d_528_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_528/Conv3D/ReadVariableOp�
conv3d_528/Conv3DConv3D%average_pooling3d_213/transpose_1:y:0(conv3d_528/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_528/Conv3D�
!conv3d_528/BiasAdd/ReadVariableOpReadVariableOp*conv3d_528_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_528/BiasAdd/ReadVariableOp�
conv3d_528/BiasAddBiasAddconv3d_528/Conv3D:output:0)conv3d_528/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_528/BiasAdd�
conv3d_528/SoftplusSoftplusconv3d_528/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_528/Softplus�
$average_pooling3d_214/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_214/transpose/perm�
average_pooling3d_214/transpose	Transpose!conv3d_528/Softplus:activations:0-average_pooling3d_214/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_214/transpose�
average_pooling3d_214/AvgPool3D	AvgPool3D#average_pooling3d_214/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_214/AvgPool3D�
&average_pooling3d_214/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_214/transpose_1/perm�
!average_pooling3d_214/transpose_1	Transpose(average_pooling3d_214/AvgPool3D:output:0/average_pooling3d_214/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_214/transpose_1{
reshape_202/ShapeShape%average_pooling3d_214/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_202/Shape�
reshape_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_202/strided_slice/stack�
!reshape_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_202/strided_slice/stack_1�
!reshape_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_202/strided_slice/stack_2�
reshape_202/strided_sliceStridedSlicereshape_202/Shape:output:0(reshape_202/strided_slice/stack:output:0*reshape_202/strided_slice/stack_1:output:0*reshape_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_202/strided_slice|
reshape_202/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_202/Reshape/shape/1�
reshape_202/Reshape/shapePack"reshape_202/strided_slice:output:0$reshape_202/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_202/Reshape/shape�
reshape_202/ReshapeReshape%average_pooling3d_214/transpose_1:y:0"reshape_202/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_202/Reshape�
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_101/MatMul/ReadVariableOp�
dense_101/MatMulMatMulreshape_202/Reshape:output:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_101/MatMul�
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_101/BiasAdd/ReadVariableOp�
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_101/BiasAdd�
dense_101/SoftplusSoftplusdense_101/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_101/Softplusv
reshape_203/ShapeShape dense_101/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_203/Shape�
reshape_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_203/strided_slice/stack�
!reshape_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_203/strided_slice/stack_1�
!reshape_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_203/strided_slice/stack_2�
reshape_203/strided_sliceStridedSlicereshape_203/Shape:output:0(reshape_203/strided_slice/stack:output:0*reshape_203/strided_slice/stack_1:output:0*reshape_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_203/strided_slice|
reshape_203/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/1|
reshape_203/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/2|
reshape_203/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/3|
reshape_203/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/4�
reshape_203/Reshape/shapePack"reshape_203/strided_slice:output:0$reshape_203/Reshape/shape/1:output:0$reshape_203/Reshape/shape/2:output:0$reshape_203/Reshape/shape/3:output:0$reshape_203/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_203/Reshape/shape�
reshape_203/ReshapeReshape dense_101/Softplus:activations:0"reshape_203/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_203/Reshape�
tf.reshape_950/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_950/Reshape/shape�
tf.reshape_950/ReshapeReshapereshape_203/Reshape:output:0%tf.reshape_950/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_950/Reshape�
tf.tile_475/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_475/Tile/multiples�
tf.tile_475/TileTiletf.reshape_950/Reshape:output:0#tf.tile_475/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_475/Tile�
tf.reshape_951/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_951/Reshape/shape�
tf.reshape_951/ReshapeReshapetf.tile_475/Tile:output:0%tf.reshape_951/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_951/Reshapex
tf.concat_745/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_745/concat/axis�
tf.concat_745/concatConcatV2tf.reshape_951/Reshape:output:0!conv3d_528/Softplus:activations:0"tf.concat_745/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_745/concat�
 conv3d_529/Conv3D/ReadVariableOpReadVariableOp)conv3d_529_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_529/Conv3D/ReadVariableOp�
conv3d_529/Conv3DConv3Dtf.concat_745/concat:output:0(conv3d_529/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_529/Conv3D�
!conv3d_529/BiasAdd/ReadVariableOpReadVariableOp*conv3d_529_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_529/BiasAdd/ReadVariableOp�
conv3d_529/BiasAddBiasAddconv3d_529/Conv3D:output:0)conv3d_529/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_529/BiasAdd�
conv3d_529/SoftplusSoftplusconv3d_529/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_529/Softplus�
tf.reshape_952/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_952/Reshape/shape�
tf.reshape_952/ReshapeReshape!conv3d_529/Softplus:activations:0%tf.reshape_952/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_952/Reshape�
tf.tile_476/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_476/Tile/multiples�
tf.tile_476/TileTiletf.reshape_952/Reshape:output:0#tf.tile_476/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_476/Tile�
tf.reshape_953/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_953/Reshape/shape�
tf.reshape_953/ReshapeReshapetf.tile_476/Tile:output:0%tf.reshape_953/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_953/Reshapex
tf.concat_746/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_746/concat/axis�
tf.concat_746/concatConcatV2tf.reshape_953/Reshape:output:0!conv3d_527/Softplus:activations:0"tf.concat_746/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_746/concat�
 conv3d_530/Conv3D/ReadVariableOpReadVariableOp)conv3d_530_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_530/Conv3D/ReadVariableOp�
conv3d_530/Conv3DConv3Dtf.concat_746/concat:output:0(conv3d_530/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_530/Conv3D�
!conv3d_530/BiasAdd/ReadVariableOpReadVariableOp*conv3d_530_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_530/BiasAdd/ReadVariableOp�
conv3d_530/BiasAddBiasAddconv3d_530/Conv3D:output:0)conv3d_530/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_530/BiasAdd�
conv3d_530/SoftplusSoftplusconv3d_530/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_530/Softplus�
 conv3d_531/Conv3D/ReadVariableOpReadVariableOp)conv3d_531_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_531/Conv3D/ReadVariableOp�
conv3d_531/Conv3DConv3D!conv3d_530/Softplus:activations:0(conv3d_531/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_531/Conv3D�
!conv3d_531/BiasAdd/ReadVariableOpReadVariableOp*conv3d_531_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_531/BiasAdd/ReadVariableOp�
conv3d_531/BiasAddBiasAddconv3d_531/Conv3D:output:0)conv3d_531/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_531/BiasAdd�
IdentityIdentityconv3d_531/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_527/BiasAdd/ReadVariableOp!^conv3d_527/Conv3D/ReadVariableOp"^conv3d_528/BiasAdd/ReadVariableOp!^conv3d_528/Conv3D/ReadVariableOp"^conv3d_529/BiasAdd/ReadVariableOp!^conv3d_529/Conv3D/ReadVariableOp"^conv3d_530/BiasAdd/ReadVariableOp!^conv3d_530/Conv3D/ReadVariableOp"^conv3d_531/BiasAdd/ReadVariableOp!^conv3d_531/Conv3D/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_527/BiasAdd/ReadVariableOp!conv3d_527/BiasAdd/ReadVariableOp2D
 conv3d_527/Conv3D/ReadVariableOp conv3d_527/Conv3D/ReadVariableOp2F
!conv3d_528/BiasAdd/ReadVariableOp!conv3d_528/BiasAdd/ReadVariableOp2D
 conv3d_528/Conv3D/ReadVariableOp conv3d_528/Conv3D/ReadVariableOp2F
!conv3d_529/BiasAdd/ReadVariableOp!conv3d_529/BiasAdd/ReadVariableOp2D
 conv3d_529/Conv3D/ReadVariableOp conv3d_529/Conv3D/ReadVariableOp2F
!conv3d_530/BiasAdd/ReadVariableOp!conv3d_530/BiasAdd/ReadVariableOp2D
 conv3d_530/Conv3D/ReadVariableOp conv3d_530/Conv3D/ReadVariableOp2F
!conv3d_531/BiasAdd/ReadVariableOp!conv3d_531/BiasAdd/ReadVariableOp2D
 conv3d_531/Conv3D/ReadVariableOp conv3d_531/Conv3D/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_529_layer_call_and_return_conditional_losses_26376265

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
-__inference_conv3d_530_layer_call_fn_26376274

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
H__inference_conv3d_530_layer_call_and_return_conditional_losses_263753502
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
�
T
8__inference_average_pooling3d_214_layer_call_fn_26376165

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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_263751562
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
�
J
.__inference_reshape_202_layer_call_fn_26376193

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
I__inference_reshape_202_layer_call_and_return_conditional_losses_263752702
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
�
�
,__inference_model_101_layer_call_fn_26375859

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_model_101_layer_call_and_return_conditional_losses_263755842
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
e
I__inference_reshape_202_layer_call_and_return_conditional_losses_26376205

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
�_
�
G__inference_model_101_layer_call_and_return_conditional_losses_26375373

inputs1
conv3d_527_26375216:!
conv3d_527_26375218:1
conv3d_528_26375243:!
conv3d_528_26375245:$
dense_101_26375284:@@ 
dense_101_26375286:@1
conv3d_529_26375326:!
conv3d_529_26375328:1
conv3d_530_26375351:!
conv3d_530_26375353:1
conv3d_531_26375367:!
conv3d_531_26375369:
identity��"conv3d_527/StatefulPartitionedCall�"conv3d_528/StatefulPartitionedCall�"conv3d_529/StatefulPartitionedCall�"conv3d_530/StatefulPartitionedCall�"conv3d_531/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall�
0tf.__operators__.getitem_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_538/strided_slice/stack�
2tf.__operators__.getitem_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_538/strided_slice/stack_1�
2tf.__operators__.getitem_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_538/strided_slice/stack_2�
*tf.__operators__.getitem_538/strided_sliceStridedSliceinputs9tf.__operators__.getitem_538/strided_slice/stack:output:0;tf.__operators__.getitem_538/strided_slice/stack_1:output:0;tf.__operators__.getitem_538/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_538/strided_slice�
$range_conversion_101/PartitionedCallPartitionedCall3tf.__operators__.getitem_538/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_263751962&
$range_conversion_101/PartitionedCall�
0tf.__operators__.getitem_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_539/strided_slice/stack�
2tf.__operators__.getitem_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_539/strided_slice/stack_1�
2tf.__operators__.getitem_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_539/strided_slice/stack_2�
*tf.__operators__.getitem_539/strided_sliceStridedSliceinputs9tf.__operators__.getitem_539/strided_slice/stack:output:0;tf.__operators__.getitem_539/strided_slice/stack_1:output:0;tf.__operators__.getitem_539/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_539/strided_slicex
tf.concat_744/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_744/concat/axis�
tf.concat_744/concatConcatV2-range_conversion_101/PartitionedCall:output:03tf.__operators__.getitem_539/strided_slice:output:0"tf.concat_744/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_744/concat�
"conv3d_527/StatefulPartitionedCallStatefulPartitionedCalltf.concat_744/concat:output:0conv3d_527_26375216conv3d_527_26375218*
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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_263752152$
"conv3d_527/StatefulPartitionedCall�
%average_pooling3d_213/PartitionedCallPartitionedCall+conv3d_527/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_263752292'
%average_pooling3d_213/PartitionedCall�
"conv3d_528/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_213/PartitionedCall:output:0conv3d_528_26375243conv3d_528_26375245*
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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_263752422$
"conv3d_528/StatefulPartitionedCall�
%average_pooling3d_214/PartitionedCallPartitionedCall+conv3d_528/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_263752562'
%average_pooling3d_214/PartitionedCall�
reshape_202/PartitionedCallPartitionedCall.average_pooling3d_214/PartitionedCall:output:0*
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
I__inference_reshape_202_layer_call_and_return_conditional_losses_263752702
reshape_202/PartitionedCall�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall$reshape_202/PartitionedCall:output:0dense_101_26375284dense_101_26375286*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_dense_101_layer_call_and_return_conditional_losses_263752832#
!dense_101/StatefulPartitionedCall�
reshape_203/PartitionedCallPartitionedCall*dense_101/StatefulPartitionedCall:output:0*
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
I__inference_reshape_203_layer_call_and_return_conditional_losses_263753042
reshape_203/PartitionedCall�
tf.reshape_950/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_950/Reshape/shape�
tf.reshape_950/ReshapeReshape$reshape_203/PartitionedCall:output:0%tf.reshape_950/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_950/Reshape�
tf.tile_475/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_475/Tile/multiples�
tf.tile_475/TileTiletf.reshape_950/Reshape:output:0#tf.tile_475/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_475/Tile�
tf.reshape_951/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_951/Reshape/shape�
tf.reshape_951/ReshapeReshapetf.tile_475/Tile:output:0%tf.reshape_951/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_951/Reshapex
tf.concat_745/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_745/concat/axis�
tf.concat_745/concatConcatV2tf.reshape_951/Reshape:output:0+conv3d_528/StatefulPartitionedCall:output:0"tf.concat_745/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_745/concat�
"conv3d_529/StatefulPartitionedCallStatefulPartitionedCalltf.concat_745/concat:output:0conv3d_529_26375326conv3d_529_26375328*
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
H__inference_conv3d_529_layer_call_and_return_conditional_losses_263753252$
"conv3d_529/StatefulPartitionedCall�
tf.reshape_952/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_952/Reshape/shape�
tf.reshape_952/ReshapeReshape+conv3d_529/StatefulPartitionedCall:output:0%tf.reshape_952/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_952/Reshape�
tf.tile_476/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_476/Tile/multiples�
tf.tile_476/TileTiletf.reshape_952/Reshape:output:0#tf.tile_476/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_476/Tile�
tf.reshape_953/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_953/Reshape/shape�
tf.reshape_953/ReshapeReshapetf.tile_476/Tile:output:0%tf.reshape_953/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_953/Reshapex
tf.concat_746/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_746/concat/axis�
tf.concat_746/concatConcatV2tf.reshape_953/Reshape:output:0+conv3d_527/StatefulPartitionedCall:output:0"tf.concat_746/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_746/concat�
"conv3d_530/StatefulPartitionedCallStatefulPartitionedCalltf.concat_746/concat:output:0conv3d_530_26375351conv3d_530_26375353*
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
H__inference_conv3d_530_layer_call_and_return_conditional_losses_263753502$
"conv3d_530/StatefulPartitionedCall�
"conv3d_531/StatefulPartitionedCallStatefulPartitionedCall+conv3d_530/StatefulPartitionedCall:output:0conv3d_531_26375367conv3d_531_26375369*
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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_263753662$
"conv3d_531/StatefulPartitionedCall�
IdentityIdentity+conv3d_531/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_527/StatefulPartitionedCall#^conv3d_528/StatefulPartitionedCall#^conv3d_529/StatefulPartitionedCall#^conv3d_530/StatefulPartitionedCall#^conv3d_531/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_527/StatefulPartitionedCall"conv3d_527/StatefulPartitionedCall2H
"conv3d_528/StatefulPartitionedCall"conv3d_528/StatefulPartitionedCall2H
"conv3d_529/StatefulPartitionedCall"conv3d_529/StatefulPartitionedCall2H
"conv3d_530/StatefulPartitionedCall"conv3d_530/StatefulPartitionedCall2H
"conv3d_531/StatefulPartitionedCall"conv3d_531/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

o
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26375126

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
H__inference_conv3d_529_layer_call_and_return_conditional_losses_26375325

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
I__inference_reshape_203_layer_call_and_return_conditional_losses_26375304

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
,__inference_model_101_layer_call_fn_26375400	
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_model_101_layer_call_and_return_conditional_losses_263753732
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
�
W
7__inference_range_conversion_101_layer_call_fn_26376080

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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_263751962
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
κ
�
#__inference__wrapped_model_26375113	
inputQ
3model_101_conv3d_527_conv3d_readvariableop_resource:B
4model_101_conv3d_527_biasadd_readvariableop_resource:Q
3model_101_conv3d_528_conv3d_readvariableop_resource:B
4model_101_conv3d_528_biasadd_readvariableop_resource:D
2model_101_dense_101_matmul_readvariableop_resource:@@A
3model_101_dense_101_biasadd_readvariableop_resource:@Q
3model_101_conv3d_529_conv3d_readvariableop_resource:B
4model_101_conv3d_529_biasadd_readvariableop_resource:Q
3model_101_conv3d_530_conv3d_readvariableop_resource:B
4model_101_conv3d_530_biasadd_readvariableop_resource:Q
3model_101_conv3d_531_conv3d_readvariableop_resource:B
4model_101_conv3d_531_biasadd_readvariableop_resource:
identity��+model_101/conv3d_527/BiasAdd/ReadVariableOp�*model_101/conv3d_527/Conv3D/ReadVariableOp�+model_101/conv3d_528/BiasAdd/ReadVariableOp�*model_101/conv3d_528/Conv3D/ReadVariableOp�+model_101/conv3d_529/BiasAdd/ReadVariableOp�*model_101/conv3d_529/Conv3D/ReadVariableOp�+model_101/conv3d_530/BiasAdd/ReadVariableOp�*model_101/conv3d_530/Conv3D/ReadVariableOp�+model_101/conv3d_531/BiasAdd/ReadVariableOp�*model_101/conv3d_531/Conv3D/ReadVariableOp�*model_101/dense_101/BiasAdd/ReadVariableOp�)model_101/dense_101/MatMul/ReadVariableOp�
:model_101/tf.__operators__.getitem_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_101/tf.__operators__.getitem_538/strided_slice/stack�
<model_101/tf.__operators__.getitem_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_101/tf.__operators__.getitem_538/strided_slice/stack_1�
<model_101/tf.__operators__.getitem_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_101/tf.__operators__.getitem_538/strided_slice/stack_2�
4model_101/tf.__operators__.getitem_538/strided_sliceStridedSliceinputCmodel_101/tf.__operators__.getitem_538/strided_slice/stack:output:0Emodel_101/tf.__operators__.getitem_538/strided_slice/stack_1:output:0Emodel_101/tf.__operators__.getitem_538/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask26
4model_101/tf.__operators__.getitem_538/strided_slice�
$model_101/range_conversion_101/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_101/range_conversion_101/sub/y�
"model_101/range_conversion_101/subSub=model_101/tf.__operators__.getitem_538/strided_slice:output:0-model_101/range_conversion_101/sub/y:output:0*
T0*3
_output_shapes!
:���������2$
"model_101/range_conversion_101/sub�
(model_101/range_conversion_101/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_101/range_conversion_101/truediv/y�
&model_101/range_conversion_101/truedivRealDiv&model_101/range_conversion_101/sub:z:01model_101/range_conversion_101/truediv/y:output:0*
T0*3
_output_shapes!
:���������2(
&model_101/range_conversion_101/truediv�
$model_101/range_conversion_101/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_101/range_conversion_101/mul/y�
"model_101/range_conversion_101/mulMul*model_101/range_conversion_101/truediv:z:0-model_101/range_conversion_101/mul/y:output:0*
T0*3
_output_shapes!
:���������2$
"model_101/range_conversion_101/mul�
$model_101/range_conversion_101/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2&
$model_101/range_conversion_101/add/y�
"model_101/range_conversion_101/addAddV2&model_101/range_conversion_101/mul:z:0-model_101/range_conversion_101/add/y:output:0*
T0*3
_output_shapes!
:���������2$
"model_101/range_conversion_101/add�
:model_101/tf.__operators__.getitem_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_101/tf.__operators__.getitem_539/strided_slice/stack�
<model_101/tf.__operators__.getitem_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_101/tf.__operators__.getitem_539/strided_slice/stack_1�
<model_101/tf.__operators__.getitem_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_101/tf.__operators__.getitem_539/strided_slice/stack_2�
4model_101/tf.__operators__.getitem_539/strided_sliceStridedSliceinputCmodel_101/tf.__operators__.getitem_539/strided_slice/stack:output:0Emodel_101/tf.__operators__.getitem_539/strided_slice/stack_1:output:0Emodel_101/tf.__operators__.getitem_539/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask26
4model_101/tf.__operators__.getitem_539/strided_slice�
#model_101/tf.concat_744/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_101/tf.concat_744/concat/axis�
model_101/tf.concat_744/concatConcatV2&model_101/range_conversion_101/add:z:0=model_101/tf.__operators__.getitem_539/strided_slice:output:0,model_101/tf.concat_744/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2 
model_101/tf.concat_744/concat�
*model_101/conv3d_527/Conv3D/ReadVariableOpReadVariableOp3model_101_conv3d_527_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_101/conv3d_527/Conv3D/ReadVariableOp�
model_101/conv3d_527/Conv3DConv3D'model_101/tf.concat_744/concat:output:02model_101/conv3d_527/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_101/conv3d_527/Conv3D�
+model_101/conv3d_527/BiasAdd/ReadVariableOpReadVariableOp4model_101_conv3d_527_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_101/conv3d_527/BiasAdd/ReadVariableOp�
model_101/conv3d_527/BiasAddBiasAdd$model_101/conv3d_527/Conv3D:output:03model_101/conv3d_527/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_101/conv3d_527/BiasAdd�
model_101/conv3d_527/SoftplusSoftplus%model_101/conv3d_527/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_101/conv3d_527/Softplus�
.model_101/average_pooling3d_213/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_101/average_pooling3d_213/transpose/perm�
)model_101/average_pooling3d_213/transpose	Transpose+model_101/conv3d_527/Softplus:activations:07model_101/average_pooling3d_213/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_101/average_pooling3d_213/transpose�
)model_101/average_pooling3d_213/AvgPool3D	AvgPool3D-model_101/average_pooling3d_213/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2+
)model_101/average_pooling3d_213/AvgPool3D�
0model_101/average_pooling3d_213/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                22
0model_101/average_pooling3d_213/transpose_1/perm�
+model_101/average_pooling3d_213/transpose_1	Transpose2model_101/average_pooling3d_213/AvgPool3D:output:09model_101/average_pooling3d_213/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2-
+model_101/average_pooling3d_213/transpose_1�
*model_101/conv3d_528/Conv3D/ReadVariableOpReadVariableOp3model_101_conv3d_528_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_101/conv3d_528/Conv3D/ReadVariableOp�
model_101/conv3d_528/Conv3DConv3D/model_101/average_pooling3d_213/transpose_1:y:02model_101/conv3d_528/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_101/conv3d_528/Conv3D�
+model_101/conv3d_528/BiasAdd/ReadVariableOpReadVariableOp4model_101_conv3d_528_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_101/conv3d_528/BiasAdd/ReadVariableOp�
model_101/conv3d_528/BiasAddBiasAdd$model_101/conv3d_528/Conv3D:output:03model_101/conv3d_528/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_101/conv3d_528/BiasAdd�
model_101/conv3d_528/SoftplusSoftplus%model_101/conv3d_528/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_101/conv3d_528/Softplus�
.model_101/average_pooling3d_214/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_101/average_pooling3d_214/transpose/perm�
)model_101/average_pooling3d_214/transpose	Transpose+model_101/conv3d_528/Softplus:activations:07model_101/average_pooling3d_214/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_101/average_pooling3d_214/transpose�
)model_101/average_pooling3d_214/AvgPool3D	AvgPool3D-model_101/average_pooling3d_214/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2+
)model_101/average_pooling3d_214/AvgPool3D�
0model_101/average_pooling3d_214/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                22
0model_101/average_pooling3d_214/transpose_1/perm�
+model_101/average_pooling3d_214/transpose_1	Transpose2model_101/average_pooling3d_214/AvgPool3D:output:09model_101/average_pooling3d_214/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2-
+model_101/average_pooling3d_214/transpose_1�
model_101/reshape_202/ShapeShape/model_101/average_pooling3d_214/transpose_1:y:0*
T0*
_output_shapes
:2
model_101/reshape_202/Shape�
)model_101/reshape_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_101/reshape_202/strided_slice/stack�
+model_101/reshape_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_101/reshape_202/strided_slice/stack_1�
+model_101/reshape_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_101/reshape_202/strided_slice/stack_2�
#model_101/reshape_202/strided_sliceStridedSlice$model_101/reshape_202/Shape:output:02model_101/reshape_202/strided_slice/stack:output:04model_101/reshape_202/strided_slice/stack_1:output:04model_101/reshape_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_101/reshape_202/strided_slice�
%model_101/reshape_202/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_101/reshape_202/Reshape/shape/1�
#model_101/reshape_202/Reshape/shapePack,model_101/reshape_202/strided_slice:output:0.model_101/reshape_202/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_101/reshape_202/Reshape/shape�
model_101/reshape_202/ReshapeReshape/model_101/average_pooling3d_214/transpose_1:y:0,model_101/reshape_202/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_101/reshape_202/Reshape�
)model_101/dense_101/MatMul/ReadVariableOpReadVariableOp2model_101_dense_101_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_101/dense_101/MatMul/ReadVariableOp�
model_101/dense_101/MatMulMatMul&model_101/reshape_202/Reshape:output:01model_101/dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_101/dense_101/MatMul�
*model_101/dense_101/BiasAdd/ReadVariableOpReadVariableOp3model_101_dense_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_101/dense_101/BiasAdd/ReadVariableOp�
model_101/dense_101/BiasAddBiasAdd$model_101/dense_101/MatMul:product:02model_101/dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_101/dense_101/BiasAdd�
model_101/dense_101/SoftplusSoftplus$model_101/dense_101/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_101/dense_101/Softplus�
model_101/reshape_203/ShapeShape*model_101/dense_101/Softplus:activations:0*
T0*
_output_shapes
:2
model_101/reshape_203/Shape�
)model_101/reshape_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_101/reshape_203/strided_slice/stack�
+model_101/reshape_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_101/reshape_203/strided_slice/stack_1�
+model_101/reshape_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_101/reshape_203/strided_slice/stack_2�
#model_101/reshape_203/strided_sliceStridedSlice$model_101/reshape_203/Shape:output:02model_101/reshape_203/strided_slice/stack:output:04model_101/reshape_203/strided_slice/stack_1:output:04model_101/reshape_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_101/reshape_203/strided_slice�
%model_101/reshape_203/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_101/reshape_203/Reshape/shape/1�
%model_101/reshape_203/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_101/reshape_203/Reshape/shape/2�
%model_101/reshape_203/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_101/reshape_203/Reshape/shape/3�
%model_101/reshape_203/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_101/reshape_203/Reshape/shape/4�
#model_101/reshape_203/Reshape/shapePack,model_101/reshape_203/strided_slice:output:0.model_101/reshape_203/Reshape/shape/1:output:0.model_101/reshape_203/Reshape/shape/2:output:0.model_101/reshape_203/Reshape/shape/3:output:0.model_101/reshape_203/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2%
#model_101/reshape_203/Reshape/shape�
model_101/reshape_203/ReshapeReshape*model_101/dense_101/Softplus:activations:0,model_101/reshape_203/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_101/reshape_203/Reshape�
&model_101/tf.reshape_950/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2(
&model_101/tf.reshape_950/Reshape/shape�
 model_101/tf.reshape_950/ReshapeReshape&model_101/reshape_203/Reshape:output:0/model_101/tf.reshape_950/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2"
 model_101/tf.reshape_950/Reshape�
$model_101/tf.tile_475/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2&
$model_101/tf.tile_475/Tile/multiples�
model_101/tf.tile_475/TileTile)model_101/tf.reshape_950/Reshape:output:0-model_101/tf.tile_475/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_101/tf.tile_475/Tile�
&model_101/tf.reshape_951/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2(
&model_101/tf.reshape_951/Reshape/shape�
 model_101/tf.reshape_951/ReshapeReshape#model_101/tf.tile_475/Tile:output:0/model_101/tf.reshape_951/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2"
 model_101/tf.reshape_951/Reshape�
#model_101/tf.concat_745/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_101/tf.concat_745/concat/axis�
model_101/tf.concat_745/concatConcatV2)model_101/tf.reshape_951/Reshape:output:0+model_101/conv3d_528/Softplus:activations:0,model_101/tf.concat_745/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2 
model_101/tf.concat_745/concat�
*model_101/conv3d_529/Conv3D/ReadVariableOpReadVariableOp3model_101_conv3d_529_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_101/conv3d_529/Conv3D/ReadVariableOp�
model_101/conv3d_529/Conv3DConv3D'model_101/tf.concat_745/concat:output:02model_101/conv3d_529/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_101/conv3d_529/Conv3D�
+model_101/conv3d_529/BiasAdd/ReadVariableOpReadVariableOp4model_101_conv3d_529_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_101/conv3d_529/BiasAdd/ReadVariableOp�
model_101/conv3d_529/BiasAddBiasAdd$model_101/conv3d_529/Conv3D:output:03model_101/conv3d_529/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_101/conv3d_529/BiasAdd�
model_101/conv3d_529/SoftplusSoftplus%model_101/conv3d_529/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_101/conv3d_529/Softplus�
&model_101/tf.reshape_952/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2(
&model_101/tf.reshape_952/Reshape/shape�
 model_101/tf.reshape_952/ReshapeReshape+model_101/conv3d_529/Softplus:activations:0/model_101/tf.reshape_952/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2"
 model_101/tf.reshape_952/Reshape�
$model_101/tf.tile_476/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2&
$model_101/tf.tile_476/Tile/multiples�
model_101/tf.tile_476/TileTile)model_101/tf.reshape_952/Reshape:output:0-model_101/tf.tile_476/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_101/tf.tile_476/Tile�
&model_101/tf.reshape_953/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2(
&model_101/tf.reshape_953/Reshape/shape�
 model_101/tf.reshape_953/ReshapeReshape#model_101/tf.tile_476/Tile:output:0/model_101/tf.reshape_953/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2"
 model_101/tf.reshape_953/Reshape�
#model_101/tf.concat_746/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_101/tf.concat_746/concat/axis�
model_101/tf.concat_746/concatConcatV2)model_101/tf.reshape_953/Reshape:output:0+model_101/conv3d_527/Softplus:activations:0,model_101/tf.concat_746/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2 
model_101/tf.concat_746/concat�
*model_101/conv3d_530/Conv3D/ReadVariableOpReadVariableOp3model_101_conv3d_530_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_101/conv3d_530/Conv3D/ReadVariableOp�
model_101/conv3d_530/Conv3DConv3D'model_101/tf.concat_746/concat:output:02model_101/conv3d_530/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_101/conv3d_530/Conv3D�
+model_101/conv3d_530/BiasAdd/ReadVariableOpReadVariableOp4model_101_conv3d_530_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_101/conv3d_530/BiasAdd/ReadVariableOp�
model_101/conv3d_530/BiasAddBiasAdd$model_101/conv3d_530/Conv3D:output:03model_101/conv3d_530/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_101/conv3d_530/BiasAdd�
model_101/conv3d_530/SoftplusSoftplus%model_101/conv3d_530/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_101/conv3d_530/Softplus�
*model_101/conv3d_531/Conv3D/ReadVariableOpReadVariableOp3model_101_conv3d_531_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_101/conv3d_531/Conv3D/ReadVariableOp�
model_101/conv3d_531/Conv3DConv3D+model_101/conv3d_530/Softplus:activations:02model_101/conv3d_531/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_101/conv3d_531/Conv3D�
+model_101/conv3d_531/BiasAdd/ReadVariableOpReadVariableOp4model_101_conv3d_531_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_101/conv3d_531/BiasAdd/ReadVariableOp�
model_101/conv3d_531/BiasAddBiasAdd$model_101/conv3d_531/Conv3D:output:03model_101/conv3d_531/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_101/conv3d_531/BiasAdd�
IdentityIdentity%model_101/conv3d_531/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp,^model_101/conv3d_527/BiasAdd/ReadVariableOp+^model_101/conv3d_527/Conv3D/ReadVariableOp,^model_101/conv3d_528/BiasAdd/ReadVariableOp+^model_101/conv3d_528/Conv3D/ReadVariableOp,^model_101/conv3d_529/BiasAdd/ReadVariableOp+^model_101/conv3d_529/Conv3D/ReadVariableOp,^model_101/conv3d_530/BiasAdd/ReadVariableOp+^model_101/conv3d_530/Conv3D/ReadVariableOp,^model_101/conv3d_531/BiasAdd/ReadVariableOp+^model_101/conv3d_531/Conv3D/ReadVariableOp+^model_101/dense_101/BiasAdd/ReadVariableOp*^model_101/dense_101/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2Z
+model_101/conv3d_527/BiasAdd/ReadVariableOp+model_101/conv3d_527/BiasAdd/ReadVariableOp2X
*model_101/conv3d_527/Conv3D/ReadVariableOp*model_101/conv3d_527/Conv3D/ReadVariableOp2Z
+model_101/conv3d_528/BiasAdd/ReadVariableOp+model_101/conv3d_528/BiasAdd/ReadVariableOp2X
*model_101/conv3d_528/Conv3D/ReadVariableOp*model_101/conv3d_528/Conv3D/ReadVariableOp2Z
+model_101/conv3d_529/BiasAdd/ReadVariableOp+model_101/conv3d_529/BiasAdd/ReadVariableOp2X
*model_101/conv3d_529/Conv3D/ReadVariableOp*model_101/conv3d_529/Conv3D/ReadVariableOp2Z
+model_101/conv3d_530/BiasAdd/ReadVariableOp+model_101/conv3d_530/BiasAdd/ReadVariableOp2X
*model_101/conv3d_530/Conv3D/ReadVariableOp*model_101/conv3d_530/Conv3D/ReadVariableOp2Z
+model_101/conv3d_531/BiasAdd/ReadVariableOp+model_101/conv3d_531/BiasAdd/ReadVariableOp2X
*model_101/conv3d_531/Conv3D/ReadVariableOp*model_101/conv3d_531/Conv3D/ReadVariableOp2X
*model_101/dense_101/BiasAdd/ReadVariableOp*model_101/dense_101/BiasAdd/ReadVariableOp2V
)model_101/dense_101/MatMul/ReadVariableOp)model_101/dense_101/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
-__inference_conv3d_528_layer_call_fn_26376149

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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_263752422
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
�
G__inference_dense_101_layer_call_and_return_conditional_losses_26375283

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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26375156

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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_26376160

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
-__inference_conv3d_529_layer_call_fn_26376254

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
H__inference_conv3d_529_layer_call_and_return_conditional_losses_263753252
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
�7
�
$__inference__traced_restore_26376409
file_prefix@
"assignvariableop_conv3d_527_kernel:0
"assignvariableop_1_conv3d_527_bias:B
$assignvariableop_2_conv3d_528_kernel:0
"assignvariableop_3_conv3d_528_bias:5
#assignvariableop_4_dense_101_kernel:@@/
!assignvariableop_5_dense_101_bias:@B
$assignvariableop_6_conv3d_529_kernel:0
"assignvariableop_7_conv3d_529_bias:B
$assignvariableop_8_conv3d_530_kernel:0
"assignvariableop_9_conv3d_530_bias:C
%assignvariableop_10_conv3d_531_kernel:1
#assignvariableop_11_conv3d_531_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_527_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_527_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_528_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_528_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_101_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_101_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_529_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_529_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_530_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_530_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_531_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_531_biasIdentity_11:output:0"/device:CPU:0*
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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_26375242

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
H__inference_conv3d_530_layer_call_and_return_conditional_losses_26375350

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
�
G__inference_dense_101_layer_call_and_return_conditional_losses_26376225

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
&__inference_signature_wrapper_26375801	
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
#__inference__wrapped_model_263751132
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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_26376304

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
,__inference_model_101_layer_call_fn_26375830

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_model_101_layer_call_and_return_conditional_losses_263753732
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
�
�
,__inference_dense_101_layer_call_fn_26376214

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_dense_101_layer_call_and_return_conditional_losses_263752832
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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_26376112

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
�
T
8__inference_average_pooling3d_213_layer_call_fn_26376122

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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_263752292
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
o
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26375256

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
�
J
.__inference_reshape_203_layer_call_fn_26376230

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
I__inference_reshape_203_layer_call_and_return_conditional_losses_263753042
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
r
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_26375196

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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_26375215

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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26376131

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
8__inference_average_pooling3d_213_layer_call_fn_26376117

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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_263751262
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
o
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26375229

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
o
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26376188

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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_26375366

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
�_
�
G__inference_model_101_layer_call_and_return_conditional_losses_26375770	
input1
conv3d_527_26375719:!
conv3d_527_26375721:1
conv3d_528_26375725:!
conv3d_528_26375727:$
dense_101_26375732:@@ 
dense_101_26375734:@1
conv3d_529_26375746:!
conv3d_529_26375748:1
conv3d_530_26375759:!
conv3d_530_26375761:1
conv3d_531_26375764:!
conv3d_531_26375766:
identity��"conv3d_527/StatefulPartitionedCall�"conv3d_528/StatefulPartitionedCall�"conv3d_529/StatefulPartitionedCall�"conv3d_530/StatefulPartitionedCall�"conv3d_531/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall�
0tf.__operators__.getitem_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_538/strided_slice/stack�
2tf.__operators__.getitem_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_538/strided_slice/stack_1�
2tf.__operators__.getitem_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_538/strided_slice/stack_2�
*tf.__operators__.getitem_538/strided_sliceStridedSliceinput9tf.__operators__.getitem_538/strided_slice/stack:output:0;tf.__operators__.getitem_538/strided_slice/stack_1:output:0;tf.__operators__.getitem_538/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_538/strided_slice�
$range_conversion_101/PartitionedCallPartitionedCall3tf.__operators__.getitem_538/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_263751962&
$range_conversion_101/PartitionedCall�
0tf.__operators__.getitem_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_539/strided_slice/stack�
2tf.__operators__.getitem_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_539/strided_slice/stack_1�
2tf.__operators__.getitem_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_539/strided_slice/stack_2�
*tf.__operators__.getitem_539/strided_sliceStridedSliceinput9tf.__operators__.getitem_539/strided_slice/stack:output:0;tf.__operators__.getitem_539/strided_slice/stack_1:output:0;tf.__operators__.getitem_539/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_539/strided_slicex
tf.concat_744/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_744/concat/axis�
tf.concat_744/concatConcatV2-range_conversion_101/PartitionedCall:output:03tf.__operators__.getitem_539/strided_slice:output:0"tf.concat_744/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_744/concat�
"conv3d_527/StatefulPartitionedCallStatefulPartitionedCalltf.concat_744/concat:output:0conv3d_527_26375719conv3d_527_26375721*
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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_263752152$
"conv3d_527/StatefulPartitionedCall�
%average_pooling3d_213/PartitionedCallPartitionedCall+conv3d_527/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_263752292'
%average_pooling3d_213/PartitionedCall�
"conv3d_528/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_213/PartitionedCall:output:0conv3d_528_26375725conv3d_528_26375727*
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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_263752422$
"conv3d_528/StatefulPartitionedCall�
%average_pooling3d_214/PartitionedCallPartitionedCall+conv3d_528/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_263752562'
%average_pooling3d_214/PartitionedCall�
reshape_202/PartitionedCallPartitionedCall.average_pooling3d_214/PartitionedCall:output:0*
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
I__inference_reshape_202_layer_call_and_return_conditional_losses_263752702
reshape_202/PartitionedCall�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall$reshape_202/PartitionedCall:output:0dense_101_26375732dense_101_26375734*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_dense_101_layer_call_and_return_conditional_losses_263752832#
!dense_101/StatefulPartitionedCall�
reshape_203/PartitionedCallPartitionedCall*dense_101/StatefulPartitionedCall:output:0*
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
I__inference_reshape_203_layer_call_and_return_conditional_losses_263753042
reshape_203/PartitionedCall�
tf.reshape_950/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_950/Reshape/shape�
tf.reshape_950/ReshapeReshape$reshape_203/PartitionedCall:output:0%tf.reshape_950/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_950/Reshape�
tf.tile_475/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_475/Tile/multiples�
tf.tile_475/TileTiletf.reshape_950/Reshape:output:0#tf.tile_475/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_475/Tile�
tf.reshape_951/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_951/Reshape/shape�
tf.reshape_951/ReshapeReshapetf.tile_475/Tile:output:0%tf.reshape_951/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_951/Reshapex
tf.concat_745/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_745/concat/axis�
tf.concat_745/concatConcatV2tf.reshape_951/Reshape:output:0+conv3d_528/StatefulPartitionedCall:output:0"tf.concat_745/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_745/concat�
"conv3d_529/StatefulPartitionedCallStatefulPartitionedCalltf.concat_745/concat:output:0conv3d_529_26375746conv3d_529_26375748*
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
H__inference_conv3d_529_layer_call_and_return_conditional_losses_263753252$
"conv3d_529/StatefulPartitionedCall�
tf.reshape_952/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_952/Reshape/shape�
tf.reshape_952/ReshapeReshape+conv3d_529/StatefulPartitionedCall:output:0%tf.reshape_952/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_952/Reshape�
tf.tile_476/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_476/Tile/multiples�
tf.tile_476/TileTiletf.reshape_952/Reshape:output:0#tf.tile_476/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_476/Tile�
tf.reshape_953/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_953/Reshape/shape�
tf.reshape_953/ReshapeReshapetf.tile_476/Tile:output:0%tf.reshape_953/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_953/Reshapex
tf.concat_746/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_746/concat/axis�
tf.concat_746/concatConcatV2tf.reshape_953/Reshape:output:0+conv3d_527/StatefulPartitionedCall:output:0"tf.concat_746/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_746/concat�
"conv3d_530/StatefulPartitionedCallStatefulPartitionedCalltf.concat_746/concat:output:0conv3d_530_26375759conv3d_530_26375761*
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
H__inference_conv3d_530_layer_call_and_return_conditional_losses_263753502$
"conv3d_530/StatefulPartitionedCall�
"conv3d_531/StatefulPartitionedCallStatefulPartitionedCall+conv3d_530/StatefulPartitionedCall:output:0conv3d_531_26375764conv3d_531_26375766*
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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_263753662$
"conv3d_531/StatefulPartitionedCall�
IdentityIdentity+conv3d_531/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_527/StatefulPartitionedCall#^conv3d_528/StatefulPartitionedCall#^conv3d_529/StatefulPartitionedCall#^conv3d_530/StatefulPartitionedCall#^conv3d_531/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_527/StatefulPartitionedCall"conv3d_527/StatefulPartitionedCall2H
"conv3d_528/StatefulPartitionedCall"conv3d_528/StatefulPartitionedCall2H
"conv3d_529/StatefulPartitionedCall"conv3d_529/StatefulPartitionedCall2H
"conv3d_530/StatefulPartitionedCall"conv3d_530/StatefulPartitionedCall2H
"conv3d_531/StatefulPartitionedCall"conv3d_531/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�&
�
!__inference__traced_save_26376363
file_prefix0
,savev2_conv3d_527_kernel_read_readvariableop.
*savev2_conv3d_527_bias_read_readvariableop0
,savev2_conv3d_528_kernel_read_readvariableop.
*savev2_conv3d_528_bias_read_readvariableop/
+savev2_dense_101_kernel_read_readvariableop-
)savev2_dense_101_bias_read_readvariableop0
,savev2_conv3d_529_kernel_read_readvariableop.
*savev2_conv3d_529_bias_read_readvariableop0
,savev2_conv3d_530_kernel_read_readvariableop.
*savev2_conv3d_530_bias_read_readvariableop0
,savev2_conv3d_531_kernel_read_readvariableop.
*savev2_conv3d_531_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_527_kernel_read_readvariableop*savev2_conv3d_527_bias_read_readvariableop,savev2_conv3d_528_kernel_read_readvariableop*savev2_conv3d_528_bias_read_readvariableop+savev2_dense_101_kernel_read_readvariableop)savev2_dense_101_bias_read_readvariableop,savev2_conv3d_529_kernel_read_readvariableop*savev2_conv3d_529_bias_read_readvariableop,savev2_conv3d_530_kernel_read_readvariableop*savev2_conv3d_530_bias_read_readvariableop,savev2_conv3d_531_kernel_read_readvariableop*savev2_conv3d_531_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
��
�

G__inference_model_101_layer_call_and_return_conditional_losses_26376075

inputsG
)conv3d_527_conv3d_readvariableop_resource:8
*conv3d_527_biasadd_readvariableop_resource:G
)conv3d_528_conv3d_readvariableop_resource:8
*conv3d_528_biasadd_readvariableop_resource::
(dense_101_matmul_readvariableop_resource:@@7
)dense_101_biasadd_readvariableop_resource:@G
)conv3d_529_conv3d_readvariableop_resource:8
*conv3d_529_biasadd_readvariableop_resource:G
)conv3d_530_conv3d_readvariableop_resource:8
*conv3d_530_biasadd_readvariableop_resource:G
)conv3d_531_conv3d_readvariableop_resource:8
*conv3d_531_biasadd_readvariableop_resource:
identity��!conv3d_527/BiasAdd/ReadVariableOp� conv3d_527/Conv3D/ReadVariableOp�!conv3d_528/BiasAdd/ReadVariableOp� conv3d_528/Conv3D/ReadVariableOp�!conv3d_529/BiasAdd/ReadVariableOp� conv3d_529/Conv3D/ReadVariableOp�!conv3d_530/BiasAdd/ReadVariableOp� conv3d_530/Conv3D/ReadVariableOp�!conv3d_531/BiasAdd/ReadVariableOp� conv3d_531/Conv3D/ReadVariableOp� dense_101/BiasAdd/ReadVariableOp�dense_101/MatMul/ReadVariableOp�
0tf.__operators__.getitem_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_538/strided_slice/stack�
2tf.__operators__.getitem_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_538/strided_slice/stack_1�
2tf.__operators__.getitem_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_538/strided_slice/stack_2�
*tf.__operators__.getitem_538/strided_sliceStridedSliceinputs9tf.__operators__.getitem_538/strided_slice/stack:output:0;tf.__operators__.getitem_538/strided_slice/stack_1:output:0;tf.__operators__.getitem_538/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_538/strided_slice}
range_conversion_101/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_101/sub/y�
range_conversion_101/subSub3tf.__operators__.getitem_538/strided_slice:output:0#range_conversion_101/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/sub�
range_conversion_101/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_101/truediv/y�
range_conversion_101/truedivRealDivrange_conversion_101/sub:z:0'range_conversion_101/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/truediv}
range_conversion_101/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_101/mul/y�
range_conversion_101/mulMul range_conversion_101/truediv:z:0#range_conversion_101/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/mul}
range_conversion_101/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_101/add/y�
range_conversion_101/addAddV2range_conversion_101/mul:z:0#range_conversion_101/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_101/add�
0tf.__operators__.getitem_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_539/strided_slice/stack�
2tf.__operators__.getitem_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_539/strided_slice/stack_1�
2tf.__operators__.getitem_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_539/strided_slice/stack_2�
*tf.__operators__.getitem_539/strided_sliceStridedSliceinputs9tf.__operators__.getitem_539/strided_slice/stack:output:0;tf.__operators__.getitem_539/strided_slice/stack_1:output:0;tf.__operators__.getitem_539/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_539/strided_slicex
tf.concat_744/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_744/concat/axis�
tf.concat_744/concatConcatV2range_conversion_101/add:z:03tf.__operators__.getitem_539/strided_slice:output:0"tf.concat_744/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_744/concat�
 conv3d_527/Conv3D/ReadVariableOpReadVariableOp)conv3d_527_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_527/Conv3D/ReadVariableOp�
conv3d_527/Conv3DConv3Dtf.concat_744/concat:output:0(conv3d_527/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_527/Conv3D�
!conv3d_527/BiasAdd/ReadVariableOpReadVariableOp*conv3d_527_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_527/BiasAdd/ReadVariableOp�
conv3d_527/BiasAddBiasAddconv3d_527/Conv3D:output:0)conv3d_527/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_527/BiasAdd�
conv3d_527/SoftplusSoftplusconv3d_527/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_527/Softplus�
$average_pooling3d_213/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_213/transpose/perm�
average_pooling3d_213/transpose	Transpose!conv3d_527/Softplus:activations:0-average_pooling3d_213/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_213/transpose�
average_pooling3d_213/AvgPool3D	AvgPool3D#average_pooling3d_213/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_213/AvgPool3D�
&average_pooling3d_213/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_213/transpose_1/perm�
!average_pooling3d_213/transpose_1	Transpose(average_pooling3d_213/AvgPool3D:output:0/average_pooling3d_213/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_213/transpose_1�
 conv3d_528/Conv3D/ReadVariableOpReadVariableOp)conv3d_528_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_528/Conv3D/ReadVariableOp�
conv3d_528/Conv3DConv3D%average_pooling3d_213/transpose_1:y:0(conv3d_528/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_528/Conv3D�
!conv3d_528/BiasAdd/ReadVariableOpReadVariableOp*conv3d_528_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_528/BiasAdd/ReadVariableOp�
conv3d_528/BiasAddBiasAddconv3d_528/Conv3D:output:0)conv3d_528/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_528/BiasAdd�
conv3d_528/SoftplusSoftplusconv3d_528/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_528/Softplus�
$average_pooling3d_214/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_214/transpose/perm�
average_pooling3d_214/transpose	Transpose!conv3d_528/Softplus:activations:0-average_pooling3d_214/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_214/transpose�
average_pooling3d_214/AvgPool3D	AvgPool3D#average_pooling3d_214/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_214/AvgPool3D�
&average_pooling3d_214/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_214/transpose_1/perm�
!average_pooling3d_214/transpose_1	Transpose(average_pooling3d_214/AvgPool3D:output:0/average_pooling3d_214/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_214/transpose_1{
reshape_202/ShapeShape%average_pooling3d_214/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_202/Shape�
reshape_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_202/strided_slice/stack�
!reshape_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_202/strided_slice/stack_1�
!reshape_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_202/strided_slice/stack_2�
reshape_202/strided_sliceStridedSlicereshape_202/Shape:output:0(reshape_202/strided_slice/stack:output:0*reshape_202/strided_slice/stack_1:output:0*reshape_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_202/strided_slice|
reshape_202/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_202/Reshape/shape/1�
reshape_202/Reshape/shapePack"reshape_202/strided_slice:output:0$reshape_202/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_202/Reshape/shape�
reshape_202/ReshapeReshape%average_pooling3d_214/transpose_1:y:0"reshape_202/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_202/Reshape�
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_101/MatMul/ReadVariableOp�
dense_101/MatMulMatMulreshape_202/Reshape:output:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_101/MatMul�
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_101/BiasAdd/ReadVariableOp�
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_101/BiasAdd�
dense_101/SoftplusSoftplusdense_101/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_101/Softplusv
reshape_203/ShapeShape dense_101/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_203/Shape�
reshape_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_203/strided_slice/stack�
!reshape_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_203/strided_slice/stack_1�
!reshape_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_203/strided_slice/stack_2�
reshape_203/strided_sliceStridedSlicereshape_203/Shape:output:0(reshape_203/strided_slice/stack:output:0*reshape_203/strided_slice/stack_1:output:0*reshape_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_203/strided_slice|
reshape_203/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/1|
reshape_203/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/2|
reshape_203/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/3|
reshape_203/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_203/Reshape/shape/4�
reshape_203/Reshape/shapePack"reshape_203/strided_slice:output:0$reshape_203/Reshape/shape/1:output:0$reshape_203/Reshape/shape/2:output:0$reshape_203/Reshape/shape/3:output:0$reshape_203/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_203/Reshape/shape�
reshape_203/ReshapeReshape dense_101/Softplus:activations:0"reshape_203/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_203/Reshape�
tf.reshape_950/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_950/Reshape/shape�
tf.reshape_950/ReshapeReshapereshape_203/Reshape:output:0%tf.reshape_950/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_950/Reshape�
tf.tile_475/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_475/Tile/multiples�
tf.tile_475/TileTiletf.reshape_950/Reshape:output:0#tf.tile_475/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_475/Tile�
tf.reshape_951/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_951/Reshape/shape�
tf.reshape_951/ReshapeReshapetf.tile_475/Tile:output:0%tf.reshape_951/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_951/Reshapex
tf.concat_745/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_745/concat/axis�
tf.concat_745/concatConcatV2tf.reshape_951/Reshape:output:0!conv3d_528/Softplus:activations:0"tf.concat_745/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_745/concat�
 conv3d_529/Conv3D/ReadVariableOpReadVariableOp)conv3d_529_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_529/Conv3D/ReadVariableOp�
conv3d_529/Conv3DConv3Dtf.concat_745/concat:output:0(conv3d_529/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_529/Conv3D�
!conv3d_529/BiasAdd/ReadVariableOpReadVariableOp*conv3d_529_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_529/BiasAdd/ReadVariableOp�
conv3d_529/BiasAddBiasAddconv3d_529/Conv3D:output:0)conv3d_529/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_529/BiasAdd�
conv3d_529/SoftplusSoftplusconv3d_529/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_529/Softplus�
tf.reshape_952/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_952/Reshape/shape�
tf.reshape_952/ReshapeReshape!conv3d_529/Softplus:activations:0%tf.reshape_952/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_952/Reshape�
tf.tile_476/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_476/Tile/multiples�
tf.tile_476/TileTiletf.reshape_952/Reshape:output:0#tf.tile_476/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_476/Tile�
tf.reshape_953/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_953/Reshape/shape�
tf.reshape_953/ReshapeReshapetf.tile_476/Tile:output:0%tf.reshape_953/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_953/Reshapex
tf.concat_746/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_746/concat/axis�
tf.concat_746/concatConcatV2tf.reshape_953/Reshape:output:0!conv3d_527/Softplus:activations:0"tf.concat_746/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_746/concat�
 conv3d_530/Conv3D/ReadVariableOpReadVariableOp)conv3d_530_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_530/Conv3D/ReadVariableOp�
conv3d_530/Conv3DConv3Dtf.concat_746/concat:output:0(conv3d_530/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_530/Conv3D�
!conv3d_530/BiasAdd/ReadVariableOpReadVariableOp*conv3d_530_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_530/BiasAdd/ReadVariableOp�
conv3d_530/BiasAddBiasAddconv3d_530/Conv3D:output:0)conv3d_530/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_530/BiasAdd�
conv3d_530/SoftplusSoftplusconv3d_530/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_530/Softplus�
 conv3d_531/Conv3D/ReadVariableOpReadVariableOp)conv3d_531_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_531/Conv3D/ReadVariableOp�
conv3d_531/Conv3DConv3D!conv3d_530/Softplus:activations:0(conv3d_531/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_531/Conv3D�
!conv3d_531/BiasAdd/ReadVariableOpReadVariableOp*conv3d_531_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_531/BiasAdd/ReadVariableOp�
conv3d_531/BiasAddBiasAddconv3d_531/Conv3D:output:0)conv3d_531/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_531/BiasAdd�
IdentityIdentityconv3d_531/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_527/BiasAdd/ReadVariableOp!^conv3d_527/Conv3D/ReadVariableOp"^conv3d_528/BiasAdd/ReadVariableOp!^conv3d_528/Conv3D/ReadVariableOp"^conv3d_529/BiasAdd/ReadVariableOp!^conv3d_529/Conv3D/ReadVariableOp"^conv3d_530/BiasAdd/ReadVariableOp!^conv3d_530/Conv3D/ReadVariableOp"^conv3d_531/BiasAdd/ReadVariableOp!^conv3d_531/Conv3D/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_527/BiasAdd/ReadVariableOp!conv3d_527/BiasAdd/ReadVariableOp2D
 conv3d_527/Conv3D/ReadVariableOp conv3d_527/Conv3D/ReadVariableOp2F
!conv3d_528/BiasAdd/ReadVariableOp!conv3d_528/BiasAdd/ReadVariableOp2D
 conv3d_528/Conv3D/ReadVariableOp conv3d_528/Conv3D/ReadVariableOp2F
!conv3d_529/BiasAdd/ReadVariableOp!conv3d_529/BiasAdd/ReadVariableOp2D
 conv3d_529/Conv3D/ReadVariableOp conv3d_529/Conv3D/ReadVariableOp2F
!conv3d_530/BiasAdd/ReadVariableOp!conv3d_530/BiasAdd/ReadVariableOp2D
 conv3d_530/Conv3D/ReadVariableOp conv3d_530/Conv3D/ReadVariableOp2F
!conv3d_531/BiasAdd/ReadVariableOp!conv3d_531/BiasAdd/ReadVariableOp2D
 conv3d_531/Conv3D/ReadVariableOp conv3d_531/Conv3D/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
,__inference_model_101_layer_call_fn_26375640	
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_model_101_layer_call_and_return_conditional_losses_263755842
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
�
�
-__inference_conv3d_531_layer_call_fn_26376294

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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_263753662
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

o
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26376179

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
serving_default_input:0���������J

conv3d_531<
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
1:/ 2conv3d_527/kernel
: 2conv3d_527/bias
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
1:/ 2conv3d_528/kernel
: 2conv3d_528/bias
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
$:"@@ 2dense_101/kernel
:@ 2dense_101/bias
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
1:/ 2conv3d_529/kernel
: 2conv3d_529/bias
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
1:/ 2conv3d_530/kernel
: 2conv3d_530/bias
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
1:/ 2conv3d_531/kernel
: 2conv3d_531/bias
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
,__inference_model_101_layer_call_fn_26375400
,__inference_model_101_layer_call_fn_26375830
,__inference_model_101_layer_call_fn_26375859
,__inference_model_101_layer_call_fn_26375640�
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
#__inference__wrapped_model_26375113input"�
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
G__inference_model_101_layer_call_and_return_conditional_losses_26375967
G__inference_model_101_layer_call_and_return_conditional_losses_26376075
G__inference_model_101_layer_call_and_return_conditional_losses_26375705
G__inference_model_101_layer_call_and_return_conditional_losses_26375770�
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
7__inference_range_conversion_101_layer_call_fn_26376080�
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
�2�
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_26376092�
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
-__inference_conv3d_527_layer_call_fn_26376101�
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
H__inference_conv3d_527_layer_call_and_return_conditional_losses_26376112�
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
8__inference_average_pooling3d_213_layer_call_fn_26376117
8__inference_average_pooling3d_213_layer_call_fn_26376122�
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
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26376131
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26376140�
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
-__inference_conv3d_528_layer_call_fn_26376149�
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
H__inference_conv3d_528_layer_call_and_return_conditional_losses_26376160�
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
8__inference_average_pooling3d_214_layer_call_fn_26376165
8__inference_average_pooling3d_214_layer_call_fn_26376170�
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
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26376179
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26376188�
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
.__inference_reshape_202_layer_call_fn_26376193�
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
I__inference_reshape_202_layer_call_and_return_conditional_losses_26376205�
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
,__inference_dense_101_layer_call_fn_26376214�
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
G__inference_dense_101_layer_call_and_return_conditional_losses_26376225�
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
.__inference_reshape_203_layer_call_fn_26376230�
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
I__inference_reshape_203_layer_call_and_return_conditional_losses_26376245�
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
-__inference_conv3d_529_layer_call_fn_26376254�
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
H__inference_conv3d_529_layer_call_and_return_conditional_losses_26376265�
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
-__inference_conv3d_530_layer_call_fn_26376274�
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
H__inference_conv3d_530_layer_call_and_return_conditional_losses_26376285�
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
-__inference_conv3d_531_layer_call_fn_26376294�
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
H__inference_conv3d_531_layer_call_and_return_conditional_losses_26376304�
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
&__inference_signature_wrapper_26375801input"�
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
#__inference__wrapped_model_26375113�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "C�@
>

conv3d_5310�-

conv3d_531����������
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26376131�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_213_layer_call_and_return_conditional_losses_26376140p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_213_layer_call_fn_26376117�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_213_layer_call_fn_26376122c;�8
1�.
,�)
inputs���������
� "$�!����������
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26376179�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_214_layer_call_and_return_conditional_losses_26376188p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_214_layer_call_fn_26376165�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_214_layer_call_fn_26376170c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_527_layer_call_and_return_conditional_losses_26376112t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_527_layer_call_fn_26376101g$%;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_528_layer_call_and_return_conditional_losses_26376160t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_528_layer_call_fn_26376149g./;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_529_layer_call_and_return_conditional_losses_26376265tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_529_layer_call_fn_26376254gJK;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_530_layer_call_and_return_conditional_losses_26376285tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_530_layer_call_fn_26376274gTU;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_531_layer_call_and_return_conditional_losses_26376304tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_531_layer_call_fn_26376294gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_dense_101_layer_call_and_return_conditional_losses_26376225\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� 
,__inference_dense_101_layer_call_fn_26376214O<=/�,
%�"
 �
inputs���������@
� "����������@�
G__inference_model_101_layer_call_and_return_conditional_losses_26375705�$%./<=JKTUZ[B�?
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
G__inference_model_101_layer_call_and_return_conditional_losses_26375770�$%./<=JKTUZ[B�?
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
G__inference_model_101_layer_call_and_return_conditional_losses_26375967�$%./<=JKTUZ[C�@
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
G__inference_model_101_layer_call_and_return_conditional_losses_26376075�$%./<=JKTUZ[C�@
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
,__inference_model_101_layer_call_fn_26375400x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
,__inference_model_101_layer_call_fn_26375640x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
,__inference_model_101_layer_call_fn_26375830y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
,__inference_model_101_layer_call_fn_26375859y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
R__inference_range_conversion_101_layer_call_and_return_conditional_losses_26376092t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
7__inference_range_conversion_101_layer_call_fn_26376080g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_202_layer_call_and_return_conditional_losses_26376205d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_202_layer_call_fn_26376193W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_203_layer_call_and_return_conditional_losses_26376245d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_203_layer_call_fn_26376230W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_26375801�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_5310�-

conv3d_531���������