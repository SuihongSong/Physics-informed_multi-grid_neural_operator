зи
ы
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
С
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
ж
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.22v2.6.1-9-gc2363d6d0258ё

conv3d_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_143/kernel

%conv3d_143/kernel/Read/ReadVariableOpReadVariableOpconv3d_143/kernel**
_output_shapes
: *
dtype0
v
conv3d_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_143/bias
o
#conv3d_143/bias/Read/ReadVariableOpReadVariableOpconv3d_143/bias*
_output_shapes
: *
dtype0

conv3d_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_144/kernel

%conv3d_144/kernel/Read/ReadVariableOpReadVariableOpconv3d_144/kernel**
_output_shapes
: *
dtype0
v
conv3d_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_144/bias
o
#conv3d_144/bias/Read/ReadVariableOpReadVariableOpconv3d_144/bias*
_output_shapes
:*
dtype0

conv3d_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_145/kernel

%conv3d_145/kernel/Read/ReadVariableOpReadVariableOpconv3d_145/kernel**
_output_shapes
:*
dtype0
v
conv3d_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_145/bias
o
#conv3d_145/bias/Read/ReadVariableOpReadVariableOpconv3d_145/bias*
_output_shapes
:*
dtype0

conv3d_146/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_146/kernel

%conv3d_146/kernel/Read/ReadVariableOpReadVariableOpconv3d_146/kernel**
_output_shapes
:*
dtype0
v
conv3d_146/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_146/bias
o
#conv3d_146/bias/Read/ReadVariableOpReadVariableOpconv3d_146/bias*
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

conv3d_147/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_147/kernel

%conv3d_147/kernel/Read/ReadVariableOpReadVariableOpconv3d_147/kernel**
_output_shapes
:*
dtype0
v
conv3d_147/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_147/bias
o
#conv3d_147/bias/Read/ReadVariableOpReadVariableOpconv3d_147/bias*
_output_shapes
:*
dtype0

conv3d_148/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_148/kernel

%conv3d_148/kernel/Read/ReadVariableOpReadVariableOpconv3d_148/kernel**
_output_shapes
:*
dtype0
v
conv3d_148/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_148/bias
o
#conv3d_148/bias/Read/ReadVariableOpReadVariableOpconv3d_148/bias*
_output_shapes
:*
dtype0

conv3d_149/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_149/kernel

%conv3d_149/kernel/Read/ReadVariableOpReadVariableOpconv3d_149/kernel**
_output_shapes
:*
dtype0
v
conv3d_149/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_149/bias
o
#conv3d_149/bias/Read/ReadVariableOpReadVariableOpconv3d_149/bias*
_output_shapes
:*
dtype0

conv3d_150/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_150/kernel

%conv3d_150/kernel/Read/ReadVariableOpReadVariableOpconv3d_150/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_150/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_150/bias
o
#conv3d_150/bias/Read/ReadVariableOpReadVariableOpconv3d_150/bias*
_output_shapes
: *
dtype0

conv3d_151/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_151/kernel

%conv3d_151/kernel/Read/ReadVariableOpReadVariableOpconv3d_151/kernel**
_output_shapes
: *
dtype0
v
conv3d_151/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_151/bias
o
#conv3d_151/bias/Read/ReadVariableOpReadVariableOpconv3d_151/bias*
_output_shapes
:*
dtype0

NoOpNoOp
бH
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*H
valueHBџG BјG
т
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

layer_with_weights-2

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-5
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-6
layer-25
layer-26
layer-27
layer-28
layer-29
layer_with_weights-7
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer_with_weights-8
$layer-35
%layer_with_weights-9
%layer-36
&regularization_losses
'	variables
(trainable_variables
)	keras_api
*
signatures
 

+	keras_api
R
,	variables
-regularization_losses
.trainable_variables
/	keras_api

0	keras_api

1	keras_api
h

2kernel
3bias
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
h

Fkernel
Gbias
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
R
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
h

Pkernel
Qbias
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
R
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
R
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
h

^kernel
_bias
`	variables
aregularization_losses
btrainable_variables
c	keras_api
R
d	variables
eregularization_losses
ftrainable_variables
g	keras_api

h	keras_api

i	keras_api

j	keras_api

k	keras_api
h

lkernel
mbias
n	variables
oregularization_losses
ptrainable_variables
q	keras_api

r	keras_api

s	keras_api

t	keras_api

u	keras_api
h

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api

|	keras_api

}	keras_api

~	keras_api

	keras_api
n
kernel
	bias
	variables
regularization_losses
trainable_variables
	keras_api

	keras_api

	keras_api

	keras_api

	keras_api
n
kernel
	bias
	variables
regularization_losses
trainable_variables
	keras_api
n
kernel
	bias
	variables
regularization_losses
trainable_variables
	keras_api
 

20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19

20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19
В
non_trainable_variables
metrics
 layer_regularization_losses
layer_metrics
&regularization_losses
layers
'	variables
(trainable_variables
 
 
 
 
 
В
non_trainable_variables
,	variables
metrics
 layer_regularization_losses
layer_metrics
-regularization_losses
layers
.trainable_variables
 
 
][
VARIABLE_VALUEconv3d_143/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_143/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
В
 non_trainable_variables
4	variables
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
5regularization_losses
Єlayers
6trainable_variables
 
 
 
В
Ѕnon_trainable_variables
8	variables
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
9regularization_losses
Љlayers
:trainable_variables
][
VARIABLE_VALUEconv3d_144/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_144/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
В
Њnon_trainable_variables
>	variables
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
?regularization_losses
Ўlayers
@trainable_variables
 
 
 
В
Џnon_trainable_variables
B	variables
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Cregularization_losses
Гlayers
Dtrainable_variables
][
VARIABLE_VALUEconv3d_145/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_145/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1
 

F0
G1
В
Дnon_trainable_variables
H	variables
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
Iregularization_losses
Иlayers
Jtrainable_variables
 
 
 
В
Йnon_trainable_variables
L	variables
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Mregularization_losses
Нlayers
Ntrainable_variables
][
VARIABLE_VALUEconv3d_146/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_146/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1
 

P0
Q1
В
Оnon_trainable_variables
R	variables
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Sregularization_losses
Тlayers
Ttrainable_variables
 
 
 
В
Уnon_trainable_variables
V	variables
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Wregularization_losses
Чlayers
Xtrainable_variables
 
 
 
В
Шnon_trainable_variables
Z	variables
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
[regularization_losses
Ьlayers
\trainable_variables
[Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

^0
_1
 

^0
_1
В
Эnon_trainable_variables
`	variables
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
aregularization_losses
бlayers
btrainable_variables
 
 
 
В
вnon_trainable_variables
d	variables
гmetrics
 дlayer_regularization_losses
еlayer_metrics
eregularization_losses
жlayers
ftrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_147/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_147/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

l0
m1
 

l0
m1
В
зnon_trainable_variables
n	variables
иmetrics
 йlayer_regularization_losses
кlayer_metrics
oregularization_losses
лlayers
ptrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_148/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_148/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

v0
w1
 

v0
w1
В
мnon_trainable_variables
x	variables
нmetrics
 оlayer_regularization_losses
пlayer_metrics
yregularization_losses
рlayers
ztrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_149/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_149/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Е
сnon_trainable_variables
	variables
тmetrics
 уlayer_regularization_losses
фlayer_metrics
regularization_losses
хlayers
trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_150/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_150/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Е
цnon_trainable_variables
	variables
чmetrics
 шlayer_regularization_losses
щlayer_metrics
regularization_losses
ъlayers
trainable_variables
][
VARIABLE_VALUEconv3d_151/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_151/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Е
ыnon_trainable_variables
	variables
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
regularization_losses
яlayers
trainable_variables
 
 
 
 

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
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_inputPlaceholder*3
_output_shapes!
:џџџџџџџџџ@@*
dtype0*(
shape:џџџџџџџџџ@@
д
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_143/kernelconv3d_143/biasconv3d_144/kernelconv3d_144/biasconv3d_145/kernelconv3d_145/biasconv3d_146/kernelconv3d_146/biasdense_27/kerneldense_27/biasconv3d_147/kernelconv3d_147/biasconv3d_148/kernelconv3d_148/biasconv3d_149/kernelconv3d_149/biasconv3d_150/kernelconv3d_150/biasconv3d_151/kernelconv3d_151/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *.
f)R'
%__inference_signature_wrapper_9568908
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Џ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_143/kernel/Read/ReadVariableOp#conv3d_143/bias/Read/ReadVariableOp%conv3d_144/kernel/Read/ReadVariableOp#conv3d_144/bias/Read/ReadVariableOp%conv3d_145/kernel/Read/ReadVariableOp#conv3d_145/bias/Read/ReadVariableOp%conv3d_146/kernel/Read/ReadVariableOp#conv3d_146/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp%conv3d_147/kernel/Read/ReadVariableOp#conv3d_147/bias/Read/ReadVariableOp%conv3d_148/kernel/Read/ReadVariableOp#conv3d_148/bias/Read/ReadVariableOp%conv3d_149/kernel/Read/ReadVariableOp#conv3d_149/bias/Read/ReadVariableOp%conv3d_150/kernel/Read/ReadVariableOp#conv3d_150/bias/Read/ReadVariableOp%conv3d_151/kernel/Read/ReadVariableOp#conv3d_151/bias/Read/ReadVariableOpConst*!
Tin
2*
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
GPU2 *0,1,2,3J 8 *)
f$R"
 __inference__traced_save_9569770

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_143/kernelconv3d_143/biasconv3d_144/kernelconv3d_144/biasconv3d_145/kernelconv3d_145/biasconv3d_146/kernelconv3d_146/biasdense_27/kerneldense_27/biasconv3d_147/kernelconv3d_147/biasconv3d_148/kernelconv3d_148/biasconv3d_149/kernelconv3d_149/biasconv3d_150/kernelconv3d_150/biasconv3d_151/kernelconv3d_151/bias* 
Tin
2*
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
GPU2 *0,1,2,3J 8 *,
f'R%
#__inference__traced_restore_9569840Ь
Ђ
R
6__inference_average_pooling3d_58_layer_call_fn_9569364

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_95678252
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
m
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9569387

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @@:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_149_layer_call_fn_9569637

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_149_layer_call_and_return_conditional_losses_95681882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs

R
6__inference_average_pooling3d_60_layer_call_fn_9569465

inputs
identityц
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_95680422
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

ё
*__inference_model_27_layer_call_fn_9568655	
input%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_95685672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
д3
Н
 __inference__traced_save_9569770
file_prefix0
,savev2_conv3d_143_kernel_read_readvariableop.
*savev2_conv3d_143_bias_read_readvariableop0
,savev2_conv3d_144_kernel_read_readvariableop.
*savev2_conv3d_144_bias_read_readvariableop0
,savev2_conv3d_145_kernel_read_readvariableop.
*savev2_conv3d_145_bias_read_readvariableop0
,savev2_conv3d_146_kernel_read_readvariableop.
*savev2_conv3d_146_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop0
,savev2_conv3d_147_kernel_read_readvariableop.
*savev2_conv3d_147_bias_read_readvariableop0
,savev2_conv3d_148_kernel_read_readvariableop.
*savev2_conv3d_148_bias_read_readvariableop0
,savev2_conv3d_149_kernel_read_readvariableop.
*savev2_conv3d_149_bias_read_readvariableop0
,savev2_conv3d_150_kernel_read_readvariableop.
*savev2_conv3d_150_bias_read_readvariableop0
,savev2_conv3d_151_kernel_read_readvariableop.
*savev2_conv3d_151_bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameэ	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ
valueѕBђB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesВ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЮ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_143_kernel_read_readvariableop*savev2_conv3d_143_bias_read_readvariableop,savev2_conv3d_144_kernel_read_readvariableop*savev2_conv3d_144_bias_read_readvariableop,savev2_conv3d_145_kernel_read_readvariableop*savev2_conv3d_145_bias_read_readvariableop,savev2_conv3d_146_kernel_read_readvariableop*savev2_conv3d_146_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop,savev2_conv3d_147_kernel_read_readvariableop*savev2_conv3d_147_bias_read_readvariableop,savev2_conv3d_148_kernel_read_readvariableop*savev2_conv3d_148_bias_read_readvariableop,savev2_conv3d_149_kernel_read_readvariableop*savev2_conv3d_149_bias_read_readvariableop,savev2_conv3d_150_kernel_read_readvariableop*savev2_conv3d_150_bias_read_readvariableop,savev2_conv3d_151_kernel_read_readvariableop*savev2_conv3d_151_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
22
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*Ѕ
_input_shapes
: : : : ::::::@@:@:::::::0 : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
: : 

_output_shapes
: :0,
*
_output_shapes
: : 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$	 

_output_shapes

:@@: 


_output_shapes
:@:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:0 : 

_output_shapes
: :0,
*
_output_shapes
: : 

_output_shapes
::

_output_shapes
: 

c
G__inference_reshape_55_layer_call_and_return_conditional_losses_9569588

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
strided_slice/stack_2т
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
Reshape/shape/4д
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Џ


E__inference_model_27_layer_call_and_return_conditional_losses_9568567

