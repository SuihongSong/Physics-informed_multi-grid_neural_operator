»«
Хл
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
Ѕ
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
÷
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258чи
К
conv3d_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_169/kernel
Г
%conv3d_169/kernel/Read/ReadVariableOpReadVariableOpconv3d_169/kernel**
_output_shapes
:*
dtype0
v
conv3d_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_169/bias
o
#conv3d_169/bias/Read/ReadVariableOpReadVariableOpconv3d_169/bias*
_output_shapes
:*
dtype0
К
conv3d_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_170/kernel
Г
%conv3d_170/kernel/Read/ReadVariableOpReadVariableOpconv3d_170/kernel**
_output_shapes
:*
dtype0
v
conv3d_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_170/bias
o
#conv3d_170/bias/Read/ReadVariableOpReadVariableOpconv3d_170/bias*
_output_shapes
:*
dtype0
z
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_55/kernel
s
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel*
_output_shapes

:@@*
dtype0
r
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_55/bias
k
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
_output_shapes
:@*
dtype0
К
conv3d_171/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_171/kernel
Г
%conv3d_171/kernel/Read/ReadVariableOpReadVariableOpconv3d_171/kernel**
_output_shapes
:*
dtype0
v
conv3d_171/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_171/bias
o
#conv3d_171/bias/Read/ReadVariableOpReadVariableOpconv3d_171/bias*
_output_shapes
:*
dtype0
К
conv3d_172/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_172/kernel
Г
%conv3d_172/kernel/Read/ReadVariableOpReadVariableOpconv3d_172/kernel**
_output_shapes
:*
dtype0
v
conv3d_172/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_172/bias
o
#conv3d_172/bias/Read/ReadVariableOpReadVariableOpconv3d_172/bias*
_output_shapes
:*
dtype0
К
conv3d_173/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_173/kernel
Г
%conv3d_173/kernel/Read/ReadVariableOpReadVariableOpconv3d_173/kernel**
_output_shapes
:*
dtype0
v
conv3d_173/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_173/bias
o
#conv3d_173/bias/Read/ReadVariableOpReadVariableOpconv3d_173/bias*
_output_shapes
:*
dtype0

