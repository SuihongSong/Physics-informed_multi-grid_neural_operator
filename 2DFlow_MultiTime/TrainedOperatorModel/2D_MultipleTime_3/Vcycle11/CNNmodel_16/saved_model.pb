ȹ
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
conv3d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_48/kernel
�
$conv3d_48/kernel/Read/ReadVariableOpReadVariableOpconv3d_48/kernel**
_output_shapes
:*
dtype0
t
conv3d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_48/bias
m
"conv3d_48/bias/Read/ReadVariableOpReadVariableOpconv3d_48/bias*
_output_shapes
:*
dtype0
�
conv3d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_49/kernel
�
$conv3d_49/kernel/Read/ReadVariableOpReadVariableOpconv3d_49/kernel**
_output_shapes
:*
dtype0
t
conv3d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_49/bias
m
"conv3d_49/bias/Read/ReadVariableOpReadVariableOpconv3d_49/bias*
_output_shapes
:*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:@@*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:@*
dtype0
�
conv3d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_50/kernel
�
$conv3d_50/kernel/Read/ReadVariableOpReadVariableOpconv3d_50/kernel**
_output_shapes
:*
dtype0
t
conv3d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_50/bias
m
"conv3d_50/bias/Read/ReadVariableOpReadVariableOpconv3d_50/bias*
_output_shapes
:*
dtype0
�
conv3d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_51/kernel
�
$conv3d_51/kernel/Read/ReadVariableOpReadVariableOpconv3d_51/kernel**
_output_shapes
:*
dtype0
t
conv3d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_51/bias
m
"conv3d_51/bias/Read/ReadVariableOpReadVariableOpconv3d_51/bias*
_output_shapes
:*
dtype0
�
conv3d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_52/kernel
�
$conv3d_52/kernel/Read/ReadVariableOpReadVariableOpconv3d_52/kernel**
_output_shapes
:*
dtype0
t
conv3d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_52/bias
m
"conv3d_52/bias/Read/ReadVariableOpReadVariableOpconv3d_52/bias*
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
trainable_variables
 regularization_losses
!	keras_api

"	keras_api

#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
h

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
R
4	variables
5trainable_variables
6regularization_losses
7	keras_api
R
8	variables
9trainable_variables
:regularization_losses
;	keras_api
h

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
R
B	variables
Ctrainable_variables
Dregularization_losses
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
Mtrainable_variables
Nregularization_losses
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
Wtrainable_variables
Xregularization_losses
Y	keras_api
h

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
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
 
�
	variables