inputs0
conv3d_143_9568478:  
conv3d_143_9568480: 0
conv3d_144_9568484:  
conv3d_144_9568486:0
conv3d_145_9568490: 
conv3d_145_9568492:0
conv3d_146_9568496: 
conv3d_146_9568498:"
dense_27_9568503:@@
dense_27_9568505:@0
conv3d_147_9568517: 
conv3d_147_9568519:0
conv3d_148_9568530: 
conv3d_148_9568532:0
conv3d_149_9568543: 
conv3d_149_9568545:0
conv3d_150_9568556:0  
conv3d_150_9568558: 0
conv3d_151_9568561:  
conv3d_151_9568563:
identityЂ"conv3d_143/StatefulPartitionedCallЂ"conv3d_144/StatefulPartitionedCallЂ"conv3d_145/StatefulPartitionedCallЂ"conv3d_146/StatefulPartitionedCallЂ"conv3d_147/StatefulPartitionedCallЂ"conv3d_148/StatefulPartitionedCallЂ"conv3d_149/StatefulPartitionedCallЂ"conv3d_150/StatefulPartitionedCallЂ"conv3d_151/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЕ
0tf.__operators__.getitem_390/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_390/strided_slice/stackЙ
2tf.__operators__.getitem_390/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_390/strided_slice/stack_1Й
2tf.__operators__.getitem_390/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_390/strided_slice/stack_2
*tf.__operators__.getitem_390/strided_sliceStridedSliceinputs9tf.__operators__.getitem_390/strided_slice/stack:output:0;tf.__operators__.getitem_390/strided_slice/stack_1:output:0;tf.__operators__.getitem_390/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_390/strided_sliceК
#range_conversion_27/PartitionedCallPartitionedCall3tf.__operators__.getitem_390/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_95679552%
#range_conversion_27/PartitionedCallЕ
0tf.__operators__.getitem_391/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_391/strided_slice/stackЙ
2tf.__operators__.getitem_391/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_391/strided_slice/stack_1Й
2tf.__operators__.getitem_391/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_391/strided_slice/stack_2
*tf.__operators__.getitem_391/strided_sliceStridedSliceinputs9tf.__operators__.getitem_391/strided_slice/stack:output:0;tf.__operators__.getitem_391/strided_slice/stack_1:output:0;tf.__operators__.getitem_391/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_391/strided_slicex
tf.concat_515/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_515/concat/axis
tf.concat_515/concatConcatV2,range_conversion_27/PartitionedCall:output:03tf.__operators__.getitem_391/strided_slice:output:0"tf.concat_515/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_515/concatЯ
"conv3d_143/StatefulPartitionedCallStatefulPartitionedCalltf.concat_515/concat:output:0conv3d_143_9568478conv3d_143_9568480*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_143_layer_call_and_return_conditional_losses_95679742$
"conv3d_143/StatefulPartitionedCallЕ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_95679882&
$average_pooling3d_58/PartitionedCallп
"conv3d_144/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_58/PartitionedCall:output:0conv3d_144_9568484conv3d_144_9568486*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_144_layer_call_and_return_conditional_losses_95680012$
"conv3d_144/StatefulPartitionedCallЕ
$average_pooling3d_59/PartitionedCallPartitionedCall+conv3d_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_95680152&
$average_pooling3d_59/PartitionedCallп
"conv3d_145/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_59/PartitionedCall:output:0conv3d_145_9568490conv3d_145_9568492*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_145_layer_call_and_return_conditional_losses_95680282$
"conv3d_145/StatefulPartitionedCallЕ
$average_pooling3d_60/PartitionedCallPartitionedCall+conv3d_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_95680422&
$average_pooling3d_60/PartitionedCallп
"conv3d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_60/PartitionedCall:output:0conv3d_146_9568496conv3d_146_9568498*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_146_layer_call_and_return_conditional_losses_95680552$
"conv3d_146/StatefulPartitionedCallЕ
$average_pooling3d_61/PartitionedCallPartitionedCall+conv3d_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_95680692&
$average_pooling3d_61/PartitionedCall
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_95680832
reshape_54/PartitionedCallП
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_9568503dense_27_9568505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_95680962"
 dense_27/StatefulPartitionedCall
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_95681172
reshape_55/PartitionedCallЅ
tf.reshape_640/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_640/Reshape/shapeб
tf.reshape_640/ReshapeReshape#reshape_55/PartitionedCall:output:0%tf.reshape_640/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_640/ReshapeЁ
tf.tile_320/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_320/Tile/multiplesМ
tf.tile_320/TileTiletf.reshape_640/Reshape:output:0#tf.tile_320/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_320/Tile
tf.reshape_641/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_641/Reshape/shapeЛ
tf.reshape_641/ReshapeReshapetf.tile_320/Tile:output:0%tf.reshape_641/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_641/Reshapex
tf.concat_516/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_516/concat/axisё
tf.concat_516/concatConcatV2tf.reshape_641/Reshape:output:0+conv3d_146/StatefulPartitionedCall:output:0"tf.concat_516/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_516/concatЯ
"conv3d_147/StatefulPartitionedCallStatefulPartitionedCalltf.concat_516/concat:output:0conv3d_147_9568517conv3d_147_9568519*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_147_layer_call_and_return_conditional_losses_95681382$
"conv3d_147/StatefulPartitionedCallЅ
tf.reshape_642/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_642/Reshape/shapeй
tf.reshape_642/ReshapeReshape+conv3d_147/StatefulPartitionedCall:output:0%tf.reshape_642/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_642/ReshapeЁ
tf.tile_321/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_321/Tile/multiplesМ
tf.tile_321/TileTiletf.reshape_642/Reshape:output:0#tf.tile_321/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_321/Tile
tf.reshape_643/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_643/Reshape/shapeЛ
tf.reshape_643/ReshapeReshapetf.tile_321/Tile:output:0%tf.reshape_643/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_643/Reshapex
tf.concat_517/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_517/concat/axisё
tf.concat_517/concatConcatV2tf.reshape_643/Reshape:output:0+conv3d_145/StatefulPartitionedCall:output:0"tf.concat_517/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_517/concatЯ
"conv3d_148/StatefulPartitionedCallStatefulPartitionedCalltf.concat_517/concat:output:0conv3d_148_9568530conv3d_148_9568532*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_148_layer_call_and_return_conditional_losses_95681632$
"conv3d_148/StatefulPartitionedCallЅ
tf.reshape_644/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_644/Reshape/shapeй
tf.reshape_644/ReshapeReshape+conv3d_148/StatefulPartitionedCall:output:0%tf.reshape_644/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_644/ReshapeЁ
tf.tile_322/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_322/Tile/multiplesМ
tf.tile_322/TileTiletf.reshape_644/Reshape:output:0#tf.tile_322/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_322/Tile
tf.reshape_645/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_645/Reshape/shapeЛ
tf.reshape_645/ReshapeReshapetf.tile_322/Tile:output:0%tf.reshape_645/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_645/Reshapex
tf.concat_518/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_518/concat/axisё
tf.concat_518/concatConcatV2tf.reshape_645/Reshape:output:0+conv3d_144/StatefulPartitionedCall:output:0"tf.concat_518/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_518/concatЯ
"conv3d_149/StatefulPartitionedCallStatefulPartitionedCalltf.concat_518/concat:output:0conv3d_149_9568543conv3d_149_9568545*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_149_layer_call_and_return_conditional_losses_95681882$
"conv3d_149/StatefulPartitionedCallЅ
tf.reshape_646/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_646/Reshape/shapeй
tf.reshape_646/ReshapeReshape+conv3d_149/StatefulPartitionedCall:output:0%tf.reshape_646/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_646/ReshapeЁ
tf.tile_323/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_323/Tile/multiplesМ
tf.tile_323/TileTiletf.reshape_646/Reshape:output:0#tf.tile_323/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_323/Tile
tf.reshape_647/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_647/Reshape/shapeЛ
tf.reshape_647/ReshapeReshapetf.tile_323/Tile:output:0%tf.reshape_647/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_647/Reshapex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisё
tf.concat_519/concatConcatV2tf.reshape_647/Reshape:output:0+conv3d_143/StatefulPartitionedCall:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_519/concatЯ
"conv3d_150/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv3d_150_9568556conv3d_150_9568558*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_150_layer_call_and_return_conditional_losses_95682132$
"conv3d_150/StatefulPartitionedCallн
"conv3d_151/StatefulPartitionedCallStatefulPartitionedCall+conv3d_150/StatefulPartitionedCall:output:0conv3d_151_9568561conv3d_151_9568563*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_151_layer_call_and_return_conditional_losses_95682292$
"conv3d_151/StatefulPartitionedCall
IdentityIdentity+conv3d_151/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_143/StatefulPartitionedCall#^conv3d_144/StatefulPartitionedCall#^conv3d_145/StatefulPartitionedCall#^conv3d_146/StatefulPartitionedCall#^conv3d_147/StatefulPartitionedCall#^conv3d_148/StatefulPartitionedCall#^conv3d_149/StatefulPartitionedCall#^conv3d_150/StatefulPartitionedCall#^conv3d_151/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_143/StatefulPartitionedCall"conv3d_143/StatefulPartitionedCall2H
"conv3d_144/StatefulPartitionedCall"conv3d_144/StatefulPartitionedCall2H
"conv3d_145/StatefulPartitionedCall"conv3d_145/StatefulPartitionedCall2H
"conv3d_146/StatefulPartitionedCall"conv3d_146/StatefulPartitionedCall2H
"conv3d_147/StatefulPartitionedCall"conv3d_147/StatefulPartitionedCall2H
"conv3d_148/StatefulPartitionedCall"conv3d_148/StatefulPartitionedCall2H
"conv3d_149/StatefulPartitionedCall"conv3d_149/StatefulPartitionedCall2H
"conv3d_150/StatefulPartitionedCall"conv3d_150/StatefulPartitionedCall2H
"conv3d_151/StatefulPartitionedCall"conv3d_151/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
і
ь
%__inference_signature_wrapper_9568908	
input%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *+
f&R$
"__inference__wrapped_model_95678122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
ж	
p
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_9567955

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
:џџџџџџџџџ@@2
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
:џџџџџџџџџ@@2	
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
:џџџџџџџџџ@@2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@:_ [
3
_output_shapes!
:џџџџџџџџџ@@
$
_user_specified_name
parameters
	
m
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9569483

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ў

*__inference_dense_27_layer_call_fn_9569557

inputs
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_95680962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
у

m
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9569522

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

U
5__inference_range_conversion_27_layer_call_fn_9569327

parameters
identityщ
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_95679552
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@:_ [
3
_output_shapes!
:џџџџџџџџџ@@
$
_user_specified_name
parameters
Ђ
R
6__inference_average_pooling3d_59_layer_call_fn_9569412

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_95678552
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Э

G__inference_conv3d_149_layer_call_and_return_conditional_losses_9569648

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
Э

G__inference_conv3d_148_layer_call_and_return_conditional_losses_9568163

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_reshape_55_layer_call_and_return_conditional_losses_9568117

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
strided_slice/stack_2т
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
Reshape/shape/4д
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Э

G__inference_conv3d_146_layer_call_and_return_conditional_losses_9569503

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Э

G__inference_conv3d_145_layer_call_and_return_conditional_losses_9569455

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Э

G__inference_conv3d_150_layer_call_and_return_conditional_losses_9568213

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ0@@
 
_user_specified_nameinputs
	
m
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9568042

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_143_layer_call_fn_9569348

inputs%
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_143_layer_call_and_return_conditional_losses_95679742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Э

G__inference_conv3d_149_layer_call_and_return_conditional_losses_9568188

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
е

G__inference_conv3d_151_layer_call_and_return_conditional_losses_9568229

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
Ђ
R
6__inference_average_pooling3d_61_layer_call_fn_9569508

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_95679152
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
у

m
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9567825

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Э

G__inference_conv3d_150_layer_call_and_return_conditional_losses_9569668

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ0@@
 
_user_specified_nameinputs
Э

G__inference_conv3d_145_layer_call_and_return_conditional_losses_9568028

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
	
m
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9568069

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Ђ
R
6__inference_average_pooling3d_60_layer_call_fn_9569460

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_95678852
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

і
E__inference_dense_27_layer_call_and_return_conditional_losses_9569568

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Џ


E__inference_model_27_layer_call_and_return_conditional_losses_9568236

inputs0
conv3d_143_9567975:  
conv3d_143_9567977: 0
conv3d_144_9568002:  
conv3d_144_9568004:0
conv3d_145_9568029: 
conv3d_145_9568031:0
conv3d_146_9568056: 
conv3d_146_9568058:"
dense_27_9568097:@@
dense_27_9568099:@0
conv3d_147_9568139: 
conv3d_147_9568141:0
conv3d_148_9568164: 
conv3d_148_9568166:0
conv3d_149_9568189: 
conv3d_149_9568191:0
conv3d_150_9568214:0  
conv3d_150_9568216: 0
conv3d_151_9568230:  
conv3d_151_9568232:
identityЂ"conv3d_143/StatefulPartitionedCallЂ"conv3d_144/StatefulPartitionedCallЂ"conv3d_145/StatefulPartitionedCallЂ"conv3d_146/StatefulPartitionedCallЂ"conv3d_147/StatefulPartitionedCallЂ"conv3d_148/StatefulPartitionedCallЂ"conv3d_149/StatefulPartitionedCallЂ"conv3d_150/StatefulPartitionedCallЂ"conv3d_151/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЕ
0tf.__operators__.getitem_390/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_390/strided_slice/stackЙ
2tf.__operators__.getitem_390/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_390/strided_slice/stack_1Й
2tf.__operators__.getitem_390/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_390/strided_slice/stack_2
*tf.__operators__.getitem_390/strided_sliceStridedSliceinputs9tf.__operators__.getitem_390/strided_slice/stack:output:0;tf.__operators__.getitem_390/strided_slice/stack_1:output:0;tf.__operators__.getitem_390/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_390/strided_sliceК
#range_conversion_27/PartitionedCallPartitionedCall3tf.__operators__.getitem_390/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_95679552%
#range_conversion_27/PartitionedCallЕ
0tf.__operators__.getitem_391/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_391/strided_slice/stackЙ
2tf.__operators__.getitem_391/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_391/strided_slice/stack_1Й
2tf.__operators__.getitem_391/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_391/strided_slice/stack_2
*tf.__operators__.getitem_391/strided_sliceStridedSliceinputs9tf.__operators__.getitem_391/strided_slice/stack:output:0;tf.__operators__.getitem_391/strided_slice/stack_1:output:0;tf.__operators__.getitem_391/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_391/strided_slicex
tf.concat_515/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_515/concat/axis
tf.concat_515/concatConcatV2,range_conversion_27/PartitionedCall:output:03tf.__operators__.getitem_391/strided_slice:output:0"tf.concat_515/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_515/concatЯ
"conv3d_143/StatefulPartitionedCallStatefulPartitionedCalltf.concat_515/concat:output:0conv3d_143_9567975conv3d_143_9567977*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_143_layer_call_and_return_conditional_losses_95679742$
"conv3d_143/StatefulPartitionedCallЕ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_95679882&
$average_pooling3d_58/PartitionedCallп
"conv3d_144/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_58/PartitionedCall:output:0conv3d_144_9568002conv3d_144_9568004*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_144_layer_call_and_return_conditional_losses_95680012$
"conv3d_144/StatefulPartitionedCallЕ
$average_pooling3d_59/PartitionedCallPartitionedCall+conv3d_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_95680152&
$average_pooling3d_59/PartitionedCallп
"conv3d_145/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_59/PartitionedCall:output:0conv3d_145_9568029conv3d_145_9568031*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_145_layer_call_and_return_conditional_losses_95680282$
"conv3d_145/StatefulPartitionedCallЕ
$average_pooling3d_60/PartitionedCallPartitionedCall+conv3d_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_95680422&
$average_pooling3d_60/PartitionedCallп
"conv3d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_60/PartitionedCall:output:0conv3d_146_9568056conv3d_146_9568058*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_146_layer_call_and_return_conditional_losses_95680552$
"conv3d_146/StatefulPartitionedCallЕ
$average_pooling3d_61/PartitionedCallPartitionedCall+conv3d_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_95680692&
$average_pooling3d_61/PartitionedCall
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_95680832
reshape_54/PartitionedCallП
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_9568097dense_27_9568099*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_95680962"
 dense_27/StatefulPartitionedCall
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_95681172
reshape_55/PartitionedCallЅ
tf.reshape_640/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_640/Reshape/shapeб
tf.reshape_640/ReshapeReshape#reshape_55/PartitionedCall:output:0%tf.reshape_640/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_640/ReshapeЁ
tf.tile_320/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_320/Tile/multiplesМ
tf.tile_320/TileTiletf.reshape_640/Reshape:output:0#tf.tile_320/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_320/Tile
tf.reshape_641/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_641/Reshape/shapeЛ
tf.reshape_641/ReshapeReshapetf.tile_320/Tile:output:0%tf.reshape_641/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_641/Reshapex
tf.concat_516/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_516/concat/axisё
tf.concat_516/concatConcatV2tf.reshape_641/Reshape:output:0+conv3d_146/StatefulPartitionedCall:output:0"tf.concat_516/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_516/concatЯ
"conv3d_147/StatefulPartitionedCallStatefulPartitionedCalltf.concat_516/concat:output:0conv3d_147_9568139conv3d_147_9568141*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_147_layer_call_and_return_conditional_losses_95681382$
"conv3d_147/StatefulPartitionedCallЅ
tf.reshape_642/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_642/Reshape/shapeй
tf.reshape_642/ReshapeReshape+conv3d_147/StatefulPartitionedCall:output:0%tf.reshape_642/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_642/ReshapeЁ
tf.tile_321/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_321/Tile/multiplesМ
tf.tile_321/TileTiletf.reshape_642/Reshape:output:0#tf.tile_321/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_321/Tile
tf.reshape_643/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_643/Reshape/shapeЛ
tf.reshape_643/ReshapeReshapetf.tile_321/Tile:output:0%tf.reshape_643/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_643/Reshapex
tf.concat_517/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_517/concat/axisё
tf.concat_517/concatConcatV2tf.reshape_643/Reshape:output:0+conv3d_145/StatefulPartitionedCall:output:0"tf.concat_517/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_517/concatЯ
"conv3d_148/StatefulPartitionedCallStatefulPartitionedCalltf.concat_517/concat:output:0conv3d_148_9568164conv3d_148_9568166*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_148_layer_call_and_return_conditional_losses_95681632$
"conv3d_148/StatefulPartitionedCallЅ
tf.reshape_644/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_644/Reshape/shapeй
tf.reshape_644/ReshapeReshape+conv3d_148/StatefulPartitionedCall:output:0%tf.reshape_644/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_644/ReshapeЁ
tf.tile_322/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_322/Tile/multiplesМ
tf.tile_322/TileTiletf.reshape_644/Reshape:output:0#tf.tile_322/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_322/Tile
tf.reshape_645/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_645/Reshape/shapeЛ
tf.reshape_645/ReshapeReshapetf.tile_322/Tile:output:0%tf.reshape_645/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_645/Reshapex
tf.concat_518/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_518/concat/axisё
tf.concat_518/concatConcatV2tf.reshape_645/Reshape:output:0+conv3d_144/StatefulPartitionedCall:output:0"tf.concat_518/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_518/concatЯ
"conv3d_149/StatefulPartitionedCallStatefulPartitionedCalltf.concat_518/concat:output:0conv3d_149_9568189conv3d_149_9568191*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_149_layer_call_and_return_conditional_losses_95681882$
"conv3d_149/StatefulPartitionedCallЅ
tf.reshape_646/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_646/Reshape/shapeй
tf.reshape_646/ReshapeReshape+conv3d_149/StatefulPartitionedCall:output:0%tf.reshape_646/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_646/ReshapeЁ
tf.tile_323/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_323/Tile/multiplesМ
tf.tile_323/TileTiletf.reshape_646/Reshape:output:0#tf.tile_323/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_323/Tile
tf.reshape_647/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_647/Reshape/shapeЛ
tf.reshape_647/ReshapeReshapetf.tile_323/Tile:output:0%tf.reshape_647/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_647/Reshapex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisё
tf.concat_519/concatConcatV2tf.reshape_647/Reshape:output:0+conv3d_143/StatefulPartitionedCall:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_519/concatЯ
"conv3d_150/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv3d_150_9568214conv3d_150_9568216*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_150_layer_call_and_return_conditional_losses_95682132$
"conv3d_150/StatefulPartitionedCallн
"conv3d_151/StatefulPartitionedCallStatefulPartitionedCall+conv3d_150/StatefulPartitionedCall:output:0conv3d_151_9568230conv3d_151_9568232*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_151_layer_call_and_return_conditional_losses_95682292$
"conv3d_151/StatefulPartitionedCall
IdentityIdentity+conv3d_151/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_143/StatefulPartitionedCall#^conv3d_144/StatefulPartitionedCall#^conv3d_145/StatefulPartitionedCall#^conv3d_146/StatefulPartitionedCall#^conv3d_147/StatefulPartitionedCall#^conv3d_148/StatefulPartitionedCall#^conv3d_149/StatefulPartitionedCall#^conv3d_150/StatefulPartitionedCall#^conv3d_151/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_143/StatefulPartitionedCall"conv3d_143/StatefulPartitionedCall2H
"conv3d_144/StatefulPartitionedCall"conv3d_144/StatefulPartitionedCall2H
"conv3d_145/StatefulPartitionedCall"conv3d_145/StatefulPartitionedCall2H
"conv3d_146/StatefulPartitionedCall"conv3d_146/StatefulPartitionedCall2H
"conv3d_147/StatefulPartitionedCall"conv3d_147/StatefulPartitionedCall2H
"conv3d_148/StatefulPartitionedCall"conv3d_148/StatefulPartitionedCall2H
"conv3d_149/StatefulPartitionedCall"conv3d_149/StatefulPartitionedCall2H
"conv3d_150/StatefulPartitionedCall"conv3d_150/StatefulPartitionedCall2H
"conv3d_151/StatefulPartitionedCall"conv3d_151/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
х
H
,__inference_reshape_55_layer_call_fn_9569573

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_95681172
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
у

m
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9569474

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
у

m
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9567855

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
m
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9568015

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
Э

G__inference_conv3d_143_layer_call_and_return_conditional_losses_9569359

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Э

G__inference_conv3d_144_layer_call_and_return_conditional_losses_9568001

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ   
 
_user_specified_nameinputs

ё
*__inference_model_27_layer_call_fn_9568279	
input%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_95682362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
П
Ѕ
,__inference_conv3d_147_layer_call_fn_9569597

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_147_layer_call_and_return_conditional_losses_95681382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_148_layer_call_fn_9569617

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_148_layer_call_and_return_conditional_losses_95681632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Э

G__inference_conv3d_147_layer_call_and_return_conditional_losses_9568138

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
е

G__inference_conv3d_151_layer_call_and_return_conditional_losses_9569687

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_151_layer_call_fn_9569677

inputs%
unknown: 
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_151_layer_call_and_return_conditional_losses_95682292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs

c
G__inference_reshape_54_layer_call_and_return_conditional_losses_9568083

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
strided_slice/stack_2т
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
Reshape/shape/1
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_150_layer_call_fn_9569657

inputs%
unknown:0 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_150_layer_call_and_return_conditional_losses_95682132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ0@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ0@@
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_144_layer_call_fn_9569396

inputs%
unknown: 
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_144_layer_call_and_return_conditional_losses_95680012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ   : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ   
 
_user_specified_nameinputs
Э

G__inference_conv3d_146_layer_call_and_return_conditional_losses_9568055

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Э

G__inference_conv3d_147_layer_call_and_return_conditional_losses_9569608

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ


E__inference_model_27_layer_call_and_return_conditional_losses_9568758	
input0
conv3d_143_9568669:  
conv3d_143_9568671: 0
conv3d_144_9568675:  
conv3d_144_9568677:0
conv3d_145_9568681: 
conv3d_145_9568683:0
conv3d_146_9568687: 
conv3d_146_9568689:"
dense_27_9568694:@@
dense_27_9568696:@0
conv3d_147_9568708: 
conv3d_147_9568710:0
conv3d_148_9568721: 
conv3d_148_9568723:0
conv3d_149_9568734: 
conv3d_149_9568736:0
conv3d_150_9568747:0  
conv3d_150_9568749: 0
conv3d_151_9568752:  
conv3d_151_9568754:
identityЂ"conv3d_143/StatefulPartitionedCallЂ"conv3d_144/StatefulPartitionedCallЂ"conv3d_145/StatefulPartitionedCallЂ"conv3d_146/StatefulPartitionedCallЂ"conv3d_147/StatefulPartitionedCallЂ"conv3d_148/StatefulPartitionedCallЂ"conv3d_149/StatefulPartitionedCallЂ"conv3d_150/StatefulPartitionedCallЂ"conv3d_151/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЕ
0tf.__operators__.getitem_390/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_390/strided_slice/stackЙ
2tf.__operators__.getitem_390/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_390/strided_slice/stack_1Й
2tf.__operators__.getitem_390/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_390/strided_slice/stack_2
*tf.__operators__.getitem_390/strided_sliceStridedSliceinput9tf.__operators__.getitem_390/strided_slice/stack:output:0;tf.__operators__.getitem_390/strided_slice/stack_1:output:0;tf.__operators__.getitem_390/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_390/strided_sliceК
#range_conversion_27/PartitionedCallPartitionedCall3tf.__operators__.getitem_390/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_95679552%
#range_conversion_27/PartitionedCallЕ
0tf.__operators__.getitem_391/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_391/strided_slice/stackЙ
2tf.__operators__.getitem_391/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_391/strided_slice/stack_1Й
2tf.__operators__.getitem_391/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_391/strided_slice/stack_2
*tf.__operators__.getitem_391/strided_sliceStridedSliceinput9tf.__operators__.getitem_391/strided_slice/stack:output:0;tf.__operators__.getitem_391/strided_slice/stack_1:output:0;tf.__operators__.getitem_391/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_391/strided_slicex
tf.concat_515/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_515/concat/axis
tf.concat_515/concatConcatV2,range_conversion_27/PartitionedCall:output:03tf.__operators__.getitem_391/strided_slice:output:0"tf.concat_515/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_515/concatЯ
"conv3d_143/StatefulPartitionedCallStatefulPartitionedCalltf.concat_515/concat:output:0conv3d_143_9568669conv3d_143_9568671*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_143_layer_call_and_return_conditional_losses_95679742$
"conv3d_143/StatefulPartitionedCallЕ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_95679882&
$average_pooling3d_58/PartitionedCallп
"conv3d_144/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_58/PartitionedCall:output:0conv3d_144_9568675conv3d_144_9568677*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_144_layer_call_and_return_conditional_losses_95680012$
"conv3d_144/StatefulPartitionedCallЕ
$average_pooling3d_59/PartitionedCallPartitionedCall+conv3d_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_95680152&
$average_pooling3d_59/PartitionedCallп
"conv3d_145/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_59/PartitionedCall:output:0conv3d_145_9568681conv3d_145_9568683*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_145_layer_call_and_return_conditional_losses_95680282$
"conv3d_145/StatefulPartitionedCallЕ
$average_pooling3d_60/PartitionedCallPartitionedCall+conv3d_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_95680422&
$average_pooling3d_60/PartitionedCallп
"conv3d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_60/PartitionedCall:output:0conv3d_146_9568687conv3d_146_9568689*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_146_layer_call_and_return_conditional_losses_95680552$
"conv3d_146/StatefulPartitionedCallЕ
$average_pooling3d_61/PartitionedCallPartitionedCall+conv3d_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_95680692&
$average_pooling3d_61/PartitionedCall
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_95680832
reshape_54/PartitionedCallП
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_9568694dense_27_9568696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_95680962"
 dense_27/StatefulPartitionedCall
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_95681172
reshape_55/PartitionedCallЅ
tf.reshape_640/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_640/Reshape/shapeб
tf.reshape_640/ReshapeReshape#reshape_55/PartitionedCall:output:0%tf.reshape_640/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_640/ReshapeЁ
tf.tile_320/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_320/Tile/multiplesМ
tf.tile_320/TileTiletf.reshape_640/Reshape:output:0#tf.tile_320/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_320/Tile
tf.reshape_641/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_641/Reshape/shapeЛ
tf.reshape_641/ReshapeReshapetf.tile_320/Tile:output:0%tf.reshape_641/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_641/Reshapex
tf.concat_516/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_516/concat/axisё
tf.concat_516/concatConcatV2tf.reshape_641/Reshape:output:0+conv3d_146/StatefulPartitionedCall:output:0"tf.concat_516/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_516/concatЯ
"conv3d_147/StatefulPartitionedCallStatefulPartitionedCalltf.concat_516/concat:output:0conv3d_147_9568708conv3d_147_9568710*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_147_layer_call_and_return_conditional_losses_95681382$
"conv3d_147/StatefulPartitionedCallЅ
tf.reshape_642/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_642/Reshape/shapeй
tf.reshape_642/ReshapeReshape+conv3d_147/StatefulPartitionedCall:output:0%tf.reshape_642/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_642/ReshapeЁ
tf.tile_321/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_321/Tile/multiplesМ
tf.tile_321/TileTiletf.reshape_642/Reshape:output:0#tf.tile_321/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_321/Tile
tf.reshape_643/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_643/Reshape/shapeЛ
tf.reshape_643/ReshapeReshapetf.tile_321/Tile:output:0%tf.reshape_643/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_643/Reshapex
tf.concat_517/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_517/concat/axisё
tf.concat_517/concatConcatV2tf.reshape_643/Reshape:output:0+conv3d_145/StatefulPartitionedCall:output:0"tf.concat_517/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_517/concatЯ
"conv3d_148/StatefulPartitionedCallStatefulPartitionedCalltf.concat_517/concat:output:0conv3d_148_9568721conv3d_148_9568723*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_148_layer_call_and_return_conditional_losses_95681632$
"conv3d_148/StatefulPartitionedCallЅ
tf.reshape_644/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_644/Reshape/shapeй
tf.reshape_644/ReshapeReshape+conv3d_148/StatefulPartitionedCall:output:0%tf.reshape_644/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_644/ReshapeЁ
tf.tile_322/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_322/Tile/multiplesМ
tf.tile_322/TileTiletf.reshape_644/Reshape:output:0#tf.tile_322/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_322/Tile
tf.reshape_645/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_645/Reshape/shapeЛ
tf.reshape_645/ReshapeReshapetf.tile_322/Tile:output:0%tf.reshape_645/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_645/Reshapex
tf.concat_518/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_518/concat/axisё
tf.concat_518/concatConcatV2tf.reshape_645/Reshape:output:0+conv3d_144/StatefulPartitionedCall:output:0"tf.concat_518/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_518/concatЯ
"conv3d_149/StatefulPartitionedCallStatefulPartitionedCalltf.concat_518/concat:output:0conv3d_149_9568734conv3d_149_9568736*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_149_layer_call_and_return_conditional_losses_95681882$
"conv3d_149/StatefulPartitionedCallЅ
tf.reshape_646/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_646/Reshape/shapeй
tf.reshape_646/ReshapeReshape+conv3d_149/StatefulPartitionedCall:output:0%tf.reshape_646/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_646/ReshapeЁ
tf.tile_323/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_323/Tile/multiplesМ
tf.tile_323/TileTiletf.reshape_646/Reshape:output:0#tf.tile_323/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_323/Tile
tf.reshape_647/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_647/Reshape/shapeЛ
tf.reshape_647/ReshapeReshapetf.tile_323/Tile:output:0%tf.reshape_647/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_647/Reshapex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisё
tf.concat_519/concatConcatV2tf.reshape_647/Reshape:output:0+conv3d_143/StatefulPartitionedCall:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_519/concatЯ
"conv3d_150/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv3d_150_9568747conv3d_150_9568749*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_150_layer_call_and_return_conditional_losses_95682132$
"conv3d_150/StatefulPartitionedCallн
"conv3d_151/StatefulPartitionedCallStatefulPartitionedCall+conv3d_150/StatefulPartitionedCall:output:0conv3d_151_9568752conv3d_151_9568754*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_151_layer_call_and_return_conditional_losses_95682292$
"conv3d_151/StatefulPartitionedCall
IdentityIdentity+conv3d_151/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_143/StatefulPartitionedCall#^conv3d_144/StatefulPartitionedCall#^conv3d_145/StatefulPartitionedCall#^conv3d_146/StatefulPartitionedCall#^conv3d_147/StatefulPartitionedCall#^conv3d_148/StatefulPartitionedCall#^conv3d_149/StatefulPartitionedCall#^conv3d_150/StatefulPartitionedCall#^conv3d_151/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_143/StatefulPartitionedCall"conv3d_143/StatefulPartitionedCall2H
"conv3d_144/StatefulPartitionedCall"conv3d_144/StatefulPartitionedCall2H
"conv3d_145/StatefulPartitionedCall"conv3d_145/StatefulPartitionedCall2H
"conv3d_146/StatefulPartitionedCall"conv3d_146/StatefulPartitionedCall2H
"conv3d_147/StatefulPartitionedCall"conv3d_147/StatefulPartitionedCall2H
"conv3d_148/StatefulPartitionedCall"conv3d_148/StatefulPartitionedCall2H
"conv3d_149/StatefulPartitionedCall"conv3d_149/StatefulPartitionedCall2H
"conv3d_150/StatefulPartitionedCall"conv3d_150/StatefulPartitionedCall2H
"conv3d_151/StatefulPartitionedCall"conv3d_151/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
ж	
p
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_9569339

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
:џџџџџџџџџ@@2
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
:џџџџџџџџџ@@2	
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
:џџџџџџџџџ@@2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@:_ [
3
_output_shapes!
:џџџџџџџџџ@@
$
_user_specified_name
parameters
Ћ
ј
"__inference__wrapped_model_9567812	
inputP
2model_27_conv3d_143_conv3d_readvariableop_resource: A
3model_27_conv3d_143_biasadd_readvariableop_resource: P
2model_27_conv3d_144_conv3d_readvariableop_resource: A
3model_27_conv3d_144_biasadd_readvariableop_resource:P
2model_27_conv3d_145_conv3d_readvariableop_resource:A
3model_27_conv3d_145_biasadd_readvariableop_resource:P
2model_27_conv3d_146_conv3d_readvariableop_resource:A
3model_27_conv3d_146_biasadd_readvariableop_resource:B
0model_27_dense_27_matmul_readvariableop_resource:@@?
1model_27_dense_27_biasadd_readvariableop_resource:@P
2model_27_conv3d_147_conv3d_readvariableop_resource:A
3model_27_conv3d_147_biasadd_readvariableop_resource:P
2model_27_conv3d_148_conv3d_readvariableop_resource:A
3model_27_conv3d_148_biasadd_readvariableop_resource:P
2model_27_conv3d_149_conv3d_readvariableop_resource:A
3model_27_conv3d_149_biasadd_readvariableop_resource:P
2model_27_conv3d_150_conv3d_readvariableop_resource:0 A
3model_27_conv3d_150_biasadd_readvariableop_resource: P
2model_27_conv3d_151_conv3d_readvariableop_resource: A
3model_27_conv3d_151_biasadd_readvariableop_resource:
identityЂ*model_27/conv3d_143/BiasAdd/ReadVariableOpЂ)model_27/conv3d_143/Conv3D/ReadVariableOpЂ*model_27/conv3d_144/BiasAdd/ReadVariableOpЂ)model_27/conv3d_144/Conv3D/ReadVariableOpЂ*model_27/conv3d_145/BiasAdd/ReadVariableOpЂ)model_27/conv3d_145/Conv3D/ReadVariableOpЂ*model_27/conv3d_146/BiasAdd/ReadVariableOpЂ)model_27/conv3d_146/Conv3D/ReadVariableOpЂ*model_27/conv3d_147/BiasAdd/ReadVariableOpЂ)model_27/conv3d_147/Conv3D/ReadVariableOpЂ*model_27/conv3d_148/BiasAdd/ReadVariableOpЂ)model_27/conv3d_148/Conv3D/ReadVariableOpЂ*model_27/conv3d_149/BiasAdd/ReadVariableOpЂ)model_27/conv3d_149/Conv3D/ReadVariableOpЂ*model_27/conv3d_150/BiasAdd/ReadVariableOpЂ)model_27/conv3d_150/Conv3D/ReadVariableOpЂ*model_27/conv3d_151/BiasAdd/ReadVariableOpЂ)model_27/conv3d_151/Conv3D/ReadVariableOpЂ(model_27/dense_27/BiasAdd/ReadVariableOpЂ'model_27/dense_27/MatMul/ReadVariableOpЧ
9model_27/tf.__operators__.getitem_390/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_27/tf.__operators__.getitem_390/strided_slice/stackЫ
;model_27/tf.__operators__.getitem_390/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_27/tf.__operators__.getitem_390/strided_slice/stack_1Ы
;model_27/tf.__operators__.getitem_390/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_27/tf.__operators__.getitem_390/strided_slice/stack_2О
3model_27/tf.__operators__.getitem_390/strided_sliceStridedSliceinputBmodel_27/tf.__operators__.getitem_390/strided_slice/stack:output:0Dmodel_27/tf.__operators__.getitem_390/strided_slice/stack_1:output:0Dmodel_27/tf.__operators__.getitem_390/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask25
3model_27/tf.__operators__.getitem_390/strided_slice
"model_27/range_conversion_27/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_27/range_conversion_27/sub/yє
 model_27/range_conversion_27/subSub<model_27/tf.__operators__.getitem_390/strided_slice:output:0+model_27/range_conversion_27/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_27/range_conversion_27/sub
&model_27/range_conversion_27/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_27/range_conversion_27/truediv/yь
$model_27/range_conversion_27/truedivRealDiv$model_27/range_conversion_27/sub:z:0/model_27/range_conversion_27/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2&
$model_27/range_conversion_27/truediv
"model_27/range_conversion_27/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_27/range_conversion_27/mul/yр
 model_27/range_conversion_27/mulMul(model_27/range_conversion_27/truediv:z:0+model_27/range_conversion_27/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_27/range_conversion_27/mul
"model_27/range_conversion_27/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2$
"model_27/range_conversion_27/add/yо
 model_27/range_conversion_27/addAddV2$model_27/range_conversion_27/mul:z:0+model_27/range_conversion_27/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_27/range_conversion_27/addЧ
9model_27/tf.__operators__.getitem_391/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_27/tf.__operators__.getitem_391/strided_slice/stackЫ
;model_27/tf.__operators__.getitem_391/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_27/tf.__operators__.getitem_391/strided_slice/stack_1Ы
;model_27/tf.__operators__.getitem_391/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_27/tf.__operators__.getitem_391/strided_slice/stack_2О
3model_27/tf.__operators__.getitem_391/strided_sliceStridedSliceinputBmodel_27/tf.__operators__.getitem_391/strided_slice/stack:output:0Dmodel_27/tf.__operators__.getitem_391/strided_slice/stack_1:output:0Dmodel_27/tf.__operators__.getitem_391/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask25
3model_27/tf.__operators__.getitem_391/strided_slice
"model_27/tf.concat_515/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_27/tf.concat_515/concat/axisЂ
model_27/tf.concat_515/concatConcatV2$model_27/range_conversion_27/add:z:0<model_27/tf.__operators__.getitem_391/strided_slice:output:0+model_27/tf.concat_515/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model_27/tf.concat_515/concatе
)model_27/conv3d_143/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_143_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_27/conv3d_143/Conv3D/ReadVariableOp
model_27/conv3d_143/Conv3DConv3D&model_27/tf.concat_515/concat:output:01model_27/conv3d_143/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_143/Conv3DШ
*model_27/conv3d_143/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_143_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_27/conv3d_143/BiasAdd/ReadVariableOpѓ
model_27/conv3d_143/BiasAddBiasAdd#model_27/conv3d_143/Conv3D:output:02model_27/conv3d_143/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model_27/conv3d_143/BiasAddЌ
model_27/conv3d_143/SoftplusSoftplus$model_27/conv3d_143/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model_27/conv3d_143/SoftplusЙ
,model_27/average_pooling3d_58/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_27/average_pooling3d_58/transpose/perm
'model_27/average_pooling3d_58/transpose	Transpose*model_27/conv3d_143/Softplus:activations:05model_27/average_pooling3d_58/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2)
'model_27/average_pooling3d_58/transpose
'model_27/average_pooling3d_58/AvgPool3D	AvgPool3D+model_27/average_pooling3d_58/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2)
'model_27/average_pooling3d_58/AvgPool3DН
.model_27/average_pooling3d_58/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_27/average_pooling3d_58/transpose_1/perm
)model_27/average_pooling3d_58/transpose_1	Transpose0model_27/average_pooling3d_58/AvgPool3D:output:07model_27/average_pooling3d_58/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2+
)model_27/average_pooling3d_58/transpose_1е
)model_27/conv3d_144/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_144_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_27/conv3d_144/Conv3D/ReadVariableOpЃ
model_27/conv3d_144/Conv3DConv3D-model_27/average_pooling3d_58/transpose_1:y:01model_27/conv3d_144/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_144/Conv3DШ
*model_27/conv3d_144/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_27/conv3d_144/BiasAdd/ReadVariableOpѓ
model_27/conv3d_144/BiasAddBiasAdd#model_27/conv3d_144/Conv3D:output:02model_27/conv3d_144/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_27/conv3d_144/BiasAddЌ
model_27/conv3d_144/SoftplusSoftplus$model_27/conv3d_144/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_27/conv3d_144/SoftplusЙ
,model_27/average_pooling3d_59/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_27/average_pooling3d_59/transpose/perm
'model_27/average_pooling3d_59/transpose	Transpose*model_27/conv3d_144/Softplus:activations:05model_27/average_pooling3d_59/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2)
'model_27/average_pooling3d_59/transpose
'model_27/average_pooling3d_59/AvgPool3D	AvgPool3D+model_27/average_pooling3d_59/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_27/average_pooling3d_59/AvgPool3DН
.model_27/average_pooling3d_59/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_27/average_pooling3d_59/transpose_1/perm
)model_27/average_pooling3d_59/transpose_1	Transpose0model_27/average_pooling3d_59/AvgPool3D:output:07model_27/average_pooling3d_59/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_27/average_pooling3d_59/transpose_1е
)model_27/conv3d_145/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_145_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_27/conv3d_145/Conv3D/ReadVariableOpЃ
model_27/conv3d_145/Conv3DConv3D-model_27/average_pooling3d_59/transpose_1:y:01model_27/conv3d_145/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_145/Conv3DШ
*model_27/conv3d_145/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_27/conv3d_145/BiasAdd/ReadVariableOpѓ
model_27/conv3d_145/BiasAddBiasAdd#model_27/conv3d_145/Conv3D:output:02model_27/conv3d_145/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_27/conv3d_145/BiasAddЌ
model_27/conv3d_145/SoftplusSoftplus$model_27/conv3d_145/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_27/conv3d_145/SoftplusЙ
,model_27/average_pooling3d_60/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_27/average_pooling3d_60/transpose/perm
'model_27/average_pooling3d_60/transpose	Transpose*model_27/conv3d_145/Softplus:activations:05model_27/average_pooling3d_60/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_27/average_pooling3d_60/transpose
'model_27/average_pooling3d_60/AvgPool3D	AvgPool3D+model_27/average_pooling3d_60/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_27/average_pooling3d_60/AvgPool3DН
.model_27/average_pooling3d_60/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_27/average_pooling3d_60/transpose_1/perm
)model_27/average_pooling3d_60/transpose_1	Transpose0model_27/average_pooling3d_60/AvgPool3D:output:07model_27/average_pooling3d_60/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_27/average_pooling3d_60/transpose_1е
)model_27/conv3d_146/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_146_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_27/conv3d_146/Conv3D/ReadVariableOpЃ
model_27/conv3d_146/Conv3DConv3D-model_27/average_pooling3d_60/transpose_1:y:01model_27/conv3d_146/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_146/Conv3DШ
*model_27/conv3d_146/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_27/conv3d_146/BiasAdd/ReadVariableOpѓ
model_27/conv3d_146/BiasAddBiasAdd#model_27/conv3d_146/Conv3D:output:02model_27/conv3d_146/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_27/conv3d_146/BiasAddЌ
model_27/conv3d_146/SoftplusSoftplus$model_27/conv3d_146/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_27/conv3d_146/SoftplusЙ
,model_27/average_pooling3d_61/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_27/average_pooling3d_61/transpose/perm
'model_27/average_pooling3d_61/transpose	Transpose*model_27/conv3d_146/Softplus:activations:05model_27/average_pooling3d_61/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_27/average_pooling3d_61/transpose
'model_27/average_pooling3d_61/AvgPool3D	AvgPool3D+model_27/average_pooling3d_61/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_27/average_pooling3d_61/AvgPool3DН
.model_27/average_pooling3d_61/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_27/average_pooling3d_61/transpose_1/perm
)model_27/average_pooling3d_61/transpose_1	Transpose0model_27/average_pooling3d_61/AvgPool3D:output:07model_27/average_pooling3d_61/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_27/average_pooling3d_61/transpose_1
model_27/reshape_54/ShapeShape-model_27/average_pooling3d_61/transpose_1:y:0*
T0*
_output_shapes
:2
model_27/reshape_54/Shape
'model_27/reshape_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_27/reshape_54/strided_slice/stack 
)model_27/reshape_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_54/strided_slice/stack_1 
)model_27/reshape_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_54/strided_slice/stack_2к
!model_27/reshape_54/strided_sliceStridedSlice"model_27/reshape_54/Shape:output:00model_27/reshape_54/strided_slice/stack:output:02model_27/reshape_54/strided_slice/stack_1:output:02model_27/reshape_54/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_27/reshape_54/strided_slice
#model_27/reshape_54/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_27/reshape_54/Reshape/shape/1ж
!model_27/reshape_54/Reshape/shapePack*model_27/reshape_54/strided_slice:output:0,model_27/reshape_54/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_27/reshape_54/Reshape/shapeв
model_27/reshape_54/ReshapeReshape-model_27/average_pooling3d_61/transpose_1:y:0*model_27/reshape_54/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_27/reshape_54/ReshapeУ
'model_27/dense_27/MatMul/ReadVariableOpReadVariableOp0model_27_dense_27_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_27/dense_27/MatMul/ReadVariableOpЧ
model_27/dense_27/MatMulMatMul$model_27/reshape_54/Reshape:output:0/model_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_27/dense_27/MatMulТ
(model_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp1model_27_dense_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_27/dense_27/BiasAdd/ReadVariableOpЩ
model_27/dense_27/BiasAddBiasAdd"model_27/dense_27/MatMul:product:00model_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_27/dense_27/BiasAdd
model_27/dense_27/SoftplusSoftplus"model_27/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_27/dense_27/Softplus
model_27/reshape_55/ShapeShape(model_27/dense_27/Softplus:activations:0*
T0*
_output_shapes
:2
model_27/reshape_55/Shape
'model_27/reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_27/reshape_55/strided_slice/stack 
)model_27/reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_55/strided_slice/stack_1 
)model_27/reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_27/reshape_55/strided_slice/stack_2к
!model_27/reshape_55/strided_sliceStridedSlice"model_27/reshape_55/Shape:output:00model_27/reshape_55/strided_slice/stack:output:02model_27/reshape_55/strided_slice/stack_1:output:02model_27/reshape_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_27/reshape_55/strided_slice
#model_27/reshape_55/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/1
#model_27/reshape_55/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/2
#model_27/reshape_55/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/3
#model_27/reshape_55/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_27/reshape_55/Reshape/shape/4р
!model_27/reshape_55/Reshape/shapePack*model_27/reshape_55/strided_slice:output:0,model_27/reshape_55/Reshape/shape/1:output:0,model_27/reshape_55/Reshape/shape/2:output:0,model_27/reshape_55/Reshape/shape/3:output:0,model_27/reshape_55/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_27/reshape_55/Reshape/shapeй
model_27/reshape_55/ReshapeReshape(model_27/dense_27/Softplus:activations:0*model_27/reshape_55/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_27/reshape_55/ReshapeЗ
%model_27/tf.reshape_640/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_27/tf.reshape_640/Reshape/shapeэ
model_27/tf.reshape_640/ReshapeReshape$model_27/reshape_55/Reshape:output:0.model_27/tf.reshape_640/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_27/tf.reshape_640/ReshapeГ
#model_27/tf.tile_320/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_27/tf.tile_320/Tile/multiplesр
model_27/tf.tile_320/TileTile(model_27/tf.reshape_640/Reshape:output:0,model_27/tf.tile_320/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_27/tf.tile_320/TileЋ
%model_27/tf.reshape_641/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2'
%model_27/tf.reshape_641/Reshape/shapeп
model_27/tf.reshape_641/ReshapeReshape"model_27/tf.tile_320/Tile:output:0.model_27/tf.reshape_641/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
model_27/tf.reshape_641/Reshape
"model_27/tf.concat_516/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_27/tf.concat_516/concat/axis
model_27/tf.concat_516/concatConcatV2(model_27/tf.reshape_641/Reshape:output:0*model_27/conv3d_146/Softplus:activations:0+model_27/tf.concat_516/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_27/tf.concat_516/concatе
)model_27/conv3d_147/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_147_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_27/conv3d_147/Conv3D/ReadVariableOp
model_27/conv3d_147/Conv3DConv3D&model_27/tf.concat_516/concat:output:01model_27/conv3d_147/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_147/Conv3DШ
*model_27/conv3d_147/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_27/conv3d_147/BiasAdd/ReadVariableOpѓ
model_27/conv3d_147/BiasAddBiasAdd#model_27/conv3d_147/Conv3D:output:02model_27/conv3d_147/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_27/conv3d_147/BiasAddЌ
model_27/conv3d_147/SoftplusSoftplus$model_27/conv3d_147/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_27/conv3d_147/SoftplusЗ
%model_27/tf.reshape_642/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_27/tf.reshape_642/Reshape/shapeѓ
model_27/tf.reshape_642/ReshapeReshape*model_27/conv3d_147/Softplus:activations:0.model_27/tf.reshape_642/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_27/tf.reshape_642/ReshapeГ
#model_27/tf.tile_321/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_27/tf.tile_321/Tile/multiplesр
model_27/tf.tile_321/TileTile(model_27/tf.reshape_642/Reshape:output:0,model_27/tf.tile_321/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_27/tf.tile_321/TileЋ
%model_27/tf.reshape_643/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2'
%model_27/tf.reshape_643/Reshape/shapeп
model_27/tf.reshape_643/ReshapeReshape"model_27/tf.tile_321/Tile:output:0.model_27/tf.reshape_643/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
model_27/tf.reshape_643/Reshape
"model_27/tf.concat_517/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_27/tf.concat_517/concat/axis
model_27/tf.concat_517/concatConcatV2(model_27/tf.reshape_643/Reshape:output:0*model_27/conv3d_145/Softplus:activations:0+model_27/tf.concat_517/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_27/tf.concat_517/concatе
)model_27/conv3d_148/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_148_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_27/conv3d_148/Conv3D/ReadVariableOp
model_27/conv3d_148/Conv3DConv3D&model_27/tf.concat_517/concat:output:01model_27/conv3d_148/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_148/Conv3DШ
*model_27/conv3d_148/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_148_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_27/conv3d_148/BiasAdd/ReadVariableOpѓ
model_27/conv3d_148/BiasAddBiasAdd#model_27/conv3d_148/Conv3D:output:02model_27/conv3d_148/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_27/conv3d_148/BiasAddЌ
model_27/conv3d_148/SoftplusSoftplus$model_27/conv3d_148/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_27/conv3d_148/SoftplusЗ
%model_27/tf.reshape_644/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_27/tf.reshape_644/Reshape/shapeѓ
model_27/tf.reshape_644/ReshapeReshape*model_27/conv3d_148/Softplus:activations:0.model_27/tf.reshape_644/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_27/tf.reshape_644/ReshapeГ
#model_27/tf.tile_322/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_27/tf.tile_322/Tile/multiplesр
model_27/tf.tile_322/TileTile(model_27/tf.reshape_644/Reshape:output:0,model_27/tf.tile_322/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_27/tf.tile_322/TileЋ
%model_27/tf.reshape_645/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2'
%model_27/tf.reshape_645/Reshape/shapeп
model_27/tf.reshape_645/ReshapeReshape"model_27/tf.tile_322/Tile:output:0.model_27/tf.reshape_645/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2!
model_27/tf.reshape_645/Reshape
"model_27/tf.concat_518/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_27/tf.concat_518/concat/axis
model_27/tf.concat_518/concatConcatV2(model_27/tf.reshape_645/Reshape:output:0*model_27/conv3d_144/Softplus:activations:0+model_27/tf.concat_518/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_27/tf.concat_518/concatе
)model_27/conv3d_149/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_149_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_27/conv3d_149/Conv3D/ReadVariableOp
model_27/conv3d_149/Conv3DConv3D&model_27/tf.concat_518/concat:output:01model_27/conv3d_149/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_149/Conv3DШ
*model_27/conv3d_149/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_149_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_27/conv3d_149/BiasAdd/ReadVariableOpѓ
model_27/conv3d_149/BiasAddBiasAdd#model_27/conv3d_149/Conv3D:output:02model_27/conv3d_149/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_27/conv3d_149/BiasAddЌ
model_27/conv3d_149/SoftplusSoftplus$model_27/conv3d_149/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_27/conv3d_149/SoftplusЗ
%model_27/tf.reshape_646/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2'
%model_27/tf.reshape_646/Reshape/shapeѓ
model_27/tf.reshape_646/ReshapeReshape*model_27/conv3d_149/Softplus:activations:0.model_27/tf.reshape_646/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2!
model_27/tf.reshape_646/ReshapeГ
#model_27/tf.tile_323/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_27/tf.tile_323/Tile/multiplesр
model_27/tf.tile_323/TileTile(model_27/tf.reshape_646/Reshape:output:0,model_27/tf.tile_323/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
model_27/tf.tile_323/TileЋ
%model_27/tf.reshape_647/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2'
%model_27/tf.reshape_647/Reshape/shapeп
model_27/tf.reshape_647/ReshapeReshape"model_27/tf.tile_323/Tile:output:0.model_27/tf.reshape_647/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2!
model_27/tf.reshape_647/Reshape
"model_27/tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_27/tf.concat_519/concat/axis
model_27/tf.concat_519/concatConcatV2(model_27/tf.reshape_647/Reshape:output:0*model_27/conv3d_143/Softplus:activations:0+model_27/tf.concat_519/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
model_27/tf.concat_519/concatе
)model_27/conv3d_150/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_150_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_27/conv3d_150/Conv3D/ReadVariableOp
model_27/conv3d_150/Conv3DConv3D&model_27/tf.concat_519/concat:output:01model_27/conv3d_150/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_150/Conv3DШ
*model_27/conv3d_150/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_150_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_27/conv3d_150/BiasAdd/ReadVariableOpѓ
model_27/conv3d_150/BiasAddBiasAdd#model_27/conv3d_150/Conv3D:output:02model_27/conv3d_150/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model_27/conv3d_150/BiasAddЌ
model_27/conv3d_150/SoftplusSoftplus$model_27/conv3d_150/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model_27/conv3d_150/Softplusе
)model_27/conv3d_151/Conv3D/ReadVariableOpReadVariableOp2model_27_conv3d_151_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_27/conv3d_151/Conv3D/ReadVariableOp 
model_27/conv3d_151/Conv3DConv3D*model_27/conv3d_150/Softplus:activations:01model_27/conv3d_151/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_27/conv3d_151/Conv3DШ
*model_27/conv3d_151/BiasAdd/ReadVariableOpReadVariableOp3model_27_conv3d_151_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_27/conv3d_151/BiasAdd/ReadVariableOpѓ
model_27/conv3d_151/BiasAddBiasAdd#model_27/conv3d_151/Conv3D:output:02model_27/conv3d_151/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
model_27/conv3d_151/BiasAdd
IdentityIdentity$model_27/conv3d_151/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityФ
NoOpNoOp+^model_27/conv3d_143/BiasAdd/ReadVariableOp*^model_27/conv3d_143/Conv3D/ReadVariableOp+^model_27/conv3d_144/BiasAdd/ReadVariableOp*^model_27/conv3d_144/Conv3D/ReadVariableOp+^model_27/conv3d_145/BiasAdd/ReadVariableOp*^model_27/conv3d_145/Conv3D/ReadVariableOp+^model_27/conv3d_146/BiasAdd/ReadVariableOp*^model_27/conv3d_146/Conv3D/ReadVariableOp+^model_27/conv3d_147/BiasAdd/ReadVariableOp*^model_27/conv3d_147/Conv3D/ReadVariableOp+^model_27/conv3d_148/BiasAdd/ReadVariableOp*^model_27/conv3d_148/Conv3D/ReadVariableOp+^model_27/conv3d_149/BiasAdd/ReadVariableOp*^model_27/conv3d_149/Conv3D/ReadVariableOp+^model_27/conv3d_150/BiasAdd/ReadVariableOp*^model_27/conv3d_150/Conv3D/ReadVariableOp+^model_27/conv3d_151/BiasAdd/ReadVariableOp*^model_27/conv3d_151/Conv3D/ReadVariableOp)^model_27/dense_27/BiasAdd/ReadVariableOp(^model_27/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2X
*model_27/conv3d_143/BiasAdd/ReadVariableOp*model_27/conv3d_143/BiasAdd/ReadVariableOp2V
)model_27/conv3d_143/Conv3D/ReadVariableOp)model_27/conv3d_143/Conv3D/ReadVariableOp2X
*model_27/conv3d_144/BiasAdd/ReadVariableOp*model_27/conv3d_144/BiasAdd/ReadVariableOp2V
)model_27/conv3d_144/Conv3D/ReadVariableOp)model_27/conv3d_144/Conv3D/ReadVariableOp2X
*model_27/conv3d_145/BiasAdd/ReadVariableOp*model_27/conv3d_145/BiasAdd/ReadVariableOp2V
)model_27/conv3d_145/Conv3D/ReadVariableOp)model_27/conv3d_145/Conv3D/ReadVariableOp2X
*model_27/conv3d_146/BiasAdd/ReadVariableOp*model_27/conv3d_146/BiasAdd/ReadVariableOp2V
)model_27/conv3d_146/Conv3D/ReadVariableOp)model_27/conv3d_146/Conv3D/ReadVariableOp2X
*model_27/conv3d_147/BiasAdd/ReadVariableOp*model_27/conv3d_147/BiasAdd/ReadVariableOp2V
)model_27/conv3d_147/Conv3D/ReadVariableOp)model_27/conv3d_147/Conv3D/ReadVariableOp2X
*model_27/conv3d_148/BiasAdd/ReadVariableOp*model_27/conv3d_148/BiasAdd/ReadVariableOp2V
)model_27/conv3d_148/Conv3D/ReadVariableOp)model_27/conv3d_148/Conv3D/ReadVariableOp2X
*model_27/conv3d_149/BiasAdd/ReadVariableOp*model_27/conv3d_149/BiasAdd/ReadVariableOp2V
)model_27/conv3d_149/Conv3D/ReadVariableOp)model_27/conv3d_149/Conv3D/ReadVariableOp2X
*model_27/conv3d_150/BiasAdd/ReadVariableOp*model_27/conv3d_150/BiasAdd/ReadVariableOp2V
)model_27/conv3d_150/Conv3D/ReadVariableOp)model_27/conv3d_150/Conv3D/ReadVariableOp2X
*model_27/conv3d_151/BiasAdd/ReadVariableOp*model_27/conv3d_151/BiasAdd/ReadVariableOp2V
)model_27/conv3d_151/Conv3D/ReadVariableOp)model_27/conv3d_151/Conv3D/ReadVariableOp2T
(model_27/dense_27/BiasAdd/ReadVariableOp(model_27/dense_27/BiasAdd/ReadVariableOp2R
'model_27/dense_27/MatMul/ReadVariableOp'model_27/dense_27/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
	
m
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9569435

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
у

m
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9567915

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_reshape_54_layer_call_and_return_conditional_losses_9569548

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
strided_slice/stack_2т
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
Reshape/shape/1
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ


E__inference_model_27_layer_call_and_return_conditional_losses_9568861	
input0
conv3d_143_9568772:  
conv3d_143_9568774: 0
conv3d_144_9568778:  
conv3d_144_9568780:0
conv3d_145_9568784: 
conv3d_145_9568786:0
conv3d_146_9568790: 
conv3d_146_9568792:"
dense_27_9568797:@@
dense_27_9568799:@0
conv3d_147_9568811: 
conv3d_147_9568813:0
conv3d_148_9568824: 
conv3d_148_9568826:0
conv3d_149_9568837: 
conv3d_149_9568839:0
conv3d_150_9568850:0  
conv3d_150_9568852: 0
conv3d_151_9568855:  
conv3d_151_9568857:
identityЂ"conv3d_143/StatefulPartitionedCallЂ"conv3d_144/StatefulPartitionedCallЂ"conv3d_145/StatefulPartitionedCallЂ"conv3d_146/StatefulPartitionedCallЂ"conv3d_147/StatefulPartitionedCallЂ"conv3d_148/StatefulPartitionedCallЂ"conv3d_149/StatefulPartitionedCallЂ"conv3d_150/StatefulPartitionedCallЂ"conv3d_151/StatefulPartitionedCallЂ dense_27/StatefulPartitionedCallЕ
0tf.__operators__.getitem_390/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_390/strided_slice/stackЙ
2tf.__operators__.getitem_390/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_390/strided_slice/stack_1Й
2tf.__operators__.getitem_390/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_390/strided_slice/stack_2
*tf.__operators__.getitem_390/strided_sliceStridedSliceinput9tf.__operators__.getitem_390/strided_slice/stack:output:0;tf.__operators__.getitem_390/strided_slice/stack_1:output:0;tf.__operators__.getitem_390/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_390/strided_sliceК
#range_conversion_27/PartitionedCallPartitionedCall3tf.__operators__.getitem_390/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_95679552%
#range_conversion_27/PartitionedCallЕ
0tf.__operators__.getitem_391/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_391/strided_slice/stackЙ
2tf.__operators__.getitem_391/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_391/strided_slice/stack_1Й
2tf.__operators__.getitem_391/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_391/strided_slice/stack_2
*tf.__operators__.getitem_391/strided_sliceStridedSliceinput9tf.__operators__.getitem_391/strided_slice/stack:output:0;tf.__operators__.getitem_391/strided_slice/stack_1:output:0;tf.__operators__.getitem_391/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_391/strided_slicex
tf.concat_515/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_515/concat/axis
tf.concat_515/concatConcatV2,range_conversion_27/PartitionedCall:output:03tf.__operators__.getitem_391/strided_slice:output:0"tf.concat_515/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_515/concatЯ
"conv3d_143/StatefulPartitionedCallStatefulPartitionedCalltf.concat_515/concat:output:0conv3d_143_9568772conv3d_143_9568774*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_143_layer_call_and_return_conditional_losses_95679742$
"conv3d_143/StatefulPartitionedCallЕ
$average_pooling3d_58/PartitionedCallPartitionedCall+conv3d_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_95679882&
$average_pooling3d_58/PartitionedCallп
"conv3d_144/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_58/PartitionedCall:output:0conv3d_144_9568778conv3d_144_9568780*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_144_layer_call_and_return_conditional_losses_95680012$
"conv3d_144/StatefulPartitionedCallЕ
$average_pooling3d_59/PartitionedCallPartitionedCall+conv3d_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_95680152&
$average_pooling3d_59/PartitionedCallп
"conv3d_145/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_59/PartitionedCall:output:0conv3d_145_9568784conv3d_145_9568786*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_145_layer_call_and_return_conditional_losses_95680282$
"conv3d_145/StatefulPartitionedCallЕ
$average_pooling3d_60/PartitionedCallPartitionedCall+conv3d_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_95680422&
$average_pooling3d_60/PartitionedCallп
"conv3d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_60/PartitionedCall:output:0conv3d_146_9568790conv3d_146_9568792*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_146_layer_call_and_return_conditional_losses_95680552$
"conv3d_146/StatefulPartitionedCallЕ
$average_pooling3d_61/PartitionedCallPartitionedCall+conv3d_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_95680692&
$average_pooling3d_61/PartitionedCall
reshape_54/PartitionedCallPartitionedCall-average_pooling3d_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_95680832
reshape_54/PartitionedCallП
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#reshape_54/PartitionedCall:output:0dense_27_9568797dense_27_9568799*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_95680962"
 dense_27/StatefulPartitionedCall
reshape_55/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_95681172
reshape_55/PartitionedCallЅ
tf.reshape_640/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_640/Reshape/shapeб
tf.reshape_640/ReshapeReshape#reshape_55/PartitionedCall:output:0%tf.reshape_640/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_640/ReshapeЁ
tf.tile_320/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_320/Tile/multiplesМ
tf.tile_320/TileTiletf.reshape_640/Reshape:output:0#tf.tile_320/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_320/Tile
tf.reshape_641/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_641/Reshape/shapeЛ
tf.reshape_641/ReshapeReshapetf.tile_320/Tile:output:0%tf.reshape_641/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_641/Reshapex
tf.concat_516/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_516/concat/axisё
tf.concat_516/concatConcatV2tf.reshape_641/Reshape:output:0+conv3d_146/StatefulPartitionedCall:output:0"tf.concat_516/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_516/concatЯ
"conv3d_147/StatefulPartitionedCallStatefulPartitionedCalltf.concat_516/concat:output:0conv3d_147_9568811conv3d_147_9568813*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_147_layer_call_and_return_conditional_losses_95681382$
"conv3d_147/StatefulPartitionedCallЅ
tf.reshape_642/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_642/Reshape/shapeй
tf.reshape_642/ReshapeReshape+conv3d_147/StatefulPartitionedCall:output:0%tf.reshape_642/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_642/ReshapeЁ
tf.tile_321/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_321/Tile/multiplesМ
tf.tile_321/TileTiletf.reshape_642/Reshape:output:0#tf.tile_321/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_321/Tile
tf.reshape_643/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_643/Reshape/shapeЛ
tf.reshape_643/ReshapeReshapetf.tile_321/Tile:output:0%tf.reshape_643/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_643/Reshapex
tf.concat_517/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_517/concat/axisё
tf.concat_517/concatConcatV2tf.reshape_643/Reshape:output:0+conv3d_145/StatefulPartitionedCall:output:0"tf.concat_517/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_517/concatЯ
"conv3d_148/StatefulPartitionedCallStatefulPartitionedCalltf.concat_517/concat:output:0conv3d_148_9568824conv3d_148_9568826*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_148_layer_call_and_return_conditional_losses_95681632$
"conv3d_148/StatefulPartitionedCallЅ
tf.reshape_644/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_644/Reshape/shapeй
tf.reshape_644/ReshapeReshape+conv3d_148/StatefulPartitionedCall:output:0%tf.reshape_644/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_644/ReshapeЁ
tf.tile_322/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_322/Tile/multiplesМ
tf.tile_322/TileTiletf.reshape_644/Reshape:output:0#tf.tile_322/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_322/Tile
tf.reshape_645/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_645/Reshape/shapeЛ
tf.reshape_645/ReshapeReshapetf.tile_322/Tile:output:0%tf.reshape_645/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_645/Reshapex
tf.concat_518/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_518/concat/axisё
tf.concat_518/concatConcatV2tf.reshape_645/Reshape:output:0+conv3d_144/StatefulPartitionedCall:output:0"tf.concat_518/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_518/concatЯ
"conv3d_149/StatefulPartitionedCallStatefulPartitionedCalltf.concat_518/concat:output:0conv3d_149_9568837conv3d_149_9568839*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_149_layer_call_and_return_conditional_losses_95681882$
"conv3d_149/StatefulPartitionedCallЅ
tf.reshape_646/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_646/Reshape/shapeй
tf.reshape_646/ReshapeReshape+conv3d_149/StatefulPartitionedCall:output:0%tf.reshape_646/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_646/ReshapeЁ
tf.tile_323/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_323/Tile/multiplesМ
tf.tile_323/TileTiletf.reshape_646/Reshape:output:0#tf.tile_323/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_323/Tile
tf.reshape_647/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_647/Reshape/shapeЛ
tf.reshape_647/ReshapeReshapetf.tile_323/Tile:output:0%tf.reshape_647/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_647/Reshapex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisё
tf.concat_519/concatConcatV2tf.reshape_647/Reshape:output:0+conv3d_143/StatefulPartitionedCall:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_519/concatЯ
"conv3d_150/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv3d_150_9568850conv3d_150_9568852*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_150_layer_call_and_return_conditional_losses_95682132$
"conv3d_150/StatefulPartitionedCallн
"conv3d_151/StatefulPartitionedCallStatefulPartitionedCall+conv3d_150/StatefulPartitionedCall:output:0conv3d_151_9568855conv3d_151_9568857*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_151_layer_call_and_return_conditional_losses_95682292$
"conv3d_151/StatefulPartitionedCall
IdentityIdentity+conv3d_151/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_143/StatefulPartitionedCall#^conv3d_144/StatefulPartitionedCall#^conv3d_145/StatefulPartitionedCall#^conv3d_146/StatefulPartitionedCall#^conv3d_147/StatefulPartitionedCall#^conv3d_148/StatefulPartitionedCall#^conv3d_149/StatefulPartitionedCall#^conv3d_150/StatefulPartitionedCall#^conv3d_151/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_143/StatefulPartitionedCall"conv3d_143/StatefulPartitionedCall2H
"conv3d_144/StatefulPartitionedCall"conv3d_144/StatefulPartitionedCall2H
"conv3d_145/StatefulPartitionedCall"conv3d_145/StatefulPartitionedCall2H
"conv3d_146/StatefulPartitionedCall"conv3d_146/StatefulPartitionedCall2H
"conv3d_147/StatefulPartitionedCall"conv3d_147/StatefulPartitionedCall2H
"conv3d_148/StatefulPartitionedCall"conv3d_148/StatefulPartitionedCall2H
"conv3d_149/StatefulPartitionedCall"conv3d_149/StatefulPartitionedCall2H
"conv3d_150/StatefulPartitionedCall"conv3d_150/StatefulPartitionedCall2H
"conv3d_151/StatefulPartitionedCall"conv3d_151/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput

R
6__inference_average_pooling3d_59_layer_call_fn_9569417

inputs
identityц
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_95680152
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_146_layer_call_fn_9569492

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_146_layer_call_and_return_conditional_losses_95680552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
у

m
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9567885

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Э

G__inference_conv3d_148_layer_call_and_return_conditional_losses_9569628

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё
ђ
*__inference_model_27_layer_call_fn_9568998

inputs%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_95685672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
	
m
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9567988

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @@:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
Ц№
Д
E__inference_model_27_layer_call_and_return_conditional_losses_9569322

inputsG
)conv3d_143_conv3d_readvariableop_resource: 8
*conv3d_143_biasadd_readvariableop_resource: G
)conv3d_144_conv3d_readvariableop_resource: 8
*conv3d_144_biasadd_readvariableop_resource:G
)conv3d_145_conv3d_readvariableop_resource:8
*conv3d_145_biasadd_readvariableop_resource:G
)conv3d_146_conv3d_readvariableop_resource:8
*conv3d_146_biasadd_readvariableop_resource:9
'dense_27_matmul_readvariableop_resource:@@6
(dense_27_biasadd_readvariableop_resource:@G
)conv3d_147_conv3d_readvariableop_resource:8
*conv3d_147_biasadd_readvariableop_resource:G
)conv3d_148_conv3d_readvariableop_resource:8
*conv3d_148_biasadd_readvariableop_resource:G
)conv3d_149_conv3d_readvariableop_resource:8
*conv3d_149_biasadd_readvariableop_resource:G
)conv3d_150_conv3d_readvariableop_resource:0 8
*conv3d_150_biasadd_readvariableop_resource: G
)conv3d_151_conv3d_readvariableop_resource: 8
*conv3d_151_biasadd_readvariableop_resource:
identityЂ!conv3d_143/BiasAdd/ReadVariableOpЂ conv3d_143/Conv3D/ReadVariableOpЂ!conv3d_144/BiasAdd/ReadVariableOpЂ conv3d_144/Conv3D/ReadVariableOpЂ!conv3d_145/BiasAdd/ReadVariableOpЂ conv3d_145/Conv3D/ReadVariableOpЂ!conv3d_146/BiasAdd/ReadVariableOpЂ conv3d_146/Conv3D/ReadVariableOpЂ!conv3d_147/BiasAdd/ReadVariableOpЂ conv3d_147/Conv3D/ReadVariableOpЂ!conv3d_148/BiasAdd/ReadVariableOpЂ conv3d_148/Conv3D/ReadVariableOpЂ!conv3d_149/BiasAdd/ReadVariableOpЂ conv3d_149/Conv3D/ReadVariableOpЂ!conv3d_150/BiasAdd/ReadVariableOpЂ conv3d_150/Conv3D/ReadVariableOpЂ!conv3d_151/BiasAdd/ReadVariableOpЂ conv3d_151/Conv3D/ReadVariableOpЂdense_27/BiasAdd/ReadVariableOpЂdense_27/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_390/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_390/strided_slice/stackЙ
2tf.__operators__.getitem_390/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_390/strided_slice/stack_1Й
2tf.__operators__.getitem_390/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_390/strided_slice/stack_2
*tf.__operators__.getitem_390/strided_sliceStridedSliceinputs9tf.__operators__.getitem_390/strided_slice/stack:output:0;tf.__operators__.getitem_390/strided_slice/stack_1:output:0;tf.__operators__.getitem_390/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_390/strided_slice{
range_conversion_27/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_27/sub/yа
range_conversion_27/subSub3tf.__operators__.getitem_390/strided_slice:output:0"range_conversion_27/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/sub
range_conversion_27/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_27/truediv/yШ
range_conversion_27/truedivRealDivrange_conversion_27/sub:z:0&range_conversion_27/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/truediv{
range_conversion_27/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_27/mul/yМ
range_conversion_27/mulMulrange_conversion_27/truediv:z:0"range_conversion_27/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/mul{
range_conversion_27/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_27/add/yК
range_conversion_27/addAddV2range_conversion_27/mul:z:0"range_conversion_27/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/addЕ
0tf.__operators__.getitem_391/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_391/strided_slice/stackЙ
2tf.__operators__.getitem_391/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_391/strided_slice/stack_1Й
2tf.__operators__.getitem_391/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_391/strided_slice/stack_2
*tf.__operators__.getitem_391/strided_sliceStridedSliceinputs9tf.__operators__.getitem_391/strided_slice/stack:output:0;tf.__operators__.getitem_391/strided_slice/stack_1:output:0;tf.__operators__.getitem_391/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_391/strided_slicex
tf.concat_515/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_515/concat/axisѕ
tf.concat_515/concatConcatV2range_conversion_27/add:z:03tf.__operators__.getitem_391/strided_slice:output:0"tf.concat_515/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_515/concatК
 conv3d_143/Conv3D/ReadVariableOpReadVariableOp)conv3d_143_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_143/Conv3D/ReadVariableOpј
conv3d_143/Conv3DConv3Dtf.concat_515/concat:output:0(conv3d_143/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_143/Conv3D­
!conv3d_143/BiasAdd/ReadVariableOpReadVariableOp*conv3d_143_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_143/BiasAdd/ReadVariableOpЯ
conv3d_143/BiasAddBiasAddconv3d_143/Conv3D:output:0)conv3d_143/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_143/BiasAdd
conv3d_143/SoftplusSoftplusconv3d_143/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_143/SoftplusЇ
#average_pooling3d_58/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_58/transpose/permм
average_pooling3d_58/transpose	Transpose!conv3d_143/Softplus:activations:0,average_pooling3d_58/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2 
average_pooling3d_58/transposeэ
average_pooling3d_58/AvgPool3D	AvgPool3D"average_pooling3d_58/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_58/AvgPool3DЋ
%average_pooling3d_58/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_58/transpose_1/permш
 average_pooling3d_58/transpose_1	Transpose'average_pooling3d_58/AvgPool3D:output:0.average_pooling3d_58/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2"
 average_pooling3d_58/transpose_1К
 conv3d_144/Conv3D/ReadVariableOpReadVariableOp)conv3d_144_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_144/Conv3D/ReadVariableOpџ
