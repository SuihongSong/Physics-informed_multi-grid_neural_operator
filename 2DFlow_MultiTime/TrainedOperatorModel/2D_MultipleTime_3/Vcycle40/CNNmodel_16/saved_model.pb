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
conv3d_217/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_217/kernel
�
%conv3d_217/kernel/Read/ReadVariableOpReadVariableOpconv3d_217/kernel**
_output_shapes
:*
dtype0
v
conv3d_217/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_217/bias
o
#conv3d_217/bias/Read/ReadVariableOpReadVariableOpconv3d_217/bias*
_output_shapes
:*
dtype0
�
conv3d_218/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_218/kernel
�
%conv3d_218/kernel/Read/ReadVariableOpReadVariableOpconv3d_218/kernel**
_output_shapes
:*
dtype0
v
conv3d_218/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_218/bias
o
#conv3d_218/bias/Read/ReadVariableOpReadVariableOpconv3d_218/bias*
_output_shapes
:*
dtype0
z
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_47/kernel
s
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes

:@@*
dtype0
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
_output_shapes
:@*
dtype0
�
conv3d_219/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_219/kernel
�
%conv3d_219/kernel/Read/ReadVariableOpReadVariableOpconv3d_219/kernel**
_output_shapes
:*
dtype0
v
conv3d_219/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_219/bias
o
#conv3d_219/bias/Read/ReadVariableOpReadVariableOpconv3d_219/bias*
_output_shapes
:*
dtype0
�
conv3d_220/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_220/kernel
�
%conv3d_220/kernel/Read/ReadVariableOpReadVariableOpconv3d_220/kernel**
_output_shapes
:*
dtype0
v
conv3d_220/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_220/bias
o
#conv3d_220/bias/Read/ReadVariableOpReadVariableOpconv3d_220/bias*
_output_shapes
:*
dtype0
�
conv3d_221/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_221/kernel
�
%conv3d_221/kernel/Read/ReadVariableOpReadVariableOpconv3d_221/kernel**
_output_shapes
:*
dtype0
v
conv3d_221/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_221/bias
o
#conv3d_221/bias/Read/ReadVariableOpReadVariableOpconv3d_221/bias*
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
regularization_losses
	variables
 trainable_variables
!	keras_api

"	keras_api

#	keras_api
h

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
R
*regularization_losses
+	variables
,trainable_variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
R
4regularization_losses
5	variables
6trainable_variables
7	keras_api
R
8regularization_losses
9	variables
:trainable_variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
R
Bregularization_losses
C	variables
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
Lregularization_losses
M	variables
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
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
h

