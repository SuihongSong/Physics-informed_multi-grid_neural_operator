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
conv3d_284/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_284/kernel
�
%conv3d_284/kernel/Read/ReadVariableOpReadVariableOpconv3d_284/kernel**
_output_shapes
:*
dtype0
v
conv3d_284/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_284/bias
o
#conv3d_284/bias/Read/ReadVariableOpReadVariableOpconv3d_284/bias*
_output_shapes
:*
dtype0
�
conv3d_285/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_285/kernel
�
%conv3d_285/kernel/Read/ReadVariableOpReadVariableOpconv3d_285/kernel**
_output_shapes
:*
dtype0
v
conv3d_285/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_285/bias
o
#conv3d_285/bias/Read/ReadVariableOpReadVariableOpconv3d_285/bias*
_output_shapes
:*
dtype0
z
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_54/kernel
s
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes

:@@*
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
:@*
dtype0
�
conv3d_286/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_286/kernel
�
%conv3d_286/kernel/Read/ReadVariableOpReadVariableOpconv3d_286/kernel**
_output_shapes
:*
dtype0
v
conv3d_286/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_286/bias
o
#conv3d_286/bias/Read/ReadVariableOpReadVariableOpconv3d_286/bias*
_output_shapes
:*
dtype0
�
conv3d_287/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_287/kernel
�
%conv3d_287/kernel/Read/ReadVariableOpReadVariableOpconv3d_287/kernel**
_output_shapes
:*
dtype0
v
conv3d_287/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_287/bias
o
#conv3d_287/bias/Read/ReadVariableOpReadVariableOpconv3d_287/bias*
_output_shapes
:*
dtype0
�
conv3d_288/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_288/kernel
�
%conv3d_288/kernel/Read/ReadVariableOpReadVariableOpconv3d_288/kernel**
_output_shapes
:*
dtype0
v
conv3d_288/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_288/bias
o
#conv3d_288/bias/Read/ReadVariableOpReadVariableOpconv3d_288/bias*
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
VARIABLE_VALUEconv3d_284/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_284/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_285/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_285/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_54/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_286/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_286/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_287/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_287/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_288/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_288/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_284/kernelconv3d_284/biasconv3d_285/kernelconv3d_285/biasdense_54/kerneldense_54/biasconv3d_286/kernelconv3d_286/biasconv3d_287/kernelconv3d_287/biasconv3d_288/kernelconv3d_288/bias*
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
&__inference_signature_wrapper_15385073
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_284/kernel/Read/ReadVariableOp#conv3d_284/bias/Read/ReadVariableOp%conv3d_285/kernel/Read/ReadVariableOp#conv3d_285/bias/Read/ReadVariableOp#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOp%conv3d_286/kernel/Read/ReadVariableOp#conv3d_286/bias/Read/ReadVariableOp%conv3d_287/kernel/Read/ReadVariableOp#conv3d_287/bias/Read/ReadVariableOp%conv3d_288/kernel/Read/ReadVariableOp#conv3d_288/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_15385635
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_284/kernelconv3d_284/biasconv3d_285/kernelconv3d_285/biasdense_54/kerneldense_54/biasconv3d_286/kernelconv3d_286/biasconv3d_287/kernelconv3d_287/biasconv3d_288/kernelconv3d_288/bias*
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
$__inference__traced_restore_15385681�
�	
o
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15385460

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
�^
�
F__inference_model_54_layer_call_and_return_conditional_losses_15384856

inputs1
conv3d_284_15384805:!
conv3d_284_15384807:1
conv3d_285_15384811:!
conv3d_285_15384813:#
dense_54_15384818:@@
dense_54_15384820:@1
conv3d_286_15384832:!
conv3d_286_15384834:1
conv3d_287_15384845:!
conv3d_287_15384847:1
conv3d_288_15384850:!
conv3d_288_15384852:
identity��"conv3d_284/StatefulPartitionedCall�"conv3d_285/StatefulPartitionedCall�"conv3d_286/StatefulPartitionedCall�"conv3d_287/StatefulPartitionedCall�"conv3d_288/StatefulPartitionedCall� dense_54/StatefulPartitionedCall�
0tf.__operators__.getitem_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_444/strided_slice/stack�
2tf.__operators__.getitem_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_444/strided_slice/stack_1�
2tf.__operators__.getitem_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_444/strided_slice/stack_2�
*tf.__operators__.getitem_444/strided_sliceStridedSliceinputs9tf.__operators__.getitem_444/strided_slice/stack:output:0;tf.__operators__.getitem_444/strided_slice/stack_1:output:0;tf.__operators__.getitem_444/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_444/strided_slice�
#range_conversion_54/PartitionedCallPartitionedCall3tf.__operators__.getitem_444/strided_slice:output:0*
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
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_153844682%
#range_conversion_54/PartitionedCall�
0tf.__operators__.getitem_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_445/strided_slice/stack�
2tf.__operators__.getitem_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_445/strided_slice/stack_1�
2tf.__operators__.getitem_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_445/strided_slice/stack_2�
*tf.__operators__.getitem_445/strided_sliceStridedSliceinputs9tf.__operators__.getitem_445/strided_slice/stack:output:0;tf.__operators__.getitem_445/strided_slice/stack_1:output:0;tf.__operators__.getitem_445/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_445/strided_slicex
tf.concat_599/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_599/concat/axis�
tf.concat_599/concatConcatV2,range_conversion_54/PartitionedCall:output:03tf.__operators__.getitem_445/strided_slice:output:0"tf.concat_599/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_599/concat�
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCalltf.concat_599/concat:output:0conv3d_284_15384805conv3d_284_15384807*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_153844872$
"conv3d_284/StatefulPartitionedCall�
%average_pooling3d_115/PartitionedCallPartitionedCall+conv3d_284/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_153845012'
%average_pooling3d_115/PartitionedCall�
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_115/PartitionedCall:output:0conv3d_285_15384811conv3d_285_15384813*
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
H__inference_conv3d_285_layer_call_and_return_conditional_losses_153845142$
"conv3d_285/StatefulPartitionedCall�
%average_pooling3d_116/PartitionedCallPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_153845282'
%average_pooling3d_116/PartitionedCall�
reshape_108/PartitionedCallPartitionedCall.average_pooling3d_116/PartitionedCall:output:0*
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
I__inference_reshape_108_layer_call_and_return_conditional_losses_153845422
reshape_108/PartitionedCall�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall$reshape_108/PartitionedCall:output:0dense_54_15384818dense_54_15384820*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_153845552"
 dense_54/StatefulPartitionedCall�
reshape_109/PartitionedCallPartitionedCall)dense_54/StatefulPartitionedCall:output:0*
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
I__inference_reshape_109_layer_call_and_return_conditional_losses_153845762
reshape_109/PartitionedCall�
tf.reshape_754/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_754/Reshape/shape�
tf.reshape_754/ReshapeReshape$reshape_109/PartitionedCall:output:0%tf.reshape_754/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_754/Reshape�
tf.tile_377/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_377/Tile/multiples�
tf.tile_377/TileTiletf.reshape_754/Reshape:output:0#tf.tile_377/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_377/Tile�
tf.reshape_755/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_755/Reshape/shape�
tf.reshape_755/ReshapeReshapetf.tile_377/Tile:output:0%tf.reshape_755/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_755/Reshapex
tf.concat_600/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_600/concat/axis�
tf.concat_600/concatConcatV2tf.reshape_755/Reshape:output:0+conv3d_285/StatefulPartitionedCall:output:0"tf.concat_600/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_600/concat�
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCalltf.concat_600/concat:output:0conv3d_286_15384832conv3d_286_15384834*
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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_153845972$
"conv3d_286/StatefulPartitionedCall�
tf.reshape_756/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_756/Reshape/shape�
tf.reshape_756/ReshapeReshape+conv3d_286/StatefulPartitionedCall:output:0%tf.reshape_756/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_756/Reshape�
tf.tile_378/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_378/Tile/multiples�
tf.tile_378/TileTiletf.reshape_756/Reshape:output:0#tf.tile_378/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_378/Tile�
tf.reshape_757/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_757/Reshape/shape�
tf.reshape_757/ReshapeReshapetf.tile_378/Tile:output:0%tf.reshape_757/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_757/Reshapex
tf.concat_601/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_601/concat/axis�
tf.concat_601/concatConcatV2tf.reshape_757/Reshape:output:0+conv3d_284/StatefulPartitionedCall:output:0"tf.concat_601/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_601/concat�
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCalltf.concat_601/concat:output:0conv3d_287_15384845conv3d_287_15384847*
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
H__inference_conv3d_287_layer_call_and_return_conditional_losses_153846222$
"conv3d_287/StatefulPartitionedCall�
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_288_15384850conv3d_288_15384852*
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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_153846382$
"conv3d_288/StatefulPartitionedCall�
IdentityIdentity+conv3d_288/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_284_layer_call_and_return_conditional_losses_15385384

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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_15385537

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
�^
�
F__inference_model_54_layer_call_and_return_conditional_losses_15384977	
input1
conv3d_284_15384926:!
conv3d_284_15384928:1
conv3d_285_15384932:!
conv3d_285_15384934:#
dense_54_15384939:@@
dense_54_15384941:@1
conv3d_286_15384953:!
conv3d_286_15384955:1
conv3d_287_15384966:!
conv3d_287_15384968:1
conv3d_288_15384971:!
conv3d_288_15384973:
identity��"conv3d_284/StatefulPartitionedCall�"conv3d_285/StatefulPartitionedCall�"conv3d_286/StatefulPartitionedCall�"conv3d_287/StatefulPartitionedCall�"conv3d_288/StatefulPartitionedCall� dense_54/StatefulPartitionedCall�
0tf.__operators__.getitem_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_444/strided_slice/stack�
2tf.__operators__.getitem_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_444/strided_slice/stack_1�
2tf.__operators__.getitem_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_444/strided_slice/stack_2�
*tf.__operators__.getitem_444/strided_sliceStridedSliceinput9tf.__operators__.getitem_444/strided_slice/stack:output:0;tf.__operators__.getitem_444/strided_slice/stack_1:output:0;tf.__operators__.getitem_444/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_444/strided_slice�
#range_conversion_54/PartitionedCallPartitionedCall3tf.__operators__.getitem_444/strided_slice:output:0*
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
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_153844682%
#range_conversion_54/PartitionedCall�
0tf.__operators__.getitem_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_445/strided_slice/stack�
2tf.__operators__.getitem_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_445/strided_slice/stack_1�
2tf.__operators__.getitem_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_445/strided_slice/stack_2�
*tf.__operators__.getitem_445/strided_sliceStridedSliceinput9tf.__operators__.getitem_445/strided_slice/stack:output:0;tf.__operators__.getitem_445/strided_slice/stack_1:output:0;tf.__operators__.getitem_445/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_445/strided_slicex
tf.concat_599/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_599/concat/axis�
tf.concat_599/concatConcatV2,range_conversion_54/PartitionedCall:output:03tf.__operators__.getitem_445/strided_slice:output:0"tf.concat_599/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_599/concat�
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCalltf.concat_599/concat:output:0conv3d_284_15384926conv3d_284_15384928*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_153844872$
"conv3d_284/StatefulPartitionedCall�
%average_pooling3d_115/PartitionedCallPartitionedCall+conv3d_284/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_153845012'
%average_pooling3d_115/PartitionedCall�
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_115/PartitionedCall:output:0conv3d_285_15384932conv3d_285_15384934*
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
H__inference_conv3d_285_layer_call_and_return_conditional_losses_153845142$
"conv3d_285/StatefulPartitionedCall�
%average_pooling3d_116/PartitionedCallPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_153845282'
%average_pooling3d_116/PartitionedCall�
reshape_108/PartitionedCallPartitionedCall.average_pooling3d_116/PartitionedCall:output:0*
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
I__inference_reshape_108_layer_call_and_return_conditional_losses_153845422
reshape_108/PartitionedCall�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall$reshape_108/PartitionedCall:output:0dense_54_15384939dense_54_15384941*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_153845552"
 dense_54/StatefulPartitionedCall�
reshape_109/PartitionedCallPartitionedCall)dense_54/StatefulPartitionedCall:output:0*
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
I__inference_reshape_109_layer_call_and_return_conditional_losses_153845762
reshape_109/PartitionedCall�
tf.reshape_754/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_754/Reshape/shape�
tf.reshape_754/ReshapeReshape$reshape_109/PartitionedCall:output:0%tf.reshape_754/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_754/Reshape�
tf.tile_377/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_377/Tile/multiples�
tf.tile_377/TileTiletf.reshape_754/Reshape:output:0#tf.tile_377/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_377/Tile�
tf.reshape_755/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_755/Reshape/shape�
tf.reshape_755/ReshapeReshapetf.tile_377/Tile:output:0%tf.reshape_755/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_755/Reshapex
tf.concat_600/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_600/concat/axis�
tf.concat_600/concatConcatV2tf.reshape_755/Reshape:output:0+conv3d_285/StatefulPartitionedCall:output:0"tf.concat_600/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_600/concat�
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCalltf.concat_600/concat:output:0conv3d_286_15384953conv3d_286_15384955*
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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_153845972$
"conv3d_286/StatefulPartitionedCall�
tf.reshape_756/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_756/Reshape/shape�
tf.reshape_756/ReshapeReshape+conv3d_286/StatefulPartitionedCall:output:0%tf.reshape_756/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_756/Reshape�
tf.tile_378/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_378/Tile/multiples�
tf.tile_378/TileTiletf.reshape_756/Reshape:output:0#tf.tile_378/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_378/Tile�
tf.reshape_757/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_757/Reshape/shape�
tf.reshape_757/ReshapeReshapetf.tile_378/Tile:output:0%tf.reshape_757/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_757/Reshapex
tf.concat_601/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_601/concat/axis�
tf.concat_601/concatConcatV2tf.reshape_757/Reshape:output:0+conv3d_284/StatefulPartitionedCall:output:0"tf.concat_601/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_601/concat�
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCalltf.concat_601/concat:output:0conv3d_287_15384966conv3d_287_15384968*
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
H__inference_conv3d_287_layer_call_and_return_conditional_losses_153846222$
"conv3d_287/StatefulPartitionedCall�
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_288_15384971conv3d_288_15384973*
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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_153846382$
"conv3d_288/StatefulPartitionedCall�
IdentityIdentity+conv3d_288/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
+__inference_model_54_layer_call_fn_15385131

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
F__inference_model_54_layer_call_and_return_conditional_losses_153848562
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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_15385576

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
�
e
I__inference_reshape_109_layer_call_and_return_conditional_losses_15384576

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
+__inference_model_54_layer_call_fn_15385102

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
F__inference_model_54_layer_call_and_return_conditional_losses_153846452
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

o
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15384398

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
H__inference_conv3d_285_layer_call_and_return_conditional_losses_15384514

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
�
T
8__inference_average_pooling3d_116_layer_call_fn_15385437

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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_153844282
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
�
T
8__inference_average_pooling3d_115_layer_call_fn_15385389

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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_153843982
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
�
F__inference_dense_54_layer_call_and_return_conditional_losses_15385497

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
�
�
-__inference_conv3d_286_layer_call_fn_15385526

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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_153845972
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
H__inference_conv3d_287_layer_call_and_return_conditional_losses_15384622

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
�&
�
!__inference__traced_save_15385635
file_prefix0
,savev2_conv3d_284_kernel_read_readvariableop.
*savev2_conv3d_284_bias_read_readvariableop0
,savev2_conv3d_285_kernel_read_readvariableop.
*savev2_conv3d_285_bias_read_readvariableop.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop0
,savev2_conv3d_286_kernel_read_readvariableop.
*savev2_conv3d_286_bias_read_readvariableop0
,savev2_conv3d_287_kernel_read_readvariableop.
*savev2_conv3d_287_bias_read_readvariableop0
,savev2_conv3d_288_kernel_read_readvariableop.
*savev2_conv3d_288_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_284_kernel_read_readvariableop*savev2_conv3d_284_bias_read_readvariableop,savev2_conv3d_285_kernel_read_readvariableop*savev2_conv3d_285_bias_read_readvariableop*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop,savev2_conv3d_286_kernel_read_readvariableop*savev2_conv3d_286_bias_read_readvariableop,savev2_conv3d_287_kernel_read_readvariableop*savev2_conv3d_287_bias_read_readvariableop,savev2_conv3d_288_kernel_read_readvariableop*savev2_conv3d_288_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�

F__inference_model_54_layer_call_and_return_conditional_losses_15385239

