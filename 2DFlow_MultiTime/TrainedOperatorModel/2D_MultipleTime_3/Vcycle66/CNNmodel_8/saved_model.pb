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
conv3d_357/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_357/kernel
�
%conv3d_357/kernel/Read/ReadVariableOpReadVariableOpconv3d_357/kernel**
_output_shapes
:*
dtype0
v
conv3d_357/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_357/bias
o
#conv3d_357/bias/Read/ReadVariableOpReadVariableOpconv3d_357/bias*
_output_shapes
:*
dtype0
z
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_67/kernel
s
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes

:@@*
dtype0
r
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_67/bias
k
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
_output_shapes
:@*
dtype0
�
conv3d_358/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_358/kernel
�
%conv3d_358/kernel/Read/ReadVariableOpReadVariableOpconv3d_358/kernel**
_output_shapes
:*
dtype0
v
conv3d_358/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_358/bias
o
#conv3d_358/bias/Read/ReadVariableOpReadVariableOpconv3d_358/bias*
_output_shapes
:*
dtype0
�
conv3d_359/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_359/kernel
�
%conv3d_359/kernel/Read/ReadVariableOpReadVariableOpconv3d_359/kernel**
_output_shapes
:*
dtype0
v
conv3d_359/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_359/bias
o
#conv3d_359/bias/Read/ReadVariableOpReadVariableOpconv3d_359/bias*
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
VARIABLE_VALUEconv3d_357/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_357/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_67/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_358/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_358/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_359/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_359/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_357/kernelconv3d_357/biasdense_67/kerneldense_67/biasconv3d_358/kernelconv3d_358/biasconv3d_359/kernelconv3d_359/bias*
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
&__inference_signature_wrapper_18239526
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_357/kernel/Read/ReadVariableOp#conv3d_357/bias/Read/ReadVariableOp#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOp%conv3d_358/kernel/Read/ReadVariableOp#conv3d_358/bias/Read/ReadVariableOp%conv3d_359/kernel/Read/ReadVariableOp#conv3d_359/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_18239938
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_357/kernelconv3d_357/biasdense_67/kerneldense_67/biasconv3d_358/kernelconv3d_358/biasconv3d_359/kernelconv3d_359/bias*
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
$__inference__traced_restore_18239972��
�
e
I__inference_reshape_134_layer_call_and_return_conditional_losses_18239812

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

�
+__inference_model_67_layer_call_fn_18239239	
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
F__inference_model_67_layer_call_and_return_conditional_losses_182392202
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
F__inference_model_67_layer_call_and_return_conditional_losses_18239220

inputs1
conv3d_357_18239115:!
conv3d_357_18239117:#
dense_67_18239156:@@
dense_67_18239158:@1
conv3d_358_18239198:!
conv3d_358_18239200:1
conv3d_359_18239214:!
conv3d_359_18239216:
identity��"conv3d_357/StatefulPartitionedCall�"conv3d_358/StatefulPartitionedCall�"conv3d_359/StatefulPartitionedCall� dense_67/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
#range_conversion_67/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
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
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_182390952%
#range_conversion_67/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_642/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_642/concat/axis�
tf.concat_642/concatConcatV2,range_conversion_67/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_642/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_642/concat�
"conv3d_357/StatefulPartitionedCallStatefulPartitionedCalltf.concat_642/concat:output:0conv3d_357_18239115conv3d_357_18239117*
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
H__inference_conv3d_357_layer_call_and_return_conditional_losses_182391142$
"conv3d_357/StatefulPartitionedCall�
%average_pooling3d_145/PartitionedCallPartitionedCall+conv3d_357/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_182391282'
%average_pooling3d_145/PartitionedCall�
reshape_134/PartitionedCallPartitionedCall.average_pooling3d_145/PartitionedCall:output:0*
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
I__inference_reshape_134_layer_call_and_return_conditional_losses_182391422
reshape_134/PartitionedCall�
 dense_67/StatefulPartitionedCallStatefulPartitionedCall$reshape_134/PartitionedCall:output:0dense_67_18239156dense_67_18239158*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_182391552"
 dense_67/StatefulPartitionedCall�
reshape_135/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
I__inference_reshape_135_layer_call_and_return_conditional_losses_182391762
reshape_135/PartitionedCall�
tf.reshape_814/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_814/Reshape/shape�
tf.reshape_814/ReshapeReshape$reshape_135/PartitionedCall:output:0%tf.reshape_814/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_814/Reshape�
tf.tile_407/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_407/Tile/multiples�
tf.tile_407/TileTiletf.reshape_814/Reshape:output:0#tf.tile_407/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_407/Tile�
tf.reshape_815/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_815/Reshape/shape�
tf.reshape_815/ReshapeReshapetf.tile_407/Tile:output:0%tf.reshape_815/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_815/Reshapex
tf.concat_643/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_643/concat/axis�
tf.concat_643/concatConcatV2tf.reshape_815/Reshape:output:0+conv3d_357/StatefulPartitionedCall:output:0"tf.concat_643/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_643/concat�
"conv3d_358/StatefulPartitionedCallStatefulPartitionedCalltf.concat_643/concat:output:0conv3d_358_18239198conv3d_358_18239200*
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
H__inference_conv3d_358_layer_call_and_return_conditional_losses_182391972$
"conv3d_358/StatefulPartitionedCall�
"conv3d_359/StatefulPartitionedCallStatefulPartitionedCall+conv3d_358/StatefulPartitionedCall:output:0conv3d_359_18239214conv3d_359_18239216*
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
H__inference_conv3d_359_layer_call_and_return_conditional_losses_182392132$
"conv3d_359/StatefulPartitionedCall�
IdentityIdentity+conv3d_359/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_357/StatefulPartitionedCall#^conv3d_358/StatefulPartitionedCall#^conv3d_359/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_357/StatefulPartitionedCall"conv3d_357/StatefulPartitionedCall2H
"conv3d_358/StatefulPartitionedCall"conv3d_358/StatefulPartitionedCall2H
"conv3d_359/StatefulPartitionedCall"conv3d_359/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

�
+__inference_model_67_layer_call_fn_18239547

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
F__inference_model_67_layer_call_and_return_conditional_losses_182392202
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

�
+__inference_model_67_layer_call_fn_18239568

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
F__inference_model_67_layer_call_and_return_conditional_losses_182393712
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
�
J
.__inference_reshape_135_layer_call_fn_18239837

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
I__inference_reshape_135_layer_call_and_return_conditional_losses_182391762
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
H__inference_conv3d_358_layer_call_and_return_conditional_losses_18239872

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
-__inference_conv3d_359_layer_call_fn_18239881

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
H__inference_conv3d_359_layer_call_and_return_conditional_losses_182392132
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
�
�
-__inference_conv3d_358_layer_call_fn_18239861

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
H__inference_conv3d_358_layer_call_and_return_conditional_losses_182391972
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
�D
�
F__inference_model_67_layer_call_and_return_conditional_losses_18239371