NoOpNoOp
ю-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*є-
valueѓ-Bђ- B•-
ґ
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
≠
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
≠
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
][
VARIABLE_VALUEconv3d_169/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_169/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
≠
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
≠
*	variables
olayer_regularization_losses

players
+trainable_variables
qnon_trainable_variables
rmetrics
slayer_metrics
,regularization_losses
][
VARIABLE_VALUEconv3d_170/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_170/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
≠
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
≠
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
∞
8	variables
~layer_regularization_losses

layers
9trainable_variables
Аnon_trainable_variables
Бmetrics
Вlayer_metrics
:regularization_losses
[Y
VARIABLE_VALUEdense_55/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
≤
>	variables
 Гlayer_regularization_losses
Дlayers
?trainable_variables
Еnon_trainable_variables
Жmetrics
Зlayer_metrics
@regularization_losses
 
 
 
≤
B	variables
 Иlayer_regularization_losses
Йlayers
Ctrainable_variables
Кnon_trainable_variables
Лmetrics
Мlayer_metrics
Dregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv3d_171/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_171/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1

J0
K1
 
≤
L	variables
 Нlayer_regularization_losses
Оlayers
Mtrainable_variables
Пnon_trainable_variables
Рmetrics
Сlayer_metrics
Nregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv3d_172/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_172/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

T0
U1
 
≤
V	variables
 Тlayer_regularization_losses
Уlayers
Wtrainable_variables
Фnon_trainable_variables
Хmetrics
Цlayer_metrics
Xregularization_losses
][
VARIABLE_VALUEconv3d_173/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_173/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
≤
\	variables
 Чlayer_regularization_losses
Шlayers
]trainable_variables
Щnon_trainable_variables
Ъmetrics
Ыlayer_metrics
^regularization_losses
 
Ѓ
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
Р
serving_default_inputPlaceholder*3
_output_shapes!
:€€€€€€€€€*
dtype0*(
shape:€€€€€€€€€
µ
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_169/kernelconv3d_169/biasconv3d_170/kernelconv3d_170/biasdense_55/kerneldense_55/biasconv3d_171/kernelconv3d_171/biasconv3d_172/kernelconv3d_172/biasconv3d_173/kernelconv3d_173/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В */
f*R(
&__inference_signature_wrapper_11882130
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ш
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_169/kernel/Read/ReadVariableOp#conv3d_169/bias/Read/ReadVariableOp%conv3d_170/kernel/Read/ReadVariableOp#conv3d_170/bias/Read/ReadVariableOp#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOp%conv3d_171/kernel/Read/ReadVariableOp#conv3d_171/bias/Read/ReadVariableOp%conv3d_172/kernel/Read/ReadVariableOp#conv3d_172/bias/Read/ReadVariableOp%conv3d_173/kernel/Read/ReadVariableOp#conv3d_173/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8В **
f%R#
!__inference__traced_save_11882692
Г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_169/kernelconv3d_169/biasconv3d_170/kernelconv3d_170/biasdense_55/kerneldense_55/biasconv3d_171/kernelconv3d_171/biasconv3d_172/kernelconv3d_172/biasconv3d_173/kernelconv3d_173/bias*
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
GPU2 *0,1,2,3J 8В *-
f(R&
$__inference__traced_restore_11882738ВУ
§
S
7__inference_average_pooling3d_58_layer_call_fn_11882494

inputs
identityЛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_118814852
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
й
J
.__inference_reshape_111_layer_call_fn_11882559

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_111_layer_call_and_return_conditional_losses_118816332
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_110_layer_call_and_return_conditional_losses_11882534

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
strided_slice/stack_2в
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
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_111_layer_call_and_return_conditional_losses_11882574

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
strided_slice/stack_2в
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
Reshape/shape/4‘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
и
Ё
&__inference_signature_wrapper_11882130	
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
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *,
f'R%
#__inference__wrapped_model_118814422
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€

_user_specified_nameinput
÷
Е
H__inference_conv3d_173_layer_call_and_return_conditional_losses_11882633

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
д

n
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11882508

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
¶
-__inference_conv3d_173_layer_call_fn_11882623

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_173_layer_call_and_return_conditional_losses_118816952
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
„	
q
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_11881525

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
:€€€€€€€€€2
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
:€€€€€€€€€2	
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
:€€€€€€€€€2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:_ [
3
_output_shapes!
:€€€€€€€€€
$
_user_specified_name
parameters
У
S
7__inference_average_pooling3d_58_layer_call_fn_11882499

inputs
identityз
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_118815852
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
ќ
Е
H__inference_conv3d_169_layer_call_and_return_conditional_losses_11881544

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
е^
і
F__inference_model_55_layer_call_and_return_conditional_losses_11882034	
input1
conv3d_169_11881983:!
conv3d_169_11881985:1
conv3d_170_11881989:!
conv3d_170_11881991:#
dense_55_11881996:@@
dense_55_11881998:@1
conv3d_171_11882010:!
conv3d_171_11882012:1
conv3d_172_11882023:!
conv3d_172_11882025:1
conv3d_173_11882028:!
conv3d_173_11882030:
identityИҐ"conv3d_169/StatefulPartitionedCallҐ"conv3d_170/StatefulPartitionedCallҐ"conv3d_171/StatefulPartitionedCallҐ"conv3d_172/StatefulPartitionedCallҐ"conv3d_173/StatefulPartitionedCallҐ dense_55/StatefulPartitionedCallµ
0tf.__operators__.getitem_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_108/strided_slice/stackє
2tf.__operators__.getitem_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_108/strided_slice/stack_1є
2tf.__operators__.getitem_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_108/strided_slice/stack_2С
*tf.__operators__.getitem_108/strided_sliceStridedSliceinput9tf.__operators__.getitem_108/strided_slice/stack:output:0;tf.__operators__.getitem_108/strided_slice/stack_1:output:0;tf.__operators__.getitem_108/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_108/strided_sliceї
#range_conversion_55/PartitionedCallPartitionedCall3tf.__operators__.getitem_108/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_118815252%
#range_conversion_55/PartitionedCallµ
0tf.__operators__.getitem_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_109/strided_slice/stackє
2tf.__operators__.getitem_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_109/strided_slice/stack_1є
2tf.__operators__.getitem_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_109/strided_slice/stack_2С
*tf.__operators__.getitem_109/strided_sliceStridedSliceinput9tf.__operators__.getitem_109/strided_slice/stack:output:0;tf.__operators__.getitem_109/strided_slice/stack_1:output:0;tf.__operators__.getitem_109/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_109/strided_slicex
tf.concat_111/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_111/concat/axisЖ
tf.concat_111/concatConcatV2,range_conversion_55/PartitionedCall:output:03tf.__operators__.getitem_109/strided_slice:output:0"tf.concat_111/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_111/concat“
"conv3d_169/StatefulPartitionedCallStatefulPartitionedCalltf.concat_111/concat:output:0conv3d_169_11881983conv3d_169_11881985*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_169_layer_call_and_return_conditional_losses_118815442$
"conv3d_169/StatefulPartitionedCallґ
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_118815582&
$average_pooling3d_57/PartitionedCallв
"conv3d_170/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_57/PartitionedCall:output:0conv3d_170_11881989conv3d_170_11881991*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_170_layer_call_and_return_conditional_losses_118815712$
"conv3d_170/StatefulPartitionedCallґ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_118815852&
$average_pooling3d_58/PartitionedCallС
reshape_110/PartitionedCallPartitionedCall-average_pooling3d_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_110_layer_call_and_return_conditional_losses_118815992
reshape_110/PartitionedCall√
 dense_55/StatefulPartitionedCallStatefulPartitionedCall$reshape_110/PartitionedCall:output:0dense_55_11881996dense_55_11881998*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_118816122"
 dense_55/StatefulPartitionedCallЩ
reshape_111/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_111_layer_call_and_return_conditional_losses_118816332
reshape_111/PartitionedCall•
tf.reshape_114/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_114/Reshape/shape“
tf.reshape_114/ReshapeReshape$reshape_111/PartitionedCall:output:0%tf.reshape_114/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_114/ReshapeЯ
tf.tile_57/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_57/Tile/multiplesє
tf.tile_57/TileTiletf.reshape_114/Reshape:output:0"tf.tile_57/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_57/TileЩ
tf.reshape_115/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_115/Reshape/shapeЇ
tf.reshape_115/ReshapeReshapetf.tile_57/Tile:output:0%tf.reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_115/Reshapex
tf.concat_112/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_112/concat/axisс
tf.concat_112/concatConcatV2tf.reshape_115/Reshape:output:0+conv3d_170/StatefulPartitionedCall:output:0"tf.concat_112/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_112/concat“
"conv3d_171/StatefulPartitionedCallStatefulPartitionedCalltf.concat_112/concat:output:0conv3d_171_11882010conv3d_171_11882012*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_171_layer_call_and_return_conditional_losses_118816542$
"conv3d_171/StatefulPartitionedCall•
tf.reshape_116/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_116/Reshape/shapeў
tf.reshape_116/ReshapeReshape+conv3d_171/StatefulPartitionedCall:output:0%tf.reshape_116/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_116/ReshapeЯ
tf.tile_58/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_58/Tile/multiplesє
tf.tile_58/TileTiletf.reshape_116/Reshape:output:0"tf.tile_58/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_58/TileЩ
tf.reshape_117/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_117/Reshape/shapeЇ
tf.reshape_117/ReshapeReshapetf.tile_58/Tile:output:0%tf.reshape_117/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_117/Reshapex
tf.concat_113/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_113/concat/axisс
tf.concat_113/concatConcatV2tf.reshape_117/Reshape:output:0+conv3d_169/StatefulPartitionedCall:output:0"tf.concat_113/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_113/concat“
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_113/concat:output:0conv3d_172_11882023conv3d_172_11882025*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_172_layer_call_and_return_conditional_losses_118816792$
"conv3d_172/StatefulPartitionedCallа
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0conv3d_173_11882028conv3d_173_11882030*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_173_layer_call_and_return_conditional_losses_118816952$
"conv3d_173/StatefulPartitionedCallТ
IdentityIdentity+conv3d_173/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity™
NoOpNoOp#^conv3d_169/StatefulPartitionedCall#^conv3d_170/StatefulPartitionedCall#^conv3d_171/StatefulPartitionedCall#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 2H
"conv3d_169/StatefulPartitionedCall"conv3d_169/StatefulPartitionedCall2H
"conv3d_170/StatefulPartitionedCall"conv3d_170/StatefulPartitionedCall2H
"conv3d_171/StatefulPartitionedCall"conv3d_171/StatefulPartitionedCall2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€

_user_specified_nameinput
Ѕ
¶
-__inference_conv3d_170_layer_call_fn_11882478

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_170_layer_call_and_return_conditional_losses_118815712
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ф
ч
F__inference_dense_55_layer_call_and_return_conditional_losses_11882554

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ќ
Е
H__inference_conv3d_171_layer_call_and_return_conditional_losses_11882594

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
й^
µ
F__inference_model_55_layer_call_and_return_conditional_losses_11881702

inputs1
conv3d_169_11881545:!
conv3d_169_11881547:1
conv3d_170_11881572:!
conv3d_170_11881574:#
dense_55_11881613:@@
dense_55_11881615:@1
conv3d_171_11881655:!
conv3d_171_11881657:1
conv3d_172_11881680:!
conv3d_172_11881682:1
conv3d_173_11881696:!
conv3d_173_11881698:
identityИҐ"conv3d_169/StatefulPartitionedCallҐ"conv3d_170/StatefulPartitionedCallҐ"conv3d_171/StatefulPartitionedCallҐ"conv3d_172/StatefulPartitionedCallҐ"conv3d_173/StatefulPartitionedCallҐ dense_55/StatefulPartitionedCallµ
0tf.__operators__.getitem_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_108/strided_slice/stackє
2tf.__operators__.getitem_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_108/strided_slice/stack_1є
2tf.__operators__.getitem_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_108/strided_slice/stack_2Т
*tf.__operators__.getitem_108/strided_sliceStridedSliceinputs9tf.__operators__.getitem_108/strided_slice/stack:output:0;tf.__operators__.getitem_108/strided_slice/stack_1:output:0;tf.__operators__.getitem_108/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_108/strided_sliceї
#range_conversion_55/PartitionedCallPartitionedCall3tf.__operators__.getitem_108/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_118815252%
#range_conversion_55/PartitionedCallµ
0tf.__operators__.getitem_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_109/strided_slice/stackє
2tf.__operators__.getitem_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_109/strided_slice/stack_1є
2tf.__operators__.getitem_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_109/strided_slice/stack_2Т
*tf.__operators__.getitem_109/strided_sliceStridedSliceinputs9tf.__operators__.getitem_109/strided_slice/stack:output:0;tf.__operators__.getitem_109/strided_slice/stack_1:output:0;tf.__operators__.getitem_109/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_109/strided_slicex
tf.concat_111/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_111/concat/axisЖ
tf.concat_111/concatConcatV2,range_conversion_55/PartitionedCall:output:03tf.__operators__.getitem_109/strided_slice:output:0"tf.concat_111/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_111/concat“
"conv3d_169/StatefulPartitionedCallStatefulPartitionedCalltf.concat_111/concat:output:0conv3d_169_11881545conv3d_169_11881547*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_169_layer_call_and_return_conditional_losses_118815442$
"conv3d_169/StatefulPartitionedCallґ
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_118815582&
$average_pooling3d_57/PartitionedCallв
"conv3d_170/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_57/PartitionedCall:output:0conv3d_170_11881572conv3d_170_11881574*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_170_layer_call_and_return_conditional_losses_118815712$
"conv3d_170/StatefulPartitionedCallґ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_118815852&
$average_pooling3d_58/PartitionedCallС
reshape_110/PartitionedCallPartitionedCall-average_pooling3d_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_110_layer_call_and_return_conditional_losses_118815992
reshape_110/PartitionedCall√
 dense_55/StatefulPartitionedCallStatefulPartitionedCall$reshape_110/PartitionedCall:output:0dense_55_11881613dense_55_11881615*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_118816122"
 dense_55/StatefulPartitionedCallЩ
reshape_111/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_111_layer_call_and_return_conditional_losses_118816332
reshape_111/PartitionedCall•
tf.reshape_114/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_114/Reshape/shape“
tf.reshape_114/ReshapeReshape$reshape_111/PartitionedCall:output:0%tf.reshape_114/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_114/ReshapeЯ
tf.tile_57/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_57/Tile/multiplesє
tf.tile_57/TileTiletf.reshape_114/Reshape:output:0"tf.tile_57/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_57/TileЩ
tf.reshape_115/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_115/Reshape/shapeЇ
tf.reshape_115/ReshapeReshapetf.tile_57/Tile:output:0%tf.reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_115/Reshapex
tf.concat_112/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_112/concat/axisс
tf.concat_112/concatConcatV2tf.reshape_115/Reshape:output:0+conv3d_170/StatefulPartitionedCall:output:0"tf.concat_112/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_112/concat“
"conv3d_171/StatefulPartitionedCallStatefulPartitionedCalltf.concat_112/concat:output:0conv3d_171_11881655conv3d_171_11881657*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_171_layer_call_and_return_conditional_losses_118816542$
"conv3d_171/StatefulPartitionedCall•
tf.reshape_116/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_116/Reshape/shapeў
tf.reshape_116/ReshapeReshape+conv3d_171/StatefulPartitionedCall:output:0%tf.reshape_116/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_116/ReshapeЯ
tf.tile_58/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_58/Tile/multiplesє
tf.tile_58/TileTiletf.reshape_116/Reshape:output:0"tf.tile_58/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_58/TileЩ
tf.reshape_117/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_117/Reshape/shapeЇ
tf.reshape_117/ReshapeReshapetf.tile_58/Tile:output:0%tf.reshape_117/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_117/Reshapex
tf.concat_113/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_113/concat/axisс
tf.concat_113/concatConcatV2tf.reshape_117/Reshape:output:0+conv3d_169/StatefulPartitionedCall:output:0"tf.concat_113/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_113/concat“
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_113/concat:output:0conv3d_172_11881680conv3d_172_11881682*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_172_layer_call_and_return_conditional_losses_118816792$
"conv3d_172/StatefulPartitionedCallа
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0conv3d_173_11881696conv3d_173_11881698*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_173_layer_call_and_return_conditional_losses_118816952$
"conv3d_173/StatefulPartitionedCallТ
IdentityIdentity+conv3d_173/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity™
NoOpNoOp#^conv3d_169/StatefulPartitionedCall#^conv3d_170/StatefulPartitionedCall#^conv3d_171/StatefulPartitionedCall#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 2H
"conv3d_169/StatefulPartitionedCall"conv3d_169/StatefulPartitionedCall2H
"conv3d_170/StatefulPartitionedCall"conv3d_170/StatefulPartitionedCall2H
"conv3d_171/StatefulPartitionedCall"conv3d_171/StatefulPartitionedCall2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
в7
ы
$__inference__traced_restore_11882738
file_prefix@
"assignvariableop_conv3d_169_kernel:0
"assignvariableop_1_conv3d_169_bias:B
$assignvariableop_2_conv3d_170_kernel:0
"assignvariableop_3_conv3d_170_bias:4
"assignvariableop_4_dense_55_kernel:@@.
 assignvariableop_5_dense_55_bias:@B
$assignvariableop_6_conv3d_171_kernel:0
"assignvariableop_7_conv3d_171_bias:B
$assignvariableop_8_conv3d_172_kernel:0
"assignvariableop_9_conv3d_172_bias:C
%assignvariableop_10_conv3d_173_kernel:1
#assignvariableop_11_conv3d_173_bias:
identity_13ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ї
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*«
valueљBЇB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesм
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

Identity°
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_169_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_169_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2©
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_170_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_170_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_55_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5•
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_55_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6©
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_171_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7І
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_171_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8©
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_172_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9І
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_172_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10≠
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_173_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ђ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_173_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpж
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12f
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_13ќ
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
Л	
n
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11882517

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
й
J
.__inference_reshape_110_layer_call_fn_11882522

inputs
identity“
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_110_layer_call_and_return_conditional_losses_118815992
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
¶
-__inference_conv3d_171_layer_call_fn_11882583

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_171_layer_call_and_return_conditional_losses_118816542
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
ќ
Е
H__inference_conv3d_172_layer_call_and_return_conditional_losses_11881679

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
„	
q
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_11882421

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
:€€€€€€€€€2
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
:€€€€€€€€€2	
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
:€€€€€€€€€2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:_ [
3
_output_shapes!
:€€€€€€€€€
$
_user_specified_name
parameters
Л	
n
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11882469

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
¶
-__inference_conv3d_169_layer_call_fn_11882430

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_169_layer_call_and_return_conditional_losses_118815442
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
’&
ґ
!__inference__traced_save_11882692
file_prefix0
,savev2_conv3d_169_kernel_read_readvariableop.
*savev2_conv3d_169_bias_read_readvariableop0
,savev2_conv3d_170_kernel_read_readvariableop.
*savev2_conv3d_170_bias_read_readvariableop.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop0
,savev2_conv3d_171_kernel_read_readvariableop.
*savev2_conv3d_171_bias_read_readvariableop0
,savev2_conv3d_172_kernel_read_readvariableop.
*savev2_conv3d_172_bias_read_readvariableop0
,savev2_conv3d_173_kernel_read_readvariableop.
*savev2_conv3d_173_bias_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameµ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*«
valueљBЇB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesҐ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesё
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_169_kernel_read_readvariableop*savev2_conv3d_169_bias_read_readvariableop,savev2_conv3d_170_kernel_read_readvariableop*savev2_conv3d_170_bias_read_readvariableop*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop,savev2_conv3d_171_kernel_read_readvariableop*savev2_conv3d_171_bias_read_readvariableop,savev2_conv3d_172_kernel_read_readvariableop*savev2_conv3d_172_bias_read_readvariableop,savev2_conv3d_173_kernel_read_readvariableop*savev2_conv3d_173_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*µ
_input_shapes£
†: :::::@@:@::::::: 2(
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
Ф
ч
F__inference_dense_55_layer_call_and_return_conditional_losses_11881612

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ќ
Е
H__inference_conv3d_170_layer_call_and_return_conditional_losses_11881571

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
»Ю
Н

F__inference_model_55_layer_call_and_return_conditional_losses_11882296

inputsG
)conv3d_169_conv3d_readvariableop_resource:8
*conv3d_169_biasadd_readvariableop_resource:G
)conv3d_170_conv3d_readvariableop_resource:8
*conv3d_170_biasadd_readvariableop_resource:9
'dense_55_matmul_readvariableop_resource:@@6
(dense_55_biasadd_readvariableop_resource:@G
)conv3d_171_conv3d_readvariableop_resource:8
*conv3d_171_biasadd_readvariableop_resource:G
)conv3d_172_conv3d_readvariableop_resource:8
*conv3d_172_biasadd_readvariableop_resource:G
)conv3d_173_conv3d_readvariableop_resource:8
*conv3d_173_biasadd_readvariableop_resource:
identityИҐ!conv3d_169/BiasAdd/ReadVariableOpҐ conv3d_169/Conv3D/ReadVariableOpҐ!conv3d_170/BiasAdd/ReadVariableOpҐ conv3d_170/Conv3D/ReadVariableOpҐ!conv3d_171/BiasAdd/ReadVariableOpҐ conv3d_171/Conv3D/ReadVariableOpҐ!conv3d_172/BiasAdd/ReadVariableOpҐ conv3d_172/Conv3D/ReadVariableOpҐ!conv3d_173/BiasAdd/ReadVariableOpҐ conv3d_173/Conv3D/ReadVariableOpҐdense_55/BiasAdd/ReadVariableOpҐdense_55/MatMul/ReadVariableOpµ
0tf.__operators__.getitem_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_108/strided_slice/stackє
2tf.__operators__.getitem_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_108/strided_slice/stack_1є
2tf.__operators__.getitem_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_108/strided_slice/stack_2Т
*tf.__operators__.getitem_108/strided_sliceStridedSliceinputs9tf.__operators__.getitem_108/strided_slice/stack:output:0;tf.__operators__.getitem_108/strided_slice/stack_1:output:0;tf.__operators__.getitem_108/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_108/strided_slice{
range_conversion_55/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_55/sub/y–
range_conversion_55/subSub3tf.__operators__.getitem_108/strided_slice:output:0"range_conversion_55/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/subГ
range_conversion_55/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_55/truediv/y»
range_conversion_55/truedivRealDivrange_conversion_55/sub:z:0&range_conversion_55/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/truediv{
range_conversion_55/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_55/mul/yЉ
range_conversion_55/mulMulrange_conversion_55/truediv:z:0"range_conversion_55/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/mul{
range_conversion_55/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
range_conversion_55/add/yЇ
range_conversion_55/addAddV2range_conversion_55/mul:z:0"range_conversion_55/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/addµ
0tf.__operators__.getitem_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_109/strided_slice/stackє
2tf.__operators__.getitem_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_109/strided_slice/stack_1є
2tf.__operators__.getitem_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_109/strided_slice/stack_2Т
*tf.__operators__.getitem_109/strided_sliceStridedSliceinputs9tf.__operators__.getitem_109/strided_slice/stack:output:0;tf.__operators__.getitem_109/strided_slice/stack_1:output:0;tf.__operators__.getitem_109/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_109/strided_slicex
tf.concat_111/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_111/concat/axisх
tf.concat_111/concatConcatV2range_conversion_55/add:z:03tf.__operators__.getitem_109/strided_slice:output:0"tf.concat_111/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_111/concatЇ
 conv3d_169/Conv3D/ReadVariableOpReadVariableOp)conv3d_169_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_169/Conv3D/ReadVariableOpш
conv3d_169/Conv3DConv3Dtf.concat_111/concat:output:0(conv3d_169/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_169/Conv3D≠
!conv3d_169/BiasAdd/ReadVariableOpReadVariableOp*conv3d_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_169/BiasAdd/ReadVariableOpѕ
conv3d_169/BiasAddBiasAddconv3d_169/Conv3D:output:0)conv3d_169/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_169/BiasAddС
conv3d_169/SoftplusSoftplusconv3d_169/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_169/SoftplusІ
#average_pooling3d_57/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_57/transpose/perm№
average_pooling3d_57/transpose	Transpose!conv3d_169/Softplus:activations:0,average_pooling3d_57/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_57/transposeн
average_pooling3d_57/AvgPool3D	AvgPool3D"average_pooling3d_57/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_57/AvgPool3DЂ
%average_pooling3d_57/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_57/transpose_1/permи
 average_pooling3d_57/transpose_1	Transpose'average_pooling3d_57/AvgPool3D:output:0.average_pooling3d_57/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_57/transpose_1Ї
 conv3d_170/Conv3D/ReadVariableOpReadVariableOp)conv3d_170_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_170/Conv3D/ReadVariableOp€
conv3d_170/Conv3DConv3D$average_pooling3d_57/transpose_1:y:0(conv3d_170/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_170/Conv3D≠
!conv3d_170/BiasAdd/ReadVariableOpReadVariableOp*conv3d_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_170/BiasAdd/ReadVariableOpѕ
conv3d_170/BiasAddBiasAddconv3d_170/Conv3D:output:0)conv3d_170/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_170/BiasAddС
conv3d_170/SoftplusSoftplusconv3d_170/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_170/SoftplusІ
#average_pooling3d_58/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_58/transpose/perm№
average_pooling3d_58/transpose	Transpose!conv3d_170/Softplus:activations:0,average_pooling3d_58/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_58/transposeн
average_pooling3d_58/AvgPool3D	AvgPool3D"average_pooling3d_58/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_58/AvgPool3DЂ
%average_pooling3d_58/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_58/transpose_1/permи
 average_pooling3d_58/transpose_1	Transpose'average_pooling3d_58/AvgPool3D:output:0.average_pooling3d_58/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_58/transpose_1z
reshape_110/ShapeShape$average_pooling3d_58/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_110/ShapeМ
reshape_110/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_110/strided_slice/stackР
!reshape_110/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_110/strided_slice/stack_1Р
!reshape_110/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_110/strided_slice/stack_2™
reshape_110/strided_sliceStridedSlicereshape_110/Shape:output:0(reshape_110/strided_slice/stack:output:0*reshape_110/strided_slice/stack_1:output:0*reshape_110/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_110/strided_slice|
reshape_110/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_110/Reshape/shape/1ґ
reshape_110/Reshape/shapePack"reshape_110/strided_slice:output:0$reshape_110/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_110/Reshape/shape±
reshape_110/ReshapeReshape$average_pooling3d_58/transpose_1:y:0"reshape_110/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
reshape_110/Reshape®
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_55/MatMul/ReadVariableOp§
dense_55/MatMulMatMulreshape_110/Reshape:output:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_55/MatMulІ
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_55/BiasAdd/ReadVariableOp•
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_55/BiasAdd
dense_55/SoftplusSoftplusdense_55/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_55/Softplusu
reshape_111/ShapeShapedense_55/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_111/ShapeМ
reshape_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_111/strided_slice/stackР
!reshape_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_111/strided_slice/stack_1Р
!reshape_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_111/strided_slice/stack_2™
reshape_111/strided_sliceStridedSlicereshape_111/Shape:output:0(reshape_111/strided_slice/stack:output:0*reshape_111/strided_slice/stack_1:output:0*reshape_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_111/strided_slice|
reshape_111/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/1|
reshape_111/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/2|
reshape_111/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/3|
reshape_111/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/4®
reshape_111/Reshape/shapePack"reshape_111/strided_slice:output:0$reshape_111/Reshape/shape/1:output:0$reshape_111/Reshape/shape/2:output:0$reshape_111/Reshape/shape/3:output:0$reshape_111/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_111/Reshape/shapeЄ
reshape_111/ReshapeReshapedense_55/Softplus:activations:0"reshape_111/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
reshape_111/Reshape•
tf.reshape_114/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_114/Reshape/shape 
tf.reshape_114/ReshapeReshapereshape_111/Reshape:output:0%tf.reshape_114/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_114/ReshapeЯ
tf.tile_57/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_57/Tile/multiplesє
tf.tile_57/TileTiletf.reshape_114/Reshape:output:0"tf.tile_57/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_57/TileЩ
tf.reshape_115/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_115/Reshape/shapeЇ
tf.reshape_115/ReshapeReshapetf.tile_57/Tile:output:0%tf.reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_115/Reshapex
tf.concat_112/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_112/concat/axisз
tf.concat_112/concatConcatV2tf.reshape_115/Reshape:output:0!conv3d_170/Softplus:activations:0"tf.concat_112/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_112/concatЇ
 conv3d_171/Conv3D/ReadVariableOpReadVariableOp)conv3d_171_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_171/Conv3D/ReadVariableOpш
conv3d_171/Conv3DConv3Dtf.concat_112/concat:output:0(conv3d_171/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_171/Conv3D≠
!conv3d_171/BiasAdd/ReadVariableOpReadVariableOp*conv3d_171_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_171/BiasAdd/ReadVariableOpѕ
conv3d_171/BiasAddBiasAddconv3d_171/Conv3D:output:0)conv3d_171/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_171/BiasAddС
conv3d_171/SoftplusSoftplusconv3d_171/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_171/Softplus•
tf.reshape_116/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_116/Reshape/shapeѕ
tf.reshape_116/ReshapeReshape!conv3d_171/Softplus:activations:0%tf.reshape_116/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_116/ReshapeЯ
tf.tile_58/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_58/Tile/multiplesє
tf.tile_58/TileTiletf.reshape_116/Reshape:output:0"tf.tile_58/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_58/TileЩ
tf.reshape_117/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_117/Reshape/shapeЇ
tf.reshape_117/ReshapeReshapetf.tile_58/Tile:output:0%tf.reshape_117/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_117/Reshapex
tf.concat_113/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_113/concat/axisз
tf.concat_113/concatConcatV2tf.reshape_117/Reshape:output:0!conv3d_169/Softplus:activations:0"tf.concat_113/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_113/concatЇ
 conv3d_172/Conv3D/ReadVariableOpReadVariableOp)conv3d_172_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_172/Conv3D/ReadVariableOpш
conv3d_172/Conv3DConv3Dtf.concat_113/concat:output:0(conv3d_172/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_172/Conv3D≠
!conv3d_172/BiasAdd/ReadVariableOpReadVariableOp*conv3d_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_172/BiasAdd/ReadVariableOpѕ
conv3d_172/BiasAddBiasAddconv3d_172/Conv3D:output:0)conv3d_172/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_172/BiasAddС
conv3d_172/SoftplusSoftplusconv3d_172/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_172/SoftplusЇ
 conv3d_173/Conv3D/ReadVariableOpReadVariableOp)conv3d_173_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_173/Conv3D/ReadVariableOpь
conv3d_173/Conv3DConv3D!conv3d_172/Softplus:activations:0(conv3d_173/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_173/Conv3D≠
!conv3d_173/BiasAdd/ReadVariableOpReadVariableOp*conv3d_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_173/BiasAdd/ReadVariableOpѕ
conv3d_173/BiasAddBiasAddconv3d_173/Conv3D:output:0)conv3d_173/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_173/BiasAddВ
IdentityIdentityconv3d_173/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityф
NoOpNoOp"^conv3d_169/BiasAdd/ReadVariableOp!^conv3d_169/Conv3D/ReadVariableOp"^conv3d_170/BiasAdd/ReadVariableOp!^conv3d_170/Conv3D/ReadVariableOp"^conv3d_171/BiasAdd/ReadVariableOp!^conv3d_171/Conv3D/ReadVariableOp"^conv3d_172/BiasAdd/ReadVariableOp!^conv3d_172/Conv3D/ReadVariableOp"^conv3d_173/BiasAdd/ReadVariableOp!^conv3d_173/Conv3D/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 2F
!conv3d_169/BiasAdd/ReadVariableOp!conv3d_169/BiasAdd/ReadVariableOp2D
 conv3d_169/Conv3D/ReadVariableOp conv3d_169/Conv3D/ReadVariableOp2F
!conv3d_170/BiasAdd/ReadVariableOp!conv3d_170/BiasAdd/ReadVariableOp2D
 conv3d_170/Conv3D/ReadVariableOp conv3d_170/Conv3D/ReadVariableOp2F
!conv3d_171/BiasAdd/ReadVariableOp!conv3d_171/BiasAdd/ReadVariableOp2D
 conv3d_171/Conv3D/ReadVariableOp conv3d_171/Conv3D/ReadVariableOp2F
!conv3d_172/BiasAdd/ReadVariableOp!conv3d_172/BiasAdd/ReadVariableOp2D
 conv3d_172/Conv3D/ReadVariableOp conv3d_172/Conv3D/ReadVariableOp2F
!conv3d_173/BiasAdd/ReadVariableOp!conv3d_173/BiasAdd/ReadVariableOp2D
 conv3d_173/Conv3D/ReadVariableOp conv3d_173/Conv3D/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
У
S
7__inference_average_pooling3d_57_layer_call_fn_11882451

inputs
identityз
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_118815582
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
ПЈ
Ѕ
#__inference__wrapped_model_11881442	
inputP
2model_55_conv3d_169_conv3d_readvariableop_resource:A
3model_55_conv3d_169_biasadd_readvariableop_resource:P
2model_55_conv3d_170_conv3d_readvariableop_resource:A
3model_55_conv3d_170_biasadd_readvariableop_resource:B
0model_55_dense_55_matmul_readvariableop_resource:@@?
1model_55_dense_55_biasadd_readvariableop_resource:@P
2model_55_conv3d_171_conv3d_readvariableop_resource:A
3model_55_conv3d_171_biasadd_readvariableop_resource:P
2model_55_conv3d_172_conv3d_readvariableop_resource:A
3model_55_conv3d_172_biasadd_readvariableop_resource:P
2model_55_conv3d_173_conv3d_readvariableop_resource:A
3model_55_conv3d_173_biasadd_readvariableop_resource:
identityИҐ*model_55/conv3d_169/BiasAdd/ReadVariableOpҐ)model_55/conv3d_169/Conv3D/ReadVariableOpҐ*model_55/conv3d_170/BiasAdd/ReadVariableOpҐ)model_55/conv3d_170/Conv3D/ReadVariableOpҐ*model_55/conv3d_171/BiasAdd/ReadVariableOpҐ)model_55/conv3d_171/Conv3D/ReadVariableOpҐ*model_55/conv3d_172/BiasAdd/ReadVariableOpҐ)model_55/conv3d_172/Conv3D/ReadVariableOpҐ*model_55/conv3d_173/BiasAdd/ReadVariableOpҐ)model_55/conv3d_173/Conv3D/ReadVariableOpҐ(model_55/dense_55/BiasAdd/ReadVariableOpҐ'model_55/dense_55/MatMul/ReadVariableOp«
9model_55/tf.__operators__.getitem_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_55/tf.__operators__.getitem_108/strided_slice/stackЋ
;model_55/tf.__operators__.getitem_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_55/tf.__operators__.getitem_108/strided_slice/stack_1Ћ
;model_55/tf.__operators__.getitem_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_55/tf.__operators__.getitem_108/strided_slice/stack_2Њ
3model_55/tf.__operators__.getitem_108/strided_sliceStridedSliceinputBmodel_55/tf.__operators__.getitem_108/strided_slice/stack:output:0Dmodel_55/tf.__operators__.getitem_108/strided_slice/stack_1:output:0Dmodel_55/tf.__operators__.getitem_108/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask25
3model_55/tf.__operators__.getitem_108/strided_sliceН
"model_55/range_conversion_55/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_55/range_conversion_55/sub/yф
 model_55/range_conversion_55/subSub<model_55/tf.__operators__.getitem_108/strided_slice:output:0+model_55/range_conversion_55/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 model_55/range_conversion_55/subХ
&model_55/range_conversion_55/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_55/range_conversion_55/truediv/yм
$model_55/range_conversion_55/truedivRealDiv$model_55/range_conversion_55/sub:z:0/model_55/range_conversion_55/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2&
$model_55/range_conversion_55/truedivН
"model_55/range_conversion_55/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_55/range_conversion_55/mul/yа
 model_55/range_conversion_55/mulMul(model_55/range_conversion_55/truediv:z:0+model_55/range_conversion_55/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 model_55/range_conversion_55/mulН
"model_55/range_conversion_55/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2$
"model_55/range_conversion_55/add/yё
 model_55/range_conversion_55/addAddV2$model_55/range_conversion_55/mul:z:0+model_55/range_conversion_55/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 model_55/range_conversion_55/add«
9model_55/tf.__operators__.getitem_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_55/tf.__operators__.getitem_109/strided_slice/stackЋ
;model_55/tf.__operators__.getitem_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_55/tf.__operators__.getitem_109/strided_slice/stack_1Ћ
;model_55/tf.__operators__.getitem_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_55/tf.__operators__.getitem_109/strided_slice/stack_2Њ
3model_55/tf.__operators__.getitem_109/strided_sliceStridedSliceinputBmodel_55/tf.__operators__.getitem_109/strided_slice/stack:output:0Dmodel_55/tf.__operators__.getitem_109/strided_slice/stack_1:output:0Dmodel_55/tf.__operators__.getitem_109/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask25
3model_55/tf.__operators__.getitem_109/strided_sliceК
"model_55/tf.concat_111/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_55/tf.concat_111/concat/axisҐ
model_55/tf.concat_111/concatConcatV2$model_55/range_conversion_55/add:z:0<model_55/tf.__operators__.getitem_109/strided_slice:output:0+model_55/tf.concat_111/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/tf.concat_111/concat’
)model_55/conv3d_169/Conv3D/ReadVariableOpReadVariableOp2model_55_conv3d_169_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_55/conv3d_169/Conv3D/ReadVariableOpЬ
model_55/conv3d_169/Conv3DConv3D&model_55/tf.concat_111/concat:output:01model_55/conv3d_169/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_55/conv3d_169/Conv3D»
*model_55/conv3d_169/BiasAdd/ReadVariableOpReadVariableOp3model_55_conv3d_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_55/conv3d_169/BiasAdd/ReadVariableOpу
model_55/conv3d_169/BiasAddBiasAdd#model_55/conv3d_169/Conv3D:output:02model_55/conv3d_169/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_55/conv3d_169/BiasAddђ
model_55/conv3d_169/SoftplusSoftplus$model_55/conv3d_169/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/conv3d_169/Softplusє
,model_55/average_pooling3d_57/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_55/average_pooling3d_57/transpose/permА
'model_55/average_pooling3d_57/transpose	Transpose*model_55/conv3d_169/Softplus:activations:05model_55/average_pooling3d_57/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'model_55/average_pooling3d_57/transposeИ
'model_55/average_pooling3d_57/AvgPool3D	AvgPool3D+model_55/average_pooling3d_57/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_55/average_pooling3d_57/AvgPool3Dљ
.model_55/average_pooling3d_57/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_55/average_pooling3d_57/transpose_1/permМ
)model_55/average_pooling3d_57/transpose_1	Transpose0model_55/average_pooling3d_57/AvgPool3D:output:07model_55/average_pooling3d_57/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_55/average_pooling3d_57/transpose_1’
)model_55/conv3d_170/Conv3D/ReadVariableOpReadVariableOp2model_55_conv3d_170_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_55/conv3d_170/Conv3D/ReadVariableOp£
model_55/conv3d_170/Conv3DConv3D-model_55/average_pooling3d_57/transpose_1:y:01model_55/conv3d_170/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_55/conv3d_170/Conv3D»
*model_55/conv3d_170/BiasAdd/ReadVariableOpReadVariableOp3model_55_conv3d_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_55/conv3d_170/BiasAdd/ReadVariableOpу
model_55/conv3d_170/BiasAddBiasAdd#model_55/conv3d_170/Conv3D:output:02model_55/conv3d_170/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_55/conv3d_170/BiasAddђ
model_55/conv3d_170/SoftplusSoftplus$model_55/conv3d_170/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/conv3d_170/Softplusє
,model_55/average_pooling3d_58/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_55/average_pooling3d_58/transpose/permА
'model_55/average_pooling3d_58/transpose	Transpose*model_55/conv3d_170/Softplus:activations:05model_55/average_pooling3d_58/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'model_55/average_pooling3d_58/transposeИ
'model_55/average_pooling3d_58/AvgPool3D	AvgPool3D+model_55/average_pooling3d_58/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_55/average_pooling3d_58/AvgPool3Dљ
.model_55/average_pooling3d_58/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_55/average_pooling3d_58/transpose_1/permМ
)model_55/average_pooling3d_58/transpose_1	Transpose0model_55/average_pooling3d_58/AvgPool3D:output:07model_55/average_pooling3d_58/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_55/average_pooling3d_58/transpose_1Х
model_55/reshape_110/ShapeShape-model_55/average_pooling3d_58/transpose_1:y:0*
T0*
_output_shapes
:2
model_55/reshape_110/ShapeЮ
(model_55/reshape_110/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_55/reshape_110/strided_slice/stackҐ
*model_55/reshape_110/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_55/reshape_110/strided_slice/stack_1Ґ
*model_55/reshape_110/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_55/reshape_110/strided_slice/stack_2а
"model_55/reshape_110/strided_sliceStridedSlice#model_55/reshape_110/Shape:output:01model_55/reshape_110/strided_slice/stack:output:03model_55/reshape_110/strided_slice/stack_1:output:03model_55/reshape_110/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_55/reshape_110/strided_sliceО
$model_55/reshape_110/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_55/reshape_110/Reshape/shape/1Џ
"model_55/reshape_110/Reshape/shapePack+model_55/reshape_110/strided_slice:output:0-model_55/reshape_110/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_55/reshape_110/Reshape/shape’
model_55/reshape_110/ReshapeReshape-model_55/average_pooling3d_58/transpose_1:y:0+model_55/reshape_110/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_55/reshape_110/Reshape√
'model_55/dense_55/MatMul/ReadVariableOpReadVariableOp0model_55_dense_55_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_55/dense_55/MatMul/ReadVariableOp»
model_55/dense_55/MatMulMatMul%model_55/reshape_110/Reshape:output:0/model_55/dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_55/dense_55/MatMul¬
(model_55/dense_55/BiasAdd/ReadVariableOpReadVariableOp1model_55_dense_55_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_55/dense_55/BiasAdd/ReadVariableOp…
model_55/dense_55/BiasAddBiasAdd"model_55/dense_55/MatMul:product:00model_55/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_55/dense_55/BiasAddЪ
model_55/dense_55/SoftplusSoftplus"model_55/dense_55/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_55/dense_55/SoftplusР
model_55/reshape_111/ShapeShape(model_55/dense_55/Softplus:activations:0*
T0*
_output_shapes
:2
model_55/reshape_111/ShapeЮ
(model_55/reshape_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_55/reshape_111/strided_slice/stackҐ
*model_55/reshape_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_55/reshape_111/strided_slice/stack_1Ґ
*model_55/reshape_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_55/reshape_111/strided_slice/stack_2а
"model_55/reshape_111/strided_sliceStridedSlice#model_55/reshape_111/Shape:output:01model_55/reshape_111/strided_slice/stack:output:03model_55/reshape_111/strided_slice/stack_1:output:03model_55/reshape_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_55/reshape_111/strided_sliceО
$model_55/reshape_111/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_55/reshape_111/Reshape/shape/1О
$model_55/reshape_111/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_55/reshape_111/Reshape/shape/2О
$model_55/reshape_111/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_55/reshape_111/Reshape/shape/3О
$model_55/reshape_111/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_55/reshape_111/Reshape/shape/4з
"model_55/reshape_111/Reshape/shapePack+model_55/reshape_111/strided_slice:output:0-model_55/reshape_111/Reshape/shape/1:output:0-model_55/reshape_111/Reshape/shape/2:output:0-model_55/reshape_111/Reshape/shape/3:output:0-model_55/reshape_111/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_55/reshape_111/Reshape/shape№
model_55/reshape_111/ReshapeReshape(model_55/dense_55/Softplus:activations:0+model_55/reshape_111/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/reshape_111/ReshapeЈ
%model_55/tf.reshape_114/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_55/tf.reshape_114/Reshape/shapeо
model_55/tf.reshape_114/ReshapeReshape%model_55/reshape_111/Reshape:output:0.model_55/tf.reshape_114/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_55/tf.reshape_114/Reshape±
"model_55/tf.tile_57/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_55/tf.tile_57/Tile/multiplesЁ
model_55/tf.tile_57/TileTile(model_55/tf.reshape_114/Reshape:output:0+model_55/tf.tile_57/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_55/tf.tile_57/TileЂ
%model_55/tf.reshape_115/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2'
%model_55/tf.reshape_115/Reshape/shapeё
model_55/tf.reshape_115/ReshapeReshape!model_55/tf.tile_57/Tile:output:0.model_55/tf.reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2!
model_55/tf.reshape_115/ReshapeК
"model_55/tf.concat_112/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_55/tf.concat_112/concat/axisФ
model_55/tf.concat_112/concatConcatV2(model_55/tf.reshape_115/Reshape:output:0*model_55/conv3d_170/Softplus:activations:0+model_55/tf.concat_112/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/tf.concat_112/concat’
)model_55/conv3d_171/Conv3D/ReadVariableOpReadVariableOp2model_55_conv3d_171_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_55/conv3d_171/Conv3D/ReadVariableOpЬ
model_55/conv3d_171/Conv3DConv3D&model_55/tf.concat_112/concat:output:01model_55/conv3d_171/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_55/conv3d_171/Conv3D»
*model_55/conv3d_171/BiasAdd/ReadVariableOpReadVariableOp3model_55_conv3d_171_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_55/conv3d_171/BiasAdd/ReadVariableOpу
model_55/conv3d_171/BiasAddBiasAdd#model_55/conv3d_171/Conv3D:output:02model_55/conv3d_171/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_55/conv3d_171/BiasAddђ
model_55/conv3d_171/SoftplusSoftplus$model_55/conv3d_171/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/conv3d_171/SoftplusЈ
%model_55/tf.reshape_116/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_55/tf.reshape_116/Reshape/shapeу
model_55/tf.reshape_116/ReshapeReshape*model_55/conv3d_171/Softplus:activations:0.model_55/tf.reshape_116/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_55/tf.reshape_116/Reshape±
"model_55/tf.tile_58/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_55/tf.tile_58/Tile/multiplesЁ
model_55/tf.tile_58/TileTile(model_55/tf.reshape_116/Reshape:output:0+model_55/tf.tile_58/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_55/tf.tile_58/TileЂ
%model_55/tf.reshape_117/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2'
%model_55/tf.reshape_117/Reshape/shapeё
model_55/tf.reshape_117/ReshapeReshape!model_55/tf.tile_58/Tile:output:0.model_55/tf.reshape_117/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2!
model_55/tf.reshape_117/ReshapeК
"model_55/tf.concat_113/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_55/tf.concat_113/concat/axisФ
model_55/tf.concat_113/concatConcatV2(model_55/tf.reshape_117/Reshape:output:0*model_55/conv3d_169/Softplus:activations:0+model_55/tf.concat_113/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/tf.concat_113/concat’
)model_55/conv3d_172/Conv3D/ReadVariableOpReadVariableOp2model_55_conv3d_172_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_55/conv3d_172/Conv3D/ReadVariableOpЬ
model_55/conv3d_172/Conv3DConv3D&model_55/tf.concat_113/concat:output:01model_55/conv3d_172/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_55/conv3d_172/Conv3D»
*model_55/conv3d_172/BiasAdd/ReadVariableOpReadVariableOp3model_55_conv3d_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_55/conv3d_172/BiasAdd/ReadVariableOpу
model_55/conv3d_172/BiasAddBiasAdd#model_55/conv3d_172/Conv3D:output:02model_55/conv3d_172/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_55/conv3d_172/BiasAddђ
model_55/conv3d_172/SoftplusSoftplus$model_55/conv3d_172/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_55/conv3d_172/Softplus’
)model_55/conv3d_173/Conv3D/ReadVariableOpReadVariableOp2model_55_conv3d_173_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_55/conv3d_173/Conv3D/ReadVariableOp†
model_55/conv3d_173/Conv3DConv3D*model_55/conv3d_172/Softplus:activations:01model_55/conv3d_173/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_55/conv3d_173/Conv3D»
*model_55/conv3d_173/BiasAdd/ReadVariableOpReadVariableOp3model_55_conv3d_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_55/conv3d_173/BiasAdd/ReadVariableOpу
model_55/conv3d_173/BiasAddBiasAdd#model_55/conv3d_173/Conv3D:output:02model_55/conv3d_173/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_55/conv3d_173/BiasAddЛ
IdentityIdentity$model_55/conv3d_173/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityа
NoOpNoOp+^model_55/conv3d_169/BiasAdd/ReadVariableOp*^model_55/conv3d_169/Conv3D/ReadVariableOp+^model_55/conv3d_170/BiasAdd/ReadVariableOp*^model_55/conv3d_170/Conv3D/ReadVariableOp+^model_55/conv3d_171/BiasAdd/ReadVariableOp*^model_55/conv3d_171/Conv3D/ReadVariableOp+^model_55/conv3d_172/BiasAdd/ReadVariableOp*^model_55/conv3d_172/Conv3D/ReadVariableOp+^model_55/conv3d_173/BiasAdd/ReadVariableOp*^model_55/conv3d_173/Conv3D/ReadVariableOp)^model_55/dense_55/BiasAdd/ReadVariableOp(^model_55/dense_55/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 2X
*model_55/conv3d_169/BiasAdd/ReadVariableOp*model_55/conv3d_169/BiasAdd/ReadVariableOp2V
)model_55/conv3d_169/Conv3D/ReadVariableOp)model_55/conv3d_169/Conv3D/ReadVariableOp2X
*model_55/conv3d_170/BiasAdd/ReadVariableOp*model_55/conv3d_170/BiasAdd/ReadVariableOp2V
)model_55/conv3d_170/Conv3D/ReadVariableOp)model_55/conv3d_170/Conv3D/ReadVariableOp2X
*model_55/conv3d_171/BiasAdd/ReadVariableOp*model_55/conv3d_171/BiasAdd/ReadVariableOp2V
)model_55/conv3d_171/Conv3D/ReadVariableOp)model_55/conv3d_171/Conv3D/ReadVariableOp2X
*model_55/conv3d_172/BiasAdd/ReadVariableOp*model_55/conv3d_172/BiasAdd/ReadVariableOp2V
)model_55/conv3d_172/Conv3D/ReadVariableOp)model_55/conv3d_172/Conv3D/ReadVariableOp2X
*model_55/conv3d_173/BiasAdd/ReadVariableOp*model_55/conv3d_173/BiasAdd/ReadVariableOp2V
)model_55/conv3d_173/Conv3D/ReadVariableOp)model_55/conv3d_173/Conv3D/ReadVariableOp2T
(model_55/dense_55/BiasAdd/ReadVariableOp(model_55/dense_55/BiasAdd/ReadVariableOp2R
'model_55/dense_55/MatMul/ReadVariableOp'model_55/dense_55/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:€€€€€€€€€

_user_specified_nameinput
У
г
+__inference_model_55_layer_call_fn_11882159

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
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_55_layer_call_and_return_conditional_losses_118817022
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Л	
n
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11881585

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
»Ю
Н

F__inference_model_55_layer_call_and_return_conditional_losses_11882404

inputsG
)conv3d_169_conv3d_readvariableop_resource:8
*conv3d_169_biasadd_readvariableop_resource:G
)conv3d_170_conv3d_readvariableop_resource:8
*conv3d_170_biasadd_readvariableop_resource:9
'dense_55_matmul_readvariableop_resource:@@6
(dense_55_biasadd_readvariableop_resource:@G
)conv3d_171_conv3d_readvariableop_resource:8
*conv3d_171_biasadd_readvariableop_resource:G
)conv3d_172_conv3d_readvariableop_resource:8
*conv3d_172_biasadd_readvariableop_resource:G
)conv3d_173_conv3d_readvariableop_resource:8
*conv3d_173_biasadd_readvariableop_resource:
identityИҐ!conv3d_169/BiasAdd/ReadVariableOpҐ conv3d_169/Conv3D/ReadVariableOpҐ!conv3d_170/BiasAdd/ReadVariableOpҐ conv3d_170/Conv3D/ReadVariableOpҐ!conv3d_171/BiasAdd/ReadVariableOpҐ conv3d_171/Conv3D/ReadVariableOpҐ!conv3d_172/BiasAdd/ReadVariableOpҐ conv3d_172/Conv3D/ReadVariableOpҐ!conv3d_173/BiasAdd/ReadVariableOpҐ conv3d_173/Conv3D/ReadVariableOpҐdense_55/BiasAdd/ReadVariableOpҐdense_55/MatMul/ReadVariableOpµ
0tf.__operators__.getitem_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_108/strided_slice/stackє
2tf.__operators__.getitem_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_108/strided_slice/stack_1є
2tf.__operators__.getitem_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_108/strided_slice/stack_2Т
*tf.__operators__.getitem_108/strided_sliceStridedSliceinputs9tf.__operators__.getitem_108/strided_slice/stack:output:0;tf.__operators__.getitem_108/strided_slice/stack_1:output:0;tf.__operators__.getitem_108/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_108/strided_slice{
range_conversion_55/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_55/sub/y–
range_conversion_55/subSub3tf.__operators__.getitem_108/strided_slice:output:0"range_conversion_55/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/subГ
range_conversion_55/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_55/truediv/y»
range_conversion_55/truedivRealDivrange_conversion_55/sub:z:0&range_conversion_55/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/truediv{
range_conversion_55/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_55/mul/yЉ
range_conversion_55/mulMulrange_conversion_55/truediv:z:0"range_conversion_55/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/mul{
range_conversion_55/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
range_conversion_55/add/yЇ
range_conversion_55/addAddV2range_conversion_55/mul:z:0"range_conversion_55/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
range_conversion_55/addµ
0tf.__operators__.getitem_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_109/strided_slice/stackє
2tf.__operators__.getitem_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_109/strided_slice/stack_1є
2tf.__operators__.getitem_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_109/strided_slice/stack_2Т
*tf.__operators__.getitem_109/strided_sliceStridedSliceinputs9tf.__operators__.getitem_109/strided_slice/stack:output:0;tf.__operators__.getitem_109/strided_slice/stack_1:output:0;tf.__operators__.getitem_109/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_109/strided_slicex
tf.concat_111/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_111/concat/axisх
tf.concat_111/concatConcatV2range_conversion_55/add:z:03tf.__operators__.getitem_109/strided_slice:output:0"tf.concat_111/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_111/concatЇ
 conv3d_169/Conv3D/ReadVariableOpReadVariableOp)conv3d_169_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_169/Conv3D/ReadVariableOpш
conv3d_169/Conv3DConv3Dtf.concat_111/concat:output:0(conv3d_169/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_169/Conv3D≠
!conv3d_169/BiasAdd/ReadVariableOpReadVariableOp*conv3d_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_169/BiasAdd/ReadVariableOpѕ
conv3d_169/BiasAddBiasAddconv3d_169/Conv3D:output:0)conv3d_169/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_169/BiasAddС
conv3d_169/SoftplusSoftplusconv3d_169/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_169/SoftplusІ
#average_pooling3d_57/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_57/transpose/perm№
average_pooling3d_57/transpose	Transpose!conv3d_169/Softplus:activations:0,average_pooling3d_57/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_57/transposeн
average_pooling3d_57/AvgPool3D	AvgPool3D"average_pooling3d_57/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_57/AvgPool3DЂ
%average_pooling3d_57/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_57/transpose_1/permи
 average_pooling3d_57/transpose_1	Transpose'average_pooling3d_57/AvgPool3D:output:0.average_pooling3d_57/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_57/transpose_1Ї
 conv3d_170/Conv3D/ReadVariableOpReadVariableOp)conv3d_170_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_170/Conv3D/ReadVariableOp€