inputsG
)conv3d_284_conv3d_readvariableop_resource:8
*conv3d_284_biasadd_readvariableop_resource:G
)conv3d_285_conv3d_readvariableop_resource:8
*conv3d_285_biasadd_readvariableop_resource:9
'dense_54_matmul_readvariableop_resource:@@6
(dense_54_biasadd_readvariableop_resource:@G
)conv3d_286_conv3d_readvariableop_resource:8
*conv3d_286_biasadd_readvariableop_resource:G
)conv3d_287_conv3d_readvariableop_resource:8
*conv3d_287_biasadd_readvariableop_resource:G
)conv3d_288_conv3d_readvariableop_resource:8
*conv3d_288_biasadd_readvariableop_resource:
identity��!conv3d_284/BiasAdd/ReadVariableOp� conv3d_284/Conv3D/ReadVariableOp�!conv3d_285/BiasAdd/ReadVariableOp� conv3d_285/Conv3D/ReadVariableOp�!conv3d_286/BiasAdd/ReadVariableOp� conv3d_286/Conv3D/ReadVariableOp�!conv3d_287/BiasAdd/ReadVariableOp� conv3d_287/Conv3D/ReadVariableOp�!conv3d_288/BiasAdd/ReadVariableOp� conv3d_288/Conv3D/ReadVariableOp�dense_54/BiasAdd/ReadVariableOp�dense_54/MatMul/ReadVariableOp�
0tf.__operators__.getitem_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_444/strided_slice/stack�
2tf.__operators__.getitem_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_444/strided_slice/stack_1�
2tf.__operators__.getitem_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_444/strided_slice/stack_2�
*tf.__operators__.getitem_444/strided_sliceStridedSliceinputs9tf.__operators__.getitem_444/strided_slice/stack:output:0;tf.__operators__.getitem_444/strided_slice/stack_1:output:0;tf.__operators__.getitem_444/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_444/strided_slice{
range_conversion_54/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_54/sub/y�
range_conversion_54/subSub3tf.__operators__.getitem_444/strided_slice:output:0"range_conversion_54/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/sub�
range_conversion_54/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_54/truediv/y�
range_conversion_54/truedivRealDivrange_conversion_54/sub:z:0&range_conversion_54/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/truediv{
range_conversion_54/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_54/mul/y�
range_conversion_54/mulMulrange_conversion_54/truediv:z:0"range_conversion_54/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/mul{
range_conversion_54/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_54/add/y�
range_conversion_54/addAddV2range_conversion_54/mul:z:0"range_conversion_54/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/add�
0tf.__operators__.getitem_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_445/strided_slice/stack�
2tf.__operators__.getitem_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_445/strided_slice/stack_1�
2tf.__operators__.getitem_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_445/strided_slice/stack_2�
*tf.__operators__.getitem_445/strided_sliceStridedSliceinputs9tf.__operators__.getitem_445/strided_slice/stack:output:0;tf.__operators__.getitem_445/strided_slice/stack_1:output:0;tf.__operators__.getitem_445/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_445/strided_slicex
tf.concat_599/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_599/concat/axis�
tf.concat_599/concatConcatV2range_conversion_54/add:z:03tf.__operators__.getitem_445/strided_slice:output:0"tf.concat_599/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_599/concat�
 conv3d_284/Conv3D/ReadVariableOpReadVariableOp)conv3d_284_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_284/Conv3D/ReadVariableOp�
conv3d_284/Conv3DConv3Dtf.concat_599/concat:output:0(conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_284/Conv3D�
!conv3d_284/BiasAdd/ReadVariableOpReadVariableOp*conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_284/BiasAdd/ReadVariableOp�
conv3d_284/BiasAddBiasAddconv3d_284/Conv3D:output:0)conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_284/BiasAdd�
conv3d_284/SoftplusSoftplusconv3d_284/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_284/Softplus�
$average_pooling3d_115/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_115/transpose/perm�
average_pooling3d_115/transpose	Transpose!conv3d_284/Softplus:activations:0-average_pooling3d_115/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_115/transpose�
average_pooling3d_115/AvgPool3D	AvgPool3D#average_pooling3d_115/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_115/AvgPool3D�
&average_pooling3d_115/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_115/transpose_1/perm�
!average_pooling3d_115/transpose_1	Transpose(average_pooling3d_115/AvgPool3D:output:0/average_pooling3d_115/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_115/transpose_1�
 conv3d_285/Conv3D/ReadVariableOpReadVariableOp)conv3d_285_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_285/Conv3D/ReadVariableOp�
conv3d_285/Conv3DConv3D%average_pooling3d_115/transpose_1:y:0(conv3d_285/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_285/Conv3D�
!conv3d_285/BiasAdd/ReadVariableOpReadVariableOp*conv3d_285_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_285/BiasAdd/ReadVariableOp�
conv3d_285/BiasAddBiasAddconv3d_285/Conv3D:output:0)conv3d_285/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_285/BiasAdd�
conv3d_285/SoftplusSoftplusconv3d_285/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_285/Softplus�
$average_pooling3d_116/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_116/transpose/perm�
average_pooling3d_116/transpose	Transpose!conv3d_285/Softplus:activations:0-average_pooling3d_116/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_116/transpose�
average_pooling3d_116/AvgPool3D	AvgPool3D#average_pooling3d_116/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_116/AvgPool3D�
&average_pooling3d_116/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_116/transpose_1/perm�
!average_pooling3d_116/transpose_1	Transpose(average_pooling3d_116/AvgPool3D:output:0/average_pooling3d_116/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_116/transpose_1{
reshape_108/ShapeShape%average_pooling3d_116/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_108/Shape�
reshape_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_108/strided_slice/stack�
!reshape_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_108/strided_slice/stack_1�
!reshape_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_108/strided_slice/stack_2�
reshape_108/strided_sliceStridedSlicereshape_108/Shape:output:0(reshape_108/strided_slice/stack:output:0*reshape_108/strided_slice/stack_1:output:0*reshape_108/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_108/strided_slice|
reshape_108/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_108/Reshape/shape/1�
reshape_108/Reshape/shapePack"reshape_108/strided_slice:output:0$reshape_108/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_108/Reshape/shape�
reshape_108/ReshapeReshape%average_pooling3d_116/transpose_1:y:0"reshape_108/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_108/Reshape�
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_54/MatMul/ReadVariableOp�
dense_54/MatMulMatMulreshape_108/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_54/MatMul�
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_54/BiasAdd/ReadVariableOp�
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_54/BiasAdd
dense_54/SoftplusSoftplusdense_54/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_54/Softplusu
reshape_109/ShapeShapedense_54/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_109/Shape�
reshape_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_109/strided_slice/stack�
!reshape_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_109/strided_slice/stack_1�
!reshape_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_109/strided_slice/stack_2�
reshape_109/strided_sliceStridedSlicereshape_109/Shape:output:0(reshape_109/strided_slice/stack:output:0*reshape_109/strided_slice/stack_1:output:0*reshape_109/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_109/strided_slice|
reshape_109/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/1|
reshape_109/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/2|
reshape_109/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/3|
reshape_109/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/4�
reshape_109/Reshape/shapePack"reshape_109/strided_slice:output:0$reshape_109/Reshape/shape/1:output:0$reshape_109/Reshape/shape/2:output:0$reshape_109/Reshape/shape/3:output:0$reshape_109/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_109/Reshape/shape�
reshape_109/ReshapeReshapedense_54/Softplus:activations:0"reshape_109/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_109/Reshape�
tf.reshape_754/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_754/Reshape/shape�
tf.reshape_754/ReshapeReshapereshape_109/Reshape:output:0%tf.reshape_754/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_754/Reshape�
tf.tile_377/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_377/Tile/multiples�
tf.tile_377/TileTiletf.reshape_754/Reshape:output:0#tf.tile_377/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_377/Tile�
tf.reshape_755/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_755/Reshape/shape�
tf.reshape_755/ReshapeReshapetf.tile_377/Tile:output:0%tf.reshape_755/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_755/Reshapex
tf.concat_600/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_600/concat/axis�
tf.concat_600/concatConcatV2tf.reshape_755/Reshape:output:0!conv3d_285/Softplus:activations:0"tf.concat_600/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_600/concat�
 conv3d_286/Conv3D/ReadVariableOpReadVariableOp)conv3d_286_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_286/Conv3D/ReadVariableOp�
conv3d_286/Conv3DConv3Dtf.concat_600/concat:output:0(conv3d_286/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_286/Conv3D�
!conv3d_286/BiasAdd/ReadVariableOpReadVariableOp*conv3d_286_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_286/BiasAdd/ReadVariableOp�
conv3d_286/BiasAddBiasAddconv3d_286/Conv3D:output:0)conv3d_286/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_286/BiasAdd�
conv3d_286/SoftplusSoftplusconv3d_286/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_286/Softplus�
tf.reshape_756/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_756/Reshape/shape�
tf.reshape_756/ReshapeReshape!conv3d_286/Softplus:activations:0%tf.reshape_756/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_756/Reshape�
tf.tile_378/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_378/Tile/multiples�
tf.tile_378/TileTiletf.reshape_756/Reshape:output:0#tf.tile_378/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_378/Tile�
tf.reshape_757/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_757/Reshape/shape�
tf.reshape_757/ReshapeReshapetf.tile_378/Tile:output:0%tf.reshape_757/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_757/Reshapex
tf.concat_601/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_601/concat/axis�
tf.concat_601/concatConcatV2tf.reshape_757/Reshape:output:0!conv3d_284/Softplus:activations:0"tf.concat_601/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_601/concat�
 conv3d_287/Conv3D/ReadVariableOpReadVariableOp)conv3d_287_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_287/Conv3D/ReadVariableOp�
conv3d_287/Conv3DConv3Dtf.concat_601/concat:output:0(conv3d_287/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_287/Conv3D�
!conv3d_287/BiasAdd/ReadVariableOpReadVariableOp*conv3d_287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_287/BiasAdd/ReadVariableOp�
conv3d_287/BiasAddBiasAddconv3d_287/Conv3D:output:0)conv3d_287/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_287/BiasAdd�
conv3d_287/SoftplusSoftplusconv3d_287/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_287/Softplus�
 conv3d_288/Conv3D/ReadVariableOpReadVariableOp)conv3d_288_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_288/Conv3D/ReadVariableOp�
conv3d_288/Conv3DConv3D!conv3d_287/Softplus:activations:0(conv3d_288/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_288/Conv3D�
!conv3d_288/BiasAdd/ReadVariableOpReadVariableOp*conv3d_288_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_288/BiasAdd/ReadVariableOp�
conv3d_288/BiasAddBiasAddconv3d_288/Conv3D:output:0)conv3d_288/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_288/BiasAdd�
IdentityIdentityconv3d_288/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_284/BiasAdd/ReadVariableOp!^conv3d_284/Conv3D/ReadVariableOp"^conv3d_285/BiasAdd/ReadVariableOp!^conv3d_285/Conv3D/ReadVariableOp"^conv3d_286/BiasAdd/ReadVariableOp!^conv3d_286/Conv3D/ReadVariableOp"^conv3d_287/BiasAdd/ReadVariableOp!^conv3d_287/Conv3D/ReadVariableOp"^conv3d_288/BiasAdd/ReadVariableOp!^conv3d_288/Conv3D/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_284/BiasAdd/ReadVariableOp!conv3d_284/BiasAdd/ReadVariableOp2D
 conv3d_284/Conv3D/ReadVariableOp conv3d_284/Conv3D/ReadVariableOp2F
!conv3d_285/BiasAdd/ReadVariableOp!conv3d_285/BiasAdd/ReadVariableOp2D
 conv3d_285/Conv3D/ReadVariableOp conv3d_285/Conv3D/ReadVariableOp2F
!conv3d_286/BiasAdd/ReadVariableOp!conv3d_286/BiasAdd/ReadVariableOp2D
 conv3d_286/Conv3D/ReadVariableOp conv3d_286/Conv3D/ReadVariableOp2F
!conv3d_287/BiasAdd/ReadVariableOp!conv3d_287/BiasAdd/ReadVariableOp2D
 conv3d_287/Conv3D/ReadVariableOp conv3d_287/Conv3D/ReadVariableOp2F
!conv3d_288/BiasAdd/ReadVariableOp!conv3d_288/BiasAdd/ReadVariableOp2D
 conv3d_288/Conv3D/ReadVariableOp conv3d_288/Conv3D/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_288_layer_call_fn_15385566

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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_153846382
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
+__inference_model_54_layer_call_fn_15384912	
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
F__inference_model_54_layer_call_and_return_conditional_losses_153848562
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
�
�

F__inference_model_54_layer_call_and_return_conditional_losses_15385347

inputsG
)conv3d_284_conv3d_readvariableop_resource:8
*conv3d_284_biasadd_readvariableop_resource:G
)conv3d_285_conv3d_readvariableop_resource:8
*conv3d_285_biasadd_readvariableop_resource:9
'dense_54_matmul_readvariableop_resource:@@6
(dense_54_biasadd_readvariableop_resource:@G
)conv3d_286_conv3d_readvariableop_resource:8
*conv3d_286_biasadd_readvariableop_resource:G
)conv3d_287_conv3d_readvariableop_resource:8
*conv3d_287_biasadd_readvariableop_resource:G
)conv3d_288_conv3d_readvariableop_resource:8
*conv3d_288_biasadd_readvariableop_resource:
identity��!conv3d_284/BiasAdd/ReadVariableOp� conv3d_284/Conv3D/ReadVariableOp�!conv3d_285/BiasAdd/ReadVariableOp� conv3d_285/Conv3D/ReadVariableOp�!conv3d_286/BiasAdd/ReadVariableOp� conv3d_286/Conv3D/ReadVariableOp�!conv3d_287/BiasAdd/ReadVariableOp� conv3d_287/Conv3D/ReadVariableOp�!conv3d_288/BiasAdd/ReadVariableOp� conv3d_288/Conv3D/ReadVariableOp�dense_54/BiasAdd/ReadVariableOp�dense_54/MatMul/ReadVariableOp�
0tf.__operators__.getitem_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_444/strided_slice/stack�
2tf.__operators__.getitem_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_444/strided_slice/stack_1�
2tf.__operators__.getitem_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_444/strided_slice/stack_2�
*tf.__operators__.getitem_444/strided_sliceStridedSliceinputs9tf.__operators__.getitem_444/strided_slice/stack:output:0;tf.__operators__.getitem_444/strided_slice/stack_1:output:0;tf.__operators__.getitem_444/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_444/strided_slice{
range_conversion_54/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_54/sub/y�
range_conversion_54/subSub3tf.__operators__.getitem_444/strided_slice:output:0"range_conversion_54/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/sub�
range_conversion_54/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_54/truediv/y�
range_conversion_54/truedivRealDivrange_conversion_54/sub:z:0&range_conversion_54/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/truediv{
range_conversion_54/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_54/mul/y�
range_conversion_54/mulMulrange_conversion_54/truediv:z:0"range_conversion_54/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/mul{
range_conversion_54/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_54/add/y�
range_conversion_54/addAddV2range_conversion_54/mul:z:0"range_conversion_54/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_54/add�
0tf.__operators__.getitem_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_445/strided_slice/stack�
2tf.__operators__.getitem_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_445/strided_slice/stack_1�
2tf.__operators__.getitem_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_445/strided_slice/stack_2�
*tf.__operators__.getitem_445/strided_sliceStridedSliceinputs9tf.__operators__.getitem_445/strided_slice/stack:output:0;tf.__operators__.getitem_445/strided_slice/stack_1:output:0;tf.__operators__.getitem_445/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_445/strided_slicex
tf.concat_599/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_599/concat/axis�
tf.concat_599/concatConcatV2range_conversion_54/add:z:03tf.__operators__.getitem_445/strided_slice:output:0"tf.concat_599/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_599/concat�
 conv3d_284/Conv3D/ReadVariableOpReadVariableOp)conv3d_284_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_284/Conv3D/ReadVariableOp�
conv3d_284/Conv3DConv3Dtf.concat_599/concat:output:0(conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_284/Conv3D�
!conv3d_284/BiasAdd/ReadVariableOpReadVariableOp*conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_284/BiasAdd/ReadVariableOp�
conv3d_284/BiasAddBiasAddconv3d_284/Conv3D:output:0)conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_284/BiasAdd�
conv3d_284/SoftplusSoftplusconv3d_284/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_284/Softplus�
$average_pooling3d_115/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_115/transpose/perm�
average_pooling3d_115/transpose	Transpose!conv3d_284/Softplus:activations:0-average_pooling3d_115/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_115/transpose�
average_pooling3d_115/AvgPool3D	AvgPool3D#average_pooling3d_115/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_115/AvgPool3D�
&average_pooling3d_115/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_115/transpose_1/perm�
!average_pooling3d_115/transpose_1	Transpose(average_pooling3d_115/AvgPool3D:output:0/average_pooling3d_115/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_115/transpose_1�
 conv3d_285/Conv3D/ReadVariableOpReadVariableOp)conv3d_285_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_285/Conv3D/ReadVariableOp�
conv3d_285/Conv3DConv3D%average_pooling3d_115/transpose_1:y:0(conv3d_285/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_285/Conv3D�
!conv3d_285/BiasAdd/ReadVariableOpReadVariableOp*conv3d_285_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_285/BiasAdd/ReadVariableOp�
conv3d_285/BiasAddBiasAddconv3d_285/Conv3D:output:0)conv3d_285/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_285/BiasAdd�
conv3d_285/SoftplusSoftplusconv3d_285/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_285/Softplus�
$average_pooling3d_116/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_116/transpose/perm�
average_pooling3d_116/transpose	Transpose!conv3d_285/Softplus:activations:0-average_pooling3d_116/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_116/transpose�
average_pooling3d_116/AvgPool3D	AvgPool3D#average_pooling3d_116/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_116/AvgPool3D�
&average_pooling3d_116/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_116/transpose_1/perm�
!average_pooling3d_116/transpose_1	Transpose(average_pooling3d_116/AvgPool3D:output:0/average_pooling3d_116/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_116/transpose_1{
reshape_108/ShapeShape%average_pooling3d_116/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_108/Shape�
reshape_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_108/strided_slice/stack�
!reshape_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_108/strided_slice/stack_1�
!reshape_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_108/strided_slice/stack_2�
reshape_108/strided_sliceStridedSlicereshape_108/Shape:output:0(reshape_108/strided_slice/stack:output:0*reshape_108/strided_slice/stack_1:output:0*reshape_108/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_108/strided_slice|
reshape_108/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_108/Reshape/shape/1�
reshape_108/Reshape/shapePack"reshape_108/strided_slice:output:0$reshape_108/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_108/Reshape/shape�
reshape_108/ReshapeReshape%average_pooling3d_116/transpose_1:y:0"reshape_108/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_108/Reshape�
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_54/MatMul/ReadVariableOp�
dense_54/MatMulMatMulreshape_108/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_54/MatMul�
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_54/BiasAdd/ReadVariableOp�
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_54/BiasAdd
dense_54/SoftplusSoftplusdense_54/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_54/Softplusu
reshape_109/ShapeShapedense_54/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_109/Shape�
reshape_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_109/strided_slice/stack�
!reshape_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_109/strided_slice/stack_1�
!reshape_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_109/strided_slice/stack_2�
reshape_109/strided_sliceStridedSlicereshape_109/Shape:output:0(reshape_109/strided_slice/stack:output:0*reshape_109/strided_slice/stack_1:output:0*reshape_109/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_109/strided_slice|
reshape_109/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/1|
reshape_109/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/2|
reshape_109/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/3|
reshape_109/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_109/Reshape/shape/4�
reshape_109/Reshape/shapePack"reshape_109/strided_slice:output:0$reshape_109/Reshape/shape/1:output:0$reshape_109/Reshape/shape/2:output:0$reshape_109/Reshape/shape/3:output:0$reshape_109/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_109/Reshape/shape�
reshape_109/ReshapeReshapedense_54/Softplus:activations:0"reshape_109/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_109/Reshape�
tf.reshape_754/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_754/Reshape/shape�
tf.reshape_754/ReshapeReshapereshape_109/Reshape:output:0%tf.reshape_754/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_754/Reshape�
tf.tile_377/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_377/Tile/multiples�
tf.tile_377/TileTiletf.reshape_754/Reshape:output:0#tf.tile_377/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_377/Tile�
tf.reshape_755/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_755/Reshape/shape�
tf.reshape_755/ReshapeReshapetf.tile_377/Tile:output:0%tf.reshape_755/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_755/Reshapex
tf.concat_600/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_600/concat/axis�
tf.concat_600/concatConcatV2tf.reshape_755/Reshape:output:0!conv3d_285/Softplus:activations:0"tf.concat_600/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_600/concat�
 conv3d_286/Conv3D/ReadVariableOpReadVariableOp)conv3d_286_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_286/Conv3D/ReadVariableOp�
conv3d_286/Conv3DConv3Dtf.concat_600/concat:output:0(conv3d_286/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_286/Conv3D�
!conv3d_286/BiasAdd/ReadVariableOpReadVariableOp*conv3d_286_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_286/BiasAdd/ReadVariableOp�
conv3d_286/BiasAddBiasAddconv3d_286/Conv3D:output:0)conv3d_286/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_286/BiasAdd�
conv3d_286/SoftplusSoftplusconv3d_286/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_286/Softplus�
tf.reshape_756/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_756/Reshape/shape�
tf.reshape_756/ReshapeReshape!conv3d_286/Softplus:activations:0%tf.reshape_756/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_756/Reshape�
tf.tile_378/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_378/Tile/multiples�
tf.tile_378/TileTiletf.reshape_756/Reshape:output:0#tf.tile_378/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_378/Tile�
tf.reshape_757/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_757/Reshape/shape�
tf.reshape_757/ReshapeReshapetf.tile_378/Tile:output:0%tf.reshape_757/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_757/Reshapex
tf.concat_601/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_601/concat/axis�
tf.concat_601/concatConcatV2tf.reshape_757/Reshape:output:0!conv3d_284/Softplus:activations:0"tf.concat_601/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_601/concat�
 conv3d_287/Conv3D/ReadVariableOpReadVariableOp)conv3d_287_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_287/Conv3D/ReadVariableOp�
conv3d_287/Conv3DConv3Dtf.concat_601/concat:output:0(conv3d_287/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_287/Conv3D�
!conv3d_287/BiasAdd/ReadVariableOpReadVariableOp*conv3d_287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_287/BiasAdd/ReadVariableOp�
conv3d_287/BiasAddBiasAddconv3d_287/Conv3D:output:0)conv3d_287/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_287/BiasAdd�
conv3d_287/SoftplusSoftplusconv3d_287/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_287/Softplus�
 conv3d_288/Conv3D/ReadVariableOpReadVariableOp)conv3d_288_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_288/Conv3D/ReadVariableOp�
conv3d_288/Conv3DConv3D!conv3d_287/Softplus:activations:0(conv3d_288/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_288/Conv3D�
!conv3d_288/BiasAdd/ReadVariableOpReadVariableOp*conv3d_288_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_288/BiasAdd/ReadVariableOp�
conv3d_288/BiasAddBiasAddconv3d_288/Conv3D:output:0)conv3d_288/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_288/BiasAdd�
IdentityIdentityconv3d_288/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_284/BiasAdd/ReadVariableOp!^conv3d_284/Conv3D/ReadVariableOp"^conv3d_285/BiasAdd/ReadVariableOp!^conv3d_285/Conv3D/ReadVariableOp"^conv3d_286/BiasAdd/ReadVariableOp!^conv3d_286/Conv3D/ReadVariableOp"^conv3d_287/BiasAdd/ReadVariableOp!^conv3d_287/Conv3D/ReadVariableOp"^conv3d_288/BiasAdd/ReadVariableOp!^conv3d_288/Conv3D/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_284/BiasAdd/ReadVariableOp!conv3d_284/BiasAdd/ReadVariableOp2D
 conv3d_284/Conv3D/ReadVariableOp conv3d_284/Conv3D/ReadVariableOp2F
!conv3d_285/BiasAdd/ReadVariableOp!conv3d_285/BiasAdd/ReadVariableOp2D
 conv3d_285/Conv3D/ReadVariableOp conv3d_285/Conv3D/ReadVariableOp2F
!conv3d_286/BiasAdd/ReadVariableOp!conv3d_286/BiasAdd/ReadVariableOp2D
 conv3d_286/Conv3D/ReadVariableOp conv3d_286/Conv3D/ReadVariableOp2F
!conv3d_287/BiasAdd/ReadVariableOp!conv3d_287/BiasAdd/ReadVariableOp2D
 conv3d_287/Conv3D/ReadVariableOp conv3d_287/Conv3D/ReadVariableOp2F
!conv3d_288/BiasAdd/ReadVariableOp!conv3d_288/BiasAdd/ReadVariableOp2D
 conv3d_288/Conv3D/ReadVariableOp conv3d_288/Conv3D/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_dense_54_layer_call_and_return_conditional_losses_15384555

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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15385412

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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15384528

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
q
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_15385364

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
+__inference_model_54_layer_call_fn_15384672	
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
F__inference_model_54_layer_call_and_return_conditional_losses_153846452
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
F__inference_model_54_layer_call_and_return_conditional_losses_15384645

inputs1
conv3d_284_15384488:!
conv3d_284_15384490:1
conv3d_285_15384515:!
conv3d_285_15384517:#
dense_54_15384556:@@
dense_54_15384558:@1
conv3d_286_15384598:!
conv3d_286_15384600:1
conv3d_287_15384623:!
conv3d_287_15384625:1
conv3d_288_15384639:!
conv3d_288_15384641:
identity��"conv3d_284/StatefulPartitionedCall�"conv3d_285/StatefulPartitionedCall�"conv3d_286/StatefulPartitionedCall�"conv3d_287/StatefulPartitionedCall�"conv3d_288/StatefulPartitionedCall� dense_54/StatefulPartitionedCall�
0tf.__operators__.getitem_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_444/strided_slice/stack�
2tf.__operators__.getitem_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_444/strided_slice/stack_1�
2tf.__operators__.getitem_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_444/strided_slice/stack_2�
*tf.__operators__.getitem_444/strided_sliceStridedSliceinputs9tf.__operators__.getitem_444/strided_slice/stack:output:0;tf.__operators__.getitem_444/strided_slice/stack_1:output:0;tf.__operators__.getitem_444/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_444/strided_slice�
#range_conversion_54/PartitionedCallPartitionedCall3tf.__operators__.getitem_444/strided_slice:output:0*
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
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_153844682%
#range_conversion_54/PartitionedCall�
0tf.__operators__.getitem_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_445/strided_slice/stack�
2tf.__operators__.getitem_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_445/strided_slice/stack_1�
2tf.__operators__.getitem_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_445/strided_slice/stack_2�
*tf.__operators__.getitem_445/strided_sliceStridedSliceinputs9tf.__operators__.getitem_445/strided_slice/stack:output:0;tf.__operators__.getitem_445/strided_slice/stack_1:output:0;tf.__operators__.getitem_445/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_445/strided_slicex
tf.concat_599/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_599/concat/axis�
tf.concat_599/concatConcatV2,range_conversion_54/PartitionedCall:output:03tf.__operators__.getitem_445/strided_slice:output:0"tf.concat_599/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_599/concat�
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCalltf.concat_599/concat:output:0conv3d_284_15384488conv3d_284_15384490*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_153844872$
"conv3d_284/StatefulPartitionedCall�
%average_pooling3d_115/PartitionedCallPartitionedCall+conv3d_284/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_153845012'
%average_pooling3d_115/PartitionedCall�
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_115/PartitionedCall:output:0conv3d_285_15384515conv3d_285_15384517*
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
H__inference_conv3d_285_layer_call_and_return_conditional_losses_153845142$
"conv3d_285/StatefulPartitionedCall�
%average_pooling3d_116/PartitionedCallPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_153845282'
%average_pooling3d_116/PartitionedCall�
reshape_108/PartitionedCallPartitionedCall.average_pooling3d_116/PartitionedCall:output:0*
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
I__inference_reshape_108_layer_call_and_return_conditional_losses_153845422
reshape_108/PartitionedCall�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall$reshape_108/PartitionedCall:output:0dense_54_15384556dense_54_15384558*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_153845552"
 dense_54/StatefulPartitionedCall�
reshape_109/PartitionedCallPartitionedCall)dense_54/StatefulPartitionedCall:output:0*
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
I__inference_reshape_109_layer_call_and_return_conditional_losses_153845762
reshape_109/PartitionedCall�
tf.reshape_754/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_754/Reshape/shape�
tf.reshape_754/ReshapeReshape$reshape_109/PartitionedCall:output:0%tf.reshape_754/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_754/Reshape�
tf.tile_377/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_377/Tile/multiples�
tf.tile_377/TileTiletf.reshape_754/Reshape:output:0#tf.tile_377/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_377/Tile�
tf.reshape_755/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_755/Reshape/shape�
tf.reshape_755/ReshapeReshapetf.tile_377/Tile:output:0%tf.reshape_755/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_755/Reshapex
tf.concat_600/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_600/concat/axis�
tf.concat_600/concatConcatV2tf.reshape_755/Reshape:output:0+conv3d_285/StatefulPartitionedCall:output:0"tf.concat_600/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_600/concat�
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCalltf.concat_600/concat:output:0conv3d_286_15384598conv3d_286_15384600*
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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_153845972$
"conv3d_286/StatefulPartitionedCall�
tf.reshape_756/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_756/Reshape/shape�
tf.reshape_756/ReshapeReshape+conv3d_286/StatefulPartitionedCall:output:0%tf.reshape_756/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_756/Reshape�
tf.tile_378/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_378/Tile/multiples�
tf.tile_378/TileTiletf.reshape_756/Reshape:output:0#tf.tile_378/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_378/Tile�
tf.reshape_757/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_757/Reshape/shape�
tf.reshape_757/ReshapeReshapetf.tile_378/Tile:output:0%tf.reshape_757/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_757/Reshapex
tf.concat_601/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_601/concat/axis�
tf.concat_601/concatConcatV2tf.reshape_757/Reshape:output:0+conv3d_284/StatefulPartitionedCall:output:0"tf.concat_601/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_601/concat�
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCalltf.concat_601/concat:output:0conv3d_287_15384623conv3d_287_15384625*
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
H__inference_conv3d_287_layer_call_and_return_conditional_losses_153846222$
"conv3d_287/StatefulPartitionedCall�
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_288_15384639conv3d_288_15384641*
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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_153846382$
"conv3d_288/StatefulPartitionedCall�
IdentityIdentity+conv3d_288/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_287_layer_call_and_return_conditional_losses_15385557

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
�
J
.__inference_reshape_109_layer_call_fn_15385502

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
I__inference_reshape_109_layer_call_and_return_conditional_losses_153845762
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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_15384638

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

o
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15384428

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
-__inference_conv3d_287_layer_call_fn_15385546

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
H__inference_conv3d_287_layer_call_and_return_conditional_losses_153846222
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
�
H__inference_conv3d_285_layer_call_and_return_conditional_losses_15385432

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
6__inference_range_conversion_54_layer_call_fn_15385352

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
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_153844682
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
�
T
8__inference_average_pooling3d_116_layer_call_fn_15385442

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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_153845282
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
�7
�
$__inference__traced_restore_15385681
file_prefix@
"assignvariableop_conv3d_284_kernel:0
"assignvariableop_1_conv3d_284_bias:B
$assignvariableop_2_conv3d_285_kernel:0
"assignvariableop_3_conv3d_285_bias:4
"assignvariableop_4_dense_54_kernel:@@.
 assignvariableop_5_dense_54_bias:@B
$assignvariableop_6_conv3d_286_kernel:0
"assignvariableop_7_conv3d_286_bias:B
$assignvariableop_8_conv3d_287_kernel:0
"assignvariableop_9_conv3d_287_bias:C
%assignvariableop_10_conv3d_288_kernel:1
#assignvariableop_11_conv3d_288_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_284_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_284_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_285_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_285_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_54_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_54_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_286_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_286_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_287_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_287_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_288_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_288_biasIdentity_11:output:0"/device:CPU:0*
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

o
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15385403

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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_15384597

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
+__inference_dense_54_layer_call_fn_15385486

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
F__inference_dense_54_layer_call_and_return_conditional_losses_153845552
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
�
J
.__inference_reshape_108_layer_call_fn_15385465

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
I__inference_reshape_108_layer_call_and_return_conditional_losses_153845422
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
e
I__inference_reshape_109_layer_call_and_return_conditional_losses_15385517

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
�^
�
F__inference_model_54_layer_call_and_return_conditional_losses_15385042	
input1
conv3d_284_15384991:!
conv3d_284_15384993:1
conv3d_285_15384997:!
conv3d_285_15384999:#
dense_54_15385004:@@
dense_54_15385006:@1
conv3d_286_15385018:!
conv3d_286_15385020:1
conv3d_287_15385031:!
conv3d_287_15385033:1
conv3d_288_15385036:!
conv3d_288_15385038:
identity��"conv3d_284/StatefulPartitionedCall�"conv3d_285/StatefulPartitionedCall�"conv3d_286/StatefulPartitionedCall�"conv3d_287/StatefulPartitionedCall�"conv3d_288/StatefulPartitionedCall� dense_54/StatefulPartitionedCall�
0tf.__operators__.getitem_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_444/strided_slice/stack�
2tf.__operators__.getitem_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_444/strided_slice/stack_1�
2tf.__operators__.getitem_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_444/strided_slice/stack_2�
*tf.__operators__.getitem_444/strided_sliceStridedSliceinput9tf.__operators__.getitem_444/strided_slice/stack:output:0;tf.__operators__.getitem_444/strided_slice/stack_1:output:0;tf.__operators__.getitem_444/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_444/strided_slice�
#range_conversion_54/PartitionedCallPartitionedCall3tf.__operators__.getitem_444/strided_slice:output:0*
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
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_153844682%
#range_conversion_54/PartitionedCall�
0tf.__operators__.getitem_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_445/strided_slice/stack�
2tf.__operators__.getitem_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_445/strided_slice/stack_1�
2tf.__operators__.getitem_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_445/strided_slice/stack_2�
*tf.__operators__.getitem_445/strided_sliceStridedSliceinput9tf.__operators__.getitem_445/strided_slice/stack:output:0;tf.__operators__.getitem_445/strided_slice/stack_1:output:0;tf.__operators__.getitem_445/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_445/strided_slicex
tf.concat_599/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_599/concat/axis�
tf.concat_599/concatConcatV2,range_conversion_54/PartitionedCall:output:03tf.__operators__.getitem_445/strided_slice:output:0"tf.concat_599/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_599/concat�
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCalltf.concat_599/concat:output:0conv3d_284_15384991conv3d_284_15384993*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_153844872$
"conv3d_284/StatefulPartitionedCall�
%average_pooling3d_115/PartitionedCallPartitionedCall+conv3d_284/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_153845012'
%average_pooling3d_115/PartitionedCall�
"conv3d_285/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_115/PartitionedCall:output:0conv3d_285_15384997conv3d_285_15384999*
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
H__inference_conv3d_285_layer_call_and_return_conditional_losses_153845142$
"conv3d_285/StatefulPartitionedCall�
%average_pooling3d_116/PartitionedCallPartitionedCall+conv3d_285/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_153845282'
%average_pooling3d_116/PartitionedCall�
reshape_108/PartitionedCallPartitionedCall.average_pooling3d_116/PartitionedCall:output:0*
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
I__inference_reshape_108_layer_call_and_return_conditional_losses_153845422
reshape_108/PartitionedCall�
 dense_54/StatefulPartitionedCallStatefulPartitionedCall$reshape_108/PartitionedCall:output:0dense_54_15385004dense_54_15385006*
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
F__inference_dense_54_layer_call_and_return_conditional_losses_153845552"
 dense_54/StatefulPartitionedCall�
reshape_109/PartitionedCallPartitionedCall)dense_54/StatefulPartitionedCall:output:0*
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
I__inference_reshape_109_layer_call_and_return_conditional_losses_153845762
reshape_109/PartitionedCall�
tf.reshape_754/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_754/Reshape/shape�
tf.reshape_754/ReshapeReshape$reshape_109/PartitionedCall:output:0%tf.reshape_754/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_754/Reshape�
tf.tile_377/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_377/Tile/multiples�
tf.tile_377/TileTiletf.reshape_754/Reshape:output:0#tf.tile_377/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_377/Tile�
tf.reshape_755/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_755/Reshape/shape�
tf.reshape_755/ReshapeReshapetf.tile_377/Tile:output:0%tf.reshape_755/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_755/Reshapex
tf.concat_600/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_600/concat/axis�
tf.concat_600/concatConcatV2tf.reshape_755/Reshape:output:0+conv3d_285/StatefulPartitionedCall:output:0"tf.concat_600/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_600/concat�
"conv3d_286/StatefulPartitionedCallStatefulPartitionedCalltf.concat_600/concat:output:0conv3d_286_15385018conv3d_286_15385020*
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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_153845972$
"conv3d_286/StatefulPartitionedCall�
tf.reshape_756/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_756/Reshape/shape�
tf.reshape_756/ReshapeReshape+conv3d_286/StatefulPartitionedCall:output:0%tf.reshape_756/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_756/Reshape�
tf.tile_378/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_378/Tile/multiples�
tf.tile_378/TileTiletf.reshape_756/Reshape:output:0#tf.tile_378/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_378/Tile�
tf.reshape_757/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_757/Reshape/shape�
tf.reshape_757/ReshapeReshapetf.tile_378/Tile:output:0%tf.reshape_757/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_757/Reshapex
tf.concat_601/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_601/concat/axis�
tf.concat_601/concatConcatV2tf.reshape_757/Reshape:output:0+conv3d_284/StatefulPartitionedCall:output:0"tf.concat_601/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_601/concat�
"conv3d_287/StatefulPartitionedCallStatefulPartitionedCalltf.concat_601/concat:output:0conv3d_287_15385031conv3d_287_15385033*
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
H__inference_conv3d_287_layer_call_and_return_conditional_losses_153846222$
"conv3d_287/StatefulPartitionedCall�
"conv3d_288/StatefulPartitionedCallStatefulPartitionedCall+conv3d_287/StatefulPartitionedCall:output:0conv3d_288_15385036conv3d_288_15385038*
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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_153846382$
"conv3d_288/StatefulPartitionedCall�
IdentityIdentity+conv3d_288/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_284/StatefulPartitionedCall#^conv3d_285/StatefulPartitionedCall#^conv3d_286/StatefulPartitionedCall#^conv3d_287/StatefulPartitionedCall#^conv3d_288/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2H
"conv3d_285/StatefulPartitionedCall"conv3d_285/StatefulPartitionedCall2H
"conv3d_286/StatefulPartitionedCall"conv3d_286/StatefulPartitionedCall2H
"conv3d_287/StatefulPartitionedCall"conv3d_287/StatefulPartitionedCall2H
"conv3d_288/StatefulPartitionedCall"conv3d_288/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
e
I__inference_reshape_108_layer_call_and_return_conditional_losses_15385477

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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15385451

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
�
&__inference_signature_wrapper_15385073	
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
#__inference__wrapped_model_153843852
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
q
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_15384468

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
�
�
-__inference_conv3d_284_layer_call_fn_15385373

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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_153844872
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
e
I__inference_reshape_108_layer_call_and_return_conditional_losses_15384542

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
-__inference_conv3d_285_layer_call_fn_15385421

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
H__inference_conv3d_285_layer_call_and_return_conditional_losses_153845142
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_15384487

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
8__inference_average_pooling3d_115_layer_call_fn_15385394

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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_153845012
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
��
�
#__inference__wrapped_model_15384385	
inputP
2model_54_conv3d_284_conv3d_readvariableop_resource:A
3model_54_conv3d_284_biasadd_readvariableop_resource:P
2model_54_conv3d_285_conv3d_readvariableop_resource:A
3model_54_conv3d_285_biasadd_readvariableop_resource:B
0model_54_dense_54_matmul_readvariableop_resource:@@?
1model_54_dense_54_biasadd_readvariableop_resource:@P
2model_54_conv3d_286_conv3d_readvariableop_resource:A
3model_54_conv3d_286_biasadd_readvariableop_resource:P
2model_54_conv3d_287_conv3d_readvariableop_resource:A
3model_54_conv3d_287_biasadd_readvariableop_resource:P
2model_54_conv3d_288_conv3d_readvariableop_resource:A
3model_54_conv3d_288_biasadd_readvariableop_resource:
identity��*model_54/conv3d_284/BiasAdd/ReadVariableOp�)model_54/conv3d_284/Conv3D/ReadVariableOp�*model_54/conv3d_285/BiasAdd/ReadVariableOp�)model_54/conv3d_285/Conv3D/ReadVariableOp�*model_54/conv3d_286/BiasAdd/ReadVariableOp�)model_54/conv3d_286/Conv3D/ReadVariableOp�*model_54/conv3d_287/BiasAdd/ReadVariableOp�)model_54/conv3d_287/Conv3D/ReadVariableOp�*model_54/conv3d_288/BiasAdd/ReadVariableOp�)model_54/conv3d_288/Conv3D/ReadVariableOp�(model_54/dense_54/BiasAdd/ReadVariableOp�'model_54/dense_54/MatMul/ReadVariableOp�
9model_54/tf.__operators__.getitem_444/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_54/tf.__operators__.getitem_444/strided_slice/stack�
;model_54/tf.__operators__.getitem_444/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_54/tf.__operators__.getitem_444/strided_slice/stack_1�
;model_54/tf.__operators__.getitem_444/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_54/tf.__operators__.getitem_444/strided_slice/stack_2�
3model_54/tf.__operators__.getitem_444/strided_sliceStridedSliceinputBmodel_54/tf.__operators__.getitem_444/strided_slice/stack:output:0Dmodel_54/tf.__operators__.getitem_444/strided_slice/stack_1:output:0Dmodel_54/tf.__operators__.getitem_444/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_54/tf.__operators__.getitem_444/strided_slice�
"model_54/range_conversion_54/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_54/range_conversion_54/sub/y�
 model_54/range_conversion_54/subSub<model_54/tf.__operators__.getitem_444/strided_slice:output:0+model_54/range_conversion_54/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_54/range_conversion_54/sub�
&model_54/range_conversion_54/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_54/range_conversion_54/truediv/y�
$model_54/range_conversion_54/truedivRealDiv$model_54/range_conversion_54/sub:z:0/model_54/range_conversion_54/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_54/range_conversion_54/truediv�
"model_54/range_conversion_54/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_54/range_conversion_54/mul/y�
 model_54/range_conversion_54/mulMul(model_54/range_conversion_54/truediv:z:0+model_54/range_conversion_54/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_54/range_conversion_54/mul�
"model_54/range_conversion_54/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_54/range_conversion_54/add/y�
 model_54/range_conversion_54/addAddV2$model_54/range_conversion_54/mul:z:0+model_54/range_conversion_54/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_54/range_conversion_54/add�
9model_54/tf.__operators__.getitem_445/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_54/tf.__operators__.getitem_445/strided_slice/stack�
;model_54/tf.__operators__.getitem_445/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_54/tf.__operators__.getitem_445/strided_slice/stack_1�
;model_54/tf.__operators__.getitem_445/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_54/tf.__operators__.getitem_445/strided_slice/stack_2�
3model_54/tf.__operators__.getitem_445/strided_sliceStridedSliceinputBmodel_54/tf.__operators__.getitem_445/strided_slice/stack:output:0Dmodel_54/tf.__operators__.getitem_445/strided_slice/stack_1:output:0Dmodel_54/tf.__operators__.getitem_445/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_54/tf.__operators__.getitem_445/strided_slice�
"model_54/tf.concat_599/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_54/tf.concat_599/concat/axis�
model_54/tf.concat_599/concatConcatV2$model_54/range_conversion_54/add:z:0<model_54/tf.__operators__.getitem_445/strided_slice:output:0+model_54/tf.concat_599/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_54/tf.concat_599/concat�
)model_54/conv3d_284/Conv3D/ReadVariableOpReadVariableOp2model_54_conv3d_284_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_54/conv3d_284/Conv3D/ReadVariableOp�
model_54/conv3d_284/Conv3DConv3D&model_54/tf.concat_599/concat:output:01model_54/conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_54/conv3d_284/Conv3D�
*model_54/conv3d_284/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_54/conv3d_284/BiasAdd/ReadVariableOp�
model_54/conv3d_284/BiasAddBiasAdd#model_54/conv3d_284/Conv3D:output:02model_54/conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_54/conv3d_284/BiasAdd�
model_54/conv3d_284/SoftplusSoftplus$model_54/conv3d_284/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_54/conv3d_284/Softplus�
-model_54/average_pooling3d_115/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_54/average_pooling3d_115/transpose/perm�
(model_54/average_pooling3d_115/transpose	Transpose*model_54/conv3d_284/Softplus:activations:06model_54/average_pooling3d_115/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_54/average_pooling3d_115/transpose�
(model_54/average_pooling3d_115/AvgPool3D	AvgPool3D,model_54/average_pooling3d_115/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_54/average_pooling3d_115/AvgPool3D�
/model_54/average_pooling3d_115/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_54/average_pooling3d_115/transpose_1/perm�
*model_54/average_pooling3d_115/transpose_1	Transpose1model_54/average_pooling3d_115/AvgPool3D:output:08model_54/average_pooling3d_115/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_54/average_pooling3d_115/transpose_1�
)model_54/conv3d_285/Conv3D/ReadVariableOpReadVariableOp2model_54_conv3d_285_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_54/conv3d_285/Conv3D/ReadVariableOp�
model_54/conv3d_285/Conv3DConv3D.model_54/average_pooling3d_115/transpose_1:y:01model_54/conv3d_285/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_54/conv3d_285/Conv3D�
*model_54/conv3d_285/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv3d_285_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_54/conv3d_285/BiasAdd/ReadVariableOp�
model_54/conv3d_285/BiasAddBiasAdd#model_54/conv3d_285/Conv3D:output:02model_54/conv3d_285/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_54/conv3d_285/BiasAdd�
model_54/conv3d_285/SoftplusSoftplus$model_54/conv3d_285/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_54/conv3d_285/Softplus�
-model_54/average_pooling3d_116/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_54/average_pooling3d_116/transpose/perm�
(model_54/average_pooling3d_116/transpose	Transpose*model_54/conv3d_285/Softplus:activations:06model_54/average_pooling3d_116/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_54/average_pooling3d_116/transpose�
(model_54/average_pooling3d_116/AvgPool3D	AvgPool3D,model_54/average_pooling3d_116/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_54/average_pooling3d_116/AvgPool3D�
/model_54/average_pooling3d_116/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_54/average_pooling3d_116/transpose_1/perm�
*model_54/average_pooling3d_116/transpose_1	Transpose1model_54/average_pooling3d_116/AvgPool3D:output:08model_54/average_pooling3d_116/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_54/average_pooling3d_116/transpose_1�
model_54/reshape_108/ShapeShape.model_54/average_pooling3d_116/transpose_1:y:0*
T0*
_output_shapes
:2
model_54/reshape_108/Shape�
(model_54/reshape_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_54/reshape_108/strided_slice/stack�
*model_54/reshape_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_54/reshape_108/strided_slice/stack_1�
*model_54/reshape_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_54/reshape_108/strided_slice/stack_2�
"model_54/reshape_108/strided_sliceStridedSlice#model_54/reshape_108/Shape:output:01model_54/reshape_108/strided_slice/stack:output:03model_54/reshape_108/strided_slice/stack_1:output:03model_54/reshape_108/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_54/reshape_108/strided_slice�
$model_54/reshape_108/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_54/reshape_108/Reshape/shape/1�
"model_54/reshape_108/Reshape/shapePack+model_54/reshape_108/strided_slice:output:0-model_54/reshape_108/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_54/reshape_108/Reshape/shape�
model_54/reshape_108/ReshapeReshape.model_54/average_pooling3d_116/transpose_1:y:0+model_54/reshape_108/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_54/reshape_108/Reshape�
'model_54/dense_54/MatMul/ReadVariableOpReadVariableOp0model_54_dense_54_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_54/dense_54/MatMul/ReadVariableOp�
model_54/dense_54/MatMulMatMul%model_54/reshape_108/Reshape:output:0/model_54/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_54/dense_54/MatMul�
(model_54/dense_54/BiasAdd/ReadVariableOpReadVariableOp1model_54_dense_54_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_54/dense_54/BiasAdd/ReadVariableOp�
model_54/dense_54/BiasAddBiasAdd"model_54/dense_54/MatMul:product:00model_54/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_54/dense_54/BiasAdd�
model_54/dense_54/SoftplusSoftplus"model_54/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_54/dense_54/Softplus�
model_54/reshape_109/ShapeShape(model_54/dense_54/Softplus:activations:0*
T0*
_output_shapes
:2
model_54/reshape_109/Shape�
(model_54/reshape_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_54/reshape_109/strided_slice/stack�
*model_54/reshape_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_54/reshape_109/strided_slice/stack_1�
*model_54/reshape_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_54/reshape_109/strided_slice/stack_2�
"model_54/reshape_109/strided_sliceStridedSlice#model_54/reshape_109/Shape:output:01model_54/reshape_109/strided_slice/stack:output:03model_54/reshape_109/strided_slice/stack_1:output:03model_54/reshape_109/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_54/reshape_109/strided_slice�
$model_54/reshape_109/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_54/reshape_109/Reshape/shape/1�
$model_54/reshape_109/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_54/reshape_109/Reshape/shape/2�
$model_54/reshape_109/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_54/reshape_109/Reshape/shape/3�
$model_54/reshape_109/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_54/reshape_109/Reshape/shape/4�
"model_54/reshape_109/Reshape/shapePack+model_54/reshape_109/strided_slice:output:0-model_54/reshape_109/Reshape/shape/1:output:0-model_54/reshape_109/Reshape/shape/2:output:0-model_54/reshape_109/Reshape/shape/3:output:0-model_54/reshape_109/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_54/reshape_109/Reshape/shape�
model_54/reshape_109/ReshapeReshape(model_54/dense_54/Softplus:activations:0+model_54/reshape_109/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_54/reshape_109/Reshape�
%model_54/tf.reshape_754/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_54/tf.reshape_754/Reshape/shape�
model_54/tf.reshape_754/ReshapeReshape%model_54/reshape_109/Reshape:output:0.model_54/tf.reshape_754/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_54/tf.reshape_754/Reshape�
#model_54/tf.tile_377/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_54/tf.tile_377/Tile/multiples�
model_54/tf.tile_377/TileTile(model_54/tf.reshape_754/Reshape:output:0,model_54/tf.tile_377/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_54/tf.tile_377/Tile�
%model_54/tf.reshape_755/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_54/tf.reshape_755/Reshape/shape�
model_54/tf.reshape_755/ReshapeReshape"model_54/tf.tile_377/Tile:output:0.model_54/tf.reshape_755/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_54/tf.reshape_755/Reshape�
"model_54/tf.concat_600/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_54/tf.concat_600/concat/axis�
model_54/tf.concat_600/concatConcatV2(model_54/tf.reshape_755/Reshape:output:0*model_54/conv3d_285/Softplus:activations:0+model_54/tf.concat_600/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_54/tf.concat_600/concat�
)model_54/conv3d_286/Conv3D/ReadVariableOpReadVariableOp2model_54_conv3d_286_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_54/conv3d_286/Conv3D/ReadVariableOp�
model_54/conv3d_286/Conv3DConv3D&model_54/tf.concat_600/concat:output:01model_54/conv3d_286/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_54/conv3d_286/Conv3D�
*model_54/conv3d_286/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv3d_286_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_54/conv3d_286/BiasAdd/ReadVariableOp�
model_54/conv3d_286/BiasAddBiasAdd#model_54/conv3d_286/Conv3D:output:02model_54/conv3d_286/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_54/conv3d_286/BiasAdd�
model_54/conv3d_286/SoftplusSoftplus$model_54/conv3d_286/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_54/conv3d_286/Softplus�
%model_54/tf.reshape_756/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_54/tf.reshape_756/Reshape/shape�
model_54/tf.reshape_756/ReshapeReshape*model_54/conv3d_286/Softplus:activations:0.model_54/tf.reshape_756/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_54/tf.reshape_756/Reshape�
#model_54/tf.tile_378/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_54/tf.tile_378/Tile/multiples�
model_54/tf.tile_378/TileTile(model_54/tf.reshape_756/Reshape:output:0,model_54/tf.tile_378/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_54/tf.tile_378/Tile�
%model_54/tf.reshape_757/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_54/tf.reshape_757/Reshape/shape�
model_54/tf.reshape_757/ReshapeReshape"model_54/tf.tile_378/Tile:output:0.model_54/tf.reshape_757/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_54/tf.reshape_757/Reshape�
"model_54/tf.concat_601/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_54/tf.concat_601/concat/axis�
model_54/tf.concat_601/concatConcatV2(model_54/tf.reshape_757/Reshape:output:0*model_54/conv3d_284/Softplus:activations:0+model_54/tf.concat_601/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_54/tf.concat_601/concat�
)model_54/conv3d_287/Conv3D/ReadVariableOpReadVariableOp2model_54_conv3d_287_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_54/conv3d_287/Conv3D/ReadVariableOp�
model_54/conv3d_287/Conv3DConv3D&model_54/tf.concat_601/concat:output:01model_54/conv3d_287/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_54/conv3d_287/Conv3D�
*model_54/conv3d_287/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv3d_287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_54/conv3d_287/BiasAdd/ReadVariableOp�
model_54/conv3d_287/BiasAddBiasAdd#model_54/conv3d_287/Conv3D:output:02model_54/conv3d_287/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_54/conv3d_287/BiasAdd�
model_54/conv3d_287/SoftplusSoftplus$model_54/conv3d_287/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_54/conv3d_287/Softplus�
)model_54/conv3d_288/Conv3D/ReadVariableOpReadVariableOp2model_54_conv3d_288_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_54/conv3d_288/Conv3D/ReadVariableOp�
model_54/conv3d_288/Conv3DConv3D*model_54/conv3d_287/Softplus:activations:01model_54/conv3d_288/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_54/conv3d_288/Conv3D�
*model_54/conv3d_288/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv3d_288_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_54/conv3d_288/BiasAdd/ReadVariableOp�
model_54/conv3d_288/BiasAddBiasAdd#model_54/conv3d_288/Conv3D:output:02model_54/conv3d_288/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_54/conv3d_288/BiasAdd�
IdentityIdentity$model_54/conv3d_288/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_54/conv3d_284/BiasAdd/ReadVariableOp*^model_54/conv3d_284/Conv3D/ReadVariableOp+^model_54/conv3d_285/BiasAdd/ReadVariableOp*^model_54/conv3d_285/Conv3D/ReadVariableOp+^model_54/conv3d_286/BiasAdd/ReadVariableOp*^model_54/conv3d_286/Conv3D/ReadVariableOp+^model_54/conv3d_287/BiasAdd/ReadVariableOp*^model_54/conv3d_287/Conv3D/ReadVariableOp+^model_54/conv3d_288/BiasAdd/ReadVariableOp*^model_54/conv3d_288/Conv3D/ReadVariableOp)^model_54/dense_54/BiasAdd/ReadVariableOp(^model_54/dense_54/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2X
*model_54/conv3d_284/BiasAdd/ReadVariableOp*model_54/conv3d_284/BiasAdd/ReadVariableOp2V
)model_54/conv3d_284/Conv3D/ReadVariableOp)model_54/conv3d_284/Conv3D/ReadVariableOp2X
*model_54/conv3d_285/BiasAdd/ReadVariableOp*model_54/conv3d_285/BiasAdd/ReadVariableOp2V
)model_54/conv3d_285/Conv3D/ReadVariableOp)model_54/conv3d_285/Conv3D/ReadVariableOp2X
*model_54/conv3d_286/BiasAdd/ReadVariableOp*model_54/conv3d_286/BiasAdd/ReadVariableOp2V
)model_54/conv3d_286/Conv3D/ReadVariableOp)model_54/conv3d_286/Conv3D/ReadVariableOp2X
*model_54/conv3d_287/BiasAdd/ReadVariableOp*model_54/conv3d_287/BiasAdd/ReadVariableOp2V
)model_54/conv3d_287/Conv3D/ReadVariableOp)model_54/conv3d_287/Conv3D/ReadVariableOp2X
*model_54/conv3d_288/BiasAdd/ReadVariableOp*model_54/conv3d_288/BiasAdd/ReadVariableOp2V
)model_54/conv3d_288/Conv3D/ReadVariableOp)model_54/conv3d_288/Conv3D/ReadVariableOp2T
(model_54/dense_54/BiasAdd/ReadVariableOp(model_54/dense_54/BiasAdd/ReadVariableOp2R
'model_54/dense_54/MatMul/ReadVariableOp'model_54/dense_54/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
o
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15384501

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

conv3d_288<
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
1:/ 2conv3d_284/kernel
: 2conv3d_284/bias
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
1:/ 2conv3d_285/kernel
: 2conv3d_285/bias
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
#:!@@ 2dense_54/kernel
:@ 2dense_54/bias
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
1:/ 2conv3d_286/kernel
: 2conv3d_286/bias
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
1:/ 2conv3d_287/kernel
: 2conv3d_287/bias
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
1:/ 2conv3d_288/kernel
: 2conv3d_288/bias
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
+__inference_model_54_layer_call_fn_15384672
+__inference_model_54_layer_call_fn_15385102
+__inference_model_54_layer_call_fn_15385131
+__inference_model_54_layer_call_fn_15384912�
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
#__inference__wrapped_model_15384385input"�
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
F__inference_model_54_layer_call_and_return_conditional_losses_15385239
F__inference_model_54_layer_call_and_return_conditional_losses_15385347
F__inference_model_54_layer_call_and_return_conditional_losses_15384977
F__inference_model_54_layer_call_and_return_conditional_losses_15385042�
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
6__inference_range_conversion_54_layer_call_fn_15385352�
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
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_15385364�
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
-__inference_conv3d_284_layer_call_fn_15385373�
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_15385384�
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
8__inference_average_pooling3d_115_layer_call_fn_15385389
8__inference_average_pooling3d_115_layer_call_fn_15385394�
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
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15385403
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15385412�
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
-__inference_conv3d_285_layer_call_fn_15385421�
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
H__inference_conv3d_285_layer_call_and_return_conditional_losses_15385432�
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
8__inference_average_pooling3d_116_layer_call_fn_15385437
8__inference_average_pooling3d_116_layer_call_fn_15385442�
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
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15385451
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15385460�
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
.__inference_reshape_108_layer_call_fn_15385465�
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
I__inference_reshape_108_layer_call_and_return_conditional_losses_15385477�
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
+__inference_dense_54_layer_call_fn_15385486�
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
F__inference_dense_54_layer_call_and_return_conditional_losses_15385497�
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
.__inference_reshape_109_layer_call_fn_15385502�
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
I__inference_reshape_109_layer_call_and_return_conditional_losses_15385517�
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
-__inference_conv3d_286_layer_call_fn_15385526�
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
H__inference_conv3d_286_layer_call_and_return_conditional_losses_15385537�
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
-__inference_conv3d_287_layer_call_fn_15385546�
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
H__inference_conv3d_287_layer_call_and_return_conditional_losses_15385557�
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
-__inference_conv3d_288_layer_call_fn_15385566�
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
H__inference_conv3d_288_layer_call_and_return_conditional_losses_15385576�
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
&__inference_signature_wrapper_15385073input"�
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
#__inference__wrapped_model_15384385�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "C�@
>

conv3d_2880�-

conv3d_288����������
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15385403�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_115_layer_call_and_return_conditional_losses_15385412p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_115_layer_call_fn_15385389�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_115_layer_call_fn_15385394c;�8
1�.
,�)
inputs���������
� "$�!����������
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15385451�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_116_layer_call_and_return_conditional_losses_15385460p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_116_layer_call_fn_15385437�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_116_layer_call_fn_15385442c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_284_layer_call_and_return_conditional_losses_15385384t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_284_layer_call_fn_15385373g$%;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_285_layer_call_and_return_conditional_losses_15385432t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_285_layer_call_fn_15385421g./;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_286_layer_call_and_return_conditional_losses_15385537tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_286_layer_call_fn_15385526gJK;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_287_layer_call_and_return_conditional_losses_15385557tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_287_layer_call_fn_15385546gTU;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_288_layer_call_and_return_conditional_losses_15385576tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_288_layer_call_fn_15385566gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_54_layer_call_and_return_conditional_losses_15385497\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_54_layer_call_fn_15385486O<=/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_54_layer_call_and_return_conditional_losses_15384977�$%./<=JKTUZ[B�?
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
F__inference_model_54_layer_call_and_return_conditional_losses_15385042�$%./<=JKTUZ[B�?
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
F__inference_model_54_layer_call_and_return_conditional_losses_15385239�$%./<=JKTUZ[C�@
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
F__inference_model_54_layer_call_and_return_conditional_losses_15385347�$%./<=JKTUZ[C�@
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
+__inference_model_54_layer_call_fn_15384672x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_54_layer_call_fn_15384912x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_54_layer_call_fn_15385102y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_54_layer_call_fn_15385131y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_54_layer_call_and_return_conditional_losses_15385364t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_54_layer_call_fn_15385352g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_108_layer_call_and_return_conditional_losses_15385477d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_108_layer_call_fn_15385465W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_109_layer_call_and_return_conditional_losses_15385517d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_109_layer_call_fn_15385502W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_15385073�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_2880�-

conv3d_288���������