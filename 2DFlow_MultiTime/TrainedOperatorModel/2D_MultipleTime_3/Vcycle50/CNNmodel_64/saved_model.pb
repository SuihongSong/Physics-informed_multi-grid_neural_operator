ІЄ
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
 "serve*2.6.22v2.6.1-9-gc2363d6d0258ах

conv3d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d/kernel
{
!conv3d/kernel/Read/ReadVariableOpReadVariableOpconv3d/kernel**
_output_shapes
: *
dtype0
n
conv3d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d/bias
g
conv3d/bias/Read/ReadVariableOpReadVariableOpconv3d/bias*
_output_shapes
: *
dtype0

conv3d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_1/kernel

#conv3d_1/kernel/Read/ReadVariableOpReadVariableOpconv3d_1/kernel**
_output_shapes
: *
dtype0
r
conv3d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_1/bias
k
!conv3d_1/bias/Read/ReadVariableOpReadVariableOpconv3d_1/bias*
_output_shapes
:*
dtype0

conv3d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_2/kernel

#conv3d_2/kernel/Read/ReadVariableOpReadVariableOpconv3d_2/kernel**
_output_shapes
:*
dtype0
r
conv3d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_2/bias
k
!conv3d_2/bias/Read/ReadVariableOpReadVariableOpconv3d_2/bias*
_output_shapes
:*
dtype0

conv3d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_3/kernel

#conv3d_3/kernel/Read/ReadVariableOpReadVariableOpconv3d_3/kernel**
_output_shapes
:*
dtype0
r
conv3d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_3/bias
k
!conv3d_3/bias/Read/ReadVariableOpReadVariableOpconv3d_3/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0

conv3d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_4/kernel

#conv3d_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_4/kernel**
_output_shapes
:*
dtype0
r
conv3d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_4/bias
k
!conv3d_4/bias/Read/ReadVariableOpReadVariableOpconv3d_4/bias*
_output_shapes
:*
dtype0

conv3d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_5/kernel

#conv3d_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_5/kernel**
_output_shapes
:*
dtype0
r
conv3d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_5/bias
k
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes
:*
dtype0

conv3d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_6/kernel

#conv3d_6/kernel/Read/ReadVariableOpReadVariableOpconv3d_6/kernel**
_output_shapes
:*
dtype0
r
conv3d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_6/bias
k
!conv3d_6/bias/Read/ReadVariableOpReadVariableOpconv3d_6/bias*
_output_shapes
:*
dtype0

conv3d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 * 
shared_nameconv3d_7/kernel

#conv3d_7/kernel/Read/ReadVariableOpReadVariableOpconv3d_7/kernel**
_output_shapes
:0 *
dtype0
r
conv3d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_7/bias
k
!conv3d_7/bias/Read/ReadVariableOpReadVariableOpconv3d_7/bias*
_output_shapes
: *
dtype0

conv3d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_8/kernel

#conv3d_8/kernel/Read/ReadVariableOpReadVariableOpconv3d_8/kernel**
_output_shapes
: *
dtype0
r
conv3d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_8/bias
k
!conv3d_8/bias/Read/ReadVariableOpReadVariableOpconv3d_8/bias*
_output_shapes
:*
dtype0

NoOpNoOp
ЃH
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*оG
valueдGBбG BЪG
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
YW
VARIABLE_VALUEconv3d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv3d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_4/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_4/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_5/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_5/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_6/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_6/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_7/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_7/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEconv3d_8/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_8/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
І
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d/kernelconv3d/biasconv3d_1/kernelconv3d_1/biasconv3d_2/kernelconv3d_2/biasconv3d_3/kernelconv3d_3/biasdense/kernel
dense/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/biasconv3d_7/kernelconv3d_7/biasconv3d_8/kernelconv3d_8/bias* 
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
%__inference_signature_wrapper_3228180
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv3d/kernel/Read/ReadVariableOpconv3d/bias/Read/ReadVariableOp#conv3d_1/kernel/Read/ReadVariableOp!conv3d_1/bias/Read/ReadVariableOp#conv3d_2/kernel/Read/ReadVariableOp!conv3d_2/bias/Read/ReadVariableOp#conv3d_3/kernel/Read/ReadVariableOp!conv3d_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp#conv3d_4/kernel/Read/ReadVariableOp!conv3d_4/bias/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOp#conv3d_6/kernel/Read/ReadVariableOp!conv3d_6/bias/Read/ReadVariableOp#conv3d_7/kernel/Read/ReadVariableOp!conv3d_7/bias/Read/ReadVariableOp#conv3d_8/kernel/Read/ReadVariableOp!conv3d_8/bias/Read/ReadVariableOpConst*!
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
 __inference__traced_save_3229042
ь
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d/kernelconv3d/biasconv3d_1/kernelconv3d_1/biasconv3d_2/kernelconv3d_2/biasconv3d_3/kernelconv3d_3/biasdense/kernel
dense/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/biasconv3d_7/kernelconv3d_7/biasconv3d_8/kernelconv3d_8/bias* 
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
#__inference__traced_restore_3229112Єу
Ы

E__inference_conv3d_5_layer_call_and_return_conditional_losses_3227435

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

ю
'__inference_model_layer_call_fn_3227927	
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
identityЂStatefulPartitionedCallћ
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_32278392
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

b
F__inference_reshape_1_layer_call_and_return_conditional_losses_3227389

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

Q
5__inference_average_pooling3d_2_layer_call_fn_3228737

inputs
identityх
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_32273142
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
г	
m
M__inference_range_conversion_layer_call_and_return_conditional_losses_3227227

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
г

E__inference_conv3d_8_layer_call_and_return_conditional_losses_3227501

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
т

l
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3227187

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
Ы

E__inference_conv3d_2_layer_call_and_return_conditional_losses_3227300

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

я
'__inference_model_layer_call_fn_3228270

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
identityЂStatefulPartitionedCallќ
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_32278392
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
і
ь
%__inference_signature_wrapper_3228180	
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
"__inference__wrapped_model_32270842
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
Ы

E__inference_conv3d_1_layer_call_and_return_conditional_losses_3227273

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
к
Ф	
B__inference_model_layer_call_and_return_conditional_losses_3227839

inputs,
conv3d_3227750: 
conv3d_3227752: .
conv3d_1_3227756: 
conv3d_1_3227758:.
conv3d_2_3227762:
conv3d_2_3227764:.
conv3d_3_3227768:
conv3d_3_3227770:
dense_3227775:@@
dense_3227777:@.
conv3d_4_3227789:
conv3d_4_3227791:.
conv3d_5_3227802:
conv3d_5_3227804:.
conv3d_6_3227815:
conv3d_6_3227817:.
conv3d_7_3227828:0 
conv3d_7_3227830: .
conv3d_8_3227833: 
conv3d_8_3227835:
identityЂconv3d/StatefulPartitionedCallЂ conv3d_1/StatefulPartitionedCallЂ conv3d_2/StatefulPartitionedCallЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂ conv3d_7/StatefulPartitionedCallЂ conv3d_8/StatefulPartitionedCallЂdense/StatefulPartitionedCallЕ
0tf.__operators__.getitem_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_336/strided_slice/stackЙ
2tf.__operators__.getitem_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_336/strided_slice/stack_1Й
2tf.__operators__.getitem_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_336/strided_slice/stack_2
*tf.__operators__.getitem_336/strided_sliceStridedSliceinputs9tf.__operators__.getitem_336/strided_slice/stack:output:0;tf.__operators__.getitem_336/strided_slice/stack_1:output:0;tf.__operators__.getitem_336/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_336/strided_sliceБ
 range_conversion/PartitionedCallPartitionedCall3tf.__operators__.getitem_336/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8 *V
fQRO
M__inference_range_conversion_layer_call_and_return_conditional_losses_32272272"
 range_conversion/PartitionedCallЕ
0tf.__operators__.getitem_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_337/strided_slice/stackЙ
2tf.__operators__.getitem_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_337/strided_slice/stack_1Й
2tf.__operators__.getitem_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_337/strided_slice/stack_2
*tf.__operators__.getitem_337/strided_sliceStridedSliceinputs9tf.__operators__.getitem_337/strided_slice/stack:output:0;tf.__operators__.getitem_337/strided_slice/stack_1:output:0;tf.__operators__.getitem_337/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_337/strided_slicex
tf.concat_430/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_430/concat/axis
tf.concat_430/concatConcatV2)range_conversion/PartitionedCall:output:03tf.__operators__.getitem_337/strided_slice:output:0"tf.concat_430/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_430/concatЛ
conv3d/StatefulPartitionedCallStatefulPartitionedCalltf.concat_430/concat:output:0conv3d_3227750conv3d_3227752*
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
GPU2 *0,1,2,3J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_32272462 
conv3d/StatefulPartitionedCallЈ
!average_pooling3d/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *W
fRRP
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_32272602#
!average_pooling3d/PartitionedCallв
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling3d/PartitionedCall:output:0conv3d_1_3227756conv3d_1_3227758*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_32272732"
 conv3d_1/StatefulPartitionedCallА
#average_pooling3d_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_32272872%
#average_pooling3d_1/PartitionedCallд
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_1/PartitionedCall:output:0conv3d_2_3227762conv3d_2_3227764*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_32273002"
 conv3d_2/StatefulPartitionedCallА
#average_pooling3d_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_32273142%
#average_pooling3d_2/PartitionedCallд
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_2/PartitionedCall:output:0conv3d_3_3227768conv3d_3_3227770*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_32273272"
 conv3d_3/StatefulPartitionedCallА
#average_pooling3d_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_32273412%
#average_pooling3d_3/PartitionedCall
reshape/PartitionedCallPartitionedCall,average_pooling3d_3/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_32273552
reshape/PartitionedCall­
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0dense_3227775dense_3227777*
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_32273682
dense/StatefulPartitionedCall
reshape_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_reshape_1_layer_call_and_return_conditional_losses_32273892
reshape_1/PartitionedCallЅ
tf.reshape_524/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_524/Reshape/shapeа
tf.reshape_524/ReshapeReshape"reshape_1/PartitionedCall:output:0%tf.reshape_524/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_524/ReshapeЁ
tf.tile_262/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_262/Tile/multiplesМ
tf.tile_262/TileTiletf.reshape_524/Reshape:output:0#tf.tile_262/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_262/Tile
tf.reshape_525/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_525/Reshape/shapeЛ
tf.reshape_525/ReshapeReshapetf.tile_262/Tile:output:0%tf.reshape_525/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_525/Reshapex
tf.concat_431/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_431/concat/axisя
tf.concat_431/concatConcatV2tf.reshape_525/Reshape:output:0)conv3d_3/StatefulPartitionedCall:output:0"tf.concat_431/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_431/concatХ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCalltf.concat_431/concat:output:0conv3d_4_3227789conv3d_4_3227791*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_32274102"
 conv3d_4/StatefulPartitionedCallЅ
tf.reshape_526/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_526/Reshape/shapeз
tf.reshape_526/ReshapeReshape)conv3d_4/StatefulPartitionedCall:output:0%tf.reshape_526/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_526/ReshapeЁ
tf.tile_263/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_263/Tile/multiplesМ
tf.tile_263/TileTiletf.reshape_526/Reshape:output:0#tf.tile_263/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_263/Tile
tf.reshape_527/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_527/Reshape/shapeЛ
tf.reshape_527/ReshapeReshapetf.tile_263/Tile:output:0%tf.reshape_527/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_527/Reshapex
tf.concat_432/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_432/concat/axisя
tf.concat_432/concatConcatV2tf.reshape_527/Reshape:output:0)conv3d_2/StatefulPartitionedCall:output:0"tf.concat_432/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_432/concatХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCalltf.concat_432/concat:output:0conv3d_5_3227802conv3d_5_3227804*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_32274352"
 conv3d_5/StatefulPartitionedCallЅ
tf.reshape_528/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_528/Reshape/shapeз
tf.reshape_528/ReshapeReshape)conv3d_5/StatefulPartitionedCall:output:0%tf.reshape_528/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_528/ReshapeЁ
tf.tile_264/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_264/Tile/multiplesМ
tf.tile_264/TileTiletf.reshape_528/Reshape:output:0#tf.tile_264/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_264/Tile
tf.reshape_529/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_529/Reshape/shapeЛ
tf.reshape_529/ReshapeReshapetf.tile_264/Tile:output:0%tf.reshape_529/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_529/Reshapex
tf.concat_433/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_433/concat/axisя
tf.concat_433/concatConcatV2tf.reshape_529/Reshape:output:0)conv3d_1/StatefulPartitionedCall:output:0"tf.concat_433/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_433/concatХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCalltf.concat_433/concat:output:0conv3d_6_3227815conv3d_6_3227817*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_32274602"
 conv3d_6/StatefulPartitionedCallЅ