conv3d_170/Conv3DConv3D$average_pooling3d_57/transpose_1:y:0(conv3d_170/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_170/Conv3D≠
!conv3d_170/BiasAdd/ReadVariableOpReadVariableOp*conv3d_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_170/BiasAdd/ReadVariableOpѕ
conv3d_170/BiasAddBiasAddconv3d_170/Conv3D:output:0)conv3d_170/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_170/BiasAddС
conv3d_170/SoftplusSoftplusconv3d_170/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_170/SoftplusІ
#average_pooling3d_58/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_58/transpose/perm№
average_pooling3d_58/transpose	Transpose!conv3d_170/Softplus:activations:0,average_pooling3d_58/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_58/transposeн
average_pooling3d_58/AvgPool3D	AvgPool3D"average_pooling3d_58/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_58/AvgPool3DЂ
%average_pooling3d_58/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_58/transpose_1/permи
 average_pooling3d_58/transpose_1	Transpose'average_pooling3d_58/AvgPool3D:output:0.average_pooling3d_58/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_58/transpose_1z
reshape_110/ShapeShape$average_pooling3d_58/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_110/ShapeМ
reshape_110/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_110/strided_slice/stackР
!reshape_110/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_110/strided_slice/stack_1Р
!reshape_110/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_110/strided_slice/stack_2™
reshape_110/strided_sliceStridedSlicereshape_110/Shape:output:0(reshape_110/strided_slice/stack:output:0*reshape_110/strided_slice/stack_1:output:0*reshape_110/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_110/strided_slice|
reshape_110/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_110/Reshape/shape/1ґ
reshape_110/Reshape/shapePack"reshape_110/strided_slice:output:0$reshape_110/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_110/Reshape/shape±
reshape_110/ReshapeReshape$average_pooling3d_58/transpose_1:y:0"reshape_110/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
reshape_110/Reshape®
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_55/MatMul/ReadVariableOp§
dense_55/MatMulMatMulreshape_110/Reshape:output:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_55/MatMulІ
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_55/BiasAdd/ReadVariableOp•
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_55/BiasAdd
dense_55/SoftplusSoftplusdense_55/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_55/Softplusu
reshape_111/ShapeShapedense_55/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_111/ShapeМ
reshape_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_111/strided_slice/stackР
!reshape_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_111/strided_slice/stack_1Р
!reshape_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_111/strided_slice/stack_2™
reshape_111/strided_sliceStridedSlicereshape_111/Shape:output:0(reshape_111/strided_slice/stack:output:0*reshape_111/strided_slice/stack_1:output:0*reshape_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_111/strided_slice|
reshape_111/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/1|
reshape_111/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/2|
reshape_111/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/3|
reshape_111/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_111/Reshape/shape/4®
reshape_111/Reshape/shapePack"reshape_111/strided_slice:output:0$reshape_111/Reshape/shape/1:output:0$reshape_111/Reshape/shape/2:output:0$reshape_111/Reshape/shape/3:output:0$reshape_111/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_111/Reshape/shapeЄ
reshape_111/ReshapeReshapedense_55/Softplus:activations:0"reshape_111/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
reshape_111/Reshape•
tf.reshape_114/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_114/Reshape/shape 
tf.reshape_114/ReshapeReshapereshape_111/Reshape:output:0%tf.reshape_114/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_114/ReshapeЯ
tf.tile_57/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_57/Tile/multiplesє
tf.tile_57/TileTiletf.reshape_114/Reshape:output:0"tf.tile_57/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_57/TileЩ
tf.reshape_115/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_115/Reshape/shapeЇ
tf.reshape_115/ReshapeReshapetf.tile_57/Tile:output:0%tf.reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_115/Reshapex
tf.concat_112/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_112/concat/axisз
tf.concat_112/concatConcatV2tf.reshape_115/Reshape:output:0!conv3d_170/Softplus:activations:0"tf.concat_112/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_112/concatЇ
 conv3d_171/Conv3D/ReadVariableOpReadVariableOp)conv3d_171_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_171/Conv3D/ReadVariableOpш
conv3d_171/Conv3DConv3Dtf.concat_112/concat:output:0(conv3d_171/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_171/Conv3D≠
!conv3d_171/BiasAdd/ReadVariableOpReadVariableOp*conv3d_171_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_171/BiasAdd/ReadVariableOpѕ
conv3d_171/BiasAddBiasAddconv3d_171/Conv3D:output:0)conv3d_171/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_171/BiasAddС
conv3d_171/SoftplusSoftplusconv3d_171/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_171/Softplus•
tf.reshape_116/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_116/Reshape/shapeѕ
tf.reshape_116/ReshapeReshape!conv3d_171/Softplus:activations:0%tf.reshape_116/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_116/ReshapeЯ
tf.tile_58/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_58/Tile/multiplesє
tf.tile_58/TileTiletf.reshape_116/Reshape:output:0"tf.tile_58/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_58/TileЩ
tf.reshape_117/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_117/Reshape/shapeЇ
tf.reshape_117/ReshapeReshapetf.tile_58/Tile:output:0%tf.reshape_117/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_117/Reshapex
tf.concat_113/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_113/concat/axisз
tf.concat_113/concatConcatV2tf.reshape_117/Reshape:output:0!conv3d_169/Softplus:activations:0"tf.concat_113/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_113/concatЇ
 conv3d_172/Conv3D/ReadVariableOpReadVariableOp)conv3d_172_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_172/Conv3D/ReadVariableOpш