`layer_regularization_losses

alayers
trainable_variables
bnon_trainable_variables
cmetrics
dlayer_metrics
regularization_losses
 
 
 
 
 
�
	variables
elayer_regularization_losses

flayers
trainable_variables
gnon_trainable_variables
hmetrics
ilayer_metrics
 regularization_losses
 
 
\Z
VARIABLE_VALUEconv3d_48/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_48/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
�
&	variables
jlayer_regularization_losses

klayers
'trainable_variables
lnon_trainable_variables
mmetrics
nlayer_metrics
(regularization_losses
 
 
 
�
*	variables
olayer_regularization_losses

players
+trainable_variables
qnon_trainable_variables
rmetrics
slayer_metrics
,regularization_losses
\Z
VARIABLE_VALUEconv3d_49/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_49/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
�
0	variables
tlayer_regularization_losses

ulayers
1trainable_variables
vnon_trainable_variables
wmetrics
xlayer_metrics
2regularization_losses
 
 
 
�
4	variables
ylayer_regularization_losses

zlayers
5trainable_variables
{non_trainable_variables
|metrics
}layer_metrics
6regularization_losses
 
 
 
�
8	variables
~layer_regularization_losses

layers
9trainable_variables
�non_trainable_variables
�metrics
�layer_metrics
:regularization_losses
[Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
�
>	variables
 �layer_regularization_losses
�layers
?trainable_variables
�non_trainable_variables
�metrics
�layer_metrics
@regularization_losses
 
 
 
�
B	variables
 �layer_regularization_losses
�layers
Ctrainable_variables
�non_trainable_variables
�metrics
�layer_metrics
Dregularization_losses
 
 
 
 
\Z
VARIABLE_VALUEconv3d_50/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_50/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1

J0
K1
 
�
L	variables
 �layer_regularization_losses
�layers
Mtrainable_variables
�non_trainable_variables
�metrics
�layer_metrics
Nregularization_losses
 
 
 
 
\Z
VARIABLE_VALUEconv3d_51/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_51/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

T0
U1
 
�
V	variables
 �layer_regularization_losses
�layers
Wtrainable_variables
�non_trainable_variables
�metrics
�layer_metrics
Xregularization_losses
\Z
VARIABLE_VALUEconv3d_52/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_52/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
�
\	variables
 �layer_regularization_losses
�layers
]trainable_variables
�non_trainable_variables
�metrics
�layer_metrics
^regularization_losses
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_48/kernelconv3d_48/biasconv3d_49/kernelconv3d_49/biasdense_20/kerneldense_20/biasconv3d_50/kernelconv3d_50/biasconv3d_51/kernelconv3d_51/biasconv3d_52/kernelconv3d_52/bias*
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
%__inference_signature_wrapper_4688714
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_48/kernel/Read/ReadVariableOp"conv3d_48/bias/Read/ReadVariableOp$conv3d_49/kernel/Read/ReadVariableOp"conv3d_49/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp$conv3d_50/kernel/Read/ReadVariableOp"conv3d_50/bias/Read/ReadVariableOp$conv3d_51/kernel/Read/ReadVariableOp"conv3d_51/bias/Read/ReadVariableOp$conv3d_52/kernel/Read/ReadVariableOp"conv3d_52/bias/Read/ReadVariableOpConst*
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
 __inference__traced_save_4689276
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_48/kernelconv3d_48/biasconv3d_49/kernelconv3d_49/biasdense_20/kerneldense_20/biasconv3d_50/kernelconv3d_50/biasconv3d_51/kernelconv3d_51/biasconv3d_52/kernelconv3d_52/bias*
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
#__inference__traced_restore_4689322Ȇ
�
R
6__inference_average_pooling3d_14_layer_call_fn_4689030

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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_46880392
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
R
6__inference_average_pooling3d_14_layer_call_fn_4689035

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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_46881422
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
m
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4689101

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
E__inference_dense_20_layer_call_and_return_conditional_losses_4689138

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
p
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_4688109

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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_4689178

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
G__inference_reshape_41_layer_call_and_return_conditional_losses_4689158

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
�
H
,__inference_reshape_40_layer_call_fn_4689106

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
G__inference_reshape_40_layer_call_and_return_conditional_losses_46881832
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

m
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4688039

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
c
G__inference_reshape_40_layer_call_and_return_conditional_losses_4689118

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
E__inference_dense_20_layer_call_and_return_conditional_losses_4688196

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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_4688238

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
+__inference_conv3d_48_layer_call_fn_4689014

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
F__inference_conv3d_48_layer_call_and_return_conditional_losses_46881282
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
E__inference_model_20_layer_call_and_return_conditional_losses_4688286

inputs/
conv3d_48_4688129:
conv3d_48_4688131:/
conv3d_49_4688156:
conv3d_49_4688158:"
dense_20_4688197:@@
dense_20_4688199:@/
conv3d_50_4688239:
conv3d_50_4688241:/
conv3d_51_4688264:
conv3d_51_4688266:/
conv3d_52_4688280:
conv3d_52_4688282:
identity��!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
/tf.__operators__.getitem_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_38/strided_slice/stack�
1tf.__operators__.getitem_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_38/strided_slice/stack_1�
1tf.__operators__.getitem_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_38/strided_slice/stack_2�
)tf.__operators__.getitem_38/strided_sliceStridedSliceinputs8tf.__operators__.getitem_38/strided_slice/stack:output:0:tf.__operators__.getitem_38/strided_slice/stack_1:output:0:tf.__operators__.getitem_38/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_38/strided_slice�
#range_conversion_20/PartitionedCallPartitionedCall2tf.__operators__.getitem_38/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_46881092%
#range_conversion_20/PartitionedCall�
/tf.__operators__.getitem_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_39/strided_slice/stack�
1tf.__operators__.getitem_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_39/strided_slice/stack_1�
1tf.__operators__.getitem_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_39/strided_slice/stack_2�
)tf.__operators__.getitem_39/strided_sliceStridedSliceinputs8tf.__operators__.getitem_39/strided_slice/stack:output:0:tf.__operators__.getitem_39/strided_slice/stack_1:output:0:tf.__operators__.getitem_39/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_39/strided_slicev
tf.concat_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_33/concat/axis�
tf.concat_33/concatConcatV2,range_conversion_20/PartitionedCall:output:02tf.__operators__.getitem_39/strided_slice:output:0!tf.concat_33/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_33/concat�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCalltf.concat_33/concat:output:0conv3d_48_4688129conv3d_48_4688131*
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
F__inference_conv3d_48_layer_call_and_return_conditional_losses_46881282#
!conv3d_48/StatefulPartitionedCall�
$average_pooling3d_14/PartitionedCallPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_46881422&
$average_pooling3d_14/PartitionedCall�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_14/PartitionedCall:output:0conv3d_49_4688156conv3d_49_4688158*
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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_46881552#
!conv3d_49/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_49/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_46881692&
$average_pooling3d_15/PartitionedCall�
reshape_40/PartitionedCallPartitionedCall-average_pooling3d_15/PartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_46881832
reshape_40/PartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0dense_20_4688197dense_20_4688199*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_46881962"
 dense_20/StatefulPartitionedCall�
reshape_41/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
G__inference_reshape_41_layer_call_and_return_conditional_losses_46882172
reshape_41/PartitionedCall�
tf.reshape_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_28/Reshape/shape�
tf.reshape_28/ReshapeReshape#reshape_41/PartitionedCall:output:0$tf.reshape_28/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_28/Reshape�
tf.tile_14/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_14/Tile/multiples�
tf.tile_14/TileTiletf.reshape_28/Reshape:output:0"tf.tile_14/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_14/Tile�
tf.reshape_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_29/Reshape/shape�
tf.reshape_29/ReshapeReshapetf.tile_14/Tile:output:0$tf.reshape_29/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_29/Reshapev
tf.concat_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_34/concat/axis�
tf.concat_34/concatConcatV2tf.reshape_29/Reshape:output:0*conv3d_49/StatefulPartitionedCall:output:0!tf.concat_34/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_34/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_34/concat:output:0conv3d_50_4688239conv3d_50_4688241*
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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_46882382#
!conv3d_50/StatefulPartitionedCall�
tf.reshape_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_30/Reshape/shape�
tf.reshape_30/ReshapeReshape*conv3d_50/StatefulPartitionedCall:output:0$tf.reshape_30/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_30/Reshape�
tf.tile_15/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_15/Tile/multiples�
tf.tile_15/TileTiletf.reshape_30/Reshape:output:0"tf.tile_15/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_15/Tile�
tf.reshape_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_31/Reshape/shape�
tf.reshape_31/ReshapeReshapetf.tile_15/Tile:output:0$tf.reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_31/Reshapev
tf.concat_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_35/concat/axis�
tf.concat_35/concatConcatV2tf.reshape_31/Reshape:output:0*conv3d_48/StatefulPartitionedCall:output:0!tf.concat_35/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_35/concat�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCalltf.concat_35/concat:output:0conv3d_51_4688264conv3d_51_4688266*
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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_46882632#
!conv3d_51/StatefulPartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_4688280conv3d_52_4688282*
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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_46882792#
!conv3d_52/StatefulPartitionedCall�
IdentityIdentity*conv3d_52/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
Ɯ
�	
E__inference_model_20_layer_call_and_return_conditional_losses_4688988

inputsF
(conv3d_48_conv3d_readvariableop_resource:7
)conv3d_48_biasadd_readvariableop_resource:F
(conv3d_49_conv3d_readvariableop_resource:7
)conv3d_49_biasadd_readvariableop_resource:9
'dense_20_matmul_readvariableop_resource:@@6
(dense_20_biasadd_readvariableop_resource:@F
(conv3d_50_conv3d_readvariableop_resource:7
)conv3d_50_biasadd_readvariableop_resource:F
(conv3d_51_conv3d_readvariableop_resource:7
)conv3d_51_biasadd_readvariableop_resource:F
(conv3d_52_conv3d_readvariableop_resource:7
)conv3d_52_biasadd_readvariableop_resource:
identity�� conv3d_48/BiasAdd/ReadVariableOp�conv3d_48/Conv3D/ReadVariableOp� conv3d_49/BiasAdd/ReadVariableOp�conv3d_49/Conv3D/ReadVariableOp� conv3d_50/BiasAdd/ReadVariableOp�conv3d_50/Conv3D/ReadVariableOp� conv3d_51/BiasAdd/ReadVariableOp�conv3d_51/Conv3D/ReadVariableOp� conv3d_52/BiasAdd/ReadVariableOp�conv3d_52/Conv3D/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp�
/tf.__operators__.getitem_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_38/strided_slice/stack�
1tf.__operators__.getitem_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_38/strided_slice/stack_1�
1tf.__operators__.getitem_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_38/strided_slice/stack_2�
)tf.__operators__.getitem_38/strided_sliceStridedSliceinputs8tf.__operators__.getitem_38/strided_slice/stack:output:0:tf.__operators__.getitem_38/strided_slice/stack_1:output:0:tf.__operators__.getitem_38/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_38/strided_slice{
range_conversion_20/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_20/sub/y�
range_conversion_20/subSub2tf.__operators__.getitem_38/strided_slice:output:0"range_conversion_20/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/sub�
range_conversion_20/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_20/truediv/y�
range_conversion_20/truedivRealDivrange_conversion_20/sub:z:0&range_conversion_20/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/truediv{
range_conversion_20/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_20/mul/y�
range_conversion_20/mulMulrange_conversion_20/truediv:z:0"range_conversion_20/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/mul{
range_conversion_20/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_20/add/y�
range_conversion_20/addAddV2range_conversion_20/mul:z:0"range_conversion_20/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/add�
/tf.__operators__.getitem_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_39/strided_slice/stack�
1tf.__operators__.getitem_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_39/strided_slice/stack_1�
1tf.__operators__.getitem_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_39/strided_slice/stack_2�
)tf.__operators__.getitem_39/strided_sliceStridedSliceinputs8tf.__operators__.getitem_39/strided_slice/stack:output:0:tf.__operators__.getitem_39/strided_slice/stack_1:output:0:tf.__operators__.getitem_39/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_39/strided_slicev
tf.concat_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_33/concat/axis�
tf.concat_33/concatConcatV2range_conversion_20/add:z:02tf.__operators__.getitem_39/strided_slice:output:0!tf.concat_33/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_33/concat�
conv3d_48/Conv3D/ReadVariableOpReadVariableOp(conv3d_48_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_48/Conv3D/ReadVariableOp�
conv3d_48/Conv3DConv3Dtf.concat_33/concat:output:0'conv3d_48/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_48/Conv3D�
 conv3d_48/BiasAdd/ReadVariableOpReadVariableOp)conv3d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_48/BiasAdd/ReadVariableOp�
conv3d_48/BiasAddBiasAddconv3d_48/Conv3D:output:0(conv3d_48/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_48/BiasAdd�
conv3d_48/SoftplusSoftplusconv3d_48/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_48/Softplus�
#average_pooling3d_14/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_14/transpose/perm�
average_pooling3d_14/transpose	Transpose conv3d_48/Softplus:activations:0,average_pooling3d_14/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_14/transpose�
average_pooling3d_14/AvgPool3D	AvgPool3D"average_pooling3d_14/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_14/AvgPool3D�
%average_pooling3d_14/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_14/transpose_1/perm�
 average_pooling3d_14/transpose_1	Transpose'average_pooling3d_14/AvgPool3D:output:0.average_pooling3d_14/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_14/transpose_1�
conv3d_49/Conv3D/ReadVariableOpReadVariableOp(conv3d_49_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_49/Conv3D/ReadVariableOp�
conv3d_49/Conv3DConv3D$average_pooling3d_14/transpose_1:y:0'conv3d_49/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_49/Conv3D�
 conv3d_49/BiasAdd/ReadVariableOpReadVariableOp)conv3d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_49/BiasAdd/ReadVariableOp�
conv3d_49/BiasAddBiasAddconv3d_49/Conv3D:output:0(conv3d_49/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_49/BiasAdd�
conv3d_49/SoftplusSoftplusconv3d_49/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_49/Softplus�
#average_pooling3d_15/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_15/transpose/perm�
average_pooling3d_15/transpose	Transpose conv3d_49/Softplus:activations:0,average_pooling3d_15/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_15/transpose�
average_pooling3d_15/AvgPool3D	AvgPool3D"average_pooling3d_15/transpose:y:0*
T0*3
_output_shapes!
:���������*
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
:���������2"
 average_pooling3d_15/transpose_1x
reshape_40/ShapeShape$average_pooling3d_15/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_40/Shape�
reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_40/strided_slice/stack�
 reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_1�
 reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_2�
reshape_40/strided_sliceStridedSlicereshape_40/Shape:output:0'reshape_40/strided_slice/stack:output:0)reshape_40/strided_slice/stack_1:output:0)reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_40/strided_slicez
reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_40/Reshape/shape/1�
reshape_40/Reshape/shapePack!reshape_40/strided_slice:output:0#reshape_40/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_40/Reshape/shape�
reshape_40/ReshapeReshape$average_pooling3d_15/transpose_1:y:0!reshape_40/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_40/Reshape�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_20/MatMul/ReadVariableOp�
dense_20/MatMulMatMulreshape_40/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_20/MatMul�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_20/BiasAdd/ReadVariableOp�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_20/BiasAdd
dense_20/SoftplusSoftplusdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_20/Softpluss
reshape_41/ShapeShapedense_20/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_41/Shape�
reshape_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_41/strided_slice/stack�
 reshape_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_41/strided_slice/stack_1�
 reshape_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_41/strided_slice/stack_2�
reshape_41/strided_sliceStridedSlicereshape_41/Shape:output:0'reshape_41/strided_slice/stack:output:0)reshape_41/strided_slice/stack_1:output:0)reshape_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_41/strided_slicez
reshape_41/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/1z
reshape_41/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/2z
reshape_41/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/3z
reshape_41/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/4�
reshape_41/Reshape/shapePack!reshape_41/strided_slice:output:0#reshape_41/Reshape/shape/1:output:0#reshape_41/Reshape/shape/2:output:0#reshape_41/Reshape/shape/3:output:0#reshape_41/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_41/Reshape/shape�
reshape_41/ReshapeReshapedense_20/Softplus:activations:0!reshape_41/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_41/Reshape�
tf.reshape_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_28/Reshape/shape�
tf.reshape_28/ReshapeReshapereshape_41/Reshape:output:0$tf.reshape_28/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_28/Reshape�
tf.tile_14/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_14/Tile/multiples�
tf.tile_14/TileTiletf.reshape_28/Reshape:output:0"tf.tile_14/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_14/Tile�
tf.reshape_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_29/Reshape/shape�
tf.reshape_29/ReshapeReshapetf.tile_14/Tile:output:0$tf.reshape_29/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_29/Reshapev
tf.concat_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_34/concat/axis�
tf.concat_34/concatConcatV2tf.reshape_29/Reshape:output:0 conv3d_49/Softplus:activations:0!tf.concat_34/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_34/concat�
conv3d_50/Conv3D/ReadVariableOpReadVariableOp(conv3d_50_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_50/Conv3D/ReadVariableOp�
conv3d_50/Conv3DConv3Dtf.concat_34/concat:output:0'conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_50/Conv3D�
 conv3d_50/BiasAdd/ReadVariableOpReadVariableOp)conv3d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_50/BiasAdd/ReadVariableOp�
conv3d_50/BiasAddBiasAddconv3d_50/Conv3D:output:0(conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_50/BiasAdd�
conv3d_50/SoftplusSoftplusconv3d_50/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_50/Softplus�
tf.reshape_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_30/Reshape/shape�
tf.reshape_30/ReshapeReshape conv3d_50/Softplus:activations:0$tf.reshape_30/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_30/Reshape�
tf.tile_15/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_15/Tile/multiples�
tf.tile_15/TileTiletf.reshape_30/Reshape:output:0"tf.tile_15/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_15/Tile�
tf.reshape_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_31/Reshape/shape�
tf.reshape_31/ReshapeReshapetf.tile_15/Tile:output:0$tf.reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_31/Reshapev
tf.concat_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_35/concat/axis�
tf.concat_35/concatConcatV2tf.reshape_31/Reshape:output:0 conv3d_48/Softplus:activations:0!tf.concat_35/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_35/concat�
conv3d_51/Conv3D/ReadVariableOpReadVariableOp(conv3d_51_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_51/Conv3D/ReadVariableOp�
conv3d_51/Conv3DConv3Dtf.concat_35/concat:output:0'conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_51/Conv3D�
 conv3d_51/BiasAdd/ReadVariableOpReadVariableOp)conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_51/BiasAdd/ReadVariableOp�
conv3d_51/BiasAddBiasAddconv3d_51/Conv3D:output:0(conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_51/BiasAdd�
conv3d_51/SoftplusSoftplusconv3d_51/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_51/Softplus�
conv3d_52/Conv3D/ReadVariableOpReadVariableOp(conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_52/Conv3D/ReadVariableOp�
conv3d_52/Conv3DConv3D conv3d_51/Softplus:activations:0'conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_52/Conv3D�
 conv3d_52/BiasAdd/ReadVariableOpReadVariableOp)conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_52/BiasAdd/ReadVariableOp�
conv3d_52/BiasAddBiasAddconv3d_52/Conv3D:output:0(conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_52/BiasAdd�
IdentityIdentityconv3d_52/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_48/BiasAdd/ReadVariableOp ^conv3d_48/Conv3D/ReadVariableOp!^conv3d_49/BiasAdd/ReadVariableOp ^conv3d_49/Conv3D/ReadVariableOp!^conv3d_50/BiasAdd/ReadVariableOp ^conv3d_50/Conv3D/ReadVariableOp!^conv3d_51/BiasAdd/ReadVariableOp ^conv3d_51/Conv3D/ReadVariableOp!^conv3d_52/BiasAdd/ReadVariableOp ^conv3d_52/Conv3D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2D
 conv3d_48/BiasAdd/ReadVariableOp conv3d_48/BiasAdd/ReadVariableOp2B
conv3d_48/Conv3D/ReadVariableOpconv3d_48/Conv3D/ReadVariableOp2D
 conv3d_49/BiasAdd/ReadVariableOp conv3d_49/BiasAdd/ReadVariableOp2B
conv3d_49/Conv3D/ReadVariableOpconv3d_49/Conv3D/ReadVariableOp2D
 conv3d_50/BiasAdd/ReadVariableOp conv3d_50/BiasAdd/ReadVariableOp2B
conv3d_50/Conv3D/ReadVariableOpconv3d_50/Conv3D/ReadVariableOp2D
 conv3d_51/BiasAdd/ReadVariableOp conv3d_51/BiasAdd/ReadVariableOp2B
conv3d_51/Conv3D/ReadVariableOpconv3d_51/Conv3D/ReadVariableOp2D
 conv3d_52/BiasAdd/ReadVariableOp conv3d_52/BiasAdd/ReadVariableOp2B
conv3d_52/Conv3D/ReadVariableOpconv3d_52/Conv3D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv3d_48_layer_call_and_return_conditional_losses_4689025

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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4688069

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
*__inference_model_20_layer_call_fn_4688553	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_46884972
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
Ɯ
�	
E__inference_model_20_layer_call_and_return_conditional_losses_4688880

inputsF
(conv3d_48_conv3d_readvariableop_resource:7
)conv3d_48_biasadd_readvariableop_resource:F
(conv3d_49_conv3d_readvariableop_resource:7
)conv3d_49_biasadd_readvariableop_resource:9
'dense_20_matmul_readvariableop_resource:@@6
(dense_20_biasadd_readvariableop_resource:@F
(conv3d_50_conv3d_readvariableop_resource:7
)conv3d_50_biasadd_readvariableop_resource:F
(conv3d_51_conv3d_readvariableop_resource:7
)conv3d_51_biasadd_readvariableop_resource:F
(conv3d_52_conv3d_readvariableop_resource:7
)conv3d_52_biasadd_readvariableop_resource:
identity�� conv3d_48/BiasAdd/ReadVariableOp�conv3d_48/Conv3D/ReadVariableOp� conv3d_49/BiasAdd/ReadVariableOp�conv3d_49/Conv3D/ReadVariableOp� conv3d_50/BiasAdd/ReadVariableOp�conv3d_50/Conv3D/ReadVariableOp� conv3d_51/BiasAdd/ReadVariableOp�conv3d_51/Conv3D/ReadVariableOp� conv3d_52/BiasAdd/ReadVariableOp�conv3d_52/Conv3D/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp�
/tf.__operators__.getitem_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_38/strided_slice/stack�
1tf.__operators__.getitem_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_38/strided_slice/stack_1�
1tf.__operators__.getitem_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_38/strided_slice/stack_2�
)tf.__operators__.getitem_38/strided_sliceStridedSliceinputs8tf.__operators__.getitem_38/strided_slice/stack:output:0:tf.__operators__.getitem_38/strided_slice/stack_1:output:0:tf.__operators__.getitem_38/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_38/strided_slice{
range_conversion_20/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_20/sub/y�
range_conversion_20/subSub2tf.__operators__.getitem_38/strided_slice:output:0"range_conversion_20/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/sub�
range_conversion_20/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_20/truediv/y�
range_conversion_20/truedivRealDivrange_conversion_20/sub:z:0&range_conversion_20/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/truediv{
range_conversion_20/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_20/mul/y�
range_conversion_20/mulMulrange_conversion_20/truediv:z:0"range_conversion_20/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/mul{
range_conversion_20/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_20/add/y�
range_conversion_20/addAddV2range_conversion_20/mul:z:0"range_conversion_20/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_20/add�
/tf.__operators__.getitem_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_39/strided_slice/stack�
1tf.__operators__.getitem_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_39/strided_slice/stack_1�
1tf.__operators__.getitem_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_39/strided_slice/stack_2�
)tf.__operators__.getitem_39/strided_sliceStridedSliceinputs8tf.__operators__.getitem_39/strided_slice/stack:output:0:tf.__operators__.getitem_39/strided_slice/stack_1:output:0:tf.__operators__.getitem_39/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_39/strided_slicev
tf.concat_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_33/concat/axis�
tf.concat_33/concatConcatV2range_conversion_20/add:z:02tf.__operators__.getitem_39/strided_slice:output:0!tf.concat_33/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_33/concat�
conv3d_48/Conv3D/ReadVariableOpReadVariableOp(conv3d_48_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_48/Conv3D/ReadVariableOp�
conv3d_48/Conv3DConv3Dtf.concat_33/concat:output:0'conv3d_48/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_48/Conv3D�
 conv3d_48/BiasAdd/ReadVariableOpReadVariableOp)conv3d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_48/BiasAdd/ReadVariableOp�
conv3d_48/BiasAddBiasAddconv3d_48/Conv3D:output:0(conv3d_48/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_48/BiasAdd�
conv3d_48/SoftplusSoftplusconv3d_48/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_48/Softplus�
#average_pooling3d_14/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_14/transpose/perm�
average_pooling3d_14/transpose	Transpose conv3d_48/Softplus:activations:0,average_pooling3d_14/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_14/transpose�
average_pooling3d_14/AvgPool3D	AvgPool3D"average_pooling3d_14/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_14/AvgPool3D�
%average_pooling3d_14/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_14/transpose_1/perm�
 average_pooling3d_14/transpose_1	Transpose'average_pooling3d_14/AvgPool3D:output:0.average_pooling3d_14/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_14/transpose_1�
conv3d_49/Conv3D/ReadVariableOpReadVariableOp(conv3d_49_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_49/Conv3D/ReadVariableOp�
conv3d_49/Conv3DConv3D$average_pooling3d_14/transpose_1:y:0'conv3d_49/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_49/Conv3D�
 conv3d_49/BiasAdd/ReadVariableOpReadVariableOp)conv3d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_49/BiasAdd/ReadVariableOp�
conv3d_49/BiasAddBiasAddconv3d_49/Conv3D:output:0(conv3d_49/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_49/BiasAdd�
conv3d_49/SoftplusSoftplusconv3d_49/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_49/Softplus�
#average_pooling3d_15/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_15/transpose/perm�
average_pooling3d_15/transpose	Transpose conv3d_49/Softplus:activations:0,average_pooling3d_15/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_15/transpose�
average_pooling3d_15/AvgPool3D	AvgPool3D"average_pooling3d_15/transpose:y:0*
T0*3
_output_shapes!
:���������*
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
:���������2"
 average_pooling3d_15/transpose_1x
reshape_40/ShapeShape$average_pooling3d_15/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_40/Shape�
reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_40/strided_slice/stack�
 reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_1�
 reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_2�
reshape_40/strided_sliceStridedSlicereshape_40/Shape:output:0'reshape_40/strided_slice/stack:output:0)reshape_40/strided_slice/stack_1:output:0)reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_40/strided_slicez
reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_40/Reshape/shape/1�
reshape_40/Reshape/shapePack!reshape_40/strided_slice:output:0#reshape_40/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_40/Reshape/shape�
reshape_40/ReshapeReshape$average_pooling3d_15/transpose_1:y:0!reshape_40/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_40/Reshape�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_20/MatMul/ReadVariableOp�
dense_20/MatMulMatMulreshape_40/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_20/MatMul�
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_20/BiasAdd/ReadVariableOp�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_20/BiasAdd
dense_20/SoftplusSoftplusdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_20/Softpluss
reshape_41/ShapeShapedense_20/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_41/Shape�
reshape_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_41/strided_slice/stack�
 reshape_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_41/strided_slice/stack_1�
 reshape_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_41/strided_slice/stack_2�
reshape_41/strided_sliceStridedSlicereshape_41/Shape:output:0'reshape_41/strided_slice/stack:output:0)reshape_41/strided_slice/stack_1:output:0)reshape_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_41/strided_slicez
reshape_41/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/1z
reshape_41/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/2z
reshape_41/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/3z
reshape_41/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_41/Reshape/shape/4�
reshape_41/Reshape/shapePack!reshape_41/strided_slice:output:0#reshape_41/Reshape/shape/1:output:0#reshape_41/Reshape/shape/2:output:0#reshape_41/Reshape/shape/3:output:0#reshape_41/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_41/Reshape/shape�
reshape_41/ReshapeReshapedense_20/Softplus:activations:0!reshape_41/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_41/Reshape�
tf.reshape_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_28/Reshape/shape�
tf.reshape_28/ReshapeReshapereshape_41/Reshape:output:0$tf.reshape_28/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_28/Reshape�
tf.tile_14/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_14/Tile/multiples�
tf.tile_14/TileTiletf.reshape_28/Reshape:output:0"tf.tile_14/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_14/Tile�
tf.reshape_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_29/Reshape/shape�
tf.reshape_29/ReshapeReshapetf.tile_14/Tile:output:0$tf.reshape_29/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_29/Reshapev
tf.concat_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_34/concat/axis�
tf.concat_34/concatConcatV2tf.reshape_29/Reshape:output:0 conv3d_49/Softplus:activations:0!tf.concat_34/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_34/concat�
conv3d_50/Conv3D/ReadVariableOpReadVariableOp(conv3d_50_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_50/Conv3D/ReadVariableOp�
conv3d_50/Conv3DConv3Dtf.concat_34/concat:output:0'conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_50/Conv3D�
 conv3d_50/BiasAdd/ReadVariableOpReadVariableOp)conv3d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_50/BiasAdd/ReadVariableOp�
conv3d_50/BiasAddBiasAddconv3d_50/Conv3D:output:0(conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_50/BiasAdd�
conv3d_50/SoftplusSoftplusconv3d_50/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_50/Softplus�
tf.reshape_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_30/Reshape/shape�
tf.reshape_30/ReshapeReshape conv3d_50/Softplus:activations:0$tf.reshape_30/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_30/Reshape�
tf.tile_15/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_15/Tile/multiples�
tf.tile_15/TileTiletf.reshape_30/Reshape:output:0"tf.tile_15/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_15/Tile�
tf.reshape_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_31/Reshape/shape�
tf.reshape_31/ReshapeReshapetf.tile_15/Tile:output:0$tf.reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_31/Reshapev
tf.concat_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_35/concat/axis�
tf.concat_35/concatConcatV2tf.reshape_31/Reshape:output:0 conv3d_48/Softplus:activations:0!tf.concat_35/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_35/concat�
conv3d_51/Conv3D/ReadVariableOpReadVariableOp(conv3d_51_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_51/Conv3D/ReadVariableOp�
conv3d_51/Conv3DConv3Dtf.concat_35/concat:output:0'conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_51/Conv3D�
 conv3d_51/BiasAdd/ReadVariableOpReadVariableOp)conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_51/BiasAdd/ReadVariableOp�
conv3d_51/BiasAddBiasAddconv3d_51/Conv3D:output:0(conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_51/BiasAdd�
conv3d_51/SoftplusSoftplusconv3d_51/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_51/Softplus�
conv3d_52/Conv3D/ReadVariableOpReadVariableOp(conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_52/Conv3D/ReadVariableOp�
conv3d_52/Conv3DConv3D conv3d_51/Softplus:activations:0'conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_52/Conv3D�
 conv3d_52/BiasAdd/ReadVariableOpReadVariableOp)conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_52/BiasAdd/ReadVariableOp�
conv3d_52/BiasAddBiasAddconv3d_52/Conv3D:output:0(conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_52/BiasAdd�
IdentityIdentityconv3d_52/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp!^conv3d_48/BiasAdd/ReadVariableOp ^conv3d_48/Conv3D/ReadVariableOp!^conv3d_49/BiasAdd/ReadVariableOp ^conv3d_49/Conv3D/ReadVariableOp!^conv3d_50/BiasAdd/ReadVariableOp ^conv3d_50/Conv3D/ReadVariableOp!^conv3d_51/BiasAdd/ReadVariableOp ^conv3d_51/Conv3D/ReadVariableOp!^conv3d_52/BiasAdd/ReadVariableOp ^conv3d_52/Conv3D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2D
 conv3d_48/BiasAdd/ReadVariableOp conv3d_48/BiasAdd/ReadVariableOp2B
conv3d_48/Conv3D/ReadVariableOpconv3d_48/Conv3D/ReadVariableOp2D
 conv3d_49/BiasAdd/ReadVariableOp conv3d_49/BiasAdd/ReadVariableOp2B
conv3d_49/Conv3D/ReadVariableOpconv3d_49/Conv3D/ReadVariableOp2D
 conv3d_50/BiasAdd/ReadVariableOp conv3d_50/BiasAdd/ReadVariableOp2B
conv3d_50/Conv3D/ReadVariableOpconv3d_50/Conv3D/ReadVariableOp2D
 conv3d_51/BiasAdd/ReadVariableOp conv3d_51/BiasAdd/ReadVariableOp2B
conv3d_51/Conv3D/ReadVariableOpconv3d_51/Conv3D/ReadVariableOp2D
 conv3d_52/BiasAdd/ReadVariableOp conv3d_52/BiasAdd/ReadVariableOp2B
conv3d_52/Conv3D/ReadVariableOpconv3d_52/Conv3D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�7
�
#__inference__traced_restore_4689322
file_prefix?
!assignvariableop_conv3d_48_kernel:/
!assignvariableop_1_conv3d_48_bias:A
#assignvariableop_2_conv3d_49_kernel:/
!assignvariableop_3_conv3d_49_bias:4
"assignvariableop_4_dense_20_kernel:@@.
 assignvariableop_5_dense_20_bias:@A
#assignvariableop_6_conv3d_50_kernel:/
!assignvariableop_7_conv3d_50_bias:A
#assignvariableop_8_conv3d_51_kernel:/
!assignvariableop_9_conv3d_51_bias:B
$assignvariableop_10_conv3d_52_kernel:0
"assignvariableop_11_conv3d_52_bias:
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
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_49_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_49_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_20_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_20_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv3d_50_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv3d_50_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_51_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_51_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_52_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_52_biasIdentity_11:output:0"/device:CPU:0*
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
�
c
G__inference_reshape_41_layer_call_and_return_conditional_losses_4688217

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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4688142

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
+__inference_conv3d_50_layer_call_fn_4689167

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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_46882382
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
�
%__inference_signature_wrapper_4688714	
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
"__inference__wrapped_model_46880262
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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_4689217

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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_4688279

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
*__inference_model_20_layer_call_fn_4688313	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_46882862
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
�
�
*__inference_dense_20_layer_call_fn_4689127

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
E__inference_dense_20_layer_call_and_return_conditional_losses_46881962
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
m
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4689053

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
�]
�
E__inference_model_20_layer_call_and_return_conditional_losses_4688497

inputs/
conv3d_48_4688446:
conv3d_48_4688448:/
conv3d_49_4688452:
conv3d_49_4688454:"
dense_20_4688459:@@
dense_20_4688461:@/
conv3d_50_4688473:
conv3d_50_4688475:/
conv3d_51_4688486:
conv3d_51_4688488:/
conv3d_52_4688491:
conv3d_52_4688493:
identity��!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
/tf.__operators__.getitem_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_38/strided_slice/stack�
1tf.__operators__.getitem_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_38/strided_slice/stack_1�
1tf.__operators__.getitem_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_38/strided_slice/stack_2�
)tf.__operators__.getitem_38/strided_sliceStridedSliceinputs8tf.__operators__.getitem_38/strided_slice/stack:output:0:tf.__operators__.getitem_38/strided_slice/stack_1:output:0:tf.__operators__.getitem_38/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_38/strided_slice�
#range_conversion_20/PartitionedCallPartitionedCall2tf.__operators__.getitem_38/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_46881092%
#range_conversion_20/PartitionedCall�
/tf.__operators__.getitem_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_39/strided_slice/stack�
1tf.__operators__.getitem_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_39/strided_slice/stack_1�
1tf.__operators__.getitem_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_39/strided_slice/stack_2�
)tf.__operators__.getitem_39/strided_sliceStridedSliceinputs8tf.__operators__.getitem_39/strided_slice/stack:output:0:tf.__operators__.getitem_39/strided_slice/stack_1:output:0:tf.__operators__.getitem_39/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_39/strided_slicev
tf.concat_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_33/concat/axis�
tf.concat_33/concatConcatV2,range_conversion_20/PartitionedCall:output:02tf.__operators__.getitem_39/strided_slice:output:0!tf.concat_33/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_33/concat�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCalltf.concat_33/concat:output:0conv3d_48_4688446conv3d_48_4688448*
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
F__inference_conv3d_48_layer_call_and_return_conditional_losses_46881282#
!conv3d_48/StatefulPartitionedCall�
$average_pooling3d_14/PartitionedCallPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_46881422&
$average_pooling3d_14/PartitionedCall�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_14/PartitionedCall:output:0conv3d_49_4688452conv3d_49_4688454*
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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_46881552#
!conv3d_49/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_49/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_46881692&
$average_pooling3d_15/PartitionedCall�
reshape_40/PartitionedCallPartitionedCall-average_pooling3d_15/PartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_46881832
reshape_40/PartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0dense_20_4688459dense_20_4688461*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_46881962"
 dense_20/StatefulPartitionedCall�
reshape_41/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
G__inference_reshape_41_layer_call_and_return_conditional_losses_46882172
reshape_41/PartitionedCall�
tf.reshape_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_28/Reshape/shape�
tf.reshape_28/ReshapeReshape#reshape_41/PartitionedCall:output:0$tf.reshape_28/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_28/Reshape�
tf.tile_14/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_14/Tile/multiples�
tf.tile_14/TileTiletf.reshape_28/Reshape:output:0"tf.tile_14/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_14/Tile�
tf.reshape_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_29/Reshape/shape�
tf.reshape_29/ReshapeReshapetf.tile_14/Tile:output:0$tf.reshape_29/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_29/Reshapev
tf.concat_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_34/concat/axis�
tf.concat_34/concatConcatV2tf.reshape_29/Reshape:output:0*conv3d_49/StatefulPartitionedCall:output:0!tf.concat_34/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_34/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_34/concat:output:0conv3d_50_4688473conv3d_50_4688475*
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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_46882382#
!conv3d_50/StatefulPartitionedCall�
tf.reshape_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_30/Reshape/shape�
tf.reshape_30/ReshapeReshape*conv3d_50/StatefulPartitionedCall:output:0$tf.reshape_30/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_30/Reshape�
tf.tile_15/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_15/Tile/multiples�
tf.tile_15/TileTiletf.reshape_30/Reshape:output:0"tf.tile_15/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_15/Tile�
tf.reshape_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_31/Reshape/shape�
tf.reshape_31/ReshapeReshapetf.tile_15/Tile:output:0$tf.reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_31/Reshapev
tf.concat_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_35/concat/axis�
tf.concat_35/concatConcatV2tf.reshape_31/Reshape:output:0*conv3d_48/StatefulPartitionedCall:output:0!tf.concat_35/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_35/concat�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCalltf.concat_35/concat:output:0conv3d_51_4688486conv3d_51_4688488*
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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_46882632#
!conv3d_51/StatefulPartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_4688491conv3d_52_4688493*
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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_46882792#
!conv3d_52/StatefulPartitionedCall�
IdentityIdentity*conv3d_52/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
H
,__inference_reshape_41_layer_call_fn_4689143

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
G__inference_reshape_41_layer_call_and_return_conditional_losses_46882172
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
�
U
5__inference_range_conversion_20_layer_call_fn_4688993

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_46881092
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

m
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4689092

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
6__inference_average_pooling3d_15_layer_call_fn_4689078

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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_46880692
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
�&
�
 __inference__traced_save_4689276
file_prefix/
+savev2_conv3d_48_kernel_read_readvariableop-
)savev2_conv3d_48_bias_read_readvariableop/
+savev2_conv3d_49_kernel_read_readvariableop-
)savev2_conv3d_49_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop/
+savev2_conv3d_50_kernel_read_readvariableop-
)savev2_conv3d_50_bias_read_readvariableop/
+savev2_conv3d_51_kernel_read_readvariableop-
)savev2_conv3d_51_bias_read_readvariableop/
+savev2_conv3d_52_kernel_read_readvariableop-
)savev2_conv3d_52_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_48_kernel_read_readvariableop)savev2_conv3d_48_bias_read_readvariableop+savev2_conv3d_49_kernel_read_readvariableop)savev2_conv3d_49_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop+savev2_conv3d_50_kernel_read_readvariableop)savev2_conv3d_50_bias_read_readvariableop+savev2_conv3d_51_kernel_read_readvariableop)savev2_conv3d_51_bias_read_readvariableop+savev2_conv3d_52_kernel_read_readvariableop)savev2_conv3d_52_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
+__inference_conv3d_49_layer_call_fn_4689062

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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_46881552
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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_4689073

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
R
6__inference_average_pooling3d_15_layer_call_fn_4689083

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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_46881692
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
c
G__inference_reshape_40_layer_call_and_return_conditional_losses_4688183

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
+__inference_conv3d_51_layer_call_fn_4689187

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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_46882632
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
��
�
"__inference__wrapped_model_4688026	
inputO
1model_20_conv3d_48_conv3d_readvariableop_resource:@
2model_20_conv3d_48_biasadd_readvariableop_resource:O
1model_20_conv3d_49_conv3d_readvariableop_resource:@
2model_20_conv3d_49_biasadd_readvariableop_resource:B
0model_20_dense_20_matmul_readvariableop_resource:@@?
1model_20_dense_20_biasadd_readvariableop_resource:@O
1model_20_conv3d_50_conv3d_readvariableop_resource:@
2model_20_conv3d_50_biasadd_readvariableop_resource:O
1model_20_conv3d_51_conv3d_readvariableop_resource:@
2model_20_conv3d_51_biasadd_readvariableop_resource:O
1model_20_conv3d_52_conv3d_readvariableop_resource:@
2model_20_conv3d_52_biasadd_readvariableop_resource:
identity��)model_20/conv3d_48/BiasAdd/ReadVariableOp�(model_20/conv3d_48/Conv3D/ReadVariableOp�)model_20/conv3d_49/BiasAdd/ReadVariableOp�(model_20/conv3d_49/Conv3D/ReadVariableOp�)model_20/conv3d_50/BiasAdd/ReadVariableOp�(model_20/conv3d_50/Conv3D/ReadVariableOp�)model_20/conv3d_51/BiasAdd/ReadVariableOp�(model_20/conv3d_51/Conv3D/ReadVariableOp�)model_20/conv3d_52/BiasAdd/ReadVariableOp�(model_20/conv3d_52/Conv3D/ReadVariableOp�(model_20/dense_20/BiasAdd/ReadVariableOp�'model_20/dense_20/MatMul/ReadVariableOp�
8model_20/tf.__operators__.getitem_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_20/tf.__operators__.getitem_38/strided_slice/stack�
:model_20/tf.__operators__.getitem_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_20/tf.__operators__.getitem_38/strided_slice/stack_1�
:model_20/tf.__operators__.getitem_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_20/tf.__operators__.getitem_38/strided_slice/stack_2�
2model_20/tf.__operators__.getitem_38/strided_sliceStridedSliceinputAmodel_20/tf.__operators__.getitem_38/strided_slice/stack:output:0Cmodel_20/tf.__operators__.getitem_38/strided_slice/stack_1:output:0Cmodel_20/tf.__operators__.getitem_38/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask24
2model_20/tf.__operators__.getitem_38/strided_slice�
"model_20/range_conversion_20/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_20/range_conversion_20/sub/y�
 model_20/range_conversion_20/subSub;model_20/tf.__operators__.getitem_38/strided_slice:output:0+model_20/range_conversion_20/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_20/range_conversion_20/sub�
&model_20/range_conversion_20/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_20/range_conversion_20/truediv/y�
$model_20/range_conversion_20/truedivRealDiv$model_20/range_conversion_20/sub:z:0/model_20/range_conversion_20/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_20/range_conversion_20/truediv�
"model_20/range_conversion_20/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_20/range_conversion_20/mul/y�
 model_20/range_conversion_20/mulMul(model_20/range_conversion_20/truediv:z:0+model_20/range_conversion_20/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_20/range_conversion_20/mul�
"model_20/range_conversion_20/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_20/range_conversion_20/add/y�
 model_20/range_conversion_20/addAddV2$model_20/range_conversion_20/mul:z:0+model_20/range_conversion_20/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_20/range_conversion_20/add�
8model_20/tf.__operators__.getitem_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_20/tf.__operators__.getitem_39/strided_slice/stack�
:model_20/tf.__operators__.getitem_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_20/tf.__operators__.getitem_39/strided_slice/stack_1�
:model_20/tf.__operators__.getitem_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_20/tf.__operators__.getitem_39/strided_slice/stack_2�
2model_20/tf.__operators__.getitem_39/strided_sliceStridedSliceinputAmodel_20/tf.__operators__.getitem_39/strided_slice/stack:output:0Cmodel_20/tf.__operators__.getitem_39/strided_slice/stack_1:output:0Cmodel_20/tf.__operators__.getitem_39/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask24
2model_20/tf.__operators__.getitem_39/strided_slice�
!model_20/tf.concat_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_20/tf.concat_33/concat/axis�
model_20/tf.concat_33/concatConcatV2$model_20/range_conversion_20/add:z:0;model_20/tf.__operators__.getitem_39/strided_slice:output:0*model_20/tf.concat_33/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_20/tf.concat_33/concat�
(model_20/conv3d_48/Conv3D/ReadVariableOpReadVariableOp1model_20_conv3d_48_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_20/conv3d_48/Conv3D/ReadVariableOp�
model_20/conv3d_48/Conv3DConv3D%model_20/tf.concat_33/concat:output:00model_20/conv3d_48/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_20/conv3d_48/Conv3D�
)model_20/conv3d_48/BiasAdd/ReadVariableOpReadVariableOp2model_20_conv3d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_20/conv3d_48/BiasAdd/ReadVariableOp�
model_20/conv3d_48/BiasAddBiasAdd"model_20/conv3d_48/Conv3D:output:01model_20/conv3d_48/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_20/conv3d_48/BiasAdd�
model_20/conv3d_48/SoftplusSoftplus#model_20/conv3d_48/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_20/conv3d_48/Softplus�
,model_20/average_pooling3d_14/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_20/average_pooling3d_14/transpose/perm�
'model_20/average_pooling3d_14/transpose	Transpose)model_20/conv3d_48/Softplus:activations:05model_20/average_pooling3d_14/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_20/average_pooling3d_14/transpose�
'model_20/average_pooling3d_14/AvgPool3D	AvgPool3D+model_20/average_pooling3d_14/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_20/average_pooling3d_14/AvgPool3D�
.model_20/average_pooling3d_14/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_20/average_pooling3d_14/transpose_1/perm�
)model_20/average_pooling3d_14/transpose_1	Transpose0model_20/average_pooling3d_14/AvgPool3D:output:07model_20/average_pooling3d_14/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_20/average_pooling3d_14/transpose_1�
(model_20/conv3d_49/Conv3D/ReadVariableOpReadVariableOp1model_20_conv3d_49_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_20/conv3d_49/Conv3D/ReadVariableOp�
model_20/conv3d_49/Conv3DConv3D-model_20/average_pooling3d_14/transpose_1:y:00model_20/conv3d_49/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_20/conv3d_49/Conv3D�
)model_20/conv3d_49/BiasAdd/ReadVariableOpReadVariableOp2model_20_conv3d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_20/conv3d_49/BiasAdd/ReadVariableOp�
model_20/conv3d_49/BiasAddBiasAdd"model_20/conv3d_49/Conv3D:output:01model_20/conv3d_49/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_20/conv3d_49/BiasAdd�
model_20/conv3d_49/SoftplusSoftplus#model_20/conv3d_49/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_20/conv3d_49/Softplus�
,model_20/average_pooling3d_15/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_20/average_pooling3d_15/transpose/perm�
'model_20/average_pooling3d_15/transpose	Transpose)model_20/conv3d_49/Softplus:activations:05model_20/average_pooling3d_15/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_20/average_pooling3d_15/transpose�
'model_20/average_pooling3d_15/AvgPool3D	AvgPool3D+model_20/average_pooling3d_15/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_20/average_pooling3d_15/AvgPool3D�
.model_20/average_pooling3d_15/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_20/average_pooling3d_15/transpose_1/perm�
)model_20/average_pooling3d_15/transpose_1	Transpose0model_20/average_pooling3d_15/AvgPool3D:output:07model_20/average_pooling3d_15/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_20/average_pooling3d_15/transpose_1�
model_20/reshape_40/ShapeShape-model_20/average_pooling3d_15/transpose_1:y:0*
T0*
_output_shapes
:2
model_20/reshape_40/Shape�
'model_20/reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_20/reshape_40/strided_slice/stack�
)model_20/reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_20/reshape_40/strided_slice/stack_1�
)model_20/reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_20/reshape_40/strided_slice/stack_2�
!model_20/reshape_40/strided_sliceStridedSlice"model_20/reshape_40/Shape:output:00model_20/reshape_40/strided_slice/stack:output:02model_20/reshape_40/strided_slice/stack_1:output:02model_20/reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_20/reshape_40/strided_slice�
#model_20/reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_20/reshape_40/Reshape/shape/1�
!model_20/reshape_40/Reshape/shapePack*model_20/reshape_40/strided_slice:output:0,model_20/reshape_40/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_20/reshape_40/Reshape/shape�
model_20/reshape_40/ReshapeReshape-model_20/average_pooling3d_15/transpose_1:y:0*model_20/reshape_40/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_20/reshape_40/Reshape�
'model_20/dense_20/MatMul/ReadVariableOpReadVariableOp0model_20_dense_20_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_20/dense_20/MatMul/ReadVariableOp�
model_20/dense_20/MatMulMatMul$model_20/reshape_40/Reshape:output:0/model_20/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_20/dense_20/MatMul�
(model_20/dense_20/BiasAdd/ReadVariableOpReadVariableOp1model_20_dense_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_20/dense_20/BiasAdd/ReadVariableOp�
model_20/dense_20/BiasAddBiasAdd"model_20/dense_20/MatMul:product:00model_20/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_20/dense_20/BiasAdd�
model_20/dense_20/SoftplusSoftplus"model_20/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_20/dense_20/Softplus�
model_20/reshape_41/ShapeShape(model_20/dense_20/Softplus:activations:0*
T0*
_output_shapes
:2
model_20/reshape_41/Shape�
'model_20/reshape_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_20/reshape_41/strided_slice/stack�
)model_20/reshape_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_20/reshape_41/strided_slice/stack_1�
)model_20/reshape_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_20/reshape_41/strided_slice/stack_2�
!model_20/reshape_41/strided_sliceStridedSlice"model_20/reshape_41/Shape:output:00model_20/reshape_41/strided_slice/stack:output:02model_20/reshape_41/strided_slice/stack_1:output:02model_20/reshape_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_20/reshape_41/strided_slice�
#model_20/reshape_41/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_20/reshape_41/Reshape/shape/1�
#model_20/reshape_41/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_20/reshape_41/Reshape/shape/2�
#model_20/reshape_41/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_20/reshape_41/Reshape/shape/3�
#model_20/reshape_41/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_20/reshape_41/Reshape/shape/4�
!model_20/reshape_41/Reshape/shapePack*model_20/reshape_41/strided_slice:output:0,model_20/reshape_41/Reshape/shape/1:output:0,model_20/reshape_41/Reshape/shape/2:output:0,model_20/reshape_41/Reshape/shape/3:output:0,model_20/reshape_41/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_20/reshape_41/Reshape/shape�
model_20/reshape_41/ReshapeReshape(model_20/dense_20/Softplus:activations:0*model_20/reshape_41/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_20/reshape_41/Reshape�
$model_20/tf.reshape_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_20/tf.reshape_28/Reshape/shape�
model_20/tf.reshape_28/ReshapeReshape$model_20/reshape_41/Reshape:output:0-model_20/tf.reshape_28/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_20/tf.reshape_28/Reshape�
"model_20/tf.tile_14/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_20/tf.tile_14/Tile/multiples�
model_20/tf.tile_14/TileTile'model_20/tf.reshape_28/Reshape:output:0+model_20/tf.tile_14/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_20/tf.tile_14/Tile�
$model_20/tf.reshape_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2&
$model_20/tf.reshape_29/Reshape/shape�
model_20/tf.reshape_29/ReshapeReshape!model_20/tf.tile_14/Tile:output:0-model_20/tf.reshape_29/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2 
model_20/tf.reshape_29/Reshape�
!model_20/tf.concat_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_20/tf.concat_34/concat/axis�
model_20/tf.concat_34/concatConcatV2'model_20/tf.reshape_29/Reshape:output:0)model_20/conv3d_49/Softplus:activations:0*model_20/tf.concat_34/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_20/tf.concat_34/concat�
(model_20/conv3d_50/Conv3D/ReadVariableOpReadVariableOp1model_20_conv3d_50_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_20/conv3d_50/Conv3D/ReadVariableOp�
model_20/conv3d_50/Conv3DConv3D%model_20/tf.concat_34/concat:output:00model_20/conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_20/conv3d_50/Conv3D�
)model_20/conv3d_50/BiasAdd/ReadVariableOpReadVariableOp2model_20_conv3d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_20/conv3d_50/BiasAdd/ReadVariableOp�
model_20/conv3d_50/BiasAddBiasAdd"model_20/conv3d_50/Conv3D:output:01model_20/conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_20/conv3d_50/BiasAdd�
model_20/conv3d_50/SoftplusSoftplus#model_20/conv3d_50/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_20/conv3d_50/Softplus�
$model_20/tf.reshape_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_20/tf.reshape_30/Reshape/shape�
model_20/tf.reshape_30/ReshapeReshape)model_20/conv3d_50/Softplus:activations:0-model_20/tf.reshape_30/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_20/tf.reshape_30/Reshape�
"model_20/tf.tile_15/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_20/tf.tile_15/Tile/multiples�
model_20/tf.tile_15/TileTile'model_20/tf.reshape_30/Reshape:output:0+model_20/tf.tile_15/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_20/tf.tile_15/Tile�
$model_20/tf.reshape_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2&
$model_20/tf.reshape_31/Reshape/shape�
model_20/tf.reshape_31/ReshapeReshape!model_20/tf.tile_15/Tile:output:0-model_20/tf.reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2 
model_20/tf.reshape_31/Reshape�
!model_20/tf.concat_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_20/tf.concat_35/concat/axis�
model_20/tf.concat_35/concatConcatV2'model_20/tf.reshape_31/Reshape:output:0)model_20/conv3d_48/Softplus:activations:0*model_20/tf.concat_35/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_20/tf.concat_35/concat�
(model_20/conv3d_51/Conv3D/ReadVariableOpReadVariableOp1model_20_conv3d_51_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_20/conv3d_51/Conv3D/ReadVariableOp�
model_20/conv3d_51/Conv3DConv3D%model_20/tf.concat_35/concat:output:00model_20/conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_20/conv3d_51/Conv3D�
)model_20/conv3d_51/BiasAdd/ReadVariableOpReadVariableOp2model_20_conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_20/conv3d_51/BiasAdd/ReadVariableOp�
model_20/conv3d_51/BiasAddBiasAdd"model_20/conv3d_51/Conv3D:output:01model_20/conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_20/conv3d_51/BiasAdd�
model_20/conv3d_51/SoftplusSoftplus#model_20/conv3d_51/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_20/conv3d_51/Softplus�
(model_20/conv3d_52/Conv3D/ReadVariableOpReadVariableOp1model_20_conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_20/conv3d_52/Conv3D/ReadVariableOp�
model_20/conv3d_52/Conv3DConv3D)model_20/conv3d_51/Softplus:activations:00model_20/conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_20/conv3d_52/Conv3D�
)model_20/conv3d_52/BiasAdd/ReadVariableOpReadVariableOp2model_20_conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_20/conv3d_52/BiasAdd/ReadVariableOp�
model_20/conv3d_52/BiasAddBiasAdd"model_20/conv3d_52/Conv3D:output:01model_20/conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_20/conv3d_52/BiasAdd�
IdentityIdentity#model_20/conv3d_52/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp*^model_20/conv3d_48/BiasAdd/ReadVariableOp)^model_20/conv3d_48/Conv3D/ReadVariableOp*^model_20/conv3d_49/BiasAdd/ReadVariableOp)^model_20/conv3d_49/Conv3D/ReadVariableOp*^model_20/conv3d_50/BiasAdd/ReadVariableOp)^model_20/conv3d_50/Conv3D/ReadVariableOp*^model_20/conv3d_51/BiasAdd/ReadVariableOp)^model_20/conv3d_51/Conv3D/ReadVariableOp*^model_20/conv3d_52/BiasAdd/ReadVariableOp)^model_20/conv3d_52/Conv3D/ReadVariableOp)^model_20/dense_20/BiasAdd/ReadVariableOp(^model_20/dense_20/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2V
)model_20/conv3d_48/BiasAdd/ReadVariableOp)model_20/conv3d_48/BiasAdd/ReadVariableOp2T
(model_20/conv3d_48/Conv3D/ReadVariableOp(model_20/conv3d_48/Conv3D/ReadVariableOp2V
)model_20/conv3d_49/BiasAdd/ReadVariableOp)model_20/conv3d_49/BiasAdd/ReadVariableOp2T
(model_20/conv3d_49/Conv3D/ReadVariableOp(model_20/conv3d_49/Conv3D/ReadVariableOp2V
)model_20/conv3d_50/BiasAdd/ReadVariableOp)model_20/conv3d_50/BiasAdd/ReadVariableOp2T
(model_20/conv3d_50/Conv3D/ReadVariableOp(model_20/conv3d_50/Conv3D/ReadVariableOp2V
)model_20/conv3d_51/BiasAdd/ReadVariableOp)model_20/conv3d_51/BiasAdd/ReadVariableOp2T
(model_20/conv3d_51/Conv3D/ReadVariableOp(model_20/conv3d_51/Conv3D/ReadVariableOp2V
)model_20/conv3d_52/BiasAdd/ReadVariableOp)model_20/conv3d_52/BiasAdd/ReadVariableOp2T
(model_20/conv3d_52/Conv3D/ReadVariableOp(model_20/conv3d_52/Conv3D/ReadVariableOp2T
(model_20/dense_20/BiasAdd/ReadVariableOp(model_20/dense_20/BiasAdd/ReadVariableOp2R
'model_20/dense_20/MatMul/ReadVariableOp'model_20/dense_20/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
F__inference_conv3d_48_layer_call_and_return_conditional_losses_4688128

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
�]
�
E__inference_model_20_layer_call_and_return_conditional_losses_4688683	
input/
conv3d_48_4688632:
conv3d_48_4688634:/
conv3d_49_4688638:
conv3d_49_4688640:"
dense_20_4688645:@@
dense_20_4688647:@/
conv3d_50_4688659:
conv3d_50_4688661:/
conv3d_51_4688672:
conv3d_51_4688674:/
conv3d_52_4688677:
conv3d_52_4688679:
identity��!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
/tf.__operators__.getitem_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_38/strided_slice/stack�
1tf.__operators__.getitem_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_38/strided_slice/stack_1�
1tf.__operators__.getitem_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_38/strided_slice/stack_2�
)tf.__operators__.getitem_38/strided_sliceStridedSliceinput8tf.__operators__.getitem_38/strided_slice/stack:output:0:tf.__operators__.getitem_38/strided_slice/stack_1:output:0:tf.__operators__.getitem_38/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_38/strided_slice�
#range_conversion_20/PartitionedCallPartitionedCall2tf.__operators__.getitem_38/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_46881092%
#range_conversion_20/PartitionedCall�
/tf.__operators__.getitem_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_39/strided_slice/stack�
1tf.__operators__.getitem_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_39/strided_slice/stack_1�
1tf.__operators__.getitem_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_39/strided_slice/stack_2�
)tf.__operators__.getitem_39/strided_sliceStridedSliceinput8tf.__operators__.getitem_39/strided_slice/stack:output:0:tf.__operators__.getitem_39/strided_slice/stack_1:output:0:tf.__operators__.getitem_39/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_39/strided_slicev
tf.concat_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_33/concat/axis�
tf.concat_33/concatConcatV2,range_conversion_20/PartitionedCall:output:02tf.__operators__.getitem_39/strided_slice:output:0!tf.concat_33/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_33/concat�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCalltf.concat_33/concat:output:0conv3d_48_4688632conv3d_48_4688634*
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
F__inference_conv3d_48_layer_call_and_return_conditional_losses_46881282#
!conv3d_48/StatefulPartitionedCall�
$average_pooling3d_14/PartitionedCallPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_46881422&
$average_pooling3d_14/PartitionedCall�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_14/PartitionedCall:output:0conv3d_49_4688638conv3d_49_4688640*
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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_46881552#
!conv3d_49/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_49/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_46881692&
$average_pooling3d_15/PartitionedCall�
reshape_40/PartitionedCallPartitionedCall-average_pooling3d_15/PartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_46881832
reshape_40/PartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0dense_20_4688645dense_20_4688647*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_46881962"
 dense_20/StatefulPartitionedCall�
reshape_41/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
G__inference_reshape_41_layer_call_and_return_conditional_losses_46882172
reshape_41/PartitionedCall�
tf.reshape_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_28/Reshape/shape�
tf.reshape_28/ReshapeReshape#reshape_41/PartitionedCall:output:0$tf.reshape_28/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_28/Reshape�
tf.tile_14/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_14/Tile/multiples�
tf.tile_14/TileTiletf.reshape_28/Reshape:output:0"tf.tile_14/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_14/Tile�
tf.reshape_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_29/Reshape/shape�
tf.reshape_29/ReshapeReshapetf.tile_14/Tile:output:0$tf.reshape_29/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_29/Reshapev
tf.concat_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_34/concat/axis�
tf.concat_34/concatConcatV2tf.reshape_29/Reshape:output:0*conv3d_49/StatefulPartitionedCall:output:0!tf.concat_34/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_34/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_34/concat:output:0conv3d_50_4688659conv3d_50_4688661*
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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_46882382#
!conv3d_50/StatefulPartitionedCall�
tf.reshape_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_30/Reshape/shape�
tf.reshape_30/ReshapeReshape*conv3d_50/StatefulPartitionedCall:output:0$tf.reshape_30/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_30/Reshape�
tf.tile_15/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_15/Tile/multiples�
tf.tile_15/TileTiletf.reshape_30/Reshape:output:0"tf.tile_15/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_15/Tile�
tf.reshape_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_31/Reshape/shape�
tf.reshape_31/ReshapeReshapetf.tile_15/Tile:output:0$tf.reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_31/Reshapev
tf.concat_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_35/concat/axis�
tf.concat_35/concatConcatV2tf.reshape_31/Reshape:output:0*conv3d_48/StatefulPartitionedCall:output:0!tf.concat_35/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_35/concat�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCalltf.concat_35/concat:output:0conv3d_51_4688672conv3d_51_4688674*
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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_46882632#
!conv3d_51/StatefulPartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_4688677conv3d_52_4688679*
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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_46882792#
!conv3d_52/StatefulPartitionedCall�
IdentityIdentity*conv3d_52/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
p
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_4689005

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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_4688263

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
*__inference_model_20_layer_call_fn_4688772

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_46884972
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
�
*__inference_model_20_layer_call_fn_4688743

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_46882862
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
�]
�
E__inference_model_20_layer_call_and_return_conditional_losses_4688618	
input/
conv3d_48_4688567:
conv3d_48_4688569:/
conv3d_49_4688573:
conv3d_49_4688575:"
dense_20_4688580:@@
dense_20_4688582:@/
conv3d_50_4688594:
conv3d_50_4688596:/
conv3d_51_4688607:
conv3d_51_4688609:/
conv3d_52_4688612:
conv3d_52_4688614:
identity��!conv3d_48/StatefulPartitionedCall�!conv3d_49/StatefulPartitionedCall�!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall� dense_20/StatefulPartitionedCall�
/tf.__operators__.getitem_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_38/strided_slice/stack�
1tf.__operators__.getitem_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_38/strided_slice/stack_1�
1tf.__operators__.getitem_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_38/strided_slice/stack_2�
)tf.__operators__.getitem_38/strided_sliceStridedSliceinput8tf.__operators__.getitem_38/strided_slice/stack:output:0:tf.__operators__.getitem_38/strided_slice/stack_1:output:0:tf.__operators__.getitem_38/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_38/strided_slice�
#range_conversion_20/PartitionedCallPartitionedCall2tf.__operators__.getitem_38/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_46881092%
#range_conversion_20/PartitionedCall�
/tf.__operators__.getitem_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_39/strided_slice/stack�
1tf.__operators__.getitem_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_39/strided_slice/stack_1�
1tf.__operators__.getitem_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_39/strided_slice/stack_2�
)tf.__operators__.getitem_39/strided_sliceStridedSliceinput8tf.__operators__.getitem_39/strided_slice/stack:output:0:tf.__operators__.getitem_39/strided_slice/stack_1:output:0:tf.__operators__.getitem_39/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2+
)tf.__operators__.getitem_39/strided_slicev
tf.concat_33/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_33/concat/axis�
tf.concat_33/concatConcatV2,range_conversion_20/PartitionedCall:output:02tf.__operators__.getitem_39/strided_slice:output:0!tf.concat_33/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_33/concat�
!conv3d_48/StatefulPartitionedCallStatefulPartitionedCalltf.concat_33/concat:output:0conv3d_48_4688567conv3d_48_4688569*
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
F__inference_conv3d_48_layer_call_and_return_conditional_losses_46881282#
!conv3d_48/StatefulPartitionedCall�
$average_pooling3d_14/PartitionedCallPartitionedCall*conv3d_48/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_46881422&
$average_pooling3d_14/PartitionedCall�
!conv3d_49/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_14/PartitionedCall:output:0conv3d_49_4688573conv3d_49_4688575*
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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_46881552#
!conv3d_49/StatefulPartitionedCall�
$average_pooling3d_15/PartitionedCallPartitionedCall*conv3d_49/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_46881692&
$average_pooling3d_15/PartitionedCall�
reshape_40/PartitionedCallPartitionedCall-average_pooling3d_15/PartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_46881832
reshape_40/PartitionedCall�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0dense_20_4688580dense_20_4688582*
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
E__inference_dense_20_layer_call_and_return_conditional_losses_46881962"
 dense_20/StatefulPartitionedCall�
reshape_41/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
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
G__inference_reshape_41_layer_call_and_return_conditional_losses_46882172
reshape_41/PartitionedCall�
tf.reshape_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_28/Reshape/shape�
tf.reshape_28/ReshapeReshape#reshape_41/PartitionedCall:output:0$tf.reshape_28/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_28/Reshape�
tf.tile_14/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_14/Tile/multiples�
tf.tile_14/TileTiletf.reshape_28/Reshape:output:0"tf.tile_14/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_14/Tile�
tf.reshape_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_29/Reshape/shape�
tf.reshape_29/ReshapeReshapetf.tile_14/Tile:output:0$tf.reshape_29/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_29/Reshapev
tf.concat_34/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_34/concat/axis�
tf.concat_34/concatConcatV2tf.reshape_29/Reshape:output:0*conv3d_49/StatefulPartitionedCall:output:0!tf.concat_34/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_34/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_34/concat:output:0conv3d_50_4688594conv3d_50_4688596*
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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_46882382#
!conv3d_50/StatefulPartitionedCall�
tf.reshape_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_30/Reshape/shape�
tf.reshape_30/ReshapeReshape*conv3d_50/StatefulPartitionedCall:output:0$tf.reshape_30/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_30/Reshape�
tf.tile_15/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_15/Tile/multiples�
tf.tile_15/TileTiletf.reshape_30/Reshape:output:0"tf.tile_15/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_15/Tile�
tf.reshape_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_31/Reshape/shape�
tf.reshape_31/ReshapeReshapetf.tile_15/Tile:output:0$tf.reshape_31/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_31/Reshapev
tf.concat_35/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_35/concat/axis�
tf.concat_35/concatConcatV2tf.reshape_31/Reshape:output:0*conv3d_48/StatefulPartitionedCall:output:0!tf.concat_35/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_35/concat�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCalltf.concat_35/concat:output:0conv3d_51_4688607conv3d_51_4688609*
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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_46882632#
!conv3d_51/StatefulPartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0conv3d_52_4688612conv3d_52_4688614*
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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_46882792#
!conv3d_52/StatefulPartitionedCall�
IdentityIdentity*conv3d_52/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_48/StatefulPartitionedCall"^conv3d_49/StatefulPartitionedCall"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_48/StatefulPartitionedCall!conv3d_48/StatefulPartitionedCall2F
!conv3d_49/StatefulPartitionedCall!conv3d_49/StatefulPartitionedCall2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
m
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4688169

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
+__inference_conv3d_52_layer_call_fn_4689207

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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_46882792
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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_4688155

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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4689044

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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_4689198

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
	conv3d_52<
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
	variables
trainable_variables
regularization_losses
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
	variables
trainable_variables
 regularization_losses
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
'trainable_variables
(regularization_losses
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
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
Mtrainable_variables
Nregularization_losses
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
Wtrainable_variables
Xregularization_losses
Y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
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
 "
trackable_list_wrapper
�
	variables
`layer_regularization_losses