conv3d_144/Conv3DConv3D$average_pooling3d_58/transpose_1:y:0(conv3d_144/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_144/Conv3D­
!conv3d_144/BiasAdd/ReadVariableOpReadVariableOp*conv3d_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_144/BiasAdd/ReadVariableOpЯ
conv3d_144/BiasAddBiasAddconv3d_144/Conv3D:output:0)conv3d_144/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_144/BiasAdd
conv3d_144/SoftplusSoftplusconv3d_144/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_144/SoftplusЇ
#average_pooling3d_59/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_59/transpose/permм
average_pooling3d_59/transpose	Transpose!conv3d_144/Softplus:activations:0,average_pooling3d_59/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_59/transposeэ
average_pooling3d_59/AvgPool3D	AvgPool3D"average_pooling3d_59/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_59/AvgPool3DЋ
%average_pooling3d_59/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_59/transpose_1/permш
 average_pooling3d_59/transpose_1	Transpose'average_pooling3d_59/AvgPool3D:output:0.average_pooling3d_59/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_59/transpose_1К
 conv3d_145/Conv3D/ReadVariableOpReadVariableOp)conv3d_145_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_145/Conv3D/ReadVariableOpџ
conv3d_145/Conv3DConv3D$average_pooling3d_59/transpose_1:y:0(conv3d_145/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_145/Conv3D­
!conv3d_145/BiasAdd/ReadVariableOpReadVariableOp*conv3d_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_145/BiasAdd/ReadVariableOpЯ
conv3d_145/BiasAddBiasAddconv3d_145/Conv3D:output:0)conv3d_145/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_145/BiasAdd
conv3d_145/SoftplusSoftplusconv3d_145/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_145/SoftplusЇ
#average_pooling3d_60/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_60/transpose/permм
average_pooling3d_60/transpose	Transpose!conv3d_145/Softplus:activations:0,average_pooling3d_60/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_60/transposeэ
average_pooling3d_60/AvgPool3D	AvgPool3D"average_pooling3d_60/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_60/AvgPool3DЋ
%average_pooling3d_60/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_60/transpose_1/permш
 average_pooling3d_60/transpose_1	Transpose'average_pooling3d_60/AvgPool3D:output:0.average_pooling3d_60/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_60/transpose_1К
 conv3d_146/Conv3D/ReadVariableOpReadVariableOp)conv3d_146_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_146/Conv3D/ReadVariableOpџ