conv3d_172/Conv3DConv3Dtf.concat_113/concat:output:0(conv3d_172/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_172/Conv3D≠
!conv3d_172/BiasAdd/ReadVariableOpReadVariableOp*conv3d_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_172/BiasAdd/ReadVariableOpѕ
conv3d_172/BiasAddBiasAddconv3d_172/Conv3D:output:0)conv3d_172/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_172/BiasAddС
conv3d_172/SoftplusSoftplusconv3d_172/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_172/SoftplusЇ
 conv3d_173/Conv3D/ReadVariableOpReadVariableOp)conv3d_173_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_173/Conv3D/ReadVariableOpь
conv3d_173/Conv3DConv3D!conv3d_172/Softplus:activations:0(conv3d_173/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_173/Conv3D≠
!conv3d_173/BiasAdd/ReadVariableOpReadVariableOp*conv3d_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_173/BiasAdd/ReadVariableOpѕ
conv3d_173/BiasAddBiasAddconv3d_173/Conv3D:output:0)conv3d_173/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_173/BiasAddВ
IdentityIdentityconv3d_173/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityф
NoOpNoOp"^conv3d_169/BiasAdd/ReadVariableOp!^conv3d_169/Conv3D/ReadVariableOp"^conv3d_170/BiasAdd/ReadVariableOp!^conv3d_170/Conv3D/ReadVariableOp"^conv3d_171/BiasAdd/ReadVariableOp!^conv3d_171/Conv3D/ReadVariableOp"^conv3d_172/BiasAdd/ReadVariableOp!^conv3d_172/Conv3D/ReadVariableOp"^conv3d_173/BiasAdd/ReadVariableOp!^conv3d_173/Conv3D/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 2F
!conv3d_169/BiasAdd/ReadVariableOp!conv3d_169/BiasAdd/ReadVariableOp2D
 conv3d_169/Conv3D/ReadVariableOp conv3d_169/Conv3D/ReadVariableOp2F