tf.reshape_530/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_530/Reshape/shapeз
tf.reshape_530/ReshapeReshape)conv3d_6/StatefulPartitionedCall:output:0%tf.reshape_530/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_530/ReshapeЁ
tf.tile_265/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_265/Tile/multiplesМ
tf.tile_265/TileTiletf.reshape_530/Reshape:output:0#tf.tile_265/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_265/Tile
tf.reshape_531/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_531/Reshape/shapeЛ
tf.reshape_531/ReshapeReshapetf.tile_265/Tile:output:0%tf.reshape_531/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_531/Reshapex
tf.concat_434/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_434/concat/axisэ
tf.concat_434/concatConcatV2tf.reshape_531/Reshape:output:0'conv3d/StatefulPartitionedCall:output:0"tf.concat_434/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_434/concatХ
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCalltf.concat_434/concat:output:0conv3d_7_3227828conv3d_7_3227830*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_32274852"
 conv3d_7/StatefulPartitionedCallб
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0conv3d_8_3227833conv3d_8_3227835*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_32275012"
 conv3d_8/StatefulPartitionedCall
IdentityIdentity)conv3d_8/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityЇ
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
т

l
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3227127

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
 
Q
5__inference_average_pooling3d_1_layer_call_fn_3228684

inputs
identity
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_32271272
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

я
'__inference_model_layer_call_fn_3228225

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
identityЂStatefulPartitionedCallќ
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_32275082
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
	
l
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3228755

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
Ы

E__inference_conv3d_6_layer_call_and_return_conditional_losses_3228920

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
Тщ
е
B__inference_model_layer_call_and_return_conditional_losses_3228594

inputsC
%conv3d_conv3d_readvariableop_resource: 4
&conv3d_biasadd_readvariableop_resource: E
'conv3d_1_conv3d_readvariableop_resource: 6
(conv3d_1_biasadd_readvariableop_resource:E
'conv3d_2_conv3d_readvariableop_resource:6
(conv3d_2_biasadd_readvariableop_resource:E
'conv3d_3_conv3d_readvariableop_resource:6
(conv3d_3_biasadd_readvariableop_resource:6
$dense_matmul_readvariableop_resource:@@3
%dense_biasadd_readvariableop_resource:@E
'conv3d_4_conv3d_readvariableop_resource:6
(conv3d_4_biasadd_readvariableop_resource:E
'conv3d_5_conv3d_readvariableop_resource:6
(conv3d_5_biasadd_readvariableop_resource:E
'conv3d_6_conv3d_readvariableop_resource:6
(conv3d_6_biasadd_readvariableop_resource:E
'conv3d_7_conv3d_readvariableop_resource:0 6
(conv3d_7_biasadd_readvariableop_resource: E
'conv3d_8_conv3d_readvariableop_resource: 6
(conv3d_8_biasadd_readvariableop_resource:
identityЂconv3d/BiasAdd/ReadVariableOpЂconv3d/Conv3D/ReadVariableOpЂconv3d_1/BiasAdd/ReadVariableOpЂconv3d_1/Conv3D/ReadVariableOpЂconv3d_2/BiasAdd/ReadVariableOpЂconv3d_2/Conv3D/ReadVariableOpЂconv3d_3/BiasAdd/ReadVariableOpЂconv3d_3/Conv3D/ReadVariableOpЂconv3d_4/BiasAdd/ReadVariableOpЂconv3d_4/Conv3D/ReadVariableOpЂconv3d_5/BiasAdd/ReadVariableOpЂconv3d_5/Conv3D/ReadVariableOpЂconv3d_6/BiasAdd/ReadVariableOpЂconv3d_6/Conv3D/ReadVariableOpЂconv3d_7/BiasAdd/ReadVariableOpЂconv3d_7/Conv3D/ReadVariableOpЂconv3d_8/BiasAdd/ReadVariableOpЂconv3d_8/Conv3D/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_336/strided_slice/stackЙ
2tf.__operators__.getitem_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_336/strided_slice/stack_1Й
2tf.__operators__.getitem_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_336/strided_slice/stack_2
*tf.__operators__.getitem_336/strided_sliceStridedSliceinputs9tf.__operators__.getitem_336/strided_slice/stack:output:0;tf.__operators__.getitem_336/strided_slice/stack_1:output:0;tf.__operators__.getitem_336/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_336/strided_sliceu
range_conversion/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion/sub/yЧ
range_conversion/subSub3tf.__operators__.getitem_336/strided_slice:output:0range_conversion/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/sub}
range_conversion/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion/truediv/yМ
range_conversion/truedivRealDivrange_conversion/sub:z:0#range_conversion/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/truedivu
range_conversion/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion/mul/yА
range_conversion/mulMulrange_conversion/truediv:z:0range_conversion/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/mulu
range_conversion/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion/add/yЎ
range_conversion/addAddV2range_conversion/mul:z:0range_conversion/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/addЕ
0tf.__operators__.getitem_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_337/strided_slice/stackЙ
2tf.__operators__.getitem_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_337/strided_slice/stack_1Й
2tf.__operators__.getitem_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_337/strided_slice/stack_2
*tf.__operators__.getitem_337/strided_sliceStridedSliceinputs9tf.__operators__.getitem_337/strided_slice/stack:output:0;tf.__operators__.getitem_337/strided_slice/stack_1:output:0;tf.__operators__.getitem_337/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_337/strided_slicex
tf.concat_430/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_430/concat/axisђ
tf.concat_430/concatConcatV2range_conversion/add:z:03tf.__operators__.getitem_337/strided_slice:output:0"tf.concat_430/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_430/concatЎ
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02
conv3d/Conv3D/ReadVariableOpь
conv3d/Conv3DConv3Dtf.concat_430/concat:output:0$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d/Conv3DЁ
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv3d/BiasAdd/ReadVariableOpП
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d/BiasAdd
conv3d/SoftplusSoftplusconv3d/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d/SoftplusЁ
 average_pooling3d/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 average_pooling3d/transpose/permЯ
average_pooling3d/transpose	Transposeconv3d/Softplus:activations:0)average_pooling3d/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2
average_pooling3d/transposeф
average_pooling3d/AvgPool3D	AvgPool3Daverage_pooling3d/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2
average_pooling3d/AvgPool3DЅ
"average_pooling3d/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d/transpose_1/permм
average_pooling3d/transpose_1	Transpose$average_pooling3d/AvgPool3D:output:0+average_pooling3d/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2
average_pooling3d/transpose_1Д
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_1/Conv3D/ReadVariableOpі
conv3d_1/Conv3DConv3D!average_pooling3d/transpose_1:y:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_1/Conv3DЇ
conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_1/BiasAdd/ReadVariableOpЧ
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_1/BiasAdd
conv3d_1/SoftplusSoftplusconv3d_1/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_1/SoftplusЅ
"average_pooling3d_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_1/transpose/permз
average_pooling3d_1/transpose	Transposeconv3d_1/Softplus:activations:0+average_pooling3d_1/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
average_pooling3d_1/transposeъ
average_pooling3d_1/AvgPool3D	AvgPool3D!average_pooling3d_1/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_1/AvgPool3DЉ
$average_pooling3d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_1/transpose_1/permф
average_pooling3d_1/transpose_1	Transpose&average_pooling3d_1/AvgPool3D:output:0-average_pooling3d_1/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
average_pooling3d_1/transpose_1Д
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_2/Conv3D/ReadVariableOpј
conv3d_2/Conv3DConv3D#average_pooling3d_1/transpose_1:y:0&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_2/Conv3DЇ
conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_2/BiasAdd/ReadVariableOpЧ
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_2/BiasAdd
conv3d_2/SoftplusSoftplusconv3d_2/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_2/SoftplusЅ
"average_pooling3d_2/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_2/transpose/permз
average_pooling3d_2/transpose	Transposeconv3d_2/Softplus:activations:0+average_pooling3d_2/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
average_pooling3d_2/transposeъ
average_pooling3d_2/AvgPool3D	AvgPool3D!average_pooling3d_2/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_2/AvgPool3DЉ
$average_pooling3d_2/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_2/transpose_1/permф
average_pooling3d_2/transpose_1	Transpose&average_pooling3d_2/AvgPool3D:output:0-average_pooling3d_2/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
average_pooling3d_2/transpose_1Д
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_3/Conv3D/ReadVariableOpј
conv3d_3/Conv3DConv3D#average_pooling3d_2/transpose_1:y:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_3/Conv3DЇ
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_3/BiasAdd/ReadVariableOpЧ
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_3/BiasAdd
conv3d_3/SoftplusSoftplusconv3d_3/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_3/SoftplusЅ
"average_pooling3d_3/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_3/transpose/permз
average_pooling3d_3/transpose	Transposeconv3d_3/Softplus:activations:0+average_pooling3d_3/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
average_pooling3d_3/transposeъ
average_pooling3d_3/AvgPool3D	AvgPool3D!average_pooling3d_3/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_3/AvgPool3DЉ
$average_pooling3d_3/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_3/transpose_1/permф
average_pooling3d_3/transpose_1	Transpose&average_pooling3d_3/AvgPool3D:output:0-average_pooling3d_3/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
average_pooling3d_3/transpose_1q
reshape/ShapeShape#average_pooling3d_3/transpose_1:y:0*
T0*
_output_shapes
:2
reshape/Shape
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape/Reshape/shape/1І
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shapeЄ
reshape/ReshapeReshape#average_pooling3d_3/transpose_1:y:0reshape/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape/Reshape
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulreshape/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/BiasAddv
dense/SoftplusSoftplusdense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/Softplusn
reshape_1/ShapeShapedense/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_1/Shape
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicex
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2x
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/3x
reshape_1/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/4
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0"reshape_1/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shapeЏ
reshape_1/ReshapeReshapedense/Softplus:activations:0 reshape_1/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_1/ReshapeЅ
tf.reshape_524/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_524/Reshape/shapeШ
tf.reshape_524/ReshapeReshapereshape_1/Reshape:output:0%tf.reshape_524/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_524/ReshapeЁ
tf.tile_262/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_262/Tile/multiplesМ
tf.tile_262/TileTiletf.reshape_524/Reshape:output:0#tf.tile_262/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_262/Tile
tf.reshape_525/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_525/Reshape/shapeЛ
tf.reshape_525/ReshapeReshapetf.tile_262/Tile:output:0%tf.reshape_525/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_525/Reshapex
tf.concat_431/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_431/concat/axisх
tf.concat_431/concatConcatV2tf.reshape_525/Reshape:output:0conv3d_3/Softplus:activations:0"tf.concat_431/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_431/concatД
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_4/Conv3D/ReadVariableOpђ
conv3d_4/Conv3DConv3Dtf.concat_431/concat:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_4/Conv3DЇ
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_4/BiasAdd/ReadVariableOpЧ
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_4/BiasAdd
conv3d_4/SoftplusSoftplusconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_4/SoftplusЅ
tf.reshape_526/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_526/Reshape/shapeЭ
tf.reshape_526/ReshapeReshapeconv3d_4/Softplus:activations:0%tf.reshape_526/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_526/ReshapeЁ
tf.tile_263/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_263/Tile/multiplesМ
tf.tile_263/TileTiletf.reshape_526/Reshape:output:0#tf.tile_263/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_263/Tile
tf.reshape_527/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_527/Reshape/shapeЛ
tf.reshape_527/ReshapeReshapetf.tile_263/Tile:output:0%tf.reshape_527/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_527/Reshapex
tf.concat_432/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_432/concat/axisх
tf.concat_432/concatConcatV2tf.reshape_527/Reshape:output:0conv3d_2/Softplus:activations:0"tf.concat_432/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_432/concatД
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_5/Conv3D/ReadVariableOpђ
conv3d_5/Conv3DConv3Dtf.concat_432/concat:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_5/Conv3DЇ
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_5/BiasAdd/ReadVariableOpЧ
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_5/BiasAdd
conv3d_5/SoftplusSoftplusconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_5/SoftplusЅ
tf.reshape_528/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_528/Reshape/shapeЭ
tf.reshape_528/ReshapeReshapeconv3d_5/Softplus:activations:0%tf.reshape_528/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_528/ReshapeЁ
tf.tile_264/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_264/Tile/multiplesМ
tf.tile_264/TileTiletf.reshape_528/Reshape:output:0#tf.tile_264/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_264/Tile
tf.reshape_529/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_529/Reshape/shapeЛ
tf.reshape_529/ReshapeReshapetf.tile_264/Tile:output:0%tf.reshape_529/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_529/Reshapex
tf.concat_433/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_433/concat/axisх
tf.concat_433/concatConcatV2tf.reshape_529/Reshape:output:0conv3d_1/Softplus:activations:0"tf.concat_433/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_433/concatД
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_6/Conv3D/ReadVariableOpђ
conv3d_6/Conv3DConv3Dtf.concat_433/concat:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_6/Conv3DЇ
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_6/BiasAdd/ReadVariableOpЧ
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_6/BiasAdd
conv3d_6/SoftplusSoftplusconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_6/SoftplusЅ
tf.reshape_530/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_530/Reshape/shapeЭ
tf.reshape_530/ReshapeReshapeconv3d_6/Softplus:activations:0%tf.reshape_530/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_530/ReshapeЁ
tf.tile_265/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_265/Tile/multiplesМ
tf.tile_265/TileTiletf.reshape_530/Reshape:output:0#tf.tile_265/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_265/Tile
tf.reshape_531/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_531/Reshape/shapeЛ
tf.reshape_531/ReshapeReshapetf.tile_265/Tile:output:0%tf.reshape_531/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_531/Reshapex
tf.concat_434/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_434/concat/axisу
tf.concat_434/concatConcatV2tf.reshape_531/Reshape:output:0conv3d/Softplus:activations:0"tf.concat_434/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_434/concatД
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02 
conv3d_7/Conv3D/ReadVariableOpђ
conv3d_7/Conv3DConv3Dtf.concat_434/concat:output:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_7/Conv3DЇ
conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv3d_7/BiasAdd/ReadVariableOpЧ
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_7/BiasAdd
conv3d_7/SoftplusSoftplusconv3d_7/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_7/SoftplusД
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_8/Conv3D/ReadVariableOpє
conv3d_8/Conv3DConv3Dconv3d_7/Softplus:activations:0&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_8/Conv3DЇ
conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_8/BiasAdd/ReadVariableOpЧ
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_8/BiasAdd
IdentityIdentityconv3d_8/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityт
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Ы

E__inference_conv3d_4_layer_call_and_return_conditional_losses_3227410

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
р

j
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3227097

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
ж
У	
B__inference_model_layer_call_and_return_conditional_losses_3228030	
input,
conv3d_3227941: 
conv3d_3227943: .
conv3d_1_3227947: 
conv3d_1_3227949:.
conv3d_2_3227953:
conv3d_2_3227955:.
conv3d_3_3227959:
conv3d_3_3227961:
dense_3227966:@@
dense_3227968:@.
conv3d_4_3227980:
conv3d_4_3227982:.
conv3d_5_3227993:
conv3d_5_3227995:.
conv3d_6_3228006:
conv3d_6_3228008:.
conv3d_7_3228019:0 
conv3d_7_3228021: .
conv3d_8_3228024: 
conv3d_8_3228026:
identityЂconv3d/StatefulPartitionedCallЂ conv3d_1/StatefulPartitionedCallЂ conv3d_2/StatefulPartitionedCallЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂ conv3d_7/StatefulPartitionedCallЂ conv3d_8/StatefulPartitionedCallЂdense/StatefulPartitionedCallЕ
0tf.__operators__.getitem_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_336/strided_slice/stackЙ
2tf.__operators__.getitem_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_336/strided_slice/stack_1Й
2tf.__operators__.getitem_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_336/strided_slice/stack_2
*tf.__operators__.getitem_336/strided_sliceStridedSliceinput9tf.__operators__.getitem_336/strided_slice/stack:output:0;tf.__operators__.getitem_336/strided_slice/stack_1:output:0;tf.__operators__.getitem_336/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_336/strided_sliceБ
 range_conversion/PartitionedCallPartitionedCall3tf.__operators__.getitem_336/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8 *V
fQRO
M__inference_range_conversion_layer_call_and_return_conditional_losses_32272272"
 range_conversion/PartitionedCallЕ
0tf.__operators__.getitem_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_337/strided_slice/stackЙ
2tf.__operators__.getitem_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_337/strided_slice/stack_1Й
2tf.__operators__.getitem_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_337/strided_slice/stack_2
*tf.__operators__.getitem_337/strided_sliceStridedSliceinput9tf.__operators__.getitem_337/strided_slice/stack:output:0;tf.__operators__.getitem_337/strided_slice/stack_1:output:0;tf.__operators__.getitem_337/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_337/strided_slicex
tf.concat_430/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_430/concat/axis
tf.concat_430/concatConcatV2)range_conversion/PartitionedCall:output:03tf.__operators__.getitem_337/strided_slice:output:0"tf.concat_430/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_430/concatЛ
conv3d/StatefulPartitionedCallStatefulPartitionedCalltf.concat_430/concat:output:0conv3d_3227941conv3d_3227943*
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
GPU2 *0,1,2,3J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_32272462 
conv3d/StatefulPartitionedCallЈ
!average_pooling3d/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *W
fRRP
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_32272602#
!average_pooling3d/PartitionedCallв
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling3d/PartitionedCall:output:0conv3d_1_3227947conv3d_1_3227949*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_32272732"
 conv3d_1/StatefulPartitionedCallА
#average_pooling3d_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_32272872%
#average_pooling3d_1/PartitionedCallд
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_1/PartitionedCall:output:0conv3d_2_3227953conv3d_2_3227955*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_32273002"
 conv3d_2/StatefulPartitionedCallА
#average_pooling3d_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_32273142%
#average_pooling3d_2/PartitionedCallд
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_2/PartitionedCall:output:0conv3d_3_3227959conv3d_3_3227961*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_32273272"
 conv3d_3/StatefulPartitionedCallА
#average_pooling3d_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_32273412%
#average_pooling3d_3/PartitionedCall
reshape/PartitionedCallPartitionedCall,average_pooling3d_3/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_32273552
reshape/PartitionedCall­
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0dense_3227966dense_3227968*
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_32273682
dense/StatefulPartitionedCall
reshape_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_reshape_1_layer_call_and_return_conditional_losses_32273892
reshape_1/PartitionedCallЅ
tf.reshape_524/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_524/Reshape/shapeа
tf.reshape_524/ReshapeReshape"reshape_1/PartitionedCall:output:0%tf.reshape_524/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_524/ReshapeЁ
tf.tile_262/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_262/Tile/multiplesМ
tf.tile_262/TileTiletf.reshape_524/Reshape:output:0#tf.tile_262/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_262/Tile
tf.reshape_525/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_525/Reshape/shapeЛ
tf.reshape_525/ReshapeReshapetf.tile_262/Tile:output:0%tf.reshape_525/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_525/Reshapex
tf.concat_431/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_431/concat/axisя
tf.concat_431/concatConcatV2tf.reshape_525/Reshape:output:0)conv3d_3/StatefulPartitionedCall:output:0"tf.concat_431/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_431/concatХ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCalltf.concat_431/concat:output:0conv3d_4_3227980conv3d_4_3227982*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_32274102"
 conv3d_4/StatefulPartitionedCallЅ
tf.reshape_526/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_526/Reshape/shapeз
tf.reshape_526/ReshapeReshape)conv3d_4/StatefulPartitionedCall:output:0%tf.reshape_526/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_526/ReshapeЁ
tf.tile_263/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_263/Tile/multiplesМ
tf.tile_263/TileTiletf.reshape_526/Reshape:output:0#tf.tile_263/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_263/Tile
tf.reshape_527/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_527/Reshape/shapeЛ
tf.reshape_527/ReshapeReshapetf.tile_263/Tile:output:0%tf.reshape_527/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_527/Reshapex
tf.concat_432/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_432/concat/axisя
tf.concat_432/concatConcatV2tf.reshape_527/Reshape:output:0)conv3d_2/StatefulPartitionedCall:output:0"tf.concat_432/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_432/concatХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCalltf.concat_432/concat:output:0conv3d_5_3227993conv3d_5_3227995*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_32274352"
 conv3d_5/StatefulPartitionedCallЅ
tf.reshape_528/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_528/Reshape/shapeз
tf.reshape_528/ReshapeReshape)conv3d_5/StatefulPartitionedCall:output:0%tf.reshape_528/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_528/ReshapeЁ
tf.tile_264/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_264/Tile/multiplesМ
tf.tile_264/TileTiletf.reshape_528/Reshape:output:0#tf.tile_264/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_264/Tile
tf.reshape_529/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_529/Reshape/shapeЛ
tf.reshape_529/ReshapeReshapetf.tile_264/Tile:output:0%tf.reshape_529/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_529/Reshapex
tf.concat_433/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_433/concat/axisя
tf.concat_433/concatConcatV2tf.reshape_529/Reshape:output:0)conv3d_1/StatefulPartitionedCall:output:0"tf.concat_433/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_433/concatХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCalltf.concat_433/concat:output:0conv3d_6_3228006conv3d_6_3228008*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_32274602"
 conv3d_6/StatefulPartitionedCallЅ