conv3d_146/Conv3DConv3D$average_pooling3d_60/transpose_1:y:0(conv3d_146/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_146/Conv3D­
!conv3d_146/BiasAdd/ReadVariableOpReadVariableOp*conv3d_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_146/BiasAdd/ReadVariableOpЯ
conv3d_146/BiasAddBiasAddconv3d_146/Conv3D:output:0)conv3d_146/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_146/BiasAdd
conv3d_146/SoftplusSoftplusconv3d_146/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_146/SoftplusЇ
#average_pooling3d_61/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_61/transpose/permм
average_pooling3d_61/transpose	Transpose!conv3d_146/Softplus:activations:0,average_pooling3d_61/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_61/transposeэ
average_pooling3d_61/AvgPool3D	AvgPool3D"average_pooling3d_61/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_61/AvgPool3DЋ
%average_pooling3d_61/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_61/transpose_1/permш
 average_pooling3d_61/transpose_1	Transpose'average_pooling3d_61/AvgPool3D:output:0.average_pooling3d_61/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_61/transpose_1x
reshape_54/ShapeShape$average_pooling3d_61/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_54/Shape
reshape_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_54/strided_slice/stack
 reshape_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_1
 reshape_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_2Є
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
reshape_54/Reshape/shape/1В
reshape_54/Reshape/shapePack!reshape_54/strided_slice:output:0#reshape_54/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_54/Reshape/shapeЎ
reshape_54/ReshapeReshape$average_pooling3d_61/transpose_1:y:0!reshape_54/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_54/ReshapeЈ
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_27/MatMul/ReadVariableOpЃ
dense_27/MatMulMatMulreshape_54/Reshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_27/MatMulЇ
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_27/BiasAdd/ReadVariableOpЅ
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_27/BiasAdd
dense_27/SoftplusSoftplusdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_27/Softpluss
reshape_55/ShapeShapedense_27/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_55/Shape
reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_55/strided_slice/stack
 reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_1
 reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_2Є
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
reshape_55/Reshape/shape/4Ё
reshape_55/Reshape/shapePack!reshape_55/strided_slice:output:0#reshape_55/Reshape/shape/1:output:0#reshape_55/Reshape/shape/2:output:0#reshape_55/Reshape/shape/3:output:0#reshape_55/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_55/Reshape/shapeЕ
reshape_55/ReshapeReshapedense_27/Softplus:activations:0!reshape_55/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_55/ReshapeЅ
tf.reshape_640/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_640/Reshape/shapeЩ
tf.reshape_640/ReshapeReshapereshape_55/Reshape:output:0%tf.reshape_640/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_640/ReshapeЁ
tf.tile_320/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_320/Tile/multiplesМ
tf.tile_320/TileTiletf.reshape_640/Reshape:output:0#tf.tile_320/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_320/Tile
tf.reshape_641/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_641/Reshape/shapeЛ
tf.reshape_641/ReshapeReshapetf.tile_320/Tile:output:0%tf.reshape_641/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_641/Reshapex
tf.concat_516/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_516/concat/axisч
tf.concat_516/concatConcatV2tf.reshape_641/Reshape:output:0!conv3d_146/Softplus:activations:0"tf.concat_516/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_516/concatК
 conv3d_147/Conv3D/ReadVariableOpReadVariableOp)conv3d_147_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_147/Conv3D/ReadVariableOpј