!conv3d_170/BiasAdd/ReadVariableOp!conv3d_170/BiasAdd/ReadVariableOp2D
 conv3d_170/Conv3D/ReadVariableOp conv3d_170/Conv3D/ReadVariableOp2F
!conv3d_171/BiasAdd/ReadVariableOp!conv3d_171/BiasAdd/ReadVariableOp2D
 conv3d_171/Conv3D/ReadVariableOp conv3d_171/Conv3D/ReadVariableOp2F
!conv3d_172/BiasAdd/ReadVariableOp!conv3d_172/BiasAdd/ReadVariableOp2D
 conv3d_172/Conv3D/ReadVariableOp conv3d_172/Conv3D/ReadVariableOp2F
!conv3d_173/BiasAdd/ReadVariableOp!conv3d_173/BiasAdd/ReadVariableOp2D
 conv3d_173/Conv3D/ReadVariableOp conv3d_173/Conv3D/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
У
г
+__inference_model_55_layer_call_fn_11882188

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
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_55_layer_call_and_return_conditional_losses_118819132
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
ќ
Е
H__inference_conv3d_169_layer_call_and_return_conditional_losses_11882441

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
е^
і
F__inference_model_55_layer_call_and_return_conditional_losses_11882099	
input1
conv3d_169_11882048:!
conv3d_169_11882050:1
conv3d_170_11882054:!
conv3d_170_11882056:#
dense_55_11882061:@@
dense_55_11882063:@1
conv3d_171_11882075:!
conv3d_171_11882077:1
conv3d_172_11882088:!
conv3d_172_11882090:1
conv3d_173_11882093:!
conv3d_173_11882095:
identityИҐ"conv3d_169/StatefulPartitionedCallҐ"conv3d_170/StatefulPartitionedCallҐ"conv3d_171/StatefulPartitionedCallҐ"conv3d_172/StatefulPartitionedCallҐ"conv3d_173/StatefulPartitionedCallҐ dense_55/StatefulPartitionedCallµ
0tf.__operators__.getitem_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_108/strided_slice/stackє
2tf.__operators__.getitem_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_108/strided_slice/stack_1є
2tf.__operators__.getitem_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_108/strided_slice/stack_2С
*tf.__operators__.getitem_108/strided_sliceStridedSliceinput9tf.__operators__.getitem_108/strided_slice/stack:output:0;tf.__operators__.getitem_108/strided_slice/stack_1:output:0;tf.__operators__.getitem_108/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_108/strided_sliceї
#range_conversion_55/PartitionedCallPartitionedCall3tf.__operators__.getitem_108/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_118815252%
#range_conversion_55/PartitionedCallµ
0tf.__operators__.getitem_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_109/strided_slice/stackє
2tf.__operators__.getitem_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_109/strided_slice/stack_1є
2tf.__operators__.getitem_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_109/strided_slice/stack_2С
*tf.__operators__.getitem_109/strided_sliceStridedSliceinput9tf.__operators__.getitem_109/strided_slice/stack:output:0;tf.__operators__.getitem_109/strided_slice/stack_1:output:0;tf.__operators__.getitem_109/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_109/strided_slicex
tf.concat_111/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_111/concat/axisЖ
tf.concat_111/concatConcatV2,range_conversion_55/PartitionedCall:output:03tf.__operators__.getitem_109/strided_slice:output:0"tf.concat_111/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_111/concat“
"conv3d_169/StatefulPartitionedCallStatefulPartitionedCalltf.concat_111/concat:output:0conv3d_169_11882048conv3d_169_11882050*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_169_layer_call_and_return_conditional_losses_118815442$
"conv3d_169/StatefulPartitionedCallґ
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_118815582&
$average_pooling3d_57/PartitionedCallв
"conv3d_170/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_57/PartitionedCall:output:0conv3d_170_11882054conv3d_170_11882056*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_170_layer_call_and_return_conditional_losses_118815712$
"conv3d_170/StatefulPartitionedCallґ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_118815852&
$average_pooling3d_58/PartitionedCallС
reshape_110/PartitionedCallPartitionedCall-average_pooling3d_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_110_layer_call_and_return_conditional_losses_118815992
reshape_110/PartitionedCall√
 dense_55/StatefulPartitionedCallStatefulPartitionedCall$reshape_110/PartitionedCall:output:0dense_55_11882061dense_55_11882063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_118816122"
 dense_55/StatefulPartitionedCallЩ