Zkernel
[bias
\regularization_losses
]	variables
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
`layer_regularization_losses

alayers
regularization_losses
blayer_metrics
	variables
cnon_trainable_variables
trainable_variables
dmetrics
 
 
 
 
 
�
elayer_regularization_losses

flayers
regularization_losses
glayer_metrics
	variables
hnon_trainable_variables
 trainable_variables
imetrics
 
 
][
VARIABLE_VALUEconv3d_217/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_217/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
�
jlayer_regularization_losses

klayers
&regularization_losses
llayer_metrics
'	variables
mnon_trainable_variables
(trainable_variables
nmetrics
 
 
 
�
olayer_regularization_losses

players
*regularization_losses
qlayer_metrics
+	variables
rnon_trainable_variables
,trainable_variables
smetrics
][
VARIABLE_VALUEconv3d_218/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_218/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
�
tlayer_regularization_losses

ulayers
0regularization_losses
vlayer_metrics
1	variables
wnon_trainable_variables
2trainable_variables
xmetrics
 
 
 
�
ylayer_regularization_losses

zlayers
4regularization_losses
{layer_metrics
5	variables
|non_trainable_variables
6trainable_variables
}metrics
 
 
 
�
~layer_regularization_losses

layers
8regularization_losses
�layer_metrics
9	variables
�non_trainable_variables
:trainable_variables
�metrics
[Y
VARIABLE_VALUEdense_47/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_47/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
�
 �layer_regularization_losses
�layers
>regularization_losses
�layer_metrics
?	variables
�non_trainable_variables
@trainable_variables
�metrics
 
 
 
�
 �layer_regularization_losses
�layers
Bregularization_losses
�layer_metrics
C	variables
�non_trainable_variables
Dtrainable_variables
�metrics
 
 
 
 
][
VARIABLE_VALUEconv3d_219/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_219/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

J0
K1
�
 �layer_regularization_losses
�layers
Lregularization_losses
�layer_metrics
M	variables
�non_trainable_variables
Ntrainable_variables
�metrics
 
 
 
 
][
VARIABLE_VALUEconv3d_220/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_220/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

T0
U1

T0
U1
�
 �layer_regularization_losses
�layers
Vregularization_losses
�layer_metrics
W	variables
�non_trainable_variables
Xtrainable_variables
�metrics
][
VARIABLE_VALUEconv3d_221/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_221/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Z0
[1

Z0
[1
�
 �layer_regularization_losses
�layers
\regularization_losses
�layer_metrics
]	variables
�non_trainable_variables
^trainable_variables
�metrics
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_217/kernelconv3d_217/biasconv3d_218/kernelconv3d_218/biasdense_47/kerneldense_47/biasconv3d_219/kernelconv3d_219/biasconv3d_220/kernelconv3d_220/biasconv3d_221/kernelconv3d_221/bias*
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
&__inference_signature_wrapper_11060558
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_217/kernel/Read/ReadVariableOp#conv3d_217/bias/Read/ReadVariableOp%conv3d_218/kernel/Read/ReadVariableOp#conv3d_218/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOp%conv3d_219/kernel/Read/ReadVariableOp#conv3d_219/bias/Read/ReadVariableOp%conv3d_220/kernel/Read/ReadVariableOp#conv3d_220/bias/Read/ReadVariableOp%conv3d_221/kernel/Read/ReadVariableOp#conv3d_221/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_11061120
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_217/kernelconv3d_217/biasconv3d_218/kernelconv3d_218/biasdense_47/kerneldense_47/biasconv3d_219/kernelconv3d_219/biasconv3d_220/kernelconv3d_220/biasconv3d_221/kernelconv3d_221/bias*
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
$__inference__traced_restore_11061166��
�^
�
F__inference_model_47_layer_call_and_return_conditional_losses_11060462	
input1
conv3d_217_11060411:!
conv3d_217_11060413:1
conv3d_218_11060417:!
conv3d_218_11060419:#
dense_47_11060424:@@
dense_47_11060426:@1
conv3d_219_11060438:!
conv3d_219_11060440:1
conv3d_220_11060451:!
conv3d_220_11060453:1
conv3d_221_11060456:!
conv3d_221_11060458:
identity��"conv3d_217/StatefulPartitionedCall�"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�
0tf.__operators__.getitem_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_240/strided_slice/stack�
2tf.__operators__.getitem_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_240/strided_slice/stack_1�
2tf.__operators__.getitem_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_240/strided_slice/stack_2�
*tf.__operators__.getitem_240/strided_sliceStridedSliceinput9tf.__operators__.getitem_240/strided_slice/stack:output:0;tf.__operators__.getitem_240/strided_slice/stack_1:output:0;tf.__operators__.getitem_240/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_240/strided_slice�
#range_conversion_47/PartitionedCallPartitionedCall3tf.__operators__.getitem_240/strided_slice:output:0*
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
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_110599532%
#range_conversion_47/PartitionedCall�
0tf.__operators__.getitem_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_241/strided_slice/stack�
2tf.__operators__.getitem_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_241/strided_slice/stack_1�
2tf.__operators__.getitem_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_241/strided_slice/stack_2�
*tf.__operators__.getitem_241/strided_sliceStridedSliceinput9tf.__operators__.getitem_241/strided_slice/stack:output:0;tf.__operators__.getitem_241/strided_slice/stack_1:output:0;tf.__operators__.getitem_241/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_241/strided_slicex
tf.concat_289/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_289/concat/axis�
tf.concat_289/concatConcatV2,range_conversion_47/PartitionedCall:output:03tf.__operators__.getitem_241/strided_slice:output:0"tf.concat_289/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_289/concat�
"conv3d_217/StatefulPartitionedCallStatefulPartitionedCalltf.concat_289/concat:output:0conv3d_217_11060411conv3d_217_11060413*
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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_110599722$
"conv3d_217/StatefulPartitionedCall�
$average_pooling3d_85/PartitionedCallPartitionedCall+conv3d_217/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_110599862&
$average_pooling3d_85/PartitionedCall�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_85/PartitionedCall:output:0conv3d_218_11060417conv3d_218_11060419*
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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_110599992$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_86/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_110600132&
$average_pooling3d_86/PartitionedCall�
reshape_94/PartitionedCallPartitionedCall-average_pooling3d_86/PartitionedCall:output:0*
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
H__inference_reshape_94_layer_call_and_return_conditional_losses_110600272
reshape_94/PartitionedCall�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#reshape_94/PartitionedCall:output:0dense_47_11060424dense_47_11060426*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_110600402"
 dense_47/StatefulPartitionedCall�
reshape_95/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
H__inference_reshape_95_layer_call_and_return_conditional_losses_110600612
reshape_95/PartitionedCall�
tf.reshape_338/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_338/Reshape/shape�
tf.reshape_338/ReshapeReshape#reshape_95/PartitionedCall:output:0%tf.reshape_338/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_338/Reshape�
tf.tile_169/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_169/Tile/multiples�
tf.tile_169/TileTiletf.reshape_338/Reshape:output:0#tf.tile_169/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_169/Tile�
tf.reshape_339/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_339/Reshape/shape�
tf.reshape_339/ReshapeReshapetf.tile_169/Tile:output:0%tf.reshape_339/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_339/Reshapex
tf.concat_290/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_290/concat/axis�
tf.concat_290/concatConcatV2tf.reshape_339/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_290/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_290/concat�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCalltf.concat_290/concat:output:0conv3d_219_11060438conv3d_219_11060440*
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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_110600822$
"conv3d_219/StatefulPartitionedCall�
tf.reshape_340/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_340/Reshape/shape�
tf.reshape_340/ReshapeReshape+conv3d_219/StatefulPartitionedCall:output:0%tf.reshape_340/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_340/Reshape�
tf.tile_170/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_170/Tile/multiples�
tf.tile_170/TileTiletf.reshape_340/Reshape:output:0#tf.tile_170/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_170/Tile�
tf.reshape_341/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_341/Reshape/shape�
tf.reshape_341/ReshapeReshapetf.tile_170/Tile:output:0%tf.reshape_341/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_341/Reshapex
tf.concat_291/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_291/concat/axis�
tf.concat_291/concatConcatV2tf.reshape_341/Reshape:output:0+conv3d_217/StatefulPartitionedCall:output:0"tf.concat_291/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_291/concat�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCalltf.concat_291/concat:output:0conv3d_220_11060451conv3d_220_11060453*
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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_110601072$
"conv3d_220/StatefulPartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0conv3d_221_11060456conv3d_221_11060458*
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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_110601232$
"conv3d_221/StatefulPartitionedCall�
IdentityIdentity+conv3d_221/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_217/StatefulPartitionedCall#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_217/StatefulPartitionedCall"conv3d_217/StatefulPartitionedCall2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
S
7__inference_average_pooling3d_85_layer_call_fn_11060879

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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_110599862
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
�
�
#__inference__wrapped_model_11059870	
inputP
2model_47_conv3d_217_conv3d_readvariableop_resource:A
3model_47_conv3d_217_biasadd_readvariableop_resource:P
2model_47_conv3d_218_conv3d_readvariableop_resource:A
3model_47_conv3d_218_biasadd_readvariableop_resource:B
0model_47_dense_47_matmul_readvariableop_resource:@@?
1model_47_dense_47_biasadd_readvariableop_resource:@P
2model_47_conv3d_219_conv3d_readvariableop_resource:A
3model_47_conv3d_219_biasadd_readvariableop_resource:P
2model_47_conv3d_220_conv3d_readvariableop_resource:A
3model_47_conv3d_220_biasadd_readvariableop_resource:P
2model_47_conv3d_221_conv3d_readvariableop_resource:A
3model_47_conv3d_221_biasadd_readvariableop_resource:
identity��*model_47/conv3d_217/BiasAdd/ReadVariableOp�)model_47/conv3d_217/Conv3D/ReadVariableOp�*model_47/conv3d_218/BiasAdd/ReadVariableOp�)model_47/conv3d_218/Conv3D/ReadVariableOp�*model_47/conv3d_219/BiasAdd/ReadVariableOp�)model_47/conv3d_219/Conv3D/ReadVariableOp�*model_47/conv3d_220/BiasAdd/ReadVariableOp�)model_47/conv3d_220/Conv3D/ReadVariableOp�*model_47/conv3d_221/BiasAdd/ReadVariableOp�)model_47/conv3d_221/Conv3D/ReadVariableOp�(model_47/dense_47/BiasAdd/ReadVariableOp�'model_47/dense_47/MatMul/ReadVariableOp�
9model_47/tf.__operators__.getitem_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_47/tf.__operators__.getitem_240/strided_slice/stack�
;model_47/tf.__operators__.getitem_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_47/tf.__operators__.getitem_240/strided_slice/stack_1�
;model_47/tf.__operators__.getitem_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_47/tf.__operators__.getitem_240/strided_slice/stack_2�
3model_47/tf.__operators__.getitem_240/strided_sliceStridedSliceinputBmodel_47/tf.__operators__.getitem_240/strided_slice/stack:output:0Dmodel_47/tf.__operators__.getitem_240/strided_slice/stack_1:output:0Dmodel_47/tf.__operators__.getitem_240/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_47/tf.__operators__.getitem_240/strided_slice�
"model_47/range_conversion_47/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_47/range_conversion_47/sub/y�
 model_47/range_conversion_47/subSub<model_47/tf.__operators__.getitem_240/strided_slice:output:0+model_47/range_conversion_47/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_47/range_conversion_47/sub�
&model_47/range_conversion_47/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_47/range_conversion_47/truediv/y�
$model_47/range_conversion_47/truedivRealDiv$model_47/range_conversion_47/sub:z:0/model_47/range_conversion_47/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_47/range_conversion_47/truediv�
"model_47/range_conversion_47/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_47/range_conversion_47/mul/y�
 model_47/range_conversion_47/mulMul(model_47/range_conversion_47/truediv:z:0+model_47/range_conversion_47/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_47/range_conversion_47/mul�
"model_47/range_conversion_47/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_47/range_conversion_47/add/y�
 model_47/range_conversion_47/addAddV2$model_47/range_conversion_47/mul:z:0+model_47/range_conversion_47/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_47/range_conversion_47/add�
9model_47/tf.__operators__.getitem_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_47/tf.__operators__.getitem_241/strided_slice/stack�
;model_47/tf.__operators__.getitem_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_47/tf.__operators__.getitem_241/strided_slice/stack_1�
;model_47/tf.__operators__.getitem_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_47/tf.__operators__.getitem_241/strided_slice/stack_2�
3model_47/tf.__operators__.getitem_241/strided_sliceStridedSliceinputBmodel_47/tf.__operators__.getitem_241/strided_slice/stack:output:0Dmodel_47/tf.__operators__.getitem_241/strided_slice/stack_1:output:0Dmodel_47/tf.__operators__.getitem_241/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_47/tf.__operators__.getitem_241/strided_slice�
"model_47/tf.concat_289/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_47/tf.concat_289/concat/axis�
model_47/tf.concat_289/concatConcatV2$model_47/range_conversion_47/add:z:0<model_47/tf.__operators__.getitem_241/strided_slice:output:0+model_47/tf.concat_289/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_47/tf.concat_289/concat�
)model_47/conv3d_217/Conv3D/ReadVariableOpReadVariableOp2model_47_conv3d_217_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_47/conv3d_217/Conv3D/ReadVariableOp�
model_47/conv3d_217/Conv3DConv3D&model_47/tf.concat_289/concat:output:01model_47/conv3d_217/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_47/conv3d_217/Conv3D�
*model_47/conv3d_217/BiasAdd/ReadVariableOpReadVariableOp3model_47_conv3d_217_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_47/conv3d_217/BiasAdd/ReadVariableOp�
model_47/conv3d_217/BiasAddBiasAdd#model_47/conv3d_217/Conv3D:output:02model_47/conv3d_217/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_47/conv3d_217/BiasAdd�
model_47/conv3d_217/SoftplusSoftplus$model_47/conv3d_217/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_47/conv3d_217/Softplus�
,model_47/average_pooling3d_85/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_47/average_pooling3d_85/transpose/perm�
'model_47/average_pooling3d_85/transpose	Transpose*model_47/conv3d_217/Softplus:activations:05model_47/average_pooling3d_85/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_47/average_pooling3d_85/transpose�
'model_47/average_pooling3d_85/AvgPool3D	AvgPool3D+model_47/average_pooling3d_85/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_47/average_pooling3d_85/AvgPool3D�
.model_47/average_pooling3d_85/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_47/average_pooling3d_85/transpose_1/perm�
)model_47/average_pooling3d_85/transpose_1	Transpose0model_47/average_pooling3d_85/AvgPool3D:output:07model_47/average_pooling3d_85/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_47/average_pooling3d_85/transpose_1�
)model_47/conv3d_218/Conv3D/ReadVariableOpReadVariableOp2model_47_conv3d_218_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_47/conv3d_218/Conv3D/ReadVariableOp�
model_47/conv3d_218/Conv3DConv3D-model_47/average_pooling3d_85/transpose_1:y:01model_47/conv3d_218/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_47/conv3d_218/Conv3D�
*model_47/conv3d_218/BiasAdd/ReadVariableOpReadVariableOp3model_47_conv3d_218_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_47/conv3d_218/BiasAdd/ReadVariableOp�
model_47/conv3d_218/BiasAddBiasAdd#model_47/conv3d_218/Conv3D:output:02model_47/conv3d_218/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_47/conv3d_218/BiasAdd�
model_47/conv3d_218/SoftplusSoftplus$model_47/conv3d_218/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_47/conv3d_218/Softplus�
,model_47/average_pooling3d_86/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_47/average_pooling3d_86/transpose/perm�
'model_47/average_pooling3d_86/transpose	Transpose*model_47/conv3d_218/Softplus:activations:05model_47/average_pooling3d_86/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_47/average_pooling3d_86/transpose�
'model_47/average_pooling3d_86/AvgPool3D	AvgPool3D+model_47/average_pooling3d_86/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_47/average_pooling3d_86/AvgPool3D�
.model_47/average_pooling3d_86/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_47/average_pooling3d_86/transpose_1/perm�
)model_47/average_pooling3d_86/transpose_1	Transpose0model_47/average_pooling3d_86/AvgPool3D:output:07model_47/average_pooling3d_86/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_47/average_pooling3d_86/transpose_1�
model_47/reshape_94/ShapeShape-model_47/average_pooling3d_86/transpose_1:y:0*
T0*
_output_shapes
:2
model_47/reshape_94/Shape�
'model_47/reshape_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_47/reshape_94/strided_slice/stack�
)model_47/reshape_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_47/reshape_94/strided_slice/stack_1�
)model_47/reshape_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_47/reshape_94/strided_slice/stack_2�
!model_47/reshape_94/strided_sliceStridedSlice"model_47/reshape_94/Shape:output:00model_47/reshape_94/strided_slice/stack:output:02model_47/reshape_94/strided_slice/stack_1:output:02model_47/reshape_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_47/reshape_94/strided_slice�
#model_47/reshape_94/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_47/reshape_94/Reshape/shape/1�
!model_47/reshape_94/Reshape/shapePack*model_47/reshape_94/strided_slice:output:0,model_47/reshape_94/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_47/reshape_94/Reshape/shape�
model_47/reshape_94/ReshapeReshape-model_47/average_pooling3d_86/transpose_1:y:0*model_47/reshape_94/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_47/reshape_94/Reshape�
'model_47/dense_47/MatMul/ReadVariableOpReadVariableOp0model_47_dense_47_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_47/dense_47/MatMul/ReadVariableOp�
model_47/dense_47/MatMulMatMul$model_47/reshape_94/Reshape:output:0/model_47/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_47/dense_47/MatMul�
(model_47/dense_47/BiasAdd/ReadVariableOpReadVariableOp1model_47_dense_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_47/dense_47/BiasAdd/ReadVariableOp�
model_47/dense_47/BiasAddBiasAdd"model_47/dense_47/MatMul:product:00model_47/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_47/dense_47/BiasAdd�
model_47/dense_47/SoftplusSoftplus"model_47/dense_47/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_47/dense_47/Softplus�
model_47/reshape_95/ShapeShape(model_47/dense_47/Softplus:activations:0*
T0*
_output_shapes
:2
model_47/reshape_95/Shape�
'model_47/reshape_95/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_47/reshape_95/strided_slice/stack�
)model_47/reshape_95/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_47/reshape_95/strided_slice/stack_1�
)model_47/reshape_95/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_47/reshape_95/strided_slice/stack_2�
!model_47/reshape_95/strided_sliceStridedSlice"model_47/reshape_95/Shape:output:00model_47/reshape_95/strided_slice/stack:output:02model_47/reshape_95/strided_slice/stack_1:output:02model_47/reshape_95/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_47/reshape_95/strided_slice�
#model_47/reshape_95/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_47/reshape_95/Reshape/shape/1�
#model_47/reshape_95/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_47/reshape_95/Reshape/shape/2�
#model_47/reshape_95/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_47/reshape_95/Reshape/shape/3�
#model_47/reshape_95/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_47/reshape_95/Reshape/shape/4�
!model_47/reshape_95/Reshape/shapePack*model_47/reshape_95/strided_slice:output:0,model_47/reshape_95/Reshape/shape/1:output:0,model_47/reshape_95/Reshape/shape/2:output:0,model_47/reshape_95/Reshape/shape/3:output:0,model_47/reshape_95/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_47/reshape_95/Reshape/shape�
model_47/reshape_95/ReshapeReshape(model_47/dense_47/Softplus:activations:0*model_47/reshape_95/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_47/reshape_95/Reshape�
%model_47/tf.reshape_338/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_47/tf.reshape_338/Reshape/shape�
model_47/tf.reshape_338/ReshapeReshape$model_47/reshape_95/Reshape:output:0.model_47/tf.reshape_338/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_47/tf.reshape_338/Reshape�
#model_47/tf.tile_169/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_47/tf.tile_169/Tile/multiples�
model_47/tf.tile_169/TileTile(model_47/tf.reshape_338/Reshape:output:0,model_47/tf.tile_169/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_47/tf.tile_169/Tile�
%model_47/tf.reshape_339/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_47/tf.reshape_339/Reshape/shape�
model_47/tf.reshape_339/ReshapeReshape"model_47/tf.tile_169/Tile:output:0.model_47/tf.reshape_339/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_47/tf.reshape_339/Reshape�
"model_47/tf.concat_290/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_47/tf.concat_290/concat/axis�
model_47/tf.concat_290/concatConcatV2(model_47/tf.reshape_339/Reshape:output:0*model_47/conv3d_218/Softplus:activations:0+model_47/tf.concat_290/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_47/tf.concat_290/concat�
)model_47/conv3d_219/Conv3D/ReadVariableOpReadVariableOp2model_47_conv3d_219_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_47/conv3d_219/Conv3D/ReadVariableOp�
model_47/conv3d_219/Conv3DConv3D&model_47/tf.concat_290/concat:output:01model_47/conv3d_219/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_47/conv3d_219/Conv3D�
*model_47/conv3d_219/BiasAdd/ReadVariableOpReadVariableOp3model_47_conv3d_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_47/conv3d_219/BiasAdd/ReadVariableOp�
model_47/conv3d_219/BiasAddBiasAdd#model_47/conv3d_219/Conv3D:output:02model_47/conv3d_219/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_47/conv3d_219/BiasAdd�
model_47/conv3d_219/SoftplusSoftplus$model_47/conv3d_219/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_47/conv3d_219/Softplus�
%model_47/tf.reshape_340/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_47/tf.reshape_340/Reshape/shape�
model_47/tf.reshape_340/ReshapeReshape*model_47/conv3d_219/Softplus:activations:0.model_47/tf.reshape_340/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_47/tf.reshape_340/Reshape�
#model_47/tf.tile_170/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_47/tf.tile_170/Tile/multiples�
model_47/tf.tile_170/TileTile(model_47/tf.reshape_340/Reshape:output:0,model_47/tf.tile_170/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_47/tf.tile_170/Tile�
%model_47/tf.reshape_341/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_47/tf.reshape_341/Reshape/shape�
model_47/tf.reshape_341/ReshapeReshape"model_47/tf.tile_170/Tile:output:0.model_47/tf.reshape_341/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_47/tf.reshape_341/Reshape�
"model_47/tf.concat_291/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_47/tf.concat_291/concat/axis�
model_47/tf.concat_291/concatConcatV2(model_47/tf.reshape_341/Reshape:output:0*model_47/conv3d_217/Softplus:activations:0+model_47/tf.concat_291/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_47/tf.concat_291/concat�
)model_47/conv3d_220/Conv3D/ReadVariableOpReadVariableOp2model_47_conv3d_220_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_47/conv3d_220/Conv3D/ReadVariableOp�
model_47/conv3d_220/Conv3DConv3D&model_47/tf.concat_291/concat:output:01model_47/conv3d_220/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_47/conv3d_220/Conv3D�
*model_47/conv3d_220/BiasAdd/ReadVariableOpReadVariableOp3model_47_conv3d_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_47/conv3d_220/BiasAdd/ReadVariableOp�
model_47/conv3d_220/BiasAddBiasAdd#model_47/conv3d_220/Conv3D:output:02model_47/conv3d_220/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_47/conv3d_220/BiasAdd�
model_47/conv3d_220/SoftplusSoftplus$model_47/conv3d_220/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_47/conv3d_220/Softplus�
)model_47/conv3d_221/Conv3D/ReadVariableOpReadVariableOp2model_47_conv3d_221_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_47/conv3d_221/Conv3D/ReadVariableOp�
model_47/conv3d_221/Conv3DConv3D*model_47/conv3d_220/Softplus:activations:01model_47/conv3d_221/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_47/conv3d_221/Conv3D�
*model_47/conv3d_221/BiasAdd/ReadVariableOpReadVariableOp3model_47_conv3d_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_47/conv3d_221/BiasAdd/ReadVariableOp�
model_47/conv3d_221/BiasAddBiasAdd#model_47/conv3d_221/Conv3D:output:02model_47/conv3d_221/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_47/conv3d_221/BiasAdd�
IdentityIdentity$model_47/conv3d_221/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_47/conv3d_217/BiasAdd/ReadVariableOp*^model_47/conv3d_217/Conv3D/ReadVariableOp+^model_47/conv3d_218/BiasAdd/ReadVariableOp*^model_47/conv3d_218/Conv3D/ReadVariableOp+^model_47/conv3d_219/BiasAdd/ReadVariableOp*^model_47/conv3d_219/Conv3D/ReadVariableOp+^model_47/conv3d_220/BiasAdd/ReadVariableOp*^model_47/conv3d_220/Conv3D/ReadVariableOp+^model_47/conv3d_221/BiasAdd/ReadVariableOp*^model_47/conv3d_221/Conv3D/ReadVariableOp)^model_47/dense_47/BiasAdd/ReadVariableOp(^model_47/dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2X
*model_47/conv3d_217/BiasAdd/ReadVariableOp*model_47/conv3d_217/BiasAdd/ReadVariableOp2V
)model_47/conv3d_217/Conv3D/ReadVariableOp)model_47/conv3d_217/Conv3D/ReadVariableOp2X
*model_47/conv3d_218/BiasAdd/ReadVariableOp*model_47/conv3d_218/BiasAdd/ReadVariableOp2V
)model_47/conv3d_218/Conv3D/ReadVariableOp)model_47/conv3d_218/Conv3D/ReadVariableOp2X
*model_47/conv3d_219/BiasAdd/ReadVariableOp*model_47/conv3d_219/BiasAdd/ReadVariableOp2V
)model_47/conv3d_219/Conv3D/ReadVariableOp)model_47/conv3d_219/Conv3D/ReadVariableOp2X
*model_47/conv3d_220/BiasAdd/ReadVariableOp*model_47/conv3d_220/BiasAdd/ReadVariableOp2V
)model_47/conv3d_220/Conv3D/ReadVariableOp)model_47/conv3d_220/Conv3D/ReadVariableOp2X
*model_47/conv3d_221/BiasAdd/ReadVariableOp*model_47/conv3d_221/BiasAdd/ReadVariableOp2V
)model_47/conv3d_221/Conv3D/ReadVariableOp)model_47/conv3d_221/Conv3D/ReadVariableOp2T
(model_47/dense_47/BiasAdd/ReadVariableOp(model_47/dense_47/BiasAdd/ReadVariableOp2R
'model_47/dense_47/MatMul/ReadVariableOp'model_47/dense_47/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
I
-__inference_reshape_95_layer_call_fn_11060987

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
H__inference_reshape_95_layer_call_and_return_conditional_losses_110600612
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
�^
�
F__inference_model_47_layer_call_and_return_conditional_losses_11060130

inputs1
conv3d_217_11059973:!
conv3d_217_11059975:1
conv3d_218_11060000:!
conv3d_218_11060002:#
dense_47_11060041:@@
dense_47_11060043:@1
conv3d_219_11060083:!
conv3d_219_11060085:1
conv3d_220_11060108:!
conv3d_220_11060110:1
conv3d_221_11060124:!
conv3d_221_11060126:
identity��"conv3d_217/StatefulPartitionedCall�"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�
0tf.__operators__.getitem_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_240/strided_slice/stack�
2tf.__operators__.getitem_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_240/strided_slice/stack_1�
2tf.__operators__.getitem_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_240/strided_slice/stack_2�
*tf.__operators__.getitem_240/strided_sliceStridedSliceinputs9tf.__operators__.getitem_240/strided_slice/stack:output:0;tf.__operators__.getitem_240/strided_slice/stack_1:output:0;tf.__operators__.getitem_240/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_240/strided_slice�
#range_conversion_47/PartitionedCallPartitionedCall3tf.__operators__.getitem_240/strided_slice:output:0*
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
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_110599532%
#range_conversion_47/PartitionedCall�
0tf.__operators__.getitem_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_241/strided_slice/stack�
2tf.__operators__.getitem_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_241/strided_slice/stack_1�
2tf.__operators__.getitem_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_241/strided_slice/stack_2�
*tf.__operators__.getitem_241/strided_sliceStridedSliceinputs9tf.__operators__.getitem_241/strided_slice/stack:output:0;tf.__operators__.getitem_241/strided_slice/stack_1:output:0;tf.__operators__.getitem_241/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_241/strided_slicex
tf.concat_289/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_289/concat/axis�
tf.concat_289/concatConcatV2,range_conversion_47/PartitionedCall:output:03tf.__operators__.getitem_241/strided_slice:output:0"tf.concat_289/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_289/concat�
"conv3d_217/StatefulPartitionedCallStatefulPartitionedCalltf.concat_289/concat:output:0conv3d_217_11059973conv3d_217_11059975*
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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_110599722$
"conv3d_217/StatefulPartitionedCall�
$average_pooling3d_85/PartitionedCallPartitionedCall+conv3d_217/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_110599862&
$average_pooling3d_85/PartitionedCall�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_85/PartitionedCall:output:0conv3d_218_11060000conv3d_218_11060002*
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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_110599992$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_86/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_110600132&
$average_pooling3d_86/PartitionedCall�
reshape_94/PartitionedCallPartitionedCall-average_pooling3d_86/PartitionedCall:output:0*
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
H__inference_reshape_94_layer_call_and_return_conditional_losses_110600272
reshape_94/PartitionedCall�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#reshape_94/PartitionedCall:output:0dense_47_11060041dense_47_11060043*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_110600402"
 dense_47/StatefulPartitionedCall�
reshape_95/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
H__inference_reshape_95_layer_call_and_return_conditional_losses_110600612
reshape_95/PartitionedCall�
tf.reshape_338/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_338/Reshape/shape�
tf.reshape_338/ReshapeReshape#reshape_95/PartitionedCall:output:0%tf.reshape_338/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_338/Reshape�
tf.tile_169/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_169/Tile/multiples�
tf.tile_169/TileTiletf.reshape_338/Reshape:output:0#tf.tile_169/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_169/Tile�
tf.reshape_339/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_339/Reshape/shape�
tf.reshape_339/ReshapeReshapetf.tile_169/Tile:output:0%tf.reshape_339/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_339/Reshapex
tf.concat_290/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_290/concat/axis�
tf.concat_290/concatConcatV2tf.reshape_339/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_290/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_290/concat�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCalltf.concat_290/concat:output:0conv3d_219_11060083conv3d_219_11060085*
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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_110600822$
"conv3d_219/StatefulPartitionedCall�
tf.reshape_340/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_340/Reshape/shape�
tf.reshape_340/ReshapeReshape+conv3d_219/StatefulPartitionedCall:output:0%tf.reshape_340/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_340/Reshape�
tf.tile_170/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_170/Tile/multiples�
tf.tile_170/TileTiletf.reshape_340/Reshape:output:0#tf.tile_170/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_170/Tile�
tf.reshape_341/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_341/Reshape/shape�
tf.reshape_341/ReshapeReshapetf.tile_170/Tile:output:0%tf.reshape_341/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_341/Reshapex
tf.concat_291/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_291/concat/axis�
tf.concat_291/concatConcatV2tf.reshape_341/Reshape:output:0+conv3d_217/StatefulPartitionedCall:output:0"tf.concat_291/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_291/concat�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCalltf.concat_291/concat:output:0conv3d_220_11060108conv3d_220_11060110*
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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_110601072$
"conv3d_220/StatefulPartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0conv3d_221_11060124conv3d_221_11060126*
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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_110601232$
"conv3d_221/StatefulPartitionedCall�
IdentityIdentity+conv3d_221/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_217/StatefulPartitionedCall#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_217/StatefulPartitionedCall"conv3d_217/StatefulPartitionedCall2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�7
�
$__inference__traced_restore_11061166
file_prefix@
"assignvariableop_conv3d_217_kernel:0
"assignvariableop_1_conv3d_217_bias:B
$assignvariableop_2_conv3d_218_kernel:0
"assignvariableop_3_conv3d_218_bias:4
"assignvariableop_4_dense_47_kernel:@@.
 assignvariableop_5_dense_47_bias:@B
$assignvariableop_6_conv3d_219_kernel:0
"assignvariableop_7_conv3d_219_bias:B
$assignvariableop_8_conv3d_220_kernel:0
"assignvariableop_9_conv3d_220_bias:C
%assignvariableop_10_conv3d_221_kernel:1
#assignvariableop_11_conv3d_221_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_217_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_217_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_218_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_218_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_47_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_47_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_219_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_219_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_220_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_220_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_221_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_221_biasIdentity_11:output:0"/device:CPU:0*
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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_11060917

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
q
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_11059953

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
�
F__inference_dense_47_layer_call_and_return_conditional_losses_11060040

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

n
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11060888

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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_11061022

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
�&
�
!__inference__traced_save_11061120
file_prefix0
,savev2_conv3d_217_kernel_read_readvariableop.
*savev2_conv3d_217_bias_read_readvariableop0
,savev2_conv3d_218_kernel_read_readvariableop.
*savev2_conv3d_218_bias_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop0
,savev2_conv3d_219_kernel_read_readvariableop.
*savev2_conv3d_219_bias_read_readvariableop0
,savev2_conv3d_220_kernel_read_readvariableop.
*savev2_conv3d_220_bias_read_readvariableop0
,savev2_conv3d_221_kernel_read_readvariableop.
*savev2_conv3d_221_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_217_kernel_read_readvariableop*savev2_conv3d_217_bias_read_readvariableop,savev2_conv3d_218_kernel_read_readvariableop*savev2_conv3d_218_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop,savev2_conv3d_219_kernel_read_readvariableop*savev2_conv3d_219_bias_read_readvariableop,savev2_conv3d_220_kernel_read_readvariableop*savev2_conv3d_220_bias_read_readvariableop,savev2_conv3d_221_kernel_read_readvariableop*savev2_conv3d_221_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_11060869

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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_11059999

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
d
H__inference_reshape_94_layer_call_and_return_conditional_losses_11060027

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
+__inference_dense_47_layer_call_fn_11060971

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
F__inference_dense_47_layer_call_and_return_conditional_losses_110600402
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
�
F__inference_dense_47_layer_call_and_return_conditional_losses_11060982

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
-__inference_conv3d_219_layer_call_fn_11061011

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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_110600822
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
�
S
7__inference_average_pooling3d_86_layer_call_fn_11060922

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
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_110599132
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
F__inference_model_47_layer_call_and_return_conditional_losses_11060527	
input1
conv3d_217_11060476:!
conv3d_217_11060478:1
conv3d_218_11060482:!
conv3d_218_11060484:#
dense_47_11060489:@@
dense_47_11060491:@1
conv3d_219_11060503:!
conv3d_219_11060505:1
conv3d_220_11060516:!
conv3d_220_11060518:1
conv3d_221_11060521:!
conv3d_221_11060523:
identity��"conv3d_217/StatefulPartitionedCall�"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�
0tf.__operators__.getitem_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_240/strided_slice/stack�
2tf.__operators__.getitem_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_240/strided_slice/stack_1�
2tf.__operators__.getitem_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_240/strided_slice/stack_2�
*tf.__operators__.getitem_240/strided_sliceStridedSliceinput9tf.__operators__.getitem_240/strided_slice/stack:output:0;tf.__operators__.getitem_240/strided_slice/stack_1:output:0;tf.__operators__.getitem_240/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_240/strided_slice�
#range_conversion_47/PartitionedCallPartitionedCall3tf.__operators__.getitem_240/strided_slice:output:0*
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
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_110599532%
#range_conversion_47/PartitionedCall�
0tf.__operators__.getitem_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_241/strided_slice/stack�
2tf.__operators__.getitem_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_241/strided_slice/stack_1�
2tf.__operators__.getitem_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_241/strided_slice/stack_2�
*tf.__operators__.getitem_241/strided_sliceStridedSliceinput9tf.__operators__.getitem_241/strided_slice/stack:output:0;tf.__operators__.getitem_241/strided_slice/stack_1:output:0;tf.__operators__.getitem_241/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_241/strided_slicex
tf.concat_289/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_289/concat/axis�
tf.concat_289/concatConcatV2,range_conversion_47/PartitionedCall:output:03tf.__operators__.getitem_241/strided_slice:output:0"tf.concat_289/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_289/concat�
"conv3d_217/StatefulPartitionedCallStatefulPartitionedCalltf.concat_289/concat:output:0conv3d_217_11060476conv3d_217_11060478*
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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_110599722$
"conv3d_217/StatefulPartitionedCall�
$average_pooling3d_85/PartitionedCallPartitionedCall+conv3d_217/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_110599862&
$average_pooling3d_85/PartitionedCall�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_85/PartitionedCall:output:0conv3d_218_11060482conv3d_218_11060484*
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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_110599992$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_86/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_110600132&
$average_pooling3d_86/PartitionedCall�
reshape_94/PartitionedCallPartitionedCall-average_pooling3d_86/PartitionedCall:output:0*
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
H__inference_reshape_94_layer_call_and_return_conditional_losses_110600272
reshape_94/PartitionedCall�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#reshape_94/PartitionedCall:output:0dense_47_11060489dense_47_11060491*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_110600402"
 dense_47/StatefulPartitionedCall�
reshape_95/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
H__inference_reshape_95_layer_call_and_return_conditional_losses_110600612
reshape_95/PartitionedCall�
tf.reshape_338/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_338/Reshape/shape�
tf.reshape_338/ReshapeReshape#reshape_95/PartitionedCall:output:0%tf.reshape_338/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_338/Reshape�
tf.tile_169/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_169/Tile/multiples�
tf.tile_169/TileTiletf.reshape_338/Reshape:output:0#tf.tile_169/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_169/Tile�
tf.reshape_339/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_339/Reshape/shape�
tf.reshape_339/ReshapeReshapetf.tile_169/Tile:output:0%tf.reshape_339/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_339/Reshapex
tf.concat_290/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_290/concat/axis�
tf.concat_290/concatConcatV2tf.reshape_339/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_290/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_290/concat�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCalltf.concat_290/concat:output:0conv3d_219_11060503conv3d_219_11060505*
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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_110600822$
"conv3d_219/StatefulPartitionedCall�
tf.reshape_340/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_340/Reshape/shape�
tf.reshape_340/ReshapeReshape+conv3d_219/StatefulPartitionedCall:output:0%tf.reshape_340/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_340/Reshape�
tf.tile_170/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_170/Tile/multiples�
tf.tile_170/TileTiletf.reshape_340/Reshape:output:0#tf.tile_170/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_170/Tile�
tf.reshape_341/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_341/Reshape/shape�
tf.reshape_341/ReshapeReshapetf.tile_170/Tile:output:0%tf.reshape_341/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_341/Reshapex
tf.concat_291/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_291/concat/axis�
tf.concat_291/concatConcatV2tf.reshape_341/Reshape:output:0+conv3d_217/StatefulPartitionedCall:output:0"tf.concat_291/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_291/concat�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCalltf.concat_291/concat:output:0conv3d_220_11060516conv3d_220_11060518*
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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_110601072$
"conv3d_220/StatefulPartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0conv3d_221_11060521conv3d_221_11060523*
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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_110601232$
"conv3d_221/StatefulPartitionedCall�
IdentityIdentity+conv3d_221/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_217/StatefulPartitionedCall#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_217/StatefulPartitionedCall"conv3d_217/StatefulPartitionedCall2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
H__inference_conv3d_221_layer_call_and_return_conditional_losses_11061061

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
�
H__inference_conv3d_220_layer_call_and_return_conditional_losses_11061042

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
d
H__inference_reshape_94_layer_call_and_return_conditional_losses_11060962

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
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11060897

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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_11060107

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
�
�
-__inference_conv3d_218_layer_call_fn_11060906

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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_110599992
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
�
I
-__inference_reshape_94_layer_call_fn_11060950

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
H__inference_reshape_94_layer_call_and_return_conditional_losses_110600272
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

n
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11059913

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

n
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11060936

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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_11059972

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
S
7__inference_average_pooling3d_86_layer_call_fn_11060927

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
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_110600132
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
n
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11059986

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

n
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11059883

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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_11060082

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
n
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11060945

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
�
�
-__inference_conv3d_220_layer_call_fn_11061031

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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_110601072
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
�
d
H__inference_reshape_95_layer_call_and_return_conditional_losses_11060061

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
F__inference_model_47_layer_call_and_return_conditional_losses_11060341

inputs1
conv3d_217_11060290:!
conv3d_217_11060292:1
conv3d_218_11060296:!
conv3d_218_11060298:#
dense_47_11060303:@@
dense_47_11060305:@1
conv3d_219_11060317:!
conv3d_219_11060319:1
conv3d_220_11060330:!
conv3d_220_11060332:1
conv3d_221_11060335:!
conv3d_221_11060337:
identity��"conv3d_217/StatefulPartitionedCall�"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�
0tf.__operators__.getitem_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_240/strided_slice/stack�
2tf.__operators__.getitem_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_240/strided_slice/stack_1�
2tf.__operators__.getitem_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_240/strided_slice/stack_2�
*tf.__operators__.getitem_240/strided_sliceStridedSliceinputs9tf.__operators__.getitem_240/strided_slice/stack:output:0;tf.__operators__.getitem_240/strided_slice/stack_1:output:0;tf.__operators__.getitem_240/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_240/strided_slice�
#range_conversion_47/PartitionedCallPartitionedCall3tf.__operators__.getitem_240/strided_slice:output:0*
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
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_110599532%
#range_conversion_47/PartitionedCall�
0tf.__operators__.getitem_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_241/strided_slice/stack�
2tf.__operators__.getitem_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_241/strided_slice/stack_1�
2tf.__operators__.getitem_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_241/strided_slice/stack_2�
*tf.__operators__.getitem_241/strided_sliceStridedSliceinputs9tf.__operators__.getitem_241/strided_slice/stack:output:0;tf.__operators__.getitem_241/strided_slice/stack_1:output:0;tf.__operators__.getitem_241/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_241/strided_slicex
tf.concat_289/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_289/concat/axis�
tf.concat_289/concatConcatV2,range_conversion_47/PartitionedCall:output:03tf.__operators__.getitem_241/strided_slice:output:0"tf.concat_289/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_289/concat�
"conv3d_217/StatefulPartitionedCallStatefulPartitionedCalltf.concat_289/concat:output:0conv3d_217_11060290conv3d_217_11060292*
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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_110599722$
"conv3d_217/StatefulPartitionedCall�
$average_pooling3d_85/PartitionedCallPartitionedCall+conv3d_217/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_110599862&
$average_pooling3d_85/PartitionedCall�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_85/PartitionedCall:output:0conv3d_218_11060296conv3d_218_11060298*
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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_110599992$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_86/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_110600132&
$average_pooling3d_86/PartitionedCall�
reshape_94/PartitionedCallPartitionedCall-average_pooling3d_86/PartitionedCall:output:0*
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
H__inference_reshape_94_layer_call_and_return_conditional_losses_110600272
reshape_94/PartitionedCall�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#reshape_94/PartitionedCall:output:0dense_47_11060303dense_47_11060305*
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
F__inference_dense_47_layer_call_and_return_conditional_losses_110600402"
 dense_47/StatefulPartitionedCall�
reshape_95/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
H__inference_reshape_95_layer_call_and_return_conditional_losses_110600612
reshape_95/PartitionedCall�
tf.reshape_338/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_338/Reshape/shape�
tf.reshape_338/ReshapeReshape#reshape_95/PartitionedCall:output:0%tf.reshape_338/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_338/Reshape�
tf.tile_169/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_169/Tile/multiples�
tf.tile_169/TileTiletf.reshape_338/Reshape:output:0#tf.tile_169/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_169/Tile�
tf.reshape_339/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_339/Reshape/shape�
tf.reshape_339/ReshapeReshapetf.tile_169/Tile:output:0%tf.reshape_339/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_339/Reshapex
tf.concat_290/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_290/concat/axis�
tf.concat_290/concatConcatV2tf.reshape_339/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_290/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_290/concat�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCalltf.concat_290/concat:output:0conv3d_219_11060317conv3d_219_11060319*
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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_110600822$
"conv3d_219/StatefulPartitionedCall�
tf.reshape_340/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_340/Reshape/shape�
tf.reshape_340/ReshapeReshape+conv3d_219/StatefulPartitionedCall:output:0%tf.reshape_340/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_340/Reshape�
tf.tile_170/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_170/Tile/multiples�
tf.tile_170/TileTiletf.reshape_340/Reshape:output:0#tf.tile_170/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_170/Tile�
tf.reshape_341/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_341/Reshape/shape�
tf.reshape_341/ReshapeReshapetf.tile_170/Tile:output:0%tf.reshape_341/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_341/Reshapex
tf.concat_291/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_291/concat/axis�
tf.concat_291/concatConcatV2tf.reshape_341/Reshape:output:0+conv3d_217/StatefulPartitionedCall:output:0"tf.concat_291/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_291/concat�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCalltf.concat_291/concat:output:0conv3d_220_11060330conv3d_220_11060332*
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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_110601072$
"conv3d_220/StatefulPartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0conv3d_221_11060335conv3d_221_11060337*
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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_110601232$
"conv3d_221/StatefulPartitionedCall�
IdentityIdentity+conv3d_221/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_217/StatefulPartitionedCall#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_217/StatefulPartitionedCall"conv3d_217/StatefulPartitionedCall2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
��
�

F__inference_model_47_layer_call_and_return_conditional_losses_11060724

inputsG
)conv3d_217_conv3d_readvariableop_resource:8
*conv3d_217_biasadd_readvariableop_resource:G
)conv3d_218_conv3d_readvariableop_resource:8
*conv3d_218_biasadd_readvariableop_resource:9
'dense_47_matmul_readvariableop_resource:@@6
(dense_47_biasadd_readvariableop_resource:@G
)conv3d_219_conv3d_readvariableop_resource:8
*conv3d_219_biasadd_readvariableop_resource:G
)conv3d_220_conv3d_readvariableop_resource:8
*conv3d_220_biasadd_readvariableop_resource:G
)conv3d_221_conv3d_readvariableop_resource:8
*conv3d_221_biasadd_readvariableop_resource:
identity��!conv3d_217/BiasAdd/ReadVariableOp� conv3d_217/Conv3D/ReadVariableOp�!conv3d_218/BiasAdd/ReadVariableOp� conv3d_218/Conv3D/ReadVariableOp�!conv3d_219/BiasAdd/ReadVariableOp� conv3d_219/Conv3D/ReadVariableOp�!conv3d_220/BiasAdd/ReadVariableOp� conv3d_220/Conv3D/ReadVariableOp�!conv3d_221/BiasAdd/ReadVariableOp� conv3d_221/Conv3D/ReadVariableOp�dense_47/BiasAdd/ReadVariableOp�dense_47/MatMul/ReadVariableOp�
0tf.__operators__.getitem_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_240/strided_slice/stack�
2tf.__operators__.getitem_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_240/strided_slice/stack_1�
2tf.__operators__.getitem_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_240/strided_slice/stack_2�
*tf.__operators__.getitem_240/strided_sliceStridedSliceinputs9tf.__operators__.getitem_240/strided_slice/stack:output:0;tf.__operators__.getitem_240/strided_slice/stack_1:output:0;tf.__operators__.getitem_240/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_240/strided_slice{
range_conversion_47/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_47/sub/y�
range_conversion_47/subSub3tf.__operators__.getitem_240/strided_slice:output:0"range_conversion_47/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/sub�
range_conversion_47/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_47/truediv/y�
range_conversion_47/truedivRealDivrange_conversion_47/sub:z:0&range_conversion_47/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/truediv{
range_conversion_47/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_47/mul/y�
range_conversion_47/mulMulrange_conversion_47/truediv:z:0"range_conversion_47/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/mul{
range_conversion_47/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_47/add/y�
range_conversion_47/addAddV2range_conversion_47/mul:z:0"range_conversion_47/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/add�
0tf.__operators__.getitem_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_241/strided_slice/stack�
2tf.__operators__.getitem_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_241/strided_slice/stack_1�
2tf.__operators__.getitem_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_241/strided_slice/stack_2�
*tf.__operators__.getitem_241/strided_sliceStridedSliceinputs9tf.__operators__.getitem_241/strided_slice/stack:output:0;tf.__operators__.getitem_241/strided_slice/stack_1:output:0;tf.__operators__.getitem_241/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_241/strided_slicex
tf.concat_289/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_289/concat/axis�
tf.concat_289/concatConcatV2range_conversion_47/add:z:03tf.__operators__.getitem_241/strided_slice:output:0"tf.concat_289/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_289/concat�
 conv3d_217/Conv3D/ReadVariableOpReadVariableOp)conv3d_217_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_217/Conv3D/ReadVariableOp�
conv3d_217/Conv3DConv3Dtf.concat_289/concat:output:0(conv3d_217/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_217/Conv3D�
!conv3d_217/BiasAdd/ReadVariableOpReadVariableOp*conv3d_217_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_217/BiasAdd/ReadVariableOp�
conv3d_217/BiasAddBiasAddconv3d_217/Conv3D:output:0)conv3d_217/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_217/BiasAdd�
conv3d_217/SoftplusSoftplusconv3d_217/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_217/Softplus�
#average_pooling3d_85/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_85/transpose/perm�
average_pooling3d_85/transpose	Transpose!conv3d_217/Softplus:activations:0,average_pooling3d_85/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_85/transpose�
average_pooling3d_85/AvgPool3D	AvgPool3D"average_pooling3d_85/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_85/AvgPool3D�
%average_pooling3d_85/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_85/transpose_1/perm�
 average_pooling3d_85/transpose_1	Transpose'average_pooling3d_85/AvgPool3D:output:0.average_pooling3d_85/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_85/transpose_1�
 conv3d_218/Conv3D/ReadVariableOpReadVariableOp)conv3d_218_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_218/Conv3D/ReadVariableOp�
conv3d_218/Conv3DConv3D$average_pooling3d_85/transpose_1:y:0(conv3d_218/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_218/Conv3D�
!conv3d_218/BiasAdd/ReadVariableOpReadVariableOp*conv3d_218_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_218/BiasAdd/ReadVariableOp�
conv3d_218/BiasAddBiasAddconv3d_218/Conv3D:output:0)conv3d_218/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_218/BiasAdd�
conv3d_218/SoftplusSoftplusconv3d_218/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_218/Softplus�
#average_pooling3d_86/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_86/transpose/perm�
average_pooling3d_86/transpose	Transpose!conv3d_218/Softplus:activations:0,average_pooling3d_86/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_86/transpose�
average_pooling3d_86/AvgPool3D	AvgPool3D"average_pooling3d_86/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_86/AvgPool3D�
%average_pooling3d_86/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_86/transpose_1/perm�
 average_pooling3d_86/transpose_1	Transpose'average_pooling3d_86/AvgPool3D:output:0.average_pooling3d_86/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_86/transpose_1x
reshape_94/ShapeShape$average_pooling3d_86/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_94/Shape�
reshape_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_94/strided_slice/stack�
 reshape_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_94/strided_slice/stack_1�
 reshape_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_94/strided_slice/stack_2�
reshape_94/strided_sliceStridedSlicereshape_94/Shape:output:0'reshape_94/strided_slice/stack:output:0)reshape_94/strided_slice/stack_1:output:0)reshape_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_94/strided_slicez
reshape_94/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_94/Reshape/shape/1�
reshape_94/Reshape/shapePack!reshape_94/strided_slice:output:0#reshape_94/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_94/Reshape/shape�
reshape_94/ReshapeReshape$average_pooling3d_86/transpose_1:y:0!reshape_94/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_94/Reshape�
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_47/MatMul/ReadVariableOp�
dense_47/MatMulMatMulreshape_94/Reshape:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_47/MatMul�
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_47/BiasAdd/ReadVariableOp�
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_47/BiasAdd
dense_47/SoftplusSoftplusdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_47/Softpluss
reshape_95/ShapeShapedense_47/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_95/Shape�
reshape_95/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_95/strided_slice/stack�
 reshape_95/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_95/strided_slice/stack_1�
 reshape_95/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_95/strided_slice/stack_2�
reshape_95/strided_sliceStridedSlicereshape_95/Shape:output:0'reshape_95/strided_slice/stack:output:0)reshape_95/strided_slice/stack_1:output:0)reshape_95/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_95/strided_slicez
reshape_95/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/1z
reshape_95/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/2z
reshape_95/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/3z
reshape_95/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/4�
reshape_95/Reshape/shapePack!reshape_95/strided_slice:output:0#reshape_95/Reshape/shape/1:output:0#reshape_95/Reshape/shape/2:output:0#reshape_95/Reshape/shape/3:output:0#reshape_95/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_95/Reshape/shape�
reshape_95/ReshapeReshapedense_47/Softplus:activations:0!reshape_95/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_95/Reshape�
tf.reshape_338/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_338/Reshape/shape�
tf.reshape_338/ReshapeReshapereshape_95/Reshape:output:0%tf.reshape_338/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_338/Reshape�
tf.tile_169/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_169/Tile/multiples�
tf.tile_169/TileTiletf.reshape_338/Reshape:output:0#tf.tile_169/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_169/Tile�
tf.reshape_339/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_339/Reshape/shape�
tf.reshape_339/ReshapeReshapetf.tile_169/Tile:output:0%tf.reshape_339/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_339/Reshapex
tf.concat_290/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_290/concat/axis�
tf.concat_290/concatConcatV2tf.reshape_339/Reshape:output:0!conv3d_218/Softplus:activations:0"tf.concat_290/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_290/concat�
 conv3d_219/Conv3D/ReadVariableOpReadVariableOp)conv3d_219_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_219/Conv3D/ReadVariableOp�
conv3d_219/Conv3DConv3Dtf.concat_290/concat:output:0(conv3d_219/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_219/Conv3D�
!conv3d_219/BiasAdd/ReadVariableOpReadVariableOp*conv3d_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_219/BiasAdd/ReadVariableOp�
conv3d_219/BiasAddBiasAddconv3d_219/Conv3D:output:0)conv3d_219/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_219/BiasAdd�
conv3d_219/SoftplusSoftplusconv3d_219/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_219/Softplus�
tf.reshape_340/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_340/Reshape/shape�
tf.reshape_340/ReshapeReshape!conv3d_219/Softplus:activations:0%tf.reshape_340/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_340/Reshape�
tf.tile_170/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_170/Tile/multiples�
tf.tile_170/TileTiletf.reshape_340/Reshape:output:0#tf.tile_170/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_170/Tile�
tf.reshape_341/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_341/Reshape/shape�
tf.reshape_341/ReshapeReshapetf.tile_170/Tile:output:0%tf.reshape_341/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_341/Reshapex
tf.concat_291/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_291/concat/axis�
tf.concat_291/concatConcatV2tf.reshape_341/Reshape:output:0!conv3d_217/Softplus:activations:0"tf.concat_291/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_291/concat�
 conv3d_220/Conv3D/ReadVariableOpReadVariableOp)conv3d_220_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_220/Conv3D/ReadVariableOp�
conv3d_220/Conv3DConv3Dtf.concat_291/concat:output:0(conv3d_220/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_220/Conv3D�
!conv3d_220/BiasAdd/ReadVariableOpReadVariableOp*conv3d_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_220/BiasAdd/ReadVariableOp�
conv3d_220/BiasAddBiasAddconv3d_220/Conv3D:output:0)conv3d_220/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_220/BiasAdd�
conv3d_220/SoftplusSoftplusconv3d_220/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_220/Softplus�
 conv3d_221/Conv3D/ReadVariableOpReadVariableOp)conv3d_221_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_221/Conv3D/ReadVariableOp�
conv3d_221/Conv3DConv3D!conv3d_220/Softplus:activations:0(conv3d_221/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_221/Conv3D�
!conv3d_221/BiasAdd/ReadVariableOpReadVariableOp*conv3d_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_221/BiasAdd/ReadVariableOp�
conv3d_221/BiasAddBiasAddconv3d_221/Conv3D:output:0)conv3d_221/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_221/BiasAdd�
IdentityIdentityconv3d_221/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_217/BiasAdd/ReadVariableOp!^conv3d_217/Conv3D/ReadVariableOp"^conv3d_218/BiasAdd/ReadVariableOp!^conv3d_218/Conv3D/ReadVariableOp"^conv3d_219/BiasAdd/ReadVariableOp!^conv3d_219/Conv3D/ReadVariableOp"^conv3d_220/BiasAdd/ReadVariableOp!^conv3d_220/Conv3D/ReadVariableOp"^conv3d_221/BiasAdd/ReadVariableOp!^conv3d_221/Conv3D/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_217/BiasAdd/ReadVariableOp!conv3d_217/BiasAdd/ReadVariableOp2D
 conv3d_217/Conv3D/ReadVariableOp conv3d_217/Conv3D/ReadVariableOp2F
!conv3d_218/BiasAdd/ReadVariableOp!conv3d_218/BiasAdd/ReadVariableOp2D
 conv3d_218/Conv3D/ReadVariableOp conv3d_218/Conv3D/ReadVariableOp2F
!conv3d_219/BiasAdd/ReadVariableOp!conv3d_219/BiasAdd/ReadVariableOp2D
 conv3d_219/Conv3D/ReadVariableOp conv3d_219/Conv3D/ReadVariableOp2F
!conv3d_220/BiasAdd/ReadVariableOp!conv3d_220/BiasAdd/ReadVariableOp2D
 conv3d_220/Conv3D/ReadVariableOp conv3d_220/Conv3D/ReadVariableOp2F
!conv3d_221/BiasAdd/ReadVariableOp!conv3d_221/BiasAdd/ReadVariableOp2D
 conv3d_221/Conv3D/ReadVariableOp conv3d_221/Conv3D/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
d
H__inference_reshape_95_layer_call_and_return_conditional_losses_11061002

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
�
V
6__inference_range_conversion_47_layer_call_fn_11060837

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
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_110599532
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
q
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_11060849

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
�
S
7__inference_average_pooling3d_85_layer_call_fn_11060874

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
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_110598832
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
�
&__inference_signature_wrapper_11060558	
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
#__inference__wrapped_model_110598702
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
�
+__inference_model_47_layer_call_fn_11060616

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
F__inference_model_47_layer_call_and_return_conditional_losses_110603412
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
-__inference_conv3d_221_layer_call_fn_11061051

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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_110601232
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
�
�
-__inference_conv3d_217_layer_call_fn_11060858

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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_110599722
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
��
�

F__inference_model_47_layer_call_and_return_conditional_losses_11060832

inputsG
)conv3d_217_conv3d_readvariableop_resource:8
*conv3d_217_biasadd_readvariableop_resource:G
)conv3d_218_conv3d_readvariableop_resource:8
*conv3d_218_biasadd_readvariableop_resource:9
'dense_47_matmul_readvariableop_resource:@@6
(dense_47_biasadd_readvariableop_resource:@G
)conv3d_219_conv3d_readvariableop_resource:8
*conv3d_219_biasadd_readvariableop_resource:G
)conv3d_220_conv3d_readvariableop_resource:8
*conv3d_220_biasadd_readvariableop_resource:G
)conv3d_221_conv3d_readvariableop_resource:8
*conv3d_221_biasadd_readvariableop_resource:
identity��!conv3d_217/BiasAdd/ReadVariableOp� conv3d_217/Conv3D/ReadVariableOp�!conv3d_218/BiasAdd/ReadVariableOp� conv3d_218/Conv3D/ReadVariableOp�!conv3d_219/BiasAdd/ReadVariableOp� conv3d_219/Conv3D/ReadVariableOp�!conv3d_220/BiasAdd/ReadVariableOp� conv3d_220/Conv3D/ReadVariableOp�!conv3d_221/BiasAdd/ReadVariableOp� conv3d_221/Conv3D/ReadVariableOp�dense_47/BiasAdd/ReadVariableOp�dense_47/MatMul/ReadVariableOp�
0tf.__operators__.getitem_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_240/strided_slice/stack�
2tf.__operators__.getitem_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_240/strided_slice/stack_1�
2tf.__operators__.getitem_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_240/strided_slice/stack_2�
*tf.__operators__.getitem_240/strided_sliceStridedSliceinputs9tf.__operators__.getitem_240/strided_slice/stack:output:0;tf.__operators__.getitem_240/strided_slice/stack_1:output:0;tf.__operators__.getitem_240/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_240/strided_slice{
range_conversion_47/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_47/sub/y�
range_conversion_47/subSub3tf.__operators__.getitem_240/strided_slice:output:0"range_conversion_47/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/sub�
range_conversion_47/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_47/truediv/y�
range_conversion_47/truedivRealDivrange_conversion_47/sub:z:0&range_conversion_47/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/truediv{
range_conversion_47/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_47/mul/y�
range_conversion_47/mulMulrange_conversion_47/truediv:z:0"range_conversion_47/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/mul{
range_conversion_47/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_47/add/y�
range_conversion_47/addAddV2range_conversion_47/mul:z:0"range_conversion_47/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_47/add�
0tf.__operators__.getitem_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_241/strided_slice/stack�
2tf.__operators__.getitem_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_241/strided_slice/stack_1�
2tf.__operators__.getitem_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_241/strided_slice/stack_2�
*tf.__operators__.getitem_241/strided_sliceStridedSliceinputs9tf.__operators__.getitem_241/strided_slice/stack:output:0;tf.__operators__.getitem_241/strided_slice/stack_1:output:0;tf.__operators__.getitem_241/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_241/strided_slicex
tf.concat_289/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_289/concat/axis�
tf.concat_289/concatConcatV2range_conversion_47/add:z:03tf.__operators__.getitem_241/strided_slice:output:0"tf.concat_289/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_289/concat�
 conv3d_217/Conv3D/ReadVariableOpReadVariableOp)conv3d_217_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_217/Conv3D/ReadVariableOp�
conv3d_217/Conv3DConv3Dtf.concat_289/concat:output:0(conv3d_217/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_217/Conv3D�
!conv3d_217/BiasAdd/ReadVariableOpReadVariableOp*conv3d_217_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_217/BiasAdd/ReadVariableOp�
conv3d_217/BiasAddBiasAddconv3d_217/Conv3D:output:0)conv3d_217/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_217/BiasAdd�
conv3d_217/SoftplusSoftplusconv3d_217/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_217/Softplus�
#average_pooling3d_85/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_85/transpose/perm�
average_pooling3d_85/transpose	Transpose!conv3d_217/Softplus:activations:0,average_pooling3d_85/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_85/transpose�
average_pooling3d_85/AvgPool3D	AvgPool3D"average_pooling3d_85/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_85/AvgPool3D�
%average_pooling3d_85/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_85/transpose_1/perm�
 average_pooling3d_85/transpose_1	Transpose'average_pooling3d_85/AvgPool3D:output:0.average_pooling3d_85/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_85/transpose_1�
 conv3d_218/Conv3D/ReadVariableOpReadVariableOp)conv3d_218_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_218/Conv3D/ReadVariableOp�
conv3d_218/Conv3DConv3D$average_pooling3d_85/transpose_1:y:0(conv3d_218/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_218/Conv3D�
!conv3d_218/BiasAdd/ReadVariableOpReadVariableOp*conv3d_218_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_218/BiasAdd/ReadVariableOp�
conv3d_218/BiasAddBiasAddconv3d_218/Conv3D:output:0)conv3d_218/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_218/BiasAdd�
conv3d_218/SoftplusSoftplusconv3d_218/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_218/Softplus�
#average_pooling3d_86/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_86/transpose/perm�
average_pooling3d_86/transpose	Transpose!conv3d_218/Softplus:activations:0,average_pooling3d_86/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_86/transpose�
average_pooling3d_86/AvgPool3D	AvgPool3D"average_pooling3d_86/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_86/AvgPool3D�
%average_pooling3d_86/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_86/transpose_1/perm�
 average_pooling3d_86/transpose_1	Transpose'average_pooling3d_86/AvgPool3D:output:0.average_pooling3d_86/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_86/transpose_1x
reshape_94/ShapeShape$average_pooling3d_86/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_94/Shape�
reshape_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_94/strided_slice/stack�
 reshape_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_94/strided_slice/stack_1�
 reshape_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_94/strided_slice/stack_2�
reshape_94/strided_sliceStridedSlicereshape_94/Shape:output:0'reshape_94/strided_slice/stack:output:0)reshape_94/strided_slice/stack_1:output:0)reshape_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_94/strided_slicez
reshape_94/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_94/Reshape/shape/1�
reshape_94/Reshape/shapePack!reshape_94/strided_slice:output:0#reshape_94/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_94/Reshape/shape�
reshape_94/ReshapeReshape$average_pooling3d_86/transpose_1:y:0!reshape_94/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_94/Reshape�
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_47/MatMul/ReadVariableOp�
dense_47/MatMulMatMulreshape_94/Reshape:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_47/MatMul�
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_47/BiasAdd/ReadVariableOp�
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_47/BiasAdd
dense_47/SoftplusSoftplusdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_47/Softpluss
reshape_95/ShapeShapedense_47/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_95/Shape�
reshape_95/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_95/strided_slice/stack�
 reshape_95/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_95/strided_slice/stack_1�
 reshape_95/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_95/strided_slice/stack_2�
reshape_95/strided_sliceStridedSlicereshape_95/Shape:output:0'reshape_95/strided_slice/stack:output:0)reshape_95/strided_slice/stack_1:output:0)reshape_95/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_95/strided_slicez
reshape_95/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/1z
reshape_95/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/2z
reshape_95/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/3z
reshape_95/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_95/Reshape/shape/4�
reshape_95/Reshape/shapePack!reshape_95/strided_slice:output:0#reshape_95/Reshape/shape/1:output:0#reshape_95/Reshape/shape/2:output:0#reshape_95/Reshape/shape/3:output:0#reshape_95/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_95/Reshape/shape�
reshape_95/ReshapeReshapedense_47/Softplus:activations:0!reshape_95/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_95/Reshape�
tf.reshape_338/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_338/Reshape/shape�
tf.reshape_338/ReshapeReshapereshape_95/Reshape:output:0%tf.reshape_338/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_338/Reshape�
tf.tile_169/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_169/Tile/multiples�
tf.tile_169/TileTiletf.reshape_338/Reshape:output:0#tf.tile_169/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_169/Tile�
tf.reshape_339/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_339/Reshape/shape�
tf.reshape_339/ReshapeReshapetf.tile_169/Tile:output:0%tf.reshape_339/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_339/Reshapex
tf.concat_290/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_290/concat/axis�
tf.concat_290/concatConcatV2tf.reshape_339/Reshape:output:0!conv3d_218/Softplus:activations:0"tf.concat_290/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_290/concat�
 conv3d_219/Conv3D/ReadVariableOpReadVariableOp)conv3d_219_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_219/Conv3D/ReadVariableOp�
conv3d_219/Conv3DConv3Dtf.concat_290/concat:output:0(conv3d_219/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_219/Conv3D�
!conv3d_219/BiasAdd/ReadVariableOpReadVariableOp*conv3d_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_219/BiasAdd/ReadVariableOp�
conv3d_219/BiasAddBiasAddconv3d_219/Conv3D:output:0)conv3d_219/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_219/BiasAdd�
conv3d_219/SoftplusSoftplusconv3d_219/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_219/Softplus�
tf.reshape_340/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_340/Reshape/shape�
tf.reshape_340/ReshapeReshape!conv3d_219/Softplus:activations:0%tf.reshape_340/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_340/Reshape�
tf.tile_170/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_170/Tile/multiples�
tf.tile_170/TileTiletf.reshape_340/Reshape:output:0#tf.tile_170/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_170/Tile�
tf.reshape_341/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_341/Reshape/shape�
tf.reshape_341/ReshapeReshapetf.tile_170/Tile:output:0%tf.reshape_341/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_341/Reshapex
tf.concat_291/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_291/concat/axis�
tf.concat_291/concatConcatV2tf.reshape_341/Reshape:output:0!conv3d_217/Softplus:activations:0"tf.concat_291/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_291/concat�
 conv3d_220/Conv3D/ReadVariableOpReadVariableOp)conv3d_220_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_220/Conv3D/ReadVariableOp�
conv3d_220/Conv3DConv3Dtf.concat_291/concat:output:0(conv3d_220/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_220/Conv3D�
!conv3d_220/BiasAdd/ReadVariableOpReadVariableOp*conv3d_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_220/BiasAdd/ReadVariableOp�
conv3d_220/BiasAddBiasAddconv3d_220/Conv3D:output:0)conv3d_220/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_220/BiasAdd�
conv3d_220/SoftplusSoftplusconv3d_220/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_220/Softplus�
 conv3d_221/Conv3D/ReadVariableOpReadVariableOp)conv3d_221_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_221/Conv3D/ReadVariableOp�
conv3d_221/Conv3DConv3D!conv3d_220/Softplus:activations:0(conv3d_221/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_221/Conv3D�
!conv3d_221/BiasAdd/ReadVariableOpReadVariableOp*conv3d_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_221/BiasAdd/ReadVariableOp�
conv3d_221/BiasAddBiasAddconv3d_221/Conv3D:output:0)conv3d_221/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_221/BiasAdd�
IdentityIdentityconv3d_221/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_217/BiasAdd/ReadVariableOp!^conv3d_217/Conv3D/ReadVariableOp"^conv3d_218/BiasAdd/ReadVariableOp!^conv3d_218/Conv3D/ReadVariableOp"^conv3d_219/BiasAdd/ReadVariableOp!^conv3d_219/Conv3D/ReadVariableOp"^conv3d_220/BiasAdd/ReadVariableOp!^conv3d_220/Conv3D/ReadVariableOp"^conv3d_221/BiasAdd/ReadVariableOp!^conv3d_221/Conv3D/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_217/BiasAdd/ReadVariableOp!conv3d_217/BiasAdd/ReadVariableOp2D
 conv3d_217/Conv3D/ReadVariableOp conv3d_217/Conv3D/ReadVariableOp2F
!conv3d_218/BiasAdd/ReadVariableOp!conv3d_218/BiasAdd/ReadVariableOp2D
 conv3d_218/Conv3D/ReadVariableOp conv3d_218/Conv3D/ReadVariableOp2F
!conv3d_219/BiasAdd/ReadVariableOp!conv3d_219/BiasAdd/ReadVariableOp2D
 conv3d_219/Conv3D/ReadVariableOp conv3d_219/Conv3D/ReadVariableOp2F
!conv3d_220/BiasAdd/ReadVariableOp!conv3d_220/BiasAdd/ReadVariableOp2D
 conv3d_220/Conv3D/ReadVariableOp conv3d_220/Conv3D/ReadVariableOp2F
!conv3d_221/BiasAdd/ReadVariableOp!conv3d_221/BiasAdd/ReadVariableOp2D
 conv3d_221/Conv3D/ReadVariableOp conv3d_221/Conv3D/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_model_47_layer_call_fn_11060157	
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
F__inference_model_47_layer_call_and_return_conditional_losses_110601302
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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_11060123

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
+__inference_model_47_layer_call_fn_11060397	
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
F__inference_model_47_layer_call_and_return_conditional_losses_110603412
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
�
+__inference_model_47_layer_call_fn_11060587

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
F__inference_model_47_layer_call_and_return_conditional_losses_110601302
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
n
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11060013

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

conv3d_221<
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
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
regularization_losses
	variables
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
&regularization_losses
'	variables
(trainable_variables
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*regularization_losses
+	variables
,trainable_variables
-	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4regularization_losses
5	variables
6trainable_variables
7	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8regularization_losses
9	variables
:trainable_variables
;	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Bregularization_losses
C	variables
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
Lregularization_losses
M	variables
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
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Zkernel
[bias
\regularization_losses
]	variables
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
`layer_regularization_losses