tf.reshape_530/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_530/Reshape/shapeз
tf.reshape_530/ReshapeReshape)conv3d_6/StatefulPartitionedCall:output:0%tf.reshape_530/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_530/ReshapeЁ
tf.tile_265/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_265/Tile/multiplesМ
tf.tile_265/TileTiletf.reshape_530/Reshape:output:0#tf.tile_265/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_265/Tile
tf.reshape_531/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_531/Reshape/shapeЛ
tf.reshape_531/ReshapeReshapetf.tile_265/Tile:output:0%tf.reshape_531/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_531/Reshapex
tf.concat_434/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_434/concat/axisэ
tf.concat_434/concatConcatV2tf.reshape_531/Reshape:output:0'conv3d/StatefulPartitionedCall:output:0"tf.concat_434/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_434/concatХ
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCalltf.concat_434/concat:output:0conv3d_7_3228019conv3d_7_3228021*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_32274852"
 conv3d_7/StatefulPartitionedCallб
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0conv3d_8_3228024conv3d_8_3228026*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_32275012"
 conv3d_8/StatefulPartitionedCall
IdentityIdentity)conv3d_8/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityЇ
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
Ы

E__inference_conv3d_4_layer_call_and_return_conditional_losses_3228880

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
т

l
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3227157

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
Ы

