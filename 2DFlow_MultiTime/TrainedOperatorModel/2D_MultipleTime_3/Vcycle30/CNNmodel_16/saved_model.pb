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
conv3d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_39/kernel
�
$conv3d_39/kernel/Read/ReadVariableOpReadVariableOpconv3d_39/kernel**
_output_shapes
:*
dtype0
t
conv3d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_39/bias
m
"conv3d_39/bias/Read/ReadVariableOpReadVariableOpconv3d_39/bias*
_output_shapes
:*
dtype0
�
conv3d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_40/kernel
�
$conv3d_40/kernel/Read/ReadVariableOpReadVariableOpconv3d_40/kernel**
_output_shapes
:*
dtype0
t
conv3d_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_40/bias
m
"conv3d_40/bias/Read/ReadVariableOpReadVariableOpconv3d_40/bias*
_output_shapes
:*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:@@*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:@*
dtype0
�
conv3d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_41/kernel
�
$conv3d_41/kernel/Read/ReadVariableOpReadVariableOpconv3d_41/kernel**
_output_shapes
:*
dtype0
t
conv3d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_41/bias
m
"conv3d_41/bias/Read/ReadVariableOpReadVariableOpconv3d_41/bias*
_output_shapes
:*
dtype0
�
conv3d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_42/kernel
�
$conv3d_42/kernel/Read/ReadVariableOpReadVariableOpconv3d_42/kernel**
_output_shapes
:*
dtype0
t
conv3d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_42/bias
m
"conv3d_42/bias/Read/ReadVariableOpReadVariableOpconv3d_42/bias*
_output_shapes
:*
dtype0
�
conv3d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_43/kernel
�
$conv3d_43/kernel/Read/ReadVariableOpReadVariableOpconv3d_43/kernel**
_output_shapes
:*
dtype0
t
conv3d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_43/bias
m
"conv3d_43/bias/Read/ReadVariableOpReadVariableOpconv3d_43/bias*
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
\Z
VARIABLE_VALUEconv3d_39/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_39/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_40/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_40/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_41/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_41/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_42/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_42/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_43/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_43/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_39/kernelconv3d_39/biasconv3d_40/kernelconv3d_40/biasdense_9/kerneldense_9/biasconv3d_41/kernelconv3d_41/biasconv3d_42/kernelconv3d_42/biasconv3d_43/kernelconv3d_43/bias*
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
GPU2 *0,1,2,3J 8� *.
f)R'
%__inference_signature_wrapper_2794044
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_39/kernel/Read/ReadVariableOp"conv3d_39/bias/Read/ReadVariableOp$conv3d_40/kernel/Read/ReadVariableOp"conv3d_40/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp$conv3d_41/kernel/Read/ReadVariableOp"conv3d_41/bias/Read/ReadVariableOp$conv3d_42/kernel/Read/ReadVariableOp"conv3d_42/bias/Read/ReadVariableOp$conv3d_43/kernel/Read/ReadVariableOp"conv3d_43/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8� *)
f$R"
 __inference__traced_save_2794606
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_39/kernelconv3d_39/biasconv3d_40/kernelconv3d_40/biasdense_9/kerneldense_9/biasconv3d_41/kernelconv3d_41/biasconv3d_42/kernelconv3d_42/biasconv3d_43/kernelconv3d_43/bias*
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
GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__traced_restore_2794652�
�
�
F__inference_conv3d_39_layer_call_and_return_conditional_losses_2793458

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
m
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2794431

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
ٜ
�	
D__inference_model_9_layer_call_and_return_conditional_losses_2794318

inputsF
(conv3d_39_conv3d_readvariableop_resource:7
)conv3d_39_biasadd_readvariableop_resource:F
(conv3d_40_conv3d_readvariableop_resource:7
)conv3d_40_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:@@5
'dense_9_biasadd_readvariableop_resource:@F
(conv3d_41_conv3d_readvariableop_resource:7
)conv3d_41_biasadd_readvariableop_resource:F
(conv3d_42_conv3d_readvariableop_resource:7
)conv3d_42_biasadd_readvariableop_resource:F
(conv3d_43_conv3d_readvariableop_resource:7
)conv3d_43_biasadd_readvariableop_resource:
identity�� conv3d_39/BiasAdd/ReadVariableOp�conv3d_39/Conv3D/ReadVariableOp� conv3d_40/BiasAdd/ReadVariableOp�conv3d_40/Conv3D/ReadVariableOp� conv3d_41/BiasAdd/ReadVariableOp�conv3d_41/Conv3D/ReadVariableOp� conv3d_42/BiasAdd/ReadVariableOp�conv3d_42/Conv3D/ReadVariableOp� conv3d_43/BiasAdd/ReadVariableOp�conv3d_43/Conv3D/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�
0tf.__operators__.getitem_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_164/strided_slice/stack�
2tf.__operators__.getitem_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_164/strided_slice/stack_1�
2tf.__operators__.getitem_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_164/strided_slice/stack_2�
*tf.__operators__.getitem_164/strided_sliceStridedSliceinputs9tf.__operators__.getitem_164/strided_slice/stack:output:0;tf.__operators__.getitem_164/strided_slice/stack_1:output:0;tf.__operators__.getitem_164/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_164/strided_slicey
range_conversion_9/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_9/sub/y�
range_conversion_9/subSub3tf.__operators__.getitem_164/strided_slice:output:0!range_conversion_9/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/sub�
range_conversion_9/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_9/truediv/y�
range_conversion_9/truedivRealDivrange_conversion_9/sub:z:0%range_conversion_9/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/truedivy
range_conversion_9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_9/mul/y�
range_conversion_9/mulMulrange_conversion_9/truediv:z:0!range_conversion_9/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/muly
range_conversion_9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_9/add/y�
range_conversion_9/addAddV2range_conversion_9/mul:z:0!range_conversion_9/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/add�
0tf.__operators__.getitem_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_165/strided_slice/stack�
2tf.__operators__.getitem_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_165/strided_slice/stack_1�
2tf.__operators__.getitem_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_165/strided_slice/stack_2�
*tf.__operators__.getitem_165/strided_sliceStridedSliceinputs9tf.__operators__.getitem_165/strided_slice/stack:output:0;tf.__operators__.getitem_165/strided_slice/stack_1:output:0;tf.__operators__.getitem_165/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_165/strided_slicex
tf.concat_181/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_181/concat/axis�
tf.concat_181/concatConcatV2range_conversion_9/add:z:03tf.__operators__.getitem_165/strided_slice:output:0"tf.concat_181/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_181/concat�
conv3d_39/Conv3D/ReadVariableOpReadVariableOp(conv3d_39_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_39/Conv3D/ReadVariableOp�
conv3d_39/Conv3DConv3Dtf.concat_181/concat:output:0'conv3d_39/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_39/Conv3D�
 conv3d_39/BiasAdd/ReadVariableOpReadVariableOp)conv3d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_39/BiasAdd/ReadVariableOp�
conv3d_39/BiasAddBiasAddconv3d_39/Conv3D:output:0(conv3d_39/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_39/BiasAdd�
conv3d_39/SoftplusSoftplusconv3d_39/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_39/Softplus�
#average_pooling3d_15/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_15/transpose/perm�
average_pooling3d_15/transpose	Transpose conv3d_39/Softplus:activations:0,average_pooling3d_15/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_15/transpose�
average_pooling3d_15/AvgPool3D	AvgPool3D"average_pooling3d_15/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_15/AvgPool3D�
%average_pooling3d_15/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_15/transpose_1/perm�
 average_pooling3d_15/transpose_1	Transpose'average_pooling3d_15/AvgPool3D:output:0.average_pooling3d_15/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_15/transpose_1�
conv3d_40/Conv3D/ReadVariableOpReadVariableOp(conv3d_40_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_40/Conv3D/ReadVariableOp�
conv3d_40/Conv3DConv3D$average_pooling3d_15/transpose_1:y:0'conv3d_40/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_40/Conv3D�
 conv3d_40/BiasAdd/ReadVariableOpReadVariableOp)conv3d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_40/BiasAdd/ReadVariableOp�
conv3d_40/BiasAddBiasAddconv3d_40/Conv3D:output:0(conv3d_40/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_40/BiasAdd�
conv3d_40/SoftplusSoftplusconv3d_40/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_40/Softplus�
#average_pooling3d_16/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_16/transpose/perm�
average_pooling3d_16/transpose	Transpose conv3d_40/Softplus:activations:0,average_pooling3d_16/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_16/transpose�
average_pooling3d_16/AvgPool3D	AvgPool3D"average_pooling3d_16/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_16/AvgPool3D�
%average_pooling3d_16/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_16/transpose_1/perm�
 average_pooling3d_16/transpose_1	Transpose'average_pooling3d_16/AvgPool3D:output:0.average_pooling3d_16/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_16/transpose_1x
reshape_18/ShapeShape$average_pooling3d_16/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_18/Shape�
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_18/strided_slice/stack�
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_1�
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_2�
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_18/strided_slicez
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_18/Reshape/shape/1�
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_18/Reshape/shape�
reshape_18/ReshapeReshape$average_pooling3d_16/transpose_1:y:0!reshape_18/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_18/Reshape�
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_9/MatMul/ReadVariableOp�
dense_9/MatMulMatMulreshape_18/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_9/MatMul�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_9/BiasAdd/ReadVariableOp�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_9/BiasAdd|
dense_9/SoftplusSoftplusdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_9/Softplusr
reshape_19/ShapeShapedense_9/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_19/Shape�
reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_19/strided_slice/stack�
 reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_1�
 reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_2�
reshape_19/strided_sliceStridedSlicereshape_19/Shape:output:0'reshape_19/strided_slice/stack:output:0)reshape_19/strided_slice/stack_1:output:0)reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_19/strided_slicez
reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/1z
reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/2z
reshape_19/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/3z
reshape_19/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/4�
reshape_19/Reshape/shapePack!reshape_19/strided_slice:output:0#reshape_19/Reshape/shape/1:output:0#reshape_19/Reshape/shape/2:output:0#reshape_19/Reshape/shape/3:output:0#reshape_19/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_19/Reshape/shape�
reshape_19/ReshapeReshapedense_9/Softplus:activations:0!reshape_19/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_19/Reshape�
tf.reshape_198/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_198/Reshape/shape�
tf.reshape_198/ReshapeReshapereshape_19/Reshape:output:0%tf.reshape_198/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_198/Reshape�
tf.tile_99/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_99/Tile/multiples�
tf.tile_99/TileTiletf.reshape_198/Reshape:output:0"tf.tile_99/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_99/Tile�
tf.reshape_199/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_199/Reshape/shape�
tf.reshape_199/ReshapeReshapetf.tile_99/Tile:output:0%tf.reshape_199/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_199/Reshapex
tf.concat_182/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_182/concat/axis�
tf.concat_182/concatConcatV2tf.reshape_199/Reshape:output:0 conv3d_40/Softplus:activations:0"tf.concat_182/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_182/concat�
conv3d_41/Conv3D/ReadVariableOpReadVariableOp(conv3d_41_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_41/Conv3D/ReadVariableOp�
conv3d_41/Conv3DConv3Dtf.concat_182/concat:output:0'conv3d_41/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_41/Conv3D�
 conv3d_41/BiasAdd/ReadVariableOpReadVariableOp)conv3d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_41/BiasAdd/ReadVariableOp�
conv3d_41/BiasAddBiasAddconv3d_41/Conv3D:output:0(conv3d_41/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_41/BiasAdd�
conv3d_41/SoftplusSoftplusconv3d_41/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_41/Softplus�
tf.reshape_200/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_200/Reshape/shape�
tf.reshape_200/ReshapeReshape conv3d_41/Softplus:activations:0%tf.reshape_200/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_200/Reshape�
tf.tile_100/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_100/Tile/multiples�
tf.tile_100/TileTiletf.reshape_200/Reshape:output:0#tf.tile_100/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_100/Tile�
tf.reshape_201/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_201/Reshape/shape�
tf.reshape_201/ReshapeReshapetf.tile_100/Tile:output:0%tf.reshape_201/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_201/Reshapex
tf.concat_183/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_183/concat/axis�
tf.concat_183/concatConcatV2tf.reshape_201/Reshape:output:0 conv3d_39/Softplus:activations:0"tf.concat_183/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_183/concat�
conv3d_42/Conv3D/ReadVariableOpReadVariableOp(conv3d_42_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_42/Conv3D/ReadVariableOp�
conv3d_42/Conv3DConv3Dtf.concat_183/concat:output:0'conv3d_42/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_42/Conv3D�
 conv3d_42/BiasAdd/ReadVariableOpReadVariableOp)conv3d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_42/BiasAdd/ReadVariableOp�
conv3d_42/BiasAddBiasAddconv3d_42/Conv3D:output:0(conv3d_42/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_42/BiasAdd�
conv3d_42/SoftplusSoftplusconv3d_42/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_42/Softplus�
conv3d_43/Conv3D/ReadVariableOpReadVariableOp(conv3d_43_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_43/Conv3D/ReadVariableOp�
conv3d_43/Conv3DConv3D conv3d_42/Softplus:activations:0'conv3d_43/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_43/Conv3D�
 conv3d_43/BiasAdd/ReadVariableOpReadVariableOp)conv3d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_43/BiasAdd/ReadVariableOp�
conv3d_43/BiasAddBiasAddconv3d_43/Conv3D:output:0(conv3d_43/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_43/BiasAdd�
IdentityIdentityconv3d_43/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_39/BiasAdd/ReadVariableOp ^conv3d_39/Conv3D/ReadVariableOp!^conv3d_40/BiasAdd/ReadVariableOp ^conv3d_40/Conv3D/ReadVariableOp!^conv3d_41/BiasAdd/ReadVariableOp ^conv3d_41/Conv3D/ReadVariableOp!^conv3d_42/BiasAdd/ReadVariableOp ^conv3d_42/Conv3D/ReadVariableOp!^conv3d_43/BiasAdd/ReadVariableOp ^conv3d_43/Conv3D/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2D
 conv3d_39/BiasAdd/ReadVariableOp conv3d_39/BiasAdd/ReadVariableOp2B
conv3d_39/Conv3D/ReadVariableOpconv3d_39/Conv3D/ReadVariableOp2D
 conv3d_40/BiasAdd/ReadVariableOp conv3d_40/BiasAdd/ReadVariableOp2B
conv3d_40/Conv3D/ReadVariableOpconv3d_40/Conv3D/ReadVariableOp2D
 conv3d_41/BiasAdd/ReadVariableOp conv3d_41/BiasAdd/ReadVariableOp2B
conv3d_41/Conv3D/ReadVariableOpconv3d_41/Conv3D/ReadVariableOp2D
 conv3d_42/BiasAdd/ReadVariableOp conv3d_42/BiasAdd/ReadVariableOp2B
conv3d_42/Conv3D/ReadVariableOpconv3d_42/Conv3D/ReadVariableOp2D
 conv3d_43/BiasAdd/ReadVariableOp conv3d_43/BiasAdd/ReadVariableOp2B
conv3d_43/Conv3D/ReadVariableOpconv3d_43/Conv3D/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
R
6__inference_average_pooling3d_16_layer_call_fn_2794408

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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_27933992
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
F__inference_conv3d_43_layer_call_and_return_conditional_losses_2793609

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
+__inference_conv3d_40_layer_call_fn_2794392

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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_27934852
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
+__inference_conv3d_39_layer_call_fn_2794344

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_39_layer_call_and_return_conditional_losses_27934582
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
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_2793948	
input/
conv3d_39_2793897:
conv3d_39_2793899:/
conv3d_40_2793903:
conv3d_40_2793905:!
dense_9_2793910:@@
dense_9_2793912:@/
conv3d_41_2793924:
conv3d_41_2793926:/
conv3d_42_2793937:
conv3d_42_2793939:/
conv3d_43_2793942:
conv3d_43_2793944:
identity��!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
0tf.__operators__.getitem_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_164/strided_slice/stack�
2tf.__operators__.getitem_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_164/strided_slice/stack_1�
2tf.__operators__.getitem_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_164/strided_slice/stack_2�
*tf.__operators__.getitem_164/strided_sliceStridedSliceinput9tf.__operators__.getitem_164/strided_slice/stack:output:0;tf.__operators__.getitem_164/strided_slice/stack_1:output:0;tf.__operators__.getitem_164/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_164/strided_slice�
"range_conversion_9/PartitionedCallPartitionedCall3tf.__operators__.getitem_164/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_27934392$
"range_conversion_9/PartitionedCall�
0tf.__operators__.getitem_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_165/strided_slice/stack�
2tf.__operators__.getitem_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_165/strided_slice/stack_1�
2tf.__operators__.getitem_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_165/strided_slice/stack_2�
*tf.__operators__.getitem_165/strided_sliceStridedSliceinput9tf.__operators__.getitem_165/strided_slice/stack:output:0;tf.__operators__.getitem_165/strided_slice/stack_1:output:0;tf.__operators__.getitem_165/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_165/strided_slicex
tf.concat_181/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_181/concat/axis�
tf.concat_181/concatConcatV2+range_conversion_9/PartitionedCall:output:03tf.__operators__.getitem_165/strided_slice:output:0"tf.concat_181/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_181/concat�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCalltf.concat_181/concat:output:0conv3d_39_2793897conv3d_39_2793899*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_39_layer_call_and_return_conditional_losses_27934582#
!conv3d_39/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_27934722&
$average_pooling3d_15/PartitionedCall�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_15/PartitionedCall:output:0conv3d_40_2793903conv3d_40_2793905*
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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_27934852#
!conv3d_40/StatefulPartitionedCall�
$average_pooling3d_16/PartitionedCallPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_27934992&
$average_pooling3d_16/PartitionedCall�
reshape_18/PartitionedCallPartitionedCall-average_pooling3d_16/PartitionedCall:output:0*
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
G__inference_reshape_18_layer_call_and_return_conditional_losses_27935132
reshape_18/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall#reshape_18/PartitionedCall:output:0dense_9_2793910dense_9_2793912*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_27935262!
dense_9/StatefulPartitionedCall�
reshape_19/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
G__inference_reshape_19_layer_call_and_return_conditional_losses_27935472
reshape_19/PartitionedCall�
tf.reshape_198/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_198/Reshape/shape�
tf.reshape_198/ReshapeReshape#reshape_19/PartitionedCall:output:0%tf.reshape_198/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_198/Reshape�
tf.tile_99/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_99/Tile/multiples�
tf.tile_99/TileTiletf.reshape_198/Reshape:output:0"tf.tile_99/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_99/Tile�
tf.reshape_199/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_199/Reshape/shape�
tf.reshape_199/ReshapeReshapetf.tile_99/Tile:output:0%tf.reshape_199/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_199/Reshapex
tf.concat_182/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_182/concat/axis�
tf.concat_182/concatConcatV2tf.reshape_199/Reshape:output:0*conv3d_40/StatefulPartitionedCall:output:0"tf.concat_182/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_182/concat�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCalltf.concat_182/concat:output:0conv3d_41_2793924conv3d_41_2793926*
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
F__inference_conv3d_41_layer_call_and_return_conditional_losses_27935682#
!conv3d_41/StatefulPartitionedCall�
tf.reshape_200/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_200/Reshape/shape�
tf.reshape_200/ReshapeReshape*conv3d_41/StatefulPartitionedCall:output:0%tf.reshape_200/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_200/Reshape�
tf.tile_100/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_100/Tile/multiples�
tf.tile_100/TileTiletf.reshape_200/Reshape:output:0#tf.tile_100/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_100/Tile�
tf.reshape_201/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_201/Reshape/shape�
tf.reshape_201/ReshapeReshapetf.tile_100/Tile:output:0%tf.reshape_201/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_201/Reshapex
tf.concat_183/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_183/concat/axis�
tf.concat_183/concatConcatV2tf.reshape_201/Reshape:output:0*conv3d_39/StatefulPartitionedCall:output:0"tf.concat_183/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_183/concat�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCalltf.concat_183/concat:output:0conv3d_42_2793937conv3d_42_2793939*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_42_layer_call_and_return_conditional_losses_27935932#
!conv3d_42/StatefulPartitionedCall�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_2793942conv3d_43_2793944*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_43_layer_call_and_return_conditional_losses_27936092#
!conv3d_43/StatefulPartitionedCall�
IdentityIdentity*conv3d_43/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_2793616

inputs/
conv3d_39_2793459:
conv3d_39_2793461:/
conv3d_40_2793486:
conv3d_40_2793488:!
dense_9_2793527:@@
dense_9_2793529:@/
conv3d_41_2793569:
conv3d_41_2793571:/
conv3d_42_2793594:
conv3d_42_2793596:/
conv3d_43_2793610:
conv3d_43_2793612:
identity��!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
0tf.__operators__.getitem_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_164/strided_slice/stack�
2tf.__operators__.getitem_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_164/strided_slice/stack_1�
2tf.__operators__.getitem_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_164/strided_slice/stack_2�
*tf.__operators__.getitem_164/strided_sliceStridedSliceinputs9tf.__operators__.getitem_164/strided_slice/stack:output:0;tf.__operators__.getitem_164/strided_slice/stack_1:output:0;tf.__operators__.getitem_164/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_164/strided_slice�
"range_conversion_9/PartitionedCallPartitionedCall3tf.__operators__.getitem_164/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_27934392$
"range_conversion_9/PartitionedCall�
0tf.__operators__.getitem_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_165/strided_slice/stack�
2tf.__operators__.getitem_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_165/strided_slice/stack_1�
2tf.__operators__.getitem_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_165/strided_slice/stack_2�
*tf.__operators__.getitem_165/strided_sliceStridedSliceinputs9tf.__operators__.getitem_165/strided_slice/stack:output:0;tf.__operators__.getitem_165/strided_slice/stack_1:output:0;tf.__operators__.getitem_165/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_165/strided_slicex
tf.concat_181/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_181/concat/axis�
tf.concat_181/concatConcatV2+range_conversion_9/PartitionedCall:output:03tf.__operators__.getitem_165/strided_slice:output:0"tf.concat_181/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_181/concat�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCalltf.concat_181/concat:output:0conv3d_39_2793459conv3d_39_2793461*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_39_layer_call_and_return_conditional_losses_27934582#
!conv3d_39/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_27934722&
$average_pooling3d_15/PartitionedCall�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_15/PartitionedCall:output:0conv3d_40_2793486conv3d_40_2793488*
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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_27934852#
!conv3d_40/StatefulPartitionedCall�
$average_pooling3d_16/PartitionedCallPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_27934992&
$average_pooling3d_16/PartitionedCall�
reshape_18/PartitionedCallPartitionedCall-average_pooling3d_16/PartitionedCall:output:0*
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
G__inference_reshape_18_layer_call_and_return_conditional_losses_27935132
reshape_18/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall#reshape_18/PartitionedCall:output:0dense_9_2793527dense_9_2793529*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_27935262!
dense_9/StatefulPartitionedCall�
reshape_19/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
G__inference_reshape_19_layer_call_and_return_conditional_losses_27935472
reshape_19/PartitionedCall�
tf.reshape_198/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_198/Reshape/shape�
tf.reshape_198/ReshapeReshape#reshape_19/PartitionedCall:output:0%tf.reshape_198/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_198/Reshape�
tf.tile_99/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_99/Tile/multiples�
tf.tile_99/TileTiletf.reshape_198/Reshape:output:0"tf.tile_99/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_99/Tile�
tf.reshape_199/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_199/Reshape/shape�
tf.reshape_199/ReshapeReshapetf.tile_99/Tile:output:0%tf.reshape_199/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_199/Reshapex
tf.concat_182/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_182/concat/axis�
tf.concat_182/concatConcatV2tf.reshape_199/Reshape:output:0*conv3d_40/StatefulPartitionedCall:output:0"tf.concat_182/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_182/concat�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCalltf.concat_182/concat:output:0conv3d_41_2793569conv3d_41_2793571*
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
F__inference_conv3d_41_layer_call_and_return_conditional_losses_27935682#
!conv3d_41/StatefulPartitionedCall�
tf.reshape_200/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_200/Reshape/shape�
tf.reshape_200/ReshapeReshape*conv3d_41/StatefulPartitionedCall:output:0%tf.reshape_200/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_200/Reshape�
tf.tile_100/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_100/Tile/multiples�
tf.tile_100/TileTiletf.reshape_200/Reshape:output:0#tf.tile_100/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_100/Tile�
tf.reshape_201/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_201/Reshape/shape�
tf.reshape_201/ReshapeReshapetf.tile_100/Tile:output:0%tf.reshape_201/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_201/Reshapex
tf.concat_183/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_183/concat/axis�
tf.concat_183/concatConcatV2tf.reshape_201/Reshape:output:0*conv3d_39/StatefulPartitionedCall:output:0"tf.concat_183/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_183/concat�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCalltf.concat_183/concat:output:0conv3d_42_2793594conv3d_42_2793596*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_42_layer_call_and_return_conditional_losses_27935932#
!conv3d_42/StatefulPartitionedCall�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_2793610conv3d_43_2793612*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_43_layer_call_and_return_conditional_losses_27936092#
!conv3d_43/StatefulPartitionedCall�
IdentityIdentity*conv3d_43/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
D__inference_dense_9_layer_call_and_return_conditional_losses_2794468

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
+__inference_conv3d_41_layer_call_fn_2794497

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
F__inference_conv3d_41_layer_call_and_return_conditional_losses_27935682
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

m
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2794422

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
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_2794013	
input/
conv3d_39_2793962:
conv3d_39_2793964:/
conv3d_40_2793968:
conv3d_40_2793970:!
dense_9_2793975:@@
dense_9_2793977:@/
conv3d_41_2793989:
conv3d_41_2793991:/
conv3d_42_2794002:
conv3d_42_2794004:/
conv3d_43_2794007:
conv3d_43_2794009:
identity��!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
0tf.__operators__.getitem_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_164/strided_slice/stack�
2tf.__operators__.getitem_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_164/strided_slice/stack_1�
2tf.__operators__.getitem_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_164/strided_slice/stack_2�
*tf.__operators__.getitem_164/strided_sliceStridedSliceinput9tf.__operators__.getitem_164/strided_slice/stack:output:0;tf.__operators__.getitem_164/strided_slice/stack_1:output:0;tf.__operators__.getitem_164/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_164/strided_slice�
"range_conversion_9/PartitionedCallPartitionedCall3tf.__operators__.getitem_164/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_27934392$
"range_conversion_9/PartitionedCall�
0tf.__operators__.getitem_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_165/strided_slice/stack�
2tf.__operators__.getitem_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_165/strided_slice/stack_1�
2tf.__operators__.getitem_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_165/strided_slice/stack_2�
*tf.__operators__.getitem_165/strided_sliceStridedSliceinput9tf.__operators__.getitem_165/strided_slice/stack:output:0;tf.__operators__.getitem_165/strided_slice/stack_1:output:0;tf.__operators__.getitem_165/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_165/strided_slicex
tf.concat_181/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_181/concat/axis�
tf.concat_181/concatConcatV2+range_conversion_9/PartitionedCall:output:03tf.__operators__.getitem_165/strided_slice:output:0"tf.concat_181/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_181/concat�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCalltf.concat_181/concat:output:0conv3d_39_2793962conv3d_39_2793964*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_39_layer_call_and_return_conditional_losses_27934582#
!conv3d_39/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_27934722&
$average_pooling3d_15/PartitionedCall�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_15/PartitionedCall:output:0conv3d_40_2793968conv3d_40_2793970*
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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_27934852#
!conv3d_40/StatefulPartitionedCall�
$average_pooling3d_16/PartitionedCallPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_27934992&
$average_pooling3d_16/PartitionedCall�
reshape_18/PartitionedCallPartitionedCall-average_pooling3d_16/PartitionedCall:output:0*
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
G__inference_reshape_18_layer_call_and_return_conditional_losses_27935132
reshape_18/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall#reshape_18/PartitionedCall:output:0dense_9_2793975dense_9_2793977*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_27935262!
dense_9/StatefulPartitionedCall�
reshape_19/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
G__inference_reshape_19_layer_call_and_return_conditional_losses_27935472
reshape_19/PartitionedCall�
tf.reshape_198/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_198/Reshape/shape�
tf.reshape_198/ReshapeReshape#reshape_19/PartitionedCall:output:0%tf.reshape_198/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_198/Reshape�
tf.tile_99/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_99/Tile/multiples�
tf.tile_99/TileTiletf.reshape_198/Reshape:output:0"tf.tile_99/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_99/Tile�
tf.reshape_199/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_199/Reshape/shape�
tf.reshape_199/ReshapeReshapetf.tile_99/Tile:output:0%tf.reshape_199/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_199/Reshapex
tf.concat_182/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_182/concat/axis�
tf.concat_182/concatConcatV2tf.reshape_199/Reshape:output:0*conv3d_40/StatefulPartitionedCall:output:0"tf.concat_182/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_182/concat�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCalltf.concat_182/concat:output:0conv3d_41_2793989conv3d_41_2793991*
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
F__inference_conv3d_41_layer_call_and_return_conditional_losses_27935682#
!conv3d_41/StatefulPartitionedCall�
tf.reshape_200/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_200/Reshape/shape�
tf.reshape_200/ReshapeReshape*conv3d_41/StatefulPartitionedCall:output:0%tf.reshape_200/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_200/Reshape�
tf.tile_100/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_100/Tile/multiples�
tf.tile_100/TileTiletf.reshape_200/Reshape:output:0#tf.tile_100/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_100/Tile�
tf.reshape_201/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_201/Reshape/shape�
tf.reshape_201/ReshapeReshapetf.tile_100/Tile:output:0%tf.reshape_201/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_201/Reshapex
tf.concat_183/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_183/concat/axis�
tf.concat_183/concatConcatV2tf.reshape_201/Reshape:output:0*conv3d_39/StatefulPartitionedCall:output:0"tf.concat_183/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_183/concat�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCalltf.concat_183/concat:output:0conv3d_42_2794002conv3d_42_2794004*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_42_layer_call_and_return_conditional_losses_27935932#
!conv3d_42/StatefulPartitionedCall�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_2794007conv3d_43_2794009*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_43_layer_call_and_return_conditional_losses_27936092#
!conv3d_43/StatefulPartitionedCall�
IdentityIdentity*conv3d_43/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
F__inference_conv3d_41_layer_call_and_return_conditional_losses_2794508

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
�
D__inference_dense_9_layer_call_and_return_conditional_losses_2793526

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
F__inference_conv3d_43_layer_call_and_return_conditional_losses_2794547

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

m
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2793399

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

m
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2794374

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
)__inference_model_9_layer_call_fn_2794073

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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_27936162
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
c
G__inference_reshape_18_layer_call_and_return_conditional_losses_2793513

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
�
)__inference_model_9_layer_call_fn_2793883	
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_27938272
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

m
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2793369

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
%__inference_signature_wrapper_2794044	
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
GPU2 *0,1,2,3J 8� *+
f&R$
"__inference__wrapped_model_27933562
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
R
6__inference_average_pooling3d_16_layer_call_fn_2794413

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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_27934992
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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2793499

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
�
)__inference_dense_9_layer_call_fn_2794457

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_27935262
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
H
,__inference_reshape_19_layer_call_fn_2794473

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
G__inference_reshape_19_layer_call_and_return_conditional_losses_27935472
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
F__inference_conv3d_42_layer_call_and_return_conditional_losses_2794528

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
�
T
4__inference_range_conversion_9_layer_call_fn_2794323

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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_27934392
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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_2793485

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
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_2794335

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
)__inference_model_9_layer_call_fn_2794102

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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_27938272
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
�&
�
 __inference__traced_save_2794606
file_prefix/
+savev2_conv3d_39_kernel_read_readvariableop-
)savev2_conv3d_39_bias_read_readvariableop/
+savev2_conv3d_40_kernel_read_readvariableop-
)savev2_conv3d_40_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop/
+savev2_conv3d_41_kernel_read_readvariableop-
)savev2_conv3d_41_bias_read_readvariableop/
+savev2_conv3d_42_kernel_read_readvariableop-
)savev2_conv3d_42_bias_read_readvariableop/
+savev2_conv3d_43_kernel_read_readvariableop-
)savev2_conv3d_43_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_39_kernel_read_readvariableop)savev2_conv3d_39_bias_read_readvariableop+savev2_conv3d_40_kernel_read_readvariableop)savev2_conv3d_40_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop+savev2_conv3d_41_kernel_read_readvariableop)savev2_conv3d_41_bias_read_readvariableop+savev2_conv3d_42_kernel_read_readvariableop)savev2_conv3d_42_bias_read_readvariableop+savev2_conv3d_43_kernel_read_readvariableop)savev2_conv3d_43_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�]
�
D__inference_model_9_layer_call_and_return_conditional_losses_2793827

