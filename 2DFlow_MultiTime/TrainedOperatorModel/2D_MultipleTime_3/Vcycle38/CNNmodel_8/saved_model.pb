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
conv3d_172/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_172/kernel
�
%conv3d_172/kernel/Read/ReadVariableOpReadVariableOpconv3d_172/kernel**
_output_shapes
:*
dtype0
v
conv3d_172/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_172/bias
o
#conv3d_172/bias/Read/ReadVariableOpReadVariableOpconv3d_172/bias*
_output_shapes
:*
dtype0
z
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

:@@*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:@*
dtype0
�
conv3d_173/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_173/kernel
�
%conv3d_173/kernel/Read/ReadVariableOpReadVariableOpconv3d_173/kernel**
_output_shapes
:*
dtype0
v
conv3d_173/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_173/bias
o
#conv3d_173/bias/Read/ReadVariableOpReadVariableOpconv3d_173/bias*
_output_shapes
:*
dtype0
�
conv3d_174/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_174/kernel
�
%conv3d_174/kernel/Read/ReadVariableOpReadVariableOpconv3d_174/kernel**
_output_shapes
:*
dtype0
v
conv3d_174/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_174/bias
o
#conv3d_174/bias/Read/ReadVariableOpReadVariableOpconv3d_174/bias*
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
regularization_losses
	variables
trainable_variables
	keras_api

	keras_api

	keras_api
h

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
R
#regularization_losses
$	variables
%trainable_variables
&	keras_api
R
'regularization_losses
(	variables
)trainable_variables
*	keras_api
h

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
R
1regularization_losses
2	variables
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
;regularization_losses
<	variables
=trainable_variables
>	keras_api
h

?kernel
@bias
Aregularization_losses
B	variables
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
Elayer_regularization_losses

Flayers
regularization_losses
Glayer_metrics
	variables
Hnon_trainable_variables
trainable_variables
Imetrics
 
 
 
 
 
�
Jlayer_regularization_losses

Klayers
regularization_losses
Llayer_metrics
	variables