conv3d_147/Conv3DConv3Dtf.concat_516/concat:output:0(conv3d_147/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_147/Conv3D­
!conv3d_147/BiasAdd/ReadVariableOpReadVariableOp*conv3d_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_147/BiasAdd/ReadVariableOpЯ
conv3d_147/BiasAddBiasAddconv3d_147/Conv3D:output:0)conv3d_147/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_147/BiasAdd
conv3d_147/SoftplusSoftplusconv3d_147/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_147/SoftplusЅ
tf.reshape_642/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_642/Reshape/shapeЯ
tf.reshape_642/ReshapeReshape!conv3d_147/Softplus:activations:0%tf.reshape_642/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_642/ReshapeЁ
tf.tile_321/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_321/Tile/multiplesМ
tf.tile_321/TileTiletf.reshape_642/Reshape:output:0#tf.tile_321/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_321/Tile
tf.reshape_643/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_643/Reshape/shapeЛ
tf.reshape_643/ReshapeReshapetf.tile_321/Tile:output:0%tf.reshape_643/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_643/Reshapex
tf.concat_517/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_517/concat/axisч
tf.concat_517/concatConcatV2tf.reshape_643/Reshape:output:0!conv3d_145/Softplus:activations:0"tf.concat_517/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_517/concatК
 conv3d_148/Conv3D/ReadVariableOpReadVariableOp)conv3d_148_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_148/Conv3D/ReadVariableOpј