inputs/
conv3d_39_2793776:
conv3d_39_2793778:/
conv3d_40_2793782:
conv3d_40_2793784:!
dense_9_2793789:@@
dense_9_2793791:@/
conv3d_41_2793803:
conv3d_41_2793805:/
conv3d_42_2793816:
conv3d_42_2793818:/
conv3d_43_2793821:
conv3d_43_2793823:
identity��!conv3d_39/StatefulPartitionedCall�!conv3d_40/StatefulPartitionedCall�!conv3d_41/StatefulPartitionedCall�!conv3d_42/StatefulPartitionedCall�!conv3d_43/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
0tf.__operators__.getitem_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_164/strided_slice/stack�
2tf.__operators__.getitem_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_164/strided_slice/stack_1�
2tf.__operators__.getitem_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_164/strided_slice/stack_2�
*tf.__operators__.getitem_164/strided_sliceStridedSliceinputs9tf.__operators__.getitem_164/strided_slice/stack:output:0;tf.__operators__.getitem_164/strided_slice/stack_1:output:0;tf.__operators__.getitem_164/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_164/strided_slice�
"range_conversion_9/PartitionedCallPartitionedCall3tf.__operators__.getitem_164/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_27934392$
"range_conversion_9/PartitionedCall�
0tf.__operators__.getitem_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_165/strided_slice/stack�
2tf.__operators__.getitem_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_165/strided_slice/stack_1�
2tf.__operators__.getitem_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_165/strided_slice/stack_2�
*tf.__operators__.getitem_165/strided_sliceStridedSliceinputs9tf.__operators__.getitem_165/strided_slice/stack:output:0;tf.__operators__.getitem_165/strided_slice/stack_1:output:0;tf.__operators__.getitem_165/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_165/strided_slicex
tf.concat_181/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_181/concat/axis�
tf.concat_181/concatConcatV2+range_conversion_9/PartitionedCall:output:03tf.__operators__.getitem_165/strided_slice:output:0"tf.concat_181/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_181/concat�
!conv3d_39/StatefulPartitionedCallStatefulPartitionedCalltf.concat_181/concat:output:0conv3d_39_2793776conv3d_39_2793778*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_39_layer_call_and_return_conditional_losses_27934582#
!conv3d_39/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_39/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_27934722&
$average_pooling3d_15/PartitionedCall�
!conv3d_40/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_15/PartitionedCall:output:0conv3d_40_2793782conv3d_40_2793784*
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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_27934852#
!conv3d_40/StatefulPartitionedCall�
$average_pooling3d_16/PartitionedCallPartitionedCall*conv3d_40/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_27934992&
$average_pooling3d_16/PartitionedCall�
reshape_18/PartitionedCallPartitionedCall-average_pooling3d_16/PartitionedCall:output:0*
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
G__inference_reshape_18_layer_call_and_return_conditional_losses_27935132
reshape_18/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall#reshape_18/PartitionedCall:output:0dense_9_2793789dense_9_2793791*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_27935262!
dense_9/StatefulPartitionedCall�
reshape_19/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
G__inference_reshape_19_layer_call_and_return_conditional_losses_27935472
reshape_19/PartitionedCall�
tf.reshape_198/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_198/Reshape/shape�
tf.reshape_198/ReshapeReshape#reshape_19/PartitionedCall:output:0%tf.reshape_198/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_198/Reshape�
tf.tile_99/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_99/Tile/multiples�
tf.tile_99/TileTiletf.reshape_198/Reshape:output:0"tf.tile_99/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_99/Tile�
tf.reshape_199/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_199/Reshape/shape�
tf.reshape_199/ReshapeReshapetf.tile_99/Tile:output:0%tf.reshape_199/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_199/Reshapex
tf.concat_182/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_182/concat/axis�
tf.concat_182/concatConcatV2tf.reshape_199/Reshape:output:0*conv3d_40/StatefulPartitionedCall:output:0"tf.concat_182/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_182/concat�
!conv3d_41/StatefulPartitionedCallStatefulPartitionedCalltf.concat_182/concat:output:0conv3d_41_2793803conv3d_41_2793805*
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
F__inference_conv3d_41_layer_call_and_return_conditional_losses_27935682#
!conv3d_41/StatefulPartitionedCall�
tf.reshape_200/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_200/Reshape/shape�
tf.reshape_200/ReshapeReshape*conv3d_41/StatefulPartitionedCall:output:0%tf.reshape_200/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_200/Reshape�
tf.tile_100/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_100/Tile/multiples�
tf.tile_100/TileTiletf.reshape_200/Reshape:output:0#tf.tile_100/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_100/Tile�
tf.reshape_201/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_201/Reshape/shape�
tf.reshape_201/ReshapeReshapetf.tile_100/Tile:output:0%tf.reshape_201/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_201/Reshapex
tf.concat_183/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_183/concat/axis�
tf.concat_183/concatConcatV2tf.reshape_201/Reshape:output:0*conv3d_39/StatefulPartitionedCall:output:0"tf.concat_183/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_183/concat�
!conv3d_42/StatefulPartitionedCallStatefulPartitionedCalltf.concat_183/concat:output:0conv3d_42_2793816conv3d_42_2793818*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_42_layer_call_and_return_conditional_losses_27935932#
!conv3d_42/StatefulPartitionedCall�
!conv3d_43/StatefulPartitionedCallStatefulPartitionedCall*conv3d_42/StatefulPartitionedCall:output:0conv3d_43_2793821conv3d_43_2793823*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_43_layer_call_and_return_conditional_losses_27936092#
!conv3d_43/StatefulPartitionedCall�
IdentityIdentity*conv3d_43/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_39/StatefulPartitionedCall"^conv3d_40/StatefulPartitionedCall"^conv3d_41/StatefulPartitionedCall"^conv3d_42/StatefulPartitionedCall"^conv3d_43/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_39/StatefulPartitionedCall!conv3d_39/StatefulPartitionedCall2F
!conv3d_40/StatefulPartitionedCall!conv3d_40/StatefulPartitionedCall2F
!conv3d_41/StatefulPartitionedCall!conv3d_41/StatefulPartitionedCall2F
!conv3d_42/StatefulPartitionedCall!conv3d_42/StatefulPartitionedCall2F
!conv3d_43/StatefulPartitionedCall!conv3d_43/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
m
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2793472

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
ٜ
�	
D__inference_model_9_layer_call_and_return_conditional_losses_2794210

