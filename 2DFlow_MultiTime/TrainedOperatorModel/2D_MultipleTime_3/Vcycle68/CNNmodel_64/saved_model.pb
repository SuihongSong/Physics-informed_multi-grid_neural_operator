Яр
Хы
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
┴
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
╓
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
╛
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
Ў
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
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258йЮ
К
conv3d_386/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_386/kernel
Г
%conv3d_386/kernel/Read/ReadVariableOpReadVariableOpconv3d_386/kernel**
_output_shapes
: *
dtype0
v
conv3d_386/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_386/bias
o
#conv3d_386/bias/Read/ReadVariableOpReadVariableOpconv3d_386/bias*
_output_shapes
: *
dtype0
К
conv3d_387/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_387/kernel
Г
%conv3d_387/kernel/Read/ReadVariableOpReadVariableOpconv3d_387/kernel**
_output_shapes
: *
dtype0
v
conv3d_387/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_387/bias
o
#conv3d_387/bias/Read/ReadVariableOpReadVariableOpconv3d_387/bias*
_output_shapes
:*
dtype0
К
conv3d_388/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_388/kernel
Г
%conv3d_388/kernel/Read/ReadVariableOpReadVariableOpconv3d_388/kernel**
_output_shapes
:*
dtype0
v
conv3d_388/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_388/bias
o
#conv3d_388/bias/Read/ReadVariableOpReadVariableOpconv3d_388/bias*
_output_shapes
:*
dtype0
К
conv3d_389/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_389/kernel
Г
%conv3d_389/kernel/Read/ReadVariableOpReadVariableOpconv3d_389/kernel**
_output_shapes
:*
dtype0
v
conv3d_389/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_389/bias
o
#conv3d_389/bias/Read/ReadVariableOpReadVariableOpconv3d_389/bias*
_output_shapes
:*
dtype0
z
dense_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_74/kernel
s
#dense_74/kernel/Read/ReadVariableOpReadVariableOpdense_74/kernel*
_output_shapes

:@@*
dtype0
r
dense_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_74/bias
k
!dense_74/bias/Read/ReadVariableOpReadVariableOpdense_74/bias*
_output_shapes
:@*
dtype0
К
conv3d_390/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_390/kernel
Г
%conv3d_390/kernel/Read/ReadVariableOpReadVariableOpconv3d_390/kernel**
_output_shapes
:*
dtype0
v
conv3d_390/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_390/bias
o
#conv3d_390/bias/Read/ReadVariableOpReadVariableOpconv3d_390/bias*
_output_shapes
:*
dtype0
К
conv3d_391/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_391/kernel
Г
%conv3d_391/kernel/Read/ReadVariableOpReadVariableOpconv3d_391/kernel**
_output_shapes
:*
dtype0
v
conv3d_391/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_391/bias
o
#conv3d_391/bias/Read/ReadVariableOpReadVariableOpconv3d_391/bias*
_output_shapes
:*
dtype0
К
conv3d_392/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_392/kernel
Г
%conv3d_392/kernel/Read/ReadVariableOpReadVariableOpconv3d_392/kernel**
_output_shapes
:*
dtype0
v
conv3d_392/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_392/bias
o
#conv3d_392/bias/Read/ReadVariableOpReadVariableOpconv3d_392/bias*
_output_shapes
:*
dtype0
К
conv3d_393/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_393/kernel
Г
%conv3d_393/kernel/Read/ReadVariableOpReadVariableOpconv3d_393/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_393/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_393/bias
o
#conv3d_393/bias/Read/ReadVariableOpReadVariableOpconv3d_393/bias*
_output_shapes
: *
dtype0
К
conv3d_394/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_394/kernel
Г
%conv3d_394/kernel/Read/ReadVariableOpReadVariableOpconv3d_394/kernel**
_output_shapes
: *
dtype0
v
conv3d_394/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_394/bias
o
#conv3d_394/bias/Read/ReadVariableOpReadVariableOpconv3d_394/bias*
_output_shapes
:*
dtype0

NoOpNoOp
╤H
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*МH
valueВHB G B°G
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
Аkernel
	Бbias
В	variables
Гregularization_losses
Дtrainable_variables
Е	keras_api

Ж	keras_api

З	keras_api

И	keras_api

Й	keras_api
n
Кkernel
	Лbias
М	variables
Нregularization_losses
Оtrainable_variables
П	keras_api
n
Рkernel
	Сbias
Т	variables
Уregularization_losses
Фtrainable_variables
Х	keras_api
 