conv3d_148/Conv3DConv3Dtf.concat_517/concat:output:0(conv3d_148/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_148/Conv3D­
!conv3d_148/BiasAdd/ReadVariableOpReadVariableOp*conv3d_148_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_148/BiasAdd/ReadVariableOpЯ
conv3d_148/BiasAddBiasAddconv3d_148/Conv3D:output:0)conv3d_148/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_148/BiasAdd
conv3d_148/SoftplusSoftplusconv3d_148/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_148/SoftplusЅ
tf.reshape_644/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_644/Reshape/shapeЯ
tf.reshape_644/ReshapeReshape!conv3d_148/Softplus:activations:0%tf.reshape_644/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_644/ReshapeЁ
tf.tile_322/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_322/Tile/multiplesМ
tf.tile_322/TileTiletf.reshape_644/Reshape:output:0#tf.tile_322/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_322/Tile
tf.reshape_645/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_645/Reshape/shapeЛ
tf.reshape_645/ReshapeReshapetf.tile_322/Tile:output:0%tf.reshape_645/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_645/Reshapex
tf.concat_518/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_518/concat/axisч
tf.concat_518/concatConcatV2tf.reshape_645/Reshape:output:0!conv3d_144/Softplus:activations:0"tf.concat_518/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_518/concatК
 conv3d_149/Conv3D/ReadVariableOpReadVariableOp)conv3d_149_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_149/Conv3D/ReadVariableOpј
conv3d_149/Conv3DConv3Dtf.concat_518/concat:output:0(conv3d_149/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_149/Conv3D­
!conv3d_149/BiasAdd/ReadVariableOpReadVariableOp*conv3d_149_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_149/BiasAdd/ReadVariableOpЯ
conv3d_149/BiasAddBiasAddconv3d_149/Conv3D:output:0)conv3d_149/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_149/BiasAdd
conv3d_149/SoftplusSoftplusconv3d_149/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_149/SoftplusЅ
tf.reshape_646/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_646/Reshape/shapeЯ
tf.reshape_646/ReshapeReshape!conv3d_149/Softplus:activations:0%tf.reshape_646/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_646/ReshapeЁ
tf.tile_323/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_323/Tile/multiplesМ
tf.tile_323/TileTiletf.reshape_646/Reshape:output:0#tf.tile_323/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_323/Tile
tf.reshape_647/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_647/Reshape/shapeЛ
tf.reshape_647/ReshapeReshapetf.tile_323/Tile:output:0%tf.reshape_647/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_647/Reshapex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisч
tf.concat_519/concatConcatV2tf.reshape_647/Reshape:output:0!conv3d_143/Softplus:activations:0"tf.concat_519/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_519/concatК
 conv3d_150/Conv3D/ReadVariableOpReadVariableOp)conv3d_150_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_150/Conv3D/ReadVariableOpј
conv3d_150/Conv3DConv3Dtf.concat_519/concat:output:0(conv3d_150/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_150/Conv3D­
!conv3d_150/BiasAdd/ReadVariableOpReadVariableOp*conv3d_150_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_150/BiasAdd/ReadVariableOpЯ
conv3d_150/BiasAddBiasAddconv3d_150/Conv3D:output:0)conv3d_150/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_150/BiasAdd
conv3d_150/SoftplusSoftplusconv3d_150/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_150/SoftplusК
 conv3d_151/Conv3D/ReadVariableOpReadVariableOp)conv3d_151_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_151/Conv3D/ReadVariableOpќ
conv3d_151/Conv3DConv3D!conv3d_150/Softplus:activations:0(conv3d_151/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_151/Conv3D­
!conv3d_151/BiasAdd/ReadVariableOpReadVariableOp*conv3d_151_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_151/BiasAdd/ReadVariableOpЯ
conv3d_151/BiasAddBiasAddconv3d_151/Conv3D:output:0)conv3d_151/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_151/BiasAdd
IdentityIdentityconv3d_151/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp"^conv3d_143/BiasAdd/ReadVariableOp!^conv3d_143/Conv3D/ReadVariableOp"^conv3d_144/BiasAdd/ReadVariableOp!^conv3d_144/Conv3D/ReadVariableOp"^conv3d_145/BiasAdd/ReadVariableOp!^conv3d_145/Conv3D/ReadVariableOp"^conv3d_146/BiasAdd/ReadVariableOp!^conv3d_146/Conv3D/ReadVariableOp"^conv3d_147/BiasAdd/ReadVariableOp!^conv3d_147/Conv3D/ReadVariableOp"^conv3d_148/BiasAdd/ReadVariableOp!^conv3d_148/Conv3D/ReadVariableOp"^conv3d_149/BiasAdd/ReadVariableOp!^conv3d_149/Conv3D/ReadVariableOp"^conv3d_150/BiasAdd/ReadVariableOp!^conv3d_150/Conv3D/ReadVariableOp"^conv3d_151/BiasAdd/ReadVariableOp!^conv3d_151/Conv3D/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_143/BiasAdd/ReadVariableOp!conv3d_143/BiasAdd/ReadVariableOp2D
 conv3d_143/Conv3D/ReadVariableOp conv3d_143/Conv3D/ReadVariableOp2F
!conv3d_144/BiasAdd/ReadVariableOp!conv3d_144/BiasAdd/ReadVariableOp2D
 conv3d_144/Conv3D/ReadVariableOp conv3d_144/Conv3D/ReadVariableOp2F
!conv3d_145/BiasAdd/ReadVariableOp!conv3d_145/BiasAdd/ReadVariableOp2D
 conv3d_145/Conv3D/ReadVariableOp conv3d_145/Conv3D/ReadVariableOp2F
!conv3d_146/BiasAdd/ReadVariableOp!conv3d_146/BiasAdd/ReadVariableOp2D
 conv3d_146/Conv3D/ReadVariableOp conv3d_146/Conv3D/ReadVariableOp2F
!conv3d_147/BiasAdd/ReadVariableOp!conv3d_147/BiasAdd/ReadVariableOp2D
 conv3d_147/Conv3D/ReadVariableOp conv3d_147/Conv3D/ReadVariableOp2F
!conv3d_148/BiasAdd/ReadVariableOp!conv3d_148/BiasAdd/ReadVariableOp2D
 conv3d_148/Conv3D/ReadVariableOp conv3d_148/Conv3D/ReadVariableOp2F