E__inference_conv3d_1_layer_call_and_return_conditional_losses_3228679

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
З
Ё
(__inference_conv3d_layer_call_fn_3228620

inputs%
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_32272462
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
у
G
+__inference_reshape_1_layer_call_fn_3228845

inputs
identityл
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
GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_reshape_1_layer_call_and_return_conditional_losses_32273892
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

`
D__inference_reshape_layer_call_and_return_conditional_losses_3227355

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
Л
Ѓ
*__inference_conv3d_2_layer_call_fn_3228716

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_32273002
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
	
l
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3228707

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
	
l
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3227314

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
Тщ
е
B__inference_model_layer_call_and_return_conditional_losses_3228432

inputsC
%conv3d_conv3d_readvariableop_resource: 4
&conv3d_biasadd_readvariableop_resource: E
'conv3d_1_conv3d_readvariableop_resource: 6
(conv3d_1_biasadd_readvariableop_resource:E
'conv3d_2_conv3d_readvariableop_resource:6
(conv3d_2_biasadd_readvariableop_resource:E
'conv3d_3_conv3d_readvariableop_resource:6
(conv3d_3_biasadd_readvariableop_resource:6
$dense_matmul_readvariableop_resource:@@3
%dense_biasadd_readvariableop_resource:@E
'conv3d_4_conv3d_readvariableop_resource:6
(conv3d_4_biasadd_readvariableop_resource:E
'conv3d_5_conv3d_readvariableop_resource:6
(conv3d_5_biasadd_readvariableop_resource:E
'conv3d_6_conv3d_readvariableop_resource:6
(conv3d_6_biasadd_readvariableop_resource:E
'conv3d_7_conv3d_readvariableop_resource:0 6
(conv3d_7_biasadd_readvariableop_resource: E
'conv3d_8_conv3d_readvariableop_resource: 6
(conv3d_8_biasadd_readvariableop_resource:
identityЂconv3d/BiasAdd/ReadVariableOpЂconv3d/Conv3D/ReadVariableOpЂconv3d_1/BiasAdd/ReadVariableOpЂconv3d_1/Conv3D/ReadVariableOpЂconv3d_2/BiasAdd/ReadVariableOpЂconv3d_2/Conv3D/ReadVariableOpЂconv3d_3/BiasAdd/ReadVariableOpЂconv3d_3/Conv3D/ReadVariableOpЂconv3d_4/BiasAdd/ReadVariableOpЂconv3d_4/Conv3D/ReadVariableOpЂconv3d_5/BiasAdd/ReadVariableOpЂconv3d_5/Conv3D/ReadVariableOpЂconv3d_6/BiasAdd/ReadVariableOpЂconv3d_6/Conv3D/ReadVariableOpЂconv3d_7/BiasAdd/ReadVariableOpЂconv3d_7/Conv3D/ReadVariableOpЂconv3d_8/BiasAdd/ReadVariableOpЂconv3d_8/Conv3D/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_336/strided_slice/stackЙ
2tf.__operators__.getitem_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_336/strided_slice/stack_1Й
2tf.__operators__.getitem_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_336/strided_slice/stack_2
*tf.__operators__.getitem_336/strided_sliceStridedSliceinputs9tf.__operators__.getitem_336/strided_slice/stack:output:0;tf.__operators__.getitem_336/strided_slice/stack_1:output:0;tf.__operators__.getitem_336/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_336/strided_sliceu
range_conversion/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion/sub/yЧ
range_conversion/subSub3tf.__operators__.getitem_336/strided_slice:output:0range_conversion/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/sub}
range_conversion/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion/truediv/yМ
range_conversion/truedivRealDivrange_conversion/sub:z:0#range_conversion/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/truedivu
range_conversion/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion/mul/yА
range_conversion/mulMulrange_conversion/truediv:z:0range_conversion/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/mulu
range_conversion/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion/add/yЎ
range_conversion/addAddV2range_conversion/mul:z:0range_conversion/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion/addЕ
0tf.__operators__.getitem_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_337/strided_slice/stackЙ
2tf.__operators__.getitem_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_337/strided_slice/stack_1Й
2tf.__operators__.getitem_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_337/strided_slice/stack_2
*tf.__operators__.getitem_337/strided_sliceStridedSliceinputs9tf.__operators__.getitem_337/strided_slice/stack:output:0;tf.__operators__.getitem_337/strided_slice/stack_1:output:0;tf.__operators__.getitem_337/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_337/strided_slicex
tf.concat_430/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_430/concat/axisђ
tf.concat_430/concatConcatV2range_conversion/add:z:03tf.__operators__.getitem_337/strided_slice:output:0"tf.concat_430/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_430/concatЎ
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02
conv3d/Conv3D/ReadVariableOpь
conv3d/Conv3DConv3Dtf.concat_430/concat:output:0$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d/Conv3DЁ
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv3d/BiasAdd/ReadVariableOpП
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d/BiasAdd
conv3d/SoftplusSoftplusconv3d/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d/SoftplusЁ
 average_pooling3d/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2"
 average_pooling3d/transpose/permЯ
average_pooling3d/transpose	Transposeconv3d/Softplus:activations:0)average_pooling3d/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2
average_pooling3d/transposeф
average_pooling3d/AvgPool3D	AvgPool3Daverage_pooling3d/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2
average_pooling3d/AvgPool3DЅ
"average_pooling3d/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d/transpose_1/permм
average_pooling3d/transpose_1	Transpose$average_pooling3d/AvgPool3D:output:0+average_pooling3d/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2
average_pooling3d/transpose_1Д
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_1/Conv3D/ReadVariableOpі
conv3d_1/Conv3DConv3D!average_pooling3d/transpose_1:y:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_1/Conv3DЇ
conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_1/BiasAdd/ReadVariableOpЧ
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_1/BiasAdd
conv3d_1/SoftplusSoftplusconv3d_1/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_1/SoftplusЅ
"average_pooling3d_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_1/transpose/permз
average_pooling3d_1/transpose	Transposeconv3d_1/Softplus:activations:0+average_pooling3d_1/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
average_pooling3d_1/transposeъ
average_pooling3d_1/AvgPool3D	AvgPool3D!average_pooling3d_1/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_1/AvgPool3DЉ
$average_pooling3d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_1/transpose_1/permф
average_pooling3d_1/transpose_1	Transpose&average_pooling3d_1/AvgPool3D:output:0-average_pooling3d_1/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
average_pooling3d_1/transpose_1Д
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_2/Conv3D/ReadVariableOpј
conv3d_2/Conv3DConv3D#average_pooling3d_1/transpose_1:y:0&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_2/Conv3DЇ
conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_2/BiasAdd/ReadVariableOpЧ
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_2/BiasAdd
conv3d_2/SoftplusSoftplusconv3d_2/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_2/SoftplusЅ
"average_pooling3d_2/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_2/transpose/permз
average_pooling3d_2/transpose	Transposeconv3d_2/Softplus:activations:0+average_pooling3d_2/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
average_pooling3d_2/transposeъ
average_pooling3d_2/AvgPool3D	AvgPool3D!average_pooling3d_2/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_2/AvgPool3DЉ
$average_pooling3d_2/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_2/transpose_1/permф
average_pooling3d_2/transpose_1	Transpose&average_pooling3d_2/AvgPool3D:output:0-average_pooling3d_2/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
average_pooling3d_2/transpose_1Д
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_3/Conv3D/ReadVariableOpј
conv3d_3/Conv3DConv3D#average_pooling3d_2/transpose_1:y:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_3/Conv3DЇ
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_3/BiasAdd/ReadVariableOpЧ
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_3/BiasAdd
conv3d_3/SoftplusSoftplusconv3d_3/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_3/SoftplusЅ
"average_pooling3d_3/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_3/transpose/permз
average_pooling3d_3/transpose	Transposeconv3d_3/Softplus:activations:0+average_pooling3d_3/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
average_pooling3d_3/transposeъ
average_pooling3d_3/AvgPool3D	AvgPool3D!average_pooling3d_3/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_3/AvgPool3DЉ
$average_pooling3d_3/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_3/transpose_1/permф
average_pooling3d_3/transpose_1	Transpose&average_pooling3d_3/AvgPool3D:output:0-average_pooling3d_3/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
average_pooling3d_3/transpose_1q
reshape/ShapeShape#average_pooling3d_3/transpose_1:y:0*
T0*
_output_shapes
:2
reshape/Shape
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape/Reshape/shape/1І
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shapeЄ
reshape/ReshapeReshape#average_pooling3d_3/transpose_1:y:0reshape/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape/Reshape
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulreshape/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/BiasAddv
dense/SoftplusSoftplusdense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense/Softplusn
reshape_1/ShapeShapedense/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_1/Shape
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicex
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2x
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/3x
reshape_1/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/4
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0"reshape_1/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shapeЏ
reshape_1/ReshapeReshapedense/Softplus:activations:0 reshape_1/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_1/ReshapeЅ
tf.reshape_524/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_524/Reshape/shapeШ
tf.reshape_524/ReshapeReshapereshape_1/Reshape:output:0%tf.reshape_524/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_524/ReshapeЁ
tf.tile_262/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_262/Tile/multiplesМ
tf.tile_262/TileTiletf.reshape_524/Reshape:output:0#tf.tile_262/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_262/Tile
tf.reshape_525/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_525/Reshape/shapeЛ
tf.reshape_525/ReshapeReshapetf.tile_262/Tile:output:0%tf.reshape_525/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_525/Reshapex
tf.concat_431/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_431/concat/axisх
tf.concat_431/concatConcatV2tf.reshape_525/Reshape:output:0conv3d_3/Softplus:activations:0"tf.concat_431/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_431/concatД
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_4/Conv3D/ReadVariableOpђ
conv3d_4/Conv3DConv3Dtf.concat_431/concat:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_4/Conv3DЇ
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_4/BiasAdd/ReadVariableOpЧ
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_4/BiasAdd
conv3d_4/SoftplusSoftplusconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_4/SoftplusЅ
tf.reshape_526/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_526/Reshape/shapeЭ
tf.reshape_526/ReshapeReshapeconv3d_4/Softplus:activations:0%tf.reshape_526/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_526/ReshapeЁ
tf.tile_263/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_263/Tile/multiplesМ
tf.tile_263/TileTiletf.reshape_526/Reshape:output:0#tf.tile_263/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_263/Tile
tf.reshape_527/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_527/Reshape/shapeЛ
tf.reshape_527/ReshapeReshapetf.tile_263/Tile:output:0%tf.reshape_527/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_527/Reshapex
tf.concat_432/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_432/concat/axisх
tf.concat_432/concatConcatV2tf.reshape_527/Reshape:output:0conv3d_2/Softplus:activations:0"tf.concat_432/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_432/concatД
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_5/Conv3D/ReadVariableOpђ
conv3d_5/Conv3DConv3Dtf.concat_432/concat:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_5/Conv3DЇ
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_5/BiasAdd/ReadVariableOpЧ
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_5/BiasAdd
conv3d_5/SoftplusSoftplusconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_5/SoftplusЅ
tf.reshape_528/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_528/Reshape/shapeЭ
tf.reshape_528/ReshapeReshapeconv3d_5/Softplus:activations:0%tf.reshape_528/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_528/ReshapeЁ
tf.tile_264/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_264/Tile/multiplesМ
tf.tile_264/TileTiletf.reshape_528/Reshape:output:0#tf.tile_264/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_264/Tile
tf.reshape_529/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_529/Reshape/shapeЛ
tf.reshape_529/ReshapeReshapetf.tile_264/Tile:output:0%tf.reshape_529/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_529/Reshapex
tf.concat_433/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_433/concat/axisх
tf.concat_433/concatConcatV2tf.reshape_529/Reshape:output:0conv3d_1/Softplus:activations:0"tf.concat_433/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_433/concatД
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02 
conv3d_6/Conv3D/ReadVariableOpђ
conv3d_6/Conv3DConv3Dtf.concat_433/concat:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_6/Conv3DЇ
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_6/BiasAdd/ReadVariableOpЧ
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_6/BiasAdd
conv3d_6/SoftplusSoftplusconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_6/SoftplusЅ
tf.reshape_530/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_530/Reshape/shapeЭ
tf.reshape_530/ReshapeReshapeconv3d_6/Softplus:activations:0%tf.reshape_530/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_530/ReshapeЁ
tf.tile_265/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_265/Tile/multiplesМ
tf.tile_265/TileTiletf.reshape_530/Reshape:output:0#tf.tile_265/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_265/Tile
tf.reshape_531/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_531/Reshape/shapeЛ
tf.reshape_531/ReshapeReshapetf.tile_265/Tile:output:0%tf.reshape_531/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_531/Reshapex
tf.concat_434/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_434/concat/axisу
tf.concat_434/concatConcatV2tf.reshape_531/Reshape:output:0conv3d/Softplus:activations:0"tf.concat_434/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_434/concatД
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02 
conv3d_7/Conv3D/ReadVariableOpђ
conv3d_7/Conv3DConv3Dtf.concat_434/concat:output:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_7/Conv3DЇ
conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv3d_7/BiasAdd/ReadVariableOpЧ
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_7/BiasAdd
conv3d_7/SoftplusSoftplusconv3d_7/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_7/SoftplusД
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_8/Conv3D/ReadVariableOpє
conv3d_8/Conv3DConv3Dconv3d_7/Softplus:activations:0&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_8/Conv3DЇ
conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_8/BiasAdd/ReadVariableOpЧ
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_8/BiasAdd
IdentityIdentityconv3d_8/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityт
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
	
l
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3228803

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

O
3__inference_average_pooling3d_layer_call_fn_3228641

inputs
identityу
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
GPU2 *0,1,2,3J 8 *W
fRRP
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_32272602
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
Л
Ѓ
*__inference_conv3d_8_layer_call_fn_3228949

inputs%
unknown: 
	unknown_0:
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_32275012
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
 
Q
5__inference_average_pooling3d_3_layer_call_fn_3228780

inputs
identity
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_32271872
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
Л
Ѓ
*__inference_conv3d_3_layer_call_fn_3228764

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_32273272
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

ю
'__inference_model_layer_call_fn_3227551	
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
identityЂStatefulPartitionedCallћ
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_32275082
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
р

j
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3228650

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
г

E__inference_conv3d_8_layer_call_and_return_conditional_losses_3228959

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
к
Ф	
B__inference_model_layer_call_and_return_conditional_losses_3227508

inputs,
conv3d_3227247: 
conv3d_3227249: .
conv3d_1_3227274: 
conv3d_1_3227276:.
conv3d_2_3227301:
conv3d_2_3227303:.
conv3d_3_3227328:
conv3d_3_3227330:
dense_3227369:@@
dense_3227371:@.
conv3d_4_3227411:
conv3d_4_3227413:.
conv3d_5_3227436:
conv3d_5_3227438:.
conv3d_6_3227461:
conv3d_6_3227463:.
conv3d_7_3227486:0 
conv3d_7_3227488: .
conv3d_8_3227502: 
conv3d_8_3227504:
identityЂconv3d/StatefulPartitionedCallЂ conv3d_1/StatefulPartitionedCallЂ conv3d_2/StatefulPartitionedCallЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂ conv3d_7/StatefulPartitionedCallЂ conv3d_8/StatefulPartitionedCallЂdense/StatefulPartitionedCallЕ
0tf.__operators__.getitem_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_336/strided_slice/stackЙ
2tf.__operators__.getitem_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_336/strided_slice/stack_1Й
2tf.__operators__.getitem_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_336/strided_slice/stack_2
*tf.__operators__.getitem_336/strided_sliceStridedSliceinputs9tf.__operators__.getitem_336/strided_slice/stack:output:0;tf.__operators__.getitem_336/strided_slice/stack_1:output:0;tf.__operators__.getitem_336/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_336/strided_sliceБ
 range_conversion/PartitionedCallPartitionedCall3tf.__operators__.getitem_336/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8 *V
fQRO
M__inference_range_conversion_layer_call_and_return_conditional_losses_32272272"
 range_conversion/PartitionedCallЕ
0tf.__operators__.getitem_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_337/strided_slice/stackЙ
2tf.__operators__.getitem_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_337/strided_slice/stack_1Й
2tf.__operators__.getitem_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_337/strided_slice/stack_2
*tf.__operators__.getitem_337/strided_sliceStridedSliceinputs9tf.__operators__.getitem_337/strided_slice/stack:output:0;tf.__operators__.getitem_337/strided_slice/stack_1:output:0;tf.__operators__.getitem_337/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_337/strided_slicex
tf.concat_430/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_430/concat/axis
tf.concat_430/concatConcatV2)range_conversion/PartitionedCall:output:03tf.__operators__.getitem_337/strided_slice:output:0"tf.concat_430/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_430/concatЛ
conv3d/StatefulPartitionedCallStatefulPartitionedCalltf.concat_430/concat:output:0conv3d_3227247conv3d_3227249*
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
GPU2 *0,1,2,3J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_32272462 
conv3d/StatefulPartitionedCallЈ
!average_pooling3d/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *W
fRRP
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_32272602#
!average_pooling3d/PartitionedCallв
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling3d/PartitionedCall:output:0conv3d_1_3227274conv3d_1_3227276*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_32272732"
 conv3d_1/StatefulPartitionedCallА
#average_pooling3d_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_32272872%
#average_pooling3d_1/PartitionedCallд
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_1/PartitionedCall:output:0conv3d_2_3227301conv3d_2_3227303*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_32273002"
 conv3d_2/StatefulPartitionedCallА
#average_pooling3d_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_32273142%
#average_pooling3d_2/PartitionedCallд
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_2/PartitionedCall:output:0conv3d_3_3227328conv3d_3_3227330*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_32273272"
 conv3d_3/StatefulPartitionedCallА
#average_pooling3d_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_32273412%
#average_pooling3d_3/PartitionedCall
reshape/PartitionedCallPartitionedCall,average_pooling3d_3/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_32273552
reshape/PartitionedCall­
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0dense_3227369dense_3227371*
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_32273682
dense/StatefulPartitionedCall
reshape_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_reshape_1_layer_call_and_return_conditional_losses_32273892
reshape_1/PartitionedCallЅ
tf.reshape_524/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_524/Reshape/shapeа
tf.reshape_524/ReshapeReshape"reshape_1/PartitionedCall:output:0%tf.reshape_524/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_524/ReshapeЁ
tf.tile_262/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_262/Tile/multiplesМ
tf.tile_262/TileTiletf.reshape_524/Reshape:output:0#tf.tile_262/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_262/Tile
tf.reshape_525/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_525/Reshape/shapeЛ
tf.reshape_525/ReshapeReshapetf.tile_262/Tile:output:0%tf.reshape_525/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_525/Reshapex
tf.concat_431/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_431/concat/axisя
tf.concat_431/concatConcatV2tf.reshape_525/Reshape:output:0)conv3d_3/StatefulPartitionedCall:output:0"tf.concat_431/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_431/concatХ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCalltf.concat_431/concat:output:0conv3d_4_3227411conv3d_4_3227413*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_32274102"
 conv3d_4/StatefulPartitionedCallЅ
tf.reshape_526/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_526/Reshape/shapeз
tf.reshape_526/ReshapeReshape)conv3d_4/StatefulPartitionedCall:output:0%tf.reshape_526/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_526/ReshapeЁ
tf.tile_263/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_263/Tile/multiplesМ
tf.tile_263/TileTiletf.reshape_526/Reshape:output:0#tf.tile_263/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_263/Tile
tf.reshape_527/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_527/Reshape/shapeЛ
tf.reshape_527/ReshapeReshapetf.tile_263/Tile:output:0%tf.reshape_527/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_527/Reshapex
tf.concat_432/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_432/concat/axisя
tf.concat_432/concatConcatV2tf.reshape_527/Reshape:output:0)conv3d_2/StatefulPartitionedCall:output:0"tf.concat_432/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_432/concatХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCalltf.concat_432/concat:output:0conv3d_5_3227436conv3d_5_3227438*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_32274352"
 conv3d_5/StatefulPartitionedCallЅ
tf.reshape_528/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_528/Reshape/shapeз
tf.reshape_528/ReshapeReshape)conv3d_5/StatefulPartitionedCall:output:0%tf.reshape_528/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_528/ReshapeЁ
tf.tile_264/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_264/Tile/multiplesМ
tf.tile_264/TileTiletf.reshape_528/Reshape:output:0#tf.tile_264/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_264/Tile
tf.reshape_529/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_529/Reshape/shapeЛ
tf.reshape_529/ReshapeReshapetf.tile_264/Tile:output:0%tf.reshape_529/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_529/Reshapex
tf.concat_433/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_433/concat/axisя
tf.concat_433/concatConcatV2tf.reshape_529/Reshape:output:0)conv3d_1/StatefulPartitionedCall:output:0"tf.concat_433/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_433/concatХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCalltf.concat_433/concat:output:0conv3d_6_3227461conv3d_6_3227463*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_32274602"
 conv3d_6/StatefulPartitionedCallЅ
tf.reshape_530/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_530/Reshape/shapeз
tf.reshape_530/ReshapeReshape)conv3d_6/StatefulPartitionedCall:output:0%tf.reshape_530/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_530/ReshapeЁ
tf.tile_265/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_265/Tile/multiplesМ
tf.tile_265/TileTiletf.reshape_530/Reshape:output:0#tf.tile_265/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_265/Tile
tf.reshape_531/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_531/Reshape/shapeЛ
tf.reshape_531/ReshapeReshapetf.tile_265/Tile:output:0%tf.reshape_531/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_531/Reshapex
tf.concat_434/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_434/concat/axisэ
tf.concat_434/concatConcatV2tf.reshape_531/Reshape:output:0'conv3d/StatefulPartitionedCall:output:0"tf.concat_434/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_434/concatХ
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCalltf.concat_434/concat:output:0conv3d_7_3227486conv3d_7_3227488*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_32274852"
 conv3d_7/StatefulPartitionedCallб
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0conv3d_8_3227502conv3d_8_3227504*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_32275012"
 conv3d_8/StatefulPartitionedCall
IdentityIdentity)conv3d_8/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityЇ
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Л
Ѓ
*__inference_conv3d_6_layer_call_fn_3228909

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_32274602
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

ѓ
B__inference_dense_layer_call_and_return_conditional_losses_3227368

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

ѓ
B__inference_dense_layer_call_and_return_conditional_losses_3228840

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
т

l
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3228794

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

O
3__inference_average_pooling3d_layer_call_fn_3228636

inputs
identity
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
GPU2 *0,1,2,3J 8 *W
fRRP
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_32270972
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
Л
Ѓ
*__inference_conv3d_7_layer_call_fn_3228929

inputs%
unknown:0 
	unknown_0: 
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_32274852
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
ј

'__inference_dense_layer_call_fn_3228829

inputs
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall§
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_32273682
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
ј2

 __inference__traced_save_3229042
file_prefix,
(savev2_conv3d_kernel_read_readvariableop*
&savev2_conv3d_bias_read_readvariableop.
*savev2_conv3d_1_kernel_read_readvariableop,
(savev2_conv3d_1_bias_read_readvariableop.
*savev2_conv3d_2_kernel_read_readvariableop,
(savev2_conv3d_2_bias_read_readvariableop.
*savev2_conv3d_3_kernel_read_readvariableop,
(savev2_conv3d_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop.
*savev2_conv3d_4_kernel_read_readvariableop,
(savev2_conv3d_4_bias_read_readvariableop.
*savev2_conv3d_5_kernel_read_readvariableop,
(savev2_conv3d_5_bias_read_readvariableop.
*savev2_conv3d_6_kernel_read_readvariableop,
(savev2_conv3d_6_bias_read_readvariableop.
*savev2_conv3d_7_kernel_read_readvariableop,
(savev2_conv3d_7_bias_read_readvariableop.
*savev2_conv3d_8_kernel_read_readvariableop,
(savev2_conv3d_8_bias_read_readvariableop
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
SaveV2/shape_and_slices 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv3d_kernel_read_readvariableop&savev2_conv3d_bias_read_readvariableop*savev2_conv3d_1_kernel_read_readvariableop(savev2_conv3d_1_bias_read_readvariableop*savev2_conv3d_2_kernel_read_readvariableop(savev2_conv3d_2_bias_read_readvariableop*savev2_conv3d_3_kernel_read_readvariableop(savev2_conv3d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop*savev2_conv3d_4_kernel_read_readvariableop(savev2_conv3d_4_bias_read_readvariableop*savev2_conv3d_5_kernel_read_readvariableop(savev2_conv3d_5_bias_read_readvariableop*savev2_conv3d_6_kernel_read_readvariableop(savev2_conv3d_6_bias_read_readvariableop*savev2_conv3d_7_kernel_read_readvariableop(savev2_conv3d_7_bias_read_readvariableop*savev2_conv3d_8_kernel_read_readvariableop(savev2_conv3d_8_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
п
E
)__inference_reshape_layer_call_fn_3228808

inputs
identityЭ
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
GPU2 *0,1,2,3J 8 *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_32273552
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
Ы

E__inference_conv3d_5_layer_call_and_return_conditional_losses_3228900

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

`
D__inference_reshape_layer_call_and_return_conditional_losses_3228820

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
ЭW
м
#__inference__traced_restore_3229112
file_prefix<
assignvariableop_conv3d_kernel: ,
assignvariableop_1_conv3d_bias: @
"assignvariableop_2_conv3d_1_kernel: .
 assignvariableop_3_conv3d_1_bias:@
"assignvariableop_4_conv3d_2_kernel:.
 assignvariableop_5_conv3d_2_bias:@
"assignvariableop_6_conv3d_3_kernel:.
 assignvariableop_7_conv3d_3_bias:1
assignvariableop_8_dense_kernel:@@+
assignvariableop_9_dense_bias:@A
#assignvariableop_10_conv3d_4_kernel:/
!assignvariableop_11_conv3d_4_bias:A
#assignvariableop_12_conv3d_5_kernel:/
!assignvariableop_13_conv3d_5_bias:A
#assignvariableop_14_conv3d_6_kernel:/
!assignvariableop_15_conv3d_6_bias:A
#assignvariableop_16_conv3d_7_kernel:0 /
!assignvariableop_17_conv3d_7_bias: A
#assignvariableop_18_conv3d_8_kernel: /
!assignvariableop_19_conv3d_8_bias:
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

Identity
AssignVariableOpAssignVariableOpassignvariableop_conv3d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѓ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv3d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ї
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv3d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѕ
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv3d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ї
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv3d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѕ
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv3d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv3d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv3d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Є
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ђ
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ћ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv3d_4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Љ
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv3d_4_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ћ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv3d_5_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Љ
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv3d_5_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ћ
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv3d_6_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Љ
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv3d_6_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ћ
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv3d_7_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Љ
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv3d_7_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ћ
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv3d_8_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Љ
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv3d_8_biasIdentity_19:output:0"/device:CPU:0*
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
	
j
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3228659

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
т

l
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3228698

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

R
2__inference_range_conversion_layer_call_fn_3228599

parameters
identityц
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
GPU2 *0,1,2,3J 8 *V
fQRO
M__inference_range_conversion_layer_call_and_return_conditional_losses_32272272
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
Ы

E__inference_conv3d_7_layer_call_and_return_conditional_losses_3228940

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
Л
Ѓ
*__inference_conv3d_5_layer_call_fn_3228889

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_32274352
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
Щ

C__inference_conv3d_layer_call_and_return_conditional_losses_3227246

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
Ы

E__inference_conv3d_6_layer_call_and_return_conditional_losses_3227460

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
г	
m
M__inference_range_conversion_layer_call_and_return_conditional_losses_3228611

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
Ы

E__inference_conv3d_2_layer_call_and_return_conditional_losses_3228727

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
 
Q
5__inference_average_pooling3d_2_layer_call_fn_3228732

inputs
identity
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_32271572
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
Ы

E__inference_conv3d_3_layer_call_and_return_conditional_losses_3227327

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
	
l
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3227341

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
Л
Ѓ
*__inference_conv3d_1_layer_call_fn_3228668

inputs%
unknown: 
	unknown_0:
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_32272732
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
Л
Ѓ
*__inference_conv3d_4_layer_call_fn_3228869

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_32274102
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
Ы

E__inference_conv3d_3_layer_call_and_return_conditional_losses_3228775

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

Q
5__inference_average_pooling3d_3_layer_call_fn_3228785

inputs
identityх
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_32273412
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
з
Є
"__inference__wrapped_model_3227084	
inputI
+model_conv3d_conv3d_readvariableop_resource: :
,model_conv3d_biasadd_readvariableop_resource: K
-model_conv3d_1_conv3d_readvariableop_resource: <
.model_conv3d_1_biasadd_readvariableop_resource:K
-model_conv3d_2_conv3d_readvariableop_resource:<
.model_conv3d_2_biasadd_readvariableop_resource:K
-model_conv3d_3_conv3d_readvariableop_resource:<
.model_conv3d_3_biasadd_readvariableop_resource:<
*model_dense_matmul_readvariableop_resource:@@9
+model_dense_biasadd_readvariableop_resource:@K
-model_conv3d_4_conv3d_readvariableop_resource:<
.model_conv3d_4_biasadd_readvariableop_resource:K
-model_conv3d_5_conv3d_readvariableop_resource:<
.model_conv3d_5_biasadd_readvariableop_resource:K
-model_conv3d_6_conv3d_readvariableop_resource:<
.model_conv3d_6_biasadd_readvariableop_resource:K
-model_conv3d_7_conv3d_readvariableop_resource:0 <
.model_conv3d_7_biasadd_readvariableop_resource: K
-model_conv3d_8_conv3d_readvariableop_resource: <
.model_conv3d_8_biasadd_readvariableop_resource:
identityЂ#model/conv3d/BiasAdd/ReadVariableOpЂ"model/conv3d/Conv3D/ReadVariableOpЂ%model/conv3d_1/BiasAdd/ReadVariableOpЂ$model/conv3d_1/Conv3D/ReadVariableOpЂ%model/conv3d_2/BiasAdd/ReadVariableOpЂ$model/conv3d_2/Conv3D/ReadVariableOpЂ%model/conv3d_3/BiasAdd/ReadVariableOpЂ$model/conv3d_3/Conv3D/ReadVariableOpЂ%model/conv3d_4/BiasAdd/ReadVariableOpЂ$model/conv3d_4/Conv3D/ReadVariableOpЂ%model/conv3d_5/BiasAdd/ReadVariableOpЂ$model/conv3d_5/Conv3D/ReadVariableOpЂ%model/conv3d_6/BiasAdd/ReadVariableOpЂ$model/conv3d_6/Conv3D/ReadVariableOpЂ%model/conv3d_7/BiasAdd/ReadVariableOpЂ$model/conv3d_7/Conv3D/ReadVariableOpЂ%model/conv3d_8/BiasAdd/ReadVariableOpЂ$model/conv3d_8/Conv3D/ReadVariableOpЂ"model/dense/BiasAdd/ReadVariableOpЂ!model/dense/MatMul/ReadVariableOpС
6model/tf.__operators__.getitem_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6model/tf.__operators__.getitem_336/strided_slice/stackХ
8model/tf.__operators__.getitem_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2:
8model/tf.__operators__.getitem_336/strided_slice/stack_1Х
8model/tf.__operators__.getitem_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8model/tf.__operators__.getitem_336/strided_slice/stack_2Џ
0model/tf.__operators__.getitem_336/strided_sliceStridedSliceinput?model/tf.__operators__.getitem_336/strided_slice/stack:output:0Amodel/tf.__operators__.getitem_336/strided_slice/stack_1:output:0Amodel/tf.__operators__.getitem_336/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask22
0model/tf.__operators__.getitem_336/strided_slice
model/range_conversion/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model/range_conversion/sub/yп
model/range_conversion/subSub9model/tf.__operators__.getitem_336/strided_slice:output:0%model/range_conversion/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model/range_conversion/sub
 model/range_conversion/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2"
 model/range_conversion/truediv/yд
model/range_conversion/truedivRealDivmodel/range_conversion/sub:z:0)model/range_conversion/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2 
model/range_conversion/truediv
model/range_conversion/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
model/range_conversion/mul/yШ
model/range_conversion/mulMul"model/range_conversion/truediv:z:0%model/range_conversion/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model/range_conversion/mul
model/range_conversion/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
model/range_conversion/add/yЦ
model/range_conversion/addAddV2model/range_conversion/mul:z:0%model/range_conversion/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model/range_conversion/addС
6model/tf.__operators__.getitem_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       28
6model/tf.__operators__.getitem_337/strided_slice/stackХ
8model/tf.__operators__.getitem_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2:
8model/tf.__operators__.getitem_337/strided_slice/stack_1Х
8model/tf.__operators__.getitem_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8model/tf.__operators__.getitem_337/strided_slice/stack_2Џ
0model/tf.__operators__.getitem_337/strided_sliceStridedSliceinput?model/tf.__operators__.getitem_337/strided_slice/stack:output:0Amodel/tf.__operators__.getitem_337/strided_slice/stack_1:output:0Amodel/tf.__operators__.getitem_337/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask22
0model/tf.__operators__.getitem_337/strided_slice
model/tf.concat_430/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/tf.concat_430/concat/axis
model/tf.concat_430/concatConcatV2model/range_conversion/add:z:09model/tf.__operators__.getitem_337/strided_slice:output:0(model/tf.concat_430/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model/tf.concat_430/concatР
"model/conv3d/Conv3D/ReadVariableOpReadVariableOp+model_conv3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02$
"model/conv3d/Conv3D/ReadVariableOp
model/conv3d/Conv3DConv3D#model/tf.concat_430/concat:output:0*model/conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d/Conv3DГ
#model/conv3d/BiasAdd/ReadVariableOpReadVariableOp,model_conv3d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#model/conv3d/BiasAdd/ReadVariableOpз
model/conv3d/BiasAddBiasAddmodel/conv3d/Conv3D:output:0+model/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model/conv3d/BiasAdd
model/conv3d/SoftplusSoftplusmodel/conv3d/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model/conv3d/Softplus­
&model/average_pooling3d/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&model/average_pooling3d/transpose/permч
!model/average_pooling3d/transpose	Transpose#model/conv3d/Softplus:activations:0/model/average_pooling3d/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2#
!model/average_pooling3d/transposeі
!model/average_pooling3d/AvgPool3D	AvgPool3D%model/average_pooling3d/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2#
!model/average_pooling3d/AvgPool3DБ
(model/average_pooling3d/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2*
(model/average_pooling3d/transpose_1/permє
#model/average_pooling3d/transpose_1	Transpose*model/average_pooling3d/AvgPool3D:output:01model/average_pooling3d/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2%
#model/average_pooling3d/transpose_1Ц
$model/conv3d_1/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_1_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02&
$model/conv3d_1/Conv3D/ReadVariableOp
model/conv3d_1/Conv3DConv3D'model/average_pooling3d/transpose_1:y:0,model/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_1/Conv3DЙ
%model/conv3d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv3d_1/BiasAdd/ReadVariableOpп
model/conv3d_1/BiasAddBiasAddmodel/conv3d_1/Conv3D:output:0-model/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model/conv3d_1/BiasAdd
model/conv3d_1/SoftplusSoftplusmodel/conv3d_1/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model/conv3d_1/SoftplusБ
(model/average_pooling3d_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2*
(model/average_pooling3d_1/transpose/permя
#model/average_pooling3d_1/transpose	Transpose%model/conv3d_1/Softplus:activations:01model/average_pooling3d_1/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2%
#model/average_pooling3d_1/transposeќ
#model/average_pooling3d_1/AvgPool3D	AvgPool3D'model/average_pooling3d_1/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2%
#model/average_pooling3d_1/AvgPool3DЕ
*model/average_pooling3d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2,
*model/average_pooling3d_1/transpose_1/permќ
%model/average_pooling3d_1/transpose_1	Transpose,model/average_pooling3d_1/AvgPool3D:output:03model/average_pooling3d_1/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2'
%model/average_pooling3d_1/transpose_1Ц
$model/conv3d_2/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_2_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02&
$model/conv3d_2/Conv3D/ReadVariableOp
model/conv3d_2/Conv3DConv3D)model/average_pooling3d_1/transpose_1:y:0,model/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_2/Conv3DЙ
%model/conv3d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv3d_2/BiasAdd/ReadVariableOpп
model/conv3d_2/BiasAddBiasAddmodel/conv3d_2/Conv3D:output:0-model/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model/conv3d_2/BiasAdd
model/conv3d_2/SoftplusSoftplusmodel/conv3d_2/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/conv3d_2/SoftplusБ
(model/average_pooling3d_2/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2*
(model/average_pooling3d_2/transpose/permя
#model/average_pooling3d_2/transpose	Transpose%model/conv3d_2/Softplus:activations:01model/average_pooling3d_2/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2%
#model/average_pooling3d_2/transposeќ
#model/average_pooling3d_2/AvgPool3D	AvgPool3D'model/average_pooling3d_2/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2%
#model/average_pooling3d_2/AvgPool3DЕ
*model/average_pooling3d_2/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2,
*model/average_pooling3d_2/transpose_1/permќ
%model/average_pooling3d_2/transpose_1	Transpose,model/average_pooling3d_2/AvgPool3D:output:03model/average_pooling3d_2/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2'
%model/average_pooling3d_2/transpose_1Ц
$model/conv3d_3/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02&
$model/conv3d_3/Conv3D/ReadVariableOp
model/conv3d_3/Conv3DConv3D)model/average_pooling3d_2/transpose_1:y:0,model/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_3/Conv3DЙ
%model/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv3d_3/BiasAdd/ReadVariableOpп
model/conv3d_3/BiasAddBiasAddmodel/conv3d_3/Conv3D:output:0-model/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model/conv3d_3/BiasAdd
model/conv3d_3/SoftplusSoftplusmodel/conv3d_3/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/conv3d_3/SoftplusБ
(model/average_pooling3d_3/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2*
(model/average_pooling3d_3/transpose/permя
#model/average_pooling3d_3/transpose	Transpose%model/conv3d_3/Softplus:activations:01model/average_pooling3d_3/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2%
#model/average_pooling3d_3/transposeќ
#model/average_pooling3d_3/AvgPool3D	AvgPool3D'model/average_pooling3d_3/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2%
#model/average_pooling3d_3/AvgPool3DЕ
*model/average_pooling3d_3/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2,
*model/average_pooling3d_3/transpose_1/permќ
%model/average_pooling3d_3/transpose_1	Transpose,model/average_pooling3d_3/AvgPool3D:output:03model/average_pooling3d_3/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2'
%model/average_pooling3d_3/transpose_1
model/reshape/ShapeShape)model/average_pooling3d_3/transpose_1:y:0*
T0*
_output_shapes
:2
model/reshape/Shape
!model/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model/reshape/strided_slice/stack
#model/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#model/reshape/strided_slice/stack_1
#model/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model/reshape/strided_slice/stack_2Ж
model/reshape/strided_sliceStridedSlicemodel/reshape/Shape:output:0*model/reshape/strided_slice/stack:output:0,model/reshape/strided_slice/stack_1:output:0,model/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/reshape/strided_slice
model/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
model/reshape/Reshape/shape/1О
model/reshape/Reshape/shapePack$model/reshape/strided_slice:output:0&model/reshape/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
model/reshape/Reshape/shapeМ
model/reshape/ReshapeReshape)model/average_pooling3d_3/transpose_1:y:0$model/reshape/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model/reshape/ReshapeБ
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02#
!model/dense/MatMul/ReadVariableOpЏ
model/dense/MatMulMatMulmodel/reshape/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model/dense/MatMulА
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"model/dense/BiasAdd/ReadVariableOpБ
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model/dense/BiasAdd
model/dense/SoftplusSoftplusmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model/dense/Softplus
model/reshape_1/ShapeShape"model/dense/Softplus:activations:0*
T0*
_output_shapes
:2
model/reshape_1/Shape
#model/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model/reshape_1/strided_slice/stack
%model/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/reshape_1/strided_slice/stack_1
%model/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/reshape_1/strided_slice/stack_2Т
model/reshape_1/strided_sliceStridedSlicemodel/reshape_1/Shape:output:0,model/reshape_1/strided_slice/stack:output:0.model/reshape_1/strided_slice/stack_1:output:0.model/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/reshape_1/strided_slice
model/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
model/reshape_1/Reshape/shape/1
model/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
model/reshape_1/Reshape/shape/2
model/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2!
model/reshape_1/Reshape/shape/3
model/reshape_1/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2!
model/reshape_1/Reshape/shape/4Ф
model/reshape_1/Reshape/shapePack&model/reshape_1/strided_slice:output:0(model/reshape_1/Reshape/shape/1:output:0(model/reshape_1/Reshape/shape/2:output:0(model/reshape_1/Reshape/shape/3:output:0(model/reshape_1/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
model/reshape_1/Reshape/shapeЧ
model/reshape_1/ReshapeReshape"model/dense/Softplus:activations:0&model/reshape_1/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/reshape_1/ReshapeБ
"model/tf.reshape_524/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2$
"model/tf.reshape_524/Reshape/shapeр
model/tf.reshape_524/ReshapeReshape model/reshape_1/Reshape:output:0+model/tf.reshape_524/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model/tf.reshape_524/Reshape­
 model/tf.tile_262/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2"
 model/tf.tile_262/Tile/multiplesд
model/tf.tile_262/TileTile%model/tf.reshape_524/Reshape:output:0)model/tf.tile_262/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model/tf.tile_262/TileЅ
"model/tf.reshape_525/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2$
"model/tf.reshape_525/Reshape/shapeг
model/tf.reshape_525/ReshapeReshapemodel/tf.tile_262/Tile:output:0+model/tf.reshape_525/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/tf.reshape_525/Reshape
model/tf.concat_431/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/tf.concat_431/concat/axis
model/tf.concat_431/concatConcatV2%model/tf.reshape_525/Reshape:output:0%model/conv3d_3/Softplus:activations:0(model/tf.concat_431/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/tf.concat_431/concatЦ
$model/conv3d_4/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02&
$model/conv3d_4/Conv3D/ReadVariableOp
model/conv3d_4/Conv3DConv3D#model/tf.concat_431/concat:output:0,model/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_4/Conv3DЙ
%model/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv3d_4/BiasAdd/ReadVariableOpп
model/conv3d_4/BiasAddBiasAddmodel/conv3d_4/Conv3D:output:0-model/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model/conv3d_4/BiasAdd
model/conv3d_4/SoftplusSoftplusmodel/conv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/conv3d_4/SoftplusБ
"model/tf.reshape_526/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2$
"model/tf.reshape_526/Reshape/shapeх
model/tf.reshape_526/ReshapeReshape%model/conv3d_4/Softplus:activations:0+model/tf.reshape_526/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model/tf.reshape_526/Reshape­
 model/tf.tile_263/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2"
 model/tf.tile_263/Tile/multiplesд
model/tf.tile_263/TileTile%model/tf.reshape_526/Reshape:output:0)model/tf.tile_263/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model/tf.tile_263/TileЅ
"model/tf.reshape_527/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2$
"model/tf.reshape_527/Reshape/shapeг
model/tf.reshape_527/ReshapeReshapemodel/tf.tile_263/Tile:output:0+model/tf.reshape_527/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/tf.reshape_527/Reshape
model/tf.concat_432/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/tf.concat_432/concat/axis
model/tf.concat_432/concatConcatV2%model/tf.reshape_527/Reshape:output:0%model/conv3d_2/Softplus:activations:0(model/tf.concat_432/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/tf.concat_432/concatЦ
$model/conv3d_5/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02&
$model/conv3d_5/Conv3D/ReadVariableOp
model/conv3d_5/Conv3DConv3D#model/tf.concat_432/concat:output:0,model/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_5/Conv3DЙ
%model/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv3d_5/BiasAdd/ReadVariableOpп
model/conv3d_5/BiasAddBiasAddmodel/conv3d_5/Conv3D:output:0-model/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model/conv3d_5/BiasAdd
model/conv3d_5/SoftplusSoftplusmodel/conv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model/conv3d_5/SoftplusБ
"model/tf.reshape_528/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2$
"model/tf.reshape_528/Reshape/shapeх
model/tf.reshape_528/ReshapeReshape%model/conv3d_5/Softplus:activations:0+model/tf.reshape_528/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model/tf.reshape_528/Reshape­
 model/tf.tile_264/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2"
 model/tf.tile_264/Tile/multiplesд
model/tf.tile_264/TileTile%model/tf.reshape_528/Reshape:output:0)model/tf.tile_264/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model/tf.tile_264/TileЅ
"model/tf.reshape_529/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2$
"model/tf.reshape_529/Reshape/shapeг
model/tf.reshape_529/ReshapeReshapemodel/tf.tile_264/Tile:output:0+model/tf.reshape_529/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model/tf.reshape_529/Reshape
model/tf.concat_433/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/tf.concat_433/concat/axis
model/tf.concat_433/concatConcatV2%model/tf.reshape_529/Reshape:output:0%model/conv3d_1/Softplus:activations:0(model/tf.concat_433/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model/tf.concat_433/concatЦ
$model/conv3d_6/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_6_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02&
$model/conv3d_6/Conv3D/ReadVariableOp
model/conv3d_6/Conv3DConv3D#model/tf.concat_433/concat:output:0,model/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_6/Conv3DЙ
%model/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv3d_6/BiasAdd/ReadVariableOpп
model/conv3d_6/BiasAddBiasAddmodel/conv3d_6/Conv3D:output:0-model/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model/conv3d_6/BiasAdd
model/conv3d_6/SoftplusSoftplusmodel/conv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model/conv3d_6/SoftplusБ
"model/tf.reshape_530/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2$
"model/tf.reshape_530/Reshape/shapeх
model/tf.reshape_530/ReshapeReshape%model/conv3d_6/Softplus:activations:0+model/tf.reshape_530/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
model/tf.reshape_530/Reshape­
 model/tf.tile_265/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2"
 model/tf.tile_265/Tile/multiplesд
model/tf.tile_265/TileTile%model/tf.reshape_530/Reshape:output:0)model/tf.tile_265/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
model/tf.tile_265/TileЅ
"model/tf.reshape_531/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2$
"model/tf.reshape_531/Reshape/shapeг
model/tf.reshape_531/ReshapeReshapemodel/tf.tile_265/Tile:output:0+model/tf.reshape_531/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model/tf.reshape_531/Reshape
model/tf.concat_434/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/tf.concat_434/concat/axis
model/tf.concat_434/concatConcatV2%model/tf.reshape_531/Reshape:output:0#model/conv3d/Softplus:activations:0(model/tf.concat_434/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
model/tf.concat_434/concatЦ
$model/conv3d_7/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02&
$model/conv3d_7/Conv3D/ReadVariableOp
model/conv3d_7/Conv3DConv3D#model/tf.concat_434/concat:output:0,model/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_7/Conv3DЙ
%model/conv3d_7/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%model/conv3d_7/BiasAdd/ReadVariableOpп
model/conv3d_7/BiasAddBiasAddmodel/conv3d_7/Conv3D:output:0-model/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model/conv3d_7/BiasAdd
model/conv3d_7/SoftplusSoftplusmodel/conv3d_7/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model/conv3d_7/SoftplusЦ
$model/conv3d_8/Conv3D/ReadVariableOpReadVariableOp-model_conv3d_8_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02&
$model/conv3d_8/Conv3D/ReadVariableOp
model/conv3d_8/Conv3DConv3D%model/conv3d_7/Softplus:activations:0,model/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
model/conv3d_8/Conv3DЙ
%model/conv3d_8/BiasAdd/ReadVariableOpReadVariableOp.model_conv3d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv3d_8/BiasAdd/ReadVariableOpп
model/conv3d_8/BiasAddBiasAddmodel/conv3d_8/Conv3D:output:0-model/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
model/conv3d_8/BiasAdd
IdentityIdentitymodel/conv3d_8/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityк
NoOpNoOp$^model/conv3d/BiasAdd/ReadVariableOp#^model/conv3d/Conv3D/ReadVariableOp&^model/conv3d_1/BiasAdd/ReadVariableOp%^model/conv3d_1/Conv3D/ReadVariableOp&^model/conv3d_2/BiasAdd/ReadVariableOp%^model/conv3d_2/Conv3D/ReadVariableOp&^model/conv3d_3/BiasAdd/ReadVariableOp%^model/conv3d_3/Conv3D/ReadVariableOp&^model/conv3d_4/BiasAdd/ReadVariableOp%^model/conv3d_4/Conv3D/ReadVariableOp&^model/conv3d_5/BiasAdd/ReadVariableOp%^model/conv3d_5/Conv3D/ReadVariableOp&^model/conv3d_6/BiasAdd/ReadVariableOp%^model/conv3d_6/Conv3D/ReadVariableOp&^model/conv3d_7/BiasAdd/ReadVariableOp%^model/conv3d_7/Conv3D/ReadVariableOp&^model/conv3d_8/BiasAdd/ReadVariableOp%^model/conv3d_8/Conv3D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2J
#model/conv3d/BiasAdd/ReadVariableOp#model/conv3d/BiasAdd/ReadVariableOp2H
"model/conv3d/Conv3D/ReadVariableOp"model/conv3d/Conv3D/ReadVariableOp2N
%model/conv3d_1/BiasAdd/ReadVariableOp%model/conv3d_1/BiasAdd/ReadVariableOp2L
$model/conv3d_1/Conv3D/ReadVariableOp$model/conv3d_1/Conv3D/ReadVariableOp2N
%model/conv3d_2/BiasAdd/ReadVariableOp%model/conv3d_2/BiasAdd/ReadVariableOp2L
$model/conv3d_2/Conv3D/ReadVariableOp$model/conv3d_2/Conv3D/ReadVariableOp2N
%model/conv3d_3/BiasAdd/ReadVariableOp%model/conv3d_3/BiasAdd/ReadVariableOp2L
$model/conv3d_3/Conv3D/ReadVariableOp$model/conv3d_3/Conv3D/ReadVariableOp2N
%model/conv3d_4/BiasAdd/ReadVariableOp%model/conv3d_4/BiasAdd/ReadVariableOp2L
$model/conv3d_4/Conv3D/ReadVariableOp$model/conv3d_4/Conv3D/ReadVariableOp2N
%model/conv3d_5/BiasAdd/ReadVariableOp%model/conv3d_5/BiasAdd/ReadVariableOp2L
$model/conv3d_5/Conv3D/ReadVariableOp$model/conv3d_5/Conv3D/ReadVariableOp2N
%model/conv3d_6/BiasAdd/ReadVariableOp%model/conv3d_6/BiasAdd/ReadVariableOp2L
$model/conv3d_6/Conv3D/ReadVariableOp$model/conv3d_6/Conv3D/ReadVariableOp2N
%model/conv3d_7/BiasAdd/ReadVariableOp%model/conv3d_7/BiasAdd/ReadVariableOp2L
$model/conv3d_7/Conv3D/ReadVariableOp$model/conv3d_7/Conv3D/ReadVariableOp2N
%model/conv3d_8/BiasAdd/ReadVariableOp%model/conv3d_8/BiasAdd/ReadVariableOp2L
$model/conv3d_8/Conv3D/ReadVariableOp$model/conv3d_8/Conv3D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
ж
У	
B__inference_model_layer_call_and_return_conditional_losses_3228133	
input,
conv3d_3228044: 
conv3d_3228046: .
conv3d_1_3228050: 
conv3d_1_3228052:.
conv3d_2_3228056:
conv3d_2_3228058:.
conv3d_3_3228062:
conv3d_3_3228064:
dense_3228069:@@
dense_3228071:@.
conv3d_4_3228083:
conv3d_4_3228085:.
conv3d_5_3228096:
conv3d_5_3228098:.
conv3d_6_3228109:
conv3d_6_3228111:.
conv3d_7_3228122:0 
conv3d_7_3228124: .
conv3d_8_3228127: 
conv3d_8_3228129:
identityЂconv3d/StatefulPartitionedCallЂ conv3d_1/StatefulPartitionedCallЂ conv3d_2/StatefulPartitionedCallЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂ conv3d_7/StatefulPartitionedCallЂ conv3d_8/StatefulPartitionedCallЂdense/StatefulPartitionedCallЕ
0tf.__operators__.getitem_336/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_336/strided_slice/stackЙ
2tf.__operators__.getitem_336/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_336/strided_slice/stack_1Й
2tf.__operators__.getitem_336/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_336/strided_slice/stack_2
*tf.__operators__.getitem_336/strided_sliceStridedSliceinput9tf.__operators__.getitem_336/strided_slice/stack:output:0;tf.__operators__.getitem_336/strided_slice/stack_1:output:0;tf.__operators__.getitem_336/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_336/strided_sliceБ
 range_conversion/PartitionedCallPartitionedCall3tf.__operators__.getitem_336/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8 *V
fQRO
M__inference_range_conversion_layer_call_and_return_conditional_losses_32272272"
 range_conversion/PartitionedCallЕ
0tf.__operators__.getitem_337/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_337/strided_slice/stackЙ
2tf.__operators__.getitem_337/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_337/strided_slice/stack_1Й
2tf.__operators__.getitem_337/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_337/strided_slice/stack_2
*tf.__operators__.getitem_337/strided_sliceStridedSliceinput9tf.__operators__.getitem_337/strided_slice/stack:output:0;tf.__operators__.getitem_337/strided_slice/stack_1:output:0;tf.__operators__.getitem_337/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_337/strided_slicex
tf.concat_430/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_430/concat/axis
tf.concat_430/concatConcatV2)range_conversion/PartitionedCall:output:03tf.__operators__.getitem_337/strided_slice:output:0"tf.concat_430/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_430/concatЛ
conv3d/StatefulPartitionedCallStatefulPartitionedCalltf.concat_430/concat:output:0conv3d_3228044conv3d_3228046*
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
GPU2 *0,1,2,3J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_32272462 
conv3d/StatefulPartitionedCallЈ
!average_pooling3d/PartitionedCallPartitionedCall'conv3d/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *W
fRRP
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_32272602#
!average_pooling3d/PartitionedCallв
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling3d/PartitionedCall:output:0conv3d_1_3228050conv3d_1_3228052*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_32272732"
 conv3d_1/StatefulPartitionedCallА
#average_pooling3d_1/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_32272872%
#average_pooling3d_1/PartitionedCallд
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_1/PartitionedCall:output:0conv3d_2_3228056conv3d_2_3228058*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_32273002"
 conv3d_2/StatefulPartitionedCallА
#average_pooling3d_2/PartitionedCallPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_32273142%
#average_pooling3d_2/PartitionedCallд
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_2/PartitionedCall:output:0conv3d_3_3228062conv3d_3_3228064*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_32273272"
 conv3d_3/StatefulPartitionedCallА
#average_pooling3d_3/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_32273412%
#average_pooling3d_3/PartitionedCall
reshape/PartitionedCallPartitionedCall,average_pooling3d_3/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_32273552
reshape/PartitionedCall­
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0dense_3228069dense_3228071*
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
GPU2 *0,1,2,3J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_32273682
dense/StatefulPartitionedCall
reshape_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_reshape_1_layer_call_and_return_conditional_losses_32273892
reshape_1/PartitionedCallЅ
tf.reshape_524/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_524/Reshape/shapeа
tf.reshape_524/ReshapeReshape"reshape_1/PartitionedCall:output:0%tf.reshape_524/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_524/ReshapeЁ
tf.tile_262/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_262/Tile/multiplesМ
tf.tile_262/TileTiletf.reshape_524/Reshape:output:0#tf.tile_262/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_262/Tile
tf.reshape_525/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_525/Reshape/shapeЛ
tf.reshape_525/ReshapeReshapetf.tile_262/Tile:output:0%tf.reshape_525/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_525/Reshapex
tf.concat_431/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_431/concat/axisя
tf.concat_431/concatConcatV2tf.reshape_525/Reshape:output:0)conv3d_3/StatefulPartitionedCall:output:0"tf.concat_431/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_431/concatХ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCalltf.concat_431/concat:output:0conv3d_4_3228083conv3d_4_3228085*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_32274102"
 conv3d_4/StatefulPartitionedCallЅ
tf.reshape_526/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_526/Reshape/shapeз
tf.reshape_526/ReshapeReshape)conv3d_4/StatefulPartitionedCall:output:0%tf.reshape_526/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_526/ReshapeЁ
tf.tile_263/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_263/Tile/multiplesМ
tf.tile_263/TileTiletf.reshape_526/Reshape:output:0#tf.tile_263/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_263/Tile
tf.reshape_527/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_527/Reshape/shapeЛ
tf.reshape_527/ReshapeReshapetf.tile_263/Tile:output:0%tf.reshape_527/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_527/Reshapex
tf.concat_432/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_432/concat/axisя
tf.concat_432/concatConcatV2tf.reshape_527/Reshape:output:0)conv3d_2/StatefulPartitionedCall:output:0"tf.concat_432/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_432/concatХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCalltf.concat_432/concat:output:0conv3d_5_3228096conv3d_5_3228098*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_32274352"
 conv3d_5/StatefulPartitionedCallЅ
tf.reshape_528/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_528/Reshape/shapeз
tf.reshape_528/ReshapeReshape)conv3d_5/StatefulPartitionedCall:output:0%tf.reshape_528/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_528/ReshapeЁ
tf.tile_264/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_264/Tile/multiplesМ
tf.tile_264/TileTiletf.reshape_528/Reshape:output:0#tf.tile_264/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_264/Tile
tf.reshape_529/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_529/Reshape/shapeЛ
tf.reshape_529/ReshapeReshapetf.tile_264/Tile:output:0%tf.reshape_529/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_529/Reshapex
tf.concat_433/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_433/concat/axisя
tf.concat_433/concatConcatV2tf.reshape_529/Reshape:output:0)conv3d_1/StatefulPartitionedCall:output:0"tf.concat_433/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_433/concatХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCalltf.concat_433/concat:output:0conv3d_6_3228109conv3d_6_3228111*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_32274602"
 conv3d_6/StatefulPartitionedCallЅ
tf.reshape_530/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_530/Reshape/shapeз
tf.reshape_530/ReshapeReshape)conv3d_6/StatefulPartitionedCall:output:0%tf.reshape_530/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_530/ReshapeЁ
tf.tile_265/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_265/Tile/multiplesМ
tf.tile_265/TileTiletf.reshape_530/Reshape:output:0#tf.tile_265/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_265/Tile
tf.reshape_531/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_531/Reshape/shapeЛ
tf.reshape_531/ReshapeReshapetf.tile_265/Tile:output:0%tf.reshape_531/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_531/Reshapex
tf.concat_434/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_434/concat/axisэ
tf.concat_434/concatConcatV2tf.reshape_531/Reshape:output:0'conv3d/StatefulPartitionedCall:output:0"tf.concat_434/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_434/concatХ
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCalltf.concat_434/concat:output:0conv3d_7_3228122conv3d_7_3228124*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_32274852"
 conv3d_7/StatefulPartitionedCallб
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0conv3d_8_3228127conv3d_8_3228129*
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
GPU2 *0,1,2,3J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_32275012"
 conv3d_8/StatefulPartitionedCall
IdentityIdentity)conv3d_8/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityЇ
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
	