Ь
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
А14
Б15
К16
Л17
Р18
С19
Ь
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
А14
Б15
К16
Л17
Р18
С19
▓
Цnon_trainable_variables
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
&regularization_losses
Ъlayers
'	variables
(trainable_variables
 
 
 
 
 
▓
Ыnon_trainable_variables
,	variables
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
-regularization_losses
Яlayers
.trainable_variables
 
 
][
VARIABLE_VALUEconv3d_386/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_386/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
▓
аnon_trainable_variables
4	variables
бmetrics
 вlayer_regularization_losses
гlayer_metrics
5regularization_losses
дlayers
6trainable_variables
 
 
 
▓
еnon_trainable_variables
8	variables
жmetrics
 зlayer_regularization_losses
иlayer_metrics
9regularization_losses
йlayers
:trainable_variables
][
VARIABLE_VALUEconv3d_387/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_387/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
▓
кnon_trainable_variables
>	variables
лmetrics
 мlayer_regularization_losses
нlayer_metrics
?regularization_losses
оlayers
@trainable_variables
 
 
 
▓
пnon_trainable_variables
B	variables
░metrics
 ▒layer_regularization_losses
▓layer_metrics
Cregularization_losses
│layers
Dtrainable_variables
][
VARIABLE_VALUEconv3d_388/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_388/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1
 

F0
G1
▓
┤non_trainable_variables
H	variables
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Iregularization_losses
╕layers
Jtrainable_variables
 
 
 
▓
╣non_trainable_variables
L	variables
║metrics
 ╗layer_regularization_losses
╝layer_metrics
Mregularization_losses
╜layers
Ntrainable_variables
][
VARIABLE_VALUEconv3d_389/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_389/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1
 

P0
Q1
▓
╛non_trainable_variables
R	variables
┐metrics
 └layer_regularization_losses
┴layer_metrics
Sregularization_losses
┬layers
Ttrainable_variables
 
 
 
▓
├non_trainable_variables
V	variables
─metrics
 ┼layer_regularization_losses
╞layer_metrics
Wregularization_losses
╟layers
Xtrainable_variables
 
 
 
▓
╚non_trainable_variables
Z	variables
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
[regularization_losses
╠layers
\trainable_variables
[Y
VARIABLE_VALUEdense_74/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_74/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

^0
_1
 

^0
_1
▓
═non_trainable_variables
`	variables
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
aregularization_losses
╤layers
btrainable_variables
 
 
 
▓
╥non_trainable_variables
d	variables
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
eregularization_losses
╓layers
ftrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_390/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_390/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

l0
m1
 

l0
m1
▓
╫non_trainable_variables
n	variables
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
oregularization_losses
█layers
ptrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_391/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_391/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

v0
w1
 

v0
w1
▓
▄non_trainable_variables
x	variables
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
yregularization_losses
рlayers
ztrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_392/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_392/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

А0
Б1
 

А0
Б1
╡
сnon_trainable_variables
В	variables
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Гregularization_losses
хlayers
Дtrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_393/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_393/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

К0
Л1
 

К0
Л1
╡
цnon_trainable_variables
М	variables
чmetrics
 шlayer_regularization_losses
щlayer_metrics
Нregularization_losses
ъlayers
Оtrainable_variables
][
VARIABLE_VALUEconv3d_394/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_394/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

Р0
С1
 

Р0
С1
╡
ыnon_trainable_variables
Т	variables
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
Уregularization_losses
яlayers
Фtrainable_variables
 
 
 
 
Ю
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
Р
serving_default_inputPlaceholder*3
_output_shapes!
:         @@*
dtype0*(
shape:         @@
╒
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_386/kernelconv3d_386/biasconv3d_387/kernelconv3d_387/biasconv3d_388/kernelconv3d_388/biasconv3d_389/kernelconv3d_389/biasdense_74/kerneldense_74/biasconv3d_390/kernelconv3d_390/biasconv3d_391/kernelconv3d_391/biasconv3d_392/kernelconv3d_392/biasconv3d_393/kernelconv3d_393/biasconv3d_394/kernelconv3d_394/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В */
f*R(
&__inference_signature_wrapper_20559636
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
░
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_386/kernel/Read/ReadVariableOp#conv3d_386/bias/Read/ReadVariableOp%conv3d_387/kernel/Read/ReadVariableOp#conv3d_387/bias/Read/ReadVariableOp%conv3d_388/kernel/Read/ReadVariableOp#conv3d_388/bias/Read/ReadVariableOp%conv3d_389/kernel/Read/ReadVariableOp#conv3d_389/bias/Read/ReadVariableOp#dense_74/kernel/Read/ReadVariableOp!dense_74/bias/Read/ReadVariableOp%conv3d_390/kernel/Read/ReadVariableOp#conv3d_390/bias/Read/ReadVariableOp%conv3d_391/kernel/Read/ReadVariableOp#conv3d_391/bias/Read/ReadVariableOp%conv3d_392/kernel/Read/ReadVariableOp#conv3d_392/bias/Read/ReadVariableOp%conv3d_393/kernel/Read/ReadVariableOp#conv3d_393/bias/Read/ReadVariableOp%conv3d_394/kernel/Read/ReadVariableOp#conv3d_394/bias/Read/ReadVariableOpConst*!
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
GPU2 *0,1,2,3J 8В **
f%R#
!__inference__traced_save_20560498
Ы
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_386/kernelconv3d_386/biasconv3d_387/kernelconv3d_387/biasconv3d_388/kernelconv3d_388/biasconv3d_389/kernelconv3d_389/biasdense_74/kerneldense_74/biasconv3d_390/kernelconv3d_390/biasconv3d_391/kernelconv3d_391/biasconv3d_392/kernelconv3d_392/biasconv3d_393/kernelconv3d_393/biasconv3d_394/kernelconv3d_394/bias* 
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
GPU2 *0,1,2,3J 8В *-
f(R&
$__inference__traced_restore_20560568БЩ
╜ё
╡
F__inference_model_74_layer_call_and_return_conditional_losses_20560050

inputsG
)conv3d_386_conv3d_readvariableop_resource: 8
*conv3d_386_biasadd_readvariableop_resource: G
)conv3d_387_conv3d_readvariableop_resource: 8
*conv3d_387_biasadd_readvariableop_resource:G
)conv3d_388_conv3d_readvariableop_resource:8
*conv3d_388_biasadd_readvariableop_resource:G
)conv3d_389_conv3d_readvariableop_resource:8
*conv3d_389_biasadd_readvariableop_resource:9
'dense_74_matmul_readvariableop_resource:@@6
(dense_74_biasadd_readvariableop_resource:@G
)conv3d_390_conv3d_readvariableop_resource:8
*conv3d_390_biasadd_readvariableop_resource:G
)conv3d_391_conv3d_readvariableop_resource:8
*conv3d_391_biasadd_readvariableop_resource:G
)conv3d_392_conv3d_readvariableop_resource:8
*conv3d_392_biasadd_readvariableop_resource:G
)conv3d_393_conv3d_readvariableop_resource:0 8
*conv3d_393_biasadd_readvariableop_resource: G
)conv3d_394_conv3d_readvariableop_resource: 8
*conv3d_394_biasadd_readvariableop_resource:
identityИв!conv3d_386/BiasAdd/ReadVariableOpв conv3d_386/Conv3D/ReadVariableOpв!conv3d_387/BiasAdd/ReadVariableOpв conv3d_387/Conv3D/ReadVariableOpв!conv3d_388/BiasAdd/ReadVariableOpв conv3d_388/Conv3D/ReadVariableOpв!conv3d_389/BiasAdd/ReadVariableOpв conv3d_389/Conv3D/ReadVariableOpв!conv3d_390/BiasAdd/ReadVariableOpв conv3d_390/Conv3D/ReadVariableOpв!conv3d_391/BiasAdd/ReadVariableOpв conv3d_391/Conv3D/ReadVariableOpв!conv3d_392/BiasAdd/ReadVariableOpв conv3d_392/Conv3D/ReadVariableOpв!conv3d_393/BiasAdd/ReadVariableOpв conv3d_393/Conv3D/ReadVariableOpв!conv3d_394/BiasAdd/ReadVariableOpв conv3d_394/Conv3D/ReadVariableOpвdense_74/BiasAdd/ReadVariableOpвdense_74/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_484/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_484/strided_slice/stack╣
2tf.__operators__.getitem_484/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_484/strided_slice/stack_1╣
2tf.__operators__.getitem_484/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_484/strided_slice/stack_2Т
*tf.__operators__.getitem_484/strided_sliceStridedSliceinputs9tf.__operators__.getitem_484/strided_slice/stack:output:0;tf.__operators__.getitem_484/strided_slice/stack_1:output:0;tf.__operators__.getitem_484/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_484/strided_slice{
range_conversion_74/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_74/sub/y╨
range_conversion_74/subSub3tf.__operators__.getitem_484/strided_slice:output:0"range_conversion_74/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/subГ
range_conversion_74/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_74/truediv/y╚
range_conversion_74/truedivRealDivrange_conversion_74/sub:z:0&range_conversion_74/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/truediv{
range_conversion_74/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_74/mul/y╝
range_conversion_74/mulMulrange_conversion_74/truediv:z:0"range_conversion_74/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/mul{
range_conversion_74/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_74/add/y║
range_conversion_74/addAddV2range_conversion_74/mul:z:0"range_conversion_74/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/add╡
0tf.__operators__.getitem_485/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_485/strided_slice/stack╣
2tf.__operators__.getitem_485/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_485/strided_slice/stack_1╣
2tf.__operators__.getitem_485/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_485/strided_slice/stack_2Т
*tf.__operators__.getitem_485/strided_sliceStridedSliceinputs9tf.__operators__.getitem_485/strided_slice/stack:output:0;tf.__operators__.getitem_485/strided_slice/stack_1:output:0;tf.__operators__.getitem_485/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_485/strided_slicex
tf.concat_660/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_660/concat/axisї
tf.concat_660/concatConcatV2range_conversion_74/add:z:03tf.__operators__.getitem_485/strided_slice:output:0"tf.concat_660/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_660/concat║
 conv3d_386/Conv3D/ReadVariableOpReadVariableOp)conv3d_386_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_386/Conv3D/ReadVariableOp°
conv3d_386/Conv3DConv3Dtf.concat_660/concat:output:0(conv3d_386/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_386/Conv3Dн
!conv3d_386/BiasAdd/ReadVariableOpReadVariableOp*conv3d_386_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_386/BiasAdd/ReadVariableOp╧
conv3d_386/BiasAddBiasAddconv3d_386/Conv3D:output:0)conv3d_386/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_386/BiasAddС
conv3d_386/SoftplusSoftplusconv3d_386/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_386/Softplusй
$average_pooling3d_156/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_156/transpose/perm▀
average_pooling3d_156/transpose	Transpose!conv3d_386/Softplus:activations:0-average_pooling3d_156/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_156/transposeЁ
average_pooling3d_156/AvgPool3D	AvgPool3D#average_pooling3d_156/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_156/AvgPool3Dн
&average_pooling3d_156/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_156/transpose_1/permь
!average_pooling3d_156/transpose_1	Transpose(average_pooling3d_156/AvgPool3D:output:0/average_pooling3d_156/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_156/transpose_1║
 conv3d_387/Conv3D/ReadVariableOpReadVariableOp)conv3d_387_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_387/Conv3D/ReadVariableOpА
conv3d_387/Conv3DConv3D%average_pooling3d_156/transpose_1:y:0(conv3d_387/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_387/Conv3Dн
!conv3d_387/BiasAdd/ReadVariableOpReadVariableOp*conv3d_387_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_387/BiasAdd/ReadVariableOp╧
conv3d_387/BiasAddBiasAddconv3d_387/Conv3D:output:0)conv3d_387/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_387/BiasAddС
conv3d_387/SoftplusSoftplusconv3d_387/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_387/Softplusй
$average_pooling3d_157/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_157/transpose/perm▀
average_pooling3d_157/transpose	Transpose!conv3d_387/Softplus:activations:0-average_pooling3d_157/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_157/transposeЁ
average_pooling3d_157/AvgPool3D	AvgPool3D#average_pooling3d_157/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_157/AvgPool3Dн
&average_pooling3d_157/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_157/transpose_1/permь
!average_pooling3d_157/transpose_1	Transpose(average_pooling3d_157/AvgPool3D:output:0/average_pooling3d_157/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_157/transpose_1║
 conv3d_388/Conv3D/ReadVariableOpReadVariableOp)conv3d_388_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_388/Conv3D/ReadVariableOpА
conv3d_388/Conv3DConv3D%average_pooling3d_157/transpose_1:y:0(conv3d_388/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_388/Conv3Dн
!conv3d_388/BiasAdd/ReadVariableOpReadVariableOp*conv3d_388_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_388/BiasAdd/ReadVariableOp╧
conv3d_388/BiasAddBiasAddconv3d_388/Conv3D:output:0)conv3d_388/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_388/BiasAddС
conv3d_388/SoftplusSoftplusconv3d_388/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_388/Softplusй
$average_pooling3d_158/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_158/transpose/perm▀
average_pooling3d_158/transpose	Transpose!conv3d_388/Softplus:activations:0-average_pooling3d_158/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_158/transposeЁ
average_pooling3d_158/AvgPool3D	AvgPool3D#average_pooling3d_158/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_158/AvgPool3Dн
&average_pooling3d_158/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_158/transpose_1/permь
!average_pooling3d_158/transpose_1	Transpose(average_pooling3d_158/AvgPool3D:output:0/average_pooling3d_158/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_158/transpose_1║
 conv3d_389/Conv3D/ReadVariableOpReadVariableOp)conv3d_389_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_389/Conv3D/ReadVariableOpА
conv3d_389/Conv3DConv3D%average_pooling3d_158/transpose_1:y:0(conv3d_389/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_389/Conv3Dн
!conv3d_389/BiasAdd/ReadVariableOpReadVariableOp*conv3d_389_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_389/BiasAdd/ReadVariableOp╧
conv3d_389/BiasAddBiasAddconv3d_389/Conv3D:output:0)conv3d_389/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_389/BiasAddС
conv3d_389/SoftplusSoftplusconv3d_389/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_389/Softplusй
$average_pooling3d_159/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_159/transpose/perm▀
average_pooling3d_159/transpose	Transpose!conv3d_389/Softplus:activations:0-average_pooling3d_159/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_159/transposeЁ
average_pooling3d_159/AvgPool3D	AvgPool3D#average_pooling3d_159/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_159/AvgPool3Dн
&average_pooling3d_159/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_159/transpose_1/permь
!average_pooling3d_159/transpose_1	Transpose(average_pooling3d_159/AvgPool3D:output:0/average_pooling3d_159/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_159/transpose_1{
reshape_148/ShapeShape%average_pooling3d_159/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_148/ShapeМ
reshape_148/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_148/strided_slice/stackР
!reshape_148/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_148/strided_slice/stack_1Р
!reshape_148/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_148/strided_slice/stack_2к
reshape_148/strided_sliceStridedSlicereshape_148/Shape:output:0(reshape_148/strided_slice/stack:output:0*reshape_148/strided_slice/stack_1:output:0*reshape_148/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_148/strided_slice|
reshape_148/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_148/Reshape/shape/1╢
reshape_148/Reshape/shapePack"reshape_148/strided_slice:output:0$reshape_148/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_148/Reshape/shape▓
reshape_148/ReshapeReshape%average_pooling3d_159/transpose_1:y:0"reshape_148/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_148/Reshapeи
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_74/MatMul/ReadVariableOpд
dense_74/MatMulMatMulreshape_148/Reshape:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_74/MatMulз
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_74/BiasAdd/ReadVariableOpе
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_74/BiasAdd
dense_74/SoftplusSoftplusdense_74/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_74/Softplusu
reshape_149/ShapeShapedense_74/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_149/ShapeМ
reshape_149/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_149/strided_slice/stackР
!reshape_149/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_149/strided_slice/stack_1Р
!reshape_149/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_149/strided_slice/stack_2к
reshape_149/strided_sliceStridedSlicereshape_149/Shape:output:0(reshape_149/strided_slice/stack:output:0*reshape_149/strided_slice/stack_1:output:0*reshape_149/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_149/strided_slice|
reshape_149/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/1|
reshape_149/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/2|
reshape_149/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/3|
reshape_149/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/4и
reshape_149/Reshape/shapePack"reshape_149/strided_slice:output:0$reshape_149/Reshape/shape/1:output:0$reshape_149/Reshape/shape/2:output:0$reshape_149/Reshape/shape/3:output:0$reshape_149/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_149/Reshape/shape╕
reshape_149/ReshapeReshapedense_74/Softplus:activations:0"reshape_149/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_149/Reshapeе
tf.reshape_836/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_836/Reshape/shape╩
tf.reshape_836/ReshapeReshapereshape_149/Reshape:output:0%tf.reshape_836/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_836/Reshapeб
tf.tile_418/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_418/Tile/multiples╝
tf.tile_418/TileTiletf.reshape_836/Reshape:output:0#tf.tile_418/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_418/TileЩ
tf.reshape_837/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_837/Reshape/shape╗
tf.reshape_837/ReshapeReshapetf.tile_418/Tile:output:0%tf.reshape_837/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_837/Reshapex
tf.concat_661/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_661/concat/axisч
tf.concat_661/concatConcatV2tf.reshape_837/Reshape:output:0!conv3d_389/Softplus:activations:0"tf.concat_661/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_661/concat║
 conv3d_390/Conv3D/ReadVariableOpReadVariableOp)conv3d_390_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_390/Conv3D/ReadVariableOp°
conv3d_390/Conv3DConv3Dtf.concat_661/concat:output:0(conv3d_390/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_390/Conv3Dн
!conv3d_390/BiasAdd/ReadVariableOpReadVariableOp*conv3d_390_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_390/BiasAdd/ReadVariableOp╧
conv3d_390/BiasAddBiasAddconv3d_390/Conv3D:output:0)conv3d_390/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_390/BiasAddС
conv3d_390/SoftplusSoftplusconv3d_390/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_390/Softplusе
tf.reshape_838/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_838/Reshape/shape╧
tf.reshape_838/ReshapeReshape!conv3d_390/Softplus:activations:0%tf.reshape_838/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_838/Reshapeб
tf.tile_419/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_419/Tile/multiples╝
tf.tile_419/TileTiletf.reshape_838/Reshape:output:0#tf.tile_419/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_419/TileЩ
tf.reshape_839/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_839/Reshape/shape╗
tf.reshape_839/ReshapeReshapetf.tile_419/Tile:output:0%tf.reshape_839/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_839/Reshapex
tf.concat_662/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_662/concat/axisч
tf.concat_662/concatConcatV2tf.reshape_839/Reshape:output:0!conv3d_388/Softplus:activations:0"tf.concat_662/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_662/concat║
 conv3d_391/Conv3D/ReadVariableOpReadVariableOp)conv3d_391_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_391/Conv3D/ReadVariableOp°
conv3d_391/Conv3DConv3Dtf.concat_662/concat:output:0(conv3d_391/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_391/Conv3Dн
!conv3d_391/BiasAdd/ReadVariableOpReadVariableOp*conv3d_391_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_391/BiasAdd/ReadVariableOp╧
conv3d_391/BiasAddBiasAddconv3d_391/Conv3D:output:0)conv3d_391/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_391/BiasAddС
conv3d_391/SoftplusSoftplusconv3d_391/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_391/Softplusе
tf.reshape_840/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_840/Reshape/shape╧
tf.reshape_840/ReshapeReshape!conv3d_391/Softplus:activations:0%tf.reshape_840/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_840/Reshapeб
tf.tile_420/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_420/Tile/multiples╝
tf.tile_420/TileTiletf.reshape_840/Reshape:output:0#tf.tile_420/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_420/TileЩ
tf.reshape_841/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_841/Reshape/shape╗
tf.reshape_841/ReshapeReshapetf.tile_420/Tile:output:0%tf.reshape_841/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_841/Reshapex
tf.concat_663/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_663/concat/axisч
tf.concat_663/concatConcatV2tf.reshape_841/Reshape:output:0!conv3d_387/Softplus:activations:0"tf.concat_663/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_663/concat║
 conv3d_392/Conv3D/ReadVariableOpReadVariableOp)conv3d_392_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_392/Conv3D/ReadVariableOp°
conv3d_392/Conv3DConv3Dtf.concat_663/concat:output:0(conv3d_392/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_392/Conv3Dн
!conv3d_392/BiasAdd/ReadVariableOpReadVariableOp*conv3d_392_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_392/BiasAdd/ReadVariableOp╧
conv3d_392/BiasAddBiasAddconv3d_392/Conv3D:output:0)conv3d_392/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_392/BiasAddС
conv3d_392/SoftplusSoftplusconv3d_392/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_392/Softplusе
tf.reshape_842/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_842/Reshape/shape╧
tf.reshape_842/ReshapeReshape!conv3d_392/Softplus:activations:0%tf.reshape_842/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_842/Reshapeб
tf.tile_421/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_421/Tile/multiples╝
tf.tile_421/TileTiletf.reshape_842/Reshape:output:0#tf.tile_421/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_421/TileЩ
tf.reshape_843/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_843/Reshape/shape╗
tf.reshape_843/ReshapeReshapetf.tile_421/Tile:output:0%tf.reshape_843/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_843/Reshapex
tf.concat_664/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_664/concat/axisч
tf.concat_664/concatConcatV2tf.reshape_843/Reshape:output:0!conv3d_386/Softplus:activations:0"tf.concat_664/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_664/concat║
 conv3d_393/Conv3D/ReadVariableOpReadVariableOp)conv3d_393_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_393/Conv3D/ReadVariableOp°
conv3d_393/Conv3DConv3Dtf.concat_664/concat:output:0(conv3d_393/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_393/Conv3Dн
!conv3d_393/BiasAdd/ReadVariableOpReadVariableOp*conv3d_393_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_393/BiasAdd/ReadVariableOp╧
conv3d_393/BiasAddBiasAddconv3d_393/Conv3D:output:0)conv3d_393/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_393/BiasAddС
conv3d_393/SoftplusSoftplusconv3d_393/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_393/Softplus║
 conv3d_394/Conv3D/ReadVariableOpReadVariableOp)conv3d_394_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_394/Conv3D/ReadVariableOp№
conv3d_394/Conv3DConv3D!conv3d_393/Softplus:activations:0(conv3d_394/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_394/Conv3Dн
!conv3d_394/BiasAdd/ReadVariableOpReadVariableOp*conv3d_394_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_394/BiasAdd/ReadVariableOp╧
conv3d_394/BiasAddBiasAddconv3d_394/Conv3D:output:0)conv3d_394/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_394/BiasAddВ
IdentityIdentityconv3d_394/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_386/BiasAdd/ReadVariableOp!^conv3d_386/Conv3D/ReadVariableOp"^conv3d_387/BiasAdd/ReadVariableOp!^conv3d_387/Conv3D/ReadVariableOp"^conv3d_388/BiasAdd/ReadVariableOp!^conv3d_388/Conv3D/ReadVariableOp"^conv3d_389/BiasAdd/ReadVariableOp!^conv3d_389/Conv3D/ReadVariableOp"^conv3d_390/BiasAdd/ReadVariableOp!^conv3d_390/Conv3D/ReadVariableOp"^conv3d_391/BiasAdd/ReadVariableOp!^conv3d_391/Conv3D/ReadVariableOp"^conv3d_392/BiasAdd/ReadVariableOp!^conv3d_392/Conv3D/ReadVariableOp"^conv3d_393/BiasAdd/ReadVariableOp!^conv3d_393/Conv3D/ReadVariableOp"^conv3d_394/BiasAdd/ReadVariableOp!^conv3d_394/Conv3D/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_386/BiasAdd/ReadVariableOp!conv3d_386/BiasAdd/ReadVariableOp2D
 conv3d_386/Conv3D/ReadVariableOp conv3d_386/Conv3D/ReadVariableOp2F
!conv3d_387/BiasAdd/ReadVariableOp!conv3d_387/BiasAdd/ReadVariableOp2D
 conv3d_387/Conv3D/ReadVariableOp conv3d_387/Conv3D/ReadVariableOp2F
!conv3d_388/BiasAdd/ReadVariableOp!conv3d_388/BiasAdd/ReadVariableOp2D
 conv3d_388/Conv3D/ReadVariableOp conv3d_388/Conv3D/ReadVariableOp2F
!conv3d_389/BiasAdd/ReadVariableOp!conv3d_389/BiasAdd/ReadVariableOp2D
 conv3d_389/Conv3D/ReadVariableOp conv3d_389/Conv3D/ReadVariableOp2F
!conv3d_390/BiasAdd/ReadVariableOp!conv3d_390/BiasAdd/ReadVariableOp2D
 conv3d_390/Conv3D/ReadVariableOp conv3d_390/Conv3D/ReadVariableOp2F
!conv3d_391/BiasAdd/ReadVariableOp!conv3d_391/BiasAdd/ReadVariableOp2D
 conv3d_391/Conv3D/ReadVariableOp conv3d_391/Conv3D/ReadVariableOp2F
!conv3d_392/BiasAdd/ReadVariableOp!conv3d_392/BiasAdd/ReadVariableOp2D
 conv3d_392/Conv3D/ReadVariableOp conv3d_392/Conv3D/ReadVariableOp2F
!conv3d_393/BiasAdd/ReadVariableOp!conv3d_393/BiasAdd/ReadVariableOp2D
 conv3d_393/Conv3D/ReadVariableOp conv3d_393/Conv3D/ReadVariableOp2F
!conv3d_394/BiasAdd/ReadVariableOp!conv3d_394/BiasAdd/ReadVariableOp2D
 conv3d_394/Conv3D/ReadVariableOp conv3d_394/Conv3D/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
а
Є
+__inference_model_74_layer_call_fn_20559007	
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
identityИвStatefulPartitionedCall 
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
:         @@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_74_layer_call_and_return_conditional_losses_205589642
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
БУ
б

F__inference_model_74_layer_call_and_return_conditional_losses_20558964

inputs1
conv3d_386_20558703: !
conv3d_386_20558705: 1
conv3d_387_20558730: !
conv3d_387_20558732:1
conv3d_388_20558757:!
conv3d_388_20558759:1
conv3d_389_20558784:!
conv3d_389_20558786:#
dense_74_20558825:@@
dense_74_20558827:@1
conv3d_390_20558867:!
conv3d_390_20558869:1
conv3d_391_20558892:!
conv3d_391_20558894:1
conv3d_392_20558917:!
conv3d_392_20558919:1
conv3d_393_20558942:0 !
conv3d_393_20558944: 1
conv3d_394_20558958: !
conv3d_394_20558960:
identityИв"conv3d_386/StatefulPartitionedCallв"conv3d_387/StatefulPartitionedCallв"conv3d_388/StatefulPartitionedCallв"conv3d_389/StatefulPartitionedCallв"conv3d_390/StatefulPartitionedCallв"conv3d_391/StatefulPartitionedCallв"conv3d_392/StatefulPartitionedCallв"conv3d_393/StatefulPartitionedCallв"conv3d_394/StatefulPartitionedCallв dense_74/StatefulPartitionedCall╡
0tf.__operators__.getitem_484/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_484/strided_slice/stack╣
2tf.__operators__.getitem_484/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_484/strided_slice/stack_1╣
2tf.__operators__.getitem_484/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_484/strided_slice/stack_2Т
*tf.__operators__.getitem_484/strided_sliceStridedSliceinputs9tf.__operators__.getitem_484/strided_slice/stack:output:0;tf.__operators__.getitem_484/strided_slice/stack_1:output:0;tf.__operators__.getitem_484/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_484/strided_slice╗
#range_conversion_74/PartitionedCallPartitionedCall3tf.__operators__.getitem_484/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_205586832%
#range_conversion_74/PartitionedCall╡
0tf.__operators__.getitem_485/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_485/strided_slice/stack╣
2tf.__operators__.getitem_485/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_485/strided_slice/stack_1╣
2tf.__operators__.getitem_485/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_485/strided_slice/stack_2Т
*tf.__operators__.getitem_485/strided_sliceStridedSliceinputs9tf.__operators__.getitem_485/strided_slice/stack:output:0;tf.__operators__.getitem_485/strided_slice/stack_1:output:0;tf.__operators__.getitem_485/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_485/strided_slicex
tf.concat_660/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_660/concat/axisЖ
tf.concat_660/concatConcatV2,range_conversion_74/PartitionedCall:output:03tf.__operators__.getitem_485/strided_slice:output:0"tf.concat_660/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_660/concat╥
"conv3d_386/StatefulPartitionedCallStatefulPartitionedCalltf.concat_660/concat:output:0conv3d_386_20558703conv3d_386_20558705*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_386_layer_call_and_return_conditional_losses_205587022$
"conv3d_386/StatefulPartitionedCall╣
%average_pooling3d_156/PartitionedCallPartitionedCall+conv3d_386/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:            * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_205587162'
%average_pooling3d_156/PartitionedCallу
"conv3d_387/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_156/PartitionedCall:output:0conv3d_387_20558730conv3d_387_20558732*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_387_layer_call_and_return_conditional_losses_205587292$
"conv3d_387/StatefulPartitionedCall╣
%average_pooling3d_157/PartitionedCallPartitionedCall+conv3d_387/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_205587432'
%average_pooling3d_157/PartitionedCallу
"conv3d_388/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_157/PartitionedCall:output:0conv3d_388_20558757conv3d_388_20558759*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_388_layer_call_and_return_conditional_losses_205587562$
"conv3d_388/StatefulPartitionedCall╣
%average_pooling3d_158/PartitionedCallPartitionedCall+conv3d_388/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_205587702'
%average_pooling3d_158/PartitionedCallу
"conv3d_389/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_158/PartitionedCall:output:0conv3d_389_20558784conv3d_389_20558786*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_389_layer_call_and_return_conditional_losses_205587832$
"conv3d_389/StatefulPartitionedCall╣
%average_pooling3d_159/PartitionedCallPartitionedCall+conv3d_389/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_205587972'
%average_pooling3d_159/PartitionedCallТ
reshape_148/PartitionedCallPartitionedCall.average_pooling3d_159/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_148_layer_call_and_return_conditional_losses_205588112
reshape_148/PartitionedCall├
 dense_74/StatefulPartitionedCallStatefulPartitionedCall$reshape_148/PartitionedCall:output:0dense_74_20558825dense_74_20558827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_74_layer_call_and_return_conditional_losses_205588242"
 dense_74/StatefulPartitionedCallЩ
reshape_149/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_149_layer_call_and_return_conditional_losses_205588452
reshape_149/PartitionedCallе
tf.reshape_836/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_836/Reshape/shape╥
tf.reshape_836/ReshapeReshape$reshape_149/PartitionedCall:output:0%tf.reshape_836/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_836/Reshapeб
tf.tile_418/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_418/Tile/multiples╝
tf.tile_418/TileTiletf.reshape_836/Reshape:output:0#tf.tile_418/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_418/TileЩ
tf.reshape_837/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_837/Reshape/shape╗
tf.reshape_837/ReshapeReshapetf.tile_418/Tile:output:0%tf.reshape_837/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_837/Reshapex
tf.concat_661/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_661/concat/axisё
tf.concat_661/concatConcatV2tf.reshape_837/Reshape:output:0+conv3d_389/StatefulPartitionedCall:output:0"tf.concat_661/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_661/concat╥
"conv3d_390/StatefulPartitionedCallStatefulPartitionedCalltf.concat_661/concat:output:0conv3d_390_20558867conv3d_390_20558869*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_390_layer_call_and_return_conditional_losses_205588662$
"conv3d_390/StatefulPartitionedCallе
tf.reshape_838/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_838/Reshape/shape┘
tf.reshape_838/ReshapeReshape+conv3d_390/StatefulPartitionedCall:output:0%tf.reshape_838/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_838/Reshapeб
tf.tile_419/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_419/Tile/multiples╝
tf.tile_419/TileTiletf.reshape_838/Reshape:output:0#tf.tile_419/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_419/TileЩ
tf.reshape_839/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_839/Reshape/shape╗
tf.reshape_839/ReshapeReshapetf.tile_419/Tile:output:0%tf.reshape_839/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_839/Reshapex
tf.concat_662/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_662/concat/axisё
tf.concat_662/concatConcatV2tf.reshape_839/Reshape:output:0+conv3d_388/StatefulPartitionedCall:output:0"tf.concat_662/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_662/concat╥
"conv3d_391/StatefulPartitionedCallStatefulPartitionedCalltf.concat_662/concat:output:0conv3d_391_20558892conv3d_391_20558894*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_391_layer_call_and_return_conditional_losses_205588912$
"conv3d_391/StatefulPartitionedCallе
tf.reshape_840/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_840/Reshape/shape┘
tf.reshape_840/ReshapeReshape+conv3d_391/StatefulPartitionedCall:output:0%tf.reshape_840/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_840/Reshapeб
tf.tile_420/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_420/Tile/multiples╝
tf.tile_420/TileTiletf.reshape_840/Reshape:output:0#tf.tile_420/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_420/TileЩ
tf.reshape_841/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_841/Reshape/shape╗
tf.reshape_841/ReshapeReshapetf.tile_420/Tile:output:0%tf.reshape_841/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_841/Reshapex
tf.concat_663/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_663/concat/axisё
tf.concat_663/concatConcatV2tf.reshape_841/Reshape:output:0+conv3d_387/StatefulPartitionedCall:output:0"tf.concat_663/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_663/concat╥
"conv3d_392/StatefulPartitionedCallStatefulPartitionedCalltf.concat_663/concat:output:0conv3d_392_20558917conv3d_392_20558919*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_392_layer_call_and_return_conditional_losses_205589162$
"conv3d_392/StatefulPartitionedCallе
tf.reshape_842/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_842/Reshape/shape┘
tf.reshape_842/ReshapeReshape+conv3d_392/StatefulPartitionedCall:output:0%tf.reshape_842/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_842/Reshapeб
tf.tile_421/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_421/Tile/multiples╝
tf.tile_421/TileTiletf.reshape_842/Reshape:output:0#tf.tile_421/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_421/TileЩ
tf.reshape_843/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_843/Reshape/shape╗
tf.reshape_843/ReshapeReshapetf.tile_421/Tile:output:0%tf.reshape_843/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_843/Reshapex
tf.concat_664/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_664/concat/axisё
tf.concat_664/concatConcatV2tf.reshape_843/Reshape:output:0+conv3d_386/StatefulPartitionedCall:output:0"tf.concat_664/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_664/concat╥
"conv3d_393/StatefulPartitionedCallStatefulPartitionedCalltf.concat_664/concat:output:0conv3d_393_20558942conv3d_393_20558944*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_393_layer_call_and_return_conditional_losses_205589412$
"conv3d_393/StatefulPartitionedCallр
"conv3d_394/StatefulPartitionedCallStatefulPartitionedCall+conv3d_393/StatefulPartitionedCall:output:0conv3d_394_20558958conv3d_394_20558960*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_394_layer_call_and_return_conditional_losses_205589572$
"conv3d_394/StatefulPartitionedCallТ
IdentityIdentity+conv3d_394/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_386/StatefulPartitionedCall#^conv3d_387/StatefulPartitionedCall#^conv3d_388/StatefulPartitionedCall#^conv3d_389/StatefulPartitionedCall#^conv3d_390/StatefulPartitionedCall#^conv3d_391/StatefulPartitionedCall#^conv3d_392/StatefulPartitionedCall#^conv3d_393/StatefulPartitionedCall#^conv3d_394/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_386/StatefulPartitionedCall"conv3d_386/StatefulPartitionedCall2H
"conv3d_387/StatefulPartitionedCall"conv3d_387/StatefulPartitionedCall2H
"conv3d_388/StatefulPartitionedCall"conv3d_388/StatefulPartitionedCall2H
"conv3d_389/StatefulPartitionedCall"conv3d_389/StatefulPartitionedCall2H
"conv3d_390/StatefulPartitionedCall"conv3d_390/StatefulPartitionedCall2H
"conv3d_391/StatefulPartitionedCall"conv3d_391/StatefulPartitionedCall2H
"conv3d_392/StatefulPartitionedCall"conv3d_392/StatefulPartitionedCall2H
"conv3d_393/StatefulPartitionedCall"conv3d_393/StatefulPartitionedCall2H
"conv3d_394/StatefulPartitionedCall"conv3d_394/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
щ
J
.__inference_reshape_149_layer_call_fn_20560301

inputs
identity▐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_149_layer_call_and_return_conditional_losses_205588452
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_387_layer_call_and_return_conditional_losses_20558729

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:            
 
_user_specified_nameinputs
Ф
ў
F__inference_dense_74_layer_call_and_return_conditional_losses_20558824

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20558643

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_389_layer_call_and_return_conditional_losses_20558783

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_391_layer_call_and_return_conditional_losses_20560356

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_389_layer_call_and_return_conditional_losses_20560231

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
а
Є
+__inference_model_74_layer_call_fn_20559383	
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
identityИвStatefulPartitionedCall 
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
:         @@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_74_layer_call_and_return_conditional_losses_205592952
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
╫	
q
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_20560067

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
:         @@2
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
:         @@2	
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
:         @@2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:         @@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@:_ [
3
_output_shapes!
:         @@
$
_user_specified_name
parameters
¤Т
а

F__inference_model_74_layer_call_and_return_conditional_losses_20559486	
input1
conv3d_386_20559397: !
conv3d_386_20559399: 1
conv3d_387_20559403: !
conv3d_387_20559405:1
conv3d_388_20559409:!
conv3d_388_20559411:1
conv3d_389_20559415:!
conv3d_389_20559417:#
dense_74_20559422:@@
dense_74_20559424:@1
conv3d_390_20559436:!
conv3d_390_20559438:1
conv3d_391_20559449:!
conv3d_391_20559451:1
conv3d_392_20559462:!
conv3d_392_20559464:1
conv3d_393_20559475:0 !
conv3d_393_20559477: 1
conv3d_394_20559480: !
conv3d_394_20559482:
identityИв"conv3d_386/StatefulPartitionedCallв"conv3d_387/StatefulPartitionedCallв"conv3d_388/StatefulPartitionedCallв"conv3d_389/StatefulPartitionedCallв"conv3d_390/StatefulPartitionedCallв"conv3d_391/StatefulPartitionedCallв"conv3d_392/StatefulPartitionedCallв"conv3d_393/StatefulPartitionedCallв"conv3d_394/StatefulPartitionedCallв dense_74/StatefulPartitionedCall╡
0tf.__operators__.getitem_484/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_484/strided_slice/stack╣
2tf.__operators__.getitem_484/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_484/strided_slice/stack_1╣
2tf.__operators__.getitem_484/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_484/strided_slice/stack_2С
*tf.__operators__.getitem_484/strided_sliceStridedSliceinput9tf.__operators__.getitem_484/strided_slice/stack:output:0;tf.__operators__.getitem_484/strided_slice/stack_1:output:0;tf.__operators__.getitem_484/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_484/strided_slice╗
#range_conversion_74/PartitionedCallPartitionedCall3tf.__operators__.getitem_484/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_205586832%
#range_conversion_74/PartitionedCall╡
0tf.__operators__.getitem_485/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_485/strided_slice/stack╣
2tf.__operators__.getitem_485/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_485/strided_slice/stack_1╣
2tf.__operators__.getitem_485/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_485/strided_slice/stack_2С
*tf.__operators__.getitem_485/strided_sliceStridedSliceinput9tf.__operators__.getitem_485/strided_slice/stack:output:0;tf.__operators__.getitem_485/strided_slice/stack_1:output:0;tf.__operators__.getitem_485/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_485/strided_slicex
tf.concat_660/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_660/concat/axisЖ
tf.concat_660/concatConcatV2,range_conversion_74/PartitionedCall:output:03tf.__operators__.getitem_485/strided_slice:output:0"tf.concat_660/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_660/concat╥
"conv3d_386/StatefulPartitionedCallStatefulPartitionedCalltf.concat_660/concat:output:0conv3d_386_20559397conv3d_386_20559399*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_386_layer_call_and_return_conditional_losses_205587022$
"conv3d_386/StatefulPartitionedCall╣
%average_pooling3d_156/PartitionedCallPartitionedCall+conv3d_386/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:            * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_205587162'
%average_pooling3d_156/PartitionedCallу
"conv3d_387/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_156/PartitionedCall:output:0conv3d_387_20559403conv3d_387_20559405*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_387_layer_call_and_return_conditional_losses_205587292$
"conv3d_387/StatefulPartitionedCall╣
%average_pooling3d_157/PartitionedCallPartitionedCall+conv3d_387/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_205587432'
%average_pooling3d_157/PartitionedCallу
"conv3d_388/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_157/PartitionedCall:output:0conv3d_388_20559409conv3d_388_20559411*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_388_layer_call_and_return_conditional_losses_205587562$
"conv3d_388/StatefulPartitionedCall╣
%average_pooling3d_158/PartitionedCallPartitionedCall+conv3d_388/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_205587702'
%average_pooling3d_158/PartitionedCallу
"conv3d_389/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_158/PartitionedCall:output:0conv3d_389_20559415conv3d_389_20559417*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_389_layer_call_and_return_conditional_losses_205587832$
"conv3d_389/StatefulPartitionedCall╣
%average_pooling3d_159/PartitionedCallPartitionedCall+conv3d_389/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_205587972'
%average_pooling3d_159/PartitionedCallТ
reshape_148/PartitionedCallPartitionedCall.average_pooling3d_159/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_148_layer_call_and_return_conditional_losses_205588112
reshape_148/PartitionedCall├
 dense_74/StatefulPartitionedCallStatefulPartitionedCall$reshape_148/PartitionedCall:output:0dense_74_20559422dense_74_20559424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_74_layer_call_and_return_conditional_losses_205588242"
 dense_74/StatefulPartitionedCallЩ
reshape_149/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_149_layer_call_and_return_conditional_losses_205588452
reshape_149/PartitionedCallе
tf.reshape_836/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_836/Reshape/shape╥
tf.reshape_836/ReshapeReshape$reshape_149/PartitionedCall:output:0%tf.reshape_836/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_836/Reshapeб
tf.tile_418/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_418/Tile/multiples╝
tf.tile_418/TileTiletf.reshape_836/Reshape:output:0#tf.tile_418/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_418/TileЩ
tf.reshape_837/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_837/Reshape/shape╗
tf.reshape_837/ReshapeReshapetf.tile_418/Tile:output:0%tf.reshape_837/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_837/Reshapex
tf.concat_661/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_661/concat/axisё
tf.concat_661/concatConcatV2tf.reshape_837/Reshape:output:0+conv3d_389/StatefulPartitionedCall:output:0"tf.concat_661/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_661/concat╥
"conv3d_390/StatefulPartitionedCallStatefulPartitionedCalltf.concat_661/concat:output:0conv3d_390_20559436conv3d_390_20559438*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_390_layer_call_and_return_conditional_losses_205588662$
"conv3d_390/StatefulPartitionedCallе
tf.reshape_838/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_838/Reshape/shape┘
tf.reshape_838/ReshapeReshape+conv3d_390/StatefulPartitionedCall:output:0%tf.reshape_838/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_838/Reshapeб
tf.tile_419/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_419/Tile/multiples╝
tf.tile_419/TileTiletf.reshape_838/Reshape:output:0#tf.tile_419/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_419/TileЩ
tf.reshape_839/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_839/Reshape/shape╗
tf.reshape_839/ReshapeReshapetf.tile_419/Tile:output:0%tf.reshape_839/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_839/Reshapex
tf.concat_662/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_662/concat/axisё
tf.concat_662/concatConcatV2tf.reshape_839/Reshape:output:0+conv3d_388/StatefulPartitionedCall:output:0"tf.concat_662/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_662/concat╥
"conv3d_391/StatefulPartitionedCallStatefulPartitionedCalltf.concat_662/concat:output:0conv3d_391_20559449conv3d_391_20559451*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_391_layer_call_and_return_conditional_losses_205588912$
"conv3d_391/StatefulPartitionedCallе
tf.reshape_840/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_840/Reshape/shape┘
tf.reshape_840/ReshapeReshape+conv3d_391/StatefulPartitionedCall:output:0%tf.reshape_840/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_840/Reshapeб
tf.tile_420/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_420/Tile/multiples╝
tf.tile_420/TileTiletf.reshape_840/Reshape:output:0#tf.tile_420/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_420/TileЩ
tf.reshape_841/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_841/Reshape/shape╗
tf.reshape_841/ReshapeReshapetf.tile_420/Tile:output:0%tf.reshape_841/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_841/Reshapex
tf.concat_663/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_663/concat/axisё
tf.concat_663/concatConcatV2tf.reshape_841/Reshape:output:0+conv3d_387/StatefulPartitionedCall:output:0"tf.concat_663/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_663/concat╥
"conv3d_392/StatefulPartitionedCallStatefulPartitionedCalltf.concat_663/concat:output:0conv3d_392_20559462conv3d_392_20559464*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_392_layer_call_and_return_conditional_losses_205589162$
"conv3d_392/StatefulPartitionedCallе
tf.reshape_842/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_842/Reshape/shape┘
tf.reshape_842/ReshapeReshape+conv3d_392/StatefulPartitionedCall:output:0%tf.reshape_842/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_842/Reshapeб
tf.tile_421/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_421/Tile/multiples╝
tf.tile_421/TileTiletf.reshape_842/Reshape:output:0#tf.tile_421/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_421/TileЩ
tf.reshape_843/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_843/Reshape/shape╗
tf.reshape_843/ReshapeReshapetf.tile_421/Tile:output:0%tf.reshape_843/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_843/Reshapex
tf.concat_664/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_664/concat/axisё
tf.concat_664/concatConcatV2tf.reshape_843/Reshape:output:0+conv3d_386/StatefulPartitionedCall:output:0"tf.concat_664/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_664/concat╥
"conv3d_393/StatefulPartitionedCallStatefulPartitionedCalltf.concat_664/concat:output:0conv3d_393_20559475conv3d_393_20559477*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_393_layer_call_and_return_conditional_losses_205589412$
"conv3d_393/StatefulPartitionedCallр
"conv3d_394/StatefulPartitionedCallStatefulPartitionedCall+conv3d_393/StatefulPartitionedCall:output:0conv3d_394_20559480conv3d_394_20559482*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_394_layer_call_and_return_conditional_losses_205589572$
"conv3d_394/StatefulPartitionedCallТ
IdentityIdentity+conv3d_394/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_386/StatefulPartitionedCall#^conv3d_387/StatefulPartitionedCall#^conv3d_388/StatefulPartitionedCall#^conv3d_389/StatefulPartitionedCall#^conv3d_390/StatefulPartitionedCall#^conv3d_391/StatefulPartitionedCall#^conv3d_392/StatefulPartitionedCall#^conv3d_393/StatefulPartitionedCall#^conv3d_394/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_386/StatefulPartitionedCall"conv3d_386/StatefulPartitionedCall2H
"conv3d_387/StatefulPartitionedCall"conv3d_387/StatefulPartitionedCall2H
"conv3d_388/StatefulPartitionedCall"conv3d_388/StatefulPartitionedCall2H
"conv3d_389/StatefulPartitionedCall"conv3d_389/StatefulPartitionedCall2H
"conv3d_390/StatefulPartitionedCall"conv3d_390/StatefulPartitionedCall2H
"conv3d_391/StatefulPartitionedCall"conv3d_391/StatefulPartitionedCall2H
"conv3d_392/StatefulPartitionedCall"conv3d_392/StatefulPartitionedCall2H
"conv3d_393/StatefulPartitionedCall"conv3d_393/StatefulPartitionedCall2H
"conv3d_394/StatefulPartitionedCall"conv3d_394/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
А
Ш
+__inference_dense_74_layer_call_fn_20560285

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_74_layer_call_and_return_conditional_losses_205588242
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20558716

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
:         @@ 2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:            *
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
:            2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          @@:[ W
3
_output_shapes!
:          @@
 
_user_specified_nameinputs
╜ё
╡
F__inference_model_74_layer_call_and_return_conditional_losses_20559888

inputsG
)conv3d_386_conv3d_readvariableop_resource: 8
*conv3d_386_biasadd_readvariableop_resource: G
)conv3d_387_conv3d_readvariableop_resource: 8
*conv3d_387_biasadd_readvariableop_resource:G
)conv3d_388_conv3d_readvariableop_resource:8
*conv3d_388_biasadd_readvariableop_resource:G
)conv3d_389_conv3d_readvariableop_resource:8
*conv3d_389_biasadd_readvariableop_resource:9
'dense_74_matmul_readvariableop_resource:@@6
(dense_74_biasadd_readvariableop_resource:@G
)conv3d_390_conv3d_readvariableop_resource:8
*conv3d_390_biasadd_readvariableop_resource:G
)conv3d_391_conv3d_readvariableop_resource:8
*conv3d_391_biasadd_readvariableop_resource:G
)conv3d_392_conv3d_readvariableop_resource:8
*conv3d_392_biasadd_readvariableop_resource:G
)conv3d_393_conv3d_readvariableop_resource:0 8
*conv3d_393_biasadd_readvariableop_resource: G
)conv3d_394_conv3d_readvariableop_resource: 8
*conv3d_394_biasadd_readvariableop_resource:
identityИв!conv3d_386/BiasAdd/ReadVariableOpв conv3d_386/Conv3D/ReadVariableOpв!conv3d_387/BiasAdd/ReadVariableOpв conv3d_387/Conv3D/ReadVariableOpв!conv3d_388/BiasAdd/ReadVariableOpв conv3d_388/Conv3D/ReadVariableOpв!conv3d_389/BiasAdd/ReadVariableOpв conv3d_389/Conv3D/ReadVariableOpв!conv3d_390/BiasAdd/ReadVariableOpв conv3d_390/Conv3D/ReadVariableOpв!conv3d_391/BiasAdd/ReadVariableOpв conv3d_391/Conv3D/ReadVariableOpв!conv3d_392/BiasAdd/ReadVariableOpв conv3d_392/Conv3D/ReadVariableOpв!conv3d_393/BiasAdd/ReadVariableOpв conv3d_393/Conv3D/ReadVariableOpв!conv3d_394/BiasAdd/ReadVariableOpв conv3d_394/Conv3D/ReadVariableOpвdense_74/BiasAdd/ReadVariableOpвdense_74/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_484/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_484/strided_slice/stack╣
2tf.__operators__.getitem_484/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_484/strided_slice/stack_1╣
2tf.__operators__.getitem_484/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_484/strided_slice/stack_2Т
*tf.__operators__.getitem_484/strided_sliceStridedSliceinputs9tf.__operators__.getitem_484/strided_slice/stack:output:0;tf.__operators__.getitem_484/strided_slice/stack_1:output:0;tf.__operators__.getitem_484/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_484/strided_slice{
range_conversion_74/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_74/sub/y╨
range_conversion_74/subSub3tf.__operators__.getitem_484/strided_slice:output:0"range_conversion_74/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/subГ
range_conversion_74/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_74/truediv/y╚
range_conversion_74/truedivRealDivrange_conversion_74/sub:z:0&range_conversion_74/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/truediv{
range_conversion_74/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_74/mul/y╝
range_conversion_74/mulMulrange_conversion_74/truediv:z:0"range_conversion_74/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/mul{
range_conversion_74/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_74/add/y║
range_conversion_74/addAddV2range_conversion_74/mul:z:0"range_conversion_74/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_74/add╡
0tf.__operators__.getitem_485/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_485/strided_slice/stack╣
2tf.__operators__.getitem_485/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_485/strided_slice/stack_1╣
2tf.__operators__.getitem_485/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_485/strided_slice/stack_2Т
*tf.__operators__.getitem_485/strided_sliceStridedSliceinputs9tf.__operators__.getitem_485/strided_slice/stack:output:0;tf.__operators__.getitem_485/strided_slice/stack_1:output:0;tf.__operators__.getitem_485/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_485/strided_slicex
tf.concat_660/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_660/concat/axisї
tf.concat_660/concatConcatV2range_conversion_74/add:z:03tf.__operators__.getitem_485/strided_slice:output:0"tf.concat_660/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_660/concat║
 conv3d_386/Conv3D/ReadVariableOpReadVariableOp)conv3d_386_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_386/Conv3D/ReadVariableOp°
conv3d_386/Conv3DConv3Dtf.concat_660/concat:output:0(conv3d_386/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_386/Conv3Dн
!conv3d_386/BiasAdd/ReadVariableOpReadVariableOp*conv3d_386_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_386/BiasAdd/ReadVariableOp╧
conv3d_386/BiasAddBiasAddconv3d_386/Conv3D:output:0)conv3d_386/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_386/BiasAddС
conv3d_386/SoftplusSoftplusconv3d_386/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_386/Softplusй
$average_pooling3d_156/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_156/transpose/perm▀
average_pooling3d_156/transpose	Transpose!conv3d_386/Softplus:activations:0-average_pooling3d_156/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_156/transposeЁ
average_pooling3d_156/AvgPool3D	AvgPool3D#average_pooling3d_156/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_156/AvgPool3Dн
&average_pooling3d_156/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_156/transpose_1/permь
!average_pooling3d_156/transpose_1	Transpose(average_pooling3d_156/AvgPool3D:output:0/average_pooling3d_156/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_156/transpose_1║
 conv3d_387/Conv3D/ReadVariableOpReadVariableOp)conv3d_387_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_387/Conv3D/ReadVariableOpА
conv3d_387/Conv3DConv3D%average_pooling3d_156/transpose_1:y:0(conv3d_387/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_387/Conv3Dн
!conv3d_387/BiasAdd/ReadVariableOpReadVariableOp*conv3d_387_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_387/BiasAdd/ReadVariableOp╧
conv3d_387/BiasAddBiasAddconv3d_387/Conv3D:output:0)conv3d_387/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_387/BiasAddС
conv3d_387/SoftplusSoftplusconv3d_387/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_387/Softplusй
$average_pooling3d_157/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_157/transpose/perm▀
average_pooling3d_157/transpose	Transpose!conv3d_387/Softplus:activations:0-average_pooling3d_157/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_157/transposeЁ
average_pooling3d_157/AvgPool3D	AvgPool3D#average_pooling3d_157/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_157/AvgPool3Dн
&average_pooling3d_157/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_157/transpose_1/permь
!average_pooling3d_157/transpose_1	Transpose(average_pooling3d_157/AvgPool3D:output:0/average_pooling3d_157/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_157/transpose_1║
 conv3d_388/Conv3D/ReadVariableOpReadVariableOp)conv3d_388_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_388/Conv3D/ReadVariableOpА
conv3d_388/Conv3DConv3D%average_pooling3d_157/transpose_1:y:0(conv3d_388/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_388/Conv3Dн
!conv3d_388/BiasAdd/ReadVariableOpReadVariableOp*conv3d_388_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_388/BiasAdd/ReadVariableOp╧
conv3d_388/BiasAddBiasAddconv3d_388/Conv3D:output:0)conv3d_388/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_388/BiasAddС
conv3d_388/SoftplusSoftplusconv3d_388/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_388/Softplusй
$average_pooling3d_158/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_158/transpose/perm▀
average_pooling3d_158/transpose	Transpose!conv3d_388/Softplus:activations:0-average_pooling3d_158/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_158/transposeЁ
average_pooling3d_158/AvgPool3D	AvgPool3D#average_pooling3d_158/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_158/AvgPool3Dн
&average_pooling3d_158/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_158/transpose_1/permь
!average_pooling3d_158/transpose_1	Transpose(average_pooling3d_158/AvgPool3D:output:0/average_pooling3d_158/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_158/transpose_1║
 conv3d_389/Conv3D/ReadVariableOpReadVariableOp)conv3d_389_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_389/Conv3D/ReadVariableOpА
conv3d_389/Conv3DConv3D%average_pooling3d_158/transpose_1:y:0(conv3d_389/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_389/Conv3Dн
!conv3d_389/BiasAdd/ReadVariableOpReadVariableOp*conv3d_389_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_389/BiasAdd/ReadVariableOp╧
conv3d_389/BiasAddBiasAddconv3d_389/Conv3D:output:0)conv3d_389/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_389/BiasAddС
conv3d_389/SoftplusSoftplusconv3d_389/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_389/Softplusй
$average_pooling3d_159/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_159/transpose/perm▀
average_pooling3d_159/transpose	Transpose!conv3d_389/Softplus:activations:0-average_pooling3d_159/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_159/transposeЁ
average_pooling3d_159/AvgPool3D	AvgPool3D#average_pooling3d_159/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_159/AvgPool3Dн
&average_pooling3d_159/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_159/transpose_1/permь
!average_pooling3d_159/transpose_1	Transpose(average_pooling3d_159/AvgPool3D:output:0/average_pooling3d_159/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_159/transpose_1{
reshape_148/ShapeShape%average_pooling3d_159/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_148/ShapeМ
reshape_148/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_148/strided_slice/stackР
!reshape_148/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_148/strided_slice/stack_1Р
!reshape_148/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_148/strided_slice/stack_2к
reshape_148/strided_sliceStridedSlicereshape_148/Shape:output:0(reshape_148/strided_slice/stack:output:0*reshape_148/strided_slice/stack_1:output:0*reshape_148/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_148/strided_slice|
reshape_148/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_148/Reshape/shape/1╢
reshape_148/Reshape/shapePack"reshape_148/strided_slice:output:0$reshape_148/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_148/Reshape/shape▓
reshape_148/ReshapeReshape%average_pooling3d_159/transpose_1:y:0"reshape_148/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_148/Reshapeи
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_74/MatMul/ReadVariableOpд
dense_74/MatMulMatMulreshape_148/Reshape:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_74/MatMulз
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_74/BiasAdd/ReadVariableOpе
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_74/BiasAdd
dense_74/SoftplusSoftplusdense_74/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_74/Softplusu
reshape_149/ShapeShapedense_74/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_149/ShapeМ
reshape_149/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_149/strided_slice/stackР
!reshape_149/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_149/strided_slice/stack_1Р
!reshape_149/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_149/strided_slice/stack_2к
reshape_149/strided_sliceStridedSlicereshape_149/Shape:output:0(reshape_149/strided_slice/stack:output:0*reshape_149/strided_slice/stack_1:output:0*reshape_149/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_149/strided_slice|
reshape_149/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/1|
reshape_149/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/2|
reshape_149/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/3|
reshape_149/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_149/Reshape/shape/4и
reshape_149/Reshape/shapePack"reshape_149/strided_slice:output:0$reshape_149/Reshape/shape/1:output:0$reshape_149/Reshape/shape/2:output:0$reshape_149/Reshape/shape/3:output:0$reshape_149/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_149/Reshape/shape╕
reshape_149/ReshapeReshapedense_74/Softplus:activations:0"reshape_149/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_149/Reshapeе
tf.reshape_836/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_836/Reshape/shape╩
tf.reshape_836/ReshapeReshapereshape_149/Reshape:output:0%tf.reshape_836/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_836/Reshapeб
tf.tile_418/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_418/Tile/multiples╝
tf.tile_418/TileTiletf.reshape_836/Reshape:output:0#tf.tile_418/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_418/TileЩ
tf.reshape_837/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_837/Reshape/shape╗
tf.reshape_837/ReshapeReshapetf.tile_418/Tile:output:0%tf.reshape_837/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_837/Reshapex
tf.concat_661/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_661/concat/axisч
tf.concat_661/concatConcatV2tf.reshape_837/Reshape:output:0!conv3d_389/Softplus:activations:0"tf.concat_661/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_661/concat║
 conv3d_390/Conv3D/ReadVariableOpReadVariableOp)conv3d_390_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_390/Conv3D/ReadVariableOp°
conv3d_390/Conv3DConv3Dtf.concat_661/concat:output:0(conv3d_390/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_390/Conv3Dн
!conv3d_390/BiasAdd/ReadVariableOpReadVariableOp*conv3d_390_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_390/BiasAdd/ReadVariableOp╧
conv3d_390/BiasAddBiasAddconv3d_390/Conv3D:output:0)conv3d_390/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_390/BiasAddС
conv3d_390/SoftplusSoftplusconv3d_390/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_390/Softplusе
tf.reshape_838/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_838/Reshape/shape╧
tf.reshape_838/ReshapeReshape!conv3d_390/Softplus:activations:0%tf.reshape_838/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_838/Reshapeб
tf.tile_419/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_419/Tile/multiples╝
tf.tile_419/TileTiletf.reshape_838/Reshape:output:0#tf.tile_419/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_419/TileЩ
tf.reshape_839/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_839/Reshape/shape╗
tf.reshape_839/ReshapeReshapetf.tile_419/Tile:output:0%tf.reshape_839/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_839/Reshapex
tf.concat_662/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_662/concat/axisч
tf.concat_662/concatConcatV2tf.reshape_839/Reshape:output:0!conv3d_388/Softplus:activations:0"tf.concat_662/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_662/concat║
 conv3d_391/Conv3D/ReadVariableOpReadVariableOp)conv3d_391_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_391/Conv3D/ReadVariableOp°
conv3d_391/Conv3DConv3Dtf.concat_662/concat:output:0(conv3d_391/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_391/Conv3Dн
!conv3d_391/BiasAdd/ReadVariableOpReadVariableOp*conv3d_391_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_391/BiasAdd/ReadVariableOp╧
conv3d_391/BiasAddBiasAddconv3d_391/Conv3D:output:0)conv3d_391/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_391/BiasAddС
conv3d_391/SoftplusSoftplusconv3d_391/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_391/Softplusе
tf.reshape_840/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_840/Reshape/shape╧
tf.reshape_840/ReshapeReshape!conv3d_391/Softplus:activations:0%tf.reshape_840/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_840/Reshapeб
tf.tile_420/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_420/Tile/multiples╝
tf.tile_420/TileTiletf.reshape_840/Reshape:output:0#tf.tile_420/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_420/TileЩ
tf.reshape_841/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_841/Reshape/shape╗
tf.reshape_841/ReshapeReshapetf.tile_420/Tile:output:0%tf.reshape_841/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_841/Reshapex
tf.concat_663/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_663/concat/axisч
tf.concat_663/concatConcatV2tf.reshape_841/Reshape:output:0!conv3d_387/Softplus:activations:0"tf.concat_663/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_663/concat║
 conv3d_392/Conv3D/ReadVariableOpReadVariableOp)conv3d_392_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_392/Conv3D/ReadVariableOp°
conv3d_392/Conv3DConv3Dtf.concat_663/concat:output:0(conv3d_392/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_392/Conv3Dн
!conv3d_392/BiasAdd/ReadVariableOpReadVariableOp*conv3d_392_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_392/BiasAdd/ReadVariableOp╧
conv3d_392/BiasAddBiasAddconv3d_392/Conv3D:output:0)conv3d_392/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_392/BiasAddС
conv3d_392/SoftplusSoftplusconv3d_392/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_392/Softplusе
tf.reshape_842/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_842/Reshape/shape╧
tf.reshape_842/ReshapeReshape!conv3d_392/Softplus:activations:0%tf.reshape_842/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_842/Reshapeб
tf.tile_421/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_421/Tile/multiples╝
tf.tile_421/TileTiletf.reshape_842/Reshape:output:0#tf.tile_421/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_421/TileЩ
tf.reshape_843/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_843/Reshape/shape╗
tf.reshape_843/ReshapeReshapetf.tile_421/Tile:output:0%tf.reshape_843/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_843/Reshapex
tf.concat_664/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_664/concat/axisч
tf.concat_664/concatConcatV2tf.reshape_843/Reshape:output:0!conv3d_386/Softplus:activations:0"tf.concat_664/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_664/concat║
 conv3d_393/Conv3D/ReadVariableOpReadVariableOp)conv3d_393_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_393/Conv3D/ReadVariableOp°
conv3d_393/Conv3DConv3Dtf.concat_664/concat:output:0(conv3d_393/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_393/Conv3Dн
!conv3d_393/BiasAdd/ReadVariableOpReadVariableOp*conv3d_393_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_393/BiasAdd/ReadVariableOp╧
conv3d_393/BiasAddBiasAddconv3d_393/Conv3D:output:0)conv3d_393/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_393/BiasAddС
conv3d_393/SoftplusSoftplusconv3d_393/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_393/Softplus║
 conv3d_394/Conv3D/ReadVariableOpReadVariableOp)conv3d_394_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_394/Conv3D/ReadVariableOp№
conv3d_394/Conv3DConv3D!conv3d_393/Softplus:activations:0(conv3d_394/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_394/Conv3Dн
!conv3d_394/BiasAdd/ReadVariableOpReadVariableOp*conv3d_394_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_394/BiasAdd/ReadVariableOp╧
conv3d_394/BiasAddBiasAddconv3d_394/Conv3D:output:0)conv3d_394/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_394/BiasAddВ
IdentityIdentityconv3d_394/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_386/BiasAdd/ReadVariableOp!^conv3d_386/Conv3D/ReadVariableOp"^conv3d_387/BiasAdd/ReadVariableOp!^conv3d_387/Conv3D/ReadVariableOp"^conv3d_388/BiasAdd/ReadVariableOp!^conv3d_388/Conv3D/ReadVariableOp"^conv3d_389/BiasAdd/ReadVariableOp!^conv3d_389/Conv3D/ReadVariableOp"^conv3d_390/BiasAdd/ReadVariableOp!^conv3d_390/Conv3D/ReadVariableOp"^conv3d_391/BiasAdd/ReadVariableOp!^conv3d_391/Conv3D/ReadVariableOp"^conv3d_392/BiasAdd/ReadVariableOp!^conv3d_392/Conv3D/ReadVariableOp"^conv3d_393/BiasAdd/ReadVariableOp!^conv3d_393/Conv3D/ReadVariableOp"^conv3d_394/BiasAdd/ReadVariableOp!^conv3d_394/Conv3D/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_386/BiasAdd/ReadVariableOp!conv3d_386/BiasAdd/ReadVariableOp2D
 conv3d_386/Conv3D/ReadVariableOp conv3d_386/Conv3D/ReadVariableOp2F
!conv3d_387/BiasAdd/ReadVariableOp!conv3d_387/BiasAdd/ReadVariableOp2D
 conv3d_387/Conv3D/ReadVariableOp conv3d_387/Conv3D/ReadVariableOp2F
!conv3d_388/BiasAdd/ReadVariableOp!conv3d_388/BiasAdd/ReadVariableOp2D
 conv3d_388/Conv3D/ReadVariableOp conv3d_388/Conv3D/ReadVariableOp2F
!conv3d_389/BiasAdd/ReadVariableOp!conv3d_389/BiasAdd/ReadVariableOp2D
 conv3d_389/Conv3D/ReadVariableOp conv3d_389/Conv3D/ReadVariableOp2F
!conv3d_390/BiasAdd/ReadVariableOp!conv3d_390/BiasAdd/ReadVariableOp2D
 conv3d_390/Conv3D/ReadVariableOp conv3d_390/Conv3D/ReadVariableOp2F
!conv3d_391/BiasAdd/ReadVariableOp!conv3d_391/BiasAdd/ReadVariableOp2D
 conv3d_391/Conv3D/ReadVariableOp conv3d_391/Conv3D/ReadVariableOp2F
!conv3d_392/BiasAdd/ReadVariableOp!conv3d_392/BiasAdd/ReadVariableOp2D
 conv3d_392/Conv3D/ReadVariableOp conv3d_392/Conv3D/ReadVariableOp2F
!conv3d_393/BiasAdd/ReadVariableOp!conv3d_393/BiasAdd/ReadVariableOp2D
 conv3d_393/Conv3D/ReadVariableOp conv3d_393/Conv3D/ReadVariableOp2F
!conv3d_394/BiasAdd/ReadVariableOp!conv3d_394/BiasAdd/ReadVariableOp2D
 conv3d_394/Conv3D/ReadVariableOp conv3d_394/Conv3D/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20558770

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
:         2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
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
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_393_layer_call_fn_20560385

inputs%
unknown:0 
	unknown_0: 
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_393_layer_call_and_return_conditional_losses_205589412
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:          @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         0@@
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20560202

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_386_layer_call_fn_20560076

inputs%
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_386_layer_call_and_return_conditional_losses_205587022
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:          @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20560259

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
:         2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
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
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╒3
╛
!__inference__traced_save_20560498
file_prefix0
,savev2_conv3d_386_kernel_read_readvariableop.
*savev2_conv3d_386_bias_read_readvariableop0
,savev2_conv3d_387_kernel_read_readvariableop.
*savev2_conv3d_387_bias_read_readvariableop0
,savev2_conv3d_388_kernel_read_readvariableop.
*savev2_conv3d_388_bias_read_readvariableop0
,savev2_conv3d_389_kernel_read_readvariableop.
*savev2_conv3d_389_bias_read_readvariableop.
*savev2_dense_74_kernel_read_readvariableop,
(savev2_dense_74_bias_read_readvariableop0
,savev2_conv3d_390_kernel_read_readvariableop.
*savev2_conv3d_390_bias_read_readvariableop0
,savev2_conv3d_391_kernel_read_readvariableop.
*savev2_conv3d_391_bias_read_readvariableop0
,savev2_conv3d_392_kernel_read_readvariableop.
*savev2_conv3d_392_bias_read_readvariableop0
,savev2_conv3d_393_kernel_read_readvariableop.
*savev2_conv3d_393_bias_read_readvariableop0
,savev2_conv3d_394_kernel_read_readvariableop.
*savev2_conv3d_394_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameэ	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueїBЄB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names▓
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╬
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_386_kernel_read_readvariableop*savev2_conv3d_386_bias_read_readvariableop,savev2_conv3d_387_kernel_read_readvariableop*savev2_conv3d_387_bias_read_readvariableop,savev2_conv3d_388_kernel_read_readvariableop*savev2_conv3d_388_bias_read_readvariableop,savev2_conv3d_389_kernel_read_readvariableop*savev2_conv3d_389_bias_read_readvariableop*savev2_dense_74_kernel_read_readvariableop(savev2_dense_74_bias_read_readvariableop,savev2_conv3d_390_kernel_read_readvariableop*savev2_conv3d_390_bias_read_readvariableop,savev2_conv3d_391_kernel_read_readvariableop*savev2_conv3d_391_bias_read_readvariableop,savev2_conv3d_392_kernel_read_readvariableop*savev2_conv3d_392_bias_read_readvariableop,savev2_conv3d_393_kernel_read_readvariableop*savev2_conv3d_393_bias_read_readvariableop,savev2_conv3d_394_kernel_read_readvariableop*savev2_conv3d_394_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*е
_input_shapesУ
Р: : : : ::::::@@:@:::::::0 : : :: 2(
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
М	
o
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20558797

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
:         2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
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
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_393_layer_call_and_return_conditional_losses_20560396

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:          @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:          @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         0@@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_388_layer_call_and_return_conditional_losses_20558756

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_387_layer_call_fn_20560124

inputs%
unknown: 
	unknown_0:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_387_layer_call_and_return_conditional_losses_205587292
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:            : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:            
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_392_layer_call_and_return_conditional_losses_20560376

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_391_layer_call_and_return_conditional_losses_20558891

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_386_layer_call_and_return_conditional_losses_20560087

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:          @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:          @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20558553

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
Х
T
8__inference_average_pooling3d_156_layer_call_fn_20560097

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:            * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_205587162
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          @@:[ W
3
_output_shapes!
:          @@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_387_layer_call_and_return_conditional_losses_20560135

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:            
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20560163

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
:           2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
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
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
г
є
+__inference_model_74_layer_call_fn_20559681

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
identityИвStatefulPartitionedCallА
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
:         @@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_74_layer_call_and_return_conditional_losses_205589642
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20558613

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_390_layer_call_fn_20560325

inputs%
unknown:
	unknown_0:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_390_layer_call_and_return_conditional_losses_205588662
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ж
T
8__inference_average_pooling3d_157_layer_call_fn_20560140

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_205585832
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_386_layer_call_and_return_conditional_losses_20558702

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:          @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:          @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_388_layer_call_and_return_conditional_losses_20560183

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_149_layer_call_and_return_conditional_losses_20560316

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
Reshape/shape/4╘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
вЧ
∙
#__inference__wrapped_model_20558540	
inputP
2model_74_conv3d_386_conv3d_readvariableop_resource: A
3model_74_conv3d_386_biasadd_readvariableop_resource: P
2model_74_conv3d_387_conv3d_readvariableop_resource: A
3model_74_conv3d_387_biasadd_readvariableop_resource:P
2model_74_conv3d_388_conv3d_readvariableop_resource:A
3model_74_conv3d_388_biasadd_readvariableop_resource:P
2model_74_conv3d_389_conv3d_readvariableop_resource:A
3model_74_conv3d_389_biasadd_readvariableop_resource:B
0model_74_dense_74_matmul_readvariableop_resource:@@?
1model_74_dense_74_biasadd_readvariableop_resource:@P
2model_74_conv3d_390_conv3d_readvariableop_resource:A
3model_74_conv3d_390_biasadd_readvariableop_resource:P
2model_74_conv3d_391_conv3d_readvariableop_resource:A
3model_74_conv3d_391_biasadd_readvariableop_resource:P
2model_74_conv3d_392_conv3d_readvariableop_resource:A
3model_74_conv3d_392_biasadd_readvariableop_resource:P
2model_74_conv3d_393_conv3d_readvariableop_resource:0 A
3model_74_conv3d_393_biasadd_readvariableop_resource: P
2model_74_conv3d_394_conv3d_readvariableop_resource: A
3model_74_conv3d_394_biasadd_readvariableop_resource:
identityИв*model_74/conv3d_386/BiasAdd/ReadVariableOpв)model_74/conv3d_386/Conv3D/ReadVariableOpв*model_74/conv3d_387/BiasAdd/ReadVariableOpв)model_74/conv3d_387/Conv3D/ReadVariableOpв*model_74/conv3d_388/BiasAdd/ReadVariableOpв)model_74/conv3d_388/Conv3D/ReadVariableOpв*model_74/conv3d_389/BiasAdd/ReadVariableOpв)model_74/conv3d_389/Conv3D/ReadVariableOpв*model_74/conv3d_390/BiasAdd/ReadVariableOpв)model_74/conv3d_390/Conv3D/ReadVariableOpв*model_74/conv3d_391/BiasAdd/ReadVariableOpв)model_74/conv3d_391/Conv3D/ReadVariableOpв*model_74/conv3d_392/BiasAdd/ReadVariableOpв)model_74/conv3d_392/Conv3D/ReadVariableOpв*model_74/conv3d_393/BiasAdd/ReadVariableOpв)model_74/conv3d_393/Conv3D/ReadVariableOpв*model_74/conv3d_394/BiasAdd/ReadVariableOpв)model_74/conv3d_394/Conv3D/ReadVariableOpв(model_74/dense_74/BiasAdd/ReadVariableOpв'model_74/dense_74/MatMul/ReadVariableOp╟
9model_74/tf.__operators__.getitem_484/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_74/tf.__operators__.getitem_484/strided_slice/stack╦
;model_74/tf.__operators__.getitem_484/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_74/tf.__operators__.getitem_484/strided_slice/stack_1╦
;model_74/tf.__operators__.getitem_484/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_74/tf.__operators__.getitem_484/strided_slice/stack_2╛
3model_74/tf.__operators__.getitem_484/strided_sliceStridedSliceinputBmodel_74/tf.__operators__.getitem_484/strided_slice/stack:output:0Dmodel_74/tf.__operators__.getitem_484/strided_slice/stack_1:output:0Dmodel_74/tf.__operators__.getitem_484/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_74/tf.__operators__.getitem_484/strided_sliceН
"model_74/range_conversion_74/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_74/range_conversion_74/sub/yЇ
 model_74/range_conversion_74/subSub<model_74/tf.__operators__.getitem_484/strided_slice:output:0+model_74/range_conversion_74/sub/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_74/range_conversion_74/subХ
&model_74/range_conversion_74/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_74/range_conversion_74/truediv/yь
$model_74/range_conversion_74/truedivRealDiv$model_74/range_conversion_74/sub:z:0/model_74/range_conversion_74/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2&
$model_74/range_conversion_74/truedivН
"model_74/range_conversion_74/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_74/range_conversion_74/mul/yр
 model_74/range_conversion_74/mulMul(model_74/range_conversion_74/truediv:z:0+model_74/range_conversion_74/mul/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_74/range_conversion_74/mulН
"model_74/range_conversion_74/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_74/range_conversion_74/add/y▐
 model_74/range_conversion_74/addAddV2$model_74/range_conversion_74/mul:z:0+model_74/range_conversion_74/add/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_74/range_conversion_74/add╟
9model_74/tf.__operators__.getitem_485/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_74/tf.__operators__.getitem_485/strided_slice/stack╦
;model_74/tf.__operators__.getitem_485/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_74/tf.__operators__.getitem_485/strided_slice/stack_1╦
;model_74/tf.__operators__.getitem_485/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_74/tf.__operators__.getitem_485/strided_slice/stack_2╛
3model_74/tf.__operators__.getitem_485/strided_sliceStridedSliceinputBmodel_74/tf.__operators__.getitem_485/strided_slice/stack:output:0Dmodel_74/tf.__operators__.getitem_485/strided_slice/stack_1:output:0Dmodel_74/tf.__operators__.getitem_485/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_74/tf.__operators__.getitem_485/strided_sliceК
"model_74/tf.concat_660/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_74/tf.concat_660/concat/axisв
model_74/tf.concat_660/concatConcatV2$model_74/range_conversion_74/add:z:0<model_74/tf.__operators__.getitem_485/strided_slice:output:0+model_74/tf.concat_660/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
model_74/tf.concat_660/concat╒
)model_74/conv3d_386/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_386_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_74/conv3d_386/Conv3D/ReadVariableOpЬ
model_74/conv3d_386/Conv3DConv3D&model_74/tf.concat_660/concat:output:01model_74/conv3d_386/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_386/Conv3D╚
*model_74/conv3d_386/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_386_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_74/conv3d_386/BiasAdd/ReadVariableOpє
model_74/conv3d_386/BiasAddBiasAdd#model_74/conv3d_386/Conv3D:output:02model_74/conv3d_386/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_74/conv3d_386/BiasAddм
model_74/conv3d_386/SoftplusSoftplus$model_74/conv3d_386/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_74/conv3d_386/Softplus╗
-model_74/average_pooling3d_156/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_74/average_pooling3d_156/transpose/permГ
(model_74/average_pooling3d_156/transpose	Transpose*model_74/conv3d_386/Softplus:activations:06model_74/average_pooling3d_156/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2*
(model_74/average_pooling3d_156/transposeЛ
(model_74/average_pooling3d_156/AvgPool3D	AvgPool3D,model_74/average_pooling3d_156/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2*
(model_74/average_pooling3d_156/AvgPool3D┐
/model_74/average_pooling3d_156/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_74/average_pooling3d_156/transpose_1/permР
*model_74/average_pooling3d_156/transpose_1	Transpose1model_74/average_pooling3d_156/AvgPool3D:output:08model_74/average_pooling3d_156/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2,
*model_74/average_pooling3d_156/transpose_1╒
)model_74/conv3d_387/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_387_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_74/conv3d_387/Conv3D/ReadVariableOpд
model_74/conv3d_387/Conv3DConv3D.model_74/average_pooling3d_156/transpose_1:y:01model_74/conv3d_387/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_387/Conv3D╚
*model_74/conv3d_387/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_387_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_74/conv3d_387/BiasAdd/ReadVariableOpє
model_74/conv3d_387/BiasAddBiasAdd#model_74/conv3d_387/Conv3D:output:02model_74/conv3d_387/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_74/conv3d_387/BiasAddм
model_74/conv3d_387/SoftplusSoftplus$model_74/conv3d_387/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_74/conv3d_387/Softplus╗
-model_74/average_pooling3d_157/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_74/average_pooling3d_157/transpose/permГ
(model_74/average_pooling3d_157/transpose	Transpose*model_74/conv3d_387/Softplus:activations:06model_74/average_pooling3d_157/transpose/perm:output:0*
T0*3
_output_shapes!
:           2*
(model_74/average_pooling3d_157/transposeЛ
(model_74/average_pooling3d_157/AvgPool3D	AvgPool3D,model_74/average_pooling3d_157/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_74/average_pooling3d_157/AvgPool3D┐
/model_74/average_pooling3d_157/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_74/average_pooling3d_157/transpose_1/permР
*model_74/average_pooling3d_157/transpose_1	Transpose1model_74/average_pooling3d_157/AvgPool3D:output:08model_74/average_pooling3d_157/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_74/average_pooling3d_157/transpose_1╒
)model_74/conv3d_388/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_388_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_74/conv3d_388/Conv3D/ReadVariableOpд
model_74/conv3d_388/Conv3DConv3D.model_74/average_pooling3d_157/transpose_1:y:01model_74/conv3d_388/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_388/Conv3D╚
*model_74/conv3d_388/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_388_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_74/conv3d_388/BiasAdd/ReadVariableOpє
model_74/conv3d_388/BiasAddBiasAdd#model_74/conv3d_388/Conv3D:output:02model_74/conv3d_388/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_74/conv3d_388/BiasAddм
model_74/conv3d_388/SoftplusSoftplus$model_74/conv3d_388/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_74/conv3d_388/Softplus╗
-model_74/average_pooling3d_158/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_74/average_pooling3d_158/transpose/permГ
(model_74/average_pooling3d_158/transpose	Transpose*model_74/conv3d_388/Softplus:activations:06model_74/average_pooling3d_158/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_74/average_pooling3d_158/transposeЛ
(model_74/average_pooling3d_158/AvgPool3D	AvgPool3D,model_74/average_pooling3d_158/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_74/average_pooling3d_158/AvgPool3D┐
/model_74/average_pooling3d_158/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_74/average_pooling3d_158/transpose_1/permР
*model_74/average_pooling3d_158/transpose_1	Transpose1model_74/average_pooling3d_158/AvgPool3D:output:08model_74/average_pooling3d_158/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_74/average_pooling3d_158/transpose_1╒
)model_74/conv3d_389/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_389_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_74/conv3d_389/Conv3D/ReadVariableOpд
model_74/conv3d_389/Conv3DConv3D.model_74/average_pooling3d_158/transpose_1:y:01model_74/conv3d_389/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_389/Conv3D╚
*model_74/conv3d_389/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_389_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_74/conv3d_389/BiasAdd/ReadVariableOpє
model_74/conv3d_389/BiasAddBiasAdd#model_74/conv3d_389/Conv3D:output:02model_74/conv3d_389/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_74/conv3d_389/BiasAddм
model_74/conv3d_389/SoftplusSoftplus$model_74/conv3d_389/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_74/conv3d_389/Softplus╗
-model_74/average_pooling3d_159/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_74/average_pooling3d_159/transpose/permГ
(model_74/average_pooling3d_159/transpose	Transpose*model_74/conv3d_389/Softplus:activations:06model_74/average_pooling3d_159/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_74/average_pooling3d_159/transposeЛ
(model_74/average_pooling3d_159/AvgPool3D	AvgPool3D,model_74/average_pooling3d_159/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_74/average_pooling3d_159/AvgPool3D┐
/model_74/average_pooling3d_159/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_74/average_pooling3d_159/transpose_1/permР
*model_74/average_pooling3d_159/transpose_1	Transpose1model_74/average_pooling3d_159/AvgPool3D:output:08model_74/average_pooling3d_159/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_74/average_pooling3d_159/transpose_1Ц
model_74/reshape_148/ShapeShape.model_74/average_pooling3d_159/transpose_1:y:0*
T0*
_output_shapes
:2
model_74/reshape_148/ShapeЮ
(model_74/reshape_148/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_74/reshape_148/strided_slice/stackв
*model_74/reshape_148/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_74/reshape_148/strided_slice/stack_1в
*model_74/reshape_148/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_74/reshape_148/strided_slice/stack_2р
"model_74/reshape_148/strided_sliceStridedSlice#model_74/reshape_148/Shape:output:01model_74/reshape_148/strided_slice/stack:output:03model_74/reshape_148/strided_slice/stack_1:output:03model_74/reshape_148/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_74/reshape_148/strided_sliceО
$model_74/reshape_148/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_74/reshape_148/Reshape/shape/1┌
"model_74/reshape_148/Reshape/shapePack+model_74/reshape_148/strided_slice:output:0-model_74/reshape_148/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_74/reshape_148/Reshape/shape╓
model_74/reshape_148/ReshapeReshape.model_74/average_pooling3d_159/transpose_1:y:0+model_74/reshape_148/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_74/reshape_148/Reshape├
'model_74/dense_74/MatMul/ReadVariableOpReadVariableOp0model_74_dense_74_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_74/dense_74/MatMul/ReadVariableOp╚
model_74/dense_74/MatMulMatMul%model_74/reshape_148/Reshape:output:0/model_74/dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_74/dense_74/MatMul┬
(model_74/dense_74/BiasAdd/ReadVariableOpReadVariableOp1model_74_dense_74_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_74/dense_74/BiasAdd/ReadVariableOp╔
model_74/dense_74/BiasAddBiasAdd"model_74/dense_74/MatMul:product:00model_74/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_74/dense_74/BiasAddЪ
model_74/dense_74/SoftplusSoftplus"model_74/dense_74/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_74/dense_74/SoftplusР
model_74/reshape_149/ShapeShape(model_74/dense_74/Softplus:activations:0*
T0*
_output_shapes
:2
model_74/reshape_149/ShapeЮ
(model_74/reshape_149/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_74/reshape_149/strided_slice/stackв
*model_74/reshape_149/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_74/reshape_149/strided_slice/stack_1в
*model_74/reshape_149/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_74/reshape_149/strided_slice/stack_2р
"model_74/reshape_149/strided_sliceStridedSlice#model_74/reshape_149/Shape:output:01model_74/reshape_149/strided_slice/stack:output:03model_74/reshape_149/strided_slice/stack_1:output:03model_74/reshape_149/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_74/reshape_149/strided_sliceО
$model_74/reshape_149/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_74/reshape_149/Reshape/shape/1О
$model_74/reshape_149/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_74/reshape_149/Reshape/shape/2О
$model_74/reshape_149/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_74/reshape_149/Reshape/shape/3О
$model_74/reshape_149/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_74/reshape_149/Reshape/shape/4ч
"model_74/reshape_149/Reshape/shapePack+model_74/reshape_149/strided_slice:output:0-model_74/reshape_149/Reshape/shape/1:output:0-model_74/reshape_149/Reshape/shape/2:output:0-model_74/reshape_149/Reshape/shape/3:output:0-model_74/reshape_149/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_74/reshape_149/Reshape/shape▄
model_74/reshape_149/ReshapeReshape(model_74/dense_74/Softplus:activations:0+model_74/reshape_149/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_74/reshape_149/Reshape╖
%model_74/tf.reshape_836/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_74/tf.reshape_836/Reshape/shapeю
model_74/tf.reshape_836/ReshapeReshape%model_74/reshape_149/Reshape:output:0.model_74/tf.reshape_836/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_74/tf.reshape_836/Reshape│
#model_74/tf.tile_418/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_74/tf.tile_418/Tile/multiplesр
model_74/tf.tile_418/TileTile(model_74/tf.reshape_836/Reshape:output:0,model_74/tf.tile_418/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_74/tf.tile_418/Tileл
%model_74/tf.reshape_837/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_74/tf.reshape_837/Reshape/shape▀
model_74/tf.reshape_837/ReshapeReshape"model_74/tf.tile_418/Tile:output:0.model_74/tf.reshape_837/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_74/tf.reshape_837/ReshapeК
"model_74/tf.concat_661/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_74/tf.concat_661/concat/axisФ
model_74/tf.concat_661/concatConcatV2(model_74/tf.reshape_837/Reshape:output:0*model_74/conv3d_389/Softplus:activations:0+model_74/tf.concat_661/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_74/tf.concat_661/concat╒
)model_74/conv3d_390/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_390_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_74/conv3d_390/Conv3D/ReadVariableOpЬ
model_74/conv3d_390/Conv3DConv3D&model_74/tf.concat_661/concat:output:01model_74/conv3d_390/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_390/Conv3D╚
*model_74/conv3d_390/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_390_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_74/conv3d_390/BiasAdd/ReadVariableOpє
model_74/conv3d_390/BiasAddBiasAdd#model_74/conv3d_390/Conv3D:output:02model_74/conv3d_390/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_74/conv3d_390/BiasAddм
model_74/conv3d_390/SoftplusSoftplus$model_74/conv3d_390/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_74/conv3d_390/Softplus╖
%model_74/tf.reshape_838/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_74/tf.reshape_838/Reshape/shapeє
model_74/tf.reshape_838/ReshapeReshape*model_74/conv3d_390/Softplus:activations:0.model_74/tf.reshape_838/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_74/tf.reshape_838/Reshape│
#model_74/tf.tile_419/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_74/tf.tile_419/Tile/multiplesр
model_74/tf.tile_419/TileTile(model_74/tf.reshape_838/Reshape:output:0,model_74/tf.tile_419/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_74/tf.tile_419/Tileл
%model_74/tf.reshape_839/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_74/tf.reshape_839/Reshape/shape▀
model_74/tf.reshape_839/ReshapeReshape"model_74/tf.tile_419/Tile:output:0.model_74/tf.reshape_839/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_74/tf.reshape_839/ReshapeК
"model_74/tf.concat_662/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_74/tf.concat_662/concat/axisФ
model_74/tf.concat_662/concatConcatV2(model_74/tf.reshape_839/Reshape:output:0*model_74/conv3d_388/Softplus:activations:0+model_74/tf.concat_662/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_74/tf.concat_662/concat╒
)model_74/conv3d_391/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_391_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_74/conv3d_391/Conv3D/ReadVariableOpЬ
model_74/conv3d_391/Conv3DConv3D&model_74/tf.concat_662/concat:output:01model_74/conv3d_391/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_391/Conv3D╚
*model_74/conv3d_391/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_391_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_74/conv3d_391/BiasAdd/ReadVariableOpє
model_74/conv3d_391/BiasAddBiasAdd#model_74/conv3d_391/Conv3D:output:02model_74/conv3d_391/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_74/conv3d_391/BiasAddм
model_74/conv3d_391/SoftplusSoftplus$model_74/conv3d_391/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_74/conv3d_391/Softplus╖
%model_74/tf.reshape_840/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_74/tf.reshape_840/Reshape/shapeє
model_74/tf.reshape_840/ReshapeReshape*model_74/conv3d_391/Softplus:activations:0.model_74/tf.reshape_840/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_74/tf.reshape_840/Reshape│
#model_74/tf.tile_420/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_74/tf.tile_420/Tile/multiplesр
model_74/tf.tile_420/TileTile(model_74/tf.reshape_840/Reshape:output:0,model_74/tf.tile_420/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_74/tf.tile_420/Tileл
%model_74/tf.reshape_841/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2'
%model_74/tf.reshape_841/Reshape/shape▀
model_74/tf.reshape_841/ReshapeReshape"model_74/tf.tile_420/Tile:output:0.model_74/tf.reshape_841/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2!
model_74/tf.reshape_841/ReshapeК
"model_74/tf.concat_663/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_74/tf.concat_663/concat/axisФ
model_74/tf.concat_663/concatConcatV2(model_74/tf.reshape_841/Reshape:output:0*model_74/conv3d_387/Softplus:activations:0+model_74/tf.concat_663/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_74/tf.concat_663/concat╒
)model_74/conv3d_392/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_392_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_74/conv3d_392/Conv3D/ReadVariableOpЬ
model_74/conv3d_392/Conv3DConv3D&model_74/tf.concat_663/concat:output:01model_74/conv3d_392/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_392/Conv3D╚
*model_74/conv3d_392/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_392_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_74/conv3d_392/BiasAdd/ReadVariableOpє
model_74/conv3d_392/BiasAddBiasAdd#model_74/conv3d_392/Conv3D:output:02model_74/conv3d_392/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_74/conv3d_392/BiasAddм
model_74/conv3d_392/SoftplusSoftplus$model_74/conv3d_392/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_74/conv3d_392/Softplus╖
%model_74/tf.reshape_842/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2'
%model_74/tf.reshape_842/Reshape/shapeє
model_74/tf.reshape_842/ReshapeReshape*model_74/conv3d_392/Softplus:activations:0.model_74/tf.reshape_842/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2!
model_74/tf.reshape_842/Reshape│
#model_74/tf.tile_421/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_74/tf.tile_421/Tile/multiplesр
model_74/tf.tile_421/TileTile(model_74/tf.reshape_842/Reshape:output:0,model_74/tf.tile_421/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
model_74/tf.tile_421/Tileл
%model_74/tf.reshape_843/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2'
%model_74/tf.reshape_843/Reshape/shape▀
model_74/tf.reshape_843/ReshapeReshape"model_74/tf.tile_421/Tile:output:0.model_74/tf.reshape_843/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2!
model_74/tf.reshape_843/ReshapeК
"model_74/tf.concat_664/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_74/tf.concat_664/concat/axisФ
model_74/tf.concat_664/concatConcatV2(model_74/tf.reshape_843/Reshape:output:0*model_74/conv3d_386/Softplus:activations:0+model_74/tf.concat_664/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
model_74/tf.concat_664/concat╒
)model_74/conv3d_393/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_393_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_74/conv3d_393/Conv3D/ReadVariableOpЬ
model_74/conv3d_393/Conv3DConv3D&model_74/tf.concat_664/concat:output:01model_74/conv3d_393/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_393/Conv3D╚
*model_74/conv3d_393/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_393_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_74/conv3d_393/BiasAdd/ReadVariableOpє
model_74/conv3d_393/BiasAddBiasAdd#model_74/conv3d_393/Conv3D:output:02model_74/conv3d_393/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_74/conv3d_393/BiasAddм
model_74/conv3d_393/SoftplusSoftplus$model_74/conv3d_393/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_74/conv3d_393/Softplus╒
)model_74/conv3d_394/Conv3D/ReadVariableOpReadVariableOp2model_74_conv3d_394_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_74/conv3d_394/Conv3D/ReadVariableOpа
model_74/conv3d_394/Conv3DConv3D*model_74/conv3d_393/Softplus:activations:01model_74/conv3d_394/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_74/conv3d_394/Conv3D╚
*model_74/conv3d_394/BiasAdd/ReadVariableOpReadVariableOp3model_74_conv3d_394_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_74/conv3d_394/BiasAdd/ReadVariableOpє
model_74/conv3d_394/BiasAddBiasAdd#model_74/conv3d_394/Conv3D:output:02model_74/conv3d_394/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
model_74/conv3d_394/BiasAddЛ
IdentityIdentity$model_74/conv3d_394/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity─
NoOpNoOp+^model_74/conv3d_386/BiasAdd/ReadVariableOp*^model_74/conv3d_386/Conv3D/ReadVariableOp+^model_74/conv3d_387/BiasAdd/ReadVariableOp*^model_74/conv3d_387/Conv3D/ReadVariableOp+^model_74/conv3d_388/BiasAdd/ReadVariableOp*^model_74/conv3d_388/Conv3D/ReadVariableOp+^model_74/conv3d_389/BiasAdd/ReadVariableOp*^model_74/conv3d_389/Conv3D/ReadVariableOp+^model_74/conv3d_390/BiasAdd/ReadVariableOp*^model_74/conv3d_390/Conv3D/ReadVariableOp+^model_74/conv3d_391/BiasAdd/ReadVariableOp*^model_74/conv3d_391/Conv3D/ReadVariableOp+^model_74/conv3d_392/BiasAdd/ReadVariableOp*^model_74/conv3d_392/Conv3D/ReadVariableOp+^model_74/conv3d_393/BiasAdd/ReadVariableOp*^model_74/conv3d_393/Conv3D/ReadVariableOp+^model_74/conv3d_394/BiasAdd/ReadVariableOp*^model_74/conv3d_394/Conv3D/ReadVariableOp)^model_74/dense_74/BiasAdd/ReadVariableOp(^model_74/dense_74/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2X
*model_74/conv3d_386/BiasAdd/ReadVariableOp*model_74/conv3d_386/BiasAdd/ReadVariableOp2V
)model_74/conv3d_386/Conv3D/ReadVariableOp)model_74/conv3d_386/Conv3D/ReadVariableOp2X
*model_74/conv3d_387/BiasAdd/ReadVariableOp*model_74/conv3d_387/BiasAdd/ReadVariableOp2V
)model_74/conv3d_387/Conv3D/ReadVariableOp)model_74/conv3d_387/Conv3D/ReadVariableOp2X
*model_74/conv3d_388/BiasAdd/ReadVariableOp*model_74/conv3d_388/BiasAdd/ReadVariableOp2V
)model_74/conv3d_388/Conv3D/ReadVariableOp)model_74/conv3d_388/Conv3D/ReadVariableOp2X
*model_74/conv3d_389/BiasAdd/ReadVariableOp*model_74/conv3d_389/BiasAdd/ReadVariableOp2V
)model_74/conv3d_389/Conv3D/ReadVariableOp)model_74/conv3d_389/Conv3D/ReadVariableOp2X
*model_74/conv3d_390/BiasAdd/ReadVariableOp*model_74/conv3d_390/BiasAdd/ReadVariableOp2V
)model_74/conv3d_390/Conv3D/ReadVariableOp)model_74/conv3d_390/Conv3D/ReadVariableOp2X
*model_74/conv3d_391/BiasAdd/ReadVariableOp*model_74/conv3d_391/BiasAdd/ReadVariableOp2V
)model_74/conv3d_391/Conv3D/ReadVariableOp)model_74/conv3d_391/Conv3D/ReadVariableOp2X
*model_74/conv3d_392/BiasAdd/ReadVariableOp*model_74/conv3d_392/BiasAdd/ReadVariableOp2V
)model_74/conv3d_392/Conv3D/ReadVariableOp)model_74/conv3d_392/Conv3D/ReadVariableOp2X
*model_74/conv3d_393/BiasAdd/ReadVariableOp*model_74/conv3d_393/BiasAdd/ReadVariableOp2V
)model_74/conv3d_393/Conv3D/ReadVariableOp)model_74/conv3d_393/Conv3D/ReadVariableOp2X
*model_74/conv3d_394/BiasAdd/ReadVariableOp*model_74/conv3d_394/BiasAdd/ReadVariableOp2V
)model_74/conv3d_394/Conv3D/ReadVariableOp)model_74/conv3d_394/Conv3D/ReadVariableOp2T
(model_74/dense_74/BiasAdd/ReadVariableOp(model_74/dense_74/BiasAdd/ReadVariableOp2R
'model_74/dense_74/MatMul/ReadVariableOp'model_74/dense_74/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
┴
ж
-__inference_conv3d_394_layer_call_fn_20560405

inputs%
unknown: 
	unknown_0:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_394_layer_call_and_return_conditional_losses_205589572
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:          @@
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_149_layer_call_and_return_conditional_losses_20558845

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
Reshape/shape/4╘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20560211

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
:         2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
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
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
кX
Л
$__inference__traced_restore_20560568
file_prefix@
"assignvariableop_conv3d_386_kernel: 0
"assignvariableop_1_conv3d_386_bias: B
$assignvariableop_2_conv3d_387_kernel: 0
"assignvariableop_3_conv3d_387_bias:B
$assignvariableop_4_conv3d_388_kernel:0
"assignvariableop_5_conv3d_388_bias:B
$assignvariableop_6_conv3d_389_kernel:0
"assignvariableop_7_conv3d_389_bias:4
"assignvariableop_8_dense_74_kernel:@@.
 assignvariableop_9_dense_74_bias:@C
%assignvariableop_10_conv3d_390_kernel:1
#assignvariableop_11_conv3d_390_bias:C
%assignvariableop_12_conv3d_391_kernel:1
#assignvariableop_13_conv3d_391_bias:C
%assignvariableop_14_conv3d_392_kernel:1
#assignvariableop_15_conv3d_392_bias:C
%assignvariableop_16_conv3d_393_kernel:0 1
#assignvariableop_17_conv3d_393_bias: C
%assignvariableop_18_conv3d_394_kernel: 1
#assignvariableop_19_conv3d_394_bias:
identity_21ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9є	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueїBЄB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╕
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
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

Identityб
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_386_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_386_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_387_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_387_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_388_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_388_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_389_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_389_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_74_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_74_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_390_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_390_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_391_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_391_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_392_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_392_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16н
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_393_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17л
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_393_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18н
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_394_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19л
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_394_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЦ
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20f
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_21■
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
х

o
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20560154

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
°
э
&__inference_signature_wrapper_20559636	
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
identityИвStatefulPartitionedCall▄
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
:         @@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *,
f'R%
#__inference__wrapped_model_205585402
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
╓
Е
H__inference_conv3d_394_layer_call_and_return_conditional_losses_20560415

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:          @@
 
_user_specified_nameinputs
БУ
б

F__inference_model_74_layer_call_and_return_conditional_losses_20559295

inputs1
conv3d_386_20559206: !
conv3d_386_20559208: 1
conv3d_387_20559212: !
conv3d_387_20559214:1
conv3d_388_20559218:!
conv3d_388_20559220:1
conv3d_389_20559224:!
conv3d_389_20559226:#
dense_74_20559231:@@
dense_74_20559233:@1
conv3d_390_20559245:!
conv3d_390_20559247:1
conv3d_391_20559258:!
conv3d_391_20559260:1
conv3d_392_20559271:!
conv3d_392_20559273:1
conv3d_393_20559284:0 !
conv3d_393_20559286: 1
conv3d_394_20559289: !
conv3d_394_20559291:
identityИв"conv3d_386/StatefulPartitionedCallв"conv3d_387/StatefulPartitionedCallв"conv3d_388/StatefulPartitionedCallв"conv3d_389/StatefulPartitionedCallв"conv3d_390/StatefulPartitionedCallв"conv3d_391/StatefulPartitionedCallв"conv3d_392/StatefulPartitionedCallв"conv3d_393/StatefulPartitionedCallв"conv3d_394/StatefulPartitionedCallв dense_74/StatefulPartitionedCall╡
0tf.__operators__.getitem_484/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_484/strided_slice/stack╣
2tf.__operators__.getitem_484/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_484/strided_slice/stack_1╣
2tf.__operators__.getitem_484/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_484/strided_slice/stack_2Т
*tf.__operators__.getitem_484/strided_sliceStridedSliceinputs9tf.__operators__.getitem_484/strided_slice/stack:output:0;tf.__operators__.getitem_484/strided_slice/stack_1:output:0;tf.__operators__.getitem_484/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_484/strided_slice╗
#range_conversion_74/PartitionedCallPartitionedCall3tf.__operators__.getitem_484/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_205586832%
#range_conversion_74/PartitionedCall╡
0tf.__operators__.getitem_485/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_485/strided_slice/stack╣
2tf.__operators__.getitem_485/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_485/strided_slice/stack_1╣
2tf.__operators__.getitem_485/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_485/strided_slice/stack_2Т
*tf.__operators__.getitem_485/strided_sliceStridedSliceinputs9tf.__operators__.getitem_485/strided_slice/stack:output:0;tf.__operators__.getitem_485/strided_slice/stack_1:output:0;tf.__operators__.getitem_485/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_485/strided_slicex
tf.concat_660/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_660/concat/axisЖ
tf.concat_660/concatConcatV2,range_conversion_74/PartitionedCall:output:03tf.__operators__.getitem_485/strided_slice:output:0"tf.concat_660/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_660/concat╥
"conv3d_386/StatefulPartitionedCallStatefulPartitionedCalltf.concat_660/concat:output:0conv3d_386_20559206conv3d_386_20559208*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_386_layer_call_and_return_conditional_losses_205587022$
"conv3d_386/StatefulPartitionedCall╣
%average_pooling3d_156/PartitionedCallPartitionedCall+conv3d_386/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:            * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_205587162'
%average_pooling3d_156/PartitionedCallу
"conv3d_387/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_156/PartitionedCall:output:0conv3d_387_20559212conv3d_387_20559214*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_387_layer_call_and_return_conditional_losses_205587292$
"conv3d_387/StatefulPartitionedCall╣
%average_pooling3d_157/PartitionedCallPartitionedCall+conv3d_387/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_205587432'
%average_pooling3d_157/PartitionedCallу
"conv3d_388/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_157/PartitionedCall:output:0conv3d_388_20559218conv3d_388_20559220*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_388_layer_call_and_return_conditional_losses_205587562$
"conv3d_388/StatefulPartitionedCall╣
%average_pooling3d_158/PartitionedCallPartitionedCall+conv3d_388/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_205587702'
%average_pooling3d_158/PartitionedCallу
"conv3d_389/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_158/PartitionedCall:output:0conv3d_389_20559224conv3d_389_20559226*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_389_layer_call_and_return_conditional_losses_205587832$
"conv3d_389/StatefulPartitionedCall╣
%average_pooling3d_159/PartitionedCallPartitionedCall+conv3d_389/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_205587972'
%average_pooling3d_159/PartitionedCallТ
reshape_148/PartitionedCallPartitionedCall.average_pooling3d_159/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_148_layer_call_and_return_conditional_losses_205588112
reshape_148/PartitionedCall├
 dense_74/StatefulPartitionedCallStatefulPartitionedCall$reshape_148/PartitionedCall:output:0dense_74_20559231dense_74_20559233*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_74_layer_call_and_return_conditional_losses_205588242"
 dense_74/StatefulPartitionedCallЩ
reshape_149/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_149_layer_call_and_return_conditional_losses_205588452
reshape_149/PartitionedCallе
tf.reshape_836/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_836/Reshape/shape╥
tf.reshape_836/ReshapeReshape$reshape_149/PartitionedCall:output:0%tf.reshape_836/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_836/Reshapeб
tf.tile_418/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_418/Tile/multiples╝
tf.tile_418/TileTiletf.reshape_836/Reshape:output:0#tf.tile_418/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_418/TileЩ
tf.reshape_837/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_837/Reshape/shape╗
tf.reshape_837/ReshapeReshapetf.tile_418/Tile:output:0%tf.reshape_837/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_837/Reshapex
tf.concat_661/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_661/concat/axisё
tf.concat_661/concatConcatV2tf.reshape_837/Reshape:output:0+conv3d_389/StatefulPartitionedCall:output:0"tf.concat_661/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_661/concat╥
"conv3d_390/StatefulPartitionedCallStatefulPartitionedCalltf.concat_661/concat:output:0conv3d_390_20559245conv3d_390_20559247*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_390_layer_call_and_return_conditional_losses_205588662$
"conv3d_390/StatefulPartitionedCallе
tf.reshape_838/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_838/Reshape/shape┘
tf.reshape_838/ReshapeReshape+conv3d_390/StatefulPartitionedCall:output:0%tf.reshape_838/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_838/Reshapeб
tf.tile_419/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_419/Tile/multiples╝
tf.tile_419/TileTiletf.reshape_838/Reshape:output:0#tf.tile_419/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_419/TileЩ
tf.reshape_839/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_839/Reshape/shape╗
tf.reshape_839/ReshapeReshapetf.tile_419/Tile:output:0%tf.reshape_839/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_839/Reshapex
tf.concat_662/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_662/concat/axisё
tf.concat_662/concatConcatV2tf.reshape_839/Reshape:output:0+conv3d_388/StatefulPartitionedCall:output:0"tf.concat_662/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_662/concat╥
"conv3d_391/StatefulPartitionedCallStatefulPartitionedCalltf.concat_662/concat:output:0conv3d_391_20559258conv3d_391_20559260*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_391_layer_call_and_return_conditional_losses_205588912$
"conv3d_391/StatefulPartitionedCallе
tf.reshape_840/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_840/Reshape/shape┘
tf.reshape_840/ReshapeReshape+conv3d_391/StatefulPartitionedCall:output:0%tf.reshape_840/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_840/Reshapeб
tf.tile_420/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_420/Tile/multiples╝
tf.tile_420/TileTiletf.reshape_840/Reshape:output:0#tf.tile_420/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_420/TileЩ
tf.reshape_841/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_841/Reshape/shape╗
tf.reshape_841/ReshapeReshapetf.tile_420/Tile:output:0%tf.reshape_841/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_841/Reshapex
tf.concat_663/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_663/concat/axisё
tf.concat_663/concatConcatV2tf.reshape_841/Reshape:output:0+conv3d_387/StatefulPartitionedCall:output:0"tf.concat_663/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_663/concat╥
"conv3d_392/StatefulPartitionedCallStatefulPartitionedCalltf.concat_663/concat:output:0conv3d_392_20559271conv3d_392_20559273*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_392_layer_call_and_return_conditional_losses_205589162$
"conv3d_392/StatefulPartitionedCallе
tf.reshape_842/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_842/Reshape/shape┘
tf.reshape_842/ReshapeReshape+conv3d_392/StatefulPartitionedCall:output:0%tf.reshape_842/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_842/Reshapeб
tf.tile_421/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_421/Tile/multiples╝
tf.tile_421/TileTiletf.reshape_842/Reshape:output:0#tf.tile_421/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_421/TileЩ
tf.reshape_843/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_843/Reshape/shape╗
tf.reshape_843/ReshapeReshapetf.tile_421/Tile:output:0%tf.reshape_843/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_843/Reshapex
tf.concat_664/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_664/concat/axisё
tf.concat_664/concatConcatV2tf.reshape_843/Reshape:output:0+conv3d_386/StatefulPartitionedCall:output:0"tf.concat_664/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_664/concat╥
"conv3d_393/StatefulPartitionedCallStatefulPartitionedCalltf.concat_664/concat:output:0conv3d_393_20559284conv3d_393_20559286*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_393_layer_call_and_return_conditional_losses_205589412$
"conv3d_393/StatefulPartitionedCallр
"conv3d_394/StatefulPartitionedCallStatefulPartitionedCall+conv3d_393/StatefulPartitionedCall:output:0conv3d_394_20559289conv3d_394_20559291*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_394_layer_call_and_return_conditional_losses_205589572$
"conv3d_394/StatefulPartitionedCallТ
IdentityIdentity+conv3d_394/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_386/StatefulPartitionedCall#^conv3d_387/StatefulPartitionedCall#^conv3d_388/StatefulPartitionedCall#^conv3d_389/StatefulPartitionedCall#^conv3d_390/StatefulPartitionedCall#^conv3d_391/StatefulPartitionedCall#^conv3d_392/StatefulPartitionedCall#^conv3d_393/StatefulPartitionedCall#^conv3d_394/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_386/StatefulPartitionedCall"conv3d_386/StatefulPartitionedCall2H
"conv3d_387/StatefulPartitionedCall"conv3d_387/StatefulPartitionedCall2H
"conv3d_388/StatefulPartitionedCall"conv3d_388/StatefulPartitionedCall2H
"conv3d_389/StatefulPartitionedCall"conv3d_389/StatefulPartitionedCall2H
"conv3d_390/StatefulPartitionedCall"conv3d_390/StatefulPartitionedCall2H
"conv3d_391/StatefulPartitionedCall"conv3d_391/StatefulPartitionedCall2H
"conv3d_392/StatefulPartitionedCall"conv3d_392/StatefulPartitionedCall2H
"conv3d_393/StatefulPartitionedCall"conv3d_393/StatefulPartitionedCall2H
"conv3d_394/StatefulPartitionedCall"conv3d_394/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_390_layer_call_and_return_conditional_losses_20560336

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_148_layer_call_and_return_conditional_losses_20560276

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
:         @2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_390_layer_call_and_return_conditional_losses_20558866

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ж
T
8__inference_average_pooling3d_156_layer_call_fn_20560092

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_205585532
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
Х
T
8__inference_average_pooling3d_158_layer_call_fn_20560193

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_205587702
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_148_layer_call_and_return_conditional_losses_20558811

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
:         @2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20560115

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
:         @@ 2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:            *
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
:            2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          @@:[ W
3
_output_shapes!
:          @@
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_389_layer_call_fn_20560220

inputs%
unknown:
	unknown_0:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_389_layer_call_and_return_conditional_losses_205587832
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_388_layer_call_fn_20560172

inputs%
unknown:
	unknown_0:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_388_layer_call_and_return_conditional_losses_205587562
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_392_layer_call_and_return_conditional_losses_20558916

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
¤Т
а

F__inference_model_74_layer_call_and_return_conditional_losses_20559589	
input1
conv3d_386_20559500: !
conv3d_386_20559502: 1
conv3d_387_20559506: !
conv3d_387_20559508:1
conv3d_388_20559512:!
conv3d_388_20559514:1
conv3d_389_20559518:!
conv3d_389_20559520:#
dense_74_20559525:@@
dense_74_20559527:@1
conv3d_390_20559539:!
conv3d_390_20559541:1
conv3d_391_20559552:!
conv3d_391_20559554:1
conv3d_392_20559565:!
conv3d_392_20559567:1
conv3d_393_20559578:0 !
conv3d_393_20559580: 1
conv3d_394_20559583: !
conv3d_394_20559585:
identityИв"conv3d_386/StatefulPartitionedCallв"conv3d_387/StatefulPartitionedCallв"conv3d_388/StatefulPartitionedCallв"conv3d_389/StatefulPartitionedCallв"conv3d_390/StatefulPartitionedCallв"conv3d_391/StatefulPartitionedCallв"conv3d_392/StatefulPartitionedCallв"conv3d_393/StatefulPartitionedCallв"conv3d_394/StatefulPartitionedCallв dense_74/StatefulPartitionedCall╡
0tf.__operators__.getitem_484/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_484/strided_slice/stack╣
2tf.__operators__.getitem_484/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_484/strided_slice/stack_1╣
2tf.__operators__.getitem_484/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_484/strided_slice/stack_2С
*tf.__operators__.getitem_484/strided_sliceStridedSliceinput9tf.__operators__.getitem_484/strided_slice/stack:output:0;tf.__operators__.getitem_484/strided_slice/stack_1:output:0;tf.__operators__.getitem_484/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_484/strided_slice╗
#range_conversion_74/PartitionedCallPartitionedCall3tf.__operators__.getitem_484/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_205586832%
#range_conversion_74/PartitionedCall╡
0tf.__operators__.getitem_485/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_485/strided_slice/stack╣
2tf.__operators__.getitem_485/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_485/strided_slice/stack_1╣
2tf.__operators__.getitem_485/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_485/strided_slice/stack_2С
*tf.__operators__.getitem_485/strided_sliceStridedSliceinput9tf.__operators__.getitem_485/strided_slice/stack:output:0;tf.__operators__.getitem_485/strided_slice/stack_1:output:0;tf.__operators__.getitem_485/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_485/strided_slicex
tf.concat_660/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_660/concat/axisЖ
tf.concat_660/concatConcatV2,range_conversion_74/PartitionedCall:output:03tf.__operators__.getitem_485/strided_slice:output:0"tf.concat_660/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_660/concat╥
"conv3d_386/StatefulPartitionedCallStatefulPartitionedCalltf.concat_660/concat:output:0conv3d_386_20559500conv3d_386_20559502*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_386_layer_call_and_return_conditional_losses_205587022$
"conv3d_386/StatefulPartitionedCall╣
%average_pooling3d_156/PartitionedCallPartitionedCall+conv3d_386/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:            * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_205587162'
%average_pooling3d_156/PartitionedCallу
"conv3d_387/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_156/PartitionedCall:output:0conv3d_387_20559506conv3d_387_20559508*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_387_layer_call_and_return_conditional_losses_205587292$
"conv3d_387/StatefulPartitionedCall╣
%average_pooling3d_157/PartitionedCallPartitionedCall+conv3d_387/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_205587432'
%average_pooling3d_157/PartitionedCallу
"conv3d_388/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_157/PartitionedCall:output:0conv3d_388_20559512conv3d_388_20559514*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_388_layer_call_and_return_conditional_losses_205587562$
"conv3d_388/StatefulPartitionedCall╣
%average_pooling3d_158/PartitionedCallPartitionedCall+conv3d_388/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_205587702'
%average_pooling3d_158/PartitionedCallу
"conv3d_389/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_158/PartitionedCall:output:0conv3d_389_20559518conv3d_389_20559520*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_389_layer_call_and_return_conditional_losses_205587832$
"conv3d_389/StatefulPartitionedCall╣
%average_pooling3d_159/PartitionedCallPartitionedCall+conv3d_389/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_205587972'
%average_pooling3d_159/PartitionedCallТ
reshape_148/PartitionedCallPartitionedCall.average_pooling3d_159/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_148_layer_call_and_return_conditional_losses_205588112
reshape_148/PartitionedCall├
 dense_74/StatefulPartitionedCallStatefulPartitionedCall$reshape_148/PartitionedCall:output:0dense_74_20559525dense_74_20559527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_dense_74_layer_call_and_return_conditional_losses_205588242"
 dense_74/StatefulPartitionedCallЩ
reshape_149/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_149_layer_call_and_return_conditional_losses_205588452
reshape_149/PartitionedCallе
tf.reshape_836/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_836/Reshape/shape╥
tf.reshape_836/ReshapeReshape$reshape_149/PartitionedCall:output:0%tf.reshape_836/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_836/Reshapeб
tf.tile_418/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_418/Tile/multiples╝
tf.tile_418/TileTiletf.reshape_836/Reshape:output:0#tf.tile_418/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_418/TileЩ
tf.reshape_837/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_837/Reshape/shape╗
tf.reshape_837/ReshapeReshapetf.tile_418/Tile:output:0%tf.reshape_837/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_837/Reshapex
tf.concat_661/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_661/concat/axisё
tf.concat_661/concatConcatV2tf.reshape_837/Reshape:output:0+conv3d_389/StatefulPartitionedCall:output:0"tf.concat_661/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_661/concat╥
"conv3d_390/StatefulPartitionedCallStatefulPartitionedCalltf.concat_661/concat:output:0conv3d_390_20559539conv3d_390_20559541*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_390_layer_call_and_return_conditional_losses_205588662$
"conv3d_390/StatefulPartitionedCallе
tf.reshape_838/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_838/Reshape/shape┘
tf.reshape_838/ReshapeReshape+conv3d_390/StatefulPartitionedCall:output:0%tf.reshape_838/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_838/Reshapeб
tf.tile_419/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_419/Tile/multiples╝
tf.tile_419/TileTiletf.reshape_838/Reshape:output:0#tf.tile_419/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_419/TileЩ
tf.reshape_839/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_839/Reshape/shape╗
tf.reshape_839/ReshapeReshapetf.tile_419/Tile:output:0%tf.reshape_839/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_839/Reshapex
tf.concat_662/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_662/concat/axisё
tf.concat_662/concatConcatV2tf.reshape_839/Reshape:output:0+conv3d_388/StatefulPartitionedCall:output:0"tf.concat_662/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_662/concat╥
"conv3d_391/StatefulPartitionedCallStatefulPartitionedCalltf.concat_662/concat:output:0conv3d_391_20559552conv3d_391_20559554*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_391_layer_call_and_return_conditional_losses_205588912$
"conv3d_391/StatefulPartitionedCallе
tf.reshape_840/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_840/Reshape/shape┘
tf.reshape_840/ReshapeReshape+conv3d_391/StatefulPartitionedCall:output:0%tf.reshape_840/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_840/Reshapeб
tf.tile_420/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_420/Tile/multiples╝
tf.tile_420/TileTiletf.reshape_840/Reshape:output:0#tf.tile_420/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_420/TileЩ
tf.reshape_841/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_841/Reshape/shape╗
tf.reshape_841/ReshapeReshapetf.tile_420/Tile:output:0%tf.reshape_841/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_841/Reshapex
tf.concat_663/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_663/concat/axisё
tf.concat_663/concatConcatV2tf.reshape_841/Reshape:output:0+conv3d_387/StatefulPartitionedCall:output:0"tf.concat_663/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_663/concat╥
"conv3d_392/StatefulPartitionedCallStatefulPartitionedCalltf.concat_663/concat:output:0conv3d_392_20559565conv3d_392_20559567*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_392_layer_call_and_return_conditional_losses_205589162$
"conv3d_392/StatefulPartitionedCallе
tf.reshape_842/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_842/Reshape/shape┘
tf.reshape_842/ReshapeReshape+conv3d_392/StatefulPartitionedCall:output:0%tf.reshape_842/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_842/Reshapeб
tf.tile_421/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_421/Tile/multiples╝
tf.tile_421/TileTiletf.reshape_842/Reshape:output:0#tf.tile_421/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_421/TileЩ
tf.reshape_843/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_843/Reshape/shape╗
tf.reshape_843/ReshapeReshapetf.tile_421/Tile:output:0%tf.reshape_843/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_843/Reshapex
tf.concat_664/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_664/concat/axisё
tf.concat_664/concatConcatV2tf.reshape_843/Reshape:output:0+conv3d_386/StatefulPartitionedCall:output:0"tf.concat_664/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_664/concat╥
"conv3d_393/StatefulPartitionedCallStatefulPartitionedCalltf.concat_664/concat:output:0conv3d_393_20559578conv3d_393_20559580*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:          @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_393_layer_call_and_return_conditional_losses_205589412$
"conv3d_393/StatefulPartitionedCallр
"conv3d_394/StatefulPartitionedCallStatefulPartitionedCall+conv3d_393/StatefulPartitionedCall:output:0conv3d_394_20559583conv3d_394_20559585*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_394_layer_call_and_return_conditional_losses_205589572$
"conv3d_394/StatefulPartitionedCallТ
IdentityIdentity+conv3d_394/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_386/StatefulPartitionedCall#^conv3d_387/StatefulPartitionedCall#^conv3d_388/StatefulPartitionedCall#^conv3d_389/StatefulPartitionedCall#^conv3d_390/StatefulPartitionedCall#^conv3d_391/StatefulPartitionedCall#^conv3d_392/StatefulPartitionedCall#^conv3d_393/StatefulPartitionedCall#^conv3d_394/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_386/StatefulPartitionedCall"conv3d_386/StatefulPartitionedCall2H
"conv3d_387/StatefulPartitionedCall"conv3d_387/StatefulPartitionedCall2H
"conv3d_388/StatefulPartitionedCall"conv3d_388/StatefulPartitionedCall2H
"conv3d_389/StatefulPartitionedCall"conv3d_389/StatefulPartitionedCall2H
"conv3d_390/StatefulPartitionedCall"conv3d_390/StatefulPartitionedCall2H
"conv3d_391/StatefulPartitionedCall"conv3d_391/StatefulPartitionedCall2H
"conv3d_392/StatefulPartitionedCall"conv3d_392/StatefulPartitionedCall2H
"conv3d_393/StatefulPartitionedCall"conv3d_393/StatefulPartitionedCall2H
"conv3d_394/StatefulPartitionedCall"conv3d_394/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
ж
T
8__inference_average_pooling3d_159_layer_call_fn_20560236

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_205586432
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
Э
V
6__inference_range_conversion_74_layer_call_fn_20560055

parameters
identityъ
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         @@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_205586832
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@:_ [
3
_output_shapes!
:         @@
$
_user_specified_name
parameters
х

o
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20558583

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20558743

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
:           2
	transposeо
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
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
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
щ
J
.__inference_reshape_148_layer_call_fn_20560264

inputs
identity╥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *R
fMRK
I__inference_reshape_148_layer_call_and_return_conditional_losses_205588112
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_392_layer_call_fn_20560365

inputs%
unknown:
	unknown_0:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_392_layer_call_and_return_conditional_losses_205589162
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20560106

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
╫	
q
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_20558683

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
:         @@2
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
:         @@2	
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
:         @@2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:         @@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@:_ [
3
_output_shapes!
:         @@
$
_user_specified_name
parameters
Х
T
8__inference_average_pooling3d_157_layer_call_fn_20560145

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_205587432
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╓
Е
H__inference_conv3d_394_layer_call_and_return_conditional_losses_20558957

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:          @@
 
_user_specified_nameinputs
Х
T
8__inference_average_pooling3d_159_layer_call_fn_20560241

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_205587972
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_393_layer_call_and_return_conditional_losses_20558941

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:          @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:          @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         0@@
 
_user_specified_nameinputs
Ф
ў
F__inference_dense_74_layer_call_and_return_conditional_losses_20560296

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:         @2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_391_layer_call_fn_20560345

inputs%
unknown:
	unknown_0:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_391_layer_call_and_return_conditional_losses_205588912
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
г
є
+__inference_model_74_layer_call_fn_20559726

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
identityИвStatefulPartitionedCallА
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
:         @@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_74_layer_call_and_return_conditional_losses_205592952
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20560250

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permж
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transpose╥
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
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
transpose_1/perm╕
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
ж
T
8__inference_average_pooling3d_158_layer_call_fn_20560188

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *\
fWRU
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_205586132
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┴
serving_defaultн
C
input:
serving_default_input:0         @@J

conv3d_394<
StatefulPartitionedCall:0         @@tensorflow/serving/predict:уж
╫
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
Ё__call__
ё_default_save_signature
+Є&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
+	keras_api"
_tf_keras_layer
з
,	variables
-regularization_losses
.trainable_variables
/	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
(
0	keras_api"
_tf_keras_layer
(
1	keras_api"
_tf_keras_layer
╜

2kernel
3bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
ї__call__
+Ў&call_and_return_all_conditional_losses"
_tf_keras_layer
з
8	variables
9regularization_losses
:trainable_variables
;	keras_api
ў__call__
+°&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
∙__call__
+·&call_and_return_all_conditional_losses"
_tf_keras_layer
з
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
√__call__
+№&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Fkernel
Gbias
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
¤__call__
+■&call_and_return_all_conditional_losses"
_tf_keras_layer
з
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
 __call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Pkernel
Qbias
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
з
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_layer
з
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

^kernel
_bias
`	variables
aregularization_losses
btrainable_variables
c	keras_api
З__call__
+И&call_and_return_all_conditional_losses"
_tf_keras_layer
з
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"
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
╜

lkernel
mbias
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
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
╜

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
Н__call__
+О&call_and_return_all_conditional_losses"
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
├
Аkernel
	Бbias
В	variables
Гregularization_losses
Дtrainable_variables
Е	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
)
Ж	keras_api"
_tf_keras_layer
)
З	keras_api"
_tf_keras_layer
)
И	keras_api"
_tf_keras_layer
)
Й	keras_api"
_tf_keras_layer
├
Кkernel
	Лbias