!conv3d_149/BiasAdd/ReadVariableOp!conv3d_149/BiasAdd/ReadVariableOp2D
 conv3d_149/Conv3D/ReadVariableOp conv3d_149/Conv3D/ReadVariableOp2F
!conv3d_150/BiasAdd/ReadVariableOp!conv3d_150/BiasAdd/ReadVariableOp2D
 conv3d_150/Conv3D/ReadVariableOp conv3d_150/Conv3D/ReadVariableOp2F
!conv3d_151/BiasAdd/ReadVariableOp!conv3d_151/BiasAdd/ReadVariableOp2D
 conv3d_151/Conv3D/ReadVariableOp conv3d_151/Conv3D/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Ц№
Д
E__inference_model_27_layer_call_and_return_conditional_losses_9569160

inputsG
)conv3d_143_conv3d_readvariableop_resource: 8
*conv3d_143_biasadd_readvariableop_resource: G
)conv3d_144_conv3d_readvariableop_resource: 8
*conv3d_144_biasadd_readvariableop_resource:G
)conv3d_145_conv3d_readvariableop_resource:8
*conv3d_145_biasadd_readvariableop_resource:G
)conv3d_146_conv3d_readvariableop_resource:8
*conv3d_146_biasadd_readvariableop_resource:9
'dense_27_matmul_readvariableop_resource:@@6
(dense_27_biasadd_readvariableop_resource:@G
)conv3d_147_conv3d_readvariableop_resource:8
*conv3d_147_biasadd_readvariableop_resource:G
)conv3d_148_conv3d_readvariableop_resource:8
*conv3d_148_biasadd_readvariableop_resource:G
)conv3d_149_conv3d_readvariableop_resource:8
*conv3d_149_biasadd_readvariableop_resource:G
)conv3d_150_conv3d_readvariableop_resource:0 8
*conv3d_150_biasadd_readvariableop_resource: G
)conv3d_151_conv3d_readvariableop_resource: 8
*conv3d_151_biasadd_readvariableop_resource:
identityЂ!conv3d_143/BiasAdd/ReadVariableOpЂ conv3d_143/Conv3D/ReadVariableOpЂ!conv3d_144/BiasAdd/ReadVariableOpЂ conv3d_144/Conv3D/ReadVariableOpЂ!conv3d_145/BiasAdd/ReadVariableOpЂ conv3d_145/Conv3D/ReadVariableOpЂ!conv3d_146/BiasAdd/ReadVariableOpЂ conv3d_146/Conv3D/ReadVariableOpЂ!conv3d_147/BiasAdd/ReadVariableOpЂ conv3d_147/Conv3D/ReadVariableOpЂ!conv3d_148/BiasAdd/ReadVariableOpЂ conv3d_148/Conv3D/ReadVariableOpЂ!conv3d_149/BiasAdd/ReadVariableOpЂ conv3d_149/Conv3D/ReadVariableOpЂ!conv3d_150/BiasAdd/ReadVariableOpЂ conv3d_150/Conv3D/ReadVariableOpЂ!conv3d_151/BiasAdd/ReadVariableOpЂ conv3d_151/Conv3D/ReadVariableOpЂdense_27/BiasAdd/ReadVariableOpЂdense_27/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_390/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_390/strided_slice/stackЙ
2tf.__operators__.getitem_390/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_390/strided_slice/stack_1Й
2tf.__operators__.getitem_390/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_390/strided_slice/stack_2
*tf.__operators__.getitem_390/strided_sliceStridedSliceinputs9tf.__operators__.getitem_390/strided_slice/stack:output:0;tf.__operators__.getitem_390/strided_slice/stack_1:output:0;tf.__operators__.getitem_390/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_390/strided_slice{
range_conversion_27/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_27/sub/yа
range_conversion_27/subSub3tf.__operators__.getitem_390/strided_slice:output:0"range_conversion_27/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/sub
range_conversion_27/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_27/truediv/yШ
range_conversion_27/truedivRealDivrange_conversion_27/sub:z:0&range_conversion_27/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/truediv{
range_conversion_27/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_27/mul/yМ
range_conversion_27/mulMulrange_conversion_27/truediv:z:0"range_conversion_27/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/mul{
range_conversion_27/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_27/add/yК
range_conversion_27/addAddV2range_conversion_27/mul:z:0"range_conversion_27/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_27/addЕ
0tf.__operators__.getitem_391/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_391/strided_slice/stackЙ
2tf.__operators__.getitem_391/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_391/strided_slice/stack_1Й
2tf.__operators__.getitem_391/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_391/strided_slice/stack_2
*tf.__operators__.getitem_391/strided_sliceStridedSliceinputs9tf.__operators__.getitem_391/strided_slice/stack:output:0;tf.__operators__.getitem_391/strided_slice/stack_1:output:0;tf.__operators__.getitem_391/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_391/strided_slicex
tf.concat_515/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_515/concat/axisѕ
tf.concat_515/concatConcatV2range_conversion_27/add:z:03tf.__operators__.getitem_391/strided_slice:output:0"tf.concat_515/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_515/concatК
 conv3d_143/Conv3D/ReadVariableOpReadVariableOp)conv3d_143_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_143/Conv3D/ReadVariableOpј
conv3d_143/Conv3DConv3Dtf.concat_515/concat:output:0(conv3d_143/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_143/Conv3D­
!conv3d_143/BiasAdd/ReadVariableOpReadVariableOp*conv3d_143_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_143/BiasAdd/ReadVariableOpЯ
conv3d_143/BiasAddBiasAddconv3d_143/Conv3D:output:0)conv3d_143/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_143/BiasAdd
conv3d_143/SoftplusSoftplusconv3d_143/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_143/SoftplusЇ
#average_pooling3d_58/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_58/transpose/permм
average_pooling3d_58/transpose	Transpose!conv3d_143/Softplus:activations:0,average_pooling3d_58/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2 
average_pooling3d_58/transposeэ
average_pooling3d_58/AvgPool3D	AvgPool3D"average_pooling3d_58/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_58/AvgPool3DЋ
%average_pooling3d_58/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_58/transpose_1/permш
 average_pooling3d_58/transpose_1	Transpose'average_pooling3d_58/AvgPool3D:output:0.average_pooling3d_58/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2"
 average_pooling3d_58/transpose_1К
 conv3d_144/Conv3D/ReadVariableOpReadVariableOp)conv3d_144_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_144/Conv3D/ReadVariableOpџ
conv3d_144/Conv3DConv3D$average_pooling3d_58/transpose_1:y:0(conv3d_144/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_144/Conv3D­
!conv3d_144/BiasAdd/ReadVariableOpReadVariableOp*conv3d_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_144/BiasAdd/ReadVariableOpЯ
conv3d_144/BiasAddBiasAddconv3d_144/Conv3D:output:0)conv3d_144/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_144/BiasAdd
conv3d_144/SoftplusSoftplusconv3d_144/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_144/SoftplusЇ
#average_pooling3d_59/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_59/transpose/permм
average_pooling3d_59/transpose	Transpose!conv3d_144/Softplus:activations:0,average_pooling3d_59/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_59/transposeэ
average_pooling3d_59/AvgPool3D	AvgPool3D"average_pooling3d_59/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_59/AvgPool3DЋ
%average_pooling3d_59/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_59/transpose_1/permш
 average_pooling3d_59/transpose_1	Transpose'average_pooling3d_59/AvgPool3D:output:0.average_pooling3d_59/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_59/transpose_1К
 conv3d_145/Conv3D/ReadVariableOpReadVariableOp)conv3d_145_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_145/Conv3D/ReadVariableOpџ
conv3d_145/Conv3DConv3D$average_pooling3d_59/transpose_1:y:0(conv3d_145/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_145/Conv3D­
!conv3d_145/BiasAdd/ReadVariableOpReadVariableOp*conv3d_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_145/BiasAdd/ReadVariableOpЯ
conv3d_145/BiasAddBiasAddconv3d_145/Conv3D:output:0)conv3d_145/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_145/BiasAdd
conv3d_145/SoftplusSoftplusconv3d_145/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_145/SoftplusЇ
#average_pooling3d_60/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_60/transpose/permм
average_pooling3d_60/transpose	Transpose!conv3d_145/Softplus:activations:0,average_pooling3d_60/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_60/transposeэ
average_pooling3d_60/AvgPool3D	AvgPool3D"average_pooling3d_60/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_60/AvgPool3DЋ
%average_pooling3d_60/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_60/transpose_1/permш
 average_pooling3d_60/transpose_1	Transpose'average_pooling3d_60/AvgPool3D:output:0.average_pooling3d_60/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_60/transpose_1К
 conv3d_146/Conv3D/ReadVariableOpReadVariableOp)conv3d_146_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_146/Conv3D/ReadVariableOpџ
conv3d_146/Conv3DConv3D$average_pooling3d_60/transpose_1:y:0(conv3d_146/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_146/Conv3D­
!conv3d_146/BiasAdd/ReadVariableOpReadVariableOp*conv3d_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_146/BiasAdd/ReadVariableOpЯ
conv3d_146/BiasAddBiasAddconv3d_146/Conv3D:output:0)conv3d_146/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_146/BiasAdd
conv3d_146/SoftplusSoftplusconv3d_146/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_146/SoftplusЇ
#average_pooling3d_61/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_61/transpose/permм
average_pooling3d_61/transpose	Transpose!conv3d_146/Softplus:activations:0,average_pooling3d_61/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_61/transposeэ
average_pooling3d_61/AvgPool3D	AvgPool3D"average_pooling3d_61/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_61/AvgPool3DЋ
%average_pooling3d_61/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_61/transpose_1/permш
 average_pooling3d_61/transpose_1	Transpose'average_pooling3d_61/AvgPool3D:output:0.average_pooling3d_61/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_61/transpose_1x
reshape_54/ShapeShape$average_pooling3d_61/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_54/Shape
reshape_54/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_54/strided_slice/stack
 reshape_54/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_1
 reshape_54/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_54/strided_slice/stack_2Є
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
reshape_54/Reshape/shape/1В
reshape_54/Reshape/shapePack!reshape_54/strided_slice:output:0#reshape_54/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_54/Reshape/shapeЎ
reshape_54/ReshapeReshape$average_pooling3d_61/transpose_1:y:0!reshape_54/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_54/ReshapeЈ
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_27/MatMul/ReadVariableOpЃ
dense_27/MatMulMatMulreshape_54/Reshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_27/MatMulЇ
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_27/BiasAdd/ReadVariableOpЅ
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_27/BiasAdd
dense_27/SoftplusSoftplusdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_27/Softpluss
reshape_55/ShapeShapedense_27/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_55/Shape
reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_55/strided_slice/stack
 reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_1
 reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_2Є
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
reshape_55/Reshape/shape/4Ё
reshape_55/Reshape/shapePack!reshape_55/strided_slice:output:0#reshape_55/Reshape/shape/1:output:0#reshape_55/Reshape/shape/2:output:0#reshape_55/Reshape/shape/3:output:0#reshape_55/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_55/Reshape/shapeЕ
reshape_55/ReshapeReshapedense_27/Softplus:activations:0!reshape_55/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_55/ReshapeЅ
tf.reshape_640/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_640/Reshape/shapeЩ
tf.reshape_640/ReshapeReshapereshape_55/Reshape:output:0%tf.reshape_640/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_640/ReshapeЁ
tf.tile_320/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_320/Tile/multiplesМ
tf.tile_320/TileTiletf.reshape_640/Reshape:output:0#tf.tile_320/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_320/Tile
tf.reshape_641/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_641/Reshape/shapeЛ
tf.reshape_641/ReshapeReshapetf.tile_320/Tile:output:0%tf.reshape_641/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_641/Reshapex
tf.concat_516/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_516/concat/axisч
tf.concat_516/concatConcatV2tf.reshape_641/Reshape:output:0!conv3d_146/Softplus:activations:0"tf.concat_516/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_516/concatК
 conv3d_147/Conv3D/ReadVariableOpReadVariableOp)conv3d_147_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_147/Conv3D/ReadVariableOpј
conv3d_147/Conv3DConv3Dtf.concat_516/concat:output:0(conv3d_147/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_147/Conv3D­
!conv3d_147/BiasAdd/ReadVariableOpReadVariableOp*conv3d_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_147/BiasAdd/ReadVariableOpЯ
conv3d_147/BiasAddBiasAddconv3d_147/Conv3D:output:0)conv3d_147/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_147/BiasAdd
conv3d_147/SoftplusSoftplusconv3d_147/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_147/SoftplusЅ
tf.reshape_642/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_642/Reshape/shapeЯ
tf.reshape_642/ReshapeReshape!conv3d_147/Softplus:activations:0%tf.reshape_642/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_642/ReshapeЁ
tf.tile_321/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_321/Tile/multiplesМ
tf.tile_321/TileTiletf.reshape_642/Reshape:output:0#tf.tile_321/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_321/Tile
tf.reshape_643/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_643/Reshape/shapeЛ
tf.reshape_643/ReshapeReshapetf.tile_321/Tile:output:0%tf.reshape_643/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_643/Reshapex
tf.concat_517/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_517/concat/axisч
tf.concat_517/concatConcatV2tf.reshape_643/Reshape:output:0!conv3d_145/Softplus:activations:0"tf.concat_517/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_517/concatК
 conv3d_148/Conv3D/ReadVariableOpReadVariableOp)conv3d_148_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_148/Conv3D/ReadVariableOpј
conv3d_148/Conv3DConv3Dtf.concat_517/concat:output:0(conv3d_148/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_148/Conv3D­
!conv3d_148/BiasAdd/ReadVariableOpReadVariableOp*conv3d_148_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_148/BiasAdd/ReadVariableOpЯ
conv3d_148/BiasAddBiasAddconv3d_148/Conv3D:output:0)conv3d_148/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_148/BiasAdd
conv3d_148/SoftplusSoftplusconv3d_148/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_148/SoftplusЅ
tf.reshape_644/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_644/Reshape/shapeЯ
tf.reshape_644/ReshapeReshape!conv3d_148/Softplus:activations:0%tf.reshape_644/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_644/ReshapeЁ
tf.tile_322/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_322/Tile/multiplesМ
tf.tile_322/TileTiletf.reshape_644/Reshape:output:0#tf.tile_322/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_322/Tile
tf.reshape_645/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_645/Reshape/shapeЛ
tf.reshape_645/ReshapeReshapetf.tile_322/Tile:output:0%tf.reshape_645/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_645/Reshapex
tf.concat_518/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_518/concat/axisч
tf.concat_518/concatConcatV2tf.reshape_645/Reshape:output:0!conv3d_144/Softplus:activations:0"tf.concat_518/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_518/concatК
 conv3d_149/Conv3D/ReadVariableOpReadVariableOp)conv3d_149_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_149/Conv3D/ReadVariableOpј
conv3d_149/Conv3DConv3Dtf.concat_518/concat:output:0(conv3d_149/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_149/Conv3D­
!conv3d_149/BiasAdd/ReadVariableOpReadVariableOp*conv3d_149_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_149/BiasAdd/ReadVariableOpЯ
conv3d_149/BiasAddBiasAddconv3d_149/Conv3D:output:0)conv3d_149/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_149/BiasAdd
conv3d_149/SoftplusSoftplusconv3d_149/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_149/SoftplusЅ
tf.reshape_646/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_646/Reshape/shapeЯ
tf.reshape_646/ReshapeReshape!conv3d_149/Softplus:activations:0%tf.reshape_646/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_646/ReshapeЁ
tf.tile_323/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_323/Tile/multiplesМ
tf.tile_323/TileTiletf.reshape_646/Reshape:output:0#tf.tile_323/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_323/Tile
tf.reshape_647/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_647/Reshape/shapeЛ
tf.reshape_647/ReshapeReshapetf.tile_323/Tile:output:0%tf.reshape_647/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_647/Reshapex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisч
tf.concat_519/concatConcatV2tf.reshape_647/Reshape:output:0!conv3d_143/Softplus:activations:0"tf.concat_519/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_519/concatК
 conv3d_150/Conv3D/ReadVariableOpReadVariableOp)conv3d_150_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_150/Conv3D/ReadVariableOpј
conv3d_150/Conv3DConv3Dtf.concat_519/concat:output:0(conv3d_150/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_150/Conv3D­
!conv3d_150/BiasAdd/ReadVariableOpReadVariableOp*conv3d_150_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_150/BiasAdd/ReadVariableOpЯ
conv3d_150/BiasAddBiasAddconv3d_150/Conv3D:output:0)conv3d_150/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_150/BiasAdd
conv3d_150/SoftplusSoftplusconv3d_150/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_150/SoftplusК
 conv3d_151/Conv3D/ReadVariableOpReadVariableOp)conv3d_151_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_151/Conv3D/ReadVariableOpќ