inputsF
(conv3d_39_conv3d_readvariableop_resource:7
)conv3d_39_biasadd_readvariableop_resource:F
(conv3d_40_conv3d_readvariableop_resource:7
)conv3d_40_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:@@5
'dense_9_biasadd_readvariableop_resource:@F
(conv3d_41_conv3d_readvariableop_resource:7
)conv3d_41_biasadd_readvariableop_resource:F
(conv3d_42_conv3d_readvariableop_resource:7
)conv3d_42_biasadd_readvariableop_resource:F
(conv3d_43_conv3d_readvariableop_resource:7
)conv3d_43_biasadd_readvariableop_resource:
identity�� conv3d_39/BiasAdd/ReadVariableOp�conv3d_39/Conv3D/ReadVariableOp� conv3d_40/BiasAdd/ReadVariableOp�conv3d_40/Conv3D/ReadVariableOp� conv3d_41/BiasAdd/ReadVariableOp�conv3d_41/Conv3D/ReadVariableOp� conv3d_42/BiasAdd/ReadVariableOp�conv3d_42/Conv3D/ReadVariableOp� conv3d_43/BiasAdd/ReadVariableOp�conv3d_43/Conv3D/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�
0tf.__operators__.getitem_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_164/strided_slice/stack�
2tf.__operators__.getitem_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_164/strided_slice/stack_1�
2tf.__operators__.getitem_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_164/strided_slice/stack_2�
*tf.__operators__.getitem_164/strided_sliceStridedSliceinputs9tf.__operators__.getitem_164/strided_slice/stack:output:0;tf.__operators__.getitem_164/strided_slice/stack_1:output:0;tf.__operators__.getitem_164/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_164/strided_slicey
range_conversion_9/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_9/sub/y�
range_conversion_9/subSub3tf.__operators__.getitem_164/strided_slice:output:0!range_conversion_9/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/sub�
range_conversion_9/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_9/truediv/y�
range_conversion_9/truedivRealDivrange_conversion_9/sub:z:0%range_conversion_9/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/truedivy
range_conversion_9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_9/mul/y�
range_conversion_9/mulMulrange_conversion_9/truediv:z:0!range_conversion_9/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/muly
range_conversion_9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_9/add/y�
range_conversion_9/addAddV2range_conversion_9/mul:z:0!range_conversion_9/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_9/add�
0tf.__operators__.getitem_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_165/strided_slice/stack�
2tf.__operators__.getitem_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_165/strided_slice/stack_1�
2tf.__operators__.getitem_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_165/strided_slice/stack_2�
*tf.__operators__.getitem_165/strided_sliceStridedSliceinputs9tf.__operators__.getitem_165/strided_slice/stack:output:0;tf.__operators__.getitem_165/strided_slice/stack_1:output:0;tf.__operators__.getitem_165/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_165/strided_slicex
tf.concat_181/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_181/concat/axis�
tf.concat_181/concatConcatV2range_conversion_9/add:z:03tf.__operators__.getitem_165/strided_slice:output:0"tf.concat_181/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_181/concat�
conv3d_39/Conv3D/ReadVariableOpReadVariableOp(conv3d_39_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_39/Conv3D/ReadVariableOp�
conv3d_39/Conv3DConv3Dtf.concat_181/concat:output:0'conv3d_39/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_39/Conv3D�
 conv3d_39/BiasAdd/ReadVariableOpReadVariableOp)conv3d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_39/BiasAdd/ReadVariableOp�
conv3d_39/BiasAddBiasAddconv3d_39/Conv3D:output:0(conv3d_39/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_39/BiasAdd�
conv3d_39/SoftplusSoftplusconv3d_39/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_39/Softplus�
#average_pooling3d_15/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_15/transpose/perm�
average_pooling3d_15/transpose	Transpose conv3d_39/Softplus:activations:0,average_pooling3d_15/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_15/transpose�
average_pooling3d_15/AvgPool3D	AvgPool3D"average_pooling3d_15/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_15/AvgPool3D�
%average_pooling3d_15/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_15/transpose_1/perm�
 average_pooling3d_15/transpose_1	Transpose'average_pooling3d_15/AvgPool3D:output:0.average_pooling3d_15/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_15/transpose_1�
conv3d_40/Conv3D/ReadVariableOpReadVariableOp(conv3d_40_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_40/Conv3D/ReadVariableOp�
conv3d_40/Conv3DConv3D$average_pooling3d_15/transpose_1:y:0'conv3d_40/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_40/Conv3D�
 conv3d_40/BiasAdd/ReadVariableOpReadVariableOp)conv3d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_40/BiasAdd/ReadVariableOp�
conv3d_40/BiasAddBiasAddconv3d_40/Conv3D:output:0(conv3d_40/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_40/BiasAdd�
conv3d_40/SoftplusSoftplusconv3d_40/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_40/Softplus�
#average_pooling3d_16/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_16/transpose/perm�
average_pooling3d_16/transpose	Transpose conv3d_40/Softplus:activations:0,average_pooling3d_16/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_16/transpose�
average_pooling3d_16/AvgPool3D	AvgPool3D"average_pooling3d_16/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_16/AvgPool3D�
%average_pooling3d_16/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_16/transpose_1/perm�
 average_pooling3d_16/transpose_1	Transpose'average_pooling3d_16/AvgPool3D:output:0.average_pooling3d_16/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_16/transpose_1x
reshape_18/ShapeShape$average_pooling3d_16/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_18/Shape�
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_18/strided_slice/stack�
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_1�
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_2�
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_18/strided_slicez
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_18/Reshape/shape/1�
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_18/Reshape/shape�
reshape_18/ReshapeReshape$average_pooling3d_16/transpose_1:y:0!reshape_18/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_18/Reshape�
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_9/MatMul/ReadVariableOp�
dense_9/MatMulMatMulreshape_18/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_9/MatMul�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_9/BiasAdd/ReadVariableOp�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_9/BiasAdd|
dense_9/SoftplusSoftplusdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_9/Softplusr
reshape_19/ShapeShapedense_9/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_19/Shape�
reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_19/strided_slice/stack�
 reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_1�
 reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_2�
reshape_19/strided_sliceStridedSlicereshape_19/Shape:output:0'reshape_19/strided_slice/stack:output:0)reshape_19/strided_slice/stack_1:output:0)reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_19/strided_slicez
reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/1z
reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/2z
reshape_19/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/3z
reshape_19/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/4�
reshape_19/Reshape/shapePack!reshape_19/strided_slice:output:0#reshape_19/Reshape/shape/1:output:0#reshape_19/Reshape/shape/2:output:0#reshape_19/Reshape/shape/3:output:0#reshape_19/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_19/Reshape/shape�
reshape_19/ReshapeReshapedense_9/Softplus:activations:0!reshape_19/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_19/Reshape�
tf.reshape_198/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_198/Reshape/shape�
tf.reshape_198/ReshapeReshapereshape_19/Reshape:output:0%tf.reshape_198/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_198/Reshape�
tf.tile_99/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_99/Tile/multiples�
tf.tile_99/TileTiletf.reshape_198/Reshape:output:0"tf.tile_99/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_99/Tile�
tf.reshape_199/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_199/Reshape/shape�
tf.reshape_199/ReshapeReshapetf.tile_99/Tile:output:0%tf.reshape_199/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_199/Reshapex
tf.concat_182/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_182/concat/axis�
tf.concat_182/concatConcatV2tf.reshape_199/Reshape:output:0 conv3d_40/Softplus:activations:0"tf.concat_182/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_182/concat�
conv3d_41/Conv3D/ReadVariableOpReadVariableOp(conv3d_41_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_41/Conv3D/ReadVariableOp�
conv3d_41/Conv3DConv3Dtf.concat_182/concat:output:0'conv3d_41/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_41/Conv3D�
 conv3d_41/BiasAdd/ReadVariableOpReadVariableOp)conv3d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_41/BiasAdd/ReadVariableOp�
conv3d_41/BiasAddBiasAddconv3d_41/Conv3D:output:0(conv3d_41/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_41/BiasAdd�
conv3d_41/SoftplusSoftplusconv3d_41/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_41/Softplus�
tf.reshape_200/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_200/Reshape/shape�
tf.reshape_200/ReshapeReshape conv3d_41/Softplus:activations:0%tf.reshape_200/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_200/Reshape�
tf.tile_100/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_100/Tile/multiples�
tf.tile_100/TileTiletf.reshape_200/Reshape:output:0#tf.tile_100/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_100/Tile�
tf.reshape_201/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_201/Reshape/shape�
tf.reshape_201/ReshapeReshapetf.tile_100/Tile:output:0%tf.reshape_201/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_201/Reshapex
tf.concat_183/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_183/concat/axis�
tf.concat_183/concatConcatV2tf.reshape_201/Reshape:output:0 conv3d_39/Softplus:activations:0"tf.concat_183/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_183/concat�
conv3d_42/Conv3D/ReadVariableOpReadVariableOp(conv3d_42_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_42/Conv3D/ReadVariableOp�
conv3d_42/Conv3DConv3Dtf.concat_183/concat:output:0'conv3d_42/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_42/Conv3D�
 conv3d_42/BiasAdd/ReadVariableOpReadVariableOp)conv3d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_42/BiasAdd/ReadVariableOp�
conv3d_42/BiasAddBiasAddconv3d_42/Conv3D:output:0(conv3d_42/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_42/BiasAdd�
conv3d_42/SoftplusSoftplusconv3d_42/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_42/Softplus�
conv3d_43/Conv3D/ReadVariableOpReadVariableOp(conv3d_43_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_43/Conv3D/ReadVariableOp�
conv3d_43/Conv3DConv3D conv3d_42/Softplus:activations:0'conv3d_43/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_43/Conv3D�
 conv3d_43/BiasAdd/ReadVariableOpReadVariableOp)conv3d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_43/BiasAdd/ReadVariableOp�
conv3d_43/BiasAddBiasAddconv3d_43/Conv3D:output:0(conv3d_43/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_43/BiasAdd�
IdentityIdentityconv3d_43/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_39/BiasAdd/ReadVariableOp ^conv3d_39/Conv3D/ReadVariableOp!^conv3d_40/BiasAdd/ReadVariableOp ^conv3d_40/Conv3D/ReadVariableOp!^conv3d_41/BiasAdd/ReadVariableOp ^conv3d_41/Conv3D/ReadVariableOp!^conv3d_42/BiasAdd/ReadVariableOp ^conv3d_42/Conv3D/ReadVariableOp!^conv3d_43/BiasAdd/ReadVariableOp ^conv3d_43/Conv3D/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2D
 conv3d_39/BiasAdd/ReadVariableOp conv3d_39/BiasAdd/ReadVariableOp2B
conv3d_39/Conv3D/ReadVariableOpconv3d_39/Conv3D/ReadVariableOp2D
 conv3d_40/BiasAdd/ReadVariableOp conv3d_40/BiasAdd/ReadVariableOp2B
conv3d_40/Conv3D/ReadVariableOpconv3d_40/Conv3D/ReadVariableOp2D
 conv3d_41/BiasAdd/ReadVariableOp conv3d_41/BiasAdd/ReadVariableOp2B
conv3d_41/Conv3D/ReadVariableOpconv3d_41/Conv3D/ReadVariableOp2D
 conv3d_42/BiasAdd/ReadVariableOp conv3d_42/BiasAdd/ReadVariableOp2B
conv3d_42/Conv3D/ReadVariableOpconv3d_42/Conv3D/ReadVariableOp2D
 conv3d_43/BiasAdd/ReadVariableOp conv3d_43/BiasAdd/ReadVariableOp2B
conv3d_43/Conv3D/ReadVariableOpconv3d_43/Conv3D/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
R
6__inference_average_pooling3d_15_layer_call_fn_2794365

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_27934722
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
�7
�
#__inference__traced_restore_2794652
file_prefix?
!assignvariableop_conv3d_39_kernel:/
!assignvariableop_1_conv3d_39_bias:A
#assignvariableop_2_conv3d_40_kernel:/
!assignvariableop_3_conv3d_40_bias:3
!assignvariableop_4_dense_9_kernel:@@-
assignvariableop_5_dense_9_bias:@A
#assignvariableop_6_conv3d_41_kernel:/
!assignvariableop_7_conv3d_41_bias:A
#assignvariableop_8_conv3d_42_kernel:/
!assignvariableop_9_conv3d_42_bias:B
$assignvariableop_10_conv3d_43_kernel:0
"assignvariableop_11_conv3d_43_bias:
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
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_39_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_39_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_40_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_40_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_9_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_9_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv3d_41_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv3d_41_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_42_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_42_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_43_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_43_biasIdentity_11:output:0"/device:CPU:0*
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
�
R
6__inference_average_pooling3d_15_layer_call_fn_2794360

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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_27933692
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
H
,__inference_reshape_18_layer_call_fn_2794436

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
G__inference_reshape_18_layer_call_and_return_conditional_losses_27935132
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
)__inference_model_9_layer_call_fn_2793643	
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_27936162
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
c
G__inference_reshape_18_layer_call_and_return_conditional_losses_2794448

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
F__inference_conv3d_39_layer_call_and_return_conditional_losses_2794355

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
F__inference_conv3d_41_layer_call_and_return_conditional_losses_2793568

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
G__inference_reshape_19_layer_call_and_return_conditional_losses_2794488

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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_2794403

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
G__inference_reshape_19_layer_call_and_return_conditional_losses_2793547

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
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_2793439

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
+__inference_conv3d_43_layer_call_fn_2794537

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_43_layer_call_and_return_conditional_losses_27936092
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
F__inference_conv3d_42_layer_call_and_return_conditional_losses_2793593

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
��
�
"__inference__wrapped_model_2793356	
inputN
0model_9_conv3d_39_conv3d_readvariableop_resource:?
1model_9_conv3d_39_biasadd_readvariableop_resource:N
0model_9_conv3d_40_conv3d_readvariableop_resource:?
1model_9_conv3d_40_biasadd_readvariableop_resource:@
.model_9_dense_9_matmul_readvariableop_resource:@@=
/model_9_dense_9_biasadd_readvariableop_resource:@N
0model_9_conv3d_41_conv3d_readvariableop_resource:?
1model_9_conv3d_41_biasadd_readvariableop_resource:N
0model_9_conv3d_42_conv3d_readvariableop_resource:?
1model_9_conv3d_42_biasadd_readvariableop_resource:N
0model_9_conv3d_43_conv3d_readvariableop_resource:?
1model_9_conv3d_43_biasadd_readvariableop_resource:
identity��(model_9/conv3d_39/BiasAdd/ReadVariableOp�'model_9/conv3d_39/Conv3D/ReadVariableOp�(model_9/conv3d_40/BiasAdd/ReadVariableOp�'model_9/conv3d_40/Conv3D/ReadVariableOp�(model_9/conv3d_41/BiasAdd/ReadVariableOp�'model_9/conv3d_41/Conv3D/ReadVariableOp�(model_9/conv3d_42/BiasAdd/ReadVariableOp�'model_9/conv3d_42/Conv3D/ReadVariableOp�(model_9/conv3d_43/BiasAdd/ReadVariableOp�'model_9/conv3d_43/Conv3D/ReadVariableOp�&model_9/dense_9/BiasAdd/ReadVariableOp�%model_9/dense_9/MatMul/ReadVariableOp�
8model_9/tf.__operators__.getitem_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_9/tf.__operators__.getitem_164/strided_slice/stack�
:model_9/tf.__operators__.getitem_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_9/tf.__operators__.getitem_164/strided_slice/stack_1�
:model_9/tf.__operators__.getitem_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_9/tf.__operators__.getitem_164/strided_slice/stack_2�
2model_9/tf.__operators__.getitem_164/strided_sliceStridedSliceinputAmodel_9/tf.__operators__.getitem_164/strided_slice/stack:output:0Cmodel_9/tf.__operators__.getitem_164/strided_slice/stack_1:output:0Cmodel_9/tf.__operators__.getitem_164/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask24
2model_9/tf.__operators__.getitem_164/strided_slice�
 model_9/range_conversion_9/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 model_9/range_conversion_9/sub/y�
model_9/range_conversion_9/subSub;model_9/tf.__operators__.getitem_164/strided_slice:output:0)model_9/range_conversion_9/sub/y:output:0*
T0*3
_output_shapes!
:���������2 
model_9/range_conversion_9/sub�
$model_9/range_conversion_9/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2&
$model_9/range_conversion_9/truediv/y�
"model_9/range_conversion_9/truedivRealDiv"model_9/range_conversion_9/sub:z:0-model_9/range_conversion_9/truediv/y:output:0*
T0*3
_output_shapes!
:���������2$
"model_9/range_conversion_9/truediv�
 model_9/range_conversion_9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 model_9/range_conversion_9/mul/y�
model_9/range_conversion_9/mulMul&model_9/range_conversion_9/truediv:z:0)model_9/range_conversion_9/mul/y:output:0*
T0*3
_output_shapes!
:���������2 
model_9/range_conversion_9/mul�
 model_9/range_conversion_9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2"
 model_9/range_conversion_9/add/y�
model_9/range_conversion_9/addAddV2"model_9/range_conversion_9/mul:z:0)model_9/range_conversion_9/add/y:output:0*
T0*3
_output_shapes!
:���������2 
model_9/range_conversion_9/add�
8model_9/tf.__operators__.getitem_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_9/tf.__operators__.getitem_165/strided_slice/stack�
:model_9/tf.__operators__.getitem_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_9/tf.__operators__.getitem_165/strided_slice/stack_1�
:model_9/tf.__operators__.getitem_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_9/tf.__operators__.getitem_165/strided_slice/stack_2�
2model_9/tf.__operators__.getitem_165/strided_sliceStridedSliceinputAmodel_9/tf.__operators__.getitem_165/strided_slice/stack:output:0Cmodel_9/tf.__operators__.getitem_165/strided_slice/stack_1:output:0Cmodel_9/tf.__operators__.getitem_165/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask24
2model_9/tf.__operators__.getitem_165/strided_slice�
!model_9/tf.concat_181/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_9/tf.concat_181/concat/axis�
model_9/tf.concat_181/concatConcatV2"model_9/range_conversion_9/add:z:0;model_9/tf.__operators__.getitem_165/strided_slice:output:0*model_9/tf.concat_181/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_9/tf.concat_181/concat�
'model_9/conv3d_39/Conv3D/ReadVariableOpReadVariableOp0model_9_conv3d_39_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_9/conv3d_39/Conv3D/ReadVariableOp�
model_9/conv3d_39/Conv3DConv3D%model_9/tf.concat_181/concat:output:0/model_9/conv3d_39/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_9/conv3d_39/Conv3D�
(model_9/conv3d_39/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv3d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_9/conv3d_39/BiasAdd/ReadVariableOp�
model_9/conv3d_39/BiasAddBiasAdd!model_9/conv3d_39/Conv3D:output:00model_9/conv3d_39/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_9/conv3d_39/BiasAdd�
model_9/conv3d_39/SoftplusSoftplus"model_9/conv3d_39/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_9/conv3d_39/Softplus�
+model_9/average_pooling3d_15/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2-
+model_9/average_pooling3d_15/transpose/perm�
&model_9/average_pooling3d_15/transpose	Transpose(model_9/conv3d_39/Softplus:activations:04model_9/average_pooling3d_15/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2(
&model_9/average_pooling3d_15/transpose�
&model_9/average_pooling3d_15/AvgPool3D	AvgPool3D*model_9/average_pooling3d_15/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2(
&model_9/average_pooling3d_15/AvgPool3D�
-model_9/average_pooling3d_15/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_9/average_pooling3d_15/transpose_1/perm�
(model_9/average_pooling3d_15/transpose_1	Transpose/model_9/average_pooling3d_15/AvgPool3D:output:06model_9/average_pooling3d_15/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_9/average_pooling3d_15/transpose_1�
'model_9/conv3d_40/Conv3D/ReadVariableOpReadVariableOp0model_9_conv3d_40_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_9/conv3d_40/Conv3D/ReadVariableOp�
model_9/conv3d_40/Conv3DConv3D,model_9/average_pooling3d_15/transpose_1:y:0/model_9/conv3d_40/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_9/conv3d_40/Conv3D�
(model_9/conv3d_40/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv3d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_9/conv3d_40/BiasAdd/ReadVariableOp�
model_9/conv3d_40/BiasAddBiasAdd!model_9/conv3d_40/Conv3D:output:00model_9/conv3d_40/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_9/conv3d_40/BiasAdd�
model_9/conv3d_40/SoftplusSoftplus"model_9/conv3d_40/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_9/conv3d_40/Softplus�
+model_9/average_pooling3d_16/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2-
+model_9/average_pooling3d_16/transpose/perm�
&model_9/average_pooling3d_16/transpose	Transpose(model_9/conv3d_40/Softplus:activations:04model_9/average_pooling3d_16/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2(
&model_9/average_pooling3d_16/transpose�
&model_9/average_pooling3d_16/AvgPool3D	AvgPool3D*model_9/average_pooling3d_16/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2(
&model_9/average_pooling3d_16/AvgPool3D�
-model_9/average_pooling3d_16/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_9/average_pooling3d_16/transpose_1/perm�
(model_9/average_pooling3d_16/transpose_1	Transpose/model_9/average_pooling3d_16/AvgPool3D:output:06model_9/average_pooling3d_16/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_9/average_pooling3d_16/transpose_1�
model_9/reshape_18/ShapeShape,model_9/average_pooling3d_16/transpose_1:y:0*
T0*
_output_shapes
:2
model_9/reshape_18/Shape�
&model_9/reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model_9/reshape_18/strided_slice/stack�
(model_9/reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_9/reshape_18/strided_slice/stack_1�
(model_9/reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_9/reshape_18/strided_slice/stack_2�
 model_9/reshape_18/strided_sliceStridedSlice!model_9/reshape_18/Shape:output:0/model_9/reshape_18/strided_slice/stack:output:01model_9/reshape_18/strided_slice/stack_1:output:01model_9/reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model_9/reshape_18/strided_slice�
"model_9/reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"model_9/reshape_18/Reshape/shape/1�
 model_9/reshape_18/Reshape/shapePack)model_9/reshape_18/strided_slice:output:0+model_9/reshape_18/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 model_9/reshape_18/Reshape/shape�
model_9/reshape_18/ReshapeReshape,model_9/average_pooling3d_16/transpose_1:y:0)model_9/reshape_18/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_9/reshape_18/Reshape�
%model_9/dense_9/MatMul/ReadVariableOpReadVariableOp.model_9_dense_9_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%model_9/dense_9/MatMul/ReadVariableOp�
model_9/dense_9/MatMulMatMul#model_9/reshape_18/Reshape:output:0-model_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_9/dense_9/MatMul�
&model_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_9_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_9/dense_9/BiasAdd/ReadVariableOp�
model_9/dense_9/BiasAddBiasAdd model_9/dense_9/MatMul:product:0.model_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_9/dense_9/BiasAdd�
model_9/dense_9/SoftplusSoftplus model_9/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_9/dense_9/Softplus�
model_9/reshape_19/ShapeShape&model_9/dense_9/Softplus:activations:0*
T0*
_output_shapes
:2
model_9/reshape_19/Shape�
&model_9/reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model_9/reshape_19/strided_slice/stack�
(model_9/reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_9/reshape_19/strided_slice/stack_1�
(model_9/reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_9/reshape_19/strided_slice/stack_2�
 model_9/reshape_19/strided_sliceStridedSlice!model_9/reshape_19/Shape:output:0/model_9/reshape_19/strided_slice/stack:output:01model_9/reshape_19/strided_slice/stack_1:output:01model_9/reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model_9/reshape_19/strided_slice�
"model_9/reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_9/reshape_19/Reshape/shape/1�
"model_9/reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_9/reshape_19/Reshape/shape/2�
"model_9/reshape_19/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_9/reshape_19/Reshape/shape/3�
"model_9/reshape_19/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_9/reshape_19/Reshape/shape/4�
 model_9/reshape_19/Reshape/shapePack)model_9/reshape_19/strided_slice:output:0+model_9/reshape_19/Reshape/shape/1:output:0+model_9/reshape_19/Reshape/shape/2:output:0+model_9/reshape_19/Reshape/shape/3:output:0+model_9/reshape_19/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2"
 model_9/reshape_19/Reshape/shape�
model_9/reshape_19/ReshapeReshape&model_9/dense_9/Softplus:activations:0)model_9/reshape_19/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_9/reshape_19/Reshape�
$model_9/tf.reshape_198/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_9/tf.reshape_198/Reshape/shape�
model_9/tf.reshape_198/ReshapeReshape#model_9/reshape_19/Reshape:output:0-model_9/tf.reshape_198/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_9/tf.reshape_198/Reshape�
!model_9/tf.tile_99/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2#
!model_9/tf.tile_99/Tile/multiples�
model_9/tf.tile_99/TileTile'model_9/tf.reshape_198/Reshape:output:0*model_9/tf.tile_99/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_9/tf.tile_99/Tile�
$model_9/tf.reshape_199/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2&
$model_9/tf.reshape_199/Reshape/shape�
model_9/tf.reshape_199/ReshapeReshape model_9/tf.tile_99/Tile:output:0-model_9/tf.reshape_199/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2 
model_9/tf.reshape_199/Reshape�
!model_9/tf.concat_182/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_9/tf.concat_182/concat/axis�
model_9/tf.concat_182/concatConcatV2'model_9/tf.reshape_199/Reshape:output:0(model_9/conv3d_40/Softplus:activations:0*model_9/tf.concat_182/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_9/tf.concat_182/concat�
'model_9/conv3d_41/Conv3D/ReadVariableOpReadVariableOp0model_9_conv3d_41_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_9/conv3d_41/Conv3D/ReadVariableOp�
model_9/conv3d_41/Conv3DConv3D%model_9/tf.concat_182/concat:output:0/model_9/conv3d_41/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_9/conv3d_41/Conv3D�
(model_9/conv3d_41/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv3d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_9/conv3d_41/BiasAdd/ReadVariableOp�
model_9/conv3d_41/BiasAddBiasAdd!model_9/conv3d_41/Conv3D:output:00model_9/conv3d_41/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_9/conv3d_41/BiasAdd�
model_9/conv3d_41/SoftplusSoftplus"model_9/conv3d_41/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_9/conv3d_41/Softplus�
$model_9/tf.reshape_200/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_9/tf.reshape_200/Reshape/shape�
model_9/tf.reshape_200/ReshapeReshape(model_9/conv3d_41/Softplus:activations:0-model_9/tf.reshape_200/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_9/tf.reshape_200/Reshape�
"model_9/tf.tile_100/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_9/tf.tile_100/Tile/multiples�
model_9/tf.tile_100/TileTile'model_9/tf.reshape_200/Reshape:output:0+model_9/tf.tile_100/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_9/tf.tile_100/Tile�
$model_9/tf.reshape_201/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2&
$model_9/tf.reshape_201/Reshape/shape�
model_9/tf.reshape_201/ReshapeReshape!model_9/tf.tile_100/Tile:output:0-model_9/tf.reshape_201/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2 
model_9/tf.reshape_201/Reshape�
!model_9/tf.concat_183/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_9/tf.concat_183/concat/axis�
model_9/tf.concat_183/concatConcatV2'model_9/tf.reshape_201/Reshape:output:0(model_9/conv3d_39/Softplus:activations:0*model_9/tf.concat_183/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_9/tf.concat_183/concat�
'model_9/conv3d_42/Conv3D/ReadVariableOpReadVariableOp0model_9_conv3d_42_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_9/conv3d_42/Conv3D/ReadVariableOp�
model_9/conv3d_42/Conv3DConv3D%model_9/tf.concat_183/concat:output:0/model_9/conv3d_42/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_9/conv3d_42/Conv3D�
(model_9/conv3d_42/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv3d_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_9/conv3d_42/BiasAdd/ReadVariableOp�
model_9/conv3d_42/BiasAddBiasAdd!model_9/conv3d_42/Conv3D:output:00model_9/conv3d_42/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_9/conv3d_42/BiasAdd�
model_9/conv3d_42/SoftplusSoftplus"model_9/conv3d_42/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_9/conv3d_42/Softplus�
'model_9/conv3d_43/Conv3D/ReadVariableOpReadVariableOp0model_9_conv3d_43_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_9/conv3d_43/Conv3D/ReadVariableOp�
model_9/conv3d_43/Conv3DConv3D(model_9/conv3d_42/Softplus:activations:0/model_9/conv3d_43/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_9/conv3d_43/Conv3D�
(model_9/conv3d_43/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv3d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_9/conv3d_43/BiasAdd/ReadVariableOp�
model_9/conv3d_43/BiasAddBiasAdd!model_9/conv3d_43/Conv3D:output:00model_9/conv3d_43/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_9/conv3d_43/BiasAdd�
IdentityIdentity"model_9/conv3d_43/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp)^model_9/conv3d_39/BiasAdd/ReadVariableOp(^model_9/conv3d_39/Conv3D/ReadVariableOp)^model_9/conv3d_40/BiasAdd/ReadVariableOp(^model_9/conv3d_40/Conv3D/ReadVariableOp)^model_9/conv3d_41/BiasAdd/ReadVariableOp(^model_9/conv3d_41/Conv3D/ReadVariableOp)^model_9/conv3d_42/BiasAdd/ReadVariableOp(^model_9/conv3d_42/Conv3D/ReadVariableOp)^model_9/conv3d_43/BiasAdd/ReadVariableOp(^model_9/conv3d_43/Conv3D/ReadVariableOp'^model_9/dense_9/BiasAdd/ReadVariableOp&^model_9/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2T
(model_9/conv3d_39/BiasAdd/ReadVariableOp(model_9/conv3d_39/BiasAdd/ReadVariableOp2R
'model_9/conv3d_39/Conv3D/ReadVariableOp'model_9/conv3d_39/Conv3D/ReadVariableOp2T
(model_9/conv3d_40/BiasAdd/ReadVariableOp(model_9/conv3d_40/BiasAdd/ReadVariableOp2R
'model_9/conv3d_40/Conv3D/ReadVariableOp'model_9/conv3d_40/Conv3D/ReadVariableOp2T
(model_9/conv3d_41/BiasAdd/ReadVariableOp(model_9/conv3d_41/BiasAdd/ReadVariableOp2R
'model_9/conv3d_41/Conv3D/ReadVariableOp'model_9/conv3d_41/Conv3D/ReadVariableOp2T
(model_9/conv3d_42/BiasAdd/ReadVariableOp(model_9/conv3d_42/BiasAdd/ReadVariableOp2R
'model_9/conv3d_42/Conv3D/ReadVariableOp'model_9/conv3d_42/Conv3D/ReadVariableOp2T
(model_9/conv3d_43/BiasAdd/ReadVariableOp(model_9/conv3d_43/BiasAdd/ReadVariableOp2R
'model_9/conv3d_43/Conv3D/ReadVariableOp'model_9/conv3d_43/Conv3D/ReadVariableOp2P
&model_9/dense_9/BiasAdd/ReadVariableOp&model_9/dense_9/BiasAdd/ReadVariableOp2N
%model_9/dense_9/MatMul/ReadVariableOp%model_9/dense_9/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
+__inference_conv3d_42_layer_call_fn_2794517

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_42_layer_call_and_return_conditional_losses_27935932
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
m
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2794383

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
serving_default_input:0���������I
	conv3d_43<
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
0:. 2conv3d_39/kernel
: 2conv3d_39/bias
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
0:. 2conv3d_40/kernel
: 2conv3d_40/bias
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
": @@ 2dense_9/kernel
:@ 2dense_9/bias
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
0:. 2conv3d_41/kernel
: 2conv3d_41/bias
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
0:. 2conv3d_42/kernel
: 2conv3d_42/bias
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
0:. 2conv3d_43/kernel
: 2conv3d_43/bias
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
)__inference_model_9_layer_call_fn_2793643
)__inference_model_9_layer_call_fn_2794073
)__inference_model_9_layer_call_fn_2794102
)__inference_model_9_layer_call_fn_2793883�
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
D__inference_model_9_layer_call_and_return_conditional_losses_2794210
D__inference_model_9_layer_call_and_return_conditional_losses_2794318
D__inference_model_9_layer_call_and_return_conditional_losses_2793948
D__inference_model_9_layer_call_and_return_conditional_losses_2794013�
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
"__inference__wrapped_model_2793356input"�
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
4__inference_range_conversion_9_layer_call_fn_2794323�
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
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_2794335�
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
+__inference_conv3d_39_layer_call_fn_2794344�
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
F__inference_conv3d_39_layer_call_and_return_conditional_losses_2794355�
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
6__inference_average_pooling3d_15_layer_call_fn_2794360
6__inference_average_pooling3d_15_layer_call_fn_2794365�
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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2794374
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2794383�
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
+__inference_conv3d_40_layer_call_fn_2794392�
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
F__inference_conv3d_40_layer_call_and_return_conditional_losses_2794403�
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
6__inference_average_pooling3d_16_layer_call_fn_2794408
6__inference_average_pooling3d_16_layer_call_fn_2794413�
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
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2794422
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2794431�
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
,__inference_reshape_18_layer_call_fn_2794436�
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
G__inference_reshape_18_layer_call_and_return_conditional_losses_2794448�
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
)__inference_dense_9_layer_call_fn_2794457�
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
D__inference_dense_9_layer_call_and_return_conditional_losses_2794468�
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
,__inference_reshape_19_layer_call_fn_2794473�
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
G__inference_reshape_19_layer_call_and_return_conditional_losses_2794488�
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
+__inference_conv3d_41_layer_call_fn_2794497�
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
F__inference_conv3d_41_layer_call_and_return_conditional_losses_2794508�
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
+__inference_conv3d_42_layer_call_fn_2794517�
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
F__inference_conv3d_42_layer_call_and_return_conditional_losses_2794528�
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
+__inference_conv3d_43_layer_call_fn_2794537�
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
F__inference_conv3d_43_layer_call_and_return_conditional_losses_2794547�
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
%__inference_signature_wrapper_2794044input"�
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
"__inference__wrapped_model_2793356�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "A�>
<
	conv3d_43/�,
	conv3d_43����������
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2794374�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_2794383p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_15_layer_call_fn_2794360�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_15_layer_call_fn_2794365c;�8
1�.
,�)
inputs���������
� "$�!����������
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2794422�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_16_layer_call_and_return_conditional_losses_2794431p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_16_layer_call_fn_2794408�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_16_layer_call_fn_2794413c;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_39_layer_call_and_return_conditional_losses_2794355t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_39_layer_call_fn_2794344g$%;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_40_layer_call_and_return_conditional_losses_2794403t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_40_layer_call_fn_2794392g./;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_41_layer_call_and_return_conditional_losses_2794508tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_41_layer_call_fn_2794497gJK;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_42_layer_call_and_return_conditional_losses_2794528tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_42_layer_call_fn_2794517gTU;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_43_layer_call_and_return_conditional_losses_2794547tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_43_layer_call_fn_2794537gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
D__inference_dense_9_layer_call_and_return_conditional_losses_2794468\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� |
)__inference_dense_9_layer_call_fn_2794457O<=/�,
%�"
 �
inputs���������@
� "����������@�
D__inference_model_9_layer_call_and_return_conditional_losses_2793948�$%./<=JKTUZ[B�?
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
D__inference_model_9_layer_call_and_return_conditional_losses_2794013�$%./<=JKTUZ[B�?
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
D__inference_model_9_layer_call_and_return_conditional_losses_2794210�$%./<=JKTUZ[C�@
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
D__inference_model_9_layer_call_and_return_conditional_losses_2794318�$%./<=JKTUZ[C�@
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
)__inference_model_9_layer_call_fn_2793643x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
)__inference_model_9_layer_call_fn_2793883x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
)__inference_model_9_layer_call_fn_2794073y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
)__inference_model_9_layer_call_fn_2794102y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
O__inference_range_conversion_9_layer_call_and_return_conditional_losses_2794335t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
4__inference_range_conversion_9_layer_call_fn_2794323g?�<
5�2
0�-

parameters���������
� "$�!����������
G__inference_reshape_18_layer_call_and_return_conditional_losses_2794448d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_18_layer_call_fn_2794436W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_19_layer_call_and_return_conditional_losses_2794488d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_19_layer_call_fn_2794473W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_2794044�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"A�>
<
	conv3d_43/�,
	conv3d_43���������