alayers
regularization_losses
blayer_metrics
	variables
cnon_trainable_variables
trainable_variables
dmetrics
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
elayer_regularization_losses

flayers
regularization_losses
glayer_metrics
	variables
hnon_trainable_variables
 trainable_variables
imetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_217/kernel
: 2conv3d_217/bias
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
jlayer_regularization_losses

klayers
&regularization_losses
llayer_metrics
'	variables
mnon_trainable_variables
(trainable_variables
nmetrics
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
olayer_regularization_losses

players
*regularization_losses
qlayer_metrics
+	variables
rnon_trainable_variables
,trainable_variables
smetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_218/kernel
: 2conv3d_218/bias
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
�
tlayer_regularization_losses

ulayers
0regularization_losses
vlayer_metrics
1	variables
wnon_trainable_variables
2trainable_variables
xmetrics
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
ylayer_regularization_losses

zlayers
4regularization_losses
{layer_metrics
5	variables
|non_trainable_variables
6trainable_variables
}metrics
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
~layer_regularization_losses

layers
8regularization_losses
�layer_metrics
9	variables
�non_trainable_variables
:trainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_47/kernel
:@ 2dense_47/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
>regularization_losses
�layer_metrics
?	variables
�non_trainable_variables
@trainable_variables
�metrics
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
 �layer_regularization_losses
�layers
Bregularization_losses
�layer_metrics
C	variables
�non_trainable_variables
Dtrainable_variables
�metrics
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
1:/ 2conv3d_219/kernel
: 2conv3d_219/bias
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
Lregularization_losses
�layer_metrics
M	variables
�non_trainable_variables
Ntrainable_variables
�metrics
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
1:/ 2conv3d_220/kernel
: 2conv3d_220/bias
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
Vregularization_losses
�layer_metrics
W	variables
�non_trainable_variables
Xtrainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_221/kernel
: 2conv3d_221/bias
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
\regularization_losses
�layer_metrics
]	variables
�non_trainable_variables
^trainable_variables
�metrics
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
+__inference_model_47_layer_call_fn_11060157
+__inference_model_47_layer_call_fn_11060587
+__inference_model_47_layer_call_fn_11060616
+__inference_model_47_layer_call_fn_11060397�
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
F__inference_model_47_layer_call_and_return_conditional_losses_11060724
F__inference_model_47_layer_call_and_return_conditional_losses_11060832
F__inference_model_47_layer_call_and_return_conditional_losses_11060462
F__inference_model_47_layer_call_and_return_conditional_losses_11060527�
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
#__inference__wrapped_model_11059870input"�
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
6__inference_range_conversion_47_layer_call_fn_11060837�
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
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_11060849�
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
-__inference_conv3d_217_layer_call_fn_11060858�
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
H__inference_conv3d_217_layer_call_and_return_conditional_losses_11060869�
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
7__inference_average_pooling3d_85_layer_call_fn_11060874
7__inference_average_pooling3d_85_layer_call_fn_11060879�
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
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11060888
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11060897�
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
-__inference_conv3d_218_layer_call_fn_11060906�
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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_11060917�
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
7__inference_average_pooling3d_86_layer_call_fn_11060922
7__inference_average_pooling3d_86_layer_call_fn_11060927�
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
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11060936
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11060945�
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
-__inference_reshape_94_layer_call_fn_11060950�
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
H__inference_reshape_94_layer_call_and_return_conditional_losses_11060962�
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
+__inference_dense_47_layer_call_fn_11060971�
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
F__inference_dense_47_layer_call_and_return_conditional_losses_11060982�
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
-__inference_reshape_95_layer_call_fn_11060987�
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
H__inference_reshape_95_layer_call_and_return_conditional_losses_11061002�
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
-__inference_conv3d_219_layer_call_fn_11061011�
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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_11061022�
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
-__inference_conv3d_220_layer_call_fn_11061031�
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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_11061042�
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
-__inference_conv3d_221_layer_call_fn_11061051�
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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_11061061�
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
&__inference_signature_wrapper_11060558input"�
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
#__inference__wrapped_model_11059870�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "C�@
>