j
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3227260

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

b
F__inference_reshape_1_layer_call_and_return_conditional_losses_3228860

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
	
l
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3227287

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
т

l
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3228746

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

Q
5__inference_average_pooling3d_1_layer_call_fn_3228689

inputs
identityх
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
GPU2 *0,1,2,3J 8 *Y
fTRR
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_32272872
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
Ы

E__inference_conv3d_7_layer_call_and_return_conditional_losses_3227485

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
Щ

C__inference_conv3d_layer_call_and_return_conditional_losses_3228631

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

NoOp*П
serving_defaultЋ
C
input:
serving_default_input:0џџџџџџџџџ@@H
conv3d_8<
StatefulPartitionedCall:0џџџџџџџџџ@@tensorflow/serving/predict:ХЃ
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
-:+  2conv3d/kernel
:  2conv3d/bias
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
/:-  2conv3d_1/kernel
: 2conv3d_1/bias
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
/:- 2conv3d_2/kernel
: 2conv3d_2/bias
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
/:- 2conv3d_3/kernel
: 2conv3d_3/bias
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
 :@@ 2dense/kernel
:@ 2
dense/bias
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
/:- 2conv3d_4/kernel
: 2conv3d_4/bias
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
/:- 2conv3d_5/kernel
: 2conv3d_5/bias
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
/:- 2conv3d_6/kernel
: 2conv3d_6/bias
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
/:-0  2conv3d_7/kernel
:  2conv3d_7/bias
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
/:-  2conv3d_8/kernel
: 2conv3d_8/bias
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
ъ2ч
'__inference_model_layer_call_fn_3227551
'__inference_model_layer_call_fn_3228225
'__inference_model_layer_call_fn_3228270
'__inference_model_layer_call_fn_3227927Р
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
"__inference__wrapped_model_3227084input"
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
ж2г
B__inference_model_layer_call_and_return_conditional_losses_3228432
B__inference_model_layer_call_and_return_conditional_losses_3228594
B__inference_model_layer_call_and_return_conditional_losses_3228030
B__inference_model_layer_call_and_return_conditional_losses_3228133Р
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
р2н
2__inference_range_conversion_layer_call_fn_3228599І
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
ћ2ј
M__inference_range_conversion_layer_call_and_return_conditional_losses_3228611І
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
в2Я
(__inference_conv3d_layer_call_fn_3228620Ђ
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
э2ъ
C__inference_conv3d_layer_call_and_return_conditional_losses_3228631Ђ
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
2
3__inference_average_pooling3d_layer_call_fn_3228636
3__inference_average_pooling3d_layer_call_fn_3228641Ђ
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
Ш2Х
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3228650
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3228659Ђ
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
*__inference_conv3d_1_layer_call_fn_3228668Ђ
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
E__inference_conv3d_1_layer_call_and_return_conditional_losses_3228679Ђ
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
2
5__inference_average_pooling3d_1_layer_call_fn_3228684
5__inference_average_pooling3d_1_layer_call_fn_3228689Ђ
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
Ь2Щ
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3228698
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3228707Ђ
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
*__inference_conv3d_2_layer_call_fn_3228716Ђ
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
E__inference_conv3d_2_layer_call_and_return_conditional_losses_3228727Ђ
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
2
5__inference_average_pooling3d_2_layer_call_fn_3228732
5__inference_average_pooling3d_2_layer_call_fn_3228737Ђ
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
Ь2Щ
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3228746
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3228755Ђ
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
*__inference_conv3d_3_layer_call_fn_3228764Ђ
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
E__inference_conv3d_3_layer_call_and_return_conditional_losses_3228775Ђ
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
2
5__inference_average_pooling3d_3_layer_call_fn_3228780
5__inference_average_pooling3d_3_layer_call_fn_3228785Ђ
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
Ь2Щ
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3228794
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3228803Ђ
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
г2а
)__inference_reshape_layer_call_fn_3228808Ђ
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
ю2ы
D__inference_reshape_layer_call_and_return_conditional_losses_3228820Ђ
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
б2Ю
'__inference_dense_layer_call_fn_3228829Ђ
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
ь2щ
B__inference_dense_layer_call_and_return_conditional_losses_3228840Ђ
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
е2в
+__inference_reshape_1_layer_call_fn_3228845Ђ
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
№2э
F__inference_reshape_1_layer_call_and_return_conditional_losses_3228860Ђ
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
*__inference_conv3d_4_layer_call_fn_3228869Ђ
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
E__inference_conv3d_4_layer_call_and_return_conditional_losses_3228880Ђ
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
*__inference_conv3d_5_layer_call_fn_3228889Ђ
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
E__inference_conv3d_5_layer_call_and_return_conditional_losses_3228900Ђ
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
*__inference_conv3d_6_layer_call_fn_3228909Ђ
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
E__inference_conv3d_6_layer_call_and_return_conditional_losses_3228920Ђ
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
*__inference_conv3d_7_layer_call_fn_3228929Ђ
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
E__inference_conv3d_7_layer_call_and_return_conditional_losses_3228940Ђ
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
*__inference_conv3d_8_layer_call_fn_3228949Ђ
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
E__inference_conv3d_8_layer_call_and_return_conditional_losses_3228959Ђ
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
%__inference_signature_wrapper_3228180input"
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
 Р