reshape_111/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_111_layer_call_and_return_conditional_losses_118816332
reshape_111/PartitionedCall•
tf.reshape_114/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_114/Reshape/shape“
tf.reshape_114/ReshapeReshape$reshape_111/PartitionedCall:output:0%tf.reshape_114/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_114/ReshapeЯ
tf.tile_57/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_57/Tile/multiplesє
tf.tile_57/TileTiletf.reshape_114/Reshape:output:0"tf.tile_57/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_57/TileЩ
tf.reshape_115/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_115/Reshape/shapeЇ
tf.reshape_115/ReshapeReshapetf.tile_57/Tile:output:0%tf.reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_115/Reshapex
tf.concat_112/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_112/concat/axisс
tf.concat_112/concatConcatV2tf.reshape_115/Reshape:output:0+conv3d_170/StatefulPartitionedCall:output:0"tf.concat_112/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_112/concat“
"conv3d_171/StatefulPartitionedCallStatefulPartitionedCalltf.concat_112/concat:output:0conv3d_171_11882075conv3d_171_11882077*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_171_layer_call_and_return_conditional_losses_118816542$
"conv3d_171/StatefulPartitionedCall•
tf.reshape_116/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_116/Reshape/shapeў
tf.reshape_116/ReshapeReshape+conv3d_171/StatefulPartitionedCall:output:0%tf.reshape_116/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_116/ReshapeЯ
tf.tile_58/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_58/Tile/multiplesє
tf.tile_58/TileTiletf.reshape_116/Reshape:output:0"tf.tile_58/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_58/TileЩ
tf.reshape_117/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_117/Reshape/shapeЇ
tf.reshape_117/ReshapeReshapetf.tile_58/Tile:output:0%tf.reshape_117/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_117/Reshapex
tf.concat_113/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_113/concat/axisс
tf.concat_113/concatConcatV2tf.reshape_117/Reshape:output:0+conv3d_169/StatefulPartitionedCall:output:0"tf.concat_113/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_113/concat“
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_113/concat:output:0conv3d_172_11882088conv3d_172_11882090*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_172_layer_call_and_return_conditional_losses_118816792$
"conv3d_172/StatefulPartitionedCallа
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0conv3d_173_11882093conv3d_173_11882095*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_173_layer_call_and_return_conditional_losses_118816952$
"conv3d_173/StatefulPartitionedCallТ
IdentityIdentity+conv3d_173/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity™
NoOpNoOp#^conv3d_169/StatefulPartitionedCall#^conv3d_170/StatefulPartitionedCall#^conv3d_171/StatefulPartitionedCall#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 2H
"conv3d_169/StatefulPartitionedCall"conv3d_169/StatefulPartitionedCall2H
"conv3d_170/StatefulPartitionedCall"conv3d_170/StatefulPartitionedCall2H
"conv3d_171/StatefulPartitionedCall"conv3d_171/StatefulPartitionedCall2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€