Mnon_trainable_variables
trainable_variables
Nmetrics
 
 
][
VARIABLE_VALUEconv3d_172/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_172/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
Olayer_regularization_losses

Players
regularization_losses
Qlayer_metrics
 	variables
Rnon_trainable_variables
!trainable_variables
Smetrics
 
 
 
�
Tlayer_regularization_losses

Ulayers
#regularization_losses
Vlayer_metrics
$	variables
Wnon_trainable_variables
%trainable_variables
Xmetrics
 
 
 
�
Ylayer_regularization_losses

Zlayers
'regularization_losses
[layer_metrics
(	variables
\non_trainable_variables
)trainable_variables
]metrics
[Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_38/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
�
^layer_regularization_losses

_layers
-regularization_losses
`layer_metrics
.	variables
anon_trainable_variables
/trainable_variables
bmetrics
 
 
 
�
clayer_regularization_losses

dlayers
1regularization_losses
elayer_metrics
2	variables
fnon_trainable_variables
3trainable_variables
gmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_173/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_173/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

90
:1

90
:1
�
hlayer_regularization_losses

ilayers
;regularization_losses
jlayer_metrics
<	variables
knon_trainable_variables
=trainable_variables
lmetrics
][
VARIABLE_VALUEconv3d_174/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_174/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
�
mlayer_regularization_losses

nlayers
Aregularization_losses
olayer_metrics
B	variables
pnon_trainable_variables
Ctrainable_variables
qmetrics
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_172/kernelconv3d_172/biasdense_38/kerneldense_38/biasconv3d_173/kernelconv3d_173/biasconv3d_174/kernelconv3d_174/bias*
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
%__inference_signature_wrapper_8736783
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_172/kernel/Read/ReadVariableOp#conv3d_172/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp%conv3d_173/kernel/Read/ReadVariableOp#conv3d_173/bias/Read/ReadVariableOp%conv3d_174/kernel/Read/ReadVariableOp#conv3d_174/bias/Read/ReadVariableOpConst*
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
 __inference__traced_save_8737195
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_172/kernelconv3d_172/biasdense_38/kerneldense_38/biasconv3d_173/kernelconv3d_173/biasconv3d_174/kernelconv3d_174/bias*
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
#__inference__traced_restore_8737229Ϗ
�
�
G__inference_conv3d_173_layer_call_and_return_conditional_losses_8736454

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
p
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_8737004

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
E__inference_model_38_layer_call_and_return_conditional_losses_8736628

inputs0
conv3d_172_8736596: 
conv3d_172_8736598:"
dense_38_8736603:@@
dense_38_8736605:@0
conv3d_173_8736617: 
conv3d_173_8736619:0
conv3d_174_8736622: 
conv3d_174_8736624:
identity��"conv3d_172/StatefulPartitionedCall�"conv3d_173/StatefulPartitionedCall�"conv3d_174/StatefulPartitionedCall� dense_38/StatefulPartitionedCall�
0tf.__operators__.getitem_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_222/strided_slice/stack�
2tf.__operators__.getitem_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_222/strided_slice/stack_1�
2tf.__operators__.getitem_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_222/strided_slice/stack_2�
*tf.__operators__.getitem_222/strided_sliceStridedSliceinputs9tf.__operators__.getitem_222/strided_slice/stack:output:0;tf.__operators__.getitem_222/strided_slice/stack_1:output:0;tf.__operators__.getitem_222/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_222/strided_slice�
#range_conversion_38/PartitionedCallPartitionedCall3tf.__operators__.getitem_222/strided_slice:output:0*
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
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_87363522%
#range_conversion_38/PartitionedCall�
0tf.__operators__.getitem_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_223/strided_slice/stack�
2tf.__operators__.getitem_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_223/strided_slice/stack_1�
2tf.__operators__.getitem_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_223/strided_slice/stack_2�
*tf.__operators__.getitem_223/strided_sliceStridedSliceinputs9tf.__operators__.getitem_223/strided_slice/stack:output:0;tf.__operators__.getitem_223/strided_slice/stack_1:output:0;tf.__operators__.getitem_223/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_223/strided_slicex
tf.concat_262/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_262/concat/axis�
tf.concat_262/concatConcatV2,range_conversion_38/PartitionedCall:output:03tf.__operators__.getitem_223/strided_slice:output:0"tf.concat_262/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_262/concat�
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_262/concat:output:0conv3d_172_8736596conv3d_172_8736598*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_172_layer_call_and_return_conditional_losses_87363712$
"conv3d_172/StatefulPartitionedCall�
$average_pooling3d_67/PartitionedCallPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_87363852&
$average_pooling3d_67/PartitionedCall�
reshape_76/PartitionedCallPartitionedCall-average_pooling3d_67/PartitionedCall:output:0*
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
G__inference_reshape_76_layer_call_and_return_conditional_losses_87363992
reshape_76/PartitionedCall�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#reshape_76/PartitionedCall:output:0dense_38_8736603dense_38_8736605*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_87364122"
 dense_38/StatefulPartitionedCall�
reshape_77/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
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
G__inference_reshape_77_layer_call_and_return_conditional_losses_87364332
reshape_77/PartitionedCall�
tf.reshape_302/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_302/Reshape/shape�
tf.reshape_302/ReshapeReshape#reshape_77/PartitionedCall:output:0%tf.reshape_302/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_302/Reshape�
tf.tile_151/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_151/Tile/multiples�
tf.tile_151/TileTiletf.reshape_302/Reshape:output:0#tf.tile_151/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_151/Tile�
tf.reshape_303/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_303/Reshape/shape�
tf.reshape_303/ReshapeReshapetf.tile_151/Tile:output:0%tf.reshape_303/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_303/Reshapex
tf.concat_263/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_263/concat/axis�
tf.concat_263/concatConcatV2tf.reshape_303/Reshape:output:0+conv3d_172/StatefulPartitionedCall:output:0"tf.concat_263/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_263/concat�
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCalltf.concat_263/concat:output:0conv3d_173_8736617conv3d_173_8736619*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_173_layer_call_and_return_conditional_losses_87364542$
"conv3d_173/StatefulPartitionedCall�
"conv3d_174/StatefulPartitionedCallStatefulPartitionedCall+conv3d_173/StatefulPartitionedCall:output:0conv3d_174_8736622conv3d_174_8736624*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_174_layer_call_and_return_conditional_losses_87364702$
"conv3d_174/StatefulPartitionedCall�
IdentityIdentity+conv3d_174/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall#^conv3d_174/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2H
"conv3d_174/StatefulPartitionedCall"conv3d_174/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
G__inference_conv3d_173_layer_call_and_return_conditional_losses_8737129

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
�
*__inference_dense_38_layer_call_fn_8737078

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
E__inference_dense_38_layer_call_and_return_conditional_losses_87364122
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
�'
�
#__inference__traced_restore_8737229
file_prefix@
"assignvariableop_conv3d_172_kernel:0
"assignvariableop_1_conv3d_172_bias:4
"assignvariableop_2_dense_38_kernel:@@.
 assignvariableop_3_dense_38_bias:@B
$assignvariableop_4_conv3d_173_kernel:0
"assignvariableop_5_conv3d_173_bias:B
$assignvariableop_6_conv3d_174_kernel:0
"assignvariableop_7_conv3d_174_bias:

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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_172_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_172_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_38_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_38_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_173_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_173_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_174_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_174_biasIdentity_7:output:0"/device:CPU:0*
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
m
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8737052

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
�
E__inference_dense_38_layer_call_and_return_conditional_losses_8737089

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
�
R
6__inference_average_pooling3d_67_layer_call_fn_8737034

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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_87363852
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

m
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8736312

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
R
6__inference_average_pooling3d_67_layer_call_fn_8737029

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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_87363122
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
�u
�
E__inference_model_38_layer_call_and_return_conditional_losses_8736906

inputsG
)conv3d_172_conv3d_readvariableop_resource:8
*conv3d_172_biasadd_readvariableop_resource:9
'dense_38_matmul_readvariableop_resource:@@6
(dense_38_biasadd_readvariableop_resource:@G
)conv3d_173_conv3d_readvariableop_resource:8
*conv3d_173_biasadd_readvariableop_resource:G
)conv3d_174_conv3d_readvariableop_resource:8
*conv3d_174_biasadd_readvariableop_resource:
identity��!conv3d_172/BiasAdd/ReadVariableOp� conv3d_172/Conv3D/ReadVariableOp�!conv3d_173/BiasAdd/ReadVariableOp� conv3d_173/Conv3D/ReadVariableOp�!conv3d_174/BiasAdd/ReadVariableOp� conv3d_174/Conv3D/ReadVariableOp�dense_38/BiasAdd/ReadVariableOp�dense_38/MatMul/ReadVariableOp�
0tf.__operators__.getitem_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_222/strided_slice/stack�
2tf.__operators__.getitem_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_222/strided_slice/stack_1�
2tf.__operators__.getitem_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_222/strided_slice/stack_2�
*tf.__operators__.getitem_222/strided_sliceStridedSliceinputs9tf.__operators__.getitem_222/strided_slice/stack:output:0;tf.__operators__.getitem_222/strided_slice/stack_1:output:0;tf.__operators__.getitem_222/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_222/strided_slice{
range_conversion_38/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_38/sub/y�
range_conversion_38/subSub3tf.__operators__.getitem_222/strided_slice:output:0"range_conversion_38/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/sub�
range_conversion_38/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_38/truediv/y�
range_conversion_38/truedivRealDivrange_conversion_38/sub:z:0&range_conversion_38/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/truediv{
range_conversion_38/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_38/mul/y�
range_conversion_38/mulMulrange_conversion_38/truediv:z:0"range_conversion_38/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/mul{
range_conversion_38/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_38/add/y�
range_conversion_38/addAddV2range_conversion_38/mul:z:0"range_conversion_38/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/add�
0tf.__operators__.getitem_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_223/strided_slice/stack�
2tf.__operators__.getitem_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_223/strided_slice/stack_1�
2tf.__operators__.getitem_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_223/strided_slice/stack_2�
*tf.__operators__.getitem_223/strided_sliceStridedSliceinputs9tf.__operators__.getitem_223/strided_slice/stack:output:0;tf.__operators__.getitem_223/strided_slice/stack_1:output:0;tf.__operators__.getitem_223/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_223/strided_slicex
tf.concat_262/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_262/concat/axis�
tf.concat_262/concatConcatV2range_conversion_38/add:z:03tf.__operators__.getitem_223/strided_slice:output:0"tf.concat_262/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_262/concat�
 conv3d_172/Conv3D/ReadVariableOpReadVariableOp)conv3d_172_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_172/Conv3D/ReadVariableOp�
conv3d_172/Conv3DConv3Dtf.concat_262/concat:output:0(conv3d_172/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_172/Conv3D�
!conv3d_172/BiasAdd/ReadVariableOpReadVariableOp*conv3d_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_172/BiasAdd/ReadVariableOp�
conv3d_172/BiasAddBiasAddconv3d_172/Conv3D:output:0)conv3d_172/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_172/BiasAdd�
conv3d_172/SoftplusSoftplusconv3d_172/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_172/Softplus�
#average_pooling3d_67/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_67/transpose/perm�
average_pooling3d_67/transpose	Transpose!conv3d_172/Softplus:activations:0,average_pooling3d_67/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_67/transpose�
average_pooling3d_67/AvgPool3D	AvgPool3D"average_pooling3d_67/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_67/AvgPool3D�
%average_pooling3d_67/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_67/transpose_1/perm�
 average_pooling3d_67/transpose_1	Transpose'average_pooling3d_67/AvgPool3D:output:0.average_pooling3d_67/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_67/transpose_1x
reshape_76/ShapeShape$average_pooling3d_67/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_76/Shape�
reshape_76/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_76/strided_slice/stack�
 reshape_76/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_76/strided_slice/stack_1�
 reshape_76/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_76/strided_slice/stack_2�
reshape_76/strided_sliceStridedSlicereshape_76/Shape:output:0'reshape_76/strided_slice/stack:output:0)reshape_76/strided_slice/stack_1:output:0)reshape_76/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_76/strided_slicez
reshape_76/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_76/Reshape/shape/1�
reshape_76/Reshape/shapePack!reshape_76/strided_slice:output:0#reshape_76/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_76/Reshape/shape�
reshape_76/ReshapeReshape$average_pooling3d_67/transpose_1:y:0!reshape_76/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_76/Reshape�
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_38/MatMul/ReadVariableOp�
dense_38/MatMulMatMulreshape_76/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_38/MatMul�
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_38/BiasAdd/ReadVariableOp�
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_38/BiasAdd
dense_38/SoftplusSoftplusdense_38/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_38/Softpluss
reshape_77/ShapeShapedense_38/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_77/Shape�
reshape_77/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_77/strided_slice/stack�
 reshape_77/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_77/strided_slice/stack_1�
 reshape_77/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_77/strided_slice/stack_2�
reshape_77/strided_sliceStridedSlicereshape_77/Shape:output:0'reshape_77/strided_slice/stack:output:0)reshape_77/strided_slice/stack_1:output:0)reshape_77/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_77/strided_slicez
reshape_77/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/1z
reshape_77/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/2z
reshape_77/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/3z
reshape_77/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/4�
reshape_77/Reshape/shapePack!reshape_77/strided_slice:output:0#reshape_77/Reshape/shape/1:output:0#reshape_77/Reshape/shape/2:output:0#reshape_77/Reshape/shape/3:output:0#reshape_77/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_77/Reshape/shape�
reshape_77/ReshapeReshapedense_38/Softplus:activations:0!reshape_77/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_77/Reshape�
tf.reshape_302/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_302/Reshape/shape�
tf.reshape_302/ReshapeReshapereshape_77/Reshape:output:0%tf.reshape_302/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_302/Reshape�
tf.tile_151/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_151/Tile/multiples�
tf.tile_151/TileTiletf.reshape_302/Reshape:output:0#tf.tile_151/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_151/Tile�
tf.reshape_303/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_303/Reshape/shape�
tf.reshape_303/ReshapeReshapetf.tile_151/Tile:output:0%tf.reshape_303/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_303/Reshapex
tf.concat_263/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_263/concat/axis�
tf.concat_263/concatConcatV2tf.reshape_303/Reshape:output:0!conv3d_172/Softplus:activations:0"tf.concat_263/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_263/concat�
 conv3d_173/Conv3D/ReadVariableOpReadVariableOp)conv3d_173_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_173/Conv3D/ReadVariableOp�
conv3d_173/Conv3DConv3Dtf.concat_263/concat:output:0(conv3d_173/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_173/Conv3D�
!conv3d_173/BiasAdd/ReadVariableOpReadVariableOp*conv3d_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_173/BiasAdd/ReadVariableOp�
conv3d_173/BiasAddBiasAddconv3d_173/Conv3D:output:0)conv3d_173/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_173/BiasAdd�
conv3d_173/SoftplusSoftplusconv3d_173/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_173/Softplus�
 conv3d_174/Conv3D/ReadVariableOpReadVariableOp)conv3d_174_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_174/Conv3D/ReadVariableOp�
conv3d_174/Conv3DConv3D!conv3d_173/Softplus:activations:0(conv3d_174/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_174/Conv3D�
!conv3d_174/BiasAdd/ReadVariableOpReadVariableOp*conv3d_174_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_174/BiasAdd/ReadVariableOp�
conv3d_174/BiasAddBiasAddconv3d_174/Conv3D:output:0)conv3d_174/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_174/BiasAdd�
IdentityIdentityconv3d_174/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_172/BiasAdd/ReadVariableOp!^conv3d_172/Conv3D/ReadVariableOp"^conv3d_173/BiasAdd/ReadVariableOp!^conv3d_173/Conv3D/ReadVariableOp"^conv3d_174/BiasAdd/ReadVariableOp!^conv3d_174/Conv3D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_172/BiasAdd/ReadVariableOp!conv3d_172/BiasAdd/ReadVariableOp2D
 conv3d_172/Conv3D/ReadVariableOp conv3d_172/Conv3D/ReadVariableOp2F
!conv3d_173/BiasAdd/ReadVariableOp!conv3d_173/BiasAdd/ReadVariableOp2D
 conv3d_173/Conv3D/ReadVariableOp conv3d_173/Conv3D/ReadVariableOp2F
!conv3d_174/BiasAdd/ReadVariableOp!conv3d_174/BiasAdd/ReadVariableOp2D
 conv3d_174/Conv3D/ReadVariableOp conv3d_174/Conv3D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
p
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_8736352

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
�
�
,__inference_conv3d_172_layer_call_fn_8737013

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_172_layer_call_and_return_conditional_losses_87363712
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
�
�
G__inference_conv3d_172_layer_call_and_return_conditional_losses_8736371

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
�
E__inference_dense_38_layer_call_and_return_conditional_losses_8736412

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
*__inference_model_38_layer_call_fn_8736496	
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
E__inference_model_38_layer_call_and_return_conditional_losses_87364772
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
E__inference_model_38_layer_call_and_return_conditional_losses_8736714	
input0
conv3d_172_8736682: 
conv3d_172_8736684:"
dense_38_8736689:@@
dense_38_8736691:@0
conv3d_173_8736703: 
conv3d_173_8736705:0
conv3d_174_8736708: 
conv3d_174_8736710:
identity��"conv3d_172/StatefulPartitionedCall�"conv3d_173/StatefulPartitionedCall�"conv3d_174/StatefulPartitionedCall� dense_38/StatefulPartitionedCall�
0tf.__operators__.getitem_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_222/strided_slice/stack�
2tf.__operators__.getitem_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_222/strided_slice/stack_1�
2tf.__operators__.getitem_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_222/strided_slice/stack_2�
*tf.__operators__.getitem_222/strided_sliceStridedSliceinput9tf.__operators__.getitem_222/strided_slice/stack:output:0;tf.__operators__.getitem_222/strided_slice/stack_1:output:0;tf.__operators__.getitem_222/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_222/strided_slice�
#range_conversion_38/PartitionedCallPartitionedCall3tf.__operators__.getitem_222/strided_slice:output:0*
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
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_87363522%
#range_conversion_38/PartitionedCall�
0tf.__operators__.getitem_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_223/strided_slice/stack�
2tf.__operators__.getitem_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_223/strided_slice/stack_1�
2tf.__operators__.getitem_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_223/strided_slice/stack_2�
*tf.__operators__.getitem_223/strided_sliceStridedSliceinput9tf.__operators__.getitem_223/strided_slice/stack:output:0;tf.__operators__.getitem_223/strided_slice/stack_1:output:0;tf.__operators__.getitem_223/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_223/strided_slicex
tf.concat_262/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_262/concat/axis�
tf.concat_262/concatConcatV2,range_conversion_38/PartitionedCall:output:03tf.__operators__.getitem_223/strided_slice:output:0"tf.concat_262/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_262/concat�
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_262/concat:output:0conv3d_172_8736682conv3d_172_8736684*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_172_layer_call_and_return_conditional_losses_87363712$
"conv3d_172/StatefulPartitionedCall�
$average_pooling3d_67/PartitionedCallPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_87363852&
$average_pooling3d_67/PartitionedCall�
reshape_76/PartitionedCallPartitionedCall-average_pooling3d_67/PartitionedCall:output:0*
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
G__inference_reshape_76_layer_call_and_return_conditional_losses_87363992
reshape_76/PartitionedCall�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#reshape_76/PartitionedCall:output:0dense_38_8736689dense_38_8736691*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_87364122"
 dense_38/StatefulPartitionedCall�
reshape_77/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
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
G__inference_reshape_77_layer_call_and_return_conditional_losses_87364332
reshape_77/PartitionedCall�
tf.reshape_302/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_302/Reshape/shape�
tf.reshape_302/ReshapeReshape#reshape_77/PartitionedCall:output:0%tf.reshape_302/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_302/Reshape�
tf.tile_151/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_151/Tile/multiples�
tf.tile_151/TileTiletf.reshape_302/Reshape:output:0#tf.tile_151/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_151/Tile�
tf.reshape_303/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_303/Reshape/shape�
tf.reshape_303/ReshapeReshapetf.tile_151/Tile:output:0%tf.reshape_303/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_303/Reshapex
tf.concat_263/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_263/concat/axis�
tf.concat_263/concatConcatV2tf.reshape_303/Reshape:output:0+conv3d_172/StatefulPartitionedCall:output:0"tf.concat_263/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_263/concat�
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCalltf.concat_263/concat:output:0conv3d_173_8736703conv3d_173_8736705*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_173_layer_call_and_return_conditional_losses_87364542$
"conv3d_173/StatefulPartitionedCall�
"conv3d_174/StatefulPartitionedCallStatefulPartitionedCall+conv3d_173/StatefulPartitionedCall:output:0conv3d_174_8736708conv3d_174_8736710*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_174_layer_call_and_return_conditional_losses_87364702$
"conv3d_174/StatefulPartitionedCall�
IdentityIdentity+conv3d_174/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall#^conv3d_174/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2H
"conv3d_174/StatefulPartitionedCall"conv3d_174/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
G__inference_conv3d_172_layer_call_and_return_conditional_losses_8737024

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

m
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8737043

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
 __inference__traced_save_8737195
file_prefix0
,savev2_conv3d_172_kernel_read_readvariableop.
*savev2_conv3d_172_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop0
,savev2_conv3d_173_kernel_read_readvariableop.
*savev2_conv3d_173_bias_read_readvariableop0
,savev2_conv3d_174_kernel_read_readvariableop.
*savev2_conv3d_174_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_172_kernel_read_readvariableop*savev2_conv3d_172_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop,savev2_conv3d_173_kernel_read_readvariableop*savev2_conv3d_173_bias_read_readvariableop,savev2_conv3d_174_kernel_read_readvariableop*savev2_conv3d_174_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
H
,__inference_reshape_76_layer_call_fn_8737057

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
G__inference_reshape_76_layer_call_and_return_conditional_losses_87363992
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
�
H
,__inference_reshape_77_layer_call_fn_8737094

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
G__inference_reshape_77_layer_call_and_return_conditional_losses_87364332
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
c
G__inference_reshape_76_layer_call_and_return_conditional_losses_8737069

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
��
�
"__inference__wrapped_model_8736299	
inputP
2model_38_conv3d_172_conv3d_readvariableop_resource:A
3model_38_conv3d_172_biasadd_readvariableop_resource:B
0model_38_dense_38_matmul_readvariableop_resource:@@?
1model_38_dense_38_biasadd_readvariableop_resource:@P
2model_38_conv3d_173_conv3d_readvariableop_resource:A
3model_38_conv3d_173_biasadd_readvariableop_resource:P
2model_38_conv3d_174_conv3d_readvariableop_resource:A
3model_38_conv3d_174_biasadd_readvariableop_resource:
identity��*model_38/conv3d_172/BiasAdd/ReadVariableOp�)model_38/conv3d_172/Conv3D/ReadVariableOp�*model_38/conv3d_173/BiasAdd/ReadVariableOp�)model_38/conv3d_173/Conv3D/ReadVariableOp�*model_38/conv3d_174/BiasAdd/ReadVariableOp�)model_38/conv3d_174/Conv3D/ReadVariableOp�(model_38/dense_38/BiasAdd/ReadVariableOp�'model_38/dense_38/MatMul/ReadVariableOp�
9model_38/tf.__operators__.getitem_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_38/tf.__operators__.getitem_222/strided_slice/stack�
;model_38/tf.__operators__.getitem_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_38/tf.__operators__.getitem_222/strided_slice/stack_1�
;model_38/tf.__operators__.getitem_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_38/tf.__operators__.getitem_222/strided_slice/stack_2�
3model_38/tf.__operators__.getitem_222/strided_sliceStridedSliceinputBmodel_38/tf.__operators__.getitem_222/strided_slice/stack:output:0Dmodel_38/tf.__operators__.getitem_222/strided_slice/stack_1:output:0Dmodel_38/tf.__operators__.getitem_222/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_38/tf.__operators__.getitem_222/strided_slice�
"model_38/range_conversion_38/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_38/range_conversion_38/sub/y�
 model_38/range_conversion_38/subSub<model_38/tf.__operators__.getitem_222/strided_slice:output:0+model_38/range_conversion_38/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_38/range_conversion_38/sub�
&model_38/range_conversion_38/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_38/range_conversion_38/truediv/y�
$model_38/range_conversion_38/truedivRealDiv$model_38/range_conversion_38/sub:z:0/model_38/range_conversion_38/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_38/range_conversion_38/truediv�
"model_38/range_conversion_38/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_38/range_conversion_38/mul/y�
 model_38/range_conversion_38/mulMul(model_38/range_conversion_38/truediv:z:0+model_38/range_conversion_38/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_38/range_conversion_38/mul�
"model_38/range_conversion_38/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_38/range_conversion_38/add/y�
 model_38/range_conversion_38/addAddV2$model_38/range_conversion_38/mul:z:0+model_38/range_conversion_38/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_38/range_conversion_38/add�
9model_38/tf.__operators__.getitem_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_38/tf.__operators__.getitem_223/strided_slice/stack�
;model_38/tf.__operators__.getitem_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_38/tf.__operators__.getitem_223/strided_slice/stack_1�
;model_38/tf.__operators__.getitem_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_38/tf.__operators__.getitem_223/strided_slice/stack_2�
3model_38/tf.__operators__.getitem_223/strided_sliceStridedSliceinputBmodel_38/tf.__operators__.getitem_223/strided_slice/stack:output:0Dmodel_38/tf.__operators__.getitem_223/strided_slice/stack_1:output:0Dmodel_38/tf.__operators__.getitem_223/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_38/tf.__operators__.getitem_223/strided_slice�
"model_38/tf.concat_262/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_38/tf.concat_262/concat/axis�
model_38/tf.concat_262/concatConcatV2$model_38/range_conversion_38/add:z:0<model_38/tf.__operators__.getitem_223/strided_slice:output:0+model_38/tf.concat_262/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_38/tf.concat_262/concat�
)model_38/conv3d_172/Conv3D/ReadVariableOpReadVariableOp2model_38_conv3d_172_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_38/conv3d_172/Conv3D/ReadVariableOp�
model_38/conv3d_172/Conv3DConv3D&model_38/tf.concat_262/concat:output:01model_38/conv3d_172/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_38/conv3d_172/Conv3D�
*model_38/conv3d_172/BiasAdd/ReadVariableOpReadVariableOp3model_38_conv3d_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_38/conv3d_172/BiasAdd/ReadVariableOp�
model_38/conv3d_172/BiasAddBiasAdd#model_38/conv3d_172/Conv3D:output:02model_38/conv3d_172/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_38/conv3d_172/BiasAdd�
model_38/conv3d_172/SoftplusSoftplus$model_38/conv3d_172/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_38/conv3d_172/Softplus�
,model_38/average_pooling3d_67/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_38/average_pooling3d_67/transpose/perm�
'model_38/average_pooling3d_67/transpose	Transpose*model_38/conv3d_172/Softplus:activations:05model_38/average_pooling3d_67/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_38/average_pooling3d_67/transpose�
'model_38/average_pooling3d_67/AvgPool3D	AvgPool3D+model_38/average_pooling3d_67/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_38/average_pooling3d_67/AvgPool3D�
.model_38/average_pooling3d_67/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_38/average_pooling3d_67/transpose_1/perm�
)model_38/average_pooling3d_67/transpose_1	Transpose0model_38/average_pooling3d_67/AvgPool3D:output:07model_38/average_pooling3d_67/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_38/average_pooling3d_67/transpose_1�
model_38/reshape_76/ShapeShape-model_38/average_pooling3d_67/transpose_1:y:0*
T0*
_output_shapes
:2
model_38/reshape_76/Shape�
'model_38/reshape_76/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_38/reshape_76/strided_slice/stack�
)model_38/reshape_76/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_38/reshape_76/strided_slice/stack_1�
)model_38/reshape_76/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_38/reshape_76/strided_slice/stack_2�
!model_38/reshape_76/strided_sliceStridedSlice"model_38/reshape_76/Shape:output:00model_38/reshape_76/strided_slice/stack:output:02model_38/reshape_76/strided_slice/stack_1:output:02model_38/reshape_76/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_38/reshape_76/strided_slice�
#model_38/reshape_76/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_38/reshape_76/Reshape/shape/1�
!model_38/reshape_76/Reshape/shapePack*model_38/reshape_76/strided_slice:output:0,model_38/reshape_76/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_38/reshape_76/Reshape/shape�
model_38/reshape_76/ReshapeReshape-model_38/average_pooling3d_67/transpose_1:y:0*model_38/reshape_76/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_38/reshape_76/Reshape�
'model_38/dense_38/MatMul/ReadVariableOpReadVariableOp0model_38_dense_38_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_38/dense_38/MatMul/ReadVariableOp�
model_38/dense_38/MatMulMatMul$model_38/reshape_76/Reshape:output:0/model_38/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_38/dense_38/MatMul�
(model_38/dense_38/BiasAdd/ReadVariableOpReadVariableOp1model_38_dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_38/dense_38/BiasAdd/ReadVariableOp�
model_38/dense_38/BiasAddBiasAdd"model_38/dense_38/MatMul:product:00model_38/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_38/dense_38/BiasAdd�
model_38/dense_38/SoftplusSoftplus"model_38/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_38/dense_38/Softplus�
model_38/reshape_77/ShapeShape(model_38/dense_38/Softplus:activations:0*
T0*
_output_shapes
:2
model_38/reshape_77/Shape�
'model_38/reshape_77/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_38/reshape_77/strided_slice/stack�
)model_38/reshape_77/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_38/reshape_77/strided_slice/stack_1�
)model_38/reshape_77/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_38/reshape_77/strided_slice/stack_2�
!model_38/reshape_77/strided_sliceStridedSlice"model_38/reshape_77/Shape:output:00model_38/reshape_77/strided_slice/stack:output:02model_38/reshape_77/strided_slice/stack_1:output:02model_38/reshape_77/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_38/reshape_77/strided_slice�
#model_38/reshape_77/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_38/reshape_77/Reshape/shape/1�
#model_38/reshape_77/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_38/reshape_77/Reshape/shape/2�
#model_38/reshape_77/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_38/reshape_77/Reshape/shape/3�
#model_38/reshape_77/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_38/reshape_77/Reshape/shape/4�
!model_38/reshape_77/Reshape/shapePack*model_38/reshape_77/strided_slice:output:0,model_38/reshape_77/Reshape/shape/1:output:0,model_38/reshape_77/Reshape/shape/2:output:0,model_38/reshape_77/Reshape/shape/3:output:0,model_38/reshape_77/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_38/reshape_77/Reshape/shape�
model_38/reshape_77/ReshapeReshape(model_38/dense_38/Softplus:activations:0*model_38/reshape_77/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_38/reshape_77/Reshape�
%model_38/tf.reshape_302/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_38/tf.reshape_302/Reshape/shape�
model_38/tf.reshape_302/ReshapeReshape$model_38/reshape_77/Reshape:output:0.model_38/tf.reshape_302/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_38/tf.reshape_302/Reshape�
#model_38/tf.tile_151/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_38/tf.tile_151/Tile/multiples�
model_38/tf.tile_151/TileTile(model_38/tf.reshape_302/Reshape:output:0,model_38/tf.tile_151/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_38/tf.tile_151/Tile�
%model_38/tf.reshape_303/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_38/tf.reshape_303/Reshape/shape�
model_38/tf.reshape_303/ReshapeReshape"model_38/tf.tile_151/Tile:output:0.model_38/tf.reshape_303/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_38/tf.reshape_303/Reshape�
"model_38/tf.concat_263/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_38/tf.concat_263/concat/axis�
model_38/tf.concat_263/concatConcatV2(model_38/tf.reshape_303/Reshape:output:0*model_38/conv3d_172/Softplus:activations:0+model_38/tf.concat_263/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_38/tf.concat_263/concat�
)model_38/conv3d_173/Conv3D/ReadVariableOpReadVariableOp2model_38_conv3d_173_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_38/conv3d_173/Conv3D/ReadVariableOp�
model_38/conv3d_173/Conv3DConv3D&model_38/tf.concat_263/concat:output:01model_38/conv3d_173/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_38/conv3d_173/Conv3D�
*model_38/conv3d_173/BiasAdd/ReadVariableOpReadVariableOp3model_38_conv3d_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_38/conv3d_173/BiasAdd/ReadVariableOp�
model_38/conv3d_173/BiasAddBiasAdd#model_38/conv3d_173/Conv3D:output:02model_38/conv3d_173/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_38/conv3d_173/BiasAdd�
model_38/conv3d_173/SoftplusSoftplus$model_38/conv3d_173/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_38/conv3d_173/Softplus�
)model_38/conv3d_174/Conv3D/ReadVariableOpReadVariableOp2model_38_conv3d_174_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_38/conv3d_174/Conv3D/ReadVariableOp�
model_38/conv3d_174/Conv3DConv3D*model_38/conv3d_173/Softplus:activations:01model_38/conv3d_174/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_38/conv3d_174/Conv3D�
*model_38/conv3d_174/BiasAdd/ReadVariableOpReadVariableOp3model_38_conv3d_174_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_38/conv3d_174/BiasAdd/ReadVariableOp�
model_38/conv3d_174/BiasAddBiasAdd#model_38/conv3d_174/Conv3D:output:02model_38/conv3d_174/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_38/conv3d_174/BiasAdd�
IdentityIdentity$model_38/conv3d_174/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_38/conv3d_172/BiasAdd/ReadVariableOp*^model_38/conv3d_172/Conv3D/ReadVariableOp+^model_38/conv3d_173/BiasAdd/ReadVariableOp*^model_38/conv3d_173/Conv3D/ReadVariableOp+^model_38/conv3d_174/BiasAdd/ReadVariableOp*^model_38/conv3d_174/Conv3D/ReadVariableOp)^model_38/dense_38/BiasAdd/ReadVariableOp(^model_38/dense_38/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2X
*model_38/conv3d_172/BiasAdd/ReadVariableOp*model_38/conv3d_172/BiasAdd/ReadVariableOp2V
)model_38/conv3d_172/Conv3D/ReadVariableOp)model_38/conv3d_172/Conv3D/ReadVariableOp2X
*model_38/conv3d_173/BiasAdd/ReadVariableOp*model_38/conv3d_173/BiasAdd/ReadVariableOp2V
)model_38/conv3d_173/Conv3D/ReadVariableOp)model_38/conv3d_173/Conv3D/ReadVariableOp2X
*model_38/conv3d_174/BiasAdd/ReadVariableOp*model_38/conv3d_174/BiasAdd/ReadVariableOp2V
)model_38/conv3d_174/Conv3D/ReadVariableOp)model_38/conv3d_174/Conv3D/ReadVariableOp2T
(model_38/dense_38/BiasAdd/ReadVariableOp(model_38/dense_38/BiasAdd/ReadVariableOp2R
'model_38/dense_38/MatMul/ReadVariableOp'model_38/dense_38/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�

�
%__inference_signature_wrapper_8736783	
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
"__inference__wrapped_model_87362992
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
E__inference_model_38_layer_call_and_return_conditional_losses_8736477

inputs0
conv3d_172_8736372: 
conv3d_172_8736374:"
dense_38_8736413:@@
dense_38_8736415:@0
conv3d_173_8736455: 
conv3d_173_8736457:0
conv3d_174_8736471: 
conv3d_174_8736473:
identity��"conv3d_172/StatefulPartitionedCall�"conv3d_173/StatefulPartitionedCall�"conv3d_174/StatefulPartitionedCall� dense_38/StatefulPartitionedCall�
0tf.__operators__.getitem_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_222/strided_slice/stack�
2tf.__operators__.getitem_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_222/strided_slice/stack_1�
2tf.__operators__.getitem_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_222/strided_slice/stack_2�
*tf.__operators__.getitem_222/strided_sliceStridedSliceinputs9tf.__operators__.getitem_222/strided_slice/stack:output:0;tf.__operators__.getitem_222/strided_slice/stack_1:output:0;tf.__operators__.getitem_222/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_222/strided_slice�
#range_conversion_38/PartitionedCallPartitionedCall3tf.__operators__.getitem_222/strided_slice:output:0*
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
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_87363522%
#range_conversion_38/PartitionedCall�
0tf.__operators__.getitem_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_223/strided_slice/stack�
2tf.__operators__.getitem_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_223/strided_slice/stack_1�
2tf.__operators__.getitem_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_223/strided_slice/stack_2�
*tf.__operators__.getitem_223/strided_sliceStridedSliceinputs9tf.__operators__.getitem_223/strided_slice/stack:output:0;tf.__operators__.getitem_223/strided_slice/stack_1:output:0;tf.__operators__.getitem_223/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_223/strided_slicex
tf.concat_262/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_262/concat/axis�
tf.concat_262/concatConcatV2,range_conversion_38/PartitionedCall:output:03tf.__operators__.getitem_223/strided_slice:output:0"tf.concat_262/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_262/concat�
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_262/concat:output:0conv3d_172_8736372conv3d_172_8736374*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_172_layer_call_and_return_conditional_losses_87363712$
"conv3d_172/StatefulPartitionedCall�
$average_pooling3d_67/PartitionedCallPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_87363852&
$average_pooling3d_67/PartitionedCall�
reshape_76/PartitionedCallPartitionedCall-average_pooling3d_67/PartitionedCall:output:0*
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
G__inference_reshape_76_layer_call_and_return_conditional_losses_87363992
reshape_76/PartitionedCall�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#reshape_76/PartitionedCall:output:0dense_38_8736413dense_38_8736415*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_87364122"
 dense_38/StatefulPartitionedCall�
reshape_77/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
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
G__inference_reshape_77_layer_call_and_return_conditional_losses_87364332
reshape_77/PartitionedCall�
tf.reshape_302/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_302/Reshape/shape�
tf.reshape_302/ReshapeReshape#reshape_77/PartitionedCall:output:0%tf.reshape_302/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_302/Reshape�
tf.tile_151/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_151/Tile/multiples�
tf.tile_151/TileTiletf.reshape_302/Reshape:output:0#tf.tile_151/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_151/Tile�
tf.reshape_303/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_303/Reshape/shape�
tf.reshape_303/ReshapeReshapetf.tile_151/Tile:output:0%tf.reshape_303/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_303/Reshapex
tf.concat_263/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_263/concat/axis�
tf.concat_263/concatConcatV2tf.reshape_303/Reshape:output:0+conv3d_172/StatefulPartitionedCall:output:0"tf.concat_263/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_263/concat�
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCalltf.concat_263/concat:output:0conv3d_173_8736455conv3d_173_8736457*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_173_layer_call_and_return_conditional_losses_87364542$
"conv3d_173/StatefulPartitionedCall�
"conv3d_174/StatefulPartitionedCallStatefulPartitionedCall+conv3d_173/StatefulPartitionedCall:output:0conv3d_174_8736471conv3d_174_8736473*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_174_layer_call_and_return_conditional_losses_87364702$
"conv3d_174/StatefulPartitionedCall�
IdentityIdentity+conv3d_174/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall#^conv3d_174/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2H
"conv3d_174/StatefulPartitionedCall"conv3d_174/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�u
�
E__inference_model_38_layer_call_and_return_conditional_losses_8736987

inputsG
)conv3d_172_conv3d_readvariableop_resource:8
*conv3d_172_biasadd_readvariableop_resource:9
'dense_38_matmul_readvariableop_resource:@@6
(dense_38_biasadd_readvariableop_resource:@G
)conv3d_173_conv3d_readvariableop_resource:8
*conv3d_173_biasadd_readvariableop_resource:G
)conv3d_174_conv3d_readvariableop_resource:8
*conv3d_174_biasadd_readvariableop_resource:
identity��!conv3d_172/BiasAdd/ReadVariableOp� conv3d_172/Conv3D/ReadVariableOp�!conv3d_173/BiasAdd/ReadVariableOp� conv3d_173/Conv3D/ReadVariableOp�!conv3d_174/BiasAdd/ReadVariableOp� conv3d_174/Conv3D/ReadVariableOp�dense_38/BiasAdd/ReadVariableOp�dense_38/MatMul/ReadVariableOp�
0tf.__operators__.getitem_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_222/strided_slice/stack�
2tf.__operators__.getitem_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_222/strided_slice/stack_1�
2tf.__operators__.getitem_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_222/strided_slice/stack_2�
*tf.__operators__.getitem_222/strided_sliceStridedSliceinputs9tf.__operators__.getitem_222/strided_slice/stack:output:0;tf.__operators__.getitem_222/strided_slice/stack_1:output:0;tf.__operators__.getitem_222/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_222/strided_slice{
range_conversion_38/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_38/sub/y�
range_conversion_38/subSub3tf.__operators__.getitem_222/strided_slice:output:0"range_conversion_38/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/sub�
range_conversion_38/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_38/truediv/y�
range_conversion_38/truedivRealDivrange_conversion_38/sub:z:0&range_conversion_38/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/truediv{
range_conversion_38/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_38/mul/y�
range_conversion_38/mulMulrange_conversion_38/truediv:z:0"range_conversion_38/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/mul{
range_conversion_38/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_38/add/y�
range_conversion_38/addAddV2range_conversion_38/mul:z:0"range_conversion_38/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_38/add�
0tf.__operators__.getitem_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_223/strided_slice/stack�
2tf.__operators__.getitem_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_223/strided_slice/stack_1�
2tf.__operators__.getitem_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_223/strided_slice/stack_2�
*tf.__operators__.getitem_223/strided_sliceStridedSliceinputs9tf.__operators__.getitem_223/strided_slice/stack:output:0;tf.__operators__.getitem_223/strided_slice/stack_1:output:0;tf.__operators__.getitem_223/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_223/strided_slicex
tf.concat_262/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_262/concat/axis�
tf.concat_262/concatConcatV2range_conversion_38/add:z:03tf.__operators__.getitem_223/strided_slice:output:0"tf.concat_262/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_262/concat�
 conv3d_172/Conv3D/ReadVariableOpReadVariableOp)conv3d_172_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_172/Conv3D/ReadVariableOp�
conv3d_172/Conv3DConv3Dtf.concat_262/concat:output:0(conv3d_172/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_172/Conv3D�
!conv3d_172/BiasAdd/ReadVariableOpReadVariableOp*conv3d_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_172/BiasAdd/ReadVariableOp�
conv3d_172/BiasAddBiasAddconv3d_172/Conv3D:output:0)conv3d_172/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_172/BiasAdd�
conv3d_172/SoftplusSoftplusconv3d_172/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_172/Softplus�
#average_pooling3d_67/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_67/transpose/perm�
average_pooling3d_67/transpose	Transpose!conv3d_172/Softplus:activations:0,average_pooling3d_67/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_67/transpose�
average_pooling3d_67/AvgPool3D	AvgPool3D"average_pooling3d_67/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_67/AvgPool3D�
%average_pooling3d_67/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_67/transpose_1/perm�
 average_pooling3d_67/transpose_1	Transpose'average_pooling3d_67/AvgPool3D:output:0.average_pooling3d_67/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_67/transpose_1x
reshape_76/ShapeShape$average_pooling3d_67/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_76/Shape�
reshape_76/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_76/strided_slice/stack�
 reshape_76/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_76/strided_slice/stack_1�
 reshape_76/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_76/strided_slice/stack_2�
reshape_76/strided_sliceStridedSlicereshape_76/Shape:output:0'reshape_76/strided_slice/stack:output:0)reshape_76/strided_slice/stack_1:output:0)reshape_76/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_76/strided_slicez
reshape_76/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_76/Reshape/shape/1�
reshape_76/Reshape/shapePack!reshape_76/strided_slice:output:0#reshape_76/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_76/Reshape/shape�
reshape_76/ReshapeReshape$average_pooling3d_67/transpose_1:y:0!reshape_76/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_76/Reshape�
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_38/MatMul/ReadVariableOp�
dense_38/MatMulMatMulreshape_76/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_38/MatMul�
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_38/BiasAdd/ReadVariableOp�
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_38/BiasAdd
dense_38/SoftplusSoftplusdense_38/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_38/Softpluss
reshape_77/ShapeShapedense_38/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_77/Shape�
reshape_77/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_77/strided_slice/stack�
 reshape_77/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_77/strided_slice/stack_1�
 reshape_77/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_77/strided_slice/stack_2�
reshape_77/strided_sliceStridedSlicereshape_77/Shape:output:0'reshape_77/strided_slice/stack:output:0)reshape_77/strided_slice/stack_1:output:0)reshape_77/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_77/strided_slicez
reshape_77/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/1z
reshape_77/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/2z
reshape_77/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/3z
reshape_77/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_77/Reshape/shape/4�
reshape_77/Reshape/shapePack!reshape_77/strided_slice:output:0#reshape_77/Reshape/shape/1:output:0#reshape_77/Reshape/shape/2:output:0#reshape_77/Reshape/shape/3:output:0#reshape_77/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_77/Reshape/shape�
reshape_77/ReshapeReshapedense_38/Softplus:activations:0!reshape_77/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_77/Reshape�
tf.reshape_302/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_302/Reshape/shape�
tf.reshape_302/ReshapeReshapereshape_77/Reshape:output:0%tf.reshape_302/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_302/Reshape�
tf.tile_151/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_151/Tile/multiples�
tf.tile_151/TileTiletf.reshape_302/Reshape:output:0#tf.tile_151/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_151/Tile�
tf.reshape_303/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_303/Reshape/shape�
tf.reshape_303/ReshapeReshapetf.tile_151/Tile:output:0%tf.reshape_303/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_303/Reshapex
tf.concat_263/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_263/concat/axis�
tf.concat_263/concatConcatV2tf.reshape_303/Reshape:output:0!conv3d_172/Softplus:activations:0"tf.concat_263/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_263/concat�
 conv3d_173/Conv3D/ReadVariableOpReadVariableOp)conv3d_173_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_173/Conv3D/ReadVariableOp�
conv3d_173/Conv3DConv3Dtf.concat_263/concat:output:0(conv3d_173/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_173/Conv3D�
!conv3d_173/BiasAdd/ReadVariableOpReadVariableOp*conv3d_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_173/BiasAdd/ReadVariableOp�
conv3d_173/BiasAddBiasAddconv3d_173/Conv3D:output:0)conv3d_173/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_173/BiasAdd�
conv3d_173/SoftplusSoftplusconv3d_173/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_173/Softplus�
 conv3d_174/Conv3D/ReadVariableOpReadVariableOp)conv3d_174_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_174/Conv3D/ReadVariableOp�
conv3d_174/Conv3DConv3D!conv3d_173/Softplus:activations:0(conv3d_174/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_174/Conv3D�
!conv3d_174/BiasAdd/ReadVariableOpReadVariableOp*conv3d_174_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_174/BiasAdd/ReadVariableOp�
conv3d_174/BiasAddBiasAddconv3d_174/Conv3D:output:0)conv3d_174/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_174/BiasAdd�
IdentityIdentityconv3d_174/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_172/BiasAdd/ReadVariableOp!^conv3d_172/Conv3D/ReadVariableOp"^conv3d_173/BiasAdd/ReadVariableOp!^conv3d_173/Conv3D/ReadVariableOp"^conv3d_174/BiasAdd/ReadVariableOp!^conv3d_174/Conv3D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_172/BiasAdd/ReadVariableOp!conv3d_172/BiasAdd/ReadVariableOp2D
 conv3d_172/Conv3D/ReadVariableOp conv3d_172/Conv3D/ReadVariableOp2F
!conv3d_173/BiasAdd/ReadVariableOp!conv3d_173/BiasAdd/ReadVariableOp2D
 conv3d_173/Conv3D/ReadVariableOp conv3d_173/Conv3D/ReadVariableOp2F
!conv3d_174/BiasAdd/ReadVariableOp!conv3d_174/BiasAdd/ReadVariableOp2D
 conv3d_174/Conv3D/ReadVariableOp conv3d_174/Conv3D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
,__inference_conv3d_174_layer_call_fn_8737138

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_174_layer_call_and_return_conditional_losses_87364702
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
c
G__inference_reshape_77_layer_call_and_return_conditional_losses_8737109

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
*__inference_model_38_layer_call_fn_8736804

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
E__inference_model_38_layer_call_and_return_conditional_losses_87364772
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
G__inference_conv3d_174_layer_call_and_return_conditional_losses_8737148

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
*__inference_model_38_layer_call_fn_8736825

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
E__inference_model_38_layer_call_and_return_conditional_losses_87366282
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
G__inference_reshape_76_layer_call_and_return_conditional_losses_8736399

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
�D
�
E__inference_model_38_layer_call_and_return_conditional_losses_8736760	
input0
conv3d_172_8736728: 
conv3d_172_8736730:"
dense_38_8736735:@@
dense_38_8736737:@0
conv3d_173_8736749: 
conv3d_173_8736751:0
conv3d_174_8736754: 
conv3d_174_8736756:
identity��"conv3d_172/StatefulPartitionedCall�"conv3d_173/StatefulPartitionedCall�"conv3d_174/StatefulPartitionedCall� dense_38/StatefulPartitionedCall�
0tf.__operators__.getitem_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_222/strided_slice/stack�
2tf.__operators__.getitem_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_222/strided_slice/stack_1�
2tf.__operators__.getitem_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_222/strided_slice/stack_2�
*tf.__operators__.getitem_222/strided_sliceStridedSliceinput9tf.__operators__.getitem_222/strided_slice/stack:output:0;tf.__operators__.getitem_222/strided_slice/stack_1:output:0;tf.__operators__.getitem_222/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_222/strided_slice�
#range_conversion_38/PartitionedCallPartitionedCall3tf.__operators__.getitem_222/strided_slice:output:0*
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
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_87363522%
#range_conversion_38/PartitionedCall�
0tf.__operators__.getitem_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_223/strided_slice/stack�
2tf.__operators__.getitem_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_223/strided_slice/stack_1�
2tf.__operators__.getitem_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_223/strided_slice/stack_2�
*tf.__operators__.getitem_223/strided_sliceStridedSliceinput9tf.__operators__.getitem_223/strided_slice/stack:output:0;tf.__operators__.getitem_223/strided_slice/stack_1:output:0;tf.__operators__.getitem_223/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_223/strided_slicex
tf.concat_262/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_262/concat/axis�
tf.concat_262/concatConcatV2,range_conversion_38/PartitionedCall:output:03tf.__operators__.getitem_223/strided_slice:output:0"tf.concat_262/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_262/concat�
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_262/concat:output:0conv3d_172_8736728conv3d_172_8736730*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_172_layer_call_and_return_conditional_losses_87363712$
"conv3d_172/StatefulPartitionedCall�
$average_pooling3d_67/PartitionedCallPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_87363852&
$average_pooling3d_67/PartitionedCall�
reshape_76/PartitionedCallPartitionedCall-average_pooling3d_67/PartitionedCall:output:0*
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
G__inference_reshape_76_layer_call_and_return_conditional_losses_87363992
reshape_76/PartitionedCall�
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#reshape_76/PartitionedCall:output:0dense_38_8736735dense_38_8736737*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_87364122"
 dense_38/StatefulPartitionedCall�
reshape_77/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
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
G__inference_reshape_77_layer_call_and_return_conditional_losses_87364332
reshape_77/PartitionedCall�
tf.reshape_302/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_302/Reshape/shape�
tf.reshape_302/ReshapeReshape#reshape_77/PartitionedCall:output:0%tf.reshape_302/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_302/Reshape�
tf.tile_151/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_151/Tile/multiples�
tf.tile_151/TileTiletf.reshape_302/Reshape:output:0#tf.tile_151/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_151/Tile�
tf.reshape_303/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_303/Reshape/shape�
tf.reshape_303/ReshapeReshapetf.tile_151/Tile:output:0%tf.reshape_303/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_303/Reshapex
tf.concat_263/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_263/concat/axis�
tf.concat_263/concatConcatV2tf.reshape_303/Reshape:output:0+conv3d_172/StatefulPartitionedCall:output:0"tf.concat_263/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_263/concat�
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCalltf.concat_263/concat:output:0conv3d_173_8736749conv3d_173_8736751*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_173_layer_call_and_return_conditional_losses_87364542$
"conv3d_173/StatefulPartitionedCall�
"conv3d_174/StatefulPartitionedCallStatefulPartitionedCall+conv3d_173/StatefulPartitionedCall:output:0conv3d_174_8736754conv3d_174_8736756*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_174_layer_call_and_return_conditional_losses_87364702$
"conv3d_174/StatefulPartitionedCall�
IdentityIdentity+conv3d_174/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall#^conv3d_174/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2H
"conv3d_174/StatefulPartitionedCall"conv3d_174/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
,__inference_conv3d_173_layer_call_fn_8737118

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_173_layer_call_and_return_conditional_losses_87364542
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
G__inference_conv3d_174_layer_call_and_return_conditional_losses_8736470

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
c
G__inference_reshape_77_layer_call_and_return_conditional_losses_8736433

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
*__inference_model_38_layer_call_fn_8736668	
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
E__inference_model_38_layer_call_and_return_conditional_losses_87366282
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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8736385

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
U
5__inference_range_conversion_38_layer_call_fn_8736992

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
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_87363522
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
parameters"�L
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

conv3d_174<
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
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
*s&call_and_return_all_conditional_losses
t_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
regularization_losses
	variables
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
regularization_losses
 	variables
!trainable_variables
"	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#regularization_losses
$	variables
%trainable_variables
&	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
'regularization_losses
(	variables
)trainable_variables
*	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
�

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1regularization_losses
2	variables
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
;regularization_losses
<	variables
=trainable_variables
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

?kernel
@bias
Aregularization_losses
B	variables
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
Elayer_regularization_losses

Flayers
regularization_losses
Glayer_metrics
	variables
Hnon_trainable_variables
trainable_variables
Imetrics
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
Jlayer_regularization_losses

Klayers
regularization_losses
Llayer_metrics
	variables
Mnon_trainable_variables
trainable_variables
Nmetrics
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_172/kernel
: 2conv3d_172/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Olayer_regularization_losses

Players
regularization_losses
Qlayer_metrics
 	variables
Rnon_trainable_variables
!trainable_variables
Smetrics
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
Tlayer_regularization_losses

Ulayers
#regularization_losses
Vlayer_metrics
$	variables
Wnon_trainable_variables
%trainable_variables
Xmetrics
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
Ylayer_regularization_losses

Zlayers
'regularization_losses
[layer_metrics
(	variables
\non_trainable_variables
)trainable_variables
]metrics
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_38/kernel
:@ 2dense_38/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
^layer_regularization_losses

_layers
-regularization_losses
`layer_metrics
.	variables
anon_trainable_variables
/trainable_variables
bmetrics
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
clayer_regularization_losses

dlayers
1regularization_losses
elayer_metrics
2	variables
fnon_trainable_variables
3trainable_variables
gmetrics
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
1:/ 2conv3d_173/kernel
: 2conv3d_173/bias
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
�
hlayer_regularization_losses

ilayers
;regularization_losses
jlayer_metrics
<	variables
knon_trainable_variables
=trainable_variables
lmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_174/kernel
: 2conv3d_174/bias
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
�
mlayer_regularization_losses

nlayers
Aregularization_losses
olayer_metrics
B	variables
pnon_trainable_variables
Ctrainable_variables
qmetrics
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
*__inference_model_38_layer_call_fn_8736496
*__inference_model_38_layer_call_fn_8736804
*__inference_model_38_layer_call_fn_8736825
*__inference_model_38_layer_call_fn_8736668�
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
E__inference_model_38_layer_call_and_return_conditional_losses_8736906
E__inference_model_38_layer_call_and_return_conditional_losses_8736987
E__inference_model_38_layer_call_and_return_conditional_losses_8736714
E__inference_model_38_layer_call_and_return_conditional_losses_8736760�
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
"__inference__wrapped_model_8736299input"�
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
5__inference_range_conversion_38_layer_call_fn_8736992�
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
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_8737004�
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
,__inference_conv3d_172_layer_call_fn_8737013�
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
G__inference_conv3d_172_layer_call_and_return_conditional_losses_8737024�
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
6__inference_average_pooling3d_67_layer_call_fn_8737029
6__inference_average_pooling3d_67_layer_call_fn_8737034�
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
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8737043
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8737052�
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
,__inference_reshape_76_layer_call_fn_8737057�
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
G__inference_reshape_76_layer_call_and_return_conditional_losses_8737069�
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
*__inference_dense_38_layer_call_fn_8737078�
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
E__inference_dense_38_layer_call_and_return_conditional_losses_8737089�
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
,__inference_reshape_77_layer_call_fn_8737094�
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
G__inference_reshape_77_layer_call_and_return_conditional_losses_8737109�
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
,__inference_conv3d_173_layer_call_fn_8737118�
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
G__inference_conv3d_173_layer_call_and_return_conditional_losses_8737129�
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
,__inference_conv3d_174_layer_call_fn_8737138�
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
G__inference_conv3d_174_layer_call_and_return_conditional_losses_8737148�
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
%__inference_signature_wrapper_8736783input"�
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
"__inference__wrapped_model_8736299�+,9:?@:�7
0�-
+�(
input���������
� "C�@
>

conv3d_1740�-

conv3d_174����������
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8737043�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_67_layer_call_and_return_conditional_losses_8737052p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_67_layer_call_fn_8737029�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_67_layer_call_fn_8737034c;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_172_layer_call_and_return_conditional_losses_8737024t;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
,__inference_conv3d_172_layer_call_fn_8737013g;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_173_layer_call_and_return_conditional_losses_8737129t9:;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
,__inference_conv3d_173_layer_call_fn_8737118g9:;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_174_layer_call_and_return_conditional_losses_8737148t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
,__inference_conv3d_174_layer_call_fn_8737138g?@;�8
1�.
,�)
inputs���������
� "$�!����������
E__inference_dense_38_layer_call_and_return_conditional_losses_8737089\+,/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
*__inference_dense_38_layer_call_fn_8737078O+,/�,
%�"
 �
inputs���������@
� "����������@�
E__inference_model_38_layer_call_and_return_conditional_losses_8736714�+,9:?@B�?
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
E__inference_model_38_layer_call_and_return_conditional_losses_8736760�+,9:?@B�?
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
E__inference_model_38_layer_call_and_return_conditional_losses_8736906�+,9:?@C�@
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
E__inference_model_38_layer_call_and_return_conditional_losses_8736987�+,9:?@C�@
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
*__inference_model_38_layer_call_fn_8736496t+,9:?@B�?
8�5
+�(
input���������
p 

 
� "$�!����������
*__inference_model_38_layer_call_fn_8736668t+,9:?@B�?
8�5
+�(
input���������
p

 
� "$�!����������
*__inference_model_38_layer_call_fn_8736804u+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
*__inference_model_38_layer_call_fn_8736825u+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
P__inference_range_conversion_38_layer_call_and_return_conditional_losses_8737004t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
5__inference_range_conversion_38_layer_call_fn_8736992g?�<
5�2
0�-

parameters���������
� "$�!����������
G__inference_reshape_76_layer_call_and_return_conditional_losses_8737069d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_76_layer_call_fn_8737057W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_77_layer_call_and_return_conditional_losses_8737109d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_77_layer_call_fn_8737094W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_8736783�+,9:?@C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_1740�-

conv3d_174���������