inputs1
conv3d_357_18239339:!
conv3d_357_18239341:#
dense_67_18239346:@@
dense_67_18239348:@1
conv3d_358_18239360:!
conv3d_358_18239362:1
conv3d_359_18239365:!
conv3d_359_18239367:
identity��"conv3d_357/StatefulPartitionedCall�"conv3d_358/StatefulPartitionedCall�"conv3d_359/StatefulPartitionedCall� dense_67/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
#range_conversion_67/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
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
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_182390952%
#range_conversion_67/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_642/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_642/concat/axis�
tf.concat_642/concatConcatV2,range_conversion_67/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_642/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_642/concat�
"conv3d_357/StatefulPartitionedCallStatefulPartitionedCalltf.concat_642/concat:output:0conv3d_357_18239339conv3d_357_18239341*
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
H__inference_conv3d_357_layer_call_and_return_conditional_losses_182391142$
"conv3d_357/StatefulPartitionedCall�
%average_pooling3d_145/PartitionedCallPartitionedCall+conv3d_357/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_182391282'
%average_pooling3d_145/PartitionedCall�
reshape_134/PartitionedCallPartitionedCall.average_pooling3d_145/PartitionedCall:output:0*
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
I__inference_reshape_134_layer_call_and_return_conditional_losses_182391422
reshape_134/PartitionedCall�
 dense_67/StatefulPartitionedCallStatefulPartitionedCall$reshape_134/PartitionedCall:output:0dense_67_18239346dense_67_18239348*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_182391552"
 dense_67/StatefulPartitionedCall�
reshape_135/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
I__inference_reshape_135_layer_call_and_return_conditional_losses_182391762
reshape_135/PartitionedCall�
tf.reshape_814/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_814/Reshape/shape�
tf.reshape_814/ReshapeReshape$reshape_135/PartitionedCall:output:0%tf.reshape_814/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_814/Reshape�
tf.tile_407/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_407/Tile/multiples�
tf.tile_407/TileTiletf.reshape_814/Reshape:output:0#tf.tile_407/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_407/Tile�
tf.reshape_815/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_815/Reshape/shape�
tf.reshape_815/ReshapeReshapetf.tile_407/Tile:output:0%tf.reshape_815/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_815/Reshapex
tf.concat_643/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_643/concat/axis�
tf.concat_643/concatConcatV2tf.reshape_815/Reshape:output:0+conv3d_357/StatefulPartitionedCall:output:0"tf.concat_643/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_643/concat�
"conv3d_358/StatefulPartitionedCallStatefulPartitionedCalltf.concat_643/concat:output:0conv3d_358_18239360conv3d_358_18239362*
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
H__inference_conv3d_358_layer_call_and_return_conditional_losses_182391972$
"conv3d_358/StatefulPartitionedCall�
"conv3d_359/StatefulPartitionedCallStatefulPartitionedCall+conv3d_358/StatefulPartitionedCall:output:0conv3d_359_18239365conv3d_359_18239367*
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
H__inference_conv3d_359_layer_call_and_return_conditional_losses_182392132$
"conv3d_359/StatefulPartitionedCall�
IdentityIdentity+conv3d_359/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_357/StatefulPartitionedCall#^conv3d_358/StatefulPartitionedCall#^conv3d_359/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_357/StatefulPartitionedCall"conv3d_357/StatefulPartitionedCall2H
"conv3d_358/StatefulPartitionedCall"conv3d_358/StatefulPartitionedCall2H
"conv3d_359/StatefulPartitionedCall"conv3d_359/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_357_layer_call_fn_18239756

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
H__inference_conv3d_357_layer_call_and_return_conditional_losses_182391142
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
�D
�
F__inference_model_67_layer_call_and_return_conditional_losses_18239457	
input1
conv3d_357_18239425:!
conv3d_357_18239427:#
dense_67_18239432:@@
dense_67_18239434:@1
conv3d_358_18239446:!
conv3d_358_18239448:1
conv3d_359_18239451:!
conv3d_359_18239453:
identity��"conv3d_357/StatefulPartitionedCall�"conv3d_358/StatefulPartitionedCall�"conv3d_359/StatefulPartitionedCall� dense_67/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinput9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
#range_conversion_67/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
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
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_182390952%
#range_conversion_67/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinput9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_642/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_642/concat/axis�
tf.concat_642/concatConcatV2,range_conversion_67/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_642/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_642/concat�
"conv3d_357/StatefulPartitionedCallStatefulPartitionedCalltf.concat_642/concat:output:0conv3d_357_18239425conv3d_357_18239427*
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
H__inference_conv3d_357_layer_call_and_return_conditional_losses_182391142$
"conv3d_357/StatefulPartitionedCall�
%average_pooling3d_145/PartitionedCallPartitionedCall+conv3d_357/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_182391282'
%average_pooling3d_145/PartitionedCall�
reshape_134/PartitionedCallPartitionedCall.average_pooling3d_145/PartitionedCall:output:0*
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
I__inference_reshape_134_layer_call_and_return_conditional_losses_182391422
reshape_134/PartitionedCall�
 dense_67/StatefulPartitionedCallStatefulPartitionedCall$reshape_134/PartitionedCall:output:0dense_67_18239432dense_67_18239434*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_182391552"
 dense_67/StatefulPartitionedCall�
reshape_135/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
I__inference_reshape_135_layer_call_and_return_conditional_losses_182391762
reshape_135/PartitionedCall�
tf.reshape_814/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_814/Reshape/shape�
tf.reshape_814/ReshapeReshape$reshape_135/PartitionedCall:output:0%tf.reshape_814/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_814/Reshape�
tf.tile_407/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_407/Tile/multiples�
tf.tile_407/TileTiletf.reshape_814/Reshape:output:0#tf.tile_407/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_407/Tile�
tf.reshape_815/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_815/Reshape/shape�
tf.reshape_815/ReshapeReshapetf.tile_407/Tile:output:0%tf.reshape_815/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_815/Reshapex
tf.concat_643/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_643/concat/axis�
tf.concat_643/concatConcatV2tf.reshape_815/Reshape:output:0+conv3d_357/StatefulPartitionedCall:output:0"tf.concat_643/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_643/concat�
"conv3d_358/StatefulPartitionedCallStatefulPartitionedCalltf.concat_643/concat:output:0conv3d_358_18239446conv3d_358_18239448*
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
H__inference_conv3d_358_layer_call_and_return_conditional_losses_182391972$
"conv3d_358/StatefulPartitionedCall�
"conv3d_359/StatefulPartitionedCallStatefulPartitionedCall+conv3d_358/StatefulPartitionedCall:output:0conv3d_359_18239451conv3d_359_18239453*
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
H__inference_conv3d_359_layer_call_and_return_conditional_losses_182392132$
"conv3d_359/StatefulPartitionedCall�
IdentityIdentity+conv3d_359/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_357/StatefulPartitionedCall#^conv3d_358/StatefulPartitionedCall#^conv3d_359/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_357/StatefulPartitionedCall"conv3d_357/StatefulPartitionedCall2H
"conv3d_358/StatefulPartitionedCall"conv3d_358/StatefulPartitionedCall2H
"conv3d_359/StatefulPartitionedCall"conv3d_359/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
H__inference_conv3d_357_layer_call_and_return_conditional_losses_18239767

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
F__inference_model_67_layer_call_and_return_conditional_losses_18239503	
input1
conv3d_357_18239471:!
conv3d_357_18239473:#
dense_67_18239478:@@
dense_67_18239480:@1
conv3d_358_18239492:!
conv3d_358_18239494:1
conv3d_359_18239497:!
conv3d_359_18239499:
identity��"conv3d_357/StatefulPartitionedCall�"conv3d_358/StatefulPartitionedCall�"conv3d_359/StatefulPartitionedCall� dense_67/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinput9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
#range_conversion_67/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
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
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_182390952%
#range_conversion_67/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinput9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_642/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_642/concat/axis�
tf.concat_642/concatConcatV2,range_conversion_67/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_642/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_642/concat�
"conv3d_357/StatefulPartitionedCallStatefulPartitionedCalltf.concat_642/concat:output:0conv3d_357_18239471conv3d_357_18239473*
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
H__inference_conv3d_357_layer_call_and_return_conditional_losses_182391142$
"conv3d_357/StatefulPartitionedCall�
%average_pooling3d_145/PartitionedCallPartitionedCall+conv3d_357/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_182391282'
%average_pooling3d_145/PartitionedCall�
reshape_134/PartitionedCallPartitionedCall.average_pooling3d_145/PartitionedCall:output:0*
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
I__inference_reshape_134_layer_call_and_return_conditional_losses_182391422
reshape_134/PartitionedCall�
 dense_67/StatefulPartitionedCallStatefulPartitionedCall$reshape_134/PartitionedCall:output:0dense_67_18239478dense_67_18239480*
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
F__inference_dense_67_layer_call_and_return_conditional_losses_182391552"
 dense_67/StatefulPartitionedCall�
reshape_135/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
I__inference_reshape_135_layer_call_and_return_conditional_losses_182391762
reshape_135/PartitionedCall�
tf.reshape_814/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_814/Reshape/shape�
tf.reshape_814/ReshapeReshape$reshape_135/PartitionedCall:output:0%tf.reshape_814/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_814/Reshape�
tf.tile_407/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_407/Tile/multiples�
tf.tile_407/TileTiletf.reshape_814/Reshape:output:0#tf.tile_407/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_407/Tile�
tf.reshape_815/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_815/Reshape/shape�
tf.reshape_815/ReshapeReshapetf.tile_407/Tile:output:0%tf.reshape_815/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_815/Reshapex
tf.concat_643/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_643/concat/axis�
tf.concat_643/concatConcatV2tf.reshape_815/Reshape:output:0+conv3d_357/StatefulPartitionedCall:output:0"tf.concat_643/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_643/concat�
"conv3d_358/StatefulPartitionedCallStatefulPartitionedCalltf.concat_643/concat:output:0conv3d_358_18239492conv3d_358_18239494*
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
H__inference_conv3d_358_layer_call_and_return_conditional_losses_182391972$
"conv3d_358/StatefulPartitionedCall�
"conv3d_359/StatefulPartitionedCallStatefulPartitionedCall+conv3d_358/StatefulPartitionedCall:output:0conv3d_359_18239497conv3d_359_18239499*
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
H__inference_conv3d_359_layer_call_and_return_conditional_losses_182392132$
"conv3d_359/StatefulPartitionedCall�
IdentityIdentity+conv3d_359/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_357/StatefulPartitionedCall#^conv3d_358/StatefulPartitionedCall#^conv3d_359/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_357/StatefulPartitionedCall"conv3d_357/StatefulPartitionedCall2H
"conv3d_358/StatefulPartitionedCall"conv3d_358/StatefulPartitionedCall2H
"conv3d_359/StatefulPartitionedCall"conv3d_359/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
F__inference_dense_67_layer_call_and_return_conditional_losses_18239155

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
.__inference_reshape_134_layer_call_fn_18239800

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
I__inference_reshape_134_layer_call_and_return_conditional_losses_182391422
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
�
T
8__inference_average_pooling3d_145_layer_call_fn_18239777

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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_182391282
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
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_18239095

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
H__inference_conv3d_359_layer_call_and_return_conditional_losses_18239213

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
F__inference_model_67_layer_call_and_return_conditional_losses_18239730