_user_specified_nameinput
ќ
Е
H__inference_conv3d_172_layer_call_and_return_conditional_losses_11882614

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_111_layer_call_and_return_conditional_losses_11881633

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
strided_slice/stack_2в
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
Reshape/shape/4‘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
А
Ш
+__inference_dense_55_layer_call_fn_11882543

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_118816122
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
й^
µ
F__inference_model_55_layer_call_and_return_conditional_losses_11881913

inputs1
conv3d_169_11881862:!
conv3d_169_11881864:1
conv3d_170_11881868:!
conv3d_170_11881870:#
dense_55_11881875:@@
dense_55_11881877:@1
conv3d_171_11881889:!
conv3d_171_11881891:1
conv3d_172_11881902:!
conv3d_172_11881904:1
conv3d_173_11881907:!
conv3d_173_11881909:
identityИҐ"conv3d_169/StatefulPartitionedCallҐ"conv3d_170/StatefulPartitionedCallҐ"conv3d_171/StatefulPartitionedCallҐ"conv3d_172/StatefulPartitionedCallҐ"conv3d_173/StatefulPartitionedCallҐ dense_55/StatefulPartitionedCallµ
0tf.__operators__.getitem_108/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_108/strided_slice/stackє
2tf.__operators__.getitem_108/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_108/strided_slice/stack_1є
2tf.__operators__.getitem_108/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_108/strided_slice/stack_2Т
*tf.__operators__.getitem_108/strided_sliceStridedSliceinputs9tf.__operators__.getitem_108/strided_slice/stack:output:0;tf.__operators__.getitem_108/strided_slice/stack_1:output:0;tf.__operators__.getitem_108/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_108/strided_sliceї
#range_conversion_55/PartitionedCallPartitionedCall3tf.__operators__.getitem_108/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_118815252%
#range_conversion_55/PartitionedCallµ
0tf.__operators__.getitem_109/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_109/strided_slice/stackє
2tf.__operators__.getitem_109/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_109/strided_slice/stack_1є
2tf.__operators__.getitem_109/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_109/strided_slice/stack_2Т
*tf.__operators__.getitem_109/strided_sliceStridedSliceinputs9tf.__operators__.getitem_109/strided_slice/stack:output:0;tf.__operators__.getitem_109/strided_slice/stack_1:output:0;tf.__operators__.getitem_109/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€*

begin_mask*
end_mask2,
*tf.__operators__.getitem_109/strided_slicex
tf.concat_111/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_111/concat/axisЖ
tf.concat_111/concatConcatV2,range_conversion_55/PartitionedCall:output:03tf.__operators__.getitem_109/strided_slice:output:0"tf.concat_111/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_111/concat“
"conv3d_169/StatefulPartitionedCallStatefulPartitionedCalltf.concat_111/concat:output:0conv3d_169_11881862conv3d_169_11881864*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_169_layer_call_and_return_conditional_losses_118815442$
"conv3d_169/StatefulPartitionedCallґ
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_118815582&
$average_pooling3d_57/PartitionedCallв
"conv3d_170/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_57/PartitionedCall:output:0conv3d_170_11881868conv3d_170_11881870*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_170_layer_call_and_return_conditional_losses_118815712$
"conv3d_170/StatefulPartitionedCallґ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_118815852&
$average_pooling3d_58/PartitionedCallС
reshape_110/PartitionedCallPartitionedCall-average_pooling3d_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_110_layer_call_and_return_conditional_losses_118815992
reshape_110/PartitionedCall√
 dense_55/StatefulPartitionedCallStatefulPartitionedCall$reshape_110/PartitionedCall:output:0dense_55_11881875dense_55_11881877*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_118816122"
 dense_55/StatefulPartitionedCallЩ
reshape_111/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_111_layer_call_and_return_conditional_losses_118816332
reshape_111/PartitionedCall•
tf.reshape_114/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_114/Reshape/shape“
tf.reshape_114/ReshapeReshape$reshape_111/PartitionedCall:output:0%tf.reshape_114/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_114/ReshapeЯ
tf.tile_57/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_57/Tile/multiplesє
tf.tile_57/TileTiletf.reshape_114/Reshape:output:0"tf.tile_57/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_57/TileЩ
tf.reshape_115/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_115/Reshape/shapeЇ
tf.reshape_115/ReshapeReshapetf.tile_57/Tile:output:0%tf.reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_115/Reshapex
tf.concat_112/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_112/concat/axisс
tf.concat_112/concatConcatV2tf.reshape_115/Reshape:output:0+conv3d_170/StatefulPartitionedCall:output:0"tf.concat_112/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_112/concat“
"conv3d_171/StatefulPartitionedCallStatefulPartitionedCalltf.concat_112/concat:output:0conv3d_171_11881889conv3d_171_11881891*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_171_layer_call_and_return_conditional_losses_118816542$
"conv3d_171/StatefulPartitionedCall•
tf.reshape_116/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_116/Reshape/shapeў
tf.reshape_116/ReshapeReshape+conv3d_171/StatefulPartitionedCall:output:0%tf.reshape_116/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_116/ReshapeЯ
tf.tile_58/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_58/Tile/multiplesє
tf.tile_58/TileTiletf.reshape_116/Reshape:output:0"tf.tile_58/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_58/TileЩ
tf.reshape_117/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_117/Reshape/shapeЇ
tf.reshape_117/ReshapeReshapetf.tile_58/Tile:output:0%tf.reshape_117/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_117/Reshapex
tf.concat_113/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_113/concat/axisс
tf.concat_113/concatConcatV2tf.reshape_117/Reshape:output:0+conv3d_169/StatefulPartitionedCall:output:0"tf.concat_113/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_113/concat“
"conv3d_172/StatefulPartitionedCallStatefulPartitionedCalltf.concat_113/concat:output:0conv3d_172_11881902conv3d_172_11881904*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_172_layer_call_and_return_conditional_losses_118816792$
"conv3d_172/StatefulPartitionedCallа
"conv3d_173/StatefulPartitionedCallStatefulPartitionedCall+conv3d_172/StatefulPartitionedCall:output:0conv3d_173_11881907conv3d_173_11881909*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_173_layer_call_and_return_conditional_losses_118816952$
"conv3d_173/StatefulPartitionedCallТ
IdentityIdentity+conv3d_173/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity™
NoOpNoOp#^conv3d_169/StatefulPartitionedCall#^conv3d_170/StatefulPartitionedCall#^conv3d_171/StatefulPartitionedCall#^conv3d_172/StatefulPartitionedCall#^conv3d_173/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 2H
"conv3d_169/StatefulPartitionedCall"conv3d_169/StatefulPartitionedCall2H
"conv3d_170/StatefulPartitionedCall"conv3d_170/StatefulPartitionedCall2H
"conv3d_171/StatefulPartitionedCall"conv3d_171/StatefulPartitionedCall2H
"conv3d_172/StatefulPartitionedCall"conv3d_172/StatefulPartitionedCall2H
"conv3d_173/StatefulPartitionedCall"conv3d_173/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Л	
n
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11881558

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Р
в
+__inference_model_55_layer_call_fn_11881969	
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
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_55_layer_call_and_return_conditional_losses_118819132
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€