conv3d_2210�-

conv3d_221����������
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11060888�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_85_layer_call_and_return_conditional_losses_11060897p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_85_layer_call_fn_11060874�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_85_layer_call_fn_11060879c;�8
1�.
,�)
inputs���������
� "$�!����������
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11060936�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_86_layer_call_and_return_conditional_losses_11060945p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_86_layer_call_fn_11060922�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_86_layer_call_fn_11060927c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_217_layer_call_and_return_conditional_losses_11060869t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_217_layer_call_fn_11060858g$%;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_218_layer_call_and_return_conditional_losses_11060917t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_218_layer_call_fn_11060906g./;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_219_layer_call_and_return_conditional_losses_11061022tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_219_layer_call_fn_11061011gJK;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_220_layer_call_and_return_conditional_losses_11061042tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_220_layer_call_fn_11061031gTU;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_221_layer_call_and_return_conditional_losses_11061061tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_221_layer_call_fn_11061051gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_47_layer_call_and_return_conditional_losses_11060982\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_47_layer_call_fn_11060971O<=/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_47_layer_call_and_return_conditional_losses_11060462�$%./<=JKTUZ[B�?
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
F__inference_model_47_layer_call_and_return_conditional_losses_11060527�$%./<=JKTUZ[B�?
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
F__inference_model_47_layer_call_and_return_conditional_losses_11060724�$%./<=JKTUZ[C�@
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
F__inference_model_47_layer_call_and_return_conditional_losses_11060832�$%./<=JKTUZ[C�@
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
+__inference_model_47_layer_call_fn_11060157x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_47_layer_call_fn_11060397x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_47_layer_call_fn_11060587y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_47_layer_call_fn_11060616y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_47_layer_call_and_return_conditional_losses_11060849t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_47_layer_call_fn_11060837g?�<
5�2
0�-

parameters���������
� "$�!����������
H__inference_reshape_94_layer_call_and_return_conditional_losses_11060962d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
-__inference_reshape_94_layer_call_fn_11060950W;�8
1�.
,�)
inputs���������
� "����������@�
H__inference_reshape_95_layer_call_and_return_conditional_losses_11061002d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
-__inference_reshape_95_layer_call_fn_11060987W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_11060558�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_2210�-

conv3d_221���������