conv3d_151/Conv3DConv3D!conv3d_150/Softplus:activations:0(conv3d_151/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_151/Conv3D­
!conv3d_151/BiasAdd/ReadVariableOpReadVariableOp*conv3d_151_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_151/BiasAdd/ReadVariableOpЯ
conv3d_151/BiasAddBiasAddconv3d_151/Conv3D:output:0)conv3d_151/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_151/BiasAdd
IdentityIdentityconv3d_151/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp"^conv3d_143/BiasAdd/ReadVariableOp!^conv3d_143/Conv3D/ReadVariableOp"^conv3d_144/BiasAdd/ReadVariableOp!^conv3d_144/Conv3D/ReadVariableOp"^conv3d_145/BiasAdd/ReadVariableOp!^conv3d_145/Conv3D/ReadVariableOp"^conv3d_146/BiasAdd/ReadVariableOp!^conv3d_146/Conv3D/ReadVariableOp"^conv3d_147/BiasAdd/ReadVariableOp!^conv3d_147/Conv3D/ReadVariableOp"^conv3d_148/BiasAdd/ReadVariableOp!^conv3d_148/Conv3D/ReadVariableOp"^conv3d_149/BiasAdd/ReadVariableOp!^conv3d_149/Conv3D/ReadVariableOp"^conv3d_150/BiasAdd/ReadVariableOp!^conv3d_150/Conv3D/ReadVariableOp"^conv3d_151/BiasAdd/ReadVariableOp!^conv3d_151/Conv3D/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_143/BiasAdd/ReadVariableOp!conv3d_143/BiasAdd/ReadVariableOp2D
 conv3d_143/Conv3D/ReadVariableOp conv3d_143/Conv3D/ReadVariableOp2F
!conv3d_144/BiasAdd/ReadVariableOp!conv3d_144/BiasAdd/ReadVariableOp2D
 conv3d_144/Conv3D/ReadVariableOp conv3d_144/Conv3D/ReadVariableOp2F
!conv3d_145/BiasAdd/ReadVariableOp!conv3d_145/BiasAdd/ReadVariableOp2D
 conv3d_145/Conv3D/ReadVariableOp conv3d_145/Conv3D/ReadVariableOp2F
!conv3d_146/BiasAdd/ReadVariableOp!conv3d_146/BiasAdd/ReadVariableOp2D
 conv3d_146/Conv3D/ReadVariableOp conv3d_146/Conv3D/ReadVariableOp2F
!conv3d_147/BiasAdd/ReadVariableOp!conv3d_147/BiasAdd/ReadVariableOp2D
 conv3d_147/Conv3D/ReadVariableOp conv3d_147/Conv3D/ReadVariableOp2F
!conv3d_148/BiasAdd/ReadVariableOp!conv3d_148/BiasAdd/ReadVariableOp2D
 conv3d_148/Conv3D/ReadVariableOp conv3d_148/Conv3D/ReadVariableOp2F
!conv3d_149/BiasAdd/ReadVariableOp!conv3d_149/BiasAdd/ReadVariableOp2D
 conv3d_149/Conv3D/ReadVariableOp conv3d_149/Conv3D/ReadVariableOp2F
!conv3d_150/BiasAdd/ReadVariableOp!conv3d_150/BiasAdd/ReadVariableOp2D
 conv3d_150/Conv3D/ReadVariableOp conv3d_150/Conv3D/ReadVariableOp2F
!conv3d_151/BiasAdd/ReadVariableOp!conv3d_151/BiasAdd/ReadVariableOp2D
 conv3d_151/Conv3D/ReadVariableOp conv3d_151/Conv3D/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Э

G__inference_conv3d_144_layer_call_and_return_conditional_losses_9569407

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ   
 
_user_specified_nameinputs
Ё
ђ
*__inference_model_27_layer_call_fn_9568953

inputs%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_model_27_layer_call_and_return_conditional_losses_95682362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
х
H
,__inference_reshape_54_layer_call_fn_9569536

inputs
identityа
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_reshape_54_layer_call_and_return_conditional_losses_95680832
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ЉX

#__inference__traced_restore_9569840
file_prefix@
"assignvariableop_conv3d_143_kernel: 0
"assignvariableop_1_conv3d_143_bias: B
$assignvariableop_2_conv3d_144_kernel: 0
"assignvariableop_3_conv3d_144_bias:B
$assignvariableop_4_conv3d_145_kernel:0
"assignvariableop_5_conv3d_145_bias:B
$assignvariableop_6_conv3d_146_kernel:0
"assignvariableop_7_conv3d_146_bias:4
"assignvariableop_8_dense_27_kernel:@@.
 assignvariableop_9_dense_27_bias:@C
%assignvariableop_10_conv3d_147_kernel:1
#assignvariableop_11_conv3d_147_bias:C
%assignvariableop_12_conv3d_148_kernel:1
#assignvariableop_13_conv3d_148_bias:C
%assignvariableop_14_conv3d_149_kernel:1
#assignvariableop_15_conv3d_149_bias:C
%assignvariableop_16_conv3d_150_kernel:0 1
#assignvariableop_17_conv3d_150_bias: C
%assignvariableop_18_conv3d_151_kernel: 1
#assignvariableop_19_conv3d_151_bias:
identity_21ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ѓ	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ
valueѕBђB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesИ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЁ
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_143_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ї
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_143_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Љ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_144_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ї
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_144_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Љ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_145_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ї
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_145_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Љ
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_146_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ї
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_146_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ї
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_27_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_27_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10­
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_147_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ћ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_147_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12­
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_148_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ћ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_148_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14­
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_149_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ћ
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_149_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16­
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_150_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ћ
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_150_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18­
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_151_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ћ
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_151_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20f
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_21ў
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_21Identity_21:output:0*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
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
у

m
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9569426

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
у

m
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9569378

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
П
Ѕ
,__inference_conv3d_145_layer_call_fn_9569444

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *P
fKRI
G__inference_conv3d_145_layer_call_and_return_conditional_losses_95680282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

і
E__inference_dense_27_layer_call_and_return_conditional_losses_9568096

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
	
m
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9569531

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

R
6__inference_average_pooling3d_61_layer_call_fn_9569513

inputs
identityц
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_95680692
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

R
6__inference_average_pooling3d_58_layer_call_fn_9569369

inputs
identityц
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_95679882
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @@:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
Э

G__inference_conv3d_143_layer_call_and_return_conditional_losses_9567974

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*С
serving_default­
C
input:
serving_default_input:0џџџџџџџџџ@@J

conv3d_151<
StatefulPartitionedCall:0џџџџџџџџџ@@tensorflow/serving/predict:гЅ
з
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

layer_with_weights-2

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-5
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-6
layer-25
layer-26
layer-27
layer-28
layer-29
layer_with_weights-7
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer_with_weights-8
$layer-35
%layer_with_weights-9
%layer-36
&regularization_losses
'	variables
(trainable_variables
)	keras_api
*
signatures
№__call__
ё_default_save_signature
+ђ&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
+	keras_api"
_tf_keras_layer
Ї
,	variables
-regularization_losses
.trainable_variables
/	keras_api
ѓ__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_layer
(
0	keras_api"
_tf_keras_layer
(
1	keras_api"
_tf_keras_layer
Н

2kernel
3bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
8	variables
9regularization_losses
:trainable_variables
;	keras_api
ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
ћ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Fkernel
Gbias
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
§__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
џ__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Pkernel
Qbias
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

^kernel
_bias
`	variables
aregularization_losses
btrainable_variables
c	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
(
h	keras_api"
_tf_keras_layer
(
i	keras_api"
_tf_keras_layer
(
j	keras_api"
_tf_keras_layer
(
k	keras_api"
_tf_keras_layer
Н

lkernel
mbias
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
(
r	keras_api"
_tf_keras_layer
(
s	keras_api"
_tf_keras_layer
(
t	keras_api"
_tf_keras_layer
(
u	keras_api"
_tf_keras_layer
Н

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
(
|	keras_api"
_tf_keras_layer
(
}	keras_api"
_tf_keras_layer
(
~	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
У
kernel
	bias
	variables
regularization_losses
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
У
kernel
	bias
	variables
regularization_losses
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
	variables
regularization_losses
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
М
20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19"
trackable_list_wrapper
М
20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19"
trackable_list_wrapper
г
non_trainable_variables
metrics
 layer_regularization_losses
layer_metrics
&regularization_losses
layers
'	variables
(trainable_variables
№__call__
ё_default_save_signature
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
,	variables
metrics
 layer_regularization_losses
layer_metrics
-regularization_losses
layers
.trainable_variables
ѓ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/  2conv3d_143/kernel
:  2conv3d_143/bias
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
Е
 non_trainable_variables
4	variables
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
5regularization_losses
Єlayers
6trainable_variables
ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Ѕnon_trainable_variables
8	variables
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
9regularization_losses
Љlayers
:trainable_variables
ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_144/kernel
: 2conv3d_144/bias
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
Е
Њnon_trainable_variables
>	variables
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
?regularization_losses
Ўlayers
@trainable_variables
љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Џnon_trainable_variables
B	variables
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Cregularization_losses
Гlayers
Dtrainable_variables
ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_145/kernel
: 2conv3d_145/bias
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
Е
Дnon_trainable_variables
H	variables
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
Iregularization_losses
Иlayers
Jtrainable_variables
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Йnon_trainable_variables
L	variables
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Mregularization_losses
Нlayers
Ntrainable_variables
џ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_146/kernel
: 2conv3d_146/bias
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
Е
Оnon_trainable_variables
R	variables
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Sregularization_losses
Тlayers
Ttrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Уnon_trainable_variables
V	variables
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Wregularization_losses
Чlayers
Xtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Шnon_trainable_variables
Z	variables
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
[regularization_losses
Ьlayers
\trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_27/kernel
:@ 2dense_27/bias
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
Е
Эnon_trainable_variables
`	variables
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
aregularization_losses
бlayers
btrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
вnon_trainable_variables
d	variables
гmetrics
 дlayer_regularization_losses
еlayer_metrics
eregularization_losses
жlayers
ftrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_147/kernel
: 2conv3d_147/bias
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
Е
зnon_trainable_variables
n	variables
иmetrics
 йlayer_regularization_losses
кlayer_metrics
oregularization_losses
лlayers
ptrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_148/kernel
: 2conv3d_148/bias
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
Е
мnon_trainable_variables
x	variables
нmetrics
 оlayer_regularization_losses
пlayer_metrics
yregularization_losses
рlayers
ztrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_149/kernel
: 2conv3d_149/bias
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
сnon_trainable_variables
	variables
тmetrics
 уlayer_regularization_losses
фlayer_metrics
regularization_losses
хlayers
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/0  2conv3d_150/kernel
:  2conv3d_150/bias
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
цnon_trainable_variables
	variables
чmetrics
 шlayer_regularization_losses
щlayer_metrics
regularization_losses
ъlayers
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_151/kernel
: 2conv3d_151/bias
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
ыnon_trainable_variables
	variables
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
regularization_losses
яlayers
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
О
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
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36"
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
і2ѓ
*__inference_model_27_layer_call_fn_9568279
*__inference_model_27_layer_call_fn_9568953
*__inference_model_27_layer_call_fn_9568998
*__inference_model_27_layer_call_fn_9568655Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЫBШ
"__inference__wrapped_model_9567812input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
т2п
E__inference_model_27_layer_call_and_return_conditional_losses_9569160
E__inference_model_27_layer_call_and_return_conditional_losses_9569322
E__inference_model_27_layer_call_and_return_conditional_losses_9568758
E__inference_model_27_layer_call_and_return_conditional_losses_9568861Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
у2р
5__inference_range_conversion_27_layer_call_fn_9569327І
В
FullArgSpec!
args
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ў2ћ
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_9569339І
В
FullArgSpec!
args
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_143_layer_call_fn_9569348Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_143_layer_call_and_return_conditional_losses_9569359Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
6__inference_average_pooling3d_58_layer_call_fn_9569364
6__inference_average_pooling3d_58_layer_call_fn_9569369Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ю2Ы
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9569378
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9569387Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_144_layer_call_fn_9569396Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_144_layer_call_and_return_conditional_losses_9569407Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
6__inference_average_pooling3d_59_layer_call_fn_9569412
6__inference_average_pooling3d_59_layer_call_fn_9569417Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ю2Ы
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9569426
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9569435Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_145_layer_call_fn_9569444Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_145_layer_call_and_return_conditional_losses_9569455Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
6__inference_average_pooling3d_60_layer_call_fn_9569460
6__inference_average_pooling3d_60_layer_call_fn_9569465Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ю2Ы
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9569474
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9569483Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_146_layer_call_fn_9569492Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_146_layer_call_and_return_conditional_losses_9569503Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
6__inference_average_pooling3d_61_layer_call_fn_9569508
6__inference_average_pooling3d_61_layer_call_fn_9569513Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ю2Ы
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9569522
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9569531Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_reshape_54_layer_call_fn_9569536Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_reshape_54_layer_call_and_return_conditional_losses_9569548Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_dense_27_layer_call_fn_9569557Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_27_layer_call_and_return_conditional_losses_9569568Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_reshape_55_layer_call_fn_9569573Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_reshape_55_layer_call_and_return_conditional_losses_9569588Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_147_layer_call_fn_9569597Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_147_layer_call_and_return_conditional_losses_9569608Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_148_layer_call_fn_9569617Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_148_layer_call_and_return_conditional_losses_9569628Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_149_layer_call_fn_9569637Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_149_layer_call_and_return_conditional_losses_9569648Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_150_layer_call_fn_9569657Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_150_layer_call_and_return_conditional_losses_9569668Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
,__inference_conv3d_151_layer_call_fn_9569677Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_conv3d_151_layer_call_and_return_conditional_losses_9569687Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЪBЧ
%__inference_signature_wrapper_9568908input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Ф
"__inference__wrapped_model_956781223<=FGPQ^_lmvw:Ђ7
0Ђ-
+(
inputџџџџџџџџџ@@
Њ "CЊ@
>

conv3d_1510-

conv3d_151џџџџџџџџџ@@
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9569378И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_58_layer_call_and_return_conditional_losses_9569387p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ   
 ц
6__inference_average_pooling3d_58_layer_call_fn_9569364Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_58_layer_call_fn_9569369c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ   
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9569426И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_59_layer_call_and_return_conditional_losses_9569435p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ
 ц
6__inference_average_pooling3d_59_layer_call_fn_9569412Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_59_layer_call_fn_9569417c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9569474И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_60_layer_call_and_return_conditional_losses_9569483p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ц
6__inference_average_pooling3d_60_layer_call_fn_9569460Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_60_layer_call_fn_9569465c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџ
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9569522И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_61_layer_call_and_return_conditional_losses_9569531p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ц
6__inference_average_pooling3d_61_layer_call_fn_9569508Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_61_layer_call_fn_9569513c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_143_layer_call_and_return_conditional_losses_9569359t23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
,__inference_conv3d_143_layer_call_fn_9569348g23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "$!џџџџџџџџџ @@П
G__inference_conv3d_144_layer_call_and_return_conditional_losses_9569407t<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
,__inference_conv3d_144_layer_call_fn_9569396g<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "$!џџџџџџџџџ  П
G__inference_conv3d_145_layer_call_and_return_conditional_losses_9569455tFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_145_layer_call_fn_9569444gFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_146_layer_call_and_return_conditional_losses_9569503tPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_146_layer_call_fn_9569492gPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_147_layer_call_and_return_conditional_losses_9569608tlm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_147_layer_call_fn_9569597glm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_148_layer_call_and_return_conditional_losses_9569628tvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_148_layer_call_fn_9569617gvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџС
G__inference_conv3d_149_layer_call_and_return_conditional_losses_9569648v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
,__inference_conv3d_149_layer_call_fn_9569637i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ  С
G__inference_conv3d_150_layer_call_and_return_conditional_losses_9569668v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
,__inference_conv3d_150_layer_call_fn_9569657i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "$!џџџџџџџџџ @@С
G__inference_conv3d_151_layer_call_and_return_conditional_losses_9569687v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 
,__inference_conv3d_151_layer_call_fn_9569677i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ@@Ѕ
E__inference_dense_27_layer_call_and_return_conditional_losses_9569568\^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 }
*__inference_dense_27_layer_call_fn_9569557O^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@н
E__inference_model_27_layer_call_and_return_conditional_losses_956875823<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 н
E__inference_model_27_layer_call_and_return_conditional_losses_956886123<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 о
E__inference_model_27_layer_call_and_return_conditional_losses_956916023<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 о
E__inference_model_27_layer_call_and_return_conditional_losses_956932223<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 Е
*__inference_model_27_layer_call_fn_956827923<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@Е
*__inference_model_27_layer_call_fn_956865523<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@Ж
*__inference_model_27_layer_call_fn_956895323<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@Ж
*__inference_model_27_layer_call_fn_956899823<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@Ш
P__inference_range_conversion_27_layer_call_and_return_conditional_losses_9569339t?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
  
5__inference_range_conversion_27_layer_call_fn_9569327g?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "$!џџџџџџџџџ@@Џ
G__inference_reshape_54_layer_call_and_return_conditional_losses_9569548d;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 
,__inference_reshape_54_layer_call_fn_9569536W;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@Џ
G__inference_reshape_55_layer_call_and_return_conditional_losses_9569588d/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_reshape_55_layer_call_fn_9569573W/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "$!џџџџџџџџџа
%__inference_signature_wrapper_9568908І23<=FGPQ^_lmvwCЂ@
Ђ 
9Њ6
4
input+(
inputџџџџџџџџџ@@"CЊ@
>

conv3d_1510-

conv3d_151џџџџџџџџџ@@