_user_specified_nameinput
÷
Е
H__inference_conv3d_173_layer_call_and_return_conditional_losses_11881695

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
§
S
7__inference_average_pooling3d_57_layer_call_fn_11882446

inputs
identityЛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *[
fVRT
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_118814552
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ќ
Е
H__inference_conv3d_170_layer_call_and_return_conditional_losses_11882489

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Э
V
6__inference_range_conversion_55_layer_call_fn_11882409

parameters
identityк
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_118815252
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:_ [
3
_output_shapes!
:€€€€€€€€€
$
_user_specified_name
parameters
Ь
e
I__inference_reshape_110_layer_call_and_return_conditional_losses_11881599

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
strided_slice/stack_2в
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
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
д

n
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11881455

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
¶
-__inference_conv3d_172_layer_call_fn_11882603

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_172_layer_call_and_return_conditional_losses_118816792
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
ќ
Е
H__inference_conv3d_171_layer_call_and_return_conditional_losses_11881654

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
д

n
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11882460

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Р
в
+__inference_model_55_layer_call_fn_11881729	
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
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*.
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_55_layer_call_and_return_conditional_losses_118817022
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€

_user_specified_nameinput
д

n
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11881485

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ѕ
serving_default≠
C
input:
serving_default_input:0€€€€€€€€€J

conv3d_173<
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Њ√
Ђ
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
Ь__call__
+Э&call_and_return_all_conditional_losses
Ю_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
І
	variables
trainable_variables
 regularization_losses
!	keras_api
Я__call__
+†&call_and_return_all_conditional_losses"
_tf_keras_layer
(
"	keras_api"
_tf_keras_layer
(
#	keras_api"
_tf_keras_layer
љ

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
*	variables
+trainable_variables
,regularization_losses
-	keras_api
£__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
•__call__
+¶&call_and_return_all_conditional_losses"
_tf_keras_layer
І
4	variables
5trainable_variables
6regularization_losses
7	keras_api
І__call__
+®&call_and_return_all_conditional_losses"
_tf_keras_layer
І
8	variables
9trainable_variables
:regularization_losses
;	keras_api
©__call__
+™&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
Ђ__call__
+ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses"
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
љ

Jkernel
Kbias
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
ѓ__call__
+∞&call_and_return_all_conditional_losses"
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
љ

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
±__call__
+≤&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
≥__call__
+і&call_and_return_all_conditional_losses"
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
ќ
	variables
`layer_regularization_losses

alayers
trainable_variables
bnon_trainable_variables
cmetrics
dlayer_metrics
regularization_losses
Ь__call__
Ю_default_save_signature
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
-
µserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
	variables
elayer_regularization_losses

flayers
trainable_variables
gnon_trainable_variables
hmetrics
ilayer_metrics
 regularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_169/kernel
: 2conv3d_169/bias
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
∞
&	variables
jlayer_regularization_losses

klayers
'trainable_variables
lnon_trainable_variables
mmetrics
nlayer_metrics
(regularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
*	variables
olayer_regularization_losses

players
+trainable_variables
qnon_trainable_variables
rmetrics
slayer_metrics
,regularization_losses
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_170/kernel
: 2conv3d_170/bias
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
∞
0	variables
tlayer_regularization_losses

ulayers
1trainable_variables
vnon_trainable_variables
wmetrics
xlayer_metrics
2regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
4	variables
ylayer_regularization_losses

zlayers
5trainable_variables
{non_trainable_variables
|metrics
}layer_metrics
6regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≥
8	variables
~layer_regularization_losses

layers
9trainable_variables
Аnon_trainable_variables
Бmetrics
Вlayer_metrics
:regularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_55/kernel
:@ 2dense_55/bias
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
µ
>	variables
 Гlayer_regularization_losses
Дlayers
?trainable_variables
Еnon_trainable_variables
Жmetrics
Зlayer_metrics
@regularization_losses
Ђ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
B	variables
 Иlayer_regularization_losses
Йlayers
Ctrainable_variables
Кnon_trainable_variables
Лmetrics
Мlayer_metrics
Dregularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_171/kernel
: 2conv3d_171/bias
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
µ
L	variables
 Нlayer_regularization_losses
Оlayers
Mtrainable_variables
Пnon_trainable_variables
Рmetrics
Сlayer_metrics
Nregularization_losses
ѓ__call__
+∞&call_and_return_all_conditional_losses
'∞"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_172/kernel
: 2conv3d_172/bias
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
µ
V	variables
 Тlayer_regularization_losses
Уlayers
Wtrainable_variables
Фnon_trainable_variables
Хmetrics
Цlayer_metrics
Xregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_173/kernel
: 2conv3d_173/bias
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
µ
\	variables
 Чlayer_regularization_losses
Шlayers
]trainable_variables
Щnon_trainable_variables
Ъmetrics
Ыlayer_metrics
^regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
ќ
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
ъ2ч
+__inference_model_55_layer_call_fn_11881729
+__inference_model_55_layer_call_fn_11882159
+__inference_model_55_layer_call_fn_11882188
+__inference_model_55_layer_call_fn_11881969ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ж2г
F__inference_model_55_layer_call_and_return_conditional_losses_11882296
F__inference_model_55_layer_call_and_return_conditional_losses_11882404
F__inference_model_55_layer_call_and_return_conditional_losses_11882034
F__inference_model_55_layer_call_and_return_conditional_losses_11882099ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ћB…
#__inference__wrapped_model_11881442input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
д2б
6__inference_range_conversion_55_layer_call_fn_11882409¶
Э≤Щ
FullArgSpec!
argsЪ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€2ь
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_11882421¶
Э≤Щ
FullArgSpec!
argsЪ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv3d_169_layer_call_fn_11882430Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_conv3d_169_layer_call_and_return_conditional_losses_11882441Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ъ2Ч
7__inference_average_pooling3d_57_layer_call_fn_11882446
7__inference_average_pooling3d_57_layer_call_fn_11882451Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–2Ќ
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11882460
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11882469Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv3d_170_layer_call_fn_11882478Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_conv3d_170_layer_call_and_return_conditional_losses_11882489Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ъ2Ч
7__inference_average_pooling3d_58_layer_call_fn_11882494
7__inference_average_pooling3d_58_layer_call_fn_11882499Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–2Ќ
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11882508
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11882517Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
.__inference_reshape_110_layer_call_fn_11882522Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_reshape_110_layer_call_and_return_conditional_losses_11882534Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_dense_55_layer_call_fn_11882543Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_dense_55_layer_call_and_return_conditional_losses_11882554Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
.__inference_reshape_111_layer_call_fn_11882559Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_reshape_111_layer_call_and_return_conditional_losses_11882574Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv3d_171_layer_call_fn_11882583Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_conv3d_171_layer_call_and_return_conditional_losses_11882594Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv3d_172_layer_call_fn_11882603Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_conv3d_172_layer_call_and_return_conditional_losses_11882614Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„2‘
-__inference_conv3d_173_layer_call_fn_11882623Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_conv3d_173_layer_call_and_return_conditional_losses_11882633Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
&__inference_signature_wrapper_11882130input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Ј
#__inference__wrapped_model_11881442П$%./<=JKTUZ[:Ґ7
0Ґ-
+К(
input€€€€€€€€€
™ "C™@
>

conv3d_1730К-

conv3d_173€€€€€€€€€П
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11882460Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
R__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_11882469p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ з
7__inference_average_pooling3d_57_layer_call_fn_11882446Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ю
7__inference_average_pooling3d_57_layer_call_fn_11882451c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€П
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11882508Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
R__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_11882517p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ з
7__inference_average_pooling3d_58_layer_call_fn_11882494Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ю
7__inference_average_pooling3d_58_layer_call_fn_11882499c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€ј
H__inference_conv3d_169_layer_call_and_return_conditional_losses_11882441t$%;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ш
-__inference_conv3d_169_layer_call_fn_11882430g$%;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€ј
H__inference_conv3d_170_layer_call_and_return_conditional_losses_11882489t./;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ш
-__inference_conv3d_170_layer_call_fn_11882478g./;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€ј
H__inference_conv3d_171_layer_call_and_return_conditional_losses_11882594tJK;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ш
-__inference_conv3d_171_layer_call_fn_11882583gJK;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€ј
H__inference_conv3d_172_layer_call_and_return_conditional_losses_11882614tTU;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ш
-__inference_conv3d_172_layer_call_fn_11882603gTU;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€ј
H__inference_conv3d_173_layer_call_and_return_conditional_losses_11882633tZ[;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ш
-__inference_conv3d_173_layer_call_fn_11882623gZ[;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€¶
F__inference_dense_55_layer_call_and_return_conditional_losses_11882554\<=/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€@
Ъ ~
+__inference_dense_55_layer_call_fn_11882543O<=/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€@–
F__inference_model_55_layer_call_and_return_conditional_losses_11882034Е$%./<=JKTUZ[BҐ?
8Ґ5
+К(
input€€€€€€€€€
p 

 
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ –
F__inference_model_55_layer_call_and_return_conditional_losses_11882099Е$%./<=JKTUZ[BҐ?
8Ґ5
+К(
input€€€€€€€€€
p

 
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ —
F__inference_model_55_layer_call_and_return_conditional_losses_11882296Ж$%./<=JKTUZ[CҐ@
9Ґ6
,К)
inputs€€€€€€€€€
p 

 
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ —
F__inference_model_55_layer_call_and_return_conditional_losses_11882404Ж$%./<=JKTUZ[CҐ@
9Ґ6
,К)
inputs€€€€€€€€€
p

 
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ І
+__inference_model_55_layer_call_fn_11881729x$%./<=JKTUZ[BҐ?
8Ґ5
+К(
input€€€€€€€€€
p 

 
™ "$К!€€€€€€€€€І
+__inference_model_55_layer_call_fn_11881969x$%./<=JKTUZ[BҐ?
8Ґ5
+К(
input€€€€€€€€€
p

 
™ "$К!€€€€€€€€€®
+__inference_model_55_layer_call_fn_11882159y$%./<=JKTUZ[CҐ@
9Ґ6
,К)
inputs€€€€€€€€€
p 

 
™ "$К!€€€€€€€€€®
+__inference_model_55_layer_call_fn_11882188y$%./<=JKTUZ[CҐ@
9Ґ6
,К)
inputs€€€€€€€€€
p

 
™ "$К!€€€€€€€€€…
Q__inference_range_conversion_55_layer_call_and_return_conditional_losses_11882421t?Ґ<
5Ґ2
0К-

parameters€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ °
6__inference_range_conversion_55_layer_call_fn_11882409g?Ґ<
5Ґ2
0К-

parameters€€€€€€€€€
™ "$К!€€€€€€€€€±
I__inference_reshape_110_layer_call_and_return_conditional_losses_11882534d;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€@
Ъ Й
.__inference_reshape_110_layer_call_fn_11882522W;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "К€€€€€€€€€@±
I__inference_reshape_111_layer_call_and_return_conditional_losses_11882574d/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Й
.__inference_reshape_111_layer_call_fn_11882559W/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "$К!€€€€€€€€€√
&__inference_signature_wrapper_11882130Ш$%./<=JKTUZ[CҐ@
Ґ 
9™6
4
input+К(
input€€€€€€€€€"C™@
>

conv3d_1730К-

conv3d_173€€€€€€€€€