alayers
trainable_variables
bnon_trainable_variables
cmetrics
dlayer_metrics
regularization_losses
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
	variables
elayer_regularization_losses

flayers
trainable_variables
gnon_trainable_variables
hmetrics
ilayer_metrics
 regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
0:. 2conv3d_48/kernel
: 2conv3d_48/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
&	variables
jlayer_regularization_losses

klayers
'trainable_variables
lnon_trainable_variables
mmetrics
nlayer_metrics
(regularization_losses
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
*	variables
olayer_regularization_losses

players
+trainable_variables
qnon_trainable_variables
rmetrics
slayer_metrics
,regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:. 2conv3d_49/kernel
: 2conv3d_49/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0	variables
tlayer_regularization_losses

ulayers
1trainable_variables
vnon_trainable_variables
wmetrics
xlayer_metrics
2regularization_losses
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
4	variables
ylayer_regularization_losses

zlayers
5trainable_variables
{non_trainable_variables
|metrics
}layer_metrics
6regularization_losses
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
8	variables
~layer_regularization_losses

layers
9trainable_variables
�non_trainable_variables
�metrics
�layer_metrics
:regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_20/kernel
:@ 2dense_20/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
>	variables
 �layer_regularization_losses
�layers
?trainable_variables
�non_trainable_variables
�metrics
�layer_metrics
@regularization_losses
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
B	variables
 �layer_regularization_losses
�layers
Ctrainable_variables
�non_trainable_variables
�metrics
�layer_metrics
Dregularization_losses
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
0:. 2conv3d_50/kernel
: 2conv3d_50/bias
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
L	variables
 �layer_regularization_losses
�layers
Mtrainable_variables
�non_trainable_variables
�metrics
�layer_metrics
Nregularization_losses
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
0:. 2conv3d_51/kernel
: 2conv3d_51/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
V	variables
 �layer_regularization_losses
�layers
Wtrainable_variables
�non_trainable_variables
�metrics
�layer_metrics
Xregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:. 2conv3d_52/kernel
: 2conv3d_52/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
\	variables
 �layer_regularization_losses
�layers
]trainable_variables
�non_trainable_variables
�metrics
�layer_metrics
^regularization_losses
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�2�
*__inference_model_20_layer_call_fn_4688313
*__inference_model_20_layer_call_fn_4688743
*__inference_model_20_layer_call_fn_4688772
*__inference_model_20_layer_call_fn_4688553�
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
E__inference_model_20_layer_call_and_return_conditional_losses_4688880
E__inference_model_20_layer_call_and_return_conditional_losses_4688988
E__inference_model_20_layer_call_and_return_conditional_losses_4688618
E__inference_model_20_layer_call_and_return_conditional_losses_4688683�
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
"__inference__wrapped_model_4688026input"�
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
5__inference_range_conversion_20_layer_call_fn_4688993�
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
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_4689005�
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
+__inference_conv3d_48_layer_call_fn_4689014�
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
F__inference_conv3d_48_layer_call_and_return_conditional_losses_4689025�
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
6__inference_average_pooling3d_14_layer_call_fn_4689030
6__inference_average_pooling3d_14_layer_call_fn_4689035�
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
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4689044
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4689053�
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
+__inference_conv3d_49_layer_call_fn_4689062�
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
F__inference_conv3d_49_layer_call_and_return_conditional_losses_4689073�
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
6__inference_average_pooling3d_15_layer_call_fn_4689078
6__inference_average_pooling3d_15_layer_call_fn_4689083�
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
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4689092
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4689101�
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
,__inference_reshape_40_layer_call_fn_4689106�
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_4689118�
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
*__inference_dense_20_layer_call_fn_4689127�
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
E__inference_dense_20_layer_call_and_return_conditional_losses_4689138�
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
,__inference_reshape_41_layer_call_fn_4689143�
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
G__inference_reshape_41_layer_call_and_return_conditional_losses_4689158�
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
+__inference_conv3d_50_layer_call_fn_4689167�
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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_4689178�
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
+__inference_conv3d_51_layer_call_fn_4689187�
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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_4689198�
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
+__inference_conv3d_52_layer_call_fn_4689207�
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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_4689217�
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
%__inference_signature_wrapper_4688714input"�
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
"__inference__wrapped_model_4688026�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "A�>
<
	conv3d_52/�,
	conv3d_52����������
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4689044�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_14_layer_call_and_return_conditional_losses_4689053p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_14_layer_call_fn_4689030�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_14_layer_call_fn_4689035c;�8
1�.
,�)
inputs���������
� "$�!����������
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4689092�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_15_layer_call_and_return_conditional_losses_4689101p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_15_layer_call_fn_4689078�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_15_layer_call_fn_4689083c;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_48_layer_call_and_return_conditional_losses_4689025t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_48_layer_call_fn_4689014g$%;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_49_layer_call_and_return_conditional_losses_4689073t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_49_layer_call_fn_4689062g./;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_50_layer_call_and_return_conditional_losses_4689178tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_50_layer_call_fn_4689167gJK;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_51_layer_call_and_return_conditional_losses_4689198tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_51_layer_call_fn_4689187gTU;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_52_layer_call_and_return_conditional_losses_4689217tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_52_layer_call_fn_4689207gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
E__inference_dense_20_layer_call_and_return_conditional_losses_4689138\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
*__inference_dense_20_layer_call_fn_4689127O<=/�,
%�"
 �
inputs���������@
� "����������@�
E__inference_model_20_layer_call_and_return_conditional_losses_4688618�$%./<=JKTUZ[B�?
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
E__inference_model_20_layer_call_and_return_conditional_losses_4688683�$%./<=JKTUZ[B�?
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
E__inference_model_20_layer_call_and_return_conditional_losses_4688880�$%./<=JKTUZ[C�@
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
E__inference_model_20_layer_call_and_return_conditional_losses_4688988�$%./<=JKTUZ[C�@
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
*__inference_model_20_layer_call_fn_4688313x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
*__inference_model_20_layer_call_fn_4688553x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
*__inference_model_20_layer_call_fn_4688743y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
*__inference_model_20_layer_call_fn_4688772y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
P__inference_range_conversion_20_layer_call_and_return_conditional_losses_4689005t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
5__inference_range_conversion_20_layer_call_fn_4688993g?�<
5�2
0�-

parameters���������
� "$�!����������
G__inference_reshape_40_layer_call_and_return_conditional_losses_4689118d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_40_layer_call_fn_4689106W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_41_layer_call_and_return_conditional_losses_4689158d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_41_layer_call_fn_4689143W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_4688714�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"A�>
<
	conv3d_52/�,
	conv3d_52���������