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
conv3d_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_71/kernel
�
$conv3d_71/kernel/Read/ReadVariableOpReadVariableOpconv3d_71/kernel**
_output_shapes
:*
dtype0
t
conv3d_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_71/bias
m
"conv3d_71/bias/Read/ReadVariableOpReadVariableOpconv3d_71/bias*
_output_shapes
:*
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

:@@*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:@*
dtype0
�
conv3d_72/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_72/kernel
�
$conv3d_72/kernel/Read/ReadVariableOpReadVariableOpconv3d_72/kernel**
_output_shapes
:*
dtype0
t
conv3d_72/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_72/bias
m
"conv3d_72/bias/Read/ReadVariableOpReadVariableOpconv3d_72/bias*
_output_shapes
:*
dtype0
�
conv3d_73/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_73/kernel
�
$conv3d_73/kernel/Read/ReadVariableOpReadVariableOpconv3d_73/kernel**
_output_shapes
:*
dtype0
t
conv3d_73/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_73/bias
m
"conv3d_73/bias/Read/ReadVariableOpReadVariableOpconv3d_73/bias*
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
\Z
VARIABLE_VALUEconv3d_71/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_71/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_27/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_72/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_72/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_73/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_73/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_71/kernelconv3d_71/biasdense_27/kerneldense_27/biasconv3d_72/kernelconv3d_72/biasconv3d_73/kernelconv3d_73/bias*
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
GPU2 *0,1,2,3J 8� *.
f)R'
%__inference_signature_wrapper_5919111
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_71/kernel/Read/ReadVariableOp"conv3d_71/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp$conv3d_72/kernel/Read/ReadVariableOp"conv3d_72/bias/Read/ReadVariableOp$conv3d_73/kernel/Read/ReadVariableOp"conv3d_73/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8� *)
f$R"
 __inference__traced_save_5919523
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_71/kernelconv3d_71/biasdense_27/kerneldense_27/biasconv3d_72/kernelconv3d_72/biasconv3d_73/kernelconv3d_73/bias*
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
GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__traced_restore_5919557��
�C
�
E__inference_model_27_layer_call_and_return_conditional_losses_5919088	
input/
conv3d_71_5919056:
conv3d_71_5919058:"
dense_27_5919063:@@
dense_27_5919065:@/
conv3d_72_5919077:
conv3d_72_5919079:/
conv3d_73_5919082:
conv3d_73_5919084:
identity��!conv3d_71/StatefulPartitionedCall�!conv3d_72/StatefulPartitionedCall�!conv3d_73/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�
/tf.__operators__.getitem_52/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_52/strided_slice/stack�
1tf.__operators__.getitem_52/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_52/strided_slice/stack_1�
1tf.__operators__.getitem_52/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_52/strided_slice/stack_2�
)tf.__operators__.getitem_52/strided_sliceStridedSliceinput8tf.__operators__.getitem_52/strided_slice/stack:output:0:tf.__operators__.getitem_52/strided_slice/stack_1:output:0:tf.__operators__.getitem_52/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_52/strided_slice�
#range_conversion_27/PartitionedCallPartitionedCall2tf.__operators__.getitem_52/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_59186802%
#range_conversion_27/PartitionedCall�
/tf.__operators__.getitem_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_53/strided_slice/stack�
1tf.__operators__.getitem_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_53/strided_slice/stack_1�
1tf.__operators__.getitem_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_53/strided_slice/stack_2�
)tf.__operators__.getitem_53/strided_sliceStridedSliceinput8tf.__operators__.getitem_53/strided_slice/stack:output:0:tf.__operators__.getitem_53/strided_slice/stack_1:output:0:tf.__operators__.getitem_53/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_53/strided_slicev
tf.concat_48/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_48/concat/axis�
tf.concat_48/concatConcatV2,range_conversion_27/PartitionedCall:output:02tf.__operators__.getitem_53/strided_slice:output:0!tf.concat_48/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_48/concat�
!conv3d_71/StatefulPartitionedCallStatefulPartitionedCalltf.concat_48/concat:output:0conv3d_71_5919056conv3d_71_5919058*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_71_layer_call_and_return_conditional_losses_59186992#
!conv3d_71/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_71/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_59187132&
$average_pooling3d_22/PartitionedCall�
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_22/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_59187272
reshape_54/PartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_5919063dense_27_5919065*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_59187402"
 dense_27/StatefulPartitionedCall�
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_59187612
reshape_55/PartitionedCall�
tf.reshape_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_44/Reshape/shape�
tf.reshape_44/ReshapeReshape#reshape_55/PartitionedCall:output:0$tf.reshape_44/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_44/Reshape�
tf.tile_22/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_22/Tile/multiples�
tf.tile_22/TileTiletf.reshape_44/Reshape:output:0"tf.tile_22/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_22/Tile�
tf.reshape_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_45/Reshape/shape�
tf.reshape_45/ReshapeReshapetf.tile_22/Tile:output:0$tf.reshape_45/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_45/Reshapev
tf.concat_49/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_49/concat/axis�
tf.concat_49/concatConcatV2tf.reshape_45/Reshape:output:0*conv3d_71/StatefulPartitionedCall:output:0!tf.concat_49/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_49/concat�
!conv3d_72/StatefulPartitionedCallStatefulPartitionedCalltf.concat_49/concat:output:0conv3d_72_5919077conv3d_72_5919079*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_72_layer_call_and_return_conditional_losses_59187822#
!conv3d_72/StatefulPartitionedCall�
!conv3d_73/StatefulPartitionedCallStatefulPartitionedCall*conv3d_72/StatefulPartitionedCall:output:0conv3d_73_5919082conv3d_73_5919084*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_73_layer_call_and_return_conditional_losses_59187982#
!conv3d_73/StatefulPartitionedCall�
IdentityIdentity*conv3d_73/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_71/StatefulPartitionedCall"^conv3d_72/StatefulPartitionedCall"^conv3d_73/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_71/StatefulPartitionedCall!conv3d_71/StatefulPartitionedCall2F
!conv3d_72/StatefulPartitionedCall!conv3d_72/StatefulPartitionedCall2F
!conv3d_73/StatefulPartitionedCall!conv3d_73/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
F__inference_conv3d_73_layer_call_and_return_conditional_losses_5918798

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
c
G__inference_reshape_54_layer_call_and_return_conditional_losses_5919397

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
F__inference_conv3d_73_layer_call_and_return_conditional_losses_5919476

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

�
*__inference_model_27_layer_call_fn_5918824	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_59188052
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
m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5918713

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
*__inference_model_27_layer_call_fn_5918996	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_59189562
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
F__inference_conv3d_71_layer_call_and_return_conditional_losses_5919352

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
�s
�
E__inference_model_27_layer_call_and_return_conditional_losses_5919234