"__inference__wrapped_model_322708423<=FGPQ^_lmvw:Ђ7
0Ђ-
+(
inputџџџџџџџџџ@@
Њ "?Њ<
:
conv3d_8.+
conv3d_8џџџџџџџџџ@@
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3228698И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
P__inference_average_pooling3d_1_layer_call_and_return_conditional_losses_3228707p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ
 х
5__inference_average_pooling3d_1_layer_call_fn_3228684Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
5__inference_average_pooling3d_1_layer_call_fn_3228689c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3228746И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
P__inference_average_pooling3d_2_layer_call_and_return_conditional_losses_3228755p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 х
5__inference_average_pooling3d_2_layer_call_fn_3228732Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
5__inference_average_pooling3d_2_layer_call_fn_3228737c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџ
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3228794И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
P__inference_average_pooling3d_3_layer_call_and_return_conditional_losses_3228803p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 х
5__inference_average_pooling3d_3_layer_call_fn_3228780Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
5__inference_average_pooling3d_3_layer_call_fn_3228785c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџ
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3228650И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Т
N__inference_average_pooling3d_layer_call_and_return_conditional_losses_3228659p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ   
 у
3__inference_average_pooling3d_layer_call_fn_3228636Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
3__inference_average_pooling3d_layer_call_fn_3228641c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ   Н
E__inference_conv3d_1_layer_call_and_return_conditional_losses_3228679t<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
*__inference_conv3d_1_layer_call_fn_3228668g<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "$!џџџџџџџџџ  Н
E__inference_conv3d_2_layer_call_and_return_conditional_losses_3228727tFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
*__inference_conv3d_2_layer_call_fn_3228716gFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџН
E__inference_conv3d_3_layer_call_and_return_conditional_losses_3228775tPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
*__inference_conv3d_3_layer_call_fn_3228764gPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџН
E__inference_conv3d_4_layer_call_and_return_conditional_losses_3228880tlm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
*__inference_conv3d_4_layer_call_fn_3228869glm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџН
E__inference_conv3d_5_layer_call_and_return_conditional_losses_3228900tvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
*__inference_conv3d_5_layer_call_fn_3228889gvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
E__inference_conv3d_6_layer_call_and_return_conditional_losses_3228920v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
*__inference_conv3d_6_layer_call_fn_3228909i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ  П
E__inference_conv3d_7_layer_call_and_return_conditional_losses_3228940v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
*__inference_conv3d_7_layer_call_fn_3228929i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "$!џџџџџџџџџ @@П
E__inference_conv3d_8_layer_call_and_return_conditional_losses_3228959v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 
*__inference_conv3d_8_layer_call_fn_3228949i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ@@Л
C__inference_conv3d_layer_call_and_return_conditional_losses_3228631t23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
(__inference_conv3d_layer_call_fn_3228620g23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "$!џџџџџџџџџ @@Ђ
B__inference_dense_layer_call_and_return_conditional_losses_3228840\^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 z
'__inference_dense_layer_call_fn_3228829O^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@к
B__inference_model_layer_call_and_return_conditional_losses_322803023<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 к
B__inference_model_layer_call_and_return_conditional_losses_322813323<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 л
B__inference_model_layer_call_and_return_conditional_losses_322843223<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 л
B__inference_model_layer_call_and_return_conditional_losses_322859423<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 В
'__inference_model_layer_call_fn_322755123<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@В
'__inference_model_layer_call_fn_322792723<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@Г
'__inference_model_layer_call_fn_322822523<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@Г
'__inference_model_layer_call_fn_322827023<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@Х
M__inference_range_conversion_layer_call_and_return_conditional_losses_3228611t?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 
2__inference_range_conversion_layer_call_fn_3228599g?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "$!џџџџџџџџџ@@Ў
F__inference_reshape_1_layer_call_and_return_conditional_losses_3228860d/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "1Ђ.
'$
0џџџџџџџџџ
 
+__inference_reshape_1_layer_call_fn_3228845W/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "$!џџџџџџџџџЌ
D__inference_reshape_layer_call_and_return_conditional_losses_3228820d;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 
)__inference_reshape_layer_call_fn_3228808W;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@Ь
%__inference_signature_wrapper_3228180Ђ23<=FGPQ^_lmvwCЂ@
Ђ 
9Њ6
4
input+(
inputџџџџџџџџџ@@"?Њ<
:
conv3d_8.+
conv3d_8џџџџџџџџџ@@