inputsG
)conv3d_357_conv3d_readvariableop_resource:8
*conv3d_357_biasadd_readvariableop_resource:9
'dense_67_matmul_readvariableop_resource:@@6
(dense_67_biasadd_readvariableop_resource:@G
)conv3d_358_conv3d_readvariableop_resource:8
*conv3d_358_biasadd_readvariableop_resource:G
)conv3d_359_conv3d_readvariableop_resource:8
*conv3d_359_biasadd_readvariableop_resource:
identity��!conv3d_357/BiasAdd/ReadVariableOp� conv3d_357/Conv3D/ReadVariableOp�!conv3d_358/BiasAdd/ReadVariableOp� conv3d_358/Conv3D/ReadVariableOp�!conv3d_359/BiasAdd/ReadVariableOp� conv3d_359/Conv3D/ReadVariableOp�dense_67/BiasAdd/ReadVariableOp�dense_67/MatMul/ReadVariableOp�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice{
range_conversion_67/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_67/sub/y�
range_conversion_67/subSub3tf.__operators__.getitem_470/strided_slice:output:0"range_conversion_67/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/sub�
range_conversion_67/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_67/truediv/y�
range_conversion_67/truedivRealDivrange_conversion_67/sub:z:0&range_conversion_67/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/truediv{
range_conversion_67/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_67/mul/y�
range_conversion_67/mulMulrange_conversion_67/truediv:z:0"range_conversion_67/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/mul{
range_conversion_67/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_67/add/y�
range_conversion_67/addAddV2range_conversion_67/mul:z:0"range_conversion_67/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/add�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_642/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_642/concat/axis�
tf.concat_642/concatConcatV2range_conversion_67/add:z:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_642/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_642/concat�
 conv3d_357/Conv3D/ReadVariableOpReadVariableOp)conv3d_357_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_357/Conv3D/ReadVariableOp�
conv3d_357/Conv3DConv3Dtf.concat_642/concat:output:0(conv3d_357/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_357/Conv3D�
!conv3d_357/BiasAdd/ReadVariableOpReadVariableOp*conv3d_357_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_357/BiasAdd/ReadVariableOp�
conv3d_357/BiasAddBiasAddconv3d_357/Conv3D:output:0)conv3d_357/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_357/BiasAdd�
conv3d_357/SoftplusSoftplusconv3d_357/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_357/Softplus�
$average_pooling3d_145/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_145/transpose/perm�
average_pooling3d_145/transpose	Transpose!conv3d_357/Softplus:activations:0-average_pooling3d_145/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_145/transpose�
average_pooling3d_145/AvgPool3D	AvgPool3D#average_pooling3d_145/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_145/AvgPool3D�
&average_pooling3d_145/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_145/transpose_1/perm�
!average_pooling3d_145/transpose_1	Transpose(average_pooling3d_145/AvgPool3D:output:0/average_pooling3d_145/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_145/transpose_1{
reshape_134/ShapeShape%average_pooling3d_145/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_134/Shape�
reshape_134/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_134/strided_slice/stack�
!reshape_134/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_134/strided_slice/stack_1�
!reshape_134/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_134/strided_slice/stack_2�
reshape_134/strided_sliceStridedSlicereshape_134/Shape:output:0(reshape_134/strided_slice/stack:output:0*reshape_134/strided_slice/stack_1:output:0*reshape_134/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_134/strided_slice|
reshape_134/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_134/Reshape/shape/1�
reshape_134/Reshape/shapePack"reshape_134/strided_slice:output:0$reshape_134/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_134/Reshape/shape�
reshape_134/ReshapeReshape%average_pooling3d_145/transpose_1:y:0"reshape_134/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_134/Reshape�
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_67/MatMul/ReadVariableOp�
dense_67/MatMulMatMulreshape_134/Reshape:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_67/MatMul�
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_67/BiasAdd/ReadVariableOp�
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_67/BiasAdd
dense_67/SoftplusSoftplusdense_67/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_67/Softplusu
reshape_135/ShapeShapedense_67/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_135/Shape�
reshape_135/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_135/strided_slice/stack�
!reshape_135/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_135/strided_slice/stack_1�
!reshape_135/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_135/strided_slice/stack_2�
reshape_135/strided_sliceStridedSlicereshape_135/Shape:output:0(reshape_135/strided_slice/stack:output:0*reshape_135/strided_slice/stack_1:output:0*reshape_135/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_135/strided_slice|
reshape_135/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/1|
reshape_135/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/2|
reshape_135/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/3|
reshape_135/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/4�
reshape_135/Reshape/shapePack"reshape_135/strided_slice:output:0$reshape_135/Reshape/shape/1:output:0$reshape_135/Reshape/shape/2:output:0$reshape_135/Reshape/shape/3:output:0$reshape_135/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_135/Reshape/shape�
reshape_135/ReshapeReshapedense_67/Softplus:activations:0"reshape_135/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_135/Reshape�
tf.reshape_814/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_814/Reshape/shape�
tf.reshape_814/ReshapeReshapereshape_135/Reshape:output:0%tf.reshape_814/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_814/Reshape�
tf.tile_407/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_407/Tile/multiples�
tf.tile_407/TileTiletf.reshape_814/Reshape:output:0#tf.tile_407/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_407/Tile�
tf.reshape_815/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_815/Reshape/shape�
tf.reshape_815/ReshapeReshapetf.tile_407/Tile:output:0%tf.reshape_815/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_815/Reshapex
tf.concat_643/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_643/concat/axis�
tf.concat_643/concatConcatV2tf.reshape_815/Reshape:output:0!conv3d_357/Softplus:activations:0"tf.concat_643/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_643/concat�
 conv3d_358/Conv3D/ReadVariableOpReadVariableOp)conv3d_358_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_358/Conv3D/ReadVariableOp�
conv3d_358/Conv3DConv3Dtf.concat_643/concat:output:0(conv3d_358/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_358/Conv3D�
!conv3d_358/BiasAdd/ReadVariableOpReadVariableOp*conv3d_358_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_358/BiasAdd/ReadVariableOp�
conv3d_358/BiasAddBiasAddconv3d_358/Conv3D:output:0)conv3d_358/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_358/BiasAdd�
conv3d_358/SoftplusSoftplusconv3d_358/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_358/Softplus�
 conv3d_359/Conv3D/ReadVariableOpReadVariableOp)conv3d_359_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_359/Conv3D/ReadVariableOp�
conv3d_359/Conv3DConv3D!conv3d_358/Softplus:activations:0(conv3d_359/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_359/Conv3D�
!conv3d_359/BiasAdd/ReadVariableOpReadVariableOp*conv3d_359_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_359/BiasAdd/ReadVariableOp�
conv3d_359/BiasAddBiasAddconv3d_359/Conv3D:output:0)conv3d_359/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_359/BiasAdd�
IdentityIdentityconv3d_359/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_357/BiasAdd/ReadVariableOp!^conv3d_357/Conv3D/ReadVariableOp"^conv3d_358/BiasAdd/ReadVariableOp!^conv3d_358/Conv3D/ReadVariableOp"^conv3d_359/BiasAdd/ReadVariableOp!^conv3d_359/Conv3D/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_357/BiasAdd/ReadVariableOp!conv3d_357/BiasAdd/ReadVariableOp2D
 conv3d_357/Conv3D/ReadVariableOp conv3d_357/Conv3D/ReadVariableOp2F
!conv3d_358/BiasAdd/ReadVariableOp!conv3d_358/BiasAdd/ReadVariableOp2D
 conv3d_358/Conv3D/ReadVariableOp conv3d_358/Conv3D/ReadVariableOp2F
!conv3d_359/BiasAdd/ReadVariableOp!conv3d_359/BiasAdd/ReadVariableOp2D
 conv3d_359/Conv3D/ReadVariableOp conv3d_359/Conv3D/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
T
8__inference_average_pooling3d_145_layer_call_fn_18239772

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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_182390552
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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239795

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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239055

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
e
I__inference_reshape_134_layer_call_and_return_conditional_losses_18239142

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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239786

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
+__inference_model_67_layer_call_fn_18239411	
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
F__inference_model_67_layer_call_and_return_conditional_losses_182393712
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
F__inference_dense_67_layer_call_and_return_conditional_losses_18239832

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
Ƈ
�
#__inference__wrapped_model_18239042	
inputP
2model_67_conv3d_357_conv3d_readvariableop_resource:A
3model_67_conv3d_357_biasadd_readvariableop_resource:B
0model_67_dense_67_matmul_readvariableop_resource:@@?
1model_67_dense_67_biasadd_readvariableop_resource:@P
2model_67_conv3d_358_conv3d_readvariableop_resource:A
3model_67_conv3d_358_biasadd_readvariableop_resource:P
2model_67_conv3d_359_conv3d_readvariableop_resource:A
3model_67_conv3d_359_biasadd_readvariableop_resource:
identity��*model_67/conv3d_357/BiasAdd/ReadVariableOp�)model_67/conv3d_357/Conv3D/ReadVariableOp�*model_67/conv3d_358/BiasAdd/ReadVariableOp�)model_67/conv3d_358/Conv3D/ReadVariableOp�*model_67/conv3d_359/BiasAdd/ReadVariableOp�)model_67/conv3d_359/Conv3D/ReadVariableOp�(model_67/dense_67/BiasAdd/ReadVariableOp�'model_67/dense_67/MatMul/ReadVariableOp�
9model_67/tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_67/tf.__operators__.getitem_470/strided_slice/stack�
;model_67/tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_67/tf.__operators__.getitem_470/strided_slice/stack_1�
;model_67/tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_67/tf.__operators__.getitem_470/strided_slice/stack_2�
3model_67/tf.__operators__.getitem_470/strided_sliceStridedSliceinputBmodel_67/tf.__operators__.getitem_470/strided_slice/stack:output:0Dmodel_67/tf.__operators__.getitem_470/strided_slice/stack_1:output:0Dmodel_67/tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_67/tf.__operators__.getitem_470/strided_slice�
"model_67/range_conversion_67/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_67/range_conversion_67/sub/y�
 model_67/range_conversion_67/subSub<model_67/tf.__operators__.getitem_470/strided_slice:output:0+model_67/range_conversion_67/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_67/range_conversion_67/sub�
&model_67/range_conversion_67/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_67/range_conversion_67/truediv/y�
$model_67/range_conversion_67/truedivRealDiv$model_67/range_conversion_67/sub:z:0/model_67/range_conversion_67/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_67/range_conversion_67/truediv�
"model_67/range_conversion_67/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_67/range_conversion_67/mul/y�
 model_67/range_conversion_67/mulMul(model_67/range_conversion_67/truediv:z:0+model_67/range_conversion_67/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_67/range_conversion_67/mul�
"model_67/range_conversion_67/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_67/range_conversion_67/add/y�
 model_67/range_conversion_67/addAddV2$model_67/range_conversion_67/mul:z:0+model_67/range_conversion_67/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_67/range_conversion_67/add�
9model_67/tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_67/tf.__operators__.getitem_471/strided_slice/stack�
;model_67/tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_67/tf.__operators__.getitem_471/strided_slice/stack_1�
;model_67/tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_67/tf.__operators__.getitem_471/strided_slice/stack_2�
3model_67/tf.__operators__.getitem_471/strided_sliceStridedSliceinputBmodel_67/tf.__operators__.getitem_471/strided_slice/stack:output:0Dmodel_67/tf.__operators__.getitem_471/strided_slice/stack_1:output:0Dmodel_67/tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_67/tf.__operators__.getitem_471/strided_slice�
"model_67/tf.concat_642/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_67/tf.concat_642/concat/axis�
model_67/tf.concat_642/concatConcatV2$model_67/range_conversion_67/add:z:0<model_67/tf.__operators__.getitem_471/strided_slice:output:0+model_67/tf.concat_642/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_67/tf.concat_642/concat�
)model_67/conv3d_357/Conv3D/ReadVariableOpReadVariableOp2model_67_conv3d_357_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_67/conv3d_357/Conv3D/ReadVariableOp�
model_67/conv3d_357/Conv3DConv3D&model_67/tf.concat_642/concat:output:01model_67/conv3d_357/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_67/conv3d_357/Conv3D�
*model_67/conv3d_357/BiasAdd/ReadVariableOpReadVariableOp3model_67_conv3d_357_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_67/conv3d_357/BiasAdd/ReadVariableOp�
model_67/conv3d_357/BiasAddBiasAdd#model_67/conv3d_357/Conv3D:output:02model_67/conv3d_357/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_67/conv3d_357/BiasAdd�
model_67/conv3d_357/SoftplusSoftplus$model_67/conv3d_357/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_67/conv3d_357/Softplus�
-model_67/average_pooling3d_145/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_67/average_pooling3d_145/transpose/perm�
(model_67/average_pooling3d_145/transpose	Transpose*model_67/conv3d_357/Softplus:activations:06model_67/average_pooling3d_145/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_67/average_pooling3d_145/transpose�
(model_67/average_pooling3d_145/AvgPool3D	AvgPool3D,model_67/average_pooling3d_145/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_67/average_pooling3d_145/AvgPool3D�
/model_67/average_pooling3d_145/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_67/average_pooling3d_145/transpose_1/perm�
*model_67/average_pooling3d_145/transpose_1	Transpose1model_67/average_pooling3d_145/AvgPool3D:output:08model_67/average_pooling3d_145/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_67/average_pooling3d_145/transpose_1�
model_67/reshape_134/ShapeShape.model_67/average_pooling3d_145/transpose_1:y:0*
T0*
_output_shapes
:2
model_67/reshape_134/Shape�
(model_67/reshape_134/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_67/reshape_134/strided_slice/stack�
*model_67/reshape_134/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_67/reshape_134/strided_slice/stack_1�
*model_67/reshape_134/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_67/reshape_134/strided_slice/stack_2�
"model_67/reshape_134/strided_sliceStridedSlice#model_67/reshape_134/Shape:output:01model_67/reshape_134/strided_slice/stack:output:03model_67/reshape_134/strided_slice/stack_1:output:03model_67/reshape_134/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_67/reshape_134/strided_slice�
$model_67/reshape_134/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_67/reshape_134/Reshape/shape/1�
"model_67/reshape_134/Reshape/shapePack+model_67/reshape_134/strided_slice:output:0-model_67/reshape_134/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_67/reshape_134/Reshape/shape�
model_67/reshape_134/ReshapeReshape.model_67/average_pooling3d_145/transpose_1:y:0+model_67/reshape_134/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_67/reshape_134/Reshape�
'model_67/dense_67/MatMul/ReadVariableOpReadVariableOp0model_67_dense_67_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_67/dense_67/MatMul/ReadVariableOp�
model_67/dense_67/MatMulMatMul%model_67/reshape_134/Reshape:output:0/model_67/dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_67/dense_67/MatMul�
(model_67/dense_67/BiasAdd/ReadVariableOpReadVariableOp1model_67_dense_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_67/dense_67/BiasAdd/ReadVariableOp�
model_67/dense_67/BiasAddBiasAdd"model_67/dense_67/MatMul:product:00model_67/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_67/dense_67/BiasAdd�
model_67/dense_67/SoftplusSoftplus"model_67/dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_67/dense_67/Softplus�
model_67/reshape_135/ShapeShape(model_67/dense_67/Softplus:activations:0*
T0*
_output_shapes
:2
model_67/reshape_135/Shape�
(model_67/reshape_135/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_67/reshape_135/strided_slice/stack�
*model_67/reshape_135/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_67/reshape_135/strided_slice/stack_1�
*model_67/reshape_135/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_67/reshape_135/strided_slice/stack_2�
"model_67/reshape_135/strided_sliceStridedSlice#model_67/reshape_135/Shape:output:01model_67/reshape_135/strided_slice/stack:output:03model_67/reshape_135/strided_slice/stack_1:output:03model_67/reshape_135/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_67/reshape_135/strided_slice�
$model_67/reshape_135/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_67/reshape_135/Reshape/shape/1�
$model_67/reshape_135/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_67/reshape_135/Reshape/shape/2�
$model_67/reshape_135/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_67/reshape_135/Reshape/shape/3�
$model_67/reshape_135/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_67/reshape_135/Reshape/shape/4�
"model_67/reshape_135/Reshape/shapePack+model_67/reshape_135/strided_slice:output:0-model_67/reshape_135/Reshape/shape/1:output:0-model_67/reshape_135/Reshape/shape/2:output:0-model_67/reshape_135/Reshape/shape/3:output:0-model_67/reshape_135/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_67/reshape_135/Reshape/shape�
model_67/reshape_135/ReshapeReshape(model_67/dense_67/Softplus:activations:0+model_67/reshape_135/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_67/reshape_135/Reshape�
%model_67/tf.reshape_814/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_67/tf.reshape_814/Reshape/shape�
model_67/tf.reshape_814/ReshapeReshape%model_67/reshape_135/Reshape:output:0.model_67/tf.reshape_814/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_67/tf.reshape_814/Reshape�
#model_67/tf.tile_407/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_67/tf.tile_407/Tile/multiples�
model_67/tf.tile_407/TileTile(model_67/tf.reshape_814/Reshape:output:0,model_67/tf.tile_407/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_67/tf.tile_407/Tile�
%model_67/tf.reshape_815/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_67/tf.reshape_815/Reshape/shape�
model_67/tf.reshape_815/ReshapeReshape"model_67/tf.tile_407/Tile:output:0.model_67/tf.reshape_815/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_67/tf.reshape_815/Reshape�
"model_67/tf.concat_643/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_67/tf.concat_643/concat/axis�
model_67/tf.concat_643/concatConcatV2(model_67/tf.reshape_815/Reshape:output:0*model_67/conv3d_357/Softplus:activations:0+model_67/tf.concat_643/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_67/tf.concat_643/concat�
)model_67/conv3d_358/Conv3D/ReadVariableOpReadVariableOp2model_67_conv3d_358_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_67/conv3d_358/Conv3D/ReadVariableOp�
model_67/conv3d_358/Conv3DConv3D&model_67/tf.concat_643/concat:output:01model_67/conv3d_358/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_67/conv3d_358/Conv3D�
*model_67/conv3d_358/BiasAdd/ReadVariableOpReadVariableOp3model_67_conv3d_358_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_67/conv3d_358/BiasAdd/ReadVariableOp�
model_67/conv3d_358/BiasAddBiasAdd#model_67/conv3d_358/Conv3D:output:02model_67/conv3d_358/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_67/conv3d_358/BiasAdd�
model_67/conv3d_358/SoftplusSoftplus$model_67/conv3d_358/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_67/conv3d_358/Softplus�
)model_67/conv3d_359/Conv3D/ReadVariableOpReadVariableOp2model_67_conv3d_359_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_67/conv3d_359/Conv3D/ReadVariableOp�
model_67/conv3d_359/Conv3DConv3D*model_67/conv3d_358/Softplus:activations:01model_67/conv3d_359/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_67/conv3d_359/Conv3D�
*model_67/conv3d_359/BiasAdd/ReadVariableOpReadVariableOp3model_67_conv3d_359_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_67/conv3d_359/BiasAdd/ReadVariableOp�
model_67/conv3d_359/BiasAddBiasAdd#model_67/conv3d_359/Conv3D:output:02model_67/conv3d_359/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_67/conv3d_359/BiasAdd�
IdentityIdentity$model_67/conv3d_359/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_67/conv3d_357/BiasAdd/ReadVariableOp*^model_67/conv3d_357/Conv3D/ReadVariableOp+^model_67/conv3d_358/BiasAdd/ReadVariableOp*^model_67/conv3d_358/Conv3D/ReadVariableOp+^model_67/conv3d_359/BiasAdd/ReadVariableOp*^model_67/conv3d_359/Conv3D/ReadVariableOp)^model_67/dense_67/BiasAdd/ReadVariableOp(^model_67/dense_67/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2X
*model_67/conv3d_357/BiasAdd/ReadVariableOp*model_67/conv3d_357/BiasAdd/ReadVariableOp2V
)model_67/conv3d_357/Conv3D/ReadVariableOp)model_67/conv3d_357/Conv3D/ReadVariableOp2X
*model_67/conv3d_358/BiasAdd/ReadVariableOp*model_67/conv3d_358/BiasAdd/ReadVariableOp2V
)model_67/conv3d_358/Conv3D/ReadVariableOp)model_67/conv3d_358/Conv3D/ReadVariableOp2X
*model_67/conv3d_359/BiasAdd/ReadVariableOp*model_67/conv3d_359/BiasAdd/ReadVariableOp2V
)model_67/conv3d_359/Conv3D/ReadVariableOp)model_67/conv3d_359/Conv3D/ReadVariableOp2T
(model_67/dense_67/BiasAdd/ReadVariableOp(model_67/dense_67/BiasAdd/ReadVariableOp2R
'model_67/dense_67/MatMul/ReadVariableOp'model_67/dense_67/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
H__inference_conv3d_359_layer_call_and_return_conditional_losses_18239891

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
�
e
I__inference_reshape_135_layer_call_and_return_conditional_losses_18239852

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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239128

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
6__inference_range_conversion_67_layer_call_fn_18239735

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
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_182390952
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

�
&__inference_signature_wrapper_18239526	
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
#__inference__wrapped_model_182390422
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
�
H__inference_conv3d_358_layer_call_and_return_conditional_losses_18239197

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
+__inference_dense_67_layer_call_fn_18239821

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
F__inference_dense_67_layer_call_and_return_conditional_losses_182391552
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
�u
�
F__inference_model_67_layer_call_and_return_conditional_losses_18239649

inputsG
)conv3d_357_conv3d_readvariableop_resource:8
*conv3d_357_biasadd_readvariableop_resource:9
'dense_67_matmul_readvariableop_resource:@@6
(dense_67_biasadd_readvariableop_resource:@G
)conv3d_358_conv3d_readvariableop_resource:8
*conv3d_358_biasadd_readvariableop_resource:G
)conv3d_359_conv3d_readvariableop_resource:8
*conv3d_359_biasadd_readvariableop_resource:
identity��!conv3d_357/BiasAdd/ReadVariableOp� conv3d_357/Conv3D/ReadVariableOp�!conv3d_358/BiasAdd/ReadVariableOp� conv3d_358/Conv3D/ReadVariableOp�!conv3d_359/BiasAdd/ReadVariableOp� conv3d_359/Conv3D/ReadVariableOp�dense_67/BiasAdd/ReadVariableOp�dense_67/MatMul/ReadVariableOp�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice{
range_conversion_67/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_67/sub/y�
range_conversion_67/subSub3tf.__operators__.getitem_470/strided_slice:output:0"range_conversion_67/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/sub�
range_conversion_67/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_67/truediv/y�
range_conversion_67/truedivRealDivrange_conversion_67/sub:z:0&range_conversion_67/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/truediv{
range_conversion_67/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_67/mul/y�
range_conversion_67/mulMulrange_conversion_67/truediv:z:0"range_conversion_67/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/mul{
range_conversion_67/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_67/add/y�
range_conversion_67/addAddV2range_conversion_67/mul:z:0"range_conversion_67/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_67/add�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_642/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_642/concat/axis�
tf.concat_642/concatConcatV2range_conversion_67/add:z:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_642/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_642/concat�
 conv3d_357/Conv3D/ReadVariableOpReadVariableOp)conv3d_357_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_357/Conv3D/ReadVariableOp�
conv3d_357/Conv3DConv3Dtf.concat_642/concat:output:0(conv3d_357/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_357/Conv3D�
!conv3d_357/BiasAdd/ReadVariableOpReadVariableOp*conv3d_357_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_357/BiasAdd/ReadVariableOp�
conv3d_357/BiasAddBiasAddconv3d_357/Conv3D:output:0)conv3d_357/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_357/BiasAdd�
conv3d_357/SoftplusSoftplusconv3d_357/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_357/Softplus�
$average_pooling3d_145/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_145/transpose/perm�
average_pooling3d_145/transpose	Transpose!conv3d_357/Softplus:activations:0-average_pooling3d_145/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_145/transpose�
average_pooling3d_145/AvgPool3D	AvgPool3D#average_pooling3d_145/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_145/AvgPool3D�
&average_pooling3d_145/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_145/transpose_1/perm�
!average_pooling3d_145/transpose_1	Transpose(average_pooling3d_145/AvgPool3D:output:0/average_pooling3d_145/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_145/transpose_1{
reshape_134/ShapeShape%average_pooling3d_145/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_134/Shape�
reshape_134/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_134/strided_slice/stack�
!reshape_134/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_134/strided_slice/stack_1�
!reshape_134/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_134/strided_slice/stack_2�
reshape_134/strided_sliceStridedSlicereshape_134/Shape:output:0(reshape_134/strided_slice/stack:output:0*reshape_134/strided_slice/stack_1:output:0*reshape_134/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_134/strided_slice|
reshape_134/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_134/Reshape/shape/1�
reshape_134/Reshape/shapePack"reshape_134/strided_slice:output:0$reshape_134/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_134/Reshape/shape�
reshape_134/ReshapeReshape%average_pooling3d_145/transpose_1:y:0"reshape_134/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_134/Reshape�
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_67/MatMul/ReadVariableOp�
dense_67/MatMulMatMulreshape_134/Reshape:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_67/MatMul�
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_67/BiasAdd/ReadVariableOp�
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_67/BiasAdd
dense_67/SoftplusSoftplusdense_67/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_67/Softplusu
reshape_135/ShapeShapedense_67/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_135/Shape�
reshape_135/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_135/strided_slice/stack�
!reshape_135/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_135/strided_slice/stack_1�
!reshape_135/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_135/strided_slice/stack_2�
reshape_135/strided_sliceStridedSlicereshape_135/Shape:output:0(reshape_135/strided_slice/stack:output:0*reshape_135/strided_slice/stack_1:output:0*reshape_135/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_135/strided_slice|
reshape_135/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/1|
reshape_135/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/2|
reshape_135/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/3|
reshape_135/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_135/Reshape/shape/4�
reshape_135/Reshape/shapePack"reshape_135/strided_slice:output:0$reshape_135/Reshape/shape/1:output:0$reshape_135/Reshape/shape/2:output:0$reshape_135/Reshape/shape/3:output:0$reshape_135/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_135/Reshape/shape�
reshape_135/ReshapeReshapedense_67/Softplus:activations:0"reshape_135/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_135/Reshape�
tf.reshape_814/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_814/Reshape/shape�
tf.reshape_814/ReshapeReshapereshape_135/Reshape:output:0%tf.reshape_814/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_814/Reshape�
tf.tile_407/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_407/Tile/multiples�
tf.tile_407/TileTiletf.reshape_814/Reshape:output:0#tf.tile_407/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_407/Tile�
tf.reshape_815/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_815/Reshape/shape�
tf.reshape_815/ReshapeReshapetf.tile_407/Tile:output:0%tf.reshape_815/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_815/Reshapex
tf.concat_643/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_643/concat/axis�
tf.concat_643/concatConcatV2tf.reshape_815/Reshape:output:0!conv3d_357/Softplus:activations:0"tf.concat_643/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_643/concat�
 conv3d_358/Conv3D/ReadVariableOpReadVariableOp)conv3d_358_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_358/Conv3D/ReadVariableOp�
conv3d_358/Conv3DConv3Dtf.concat_643/concat:output:0(conv3d_358/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_358/Conv3D�
!conv3d_358/BiasAdd/ReadVariableOpReadVariableOp*conv3d_358_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_358/BiasAdd/ReadVariableOp�
conv3d_358/BiasAddBiasAddconv3d_358/Conv3D:output:0)conv3d_358/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_358/BiasAdd�
conv3d_358/SoftplusSoftplusconv3d_358/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_358/Softplus�
 conv3d_359/Conv3D/ReadVariableOpReadVariableOp)conv3d_359_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_359/Conv3D/ReadVariableOp�
conv3d_359/Conv3DConv3D!conv3d_358/Softplus:activations:0(conv3d_359/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_359/Conv3D�
!conv3d_359/BiasAdd/ReadVariableOpReadVariableOp*conv3d_359_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_359/BiasAdd/ReadVariableOp�
conv3d_359/BiasAddBiasAddconv3d_359/Conv3D:output:0)conv3d_359/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_359/BiasAdd�
IdentityIdentityconv3d_359/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_357/BiasAdd/ReadVariableOp!^conv3d_357/Conv3D/ReadVariableOp"^conv3d_358/BiasAdd/ReadVariableOp!^conv3d_358/Conv3D/ReadVariableOp"^conv3d_359/BiasAdd/ReadVariableOp!^conv3d_359/Conv3D/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_357/BiasAdd/ReadVariableOp!conv3d_357/BiasAdd/ReadVariableOp2D
 conv3d_357/Conv3D/ReadVariableOp conv3d_357/Conv3D/ReadVariableOp2F
!conv3d_358/BiasAdd/ReadVariableOp!conv3d_358/BiasAdd/ReadVariableOp2D
 conv3d_358/Conv3D/ReadVariableOp conv3d_358/Conv3D/ReadVariableOp2F
!conv3d_359/BiasAdd/ReadVariableOp!conv3d_359/BiasAdd/ReadVariableOp2D
 conv3d_359/Conv3D/ReadVariableOp conv3d_359/Conv3D/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_135_layer_call_and_return_conditional_losses_18239176

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
q
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_18239747

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
�
!__inference__traced_save_18239938
file_prefix0
,savev2_conv3d_357_kernel_read_readvariableop.
*savev2_conv3d_357_bias_read_readvariableop.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop0
,savev2_conv3d_358_kernel_read_readvariableop.
*savev2_conv3d_358_bias_read_readvariableop0
,savev2_conv3d_359_kernel_read_readvariableop.
*savev2_conv3d_359_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_357_kernel_read_readvariableop*savev2_conv3d_357_bias_read_readvariableop*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop,savev2_conv3d_358_kernel_read_readvariableop*savev2_conv3d_358_bias_read_readvariableop,savev2_conv3d_359_kernel_read_readvariableop*savev2_conv3d_359_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
H__inference_conv3d_357_layer_call_and_return_conditional_losses_18239114

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
�'
�
$__inference__traced_restore_18239972
file_prefix@
"assignvariableop_conv3d_357_kernel:0
"assignvariableop_1_conv3d_357_bias:4
"assignvariableop_2_dense_67_kernel:@@.
 assignvariableop_3_dense_67_bias:@B
$assignvariableop_4_conv3d_358_kernel:0
"assignvariableop_5_conv3d_358_bias:B
$assignvariableop_6_conv3d_359_kernel:0
"assignvariableop_7_conv3d_359_bias:

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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_357_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_357_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_67_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_67_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_358_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_358_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_359_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_359_biasIdentity_7:output:0"/device:CPU:0*
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
_user_specified_namefile_prefix"�L
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

conv3d_359<
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
1:/ 2conv3d_357/kernel
: 2conv3d_357/bias
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
#:!@@ 2dense_67/kernel
:@ 2dense_67/bias
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
1:/ 2conv3d_358/kernel
: 2conv3d_358/bias
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
1:/ 2conv3d_359/kernel
: 2conv3d_359/bias
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
+__inference_model_67_layer_call_fn_18239239
+__inference_model_67_layer_call_fn_18239547
+__inference_model_67_layer_call_fn_18239568
+__inference_model_67_layer_call_fn_18239411�
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
#__inference__wrapped_model_18239042input"�
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
F__inference_model_67_layer_call_and_return_conditional_losses_18239649
F__inference_model_67_layer_call_and_return_conditional_losses_18239730
F__inference_model_67_layer_call_and_return_conditional_losses_18239457
F__inference_model_67_layer_call_and_return_conditional_losses_18239503�
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
6__inference_range_conversion_67_layer_call_fn_18239735�
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
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_18239747�
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
-__inference_conv3d_357_layer_call_fn_18239756�
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
H__inference_conv3d_357_layer_call_and_return_conditional_losses_18239767�
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
8__inference_average_pooling3d_145_layer_call_fn_18239772
8__inference_average_pooling3d_145_layer_call_fn_18239777�
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
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239786
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239795�
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
.__inference_reshape_134_layer_call_fn_18239800�
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
I__inference_reshape_134_layer_call_and_return_conditional_losses_18239812�
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
+__inference_dense_67_layer_call_fn_18239821�
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
F__inference_dense_67_layer_call_and_return_conditional_losses_18239832�
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
.__inference_reshape_135_layer_call_fn_18239837�
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
I__inference_reshape_135_layer_call_and_return_conditional_losses_18239852�
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
-__inference_conv3d_358_layer_call_fn_18239861�
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
H__inference_conv3d_358_layer_call_and_return_conditional_losses_18239872�
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
-__inference_conv3d_359_layer_call_fn_18239881�
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
H__inference_conv3d_359_layer_call_and_return_conditional_losses_18239891�
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
&__inference_signature_wrapper_18239526input"�
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
#__inference__wrapped_model_18239042�+,9:?@:�7
0�-
+�(
input���������
� "C�@
>

conv3d_3590�-

conv3d_359����������
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239786�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_145_layer_call_and_return_conditional_losses_18239795p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_145_layer_call_fn_18239772�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_145_layer_call_fn_18239777c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_357_layer_call_and_return_conditional_losses_18239767t;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_357_layer_call_fn_18239756g;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_358_layer_call_and_return_conditional_losses_18239872t9:;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_358_layer_call_fn_18239861g9:;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_359_layer_call_and_return_conditional_losses_18239891t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_359_layer_call_fn_18239881g?@;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_67_layer_call_and_return_conditional_losses_18239832\+,/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_67_layer_call_fn_18239821O+,/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_67_layer_call_and_return_conditional_losses_18239457�+,9:?@B�?
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
F__inference_model_67_layer_call_and_return_conditional_losses_18239503�+,9:?@B�?
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
F__inference_model_67_layer_call_and_return_conditional_losses_18239649�+,9:?@C�@
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
F__inference_model_67_layer_call_and_return_conditional_losses_18239730�+,9:?@C�@
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
+__inference_model_67_layer_call_fn_18239239t+,9:?@B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_67_layer_call_fn_18239411t+,9:?@B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_67_layer_call_fn_18239547u+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_67_layer_call_fn_18239568u+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_67_layer_call_and_return_conditional_losses_18239747t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_67_layer_call_fn_18239735g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_134_layer_call_and_return_conditional_losses_18239812d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_134_layer_call_fn_18239800W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_135_layer_call_and_return_conditional_losses_18239852d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_135_layer_call_fn_18239837W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_18239526�+,9:?@C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_3590�-

conv3d_359���������