inputsF
(conv3d_71_conv3d_readvariableop_resource:7
)conv3d_71_biasadd_readvariableop_resource:9
'dense_27_matmul_readvariableop_resource:@@6
(dense_27_biasadd_readvariableop_resource:@F
(conv3d_72_conv3d_readvariableop_resource:7
)conv3d_72_biasadd_readvariableop_resource:F
(conv3d_73_conv3d_readvariableop_resource:7
)conv3d_73_biasadd_readvariableop_resource:
identity�� conv3d_71/BiasAdd/ReadVariableOp�conv3d_71/Conv3D/ReadVariableOp� conv3d_72/BiasAdd/ReadVariableOp�conv3d_72/Conv3D/ReadVariableOp� conv3d_73/BiasAdd/ReadVariableOp�conv3d_73/Conv3D/ReadVariableOp�dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�
/tf.__operators__.getitem_52/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_52/strided_slice/stack�
1tf.__operators__.getitem_52/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_52/strided_slice/stack_1�
1tf.__operators__.getitem_52/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_52/strided_slice/stack_2�
)tf.__operators__.getitem_52/strided_sliceStridedSliceinputs8tf.__operators__.getitem_52/strided_slice/stack:output:0:tf.__operators__.getitem_52/strided_slice/stack_1:output:0:tf.__operators__.getitem_52/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_52/strided_slice{
range_conversion_27/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_27/sub/y�
range_conversion_27/subSub2tf.__operators__.getitem_52/strided_slice:output:0"range_conversion_27/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/sub�
range_conversion_27/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_27/truediv/y�
range_conversion_27/truedivRealDivrange_conversion_27/sub:z:0&range_conversion_27/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/truediv{
range_conversion_27/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_27/mul/y�
range_conversion_27/mulMulrange_conversion_27/truediv:z:0"range_conversion_27/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/mul{
range_conversion_27/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_27/add/y�
range_conversion_27/addAddV2range_conversion_27/mul:z:0"range_conversion_27/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/add�
/tf.__operators__.getitem_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_53/strided_slice/stack�
1tf.__operators__.getitem_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_53/strided_slice/stack_1�
1tf.__operators__.getitem_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_53/strided_slice/stack_2�
)tf.__operators__.getitem_53/strided_sliceStridedSliceinputs8tf.__operators__.getitem_53/strided_slice/stack:output:0:tf.__operators__.getitem_53/strided_slice/stack_1:output:0:tf.__operators__.getitem_53/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_53/strided_slicev
tf.concat_48/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_48/concat/axis�
tf.concat_48/concatConcatV2range_conversion_27/add:z:02tf.__operators__.getitem_53/strided_slice:output:0!tf.concat_48/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_48/concat�
conv3d_71/Conv3D/ReadVariableOpReadVariableOp(conv3d_71_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_71/Conv3D/ReadVariableOp�
conv3d_71/Conv3DConv3Dtf.concat_48/concat:output:0'conv3d_71/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_71/Conv3D�
 conv3d_71/BiasAdd/ReadVariableOpReadVariableOp)conv3d_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_71/BiasAdd/ReadVariableOp�
conv3d_71/BiasAddBiasAddconv3d_71/Conv3D:output:0(conv3d_71/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_71/BiasAdd�
conv3d_71/SoftplusSoftplusconv3d_71/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_71/Softplus�
#average_pooling3d_22/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_22/transpose/perm�
average_pooling3d_22/transpose	Transpose conv3d_71/Softplus:activations:0,average_pooling3d_22/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_22/transpose�
average_pooling3d_22/AvgPool3D	AvgPool3D"average_pooling3d_22/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_22/AvgPool3D�
%average_pooling3d_22/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_22/transpose_1/perm�
 average_pooling3d_22/transpose_1	Transpose'average_pooling3d_22/AvgPool3D:output:0.average_pooling3d_22/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_22/transpose_1x
reshape_54/ShapeShape$average_pooling3d_22/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_54/Shape�
reshape_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_54/strided_slice/stack�
 reshape_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_1�
 reshape_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_2�
reshape_54/strided_sliceStridedSlicereshape_54/Shape:output:0'reshape_54/strided_slice/stack:output:0)reshape_54/strided_slice/stack_1:output:0)reshape_54/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_54/strided_slicez
reshape_54/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_54/Reshape/shape/1�
reshape_54/Reshape/shapePack!reshape_54/strided_slice:output:0#reshape_54/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_54/Reshape/shape�
reshape_54/ReshapeReshape$average_pooling3d_22/transpose_1:y:0!reshape_54/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_54/Reshape�
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_27/MatMul/ReadVariableOp�
dense_27/MatMulMatMulreshape_54/Reshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_27/MatMul�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_27/BiasAdd/ReadVariableOp�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_27/BiasAdd
dense_27/SoftplusSoftplusdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_27/Softpluss
reshape_55/ShapeShapedense_27/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_55/Shape�
reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_55/strided_slice/stack�
 reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_1�
 reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_2�
reshape_55/strided_sliceStridedSlicereshape_55/Shape:output:0'reshape_55/strided_slice/stack:output:0)reshape_55/strided_slice/stack_1:output:0)reshape_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_55/strided_slicez
reshape_55/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/1z
reshape_55/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/2z
reshape_55/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/3z
reshape_55/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/4�
reshape_55/Reshape/shapePack!reshape_55/strided_slice:output:0#reshape_55/Reshape/shape/1:output:0#reshape_55/Reshape/shape/2:output:0#reshape_55/Reshape/shape/3:output:0#reshape_55/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_55/Reshape/shape�
reshape_55/ReshapeReshapedense_27/Softplus:activations:0!reshape_55/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_55/Reshape�
tf.reshape_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_44/Reshape/shape�
tf.reshape_44/ReshapeReshapereshape_55/Reshape:output:0$tf.reshape_44/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_44/Reshape�
tf.tile_22/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_22/Tile/multiples�
tf.tile_22/TileTiletf.reshape_44/Reshape:output:0"tf.tile_22/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_22/Tile�
tf.reshape_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_45/Reshape/shape�
tf.reshape_45/ReshapeReshapetf.tile_22/Tile:output:0$tf.reshape_45/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_45/Reshapev
tf.concat_49/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_49/concat/axis�
tf.concat_49/concatConcatV2tf.reshape_45/Reshape:output:0 conv3d_71/Softplus:activations:0!tf.concat_49/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_49/concat�
conv3d_72/Conv3D/ReadVariableOpReadVariableOp(conv3d_72_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_72/Conv3D/ReadVariableOp�
conv3d_72/Conv3DConv3Dtf.concat_49/concat:output:0'conv3d_72/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_72/Conv3D�
 conv3d_72/BiasAdd/ReadVariableOpReadVariableOp)conv3d_72_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_72/BiasAdd/ReadVariableOp�
conv3d_72/BiasAddBiasAddconv3d_72/Conv3D:output:0(conv3d_72/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_72/BiasAdd�
conv3d_72/SoftplusSoftplusconv3d_72/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_72/Softplus�
conv3d_73/Conv3D/ReadVariableOpReadVariableOp(conv3d_73_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_73/Conv3D/ReadVariableOp�
conv3d_73/Conv3DConv3D conv3d_72/Softplus:activations:0'conv3d_73/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_73/Conv3D�
 conv3d_73/BiasAdd/ReadVariableOpReadVariableOp)conv3d_73_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_73/BiasAdd/ReadVariableOp�
conv3d_73/BiasAddBiasAddconv3d_73/Conv3D:output:0(conv3d_73/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_73/BiasAdd�
IdentityIdentityconv3d_73/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_71/BiasAdd/ReadVariableOp ^conv3d_71/Conv3D/ReadVariableOp!^conv3d_72/BiasAdd/ReadVariableOp ^conv3d_72/Conv3D/ReadVariableOp!^conv3d_73/BiasAdd/ReadVariableOp ^conv3d_73/Conv3D/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2D
 conv3d_71/BiasAdd/ReadVariableOp conv3d_71/BiasAdd/ReadVariableOp2B
conv3d_71/Conv3D/ReadVariableOpconv3d_71/Conv3D/ReadVariableOp2D
 conv3d_72/BiasAdd/ReadVariableOp conv3d_72/BiasAdd/ReadVariableOp2B
conv3d_72/Conv3D/ReadVariableOpconv3d_72/Conv3D/ReadVariableOp2D
 conv3d_73/BiasAdd/ReadVariableOp conv3d_73/BiasAdd/ReadVariableOp2B
conv3d_73/Conv3D/ReadVariableOpconv3d_73/Conv3D/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_72_layer_call_and_return_conditional_losses_5918782

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

m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5918640

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
�
E__inference_dense_27_layer_call_and_return_conditional_losses_5918740

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
+__inference_conv3d_73_layer_call_fn_5919466

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_73_layer_call_and_return_conditional_losses_59187982
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
�
F__inference_conv3d_71_layer_call_and_return_conditional_losses_5918699

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
�
c
G__inference_reshape_55_layer_call_and_return_conditional_losses_5919437

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
�
E__inference_dense_27_layer_call_and_return_conditional_losses_5919417

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
*__inference_model_27_layer_call_fn_5919153

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_59189562
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
c
G__inference_reshape_54_layer_call_and_return_conditional_losses_5918727

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
�C
�
E__inference_model_27_layer_call_and_return_conditional_losses_5918956

inputs/
conv3d_71_5918924:
conv3d_71_5918926:"
dense_27_5918931:@@
dense_27_5918933:@/
conv3d_72_5918945:
conv3d_72_5918947:/
conv3d_73_5918950:
conv3d_73_5918952:
identity��!conv3d_71/StatefulPartitionedCall�!conv3d_72/StatefulPartitionedCall�!conv3d_73/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�
/tf.__operators__.getitem_52/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_52/strided_slice/stack�
1tf.__operators__.getitem_52/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_52/strided_slice/stack_1�
1tf.__operators__.getitem_52/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_52/strided_slice/stack_2�
)tf.__operators__.getitem_52/strided_sliceStridedSliceinputs8tf.__operators__.getitem_52/strided_slice/stack:output:0:tf.__operators__.getitem_52/strided_slice/stack_1:output:0:tf.__operators__.getitem_52/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_52/strided_slice�
#range_conversion_27/PartitionedCallPartitionedCall2tf.__operators__.getitem_52/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_59186802%
#range_conversion_27/PartitionedCall�
/tf.__operators__.getitem_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_53/strided_slice/stack�
1tf.__operators__.getitem_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_53/strided_slice/stack_1�
1tf.__operators__.getitem_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_53/strided_slice/stack_2�
)tf.__operators__.getitem_53/strided_sliceStridedSliceinputs8tf.__operators__.getitem_53/strided_slice/stack:output:0:tf.__operators__.getitem_53/strided_slice/stack_1:output:0:tf.__operators__.getitem_53/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_53/strided_slicev
tf.concat_48/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_48/concat/axis�
tf.concat_48/concatConcatV2,range_conversion_27/PartitionedCall:output:02tf.__operators__.getitem_53/strided_slice:output:0!tf.concat_48/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_48/concat�
!conv3d_71/StatefulPartitionedCallStatefulPartitionedCalltf.concat_48/concat:output:0conv3d_71_5918924conv3d_71_5918926*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_71_layer_call_and_return_conditional_losses_59186992#
!conv3d_71/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_71/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_59187132&
$average_pooling3d_22/PartitionedCall�
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_22/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_59187272
reshape_54/PartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_5918931dense_27_5918933*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_59187402"
 dense_27/StatefulPartitionedCall�
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_59187612
reshape_55/PartitionedCall�
tf.reshape_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_44/Reshape/shape�
tf.reshape_44/ReshapeReshape#reshape_55/PartitionedCall:output:0$tf.reshape_44/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_44/Reshape�
tf.tile_22/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_22/Tile/multiples�
tf.tile_22/TileTiletf.reshape_44/Reshape:output:0"tf.tile_22/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_22/Tile�
tf.reshape_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_45/Reshape/shape�
tf.reshape_45/ReshapeReshapetf.tile_22/Tile:output:0$tf.reshape_45/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_45/Reshapev
tf.concat_49/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_49/concat/axis�
tf.concat_49/concatConcatV2tf.reshape_45/Reshape:output:0*conv3d_71/StatefulPartitionedCall:output:0!tf.concat_49/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_49/concat�
!conv3d_72/StatefulPartitionedCallStatefulPartitionedCalltf.concat_49/concat:output:0conv3d_72_5918945conv3d_72_5918947*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_72_layer_call_and_return_conditional_losses_59187822#
!conv3d_72/StatefulPartitionedCall�
!conv3d_73/StatefulPartitionedCallStatefulPartitionedCall*conv3d_72/StatefulPartitionedCall:output:0conv3d_73_5918950conv3d_73_5918952*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_73_layer_call_and_return_conditional_losses_59187982#
!conv3d_73/StatefulPartitionedCall�
IdentityIdentity*conv3d_73/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_71/StatefulPartitionedCall"^conv3d_72/StatefulPartitionedCall"^conv3d_73/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_71/StatefulPartitionedCall!conv3d_71/StatefulPartitionedCall2F
!conv3d_72/StatefulPartitionedCall!conv3d_72/StatefulPartitionedCall2F
!conv3d_73/StatefulPartitionedCall!conv3d_73/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�s
�
E__inference_model_27_layer_call_and_return_conditional_losses_5919315

inputsF
(conv3d_71_conv3d_readvariableop_resource:7
)conv3d_71_biasadd_readvariableop_resource:9
'dense_27_matmul_readvariableop_resource:@@6
(dense_27_biasadd_readvariableop_resource:@F
(conv3d_72_conv3d_readvariableop_resource:7
)conv3d_72_biasadd_readvariableop_resource:F
(conv3d_73_conv3d_readvariableop_resource:7
)conv3d_73_biasadd_readvariableop_resource:
identity�� conv3d_71/BiasAdd/ReadVariableOp�conv3d_71/Conv3D/ReadVariableOp� conv3d_72/BiasAdd/ReadVariableOp�conv3d_72/Conv3D/ReadVariableOp� conv3d_73/BiasAdd/ReadVariableOp�conv3d_73/Conv3D/ReadVariableOp�dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�
/tf.__operators__.getitem_52/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_52/strided_slice/stack�
1tf.__operators__.getitem_52/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_52/strided_slice/stack_1�
1tf.__operators__.getitem_52/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_52/strided_slice/stack_2�
)tf.__operators__.getitem_52/strided_sliceStridedSliceinputs8tf.__operators__.getitem_52/strided_slice/stack:output:0:tf.__operators__.getitem_52/strided_slice/stack_1:output:0:tf.__operators__.getitem_52/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_52/strided_slice{
range_conversion_27/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_27/sub/y�
range_conversion_27/subSub2tf.__operators__.getitem_52/strided_slice:output:0"range_conversion_27/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/sub�
range_conversion_27/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_27/truediv/y�
range_conversion_27/truedivRealDivrange_conversion_27/sub:z:0&range_conversion_27/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/truediv{
range_conversion_27/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_27/mul/y�
range_conversion_27/mulMulrange_conversion_27/truediv:z:0"range_conversion_27/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/mul{
range_conversion_27/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_27/add/y�
range_conversion_27/addAddV2range_conversion_27/mul:z:0"range_conversion_27/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_27/add�
/tf.__operators__.getitem_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_53/strided_slice/stack�
1tf.__operators__.getitem_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_53/strided_slice/stack_1�
1tf.__operators__.getitem_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_53/strided_slice/stack_2�
)tf.__operators__.getitem_53/strided_sliceStridedSliceinputs8tf.__operators__.getitem_53/strided_slice/stack:output:0:tf.__operators__.getitem_53/strided_slice/stack_1:output:0:tf.__operators__.getitem_53/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_53/strided_slicev
tf.concat_48/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_48/concat/axis�
tf.concat_48/concatConcatV2range_conversion_27/add:z:02tf.__operators__.getitem_53/strided_slice:output:0!tf.concat_48/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_48/concat�
conv3d_71/Conv3D/ReadVariableOpReadVariableOp(conv3d_71_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_71/Conv3D/ReadVariableOp�
conv3d_71/Conv3DConv3Dtf.concat_48/concat:output:0'conv3d_71/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_71/Conv3D�
 conv3d_71/BiasAdd/ReadVariableOpReadVariableOp)conv3d_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_71/BiasAdd/ReadVariableOp�
conv3d_71/BiasAddBiasAddconv3d_71/Conv3D:output:0(conv3d_71/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_71/BiasAdd�
conv3d_71/SoftplusSoftplusconv3d_71/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_71/Softplus�
#average_pooling3d_22/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_22/transpose/perm�
average_pooling3d_22/transpose	Transpose conv3d_71/Softplus:activations:0,average_pooling3d_22/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_22/transpose�
average_pooling3d_22/AvgPool3D	AvgPool3D"average_pooling3d_22/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_22/AvgPool3D�
%average_pooling3d_22/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_22/transpose_1/perm�
 average_pooling3d_22/transpose_1	Transpose'average_pooling3d_22/AvgPool3D:output:0.average_pooling3d_22/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_22/transpose_1x
reshape_54/ShapeShape$average_pooling3d_22/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_54/Shape�
reshape_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_54/strided_slice/stack�
 reshape_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_1�
 reshape_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_2�
reshape_54/strided_sliceStridedSlicereshape_54/Shape:output:0'reshape_54/strided_slice/stack:output:0)reshape_54/strided_slice/stack_1:output:0)reshape_54/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_54/strided_slicez
reshape_54/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_54/Reshape/shape/1�
reshape_54/Reshape/shapePack!reshape_54/strided_slice:output:0#reshape_54/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_54/Reshape/shape�
reshape_54/ReshapeReshape$average_pooling3d_22/transpose_1:y:0!reshape_54/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_54/Reshape�
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_27/MatMul/ReadVariableOp�
dense_27/MatMulMatMulreshape_54/Reshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_27/MatMul�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_27/BiasAdd/ReadVariableOp�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_27/BiasAdd
dense_27/SoftplusSoftplusdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_27/Softpluss
reshape_55/ShapeShapedense_27/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_55/Shape�
reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_55/strided_slice/stack�
 reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_1�
 reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_2�
reshape_55/strided_sliceStridedSlicereshape_55/Shape:output:0'reshape_55/strided_slice/stack:output:0)reshape_55/strided_slice/stack_1:output:0)reshape_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_55/strided_slicez
reshape_55/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/1z
reshape_55/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/2z
reshape_55/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/3z
reshape_55/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/4�
reshape_55/Reshape/shapePack!reshape_55/strided_slice:output:0#reshape_55/Reshape/shape/1:output:0#reshape_55/Reshape/shape/2:output:0#reshape_55/Reshape/shape/3:output:0#reshape_55/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_55/Reshape/shape�
reshape_55/ReshapeReshapedense_27/Softplus:activations:0!reshape_55/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_55/Reshape�
tf.reshape_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_44/Reshape/shape�
tf.reshape_44/ReshapeReshapereshape_55/Reshape:output:0$tf.reshape_44/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_44/Reshape�
tf.tile_22/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_22/Tile/multiples�
tf.tile_22/TileTiletf.reshape_44/Reshape:output:0"tf.tile_22/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_22/Tile�
tf.reshape_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_45/Reshape/shape�
tf.reshape_45/ReshapeReshapetf.tile_22/Tile:output:0$tf.reshape_45/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_45/Reshapev
tf.concat_49/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_49/concat/axis�
tf.concat_49/concatConcatV2tf.reshape_45/Reshape:output:0 conv3d_71/Softplus:activations:0!tf.concat_49/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_49/concat�
conv3d_72/Conv3D/ReadVariableOpReadVariableOp(conv3d_72_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_72/Conv3D/ReadVariableOp�
conv3d_72/Conv3DConv3Dtf.concat_49/concat:output:0'conv3d_72/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_72/Conv3D�
 conv3d_72/BiasAdd/ReadVariableOpReadVariableOp)conv3d_72_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_72/BiasAdd/ReadVariableOp�
conv3d_72/BiasAddBiasAddconv3d_72/Conv3D:output:0(conv3d_72/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_72/BiasAdd�
conv3d_72/SoftplusSoftplusconv3d_72/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_72/Softplus�
conv3d_73/Conv3D/ReadVariableOpReadVariableOp(conv3d_73_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_73/Conv3D/ReadVariableOp�
conv3d_73/Conv3DConv3D conv3d_72/Softplus:activations:0'conv3d_73/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_73/Conv3D�
 conv3d_73/BiasAdd/ReadVariableOpReadVariableOp)conv3d_73_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_73/BiasAdd/ReadVariableOp�
conv3d_73/BiasAddBiasAddconv3d_73/Conv3D:output:0(conv3d_73/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_73/BiasAdd�
IdentityIdentityconv3d_73/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_71/BiasAdd/ReadVariableOp ^conv3d_71/Conv3D/ReadVariableOp!^conv3d_72/BiasAdd/ReadVariableOp ^conv3d_72/Conv3D/ReadVariableOp!^conv3d_73/BiasAdd/ReadVariableOp ^conv3d_73/Conv3D/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2D
 conv3d_71/BiasAdd/ReadVariableOp conv3d_71/BiasAdd/ReadVariableOp2B
conv3d_71/Conv3D/ReadVariableOpconv3d_71/Conv3D/ReadVariableOp2D
 conv3d_72/BiasAdd/ReadVariableOp conv3d_72/BiasAdd/ReadVariableOp2B
conv3d_72/Conv3D/ReadVariableOpconv3d_72/Conv3D/ReadVariableOp2D
 conv3d_73/BiasAdd/ReadVariableOp conv3d_73/BiasAdd/ReadVariableOp2B
conv3d_73/Conv3D/ReadVariableOpconv3d_73/Conv3D/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
p
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_5919332

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
�
R
6__inference_average_pooling3d_22_layer_call_fn_5919362

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_59187132
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
��
�
"__inference__wrapped_model_5918627	
inputO
1model_27_conv3d_71_conv3d_readvariableop_resource:@
2model_27_conv3d_71_biasadd_readvariableop_resource:B
0model_27_dense_27_matmul_readvariableop_resource:@@?
1model_27_dense_27_biasadd_readvariableop_resource:@O
1model_27_conv3d_72_conv3d_readvariableop_resource:@
2model_27_conv3d_72_biasadd_readvariableop_resource:O
1model_27_conv3d_73_conv3d_readvariableop_resource:@
2model_27_conv3d_73_biasadd_readvariableop_resource:
identity��)model_27/conv3d_71/BiasAdd/ReadVariableOp�(model_27/conv3d_71/Conv3D/ReadVariableOp�)model_27/conv3d_72/BiasAdd/ReadVariableOp�(model_27/conv3d_72/Conv3D/ReadVariableOp�)model_27/conv3d_73/BiasAdd/ReadVariableOp�(model_27/conv3d_73/Conv3D/ReadVariableOp�(model_27/dense_27/BiasAdd/ReadVariableOp�'model_27/dense_27/MatMul/ReadVariableOp�
8model_27/tf.__operators__.getitem_52/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_27/tf.__operators__.getitem_52/strided_slice/stack�
:model_27/tf.__operators__.getitem_52/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_27/tf.__operators__.getitem_52/strided_slice/stack_1�
:model_27/tf.__operators__.getitem_52/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_27/tf.__operators__.getitem_52/strided_slice/stack_2�
2model_27/tf.__operators__.getitem_52/strided_sliceStridedSliceinputAmodel_27/tf.__operators__.getitem_52/strided_slice/stack:output:0Cmodel_27/tf.__operators__.getitem_52/strided_slice/stack_1:output:0Cmodel_27/tf.__operators__.getitem_52/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask24
2model_27/tf.__operators__.getitem_52/strided_slice�
"model_27/range_conversion_27/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_27/range_conversion_27/sub/y�
 model_27/range_conversion_27/subSub;model_27/tf.__operators__.getitem_52/strided_slice:output:0+model_27/range_conversion_27/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_27/range_conversion_27/sub�
&model_27/range_conversion_27/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_27/range_conversion_27/truediv/y�
$model_27/range_conversion_27/truedivRealDiv$model_27/range_conversion_27/sub:z:0/model_27/range_conversion_27/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_27/range_conversion_27/truediv�
"model_27/range_conversion_27/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_27/range_conversion_27/mul/y�
 model_27/range_conversion_27/mulMul(model_27/range_conversion_27/truediv:z:0+model_27/range_conversion_27/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_27/range_conversion_27/mul�
"model_27/range_conversion_27/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_27/range_conversion_27/add/y�
 model_27/range_conversion_27/addAddV2$model_27/range_conversion_27/mul:z:0+model_27/range_conversion_27/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_27/range_conversion_27/add�
8model_27/tf.__operators__.getitem_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_27/tf.__operators__.getitem_53/strided_slice/stack�
:model_27/tf.__operators__.getitem_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_27/tf.__operators__.getitem_53/strided_slice/stack_1�
:model_27/tf.__operators__.getitem_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_27/tf.__operators__.getitem_53/strided_slice/stack_2�
2model_27/tf.__operators__.getitem_53/strided_sliceStridedSliceinputAmodel_27/tf.__operators__.getitem_53/strided_slice/stack:output:0Cmodel_27/tf.__operators__.getitem_53/strided_slice/stack_1:output:0Cmodel_27/tf.__operators__.getitem_53/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask24
2model_27/tf.__operators__.getitem_53/strided_slice�
!model_27/tf.concat_48/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_27/tf.concat_48/concat/axis�
model_27/tf.concat_48/concatConcatV2$model_27/range_conversion_27/add:z:0;model_27/tf.__operators__.getitem_53/strided_slice:output:0*model_27/tf.concat_48/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_27/tf.concat_48/concat�
(model_27/conv3d_71/Conv3D/ReadVariableOpReadVariableOp1model_27_conv3d_71_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_27/conv3d_71/Conv3D/ReadVariableOp�
model_27/conv3d_71/Conv3DConv3D%model_27/tf.concat_48/concat:output:00model_27/conv3d_71/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_71/Conv3D�
)model_27/conv3d_71/BiasAdd/ReadVariableOpReadVariableOp2model_27_conv3d_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_27/conv3d_71/BiasAdd/ReadVariableOp�
model_27/conv3d_71/BiasAddBiasAdd"model_27/conv3d_71/Conv3D:output:01model_27/conv3d_71/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_27/conv3d_71/BiasAdd�
model_27/conv3d_71/SoftplusSoftplus#model_27/conv3d_71/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_27/conv3d_71/Softplus�
,model_27/average_pooling3d_22/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_27/average_pooling3d_22/transpose/perm�
'model_27/average_pooling3d_22/transpose	Transpose)model_27/conv3d_71/Softplus:activations:05model_27/average_pooling3d_22/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_27/average_pooling3d_22/transpose�
'model_27/average_pooling3d_22/AvgPool3D	AvgPool3D+model_27/average_pooling3d_22/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_27/average_pooling3d_22/AvgPool3D�
.model_27/average_pooling3d_22/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_27/average_pooling3d_22/transpose_1/perm�
)model_27/average_pooling3d_22/transpose_1	Transpose0model_27/average_pooling3d_22/AvgPool3D:output:07model_27/average_pooling3d_22/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_27/average_pooling3d_22/transpose_1�
model_27/reshape_54/ShapeShape-model_27/average_pooling3d_22/transpose_1:y:0*
T0*
_output_shapes
:2
model_27/reshape_54/Shape�
'model_27/reshape_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_27/reshape_54/strided_slice/stack�
)model_27/reshape_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_54/strided_slice/stack_1�
)model_27/reshape_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_54/strided_slice/stack_2�
!model_27/reshape_54/strided_sliceStridedSlice"model_27/reshape_54/Shape:output:00model_27/reshape_54/strided_slice/stack:output:02model_27/reshape_54/strided_slice/stack_1:output:02model_27/reshape_54/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_27/reshape_54/strided_slice�
#model_27/reshape_54/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_27/reshape_54/Reshape/shape/1�
!model_27/reshape_54/Reshape/shapePack*model_27/reshape_54/strided_slice:output:0,model_27/reshape_54/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_27/reshape_54/Reshape/shape�
model_27/reshape_54/ReshapeReshape-model_27/average_pooling3d_22/transpose_1:y:0*model_27/reshape_54/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_27/reshape_54/Reshape�
'model_27/dense_27/MatMul/ReadVariableOpReadVariableOp0model_27_dense_27_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_27/dense_27/MatMul/ReadVariableOp�
model_27/dense_27/MatMulMatMul$model_27/reshape_54/Reshape:output:0/model_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_27/dense_27/MatMul�
(model_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp1model_27_dense_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_27/dense_27/BiasAdd/ReadVariableOp�
model_27/dense_27/BiasAddBiasAdd"model_27/dense_27/MatMul:product:00model_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_27/dense_27/BiasAdd�
model_27/dense_27/SoftplusSoftplus"model_27/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_27/dense_27/Softplus�
model_27/reshape_55/ShapeShape(model_27/dense_27/Softplus:activations:0*
T0*
_output_shapes
:2
model_27/reshape_55/Shape�
'model_27/reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_27/reshape_55/strided_slice/stack�
)model_27/reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_55/strided_slice/stack_1�
)model_27/reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_55/strided_slice/stack_2�
!model_27/reshape_55/strided_sliceStridedSlice"model_27/reshape_55/Shape:output:00model_27/reshape_55/strided_slice/stack:output:02model_27/reshape_55/strided_slice/stack_1:output:02model_27/reshape_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_27/reshape_55/strided_slice�
#model_27/reshape_55/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/1�
#model_27/reshape_55/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/2�
#model_27/reshape_55/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/3�
#model_27/reshape_55/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/4�
!model_27/reshape_55/Reshape/shapePack*model_27/reshape_55/strided_slice:output:0,model_27/reshape_55/Reshape/shape/1:output:0,model_27/reshape_55/Reshape/shape/2:output:0,model_27/reshape_55/Reshape/shape/3:output:0,model_27/reshape_55/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_27/reshape_55/Reshape/shape�
model_27/reshape_55/ReshapeReshape(model_27/dense_27/Softplus:activations:0*model_27/reshape_55/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_27/reshape_55/Reshape�
$model_27/tf.reshape_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_27/tf.reshape_44/Reshape/shape�
model_27/tf.reshape_44/ReshapeReshape$model_27/reshape_55/Reshape:output:0-model_27/tf.reshape_44/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_27/tf.reshape_44/Reshape�
"model_27/tf.tile_22/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_27/tf.tile_22/Tile/multiples�
model_27/tf.tile_22/TileTile'model_27/tf.reshape_44/Reshape:output:0+model_27/tf.tile_22/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_27/tf.tile_22/Tile�
$model_27/tf.reshape_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2&
$model_27/tf.reshape_45/Reshape/shape�
model_27/tf.reshape_45/ReshapeReshape!model_27/tf.tile_22/Tile:output:0-model_27/tf.reshape_45/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2 
model_27/tf.reshape_45/Reshape�
!model_27/tf.concat_49/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_27/tf.concat_49/concat/axis�
model_27/tf.concat_49/concatConcatV2'model_27/tf.reshape_45/Reshape:output:0)model_27/conv3d_71/Softplus:activations:0*model_27/tf.concat_49/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_27/tf.concat_49/concat�
(model_27/conv3d_72/Conv3D/ReadVariableOpReadVariableOp1model_27_conv3d_72_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_27/conv3d_72/Conv3D/ReadVariableOp�
model_27/conv3d_72/Conv3DConv3D%model_27/tf.concat_49/concat:output:00model_27/conv3d_72/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_72/Conv3D�
)model_27/conv3d_72/BiasAdd/ReadVariableOpReadVariableOp2model_27_conv3d_72_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_27/conv3d_72/BiasAdd/ReadVariableOp�
model_27/conv3d_72/BiasAddBiasAdd"model_27/conv3d_72/Conv3D:output:01model_27/conv3d_72/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_27/conv3d_72/BiasAdd�
model_27/conv3d_72/SoftplusSoftplus#model_27/conv3d_72/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_27/conv3d_72/Softplus�
(model_27/conv3d_73/Conv3D/ReadVariableOpReadVariableOp1model_27_conv3d_73_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_27/conv3d_73/Conv3D/ReadVariableOp�
model_27/conv3d_73/Conv3DConv3D)model_27/conv3d_72/Softplus:activations:00model_27/conv3d_73/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_73/Conv3D�
)model_27/conv3d_73/BiasAdd/ReadVariableOpReadVariableOp2model_27_conv3d_73_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_27/conv3d_73/BiasAdd/ReadVariableOp�
model_27/conv3d_73/BiasAddBiasAdd"model_27/conv3d_73/Conv3D:output:01model_27/conv3d_73/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_27/conv3d_73/BiasAdd�
IdentityIdentity#model_27/conv3d_73/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp*^model_27/conv3d_71/BiasAdd/ReadVariableOp)^model_27/conv3d_71/Conv3D/ReadVariableOp*^model_27/conv3d_72/BiasAdd/ReadVariableOp)^model_27/conv3d_72/Conv3D/ReadVariableOp*^model_27/conv3d_73/BiasAdd/ReadVariableOp)^model_27/conv3d_73/Conv3D/ReadVariableOp)^model_27/dense_27/BiasAdd/ReadVariableOp(^model_27/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2V
)model_27/conv3d_71/BiasAdd/ReadVariableOp)model_27/conv3d_71/BiasAdd/ReadVariableOp2T
(model_27/conv3d_71/Conv3D/ReadVariableOp(model_27/conv3d_71/Conv3D/ReadVariableOp2V
)model_27/conv3d_72/BiasAdd/ReadVariableOp)model_27/conv3d_72/BiasAdd/ReadVariableOp2T
(model_27/conv3d_72/Conv3D/ReadVariableOp(model_27/conv3d_72/Conv3D/ReadVariableOp2V
)model_27/conv3d_73/BiasAdd/ReadVariableOp)model_27/conv3d_73/BiasAdd/ReadVariableOp2T
(model_27/conv3d_73/Conv3D/ReadVariableOp(model_27/conv3d_73/Conv3D/ReadVariableOp2T
(model_27/dense_27/BiasAdd/ReadVariableOp(model_27/dense_27/BiasAdd/ReadVariableOp2R
'model_27/dense_27/MatMul/ReadVariableOp'model_27/dense_27/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
U
5__inference_range_conversion_27_layer_call_fn_5919320

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_59186802
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
�
�
+__inference_conv3d_71_layer_call_fn_5919341

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_71_layer_call_and_return_conditional_losses_59186992
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
�
�
*__inference_dense_27_layer_call_fn_5919406

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_59187402
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
�
 __inference__traced_save_5919523
file_prefix/
+savev2_conv3d_71_kernel_read_readvariableop-
)savev2_conv3d_71_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop/
+savev2_conv3d_72_kernel_read_readvariableop-
)savev2_conv3d_72_bias_read_readvariableop/
+savev2_conv3d_73_kernel_read_readvariableop-
)savev2_conv3d_73_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_71_kernel_read_readvariableop)savev2_conv3d_71_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop+savev2_conv3d_72_kernel_read_readvariableop)savev2_conv3d_72_bias_read_readvariableop+savev2_conv3d_73_kernel_read_readvariableop)savev2_conv3d_73_bias_read_readvariableopsavev2_const"/device:CPU:0*
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

m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5919371

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
#__inference__traced_restore_5919557
file_prefix?
!assignvariableop_conv3d_71_kernel:/
!assignvariableop_1_conv3d_71_bias:4
"assignvariableop_2_dense_27_kernel:@@.
 assignvariableop_3_dense_27_bias:@A
#assignvariableop_4_conv3d_72_kernel:/
!assignvariableop_5_conv3d_72_bias:A
#assignvariableop_6_conv3d_73_kernel:/
!assignvariableop_7_conv3d_73_bias:

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
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_71_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_71_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_27_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_27_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_72_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_72_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv3d_73_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv3d_73_biasIdentity_7:output:0"/device:CPU:0*
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
�
R
6__inference_average_pooling3d_22_layer_call_fn_5919357

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_59186402
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
�C
�
E__inference_model_27_layer_call_and_return_conditional_losses_5919042	
input/
conv3d_71_5919010:
conv3d_71_5919012:"
dense_27_5919017:@@
dense_27_5919019:@/
conv3d_72_5919031:
conv3d_72_5919033:/
conv3d_73_5919036:
conv3d_73_5919038:
identity��!conv3d_71/StatefulPartitionedCall�!conv3d_72/StatefulPartitionedCall�!conv3d_73/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�
/tf.__operators__.getitem_52/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_52/strided_slice/stack�
1tf.__operators__.getitem_52/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_52/strided_slice/stack_1�
1tf.__operators__.getitem_52/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_52/strided_slice/stack_2�
)tf.__operators__.getitem_52/strided_sliceStridedSliceinput8tf.__operators__.getitem_52/strided_slice/stack:output:0:tf.__operators__.getitem_52/strided_slice/stack_1:output:0:tf.__operators__.getitem_52/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_52/strided_slice�
#range_conversion_27/PartitionedCallPartitionedCall2tf.__operators__.getitem_52/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_59186802%
#range_conversion_27/PartitionedCall�
/tf.__operators__.getitem_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_53/strided_slice/stack�
1tf.__operators__.getitem_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_53/strided_slice/stack_1�
1tf.__operators__.getitem_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_53/strided_slice/stack_2�
)tf.__operators__.getitem_53/strided_sliceStridedSliceinput8tf.__operators__.getitem_53/strided_slice/stack:output:0:tf.__operators__.getitem_53/strided_slice/stack_1:output:0:tf.__operators__.getitem_53/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_53/strided_slicev
tf.concat_48/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_48/concat/axis�
tf.concat_48/concatConcatV2,range_conversion_27/PartitionedCall:output:02tf.__operators__.getitem_53/strided_slice:output:0!tf.concat_48/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_48/concat�
!conv3d_71/StatefulPartitionedCallStatefulPartitionedCalltf.concat_48/concat:output:0conv3d_71_5919010conv3d_71_5919012*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_71_layer_call_and_return_conditional_losses_59186992#
!conv3d_71/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_71/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_59187132&
$average_pooling3d_22/PartitionedCall�
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_22/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_59187272
reshape_54/PartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_5919017dense_27_5919019*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_59187402"
 dense_27/StatefulPartitionedCall�
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_59187612
reshape_55/PartitionedCall�
tf.reshape_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_44/Reshape/shape�
tf.reshape_44/ReshapeReshape#reshape_55/PartitionedCall:output:0$tf.reshape_44/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_44/Reshape�
tf.tile_22/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_22/Tile/multiples�
tf.tile_22/TileTiletf.reshape_44/Reshape:output:0"tf.tile_22/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_22/Tile�
tf.reshape_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_45/Reshape/shape�
tf.reshape_45/ReshapeReshapetf.tile_22/Tile:output:0$tf.reshape_45/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_45/Reshapev
tf.concat_49/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_49/concat/axis�
tf.concat_49/concatConcatV2tf.reshape_45/Reshape:output:0*conv3d_71/StatefulPartitionedCall:output:0!tf.concat_49/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_49/concat�
!conv3d_72/StatefulPartitionedCallStatefulPartitionedCalltf.concat_49/concat:output:0conv3d_72_5919031conv3d_72_5919033*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_72_layer_call_and_return_conditional_losses_59187822#
!conv3d_72/StatefulPartitionedCall�
!conv3d_73/StatefulPartitionedCallStatefulPartitionedCall*conv3d_72/StatefulPartitionedCall:output:0conv3d_73_5919036conv3d_73_5919038*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_73_layer_call_and_return_conditional_losses_59187982#
!conv3d_73/StatefulPartitionedCall�
IdentityIdentity*conv3d_73/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_71/StatefulPartitionedCall"^conv3d_72/StatefulPartitionedCall"^conv3d_73/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_71/StatefulPartitionedCall!conv3d_71/StatefulPartitionedCall2F
!conv3d_72/StatefulPartitionedCall!conv3d_72/StatefulPartitionedCall2F
!conv3d_73/StatefulPartitionedCall!conv3d_73/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�

�
*__inference_model_27_layer_call_fn_5919132

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_59188052
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
H
,__inference_reshape_54_layer_call_fn_5919385

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_59187272
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
�
F__inference_conv3d_72_layer_call_and_return_conditional_losses_5919457

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
c
G__inference_reshape_55_layer_call_and_return_conditional_losses_5918761

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
m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5919380

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
�C
�
E__inference_model_27_layer_call_and_return_conditional_losses_5918805

inputs/
conv3d_71_5918700:
conv3d_71_5918702:"
dense_27_5918741:@@
dense_27_5918743:@/
conv3d_72_5918783:
conv3d_72_5918785:/
conv3d_73_5918799:
conv3d_73_5918801:
identity��!conv3d_71/StatefulPartitionedCall�!conv3d_72/StatefulPartitionedCall�!conv3d_73/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�
/tf.__operators__.getitem_52/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_52/strided_slice/stack�
1tf.__operators__.getitem_52/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_52/strided_slice/stack_1�
1tf.__operators__.getitem_52/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_52/strided_slice/stack_2�
)tf.__operators__.getitem_52/strided_sliceStridedSliceinputs8tf.__operators__.getitem_52/strided_slice/stack:output:0:tf.__operators__.getitem_52/strided_slice/stack_1:output:0:tf.__operators__.getitem_52/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_52/strided_slice�
#range_conversion_27/PartitionedCallPartitionedCall2tf.__operators__.getitem_52/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_59186802%
#range_conversion_27/PartitionedCall�
/tf.__operators__.getitem_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_53/strided_slice/stack�
1tf.__operators__.getitem_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_53/strided_slice/stack_1�
1tf.__operators__.getitem_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_53/strided_slice/stack_2�
)tf.__operators__.getitem_53/strided_sliceStridedSliceinputs8tf.__operators__.getitem_53/strided_slice/stack:output:0:tf.__operators__.getitem_53/strided_slice/stack_1:output:0:tf.__operators__.getitem_53/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_53/strided_slicev
tf.concat_48/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_48/concat/axis�
tf.concat_48/concatConcatV2,range_conversion_27/PartitionedCall:output:02tf.__operators__.getitem_53/strided_slice:output:0!tf.concat_48/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_48/concat�
!conv3d_71/StatefulPartitionedCallStatefulPartitionedCalltf.concat_48/concat:output:0conv3d_71_5918700conv3d_71_5918702*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_71_layer_call_and_return_conditional_losses_59186992#
!conv3d_71/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_71/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_59187132&
$average_pooling3d_22/PartitionedCall�
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_22/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_59187272
reshape_54/PartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_5918741dense_27_5918743*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_59187402"
 dense_27/StatefulPartitionedCall�
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_59187612
reshape_55/PartitionedCall�
tf.reshape_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_44/Reshape/shape�
tf.reshape_44/ReshapeReshape#reshape_55/PartitionedCall:output:0$tf.reshape_44/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_44/Reshape�
tf.tile_22/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_22/Tile/multiples�
tf.tile_22/TileTiletf.reshape_44/Reshape:output:0"tf.tile_22/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_22/Tile�
tf.reshape_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_45/Reshape/shape�
tf.reshape_45/ReshapeReshapetf.tile_22/Tile:output:0$tf.reshape_45/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_45/Reshapev
tf.concat_49/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_49/concat/axis�
tf.concat_49/concatConcatV2tf.reshape_45/Reshape:output:0*conv3d_71/StatefulPartitionedCall:output:0!tf.concat_49/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_49/concat�
!conv3d_72/StatefulPartitionedCallStatefulPartitionedCalltf.concat_49/concat:output:0conv3d_72_5918783conv3d_72_5918785*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_72_layer_call_and_return_conditional_losses_59187822#
!conv3d_72/StatefulPartitionedCall�
!conv3d_73/StatefulPartitionedCallStatefulPartitionedCall*conv3d_72/StatefulPartitionedCall:output:0conv3d_73_5918799conv3d_73_5918801*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_73_layer_call_and_return_conditional_losses_59187982#
!conv3d_73/StatefulPartitionedCall�
IdentityIdentity*conv3d_73/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_71/StatefulPartitionedCall"^conv3d_72/StatefulPartitionedCall"^conv3d_73/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_71/StatefulPartitionedCall!conv3d_71/StatefulPartitionedCall2F
!conv3d_72/StatefulPartitionedCall!conv3d_72/StatefulPartitionedCall2F
!conv3d_73/StatefulPartitionedCall!conv3d_73/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_5919111	
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
GPU2 *0,1,2,3J 8� *+
f&R$
"__inference__wrapped_model_59186272
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
p
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_5918680

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
�
H
,__inference_reshape_55_layer_call_fn_5919422

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_59187612
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
�
�
+__inference_conv3d_72_layer_call_fn_5919446

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_72_layer_call_and_return_conditional_losses_59187822
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
serving_default_input:0���������I
	conv3d_73<
