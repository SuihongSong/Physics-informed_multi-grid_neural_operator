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
conv3d_342/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_342/kernel
�
%conv3d_342/kernel/Read/ReadVariableOpReadVariableOpconv3d_342/kernel**
_output_shapes
:*
dtype0
v
conv3d_342/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_342/bias
o
#conv3d_342/bias/Read/ReadVariableOpReadVariableOpconv3d_342/bias*
_output_shapes
:*
dtype0
�
conv3d_343/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_343/kernel
�
%conv3d_343/kernel/Read/ReadVariableOpReadVariableOpconv3d_343/kernel**
_output_shapes
:*
dtype0
v
conv3d_343/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_343/bias
o
#conv3d_343/bias/Read/ReadVariableOpReadVariableOpconv3d_343/bias*
_output_shapes
:*
dtype0
z
dense_72/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_72/kernel
s
#dense_72/kernel/Read/ReadVariableOpReadVariableOpdense_72/kernel*
_output_shapes

:@@*
dtype0
r
dense_72/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_72/bias
k
!dense_72/bias/Read/ReadVariableOpReadVariableOpdense_72/bias*
_output_shapes
:@*
dtype0
�
conv3d_344/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_344/kernel
�
%conv3d_344/kernel/Read/ReadVariableOpReadVariableOpconv3d_344/kernel**
_output_shapes
:*
dtype0
v
conv3d_344/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_344/bias
o
#conv3d_344/bias/Read/ReadVariableOpReadVariableOpconv3d_344/bias*
_output_shapes
:*
dtype0
�
conv3d_345/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_345/kernel
�
%conv3d_345/kernel/Read/ReadVariableOpReadVariableOpconv3d_345/kernel**
_output_shapes
:*
dtype0
v
conv3d_345/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_345/bias
o
#conv3d_345/bias/Read/ReadVariableOpReadVariableOpconv3d_345/bias*
_output_shapes
:*
dtype0
�
conv3d_346/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_346/kernel
�
%conv3d_346/kernel/Read/ReadVariableOpReadVariableOpconv3d_346/kernel**
_output_shapes
:*
dtype0
v
conv3d_346/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_346/bias
o
#conv3d_346/bias/Read/ReadVariableOpReadVariableOpconv3d_346/bias*
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
VARIABLE_VALUEconv3d_342/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_342/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_343/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_343/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_72/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_72/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_344/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_344/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_345/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_345/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_346/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_346/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_342/kernelconv3d_342/biasconv3d_343/kernelconv3d_343/biasdense_72/kerneldense_72/biasconv3d_344/kernelconv3d_344/biasconv3d_345/kernelconv3d_345/biasconv3d_346/kernelconv3d_346/bias*
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
&__inference_signature_wrapper_16873058
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_342/kernel/Read/ReadVariableOp#conv3d_342/bias/Read/ReadVariableOp%conv3d_343/kernel/Read/ReadVariableOp#conv3d_343/bias/Read/ReadVariableOp#dense_72/kernel/Read/ReadVariableOp!dense_72/bias/Read/ReadVariableOp%conv3d_344/kernel/Read/ReadVariableOp#conv3d_344/bias/Read/ReadVariableOp%conv3d_345/kernel/Read/ReadVariableOp#conv3d_345/bias/Read/ReadVariableOp%conv3d_346/kernel/Read/ReadVariableOp#conv3d_346/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_16873620
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_342/kernelconv3d_342/biasconv3d_343/kernelconv3d_343/biasdense_72/kerneldense_72/biasconv3d_344/kernelconv3d_344/biasconv3d_345/kernelconv3d_345/biasconv3d_346/kernelconv3d_346/bias*
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
$__inference__traced_restore_16873666�
�

o
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16872413

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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16873388

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
8__inference_average_pooling3d_136_layer_call_fn_16873427

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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_168725132
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
H__inference_conv3d_344_layer_call_and_return_conditional_losses_16873522

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
+__inference_model_72_layer_call_fn_16873087

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
F__inference_model_72_layer_call_and_return_conditional_losses_168726302
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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16873436

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
-__inference_conv3d_345_layer_call_fn_16873531

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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_168726072
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
F__inference_model_72_layer_call_and_return_conditional_losses_16872630

inputs1
conv3d_342_16872473:!
conv3d_342_16872475:1
conv3d_343_16872500:!
conv3d_343_16872502:#
dense_72_16872541:@@
dense_72_16872543:@1
conv3d_344_16872583:!
conv3d_344_16872585:1
conv3d_345_16872608:!
conv3d_345_16872610:1
conv3d_346_16872624:!
conv3d_346_16872626:
identity��"conv3d_342/StatefulPartitionedCall�"conv3d_343/StatefulPartitionedCall�"conv3d_344/StatefulPartitionedCall�"conv3d_345/StatefulPartitionedCall�"conv3d_346/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_290/strided_slice/stack�
2tf.__operators__.getitem_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_290/strided_slice/stack_1�
2tf.__operators__.getitem_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_290/strided_slice/stack_2�
*tf.__operators__.getitem_290/strided_sliceStridedSliceinputs9tf.__operators__.getitem_290/strided_slice/stack:output:0;tf.__operators__.getitem_290/strided_slice/stack_1:output:0;tf.__operators__.getitem_290/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_290/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_290/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_168724532%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_291/strided_slice/stack�
2tf.__operators__.getitem_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_291/strided_slice/stack_1�
2tf.__operators__.getitem_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_291/strided_slice/stack_2�
*tf.__operators__.getitem_291/strided_sliceStridedSliceinputs9tf.__operators__.getitem_291/strided_slice/stack:output:0;tf.__operators__.getitem_291/strided_slice/stack_1:output:0;tf.__operators__.getitem_291/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_291/strided_slicex
tf.concat_364/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_364/concat/axis�
tf.concat_364/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_291/strided_slice:output:0"tf.concat_364/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_364/concat�
"conv3d_342/StatefulPartitionedCallStatefulPartitionedCalltf.concat_364/concat:output:0conv3d_342_16872473conv3d_342_16872475*
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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_168724722$
"conv3d_342/StatefulPartitionedCall�
%average_pooling3d_135/PartitionedCallPartitionedCall+conv3d_342/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_168724862'
%average_pooling3d_135/PartitionedCall�
"conv3d_343/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_135/PartitionedCall:output:0conv3d_343_16872500conv3d_343_16872502*
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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_168724992$
"conv3d_343/StatefulPartitionedCall�
%average_pooling3d_136/PartitionedCallPartitionedCall+conv3d_343/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_168725132'
%average_pooling3d_136/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall.average_pooling3d_136/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_168725272
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_16872541dense_72_16872543*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_168725402"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_168725612
reshape_145/PartitionedCall�
tf.reshape_438/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_438/Reshape/shape�
tf.reshape_438/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_438/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_438/Reshape�
tf.tile_219/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_219/Tile/multiples�
tf.tile_219/TileTiletf.reshape_438/Reshape:output:0#tf.tile_219/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_219/Tile�
tf.reshape_439/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_439/Reshape/shape�
tf.reshape_439/ReshapeReshapetf.tile_219/Tile:output:0%tf.reshape_439/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_439/Reshapex
tf.concat_365/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_365/concat/axis�
tf.concat_365/concatConcatV2tf.reshape_439/Reshape:output:0+conv3d_343/StatefulPartitionedCall:output:0"tf.concat_365/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_365/concat�
"conv3d_344/StatefulPartitionedCallStatefulPartitionedCalltf.concat_365/concat:output:0conv3d_344_16872583conv3d_344_16872585*
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
H__inference_conv3d_344_layer_call_and_return_conditional_losses_168725822$
"conv3d_344/StatefulPartitionedCall�
tf.reshape_440/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_440/Reshape/shape�
tf.reshape_440/ReshapeReshape+conv3d_344/StatefulPartitionedCall:output:0%tf.reshape_440/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_440/Reshape�
tf.tile_220/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_220/Tile/multiples�
tf.tile_220/TileTiletf.reshape_440/Reshape:output:0#tf.tile_220/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_220/Tile�
tf.reshape_441/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_441/Reshape/shape�
tf.reshape_441/ReshapeReshapetf.tile_220/Tile:output:0%tf.reshape_441/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_441/Reshapex
tf.concat_366/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_366/concat/axis�
tf.concat_366/concatConcatV2tf.reshape_441/Reshape:output:0+conv3d_342/StatefulPartitionedCall:output:0"tf.concat_366/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_366/concat�
"conv3d_345/StatefulPartitionedCallStatefulPartitionedCalltf.concat_366/concat:output:0conv3d_345_16872608conv3d_345_16872610*
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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_168726072$
"conv3d_345/StatefulPartitionedCall�
"conv3d_346/StatefulPartitionedCallStatefulPartitionedCall+conv3d_345/StatefulPartitionedCall:output:0conv3d_346_16872624conv3d_346_16872626*
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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_168726232$
"conv3d_346/StatefulPartitionedCall�
IdentityIdentity+conv3d_346/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_342/StatefulPartitionedCall#^conv3d_343/StatefulPartitionedCall#^conv3d_344/StatefulPartitionedCall#^conv3d_345/StatefulPartitionedCall#^conv3d_346/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_342/StatefulPartitionedCall"conv3d_342/StatefulPartitionedCall2H
"conv3d_343/StatefulPartitionedCall"conv3d_343/StatefulPartitionedCall2H
"conv3d_344/StatefulPartitionedCall"conv3d_344/StatefulPartitionedCall2H
"conv3d_345/StatefulPartitionedCall"conv3d_345/StatefulPartitionedCall2H
"conv3d_346/StatefulPartitionedCall"conv3d_346/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
o
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16872513

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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_16872607

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
e
I__inference_reshape_145_layer_call_and_return_conditional_losses_16872561

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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_16872623

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
�
V
6__inference_range_conversion_72_layer_call_fn_16873337

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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_168724532
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
�
�
-__inference_conv3d_346_layer_call_fn_16873551

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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_168726232
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
-__inference_conv3d_343_layer_call_fn_16873406

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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_168724992
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
-__inference_conv3d_344_layer_call_fn_16873511

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
H__inference_conv3d_344_layer_call_and_return_conditional_losses_168725822
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
e
I__inference_reshape_144_layer_call_and_return_conditional_losses_16873462

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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_16873561

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
-__inference_conv3d_342_layer_call_fn_16873358

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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_168724722
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
q
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_16872453

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
q
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_16873349

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
F__inference_dense_72_layer_call_and_return_conditional_losses_16873482

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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_16873369

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
e
I__inference_reshape_144_layer_call_and_return_conditional_losses_16872527

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
+__inference_model_72_layer_call_fn_16872897	
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
F__inference_model_72_layer_call_and_return_conditional_losses_168728412
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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_16872472

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
�
e
I__inference_reshape_145_layer_call_and_return_conditional_losses_16873502

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
J
.__inference_reshape_145_layer_call_fn_16873487

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
I__inference_reshape_145_layer_call_and_return_conditional_losses_168725612
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
�
�

F__inference_model_72_layer_call_and_return_conditional_losses_16873224

inputsG
)conv3d_342_conv3d_readvariableop_resource:8
*conv3d_342_biasadd_readvariableop_resource:G
)conv3d_343_conv3d_readvariableop_resource:8
*conv3d_343_biasadd_readvariableop_resource:9
'dense_72_matmul_readvariableop_resource:@@6
(dense_72_biasadd_readvariableop_resource:@G
)conv3d_344_conv3d_readvariableop_resource:8
*conv3d_344_biasadd_readvariableop_resource:G
)conv3d_345_conv3d_readvariableop_resource:8
*conv3d_345_biasadd_readvariableop_resource:G
)conv3d_346_conv3d_readvariableop_resource:8
*conv3d_346_biasadd_readvariableop_resource:
identity��!conv3d_342/BiasAdd/ReadVariableOp� conv3d_342/Conv3D/ReadVariableOp�!conv3d_343/BiasAdd/ReadVariableOp� conv3d_343/Conv3D/ReadVariableOp�!conv3d_344/BiasAdd/ReadVariableOp� conv3d_344/Conv3D/ReadVariableOp�!conv3d_345/BiasAdd/ReadVariableOp� conv3d_345/Conv3D/ReadVariableOp�!conv3d_346/BiasAdd/ReadVariableOp� conv3d_346/Conv3D/ReadVariableOp�dense_72/BiasAdd/ReadVariableOp�dense_72/MatMul/ReadVariableOp�
0tf.__operators__.getitem_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_290/strided_slice/stack�
2tf.__operators__.getitem_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_290/strided_slice/stack_1�
2tf.__operators__.getitem_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_290/strided_slice/stack_2�
*tf.__operators__.getitem_290/strided_sliceStridedSliceinputs9tf.__operators__.getitem_290/strided_slice/stack:output:0;tf.__operators__.getitem_290/strided_slice/stack_1:output:0;tf.__operators__.getitem_290/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_290/strided_slice{
range_conversion_72/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_72/sub/y�
range_conversion_72/subSub3tf.__operators__.getitem_290/strided_slice:output:0"range_conversion_72/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/sub�
range_conversion_72/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_72/truediv/y�
range_conversion_72/truedivRealDivrange_conversion_72/sub:z:0&range_conversion_72/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/truediv{
range_conversion_72/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_72/mul/y�
range_conversion_72/mulMulrange_conversion_72/truediv:z:0"range_conversion_72/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/mul{
range_conversion_72/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_72/add/y�
range_conversion_72/addAddV2range_conversion_72/mul:z:0"range_conversion_72/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/add�
0tf.__operators__.getitem_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_291/strided_slice/stack�
2tf.__operators__.getitem_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_291/strided_slice/stack_1�
2tf.__operators__.getitem_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_291/strided_slice/stack_2�
*tf.__operators__.getitem_291/strided_sliceStridedSliceinputs9tf.__operators__.getitem_291/strided_slice/stack:output:0;tf.__operators__.getitem_291/strided_slice/stack_1:output:0;tf.__operators__.getitem_291/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_291/strided_slicex
tf.concat_364/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_364/concat/axis�
tf.concat_364/concatConcatV2range_conversion_72/add:z:03tf.__operators__.getitem_291/strided_slice:output:0"tf.concat_364/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_364/concat�
 conv3d_342/Conv3D/ReadVariableOpReadVariableOp)conv3d_342_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_342/Conv3D/ReadVariableOp�
conv3d_342/Conv3DConv3Dtf.concat_364/concat:output:0(conv3d_342/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_342/Conv3D�
!conv3d_342/BiasAdd/ReadVariableOpReadVariableOp*conv3d_342_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_342/BiasAdd/ReadVariableOp�
conv3d_342/BiasAddBiasAddconv3d_342/Conv3D:output:0)conv3d_342/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_342/BiasAdd�
conv3d_342/SoftplusSoftplusconv3d_342/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_342/Softplus�
$average_pooling3d_135/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_135/transpose/perm�
average_pooling3d_135/transpose	Transpose!conv3d_342/Softplus:activations:0-average_pooling3d_135/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_135/transpose�
average_pooling3d_135/AvgPool3D	AvgPool3D#average_pooling3d_135/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_135/AvgPool3D�
&average_pooling3d_135/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_135/transpose_1/perm�
!average_pooling3d_135/transpose_1	Transpose(average_pooling3d_135/AvgPool3D:output:0/average_pooling3d_135/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_135/transpose_1�
 conv3d_343/Conv3D/ReadVariableOpReadVariableOp)conv3d_343_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_343/Conv3D/ReadVariableOp�
conv3d_343/Conv3DConv3D%average_pooling3d_135/transpose_1:y:0(conv3d_343/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_343/Conv3D�
!conv3d_343/BiasAdd/ReadVariableOpReadVariableOp*conv3d_343_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_343/BiasAdd/ReadVariableOp�
conv3d_343/BiasAddBiasAddconv3d_343/Conv3D:output:0)conv3d_343/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_343/BiasAdd�
conv3d_343/SoftplusSoftplusconv3d_343/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_343/Softplus�
$average_pooling3d_136/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_136/transpose/perm�
average_pooling3d_136/transpose	Transpose!conv3d_343/Softplus:activations:0-average_pooling3d_136/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_136/transpose�
average_pooling3d_136/AvgPool3D	AvgPool3D#average_pooling3d_136/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_136/AvgPool3D�
&average_pooling3d_136/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_136/transpose_1/perm�
!average_pooling3d_136/transpose_1	Transpose(average_pooling3d_136/AvgPool3D:output:0/average_pooling3d_136/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_136/transpose_1{
reshape_144/ShapeShape%average_pooling3d_136/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_144/Shape�
reshape_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_144/strided_slice/stack�
!reshape_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_1�
!reshape_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_2�
reshape_144/strided_sliceStridedSlicereshape_144/Shape:output:0(reshape_144/strided_slice/stack:output:0*reshape_144/strided_slice/stack_1:output:0*reshape_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_144/strided_slice|
reshape_144/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_144/Reshape/shape/1�
reshape_144/Reshape/shapePack"reshape_144/strided_slice:output:0$reshape_144/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_144/Reshape/shape�
reshape_144/ReshapeReshape%average_pooling3d_136/transpose_1:y:0"reshape_144/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_144/Reshape�
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_72/MatMul/ReadVariableOp�
dense_72/MatMulMatMulreshape_144/Reshape:output:0&dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/MatMul�
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_72/BiasAdd/ReadVariableOp�
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/BiasAdd
dense_72/SoftplusSoftplusdense_72/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_72/Softplusu
reshape_145/ShapeShapedense_72/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_145/Shape�
reshape_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_145/strided_slice/stack�
!reshape_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_1�
!reshape_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_2�
reshape_145/strided_sliceStridedSlicereshape_145/Shape:output:0(reshape_145/strided_slice/stack:output:0*reshape_145/strided_slice/stack_1:output:0*reshape_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_145/strided_slice|
reshape_145/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/1|
reshape_145/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/2|
reshape_145/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/3|
reshape_145/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/4�
reshape_145/Reshape/shapePack"reshape_145/strided_slice:output:0$reshape_145/Reshape/shape/1:output:0$reshape_145/Reshape/shape/2:output:0$reshape_145/Reshape/shape/3:output:0$reshape_145/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_145/Reshape/shape�
reshape_145/ReshapeReshapedense_72/Softplus:activations:0"reshape_145/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_145/Reshape�
tf.reshape_438/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_438/Reshape/shape�
tf.reshape_438/ReshapeReshapereshape_145/Reshape:output:0%tf.reshape_438/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_438/Reshape�
tf.tile_219/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_219/Tile/multiples�
tf.tile_219/TileTiletf.reshape_438/Reshape:output:0#tf.tile_219/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_219/Tile�
tf.reshape_439/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_439/Reshape/shape�
tf.reshape_439/ReshapeReshapetf.tile_219/Tile:output:0%tf.reshape_439/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_439/Reshapex
tf.concat_365/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_365/concat/axis�
tf.concat_365/concatConcatV2tf.reshape_439/Reshape:output:0!conv3d_343/Softplus:activations:0"tf.concat_365/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_365/concat�
 conv3d_344/Conv3D/ReadVariableOpReadVariableOp)conv3d_344_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_344/Conv3D/ReadVariableOp�
conv3d_344/Conv3DConv3Dtf.concat_365/concat:output:0(conv3d_344/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_344/Conv3D�
!conv3d_344/BiasAdd/ReadVariableOpReadVariableOp*conv3d_344_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_344/BiasAdd/ReadVariableOp�
conv3d_344/BiasAddBiasAddconv3d_344/Conv3D:output:0)conv3d_344/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_344/BiasAdd�
conv3d_344/SoftplusSoftplusconv3d_344/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_344/Softplus�
tf.reshape_440/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_440/Reshape/shape�
tf.reshape_440/ReshapeReshape!conv3d_344/Softplus:activations:0%tf.reshape_440/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_440/Reshape�
tf.tile_220/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_220/Tile/multiples�
tf.tile_220/TileTiletf.reshape_440/Reshape:output:0#tf.tile_220/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_220/Tile�
tf.reshape_441/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_441/Reshape/shape�
tf.reshape_441/ReshapeReshapetf.tile_220/Tile:output:0%tf.reshape_441/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_441/Reshapex
tf.concat_366/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_366/concat/axis�
tf.concat_366/concatConcatV2tf.reshape_441/Reshape:output:0!conv3d_342/Softplus:activations:0"tf.concat_366/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_366/concat�
 conv3d_345/Conv3D/ReadVariableOpReadVariableOp)conv3d_345_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_345/Conv3D/ReadVariableOp�
conv3d_345/Conv3DConv3Dtf.concat_366/concat:output:0(conv3d_345/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_345/Conv3D�
!conv3d_345/BiasAdd/ReadVariableOpReadVariableOp*conv3d_345_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_345/BiasAdd/ReadVariableOp�
conv3d_345/BiasAddBiasAddconv3d_345/Conv3D:output:0)conv3d_345/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_345/BiasAdd�
conv3d_345/SoftplusSoftplusconv3d_345/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_345/Softplus�
 conv3d_346/Conv3D/ReadVariableOpReadVariableOp)conv3d_346_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_346/Conv3D/ReadVariableOp�
conv3d_346/Conv3DConv3D!conv3d_345/Softplus:activations:0(conv3d_346/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_346/Conv3D�
!conv3d_346/BiasAdd/ReadVariableOpReadVariableOp*conv3d_346_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_346/BiasAdd/ReadVariableOp�
conv3d_346/BiasAddBiasAddconv3d_346/Conv3D:output:0)conv3d_346/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_346/BiasAdd�
IdentityIdentityconv3d_346/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_342/BiasAdd/ReadVariableOp!^conv3d_342/Conv3D/ReadVariableOp"^conv3d_343/BiasAdd/ReadVariableOp!^conv3d_343/Conv3D/ReadVariableOp"^conv3d_344/BiasAdd/ReadVariableOp!^conv3d_344/Conv3D/ReadVariableOp"^conv3d_345/BiasAdd/ReadVariableOp!^conv3d_345/Conv3D/ReadVariableOp"^conv3d_346/BiasAdd/ReadVariableOp!^conv3d_346/Conv3D/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_342/BiasAdd/ReadVariableOp!conv3d_342/BiasAdd/ReadVariableOp2D
 conv3d_342/Conv3D/ReadVariableOp conv3d_342/Conv3D/ReadVariableOp2F
!conv3d_343/BiasAdd/ReadVariableOp!conv3d_343/BiasAdd/ReadVariableOp2D
 conv3d_343/Conv3D/ReadVariableOp conv3d_343/Conv3D/ReadVariableOp2F
!conv3d_344/BiasAdd/ReadVariableOp!conv3d_344/BiasAdd/ReadVariableOp2D
 conv3d_344/Conv3D/ReadVariableOp conv3d_344/Conv3D/ReadVariableOp2F
!conv3d_345/BiasAdd/ReadVariableOp!conv3d_345/BiasAdd/ReadVariableOp2D
 conv3d_345/Conv3D/ReadVariableOp conv3d_345/Conv3D/ReadVariableOp2F
!conv3d_346/BiasAdd/ReadVariableOp!conv3d_346/BiasAdd/ReadVariableOp2D
 conv3d_346/Conv3D/ReadVariableOp conv3d_346/Conv3D/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�^
�
F__inference_model_72_layer_call_and_return_conditional_losses_16873027	
input1
conv3d_342_16872976:!
conv3d_342_16872978:1
conv3d_343_16872982:!
conv3d_343_16872984:#
dense_72_16872989:@@
dense_72_16872991:@1
conv3d_344_16873003:!
conv3d_344_16873005:1
conv3d_345_16873016:!
conv3d_345_16873018:1
conv3d_346_16873021:!
conv3d_346_16873023:
identity��"conv3d_342/StatefulPartitionedCall�"conv3d_343/StatefulPartitionedCall�"conv3d_344/StatefulPartitionedCall�"conv3d_345/StatefulPartitionedCall�"conv3d_346/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_290/strided_slice/stack�
2tf.__operators__.getitem_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_290/strided_slice/stack_1�
2tf.__operators__.getitem_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_290/strided_slice/stack_2�
*tf.__operators__.getitem_290/strided_sliceStridedSliceinput9tf.__operators__.getitem_290/strided_slice/stack:output:0;tf.__operators__.getitem_290/strided_slice/stack_1:output:0;tf.__operators__.getitem_290/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_290/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_290/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_168724532%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_291/strided_slice/stack�
2tf.__operators__.getitem_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_291/strided_slice/stack_1�
2tf.__operators__.getitem_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_291/strided_slice/stack_2�
*tf.__operators__.getitem_291/strided_sliceStridedSliceinput9tf.__operators__.getitem_291/strided_slice/stack:output:0;tf.__operators__.getitem_291/strided_slice/stack_1:output:0;tf.__operators__.getitem_291/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_291/strided_slicex
tf.concat_364/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_364/concat/axis�
tf.concat_364/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_291/strided_slice:output:0"tf.concat_364/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_364/concat�
"conv3d_342/StatefulPartitionedCallStatefulPartitionedCalltf.concat_364/concat:output:0conv3d_342_16872976conv3d_342_16872978*
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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_168724722$
"conv3d_342/StatefulPartitionedCall�
%average_pooling3d_135/PartitionedCallPartitionedCall+conv3d_342/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_168724862'
%average_pooling3d_135/PartitionedCall�
"conv3d_343/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_135/PartitionedCall:output:0conv3d_343_16872982conv3d_343_16872984*
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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_168724992$
"conv3d_343/StatefulPartitionedCall�
%average_pooling3d_136/PartitionedCallPartitionedCall+conv3d_343/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_168725132'
%average_pooling3d_136/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall.average_pooling3d_136/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_168725272
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_16872989dense_72_16872991*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_168725402"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_168725612
reshape_145/PartitionedCall�
tf.reshape_438/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_438/Reshape/shape�
tf.reshape_438/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_438/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_438/Reshape�
tf.tile_219/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_219/Tile/multiples�
tf.tile_219/TileTiletf.reshape_438/Reshape:output:0#tf.tile_219/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_219/Tile�
tf.reshape_439/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_439/Reshape/shape�
tf.reshape_439/ReshapeReshapetf.tile_219/Tile:output:0%tf.reshape_439/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_439/Reshapex
tf.concat_365/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_365/concat/axis�
tf.concat_365/concatConcatV2tf.reshape_439/Reshape:output:0+conv3d_343/StatefulPartitionedCall:output:0"tf.concat_365/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_365/concat�
"conv3d_344/StatefulPartitionedCallStatefulPartitionedCalltf.concat_365/concat:output:0conv3d_344_16873003conv3d_344_16873005*
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
H__inference_conv3d_344_layer_call_and_return_conditional_losses_168725822$
"conv3d_344/StatefulPartitionedCall�
tf.reshape_440/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_440/Reshape/shape�
tf.reshape_440/ReshapeReshape+conv3d_344/StatefulPartitionedCall:output:0%tf.reshape_440/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_440/Reshape�
tf.tile_220/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_220/Tile/multiples�
tf.tile_220/TileTiletf.reshape_440/Reshape:output:0#tf.tile_220/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_220/Tile�
tf.reshape_441/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_441/Reshape/shape�
tf.reshape_441/ReshapeReshapetf.tile_220/Tile:output:0%tf.reshape_441/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_441/Reshapex
tf.concat_366/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_366/concat/axis�
tf.concat_366/concatConcatV2tf.reshape_441/Reshape:output:0+conv3d_342/StatefulPartitionedCall:output:0"tf.concat_366/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_366/concat�
"conv3d_345/StatefulPartitionedCallStatefulPartitionedCalltf.concat_366/concat:output:0conv3d_345_16873016conv3d_345_16873018*
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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_168726072$
"conv3d_345/StatefulPartitionedCall�
"conv3d_346/StatefulPartitionedCallStatefulPartitionedCall+conv3d_345/StatefulPartitionedCall:output:0conv3d_346_16873021conv3d_346_16873023*
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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_168726232$
"conv3d_346/StatefulPartitionedCall�
IdentityIdentity+conv3d_346/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_342/StatefulPartitionedCall#^conv3d_343/StatefulPartitionedCall#^conv3d_344/StatefulPartitionedCall#^conv3d_345/StatefulPartitionedCall#^conv3d_346/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_342/StatefulPartitionedCall"conv3d_342/StatefulPartitionedCall2H
"conv3d_343/StatefulPartitionedCall"conv3d_343/StatefulPartitionedCall2H
"conv3d_344/StatefulPartitionedCall"conv3d_344/StatefulPartitionedCall2H
"conv3d_345/StatefulPartitionedCall"conv3d_345/StatefulPartitionedCall2H
"conv3d_346/StatefulPartitionedCall"conv3d_346/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
+__inference_model_72_layer_call_fn_16872657	
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
F__inference_model_72_layer_call_and_return_conditional_losses_168726302
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
F__inference_model_72_layer_call_and_return_conditional_losses_16872841

inputs1
conv3d_342_16872790:!
conv3d_342_16872792:1
conv3d_343_16872796:!
conv3d_343_16872798:#
dense_72_16872803:@@
dense_72_16872805:@1
conv3d_344_16872817:!
conv3d_344_16872819:1
conv3d_345_16872830:!
conv3d_345_16872832:1
conv3d_346_16872835:!
conv3d_346_16872837:
identity��"conv3d_342/StatefulPartitionedCall�"conv3d_343/StatefulPartitionedCall�"conv3d_344/StatefulPartitionedCall�"conv3d_345/StatefulPartitionedCall�"conv3d_346/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_290/strided_slice/stack�
2tf.__operators__.getitem_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_290/strided_slice/stack_1�
2tf.__operators__.getitem_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_290/strided_slice/stack_2�
*tf.__operators__.getitem_290/strided_sliceStridedSliceinputs9tf.__operators__.getitem_290/strided_slice/stack:output:0;tf.__operators__.getitem_290/strided_slice/stack_1:output:0;tf.__operators__.getitem_290/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_290/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_290/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_168724532%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_291/strided_slice/stack�
2tf.__operators__.getitem_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_291/strided_slice/stack_1�
2tf.__operators__.getitem_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_291/strided_slice/stack_2�
*tf.__operators__.getitem_291/strided_sliceStridedSliceinputs9tf.__operators__.getitem_291/strided_slice/stack:output:0;tf.__operators__.getitem_291/strided_slice/stack_1:output:0;tf.__operators__.getitem_291/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_291/strided_slicex
tf.concat_364/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_364/concat/axis�
tf.concat_364/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_291/strided_slice:output:0"tf.concat_364/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_364/concat�
"conv3d_342/StatefulPartitionedCallStatefulPartitionedCalltf.concat_364/concat:output:0conv3d_342_16872790conv3d_342_16872792*
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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_168724722$
"conv3d_342/StatefulPartitionedCall�
%average_pooling3d_135/PartitionedCallPartitionedCall+conv3d_342/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_168724862'
%average_pooling3d_135/PartitionedCall�
"conv3d_343/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_135/PartitionedCall:output:0conv3d_343_16872796conv3d_343_16872798*
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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_168724992$
"conv3d_343/StatefulPartitionedCall�
%average_pooling3d_136/PartitionedCallPartitionedCall+conv3d_343/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_168725132'
%average_pooling3d_136/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall.average_pooling3d_136/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_168725272
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_16872803dense_72_16872805*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_168725402"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_168725612
reshape_145/PartitionedCall�
tf.reshape_438/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_438/Reshape/shape�
tf.reshape_438/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_438/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_438/Reshape�
tf.tile_219/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_219/Tile/multiples�
tf.tile_219/TileTiletf.reshape_438/Reshape:output:0#tf.tile_219/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_219/Tile�
tf.reshape_439/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_439/Reshape/shape�
tf.reshape_439/ReshapeReshapetf.tile_219/Tile:output:0%tf.reshape_439/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_439/Reshapex
tf.concat_365/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_365/concat/axis�
tf.concat_365/concatConcatV2tf.reshape_439/Reshape:output:0+conv3d_343/StatefulPartitionedCall:output:0"tf.concat_365/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_365/concat�
"conv3d_344/StatefulPartitionedCallStatefulPartitionedCalltf.concat_365/concat:output:0conv3d_344_16872817conv3d_344_16872819*
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
H__inference_conv3d_344_layer_call_and_return_conditional_losses_168725822$
"conv3d_344/StatefulPartitionedCall�
tf.reshape_440/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_440/Reshape/shape�
tf.reshape_440/ReshapeReshape+conv3d_344/StatefulPartitionedCall:output:0%tf.reshape_440/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_440/Reshape�
tf.tile_220/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_220/Tile/multiples�
tf.tile_220/TileTiletf.reshape_440/Reshape:output:0#tf.tile_220/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_220/Tile�
tf.reshape_441/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_441/Reshape/shape�
tf.reshape_441/ReshapeReshapetf.tile_220/Tile:output:0%tf.reshape_441/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_441/Reshapex
tf.concat_366/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_366/concat/axis�
tf.concat_366/concatConcatV2tf.reshape_441/Reshape:output:0+conv3d_342/StatefulPartitionedCall:output:0"tf.concat_366/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_366/concat�
"conv3d_345/StatefulPartitionedCallStatefulPartitionedCalltf.concat_366/concat:output:0conv3d_345_16872830conv3d_345_16872832*
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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_168726072$
"conv3d_345/StatefulPartitionedCall�
"conv3d_346/StatefulPartitionedCallStatefulPartitionedCall+conv3d_345/StatefulPartitionedCall:output:0conv3d_346_16872835conv3d_346_16872837*
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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_168726232$
"conv3d_346/StatefulPartitionedCall�
IdentityIdentity+conv3d_346/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_342/StatefulPartitionedCall#^conv3d_343/StatefulPartitionedCall#^conv3d_344/StatefulPartitionedCall#^conv3d_345/StatefulPartitionedCall#^conv3d_346/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_342/StatefulPartitionedCall"conv3d_342/StatefulPartitionedCall2H
"conv3d_343/StatefulPartitionedCall"conv3d_343/StatefulPartitionedCall2H
"conv3d_344/StatefulPartitionedCall"conv3d_344/StatefulPartitionedCall2H
"conv3d_345/StatefulPartitionedCall"conv3d_345/StatefulPartitionedCall2H
"conv3d_346/StatefulPartitionedCall"conv3d_346/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
o
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16873445

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
+__inference_dense_72_layer_call_fn_16873471

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
F__inference_dense_72_layer_call_and_return_conditional_losses_168725402
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
+__inference_model_72_layer_call_fn_16873116

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
F__inference_model_72_layer_call_and_return_conditional_losses_168728412
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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_16873542

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
�
H__inference_conv3d_344_layer_call_and_return_conditional_losses_16872582

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
8__inference_average_pooling3d_135_layer_call_fn_16873374

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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_168723832
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
F__inference_model_72_layer_call_and_return_conditional_losses_16872962	
input1
conv3d_342_16872911:!
conv3d_342_16872913:1
conv3d_343_16872917:!
conv3d_343_16872919:#
dense_72_16872924:@@
dense_72_16872926:@1
conv3d_344_16872938:!
conv3d_344_16872940:1
conv3d_345_16872951:!
conv3d_345_16872953:1
conv3d_346_16872956:!
conv3d_346_16872958:
identity��"conv3d_342/StatefulPartitionedCall�"conv3d_343/StatefulPartitionedCall�"conv3d_344/StatefulPartitionedCall�"conv3d_345/StatefulPartitionedCall�"conv3d_346/StatefulPartitionedCall� dense_72/StatefulPartitionedCall�
0tf.__operators__.getitem_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_290/strided_slice/stack�
2tf.__operators__.getitem_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_290/strided_slice/stack_1�
2tf.__operators__.getitem_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_290/strided_slice/stack_2�
*tf.__operators__.getitem_290/strided_sliceStridedSliceinput9tf.__operators__.getitem_290/strided_slice/stack:output:0;tf.__operators__.getitem_290/strided_slice/stack_1:output:0;tf.__operators__.getitem_290/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_290/strided_slice�
#range_conversion_72/PartitionedCallPartitionedCall3tf.__operators__.getitem_290/strided_slice:output:0*
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_168724532%
#range_conversion_72/PartitionedCall�
0tf.__operators__.getitem_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_291/strided_slice/stack�
2tf.__operators__.getitem_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_291/strided_slice/stack_1�
2tf.__operators__.getitem_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_291/strided_slice/stack_2�
*tf.__operators__.getitem_291/strided_sliceStridedSliceinput9tf.__operators__.getitem_291/strided_slice/stack:output:0;tf.__operators__.getitem_291/strided_slice/stack_1:output:0;tf.__operators__.getitem_291/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_291/strided_slicex
tf.concat_364/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_364/concat/axis�
tf.concat_364/concatConcatV2,range_conversion_72/PartitionedCall:output:03tf.__operators__.getitem_291/strided_slice:output:0"tf.concat_364/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_364/concat�
"conv3d_342/StatefulPartitionedCallStatefulPartitionedCalltf.concat_364/concat:output:0conv3d_342_16872911conv3d_342_16872913*
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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_168724722$
"conv3d_342/StatefulPartitionedCall�
%average_pooling3d_135/PartitionedCallPartitionedCall+conv3d_342/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_168724862'
%average_pooling3d_135/PartitionedCall�
"conv3d_343/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_135/PartitionedCall:output:0conv3d_343_16872917conv3d_343_16872919*
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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_168724992$
"conv3d_343/StatefulPartitionedCall�
%average_pooling3d_136/PartitionedCallPartitionedCall+conv3d_343/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_168725132'
%average_pooling3d_136/PartitionedCall�
reshape_144/PartitionedCallPartitionedCall.average_pooling3d_136/PartitionedCall:output:0*
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_168725272
reshape_144/PartitionedCall�
 dense_72/StatefulPartitionedCallStatefulPartitionedCall$reshape_144/PartitionedCall:output:0dense_72_16872924dense_72_16872926*
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
F__inference_dense_72_layer_call_and_return_conditional_losses_168725402"
 dense_72/StatefulPartitionedCall�
reshape_145/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_168725612
reshape_145/PartitionedCall�
tf.reshape_438/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_438/Reshape/shape�
tf.reshape_438/ReshapeReshape$reshape_145/PartitionedCall:output:0%tf.reshape_438/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_438/Reshape�
tf.tile_219/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_219/Tile/multiples�
tf.tile_219/TileTiletf.reshape_438/Reshape:output:0#tf.tile_219/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_219/Tile�
tf.reshape_439/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_439/Reshape/shape�
tf.reshape_439/ReshapeReshapetf.tile_219/Tile:output:0%tf.reshape_439/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_439/Reshapex
tf.concat_365/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_365/concat/axis�
tf.concat_365/concatConcatV2tf.reshape_439/Reshape:output:0+conv3d_343/StatefulPartitionedCall:output:0"tf.concat_365/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_365/concat�
"conv3d_344/StatefulPartitionedCallStatefulPartitionedCalltf.concat_365/concat:output:0conv3d_344_16872938conv3d_344_16872940*
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
H__inference_conv3d_344_layer_call_and_return_conditional_losses_168725822$
"conv3d_344/StatefulPartitionedCall�
tf.reshape_440/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_440/Reshape/shape�
tf.reshape_440/ReshapeReshape+conv3d_344/StatefulPartitionedCall:output:0%tf.reshape_440/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_440/Reshape�
tf.tile_220/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_220/Tile/multiples�
tf.tile_220/TileTiletf.reshape_440/Reshape:output:0#tf.tile_220/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_220/Tile�
tf.reshape_441/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_441/Reshape/shape�
tf.reshape_441/ReshapeReshapetf.tile_220/Tile:output:0%tf.reshape_441/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_441/Reshapex
tf.concat_366/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_366/concat/axis�
tf.concat_366/concatConcatV2tf.reshape_441/Reshape:output:0+conv3d_342/StatefulPartitionedCall:output:0"tf.concat_366/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_366/concat�
"conv3d_345/StatefulPartitionedCallStatefulPartitionedCalltf.concat_366/concat:output:0conv3d_345_16872951conv3d_345_16872953*
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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_168726072$
"conv3d_345/StatefulPartitionedCall�
"conv3d_346/StatefulPartitionedCallStatefulPartitionedCall+conv3d_345/StatefulPartitionedCall:output:0conv3d_346_16872956conv3d_346_16872958*
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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_168726232$
"conv3d_346/StatefulPartitionedCall�
IdentityIdentity+conv3d_346/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_342/StatefulPartitionedCall#^conv3d_343/StatefulPartitionedCall#^conv3d_344/StatefulPartitionedCall#^conv3d_345/StatefulPartitionedCall#^conv3d_346/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2H
"conv3d_342/StatefulPartitionedCall"conv3d_342/StatefulPartitionedCall2H
"conv3d_343/StatefulPartitionedCall"conv3d_343/StatefulPartitionedCall2H
"conv3d_344/StatefulPartitionedCall"conv3d_344/StatefulPartitionedCall2H
"conv3d_345/StatefulPartitionedCall"conv3d_345/StatefulPartitionedCall2H
"conv3d_346/StatefulPartitionedCall"conv3d_346/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�

F__inference_model_72_layer_call_and_return_conditional_losses_16873332

inputsG
)conv3d_342_conv3d_readvariableop_resource:8
*conv3d_342_biasadd_readvariableop_resource:G
)conv3d_343_conv3d_readvariableop_resource:8
*conv3d_343_biasadd_readvariableop_resource:9
'dense_72_matmul_readvariableop_resource:@@6
(dense_72_biasadd_readvariableop_resource:@G
)conv3d_344_conv3d_readvariableop_resource:8
*conv3d_344_biasadd_readvariableop_resource:G
)conv3d_345_conv3d_readvariableop_resource:8
*conv3d_345_biasadd_readvariableop_resource:G
)conv3d_346_conv3d_readvariableop_resource:8
*conv3d_346_biasadd_readvariableop_resource:
identity��!conv3d_342/BiasAdd/ReadVariableOp� conv3d_342/Conv3D/ReadVariableOp�!conv3d_343/BiasAdd/ReadVariableOp� conv3d_343/Conv3D/ReadVariableOp�!conv3d_344/BiasAdd/ReadVariableOp� conv3d_344/Conv3D/ReadVariableOp�!conv3d_345/BiasAdd/ReadVariableOp� conv3d_345/Conv3D/ReadVariableOp�!conv3d_346/BiasAdd/ReadVariableOp� conv3d_346/Conv3D/ReadVariableOp�dense_72/BiasAdd/ReadVariableOp�dense_72/MatMul/ReadVariableOp�
0tf.__operators__.getitem_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_290/strided_slice/stack�
2tf.__operators__.getitem_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_290/strided_slice/stack_1�
2tf.__operators__.getitem_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_290/strided_slice/stack_2�
*tf.__operators__.getitem_290/strided_sliceStridedSliceinputs9tf.__operators__.getitem_290/strided_slice/stack:output:0;tf.__operators__.getitem_290/strided_slice/stack_1:output:0;tf.__operators__.getitem_290/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_290/strided_slice{
range_conversion_72/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_72/sub/y�
range_conversion_72/subSub3tf.__operators__.getitem_290/strided_slice:output:0"range_conversion_72/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/sub�
range_conversion_72/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_72/truediv/y�
range_conversion_72/truedivRealDivrange_conversion_72/sub:z:0&range_conversion_72/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/truediv{
range_conversion_72/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_72/mul/y�
range_conversion_72/mulMulrange_conversion_72/truediv:z:0"range_conversion_72/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/mul{
range_conversion_72/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_72/add/y�
range_conversion_72/addAddV2range_conversion_72/mul:z:0"range_conversion_72/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_72/add�
0tf.__operators__.getitem_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_291/strided_slice/stack�
2tf.__operators__.getitem_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_291/strided_slice/stack_1�
2tf.__operators__.getitem_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_291/strided_slice/stack_2�
*tf.__operators__.getitem_291/strided_sliceStridedSliceinputs9tf.__operators__.getitem_291/strided_slice/stack:output:0;tf.__operators__.getitem_291/strided_slice/stack_1:output:0;tf.__operators__.getitem_291/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_291/strided_slicex
tf.concat_364/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_364/concat/axis�
tf.concat_364/concatConcatV2range_conversion_72/add:z:03tf.__operators__.getitem_291/strided_slice:output:0"tf.concat_364/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_364/concat�
 conv3d_342/Conv3D/ReadVariableOpReadVariableOp)conv3d_342_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_342/Conv3D/ReadVariableOp�
conv3d_342/Conv3DConv3Dtf.concat_364/concat:output:0(conv3d_342/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_342/Conv3D�
!conv3d_342/BiasAdd/ReadVariableOpReadVariableOp*conv3d_342_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_342/BiasAdd/ReadVariableOp�
conv3d_342/BiasAddBiasAddconv3d_342/Conv3D:output:0)conv3d_342/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_342/BiasAdd�
conv3d_342/SoftplusSoftplusconv3d_342/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_342/Softplus�
$average_pooling3d_135/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_135/transpose/perm�
average_pooling3d_135/transpose	Transpose!conv3d_342/Softplus:activations:0-average_pooling3d_135/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_135/transpose�
average_pooling3d_135/AvgPool3D	AvgPool3D#average_pooling3d_135/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_135/AvgPool3D�
&average_pooling3d_135/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_135/transpose_1/perm�
!average_pooling3d_135/transpose_1	Transpose(average_pooling3d_135/AvgPool3D:output:0/average_pooling3d_135/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_135/transpose_1�
 conv3d_343/Conv3D/ReadVariableOpReadVariableOp)conv3d_343_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_343/Conv3D/ReadVariableOp�
conv3d_343/Conv3DConv3D%average_pooling3d_135/transpose_1:y:0(conv3d_343/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_343/Conv3D�
!conv3d_343/BiasAdd/ReadVariableOpReadVariableOp*conv3d_343_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_343/BiasAdd/ReadVariableOp�
conv3d_343/BiasAddBiasAddconv3d_343/Conv3D:output:0)conv3d_343/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_343/BiasAdd�
conv3d_343/SoftplusSoftplusconv3d_343/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_343/Softplus�
$average_pooling3d_136/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_136/transpose/perm�
average_pooling3d_136/transpose	Transpose!conv3d_343/Softplus:activations:0-average_pooling3d_136/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_136/transpose�
average_pooling3d_136/AvgPool3D	AvgPool3D#average_pooling3d_136/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_136/AvgPool3D�
&average_pooling3d_136/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_136/transpose_1/perm�
!average_pooling3d_136/transpose_1	Transpose(average_pooling3d_136/AvgPool3D:output:0/average_pooling3d_136/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2#
!average_pooling3d_136/transpose_1{
reshape_144/ShapeShape%average_pooling3d_136/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_144/Shape�
reshape_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_144/strided_slice/stack�
!reshape_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_1�
!reshape_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_144/strided_slice/stack_2�
reshape_144/strided_sliceStridedSlicereshape_144/Shape:output:0(reshape_144/strided_slice/stack:output:0*reshape_144/strided_slice/stack_1:output:0*reshape_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_144/strided_slice|
reshape_144/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_144/Reshape/shape/1�
reshape_144/Reshape/shapePack"reshape_144/strided_slice:output:0$reshape_144/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_144/Reshape/shape�
reshape_144/ReshapeReshape%average_pooling3d_136/transpose_1:y:0"reshape_144/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_144/Reshape�
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_72/MatMul/ReadVariableOp�
dense_72/MatMulMatMulreshape_144/Reshape:output:0&dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/MatMul�
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_72/BiasAdd/ReadVariableOp�
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_72/BiasAdd
dense_72/SoftplusSoftplusdense_72/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_72/Softplusu
reshape_145/ShapeShapedense_72/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_145/Shape�
reshape_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_145/strided_slice/stack�
!reshape_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_1�
!reshape_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_145/strided_slice/stack_2�
reshape_145/strided_sliceStridedSlicereshape_145/Shape:output:0(reshape_145/strided_slice/stack:output:0*reshape_145/strided_slice/stack_1:output:0*reshape_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_145/strided_slice|
reshape_145/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/1|
reshape_145/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/2|
reshape_145/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/3|
reshape_145/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_145/Reshape/shape/4�
reshape_145/Reshape/shapePack"reshape_145/strided_slice:output:0$reshape_145/Reshape/shape/1:output:0$reshape_145/Reshape/shape/2:output:0$reshape_145/Reshape/shape/3:output:0$reshape_145/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_145/Reshape/shape�
reshape_145/ReshapeReshapedense_72/Softplus:activations:0"reshape_145/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_145/Reshape�
tf.reshape_438/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_438/Reshape/shape�
tf.reshape_438/ReshapeReshapereshape_145/Reshape:output:0%tf.reshape_438/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_438/Reshape�
tf.tile_219/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_219/Tile/multiples�
tf.tile_219/TileTiletf.reshape_438/Reshape:output:0#tf.tile_219/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_219/Tile�
tf.reshape_439/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_439/Reshape/shape�
tf.reshape_439/ReshapeReshapetf.tile_219/Tile:output:0%tf.reshape_439/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_439/Reshapex
tf.concat_365/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_365/concat/axis�
tf.concat_365/concatConcatV2tf.reshape_439/Reshape:output:0!conv3d_343/Softplus:activations:0"tf.concat_365/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_365/concat�
 conv3d_344/Conv3D/ReadVariableOpReadVariableOp)conv3d_344_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_344/Conv3D/ReadVariableOp�
conv3d_344/Conv3DConv3Dtf.concat_365/concat:output:0(conv3d_344/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_344/Conv3D�
!conv3d_344/BiasAdd/ReadVariableOpReadVariableOp*conv3d_344_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_344/BiasAdd/ReadVariableOp�
conv3d_344/BiasAddBiasAddconv3d_344/Conv3D:output:0)conv3d_344/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_344/BiasAdd�
conv3d_344/SoftplusSoftplusconv3d_344/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_344/Softplus�
tf.reshape_440/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_440/Reshape/shape�
tf.reshape_440/ReshapeReshape!conv3d_344/Softplus:activations:0%tf.reshape_440/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_440/Reshape�
tf.tile_220/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_220/Tile/multiples�
tf.tile_220/TileTiletf.reshape_440/Reshape:output:0#tf.tile_220/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_220/Tile�
tf.reshape_441/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_441/Reshape/shape�
tf.reshape_441/ReshapeReshapetf.tile_220/Tile:output:0%tf.reshape_441/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_441/Reshapex
tf.concat_366/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_366/concat/axis�
tf.concat_366/concatConcatV2tf.reshape_441/Reshape:output:0!conv3d_342/Softplus:activations:0"tf.concat_366/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_366/concat�
 conv3d_345/Conv3D/ReadVariableOpReadVariableOp)conv3d_345_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_345/Conv3D/ReadVariableOp�
conv3d_345/Conv3DConv3Dtf.concat_366/concat:output:0(conv3d_345/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_345/Conv3D�
!conv3d_345/BiasAdd/ReadVariableOpReadVariableOp*conv3d_345_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_345/BiasAdd/ReadVariableOp�
conv3d_345/BiasAddBiasAddconv3d_345/Conv3D:output:0)conv3d_345/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_345/BiasAdd�
conv3d_345/SoftplusSoftplusconv3d_345/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_345/Softplus�
 conv3d_346/Conv3D/ReadVariableOpReadVariableOp)conv3d_346_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_346/Conv3D/ReadVariableOp�
conv3d_346/Conv3DConv3D!conv3d_345/Softplus:activations:0(conv3d_346/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_346/Conv3D�
!conv3d_346/BiasAdd/ReadVariableOpReadVariableOp*conv3d_346_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_346/BiasAdd/ReadVariableOp�
conv3d_346/BiasAddBiasAddconv3d_346/Conv3D:output:0)conv3d_346/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_346/BiasAdd�
IdentityIdentityconv3d_346/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_342/BiasAdd/ReadVariableOp!^conv3d_342/Conv3D/ReadVariableOp"^conv3d_343/BiasAdd/ReadVariableOp!^conv3d_343/Conv3D/ReadVariableOp"^conv3d_344/BiasAdd/ReadVariableOp!^conv3d_344/Conv3D/ReadVariableOp"^conv3d_345/BiasAdd/ReadVariableOp!^conv3d_345/Conv3D/ReadVariableOp"^conv3d_346/BiasAdd/ReadVariableOp!^conv3d_346/Conv3D/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2F
!conv3d_342/BiasAdd/ReadVariableOp!conv3d_342/BiasAdd/ReadVariableOp2D
 conv3d_342/Conv3D/ReadVariableOp conv3d_342/Conv3D/ReadVariableOp2F
!conv3d_343/BiasAdd/ReadVariableOp!conv3d_343/BiasAdd/ReadVariableOp2D
 conv3d_343/Conv3D/ReadVariableOp conv3d_343/Conv3D/ReadVariableOp2F
!conv3d_344/BiasAdd/ReadVariableOp!conv3d_344/BiasAdd/ReadVariableOp2D
 conv3d_344/Conv3D/ReadVariableOp conv3d_344/Conv3D/ReadVariableOp2F
!conv3d_345/BiasAdd/ReadVariableOp!conv3d_345/BiasAdd/ReadVariableOp2D
 conv3d_345/Conv3D/ReadVariableOp conv3d_345/Conv3D/ReadVariableOp2F
!conv3d_346/BiasAdd/ReadVariableOp!conv3d_346/BiasAdd/ReadVariableOp2D
 conv3d_346/Conv3D/ReadVariableOp conv3d_346/Conv3D/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
J
.__inference_reshape_144_layer_call_fn_16873450

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
I__inference_reshape_144_layer_call_and_return_conditional_losses_168725272
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
o
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16873397

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
�
T
8__inference_average_pooling3d_136_layer_call_fn_16873422

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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_168724132
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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16872383

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
F__inference_dense_72_layer_call_and_return_conditional_losses_16872540

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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16872486

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
�&
�
!__inference__traced_save_16873620
file_prefix0
,savev2_conv3d_342_kernel_read_readvariableop.
*savev2_conv3d_342_bias_read_readvariableop0
,savev2_conv3d_343_kernel_read_readvariableop.
*savev2_conv3d_343_bias_read_readvariableop.
*savev2_dense_72_kernel_read_readvariableop,
(savev2_dense_72_bias_read_readvariableop0
,savev2_conv3d_344_kernel_read_readvariableop.
*savev2_conv3d_344_bias_read_readvariableop0
,savev2_conv3d_345_kernel_read_readvariableop.
*savev2_conv3d_345_bias_read_readvariableop0
,savev2_conv3d_346_kernel_read_readvariableop.
*savev2_conv3d_346_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_342_kernel_read_readvariableop*savev2_conv3d_342_bias_read_readvariableop,savev2_conv3d_343_kernel_read_readvariableop*savev2_conv3d_343_bias_read_readvariableop*savev2_dense_72_kernel_read_readvariableop(savev2_dense_72_bias_read_readvariableop,savev2_conv3d_344_kernel_read_readvariableop*savev2_conv3d_344_bias_read_readvariableop,savev2_conv3d_345_kernel_read_readvariableop*savev2_conv3d_345_bias_read_readvariableop,savev2_conv3d_346_kernel_read_readvariableop*savev2_conv3d_346_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
T
8__inference_average_pooling3d_135_layer_call_fn_16873379

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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_168724862
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
#__inference__wrapped_model_16872370	
inputP
2model_72_conv3d_342_conv3d_readvariableop_resource:A
3model_72_conv3d_342_biasadd_readvariableop_resource:P
2model_72_conv3d_343_conv3d_readvariableop_resource:A
3model_72_conv3d_343_biasadd_readvariableop_resource:B
0model_72_dense_72_matmul_readvariableop_resource:@@?
1model_72_dense_72_biasadd_readvariableop_resource:@P
2model_72_conv3d_344_conv3d_readvariableop_resource:A
3model_72_conv3d_344_biasadd_readvariableop_resource:P
2model_72_conv3d_345_conv3d_readvariableop_resource:A
3model_72_conv3d_345_biasadd_readvariableop_resource:P
2model_72_conv3d_346_conv3d_readvariableop_resource:A
3model_72_conv3d_346_biasadd_readvariableop_resource:
identity��*model_72/conv3d_342/BiasAdd/ReadVariableOp�)model_72/conv3d_342/Conv3D/ReadVariableOp�*model_72/conv3d_343/BiasAdd/ReadVariableOp�)model_72/conv3d_343/Conv3D/ReadVariableOp�*model_72/conv3d_344/BiasAdd/ReadVariableOp�)model_72/conv3d_344/Conv3D/ReadVariableOp�*model_72/conv3d_345/BiasAdd/ReadVariableOp�)model_72/conv3d_345/Conv3D/ReadVariableOp�*model_72/conv3d_346/BiasAdd/ReadVariableOp�)model_72/conv3d_346/Conv3D/ReadVariableOp�(model_72/dense_72/BiasAdd/ReadVariableOp�'model_72/dense_72/MatMul/ReadVariableOp�
9model_72/tf.__operators__.getitem_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_72/tf.__operators__.getitem_290/strided_slice/stack�
;model_72/tf.__operators__.getitem_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_72/tf.__operators__.getitem_290/strided_slice/stack_1�
;model_72/tf.__operators__.getitem_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_72/tf.__operators__.getitem_290/strided_slice/stack_2�
3model_72/tf.__operators__.getitem_290/strided_sliceStridedSliceinputBmodel_72/tf.__operators__.getitem_290/strided_slice/stack:output:0Dmodel_72/tf.__operators__.getitem_290/strided_slice/stack_1:output:0Dmodel_72/tf.__operators__.getitem_290/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_72/tf.__operators__.getitem_290/strided_slice�
"model_72/range_conversion_72/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_72/range_conversion_72/sub/y�
 model_72/range_conversion_72/subSub<model_72/tf.__operators__.getitem_290/strided_slice:output:0+model_72/range_conversion_72/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_72/range_conversion_72/sub�
&model_72/range_conversion_72/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_72/range_conversion_72/truediv/y�
$model_72/range_conversion_72/truedivRealDiv$model_72/range_conversion_72/sub:z:0/model_72/range_conversion_72/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_72/range_conversion_72/truediv�
"model_72/range_conversion_72/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_72/range_conversion_72/mul/y�
 model_72/range_conversion_72/mulMul(model_72/range_conversion_72/truediv:z:0+model_72/range_conversion_72/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_72/range_conversion_72/mul�
"model_72/range_conversion_72/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_72/range_conversion_72/add/y�
 model_72/range_conversion_72/addAddV2$model_72/range_conversion_72/mul:z:0+model_72/range_conversion_72/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_72/range_conversion_72/add�
9model_72/tf.__operators__.getitem_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_72/tf.__operators__.getitem_291/strided_slice/stack�
;model_72/tf.__operators__.getitem_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_72/tf.__operators__.getitem_291/strided_slice/stack_1�
;model_72/tf.__operators__.getitem_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_72/tf.__operators__.getitem_291/strided_slice/stack_2�
3model_72/tf.__operators__.getitem_291/strided_sliceStridedSliceinputBmodel_72/tf.__operators__.getitem_291/strided_slice/stack:output:0Dmodel_72/tf.__operators__.getitem_291/strided_slice/stack_1:output:0Dmodel_72/tf.__operators__.getitem_291/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_72/tf.__operators__.getitem_291/strided_slice�
"model_72/tf.concat_364/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_72/tf.concat_364/concat/axis�
model_72/tf.concat_364/concatConcatV2$model_72/range_conversion_72/add:z:0<model_72/tf.__operators__.getitem_291/strided_slice:output:0+model_72/tf.concat_364/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_72/tf.concat_364/concat�
)model_72/conv3d_342/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_342_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_342/Conv3D/ReadVariableOp�
model_72/conv3d_342/Conv3DConv3D&model_72/tf.concat_364/concat:output:01model_72/conv3d_342/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_342/Conv3D�
*model_72/conv3d_342/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_342_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_342/BiasAdd/ReadVariableOp�
model_72/conv3d_342/BiasAddBiasAdd#model_72/conv3d_342/Conv3D:output:02model_72/conv3d_342/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_342/BiasAdd�
model_72/conv3d_342/SoftplusSoftplus$model_72/conv3d_342/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_72/conv3d_342/Softplus�
-model_72/average_pooling3d_135/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_72/average_pooling3d_135/transpose/perm�
(model_72/average_pooling3d_135/transpose	Transpose*model_72/conv3d_342/Softplus:activations:06model_72/average_pooling3d_135/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_72/average_pooling3d_135/transpose�
(model_72/average_pooling3d_135/AvgPool3D	AvgPool3D,model_72/average_pooling3d_135/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_72/average_pooling3d_135/AvgPool3D�
/model_72/average_pooling3d_135/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_72/average_pooling3d_135/transpose_1/perm�
*model_72/average_pooling3d_135/transpose_1	Transpose1model_72/average_pooling3d_135/AvgPool3D:output:08model_72/average_pooling3d_135/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_72/average_pooling3d_135/transpose_1�
)model_72/conv3d_343/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_343_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_343/Conv3D/ReadVariableOp�
model_72/conv3d_343/Conv3DConv3D.model_72/average_pooling3d_135/transpose_1:y:01model_72/conv3d_343/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_343/Conv3D�
*model_72/conv3d_343/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_343_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_343/BiasAdd/ReadVariableOp�
model_72/conv3d_343/BiasAddBiasAdd#model_72/conv3d_343/Conv3D:output:02model_72/conv3d_343/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_343/BiasAdd�
model_72/conv3d_343/SoftplusSoftplus$model_72/conv3d_343/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_72/conv3d_343/Softplus�
-model_72/average_pooling3d_136/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_72/average_pooling3d_136/transpose/perm�
(model_72/average_pooling3d_136/transpose	Transpose*model_72/conv3d_343/Softplus:activations:06model_72/average_pooling3d_136/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2*
(model_72/average_pooling3d_136/transpose�
(model_72/average_pooling3d_136/AvgPool3D	AvgPool3D,model_72/average_pooling3d_136/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2*
(model_72/average_pooling3d_136/AvgPool3D�
/model_72/average_pooling3d_136/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_72/average_pooling3d_136/transpose_1/perm�
*model_72/average_pooling3d_136/transpose_1	Transpose1model_72/average_pooling3d_136/AvgPool3D:output:08model_72/average_pooling3d_136/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2,
*model_72/average_pooling3d_136/transpose_1�
model_72/reshape_144/ShapeShape.model_72/average_pooling3d_136/transpose_1:y:0*
T0*
_output_shapes
:2
model_72/reshape_144/Shape�
(model_72/reshape_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_72/reshape_144/strided_slice/stack�
*model_72/reshape_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_144/strided_slice/stack_1�
*model_72/reshape_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_144/strided_slice/stack_2�
"model_72/reshape_144/strided_sliceStridedSlice#model_72/reshape_144/Shape:output:01model_72/reshape_144/strided_slice/stack:output:03model_72/reshape_144/strided_slice/stack_1:output:03model_72/reshape_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_72/reshape_144/strided_slice�
$model_72/reshape_144/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_72/reshape_144/Reshape/shape/1�
"model_72/reshape_144/Reshape/shapePack+model_72/reshape_144/strided_slice:output:0-model_72/reshape_144/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_72/reshape_144/Reshape/shape�
model_72/reshape_144/ReshapeReshape.model_72/average_pooling3d_136/transpose_1:y:0+model_72/reshape_144/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_72/reshape_144/Reshape�
'model_72/dense_72/MatMul/ReadVariableOpReadVariableOp0model_72_dense_72_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_72/dense_72/MatMul/ReadVariableOp�
model_72/dense_72/MatMulMatMul%model_72/reshape_144/Reshape:output:0/model_72/dense_72/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_72/dense_72/MatMul�
(model_72/dense_72/BiasAdd/ReadVariableOpReadVariableOp1model_72_dense_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_72/dense_72/BiasAdd/ReadVariableOp�
model_72/dense_72/BiasAddBiasAdd"model_72/dense_72/MatMul:product:00model_72/dense_72/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_72/dense_72/BiasAdd�
model_72/dense_72/SoftplusSoftplus"model_72/dense_72/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_72/dense_72/Softplus�
model_72/reshape_145/ShapeShape(model_72/dense_72/Softplus:activations:0*
T0*
_output_shapes
:2
model_72/reshape_145/Shape�
(model_72/reshape_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_72/reshape_145/strided_slice/stack�
*model_72/reshape_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_145/strided_slice/stack_1�
*model_72/reshape_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_72/reshape_145/strided_slice/stack_2�
"model_72/reshape_145/strided_sliceStridedSlice#model_72/reshape_145/Shape:output:01model_72/reshape_145/strided_slice/stack:output:03model_72/reshape_145/strided_slice/stack_1:output:03model_72/reshape_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_72/reshape_145/strided_slice�
$model_72/reshape_145/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/1�
$model_72/reshape_145/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/2�
$model_72/reshape_145/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/3�
$model_72/reshape_145/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_72/reshape_145/Reshape/shape/4�
"model_72/reshape_145/Reshape/shapePack+model_72/reshape_145/strided_slice:output:0-model_72/reshape_145/Reshape/shape/1:output:0-model_72/reshape_145/Reshape/shape/2:output:0-model_72/reshape_145/Reshape/shape/3:output:0-model_72/reshape_145/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_72/reshape_145/Reshape/shape�
model_72/reshape_145/ReshapeReshape(model_72/dense_72/Softplus:activations:0+model_72/reshape_145/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_72/reshape_145/Reshape�
%model_72/tf.reshape_438/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_72/tf.reshape_438/Reshape/shape�
model_72/tf.reshape_438/ReshapeReshape%model_72/reshape_145/Reshape:output:0.model_72/tf.reshape_438/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_72/tf.reshape_438/Reshape�
#model_72/tf.tile_219/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_72/tf.tile_219/Tile/multiples�
model_72/tf.tile_219/TileTile(model_72/tf.reshape_438/Reshape:output:0,model_72/tf.tile_219/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_72/tf.tile_219/Tile�
%model_72/tf.reshape_439/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_72/tf.reshape_439/Reshape/shape�
model_72/tf.reshape_439/ReshapeReshape"model_72/tf.tile_219/Tile:output:0.model_72/tf.reshape_439/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_72/tf.reshape_439/Reshape�
"model_72/tf.concat_365/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_72/tf.concat_365/concat/axis�
model_72/tf.concat_365/concatConcatV2(model_72/tf.reshape_439/Reshape:output:0*model_72/conv3d_343/Softplus:activations:0+model_72/tf.concat_365/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_72/tf.concat_365/concat�
)model_72/conv3d_344/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_344_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_344/Conv3D/ReadVariableOp�
model_72/conv3d_344/Conv3DConv3D&model_72/tf.concat_365/concat:output:01model_72/conv3d_344/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_344/Conv3D�
*model_72/conv3d_344/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_344_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_344/BiasAdd/ReadVariableOp�
model_72/conv3d_344/BiasAddBiasAdd#model_72/conv3d_344/Conv3D:output:02model_72/conv3d_344/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_344/BiasAdd�
model_72/conv3d_344/SoftplusSoftplus$model_72/conv3d_344/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_72/conv3d_344/Softplus�
%model_72/tf.reshape_440/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_72/tf.reshape_440/Reshape/shape�
model_72/tf.reshape_440/ReshapeReshape*model_72/conv3d_344/Softplus:activations:0.model_72/tf.reshape_440/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_72/tf.reshape_440/Reshape�
#model_72/tf.tile_220/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_72/tf.tile_220/Tile/multiples�
model_72/tf.tile_220/TileTile(model_72/tf.reshape_440/Reshape:output:0,model_72/tf.tile_220/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_72/tf.tile_220/Tile�
%model_72/tf.reshape_441/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_72/tf.reshape_441/Reshape/shape�
model_72/tf.reshape_441/ReshapeReshape"model_72/tf.tile_220/Tile:output:0.model_72/tf.reshape_441/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_72/tf.reshape_441/Reshape�
"model_72/tf.concat_366/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_72/tf.concat_366/concat/axis�
model_72/tf.concat_366/concatConcatV2(model_72/tf.reshape_441/Reshape:output:0*model_72/conv3d_342/Softplus:activations:0+model_72/tf.concat_366/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_72/tf.concat_366/concat�
)model_72/conv3d_345/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_345_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_345/Conv3D/ReadVariableOp�
model_72/conv3d_345/Conv3DConv3D&model_72/tf.concat_366/concat:output:01model_72/conv3d_345/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_345/Conv3D�
*model_72/conv3d_345/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_345_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_345/BiasAdd/ReadVariableOp�
model_72/conv3d_345/BiasAddBiasAdd#model_72/conv3d_345/Conv3D:output:02model_72/conv3d_345/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_345/BiasAdd�
model_72/conv3d_345/SoftplusSoftplus$model_72/conv3d_345/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_72/conv3d_345/Softplus�
)model_72/conv3d_346/Conv3D/ReadVariableOpReadVariableOp2model_72_conv3d_346_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_72/conv3d_346/Conv3D/ReadVariableOp�
model_72/conv3d_346/Conv3DConv3D*model_72/conv3d_345/Softplus:activations:01model_72/conv3d_346/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_72/conv3d_346/Conv3D�
*model_72/conv3d_346/BiasAdd/ReadVariableOpReadVariableOp3model_72_conv3d_346_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_72/conv3d_346/BiasAdd/ReadVariableOp�
model_72/conv3d_346/BiasAddBiasAdd#model_72/conv3d_346/Conv3D:output:02model_72/conv3d_346/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_72/conv3d_346/BiasAdd�
IdentityIdentity$model_72/conv3d_346/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_72/conv3d_342/BiasAdd/ReadVariableOp*^model_72/conv3d_342/Conv3D/ReadVariableOp+^model_72/conv3d_343/BiasAdd/ReadVariableOp*^model_72/conv3d_343/Conv3D/ReadVariableOp+^model_72/conv3d_344/BiasAdd/ReadVariableOp*^model_72/conv3d_344/Conv3D/ReadVariableOp+^model_72/conv3d_345/BiasAdd/ReadVariableOp*^model_72/conv3d_345/Conv3D/ReadVariableOp+^model_72/conv3d_346/BiasAdd/ReadVariableOp*^model_72/conv3d_346/Conv3D/ReadVariableOp)^model_72/dense_72/BiasAdd/ReadVariableOp(^model_72/dense_72/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : 2X
*model_72/conv3d_342/BiasAdd/ReadVariableOp*model_72/conv3d_342/BiasAdd/ReadVariableOp2V
)model_72/conv3d_342/Conv3D/ReadVariableOp)model_72/conv3d_342/Conv3D/ReadVariableOp2X
*model_72/conv3d_343/BiasAdd/ReadVariableOp*model_72/conv3d_343/BiasAdd/ReadVariableOp2V
)model_72/conv3d_343/Conv3D/ReadVariableOp)model_72/conv3d_343/Conv3D/ReadVariableOp2X
*model_72/conv3d_344/BiasAdd/ReadVariableOp*model_72/conv3d_344/BiasAdd/ReadVariableOp2V
)model_72/conv3d_344/Conv3D/ReadVariableOp)model_72/conv3d_344/Conv3D/ReadVariableOp2X
*model_72/conv3d_345/BiasAdd/ReadVariableOp*model_72/conv3d_345/BiasAdd/ReadVariableOp2V
)model_72/conv3d_345/Conv3D/ReadVariableOp)model_72/conv3d_345/Conv3D/ReadVariableOp2X
*model_72/conv3d_346/BiasAdd/ReadVariableOp*model_72/conv3d_346/BiasAdd/ReadVariableOp2V
)model_72/conv3d_346/Conv3D/ReadVariableOp)model_72/conv3d_346/Conv3D/ReadVariableOp2T
(model_72/dense_72/BiasAdd/ReadVariableOp(model_72/dense_72/BiasAdd/ReadVariableOp2R
'model_72/dense_72/MatMul/ReadVariableOp'model_72/dense_72/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
&__inference_signature_wrapper_16873058	
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
#__inference__wrapped_model_168723702
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
�7
�
$__inference__traced_restore_16873666
file_prefix@
"assignvariableop_conv3d_342_kernel:0
"assignvariableop_1_conv3d_342_bias:B
$assignvariableop_2_conv3d_343_kernel:0
"assignvariableop_3_conv3d_343_bias:4
"assignvariableop_4_dense_72_kernel:@@.
 assignvariableop_5_dense_72_bias:@B
$assignvariableop_6_conv3d_344_kernel:0
"assignvariableop_7_conv3d_344_bias:B
$assignvariableop_8_conv3d_345_kernel:0
"assignvariableop_9_conv3d_345_bias:C
%assignvariableop_10_conv3d_346_kernel:1
#assignvariableop_11_conv3d_346_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_342_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_342_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_343_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_343_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_72_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_72_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_344_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_344_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_345_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_345_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_346_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_346_biasIdentity_11:output:0"/device:CPU:0*
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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_16872499

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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_16873417

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

conv3d_346<
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
1:/ 2conv3d_342/kernel
: 2conv3d_342/bias
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
1:/ 2conv3d_343/kernel
: 2conv3d_343/bias
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
#:!@@ 2dense_72/kernel
:@ 2dense_72/bias
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
1:/ 2conv3d_344/kernel
: 2conv3d_344/bias
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
1:/ 2conv3d_345/kernel
: 2conv3d_345/bias
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
1:/ 2conv3d_346/kernel
: 2conv3d_346/bias
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
+__inference_model_72_layer_call_fn_16872657
+__inference_model_72_layer_call_fn_16873087
+__inference_model_72_layer_call_fn_16873116
+__inference_model_72_layer_call_fn_16872897�
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
F__inference_model_72_layer_call_and_return_conditional_losses_16873224
F__inference_model_72_layer_call_and_return_conditional_losses_16873332
F__inference_model_72_layer_call_and_return_conditional_losses_16872962
F__inference_model_72_layer_call_and_return_conditional_losses_16873027�
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
#__inference__wrapped_model_16872370input"�
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
6__inference_range_conversion_72_layer_call_fn_16873337�
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
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_16873349�
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
-__inference_conv3d_342_layer_call_fn_16873358�
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
H__inference_conv3d_342_layer_call_and_return_conditional_losses_16873369�
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
8__inference_average_pooling3d_135_layer_call_fn_16873374
8__inference_average_pooling3d_135_layer_call_fn_16873379�
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
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16873388
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16873397�
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
-__inference_conv3d_343_layer_call_fn_16873406�
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
H__inference_conv3d_343_layer_call_and_return_conditional_losses_16873417�
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
8__inference_average_pooling3d_136_layer_call_fn_16873422
8__inference_average_pooling3d_136_layer_call_fn_16873427�
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
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16873436
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16873445�
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
.__inference_reshape_144_layer_call_fn_16873450�
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
I__inference_reshape_144_layer_call_and_return_conditional_losses_16873462�
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
+__inference_dense_72_layer_call_fn_16873471�
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
F__inference_dense_72_layer_call_and_return_conditional_losses_16873482�
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
.__inference_reshape_145_layer_call_fn_16873487�
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
I__inference_reshape_145_layer_call_and_return_conditional_losses_16873502�
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
-__inference_conv3d_344_layer_call_fn_16873511�
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
H__inference_conv3d_344_layer_call_and_return_conditional_losses_16873522�
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
-__inference_conv3d_345_layer_call_fn_16873531�
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
H__inference_conv3d_345_layer_call_and_return_conditional_losses_16873542�
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
-__inference_conv3d_346_layer_call_fn_16873551�
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
H__inference_conv3d_346_layer_call_and_return_conditional_losses_16873561�
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
&__inference_signature_wrapper_16873058input"�
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
#__inference__wrapped_model_16872370�$%./<=JKTUZ[:�7
0�-
+�(
input���������
� "C�@
>

conv3d_3460�-

conv3d_346����������
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16873388�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_135_layer_call_and_return_conditional_losses_16873397p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_135_layer_call_fn_16873374�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_135_layer_call_fn_16873379c;�8
1�.
,�)
inputs���������
� "$�!����������
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16873436�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
S__inference_average_pooling3d_136_layer_call_and_return_conditional_losses_16873445p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
8__inference_average_pooling3d_136_layer_call_fn_16873422�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
8__inference_average_pooling3d_136_layer_call_fn_16873427c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_342_layer_call_and_return_conditional_losses_16873369t$%;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_342_layer_call_fn_16873358g$%;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_343_layer_call_and_return_conditional_losses_16873417t./;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_343_layer_call_fn_16873406g./;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_344_layer_call_and_return_conditional_losses_16873522tJK;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_344_layer_call_fn_16873511gJK;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_345_layer_call_and_return_conditional_losses_16873542tTU;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_345_layer_call_fn_16873531gTU;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_346_layer_call_and_return_conditional_losses_16873561tZ[;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_346_layer_call_fn_16873551gZ[;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_72_layer_call_and_return_conditional_losses_16873482\<=/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_72_layer_call_fn_16873471O<=/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_72_layer_call_and_return_conditional_losses_16872962�$%./<=JKTUZ[B�?
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
F__inference_model_72_layer_call_and_return_conditional_losses_16873027�$%./<=JKTUZ[B�?
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
F__inference_model_72_layer_call_and_return_conditional_losses_16873224�$%./<=JKTUZ[C�@
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
F__inference_model_72_layer_call_and_return_conditional_losses_16873332�$%./<=JKTUZ[C�@
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
+__inference_model_72_layer_call_fn_16872657x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_72_layer_call_fn_16872897x$%./<=JKTUZ[B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_72_layer_call_fn_16873087y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_72_layer_call_fn_16873116y$%./<=JKTUZ[C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_72_layer_call_and_return_conditional_losses_16873349t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_72_layer_call_fn_16873337g?�<
5�2
0�-

parameters���������
� "$�!����������
I__inference_reshape_144_layer_call_and_return_conditional_losses_16873462d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_144_layer_call_fn_16873450W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_145_layer_call_and_return_conditional_losses_16873502d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_145_layer_call_fn_16873487W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_16873058�$%./<=JKTUZ[C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_3460�-

conv3d_346���������