М	variables
Нregularization_losses
Оtrainable_variables
П	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Рkernel
	Сbias
Т	variables
Уregularization_losses
Фtrainable_variables
Х	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
╝
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
А14
Б15
К16
Л17
Р18
С19"
trackable_list_wrapper
╝
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
А14
Б15
К16
Л17
Р18
С19"
trackable_list_wrapper
╙
Цnon_trainable_variables
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
&regularization_losses
Ъlayers
'	variables
(trainable_variables
Ё__call__
ё_default_save_signature
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
-
Хserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Ыnon_trainable_variables
,	variables
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
-regularization_losses
Яlayers
.trainable_variables
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/  2conv3d_386/kernel
:  2conv3d_386/bias
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
╡
аnon_trainable_variables
4	variables
бmetrics
 вlayer_regularization_losses
гlayer_metrics
5regularization_losses
дlayers
6trainable_variables
ї__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
еnon_trainable_variables
8	variables
жmetrics
 зlayer_regularization_losses
иlayer_metrics
9regularization_losses
йlayers
:trainable_variables
ў__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_387/kernel
: 2conv3d_387/bias
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
╡
кnon_trainable_variables
>	variables
лmetrics
 мlayer_regularization_losses
нlayer_metrics
?regularization_losses
оlayers
@trainable_variables
∙__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
пnon_trainable_variables
B	variables
░metrics
 ▒layer_regularization_losses
▓layer_metrics
Cregularization_losses
│layers
Dtrainable_variables
√__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_388/kernel
: 2conv3d_388/bias
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
╡
┤non_trainable_variables
H	variables
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Iregularization_losses
╕layers
Jtrainable_variables
¤__call__
+■&call_and_return_all_conditional_losses
'■"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╣non_trainable_variables
L	variables
║metrics
 ╗layer_regularization_losses
╝layer_metrics
Mregularization_losses
╜layers
Ntrainable_variables
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_389/kernel
: 2conv3d_389/bias
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
╡
╛non_trainable_variables
R	variables
┐metrics
 └layer_regularization_losses
┴layer_metrics
Sregularization_losses
┬layers
Ttrainable_variables
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
├non_trainable_variables
V	variables
─metrics
 ┼layer_regularization_losses
╞layer_metrics
Wregularization_losses
╟layers
Xtrainable_variables
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╚non_trainable_variables
Z	variables
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
[regularization_losses
╠layers
\trainable_variables
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_74/kernel
:@ 2dense_74/bias
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
╡
═non_trainable_variables
`	variables
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
aregularization_losses
╤layers
btrainable_variables
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╥non_trainable_variables
d	variables
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
eregularization_losses
╓layers
ftrainable_variables
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_390/kernel
: 2conv3d_390/bias
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
╡
╫non_trainable_variables
n	variables
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
oregularization_losses
█layers
ptrainable_variables
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_391/kernel
: 2conv3d_391/bias
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
╡
▄non_trainable_variables
x	variables
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
yregularization_losses
рlayers
ztrainable_variables
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_392/kernel
: 2conv3d_392/bias
0
А0
Б1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
╕
сnon_trainable_variables
В	variables
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Гregularization_losses
хlayers
Дtrainable_variables
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/0  2conv3d_393/kernel
:  2conv3d_393/bias
0
К0
Л1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
╕
цnon_trainable_variables
М	variables
чmetrics
 шlayer_regularization_losses
щlayer_metrics
Нregularization_losses
ъlayers
Оtrainable_variables
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_394/kernel
: 2conv3d_394/bias
0
Р0
С1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
╕
ыnon_trainable_variables
Т	variables
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
Уregularization_losses
яlayers
Фtrainable_variables
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╛
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
·2ў
+__inference_model_74_layer_call_fn_20559007
+__inference_model_74_layer_call_fn_20559681
+__inference_model_74_layer_call_fn_20559726
+__inference_model_74_layer_call_fn_20559383└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
╠B╔
#__inference__wrapped_model_20558540input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ц2у
F__inference_model_74_layer_call_and_return_conditional_losses_20559888
F__inference_model_74_layer_call_and_return_conditional_losses_20560050
F__inference_model_74_layer_call_and_return_conditional_losses_20559486
F__inference_model_74_layer_call_and_return_conditional_losses_20559589└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
ф2с
6__inference_range_conversion_74_layer_call_fn_20560055ж
Э▓Щ
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
annotationsк *
 
 2№
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_20560067ж
Э▓Щ
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
annotationsк *
 
╫2╘
-__inference_conv3d_386_layer_call_fn_20560076в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_386_layer_call_and_return_conditional_losses_20560087в
Щ▓Х
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
annotationsк *
 
Ь2Щ
8__inference_average_pooling3d_156_layer_call_fn_20560092
8__inference_average_pooling3d_156_layer_call_fn_20560097в
Щ▓Х
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
annotationsк *
 
╥2╧
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20560106
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20560115в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_387_layer_call_fn_20560124в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_387_layer_call_and_return_conditional_losses_20560135в
Щ▓Х
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
annotationsк *
 
Ь2Щ
8__inference_average_pooling3d_157_layer_call_fn_20560140
8__inference_average_pooling3d_157_layer_call_fn_20560145в
Щ▓Х
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
annotationsк *
 
╥2╧
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20560154
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20560163в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_388_layer_call_fn_20560172в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_388_layer_call_and_return_conditional_losses_20560183в
Щ▓Х
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
annotationsк *
 
Ь2Щ
8__inference_average_pooling3d_158_layer_call_fn_20560188
8__inference_average_pooling3d_158_layer_call_fn_20560193в
Щ▓Х
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
annotationsк *
 
╥2╧
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20560202
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20560211в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_389_layer_call_fn_20560220в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_389_layer_call_and_return_conditional_losses_20560231в
Щ▓Х
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
annotationsк *
 
Ь2Щ
8__inference_average_pooling3d_159_layer_call_fn_20560236
8__inference_average_pooling3d_159_layer_call_fn_20560241в
Щ▓Х
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
annotationsк *
 
╥2╧
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20560250
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20560259в
Щ▓Х
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
annotationsк *
 
╪2╒
.__inference_reshape_148_layer_call_fn_20560264в
Щ▓Х
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
annotationsк *
 
є2Ё
I__inference_reshape_148_layer_call_and_return_conditional_losses_20560276в
Щ▓Х
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
annotationsк *
 
╒2╥
+__inference_dense_74_layer_call_fn_20560285в
Щ▓Х
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
annotationsк *
 
Ё2э
F__inference_dense_74_layer_call_and_return_conditional_losses_20560296в
Щ▓Х
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
annotationsк *
 
╪2╒
.__inference_reshape_149_layer_call_fn_20560301в
Щ▓Х
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
annotationsк *
 
є2Ё
I__inference_reshape_149_layer_call_and_return_conditional_losses_20560316в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_390_layer_call_fn_20560325в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_390_layer_call_and_return_conditional_losses_20560336в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_391_layer_call_fn_20560345в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_391_layer_call_and_return_conditional_losses_20560356в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_392_layer_call_fn_20560365в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_392_layer_call_and_return_conditional_losses_20560376в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_393_layer_call_fn_20560385в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_393_layer_call_and_return_conditional_losses_20560396в
Щ▓Х
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
annotationsк *
 
╫2╘
-__inference_conv3d_394_layer_call_fn_20560405в
Щ▓Х
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
annotationsк *
 
Є2я
H__inference_conv3d_394_layer_call_and_return_conditional_losses_20560415в
Щ▓Х
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
annotationsк *
 
╦B╚
&__inference_signature_wrapper_20559636input"Ф
Н▓Й
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
annotationsк *
 ┼
#__inference__wrapped_model_20558540Э23<=FGPQ^_lmvwАБКЛРС:в7
0в-
+К(
input         @@
к "Cк@
>

conv3d_3940К-

conv3d_394         @@Р
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20560106╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_156_layer_call_and_return_conditional_losses_20560115p;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0            
Ъ ш
8__inference_average_pooling3d_156_layer_call_fn_20560092л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_156_layer_call_fn_20560097c;в8
1в.
,К)
inputs          @@
к "$К!            Р
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20560154╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_157_layer_call_and_return_conditional_losses_20560163p;в8
1в.
,К)
inputs           
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_157_layer_call_fn_20560140л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_157_layer_call_fn_20560145c;в8
1в.
,К)
inputs           
к "$К!         Р
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20560202╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_158_layer_call_and_return_conditional_losses_20560211p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_158_layer_call_fn_20560188л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_158_layer_call_fn_20560193c;в8
1в.
,К)
inputs         
к "$К!         Р
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20560250╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_159_layer_call_and_return_conditional_losses_20560259p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_159_layer_call_fn_20560236л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_159_layer_call_fn_20560241c;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_386_layer_call_and_return_conditional_losses_20560087t23;в8
1в.
,К)
inputs         @@
к "1в.
'К$
0          @@
Ъ Ш
-__inference_conv3d_386_layer_call_fn_20560076g23;в8
1в.
,К)
inputs         @@
к "$К!          @@└
H__inference_conv3d_387_layer_call_and_return_conditional_losses_20560135t<=;в8
1в.
,К)
inputs            
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_387_layer_call_fn_20560124g<=;в8
1в.
,К)
inputs            
к "$К!           └
H__inference_conv3d_388_layer_call_and_return_conditional_losses_20560183tFG;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_388_layer_call_fn_20560172gFG;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_389_layer_call_and_return_conditional_losses_20560231tPQ;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_389_layer_call_fn_20560220gPQ;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_390_layer_call_and_return_conditional_losses_20560336tlm;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_390_layer_call_fn_20560325glm;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_391_layer_call_and_return_conditional_losses_20560356tvw;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_391_layer_call_fn_20560345gvw;в8
1в.
,К)
inputs         
к "$К!         ┬
H__inference_conv3d_392_layer_call_and_return_conditional_losses_20560376vАБ;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ъ
-__inference_conv3d_392_layer_call_fn_20560365iАБ;в8
1в.
,К)
inputs           
к "$К!           ┬
H__inference_conv3d_393_layer_call_and_return_conditional_losses_20560396vКЛ;в8
1в.
,К)
inputs         0@@
к "1в.
'К$
0          @@
Ъ Ъ
-__inference_conv3d_393_layer_call_fn_20560385iКЛ;в8
1в.
,К)
inputs         0@@
к "$К!          @@┬
H__inference_conv3d_394_layer_call_and_return_conditional_losses_20560415vРС;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0         @@
Ъ Ъ
-__inference_conv3d_394_layer_call_fn_20560405iРС;в8
1в.
,К)
inputs          @@
к "$К!         @@ж
F__inference_dense_74_layer_call_and_return_conditional_losses_20560296\^_/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_74_layer_call_fn_20560285O^_/в,
%в"
 К
inputs         @
к "К         @▐
F__inference_model_74_layer_call_and_return_conditional_losses_20559486У23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p 

 
к "1в.
'К$
0         @@
Ъ ▐
F__inference_model_74_layer_call_and_return_conditional_losses_20559589У23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p

 
к "1в.
'К$
0         @@
Ъ ▀
F__inference_model_74_layer_call_and_return_conditional_losses_20559888Ф23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p 

 
к "1в.
'К$
0         @@
Ъ ▀
F__inference_model_74_layer_call_and_return_conditional_losses_20560050Ф23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p

 
к "1в.
'К$
0         @@
Ъ ╢
+__inference_model_74_layer_call_fn_20559007Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p 

 
к "$К!         @@╢
+__inference_model_74_layer_call_fn_20559383Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p

 
к "$К!         @@╖
+__inference_model_74_layer_call_fn_20559681З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p 

 
к "$К!         @@╖
+__inference_model_74_layer_call_fn_20559726З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p

 
к "$К!         @@╔
Q__inference_range_conversion_74_layer_call_and_return_conditional_losses_20560067t?в<
5в2
0К-

parameters         @@
к "1в.
'К$
0         @@
Ъ б
6__inference_range_conversion_74_layer_call_fn_20560055g?в<
5в2
0К-

parameters         @@
к "$К!         @@▒
I__inference_reshape_148_layer_call_and_return_conditional_losses_20560276d;в8
1в.
,К)
inputs         
к "%в"
К
0         @
Ъ Й
.__inference_reshape_148_layer_call_fn_20560264W;в8
1в.
,К)
inputs         
к "К         @▒
I__inference_reshape_149_layer_call_and_return_conditional_losses_20560316d/в,
%в"
 К
inputs         @
к "1в.
'К$
0         
Ъ Й
.__inference_reshape_149_layer_call_fn_20560301W/в,
%в"
 К
inputs         @
к "$К!         ╤
&__inference_signature_wrapper_20559636ж23<=FGPQ^_lmvwАБКЛРСCв@
в 
9к6
4
input+К(
input         @@"Cк@
>

conv3d_3940К-

conv3d_394         @@