StatefulPartitionedCall:0���������tensorflow/serving/predict:͑
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
0:. 2conv3d_71/kernel
: 2conv3d_71/bias
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
#:!@@ 2dense_27/kernel
:@ 2dense_27/bias
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
0:. 2conv3d_72/kernel
: 2conv3d_72/bias
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
0:. 2conv3d_73/kernel
: 2conv3d_73/bias
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
*__inference_model_27_layer_call_fn_5918824
*__inference_model_27_layer_call_fn_5919132
*__inference_model_27_layer_call_fn_5919153
*__inference_model_27_layer_call_fn_5918996�
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
E__inference_model_27_layer_call_and_return_conditional_losses_5919234
E__inference_model_27_layer_call_and_return_conditional_losses_5919315
E__inference_model_27_layer_call_and_return_conditional_losses_5919042
E__inference_model_27_layer_call_and_return_conditional_losses_5919088�
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
"__inference__wrapped_model_5918627input"�
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
5__inference_range_conversion_27_layer_call_fn_5919320�
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
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_5919332�
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
+__inference_conv3d_71_layer_call_fn_5919341�
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
F__inference_conv3d_71_layer_call_and_return_conditional_losses_5919352�
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
6__inference_average_pooling3d_22_layer_call_fn_5919357
6__inference_average_pooling3d_22_layer_call_fn_5919362�
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
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5919371
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5919380�
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
,__inference_reshape_54_layer_call_fn_5919385�
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
G__inference_reshape_54_layer_call_and_return_conditional_losses_5919397�
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
*__inference_dense_27_layer_call_fn_5919406�
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
E__inference_dense_27_layer_call_and_return_conditional_losses_5919417�
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
,__inference_reshape_55_layer_call_fn_5919422�
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
G__inference_reshape_55_layer_call_and_return_conditional_losses_5919437�
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
+__inference_conv3d_72_layer_call_fn_5919446�
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
F__inference_conv3d_72_layer_call_and_return_conditional_losses_5919457�
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
+__inference_conv3d_73_layer_call_fn_5919466�
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
F__inference_conv3d_73_layer_call_and_return_conditional_losses_5919476�
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
%__inference_signature_wrapper_5919111input"�
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
"__inference__wrapped_model_5918627�+,9:?@:�7
0�-
+�(
input���������
� "A�>
<
	conv3d_73/�,
	conv3d_73����������
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5919371�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5919380p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_22_layer_call_fn_5919357�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_22_layer_call_fn_5919362c;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_71_layer_call_and_return_conditional_losses_5919352t;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_71_layer_call_fn_5919341g;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_72_layer_call_and_return_conditional_losses_5919457t9:;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_72_layer_call_fn_5919446g9:;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_73_layer_call_and_return_conditional_losses_5919476t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_73_layer_call_fn_5919466g?@;�8
1�.
,�)
inputs���������
� "$�!����������
E__inference_dense_27_layer_call_and_return_conditional_losses_5919417\+,/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
*__inference_dense_27_layer_call_fn_5919406O+,/�,
%�"
 �
inputs���������@
� "����������@�
E__inference_model_27_layer_call_and_return_conditional_losses_5919042�+,9:?@B�?
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
E__inference_model_27_layer_call_and_return_conditional_losses_5919088�+,9:?@B�?
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
E__inference_model_27_layer_call_and_return_conditional_losses_5919234�+,9:?@C�@
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
E__inference_model_27_layer_call_and_return_conditional_losses_5919315�+,9:?@C�@
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
*__inference_model_27_layer_call_fn_5918824t+,9:?@B�?
8�5
+�(
input���������
p 

 
� "$�!����������
*__inference_model_27_layer_call_fn_5918996t+,9:?@B�?
8�5
+�(
input���������
p

 
� "$�!����������
*__inference_model_27_layer_call_fn_5919132u+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
*__inference_model_27_layer_call_fn_5919153u+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_5919332t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
5__inference_range_conversion_27_layer_call_fn_5919320g?�<
5�2
0�-

parameters���������
� "$�!����������
G__inference_reshape_54_layer_call_and_return_conditional_losses_5919397d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_54_layer_call_fn_5919385W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_55_layer_call_and_return_conditional_losses_5919437d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_55_layer_call_fn_5919422W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_5919111�+,9:?@C�@
� 
9�6
4
input+�(
input���������"A�>
<
	conv3d_73/�,
	conv3d_73���������