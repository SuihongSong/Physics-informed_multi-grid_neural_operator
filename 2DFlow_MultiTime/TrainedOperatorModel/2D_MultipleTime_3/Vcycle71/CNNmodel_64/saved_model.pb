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
conv3d_461/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_461/kernel
Г
%conv3d_461/kernel/Read/ReadVariableOpReadVariableOpconv3d_461/kernel**
_output_shapes
: *
dtype0
v
conv3d_461/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_461/bias
o
#conv3d_461/bias/Read/ReadVariableOpReadVariableOpconv3d_461/bias*
_output_shapes
: *
dtype0
К
conv3d_462/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_462/kernel
Г
%conv3d_462/kernel/Read/ReadVariableOpReadVariableOpconv3d_462/kernel**
_output_shapes
: *
dtype0
v
conv3d_462/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_462/bias
o
#conv3d_462/bias/Read/ReadVariableOpReadVariableOpconv3d_462/bias*
_output_shapes
:*
dtype0
К
conv3d_463/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_463/kernel
Г
%conv3d_463/kernel/Read/ReadVariableOpReadVariableOpconv3d_463/kernel**
_output_shapes
:*
dtype0
v
conv3d_463/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_463/bias
o
#conv3d_463/bias/Read/ReadVariableOpReadVariableOpconv3d_463/bias*
_output_shapes
:*
dtype0
К
conv3d_464/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_464/kernel
Г
%conv3d_464/kernel/Read/ReadVariableOpReadVariableOpconv3d_464/kernel**
_output_shapes
:*
dtype0
v
conv3d_464/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_464/bias
o
#conv3d_464/bias/Read/ReadVariableOpReadVariableOpconv3d_464/bias*
_output_shapes
:*
dtype0
z
dense_89/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_89/kernel
s
#dense_89/kernel/Read/ReadVariableOpReadVariableOpdense_89/kernel*
_output_shapes

:@@*
dtype0
r
dense_89/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_89/bias
k
!dense_89/bias/Read/ReadVariableOpReadVariableOpdense_89/bias*
_output_shapes
:@*
dtype0
К
conv3d_465/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_465/kernel
Г
%conv3d_465/kernel/Read/ReadVariableOpReadVariableOpconv3d_465/kernel**
_output_shapes
:*
dtype0
v
conv3d_465/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_465/bias
o
#conv3d_465/bias/Read/ReadVariableOpReadVariableOpconv3d_465/bias*
_output_shapes
:*
dtype0
К
conv3d_466/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_466/kernel
Г
%conv3d_466/kernel/Read/ReadVariableOpReadVariableOpconv3d_466/kernel**
_output_shapes
:*
dtype0
v
conv3d_466/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_466/bias
o
#conv3d_466/bias/Read/ReadVariableOpReadVariableOpconv3d_466/bias*
_output_shapes
:*
dtype0
К
conv3d_467/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_467/kernel
Г
%conv3d_467/kernel/Read/ReadVariableOpReadVariableOpconv3d_467/kernel**
_output_shapes
:*
dtype0
v
conv3d_467/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_467/bias
o
#conv3d_467/bias/Read/ReadVariableOpReadVariableOpconv3d_467/bias*
_output_shapes
:*
dtype0
К
conv3d_468/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_468/kernel
Г
%conv3d_468/kernel/Read/ReadVariableOpReadVariableOpconv3d_468/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_468/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_468/bias
o
#conv3d_468/bias/Read/ReadVariableOpReadVariableOpconv3d_468/bias*
_output_shapes
: *
dtype0
К
conv3d_469/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_469/kernel
Г
%conv3d_469/kernel/Read/ReadVariableOpReadVariableOpconv3d_469/kernel**
_output_shapes
: *
dtype0
v
conv3d_469/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_469/bias
o
#conv3d_469/bias/Read/ReadVariableOpReadVariableOpconv3d_469/bias*
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
VARIABLE_VALUEconv3d_461/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_461/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_462/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_462/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_463/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_463/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_464/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_464/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_89/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_89/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_465/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_465/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_466/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_466/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_467/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_467/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_468/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_468/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_469/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_469/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_461/kernelconv3d_461/biasconv3d_462/kernelconv3d_462/biasconv3d_463/kernelconv3d_463/biasconv3d_464/kernelconv3d_464/biasdense_89/kerneldense_89/biasconv3d_465/kernelconv3d_465/biasconv3d_466/kernelconv3d_466/biasconv3d_467/kernelconv3d_467/biasconv3d_468/kernelconv3d_468/biasconv3d_469/kernelconv3d_469/bias* 
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
&__inference_signature_wrapper_24047136
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
░
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_461/kernel/Read/ReadVariableOp#conv3d_461/bias/Read/ReadVariableOp%conv3d_462/kernel/Read/ReadVariableOp#conv3d_462/bias/Read/ReadVariableOp%conv3d_463/kernel/Read/ReadVariableOp#conv3d_463/bias/Read/ReadVariableOp%conv3d_464/kernel/Read/ReadVariableOp#conv3d_464/bias/Read/ReadVariableOp#dense_89/kernel/Read/ReadVariableOp!dense_89/bias/Read/ReadVariableOp%conv3d_465/kernel/Read/ReadVariableOp#conv3d_465/bias/Read/ReadVariableOp%conv3d_466/kernel/Read/ReadVariableOp#conv3d_466/bias/Read/ReadVariableOp%conv3d_467/kernel/Read/ReadVariableOp#conv3d_467/bias/Read/ReadVariableOp%conv3d_468/kernel/Read/ReadVariableOp#conv3d_468/bias/Read/ReadVariableOp%conv3d_469/kernel/Read/ReadVariableOp#conv3d_469/bias/Read/ReadVariableOpConst*!
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
!__inference__traced_save_24047998
Ы
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_461/kernelconv3d_461/biasconv3d_462/kernelconv3d_462/biasconv3d_463/kernelconv3d_463/biasconv3d_464/kernelconv3d_464/biasdense_89/kerneldense_89/biasconv3d_465/kernelconv3d_465/biasconv3d_466/kernelconv3d_466/biasconv3d_467/kernelconv3d_467/biasconv3d_468/kernelconv3d_468/biasconv3d_469/kernelconv3d_469/bias* 
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
$__inference__traced_restore_24048068БЩ
¤Т
а

F__inference_model_89_layer_call_and_return_conditional_losses_24046986	
input1
conv3d_461_24046897: !
conv3d_461_24046899: 1
conv3d_462_24046903: !
conv3d_462_24046905:1
conv3d_463_24046909:!
conv3d_463_24046911:1
conv3d_464_24046915:!
conv3d_464_24046917:#
dense_89_24046922:@@
dense_89_24046924:@1
conv3d_465_24046936:!
conv3d_465_24046938:1
conv3d_466_24046949:!
conv3d_466_24046951:1
conv3d_467_24046962:!
conv3d_467_24046964:1
conv3d_468_24046975:0 !
conv3d_468_24046977: 1
conv3d_469_24046980: !
conv3d_469_24046982:
identityИв"conv3d_461/StatefulPartitionedCallв"conv3d_462/StatefulPartitionedCallв"conv3d_463/StatefulPartitionedCallв"conv3d_464/StatefulPartitionedCallв"conv3d_465/StatefulPartitionedCallв"conv3d_466/StatefulPartitionedCallв"conv3d_467/StatefulPartitionedCallв"conv3d_468/StatefulPartitionedCallв"conv3d_469/StatefulPartitionedCallв dense_89/StatefulPartitionedCall╡
0tf.__operators__.getitem_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_514/strided_slice/stack╣
2tf.__operators__.getitem_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_514/strided_slice/stack_1╣
2tf.__operators__.getitem_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_514/strided_slice/stack_2С
*tf.__operators__.getitem_514/strided_sliceStridedSliceinput9tf.__operators__.getitem_514/strided_slice/stack:output:0;tf.__operators__.getitem_514/strided_slice/stack_1:output:0;tf.__operators__.getitem_514/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_514/strided_slice╗
#range_conversion_89/PartitionedCallPartitionedCall3tf.__operators__.getitem_514/strided_slice:output:0*
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
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_240461832%
#range_conversion_89/PartitionedCall╡
0tf.__operators__.getitem_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_515/strided_slice/stack╣
2tf.__operators__.getitem_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_515/strided_slice/stack_1╣
2tf.__operators__.getitem_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_515/strided_slice/stack_2С
*tf.__operators__.getitem_515/strided_sliceStridedSliceinput9tf.__operators__.getitem_515/strided_slice/stack:output:0;tf.__operators__.getitem_515/strided_slice/stack_1:output:0;tf.__operators__.getitem_515/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_515/strided_slicex
tf.concat_705/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_705/concat/axisЖ
tf.concat_705/concatConcatV2,range_conversion_89/PartitionedCall:output:03tf.__operators__.getitem_515/strided_slice:output:0"tf.concat_705/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_705/concat╥
"conv3d_461/StatefulPartitionedCallStatefulPartitionedCalltf.concat_705/concat:output:0conv3d_461_24046897conv3d_461_24046899*
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
H__inference_conv3d_461_layer_call_and_return_conditional_losses_240462022$
"conv3d_461/StatefulPartitionedCall╣
%average_pooling3d_186/PartitionedCallPartitionedCall+conv3d_461/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_240462162'
%average_pooling3d_186/PartitionedCallу
"conv3d_462/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_186/PartitionedCall:output:0conv3d_462_24046903conv3d_462_24046905*
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
H__inference_conv3d_462_layer_call_and_return_conditional_losses_240462292$
"conv3d_462/StatefulPartitionedCall╣
%average_pooling3d_187/PartitionedCallPartitionedCall+conv3d_462/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_240462432'
%average_pooling3d_187/PartitionedCallу
"conv3d_463/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_187/PartitionedCall:output:0conv3d_463_24046909conv3d_463_24046911*
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
H__inference_conv3d_463_layer_call_and_return_conditional_losses_240462562$
"conv3d_463/StatefulPartitionedCall╣
%average_pooling3d_188/PartitionedCallPartitionedCall+conv3d_463/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_240462702'
%average_pooling3d_188/PartitionedCallу
"conv3d_464/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_188/PartitionedCall:output:0conv3d_464_24046915conv3d_464_24046917*
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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_240462832$
"conv3d_464/StatefulPartitionedCall╣
%average_pooling3d_189/PartitionedCallPartitionedCall+conv3d_464/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_240462972'
%average_pooling3d_189/PartitionedCallТ
reshape_178/PartitionedCallPartitionedCall.average_pooling3d_189/PartitionedCall:output:0*
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
I__inference_reshape_178_layer_call_and_return_conditional_losses_240463112
reshape_178/PartitionedCall├
 dense_89/StatefulPartitionedCallStatefulPartitionedCall$reshape_178/PartitionedCall:output:0dense_89_24046922dense_89_24046924*
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
F__inference_dense_89_layer_call_and_return_conditional_losses_240463242"
 dense_89/StatefulPartitionedCallЩ
reshape_179/PartitionedCallPartitionedCall)dense_89/StatefulPartitionedCall:output:0*
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
I__inference_reshape_179_layer_call_and_return_conditional_losses_240463452
reshape_179/PartitionedCallе
tf.reshape_896/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_896/Reshape/shape╥
tf.reshape_896/ReshapeReshape$reshape_179/PartitionedCall:output:0%tf.reshape_896/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_896/Reshapeб
tf.tile_448/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_448/Tile/multiples╝
tf.tile_448/TileTiletf.reshape_896/Reshape:output:0#tf.tile_448/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_448/TileЩ
tf.reshape_897/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_897/Reshape/shape╗
tf.reshape_897/ReshapeReshapetf.tile_448/Tile:output:0%tf.reshape_897/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_897/Reshapex
tf.concat_706/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_706/concat/axisё
tf.concat_706/concatConcatV2tf.reshape_897/Reshape:output:0+conv3d_464/StatefulPartitionedCall:output:0"tf.concat_706/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_706/concat╥
"conv3d_465/StatefulPartitionedCallStatefulPartitionedCalltf.concat_706/concat:output:0conv3d_465_24046936conv3d_465_24046938*
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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_240463662$
"conv3d_465/StatefulPartitionedCallе
tf.reshape_898/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_898/Reshape/shape┘
tf.reshape_898/ReshapeReshape+conv3d_465/StatefulPartitionedCall:output:0%tf.reshape_898/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_898/Reshapeб
tf.tile_449/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_449/Tile/multiples╝
tf.tile_449/TileTiletf.reshape_898/Reshape:output:0#tf.tile_449/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_449/TileЩ
tf.reshape_899/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_899/Reshape/shape╗
tf.reshape_899/ReshapeReshapetf.tile_449/Tile:output:0%tf.reshape_899/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_899/Reshapex
tf.concat_707/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_707/concat/axisё
tf.concat_707/concatConcatV2tf.reshape_899/Reshape:output:0+conv3d_463/StatefulPartitionedCall:output:0"tf.concat_707/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_707/concat╥
"conv3d_466/StatefulPartitionedCallStatefulPartitionedCalltf.concat_707/concat:output:0conv3d_466_24046949conv3d_466_24046951*
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
H__inference_conv3d_466_layer_call_and_return_conditional_losses_240463912$
"conv3d_466/StatefulPartitionedCallе
tf.reshape_900/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_900/Reshape/shape┘
tf.reshape_900/ReshapeReshape+conv3d_466/StatefulPartitionedCall:output:0%tf.reshape_900/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_900/Reshapeб
tf.tile_450/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_450/Tile/multiples╝
tf.tile_450/TileTiletf.reshape_900/Reshape:output:0#tf.tile_450/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_450/TileЩ
tf.reshape_901/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_901/Reshape/shape╗
tf.reshape_901/ReshapeReshapetf.tile_450/Tile:output:0%tf.reshape_901/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_901/Reshapex
tf.concat_708/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_708/concat/axisё
tf.concat_708/concatConcatV2tf.reshape_901/Reshape:output:0+conv3d_462/StatefulPartitionedCall:output:0"tf.concat_708/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_708/concat╥
"conv3d_467/StatefulPartitionedCallStatefulPartitionedCalltf.concat_708/concat:output:0conv3d_467_24046962conv3d_467_24046964*
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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_240464162$
"conv3d_467/StatefulPartitionedCallе
tf.reshape_902/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_902/Reshape/shape┘
tf.reshape_902/ReshapeReshape+conv3d_467/StatefulPartitionedCall:output:0%tf.reshape_902/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_902/Reshapeб
tf.tile_451/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_451/Tile/multiples╝
tf.tile_451/TileTiletf.reshape_902/Reshape:output:0#tf.tile_451/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_451/TileЩ
tf.reshape_903/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_903/Reshape/shape╗
tf.reshape_903/ReshapeReshapetf.tile_451/Tile:output:0%tf.reshape_903/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_903/Reshapex
tf.concat_709/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_709/concat/axisё
tf.concat_709/concatConcatV2tf.reshape_903/Reshape:output:0+conv3d_461/StatefulPartitionedCall:output:0"tf.concat_709/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_709/concat╥
"conv3d_468/StatefulPartitionedCallStatefulPartitionedCalltf.concat_709/concat:output:0conv3d_468_24046975conv3d_468_24046977*
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
H__inference_conv3d_468_layer_call_and_return_conditional_losses_240464412$
"conv3d_468/StatefulPartitionedCallр
"conv3d_469/StatefulPartitionedCallStatefulPartitionedCall+conv3d_468/StatefulPartitionedCall:output:0conv3d_469_24046980conv3d_469_24046982*
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
H__inference_conv3d_469_layer_call_and_return_conditional_losses_240464572$
"conv3d_469/StatefulPartitionedCallТ
IdentityIdentity+conv3d_469/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_461/StatefulPartitionedCall#^conv3d_462/StatefulPartitionedCall#^conv3d_463/StatefulPartitionedCall#^conv3d_464/StatefulPartitionedCall#^conv3d_465/StatefulPartitionedCall#^conv3d_466/StatefulPartitionedCall#^conv3d_467/StatefulPartitionedCall#^conv3d_468/StatefulPartitionedCall#^conv3d_469/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_461/StatefulPartitionedCall"conv3d_461/StatefulPartitionedCall2H
"conv3d_462/StatefulPartitionedCall"conv3d_462/StatefulPartitionedCall2H
"conv3d_463/StatefulPartitionedCall"conv3d_463/StatefulPartitionedCall2H
"conv3d_464/StatefulPartitionedCall"conv3d_464/StatefulPartitionedCall2H
"conv3d_465/StatefulPartitionedCall"conv3d_465/StatefulPartitionedCall2H
"conv3d_466/StatefulPartitionedCall"conv3d_466/StatefulPartitionedCall2H
"conv3d_467/StatefulPartitionedCall"conv3d_467/StatefulPartitionedCall2H
"conv3d_468/StatefulPartitionedCall"conv3d_468/StatefulPartitionedCall2H
"conv3d_469/StatefulPartitionedCall"conv3d_469/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
┴
ж
-__inference_conv3d_463_layer_call_fn_24047672

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
H__inference_conv3d_463_layer_call_and_return_conditional_losses_240462562
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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_24047876

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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_24046283

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
М	
o
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24047663

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
ж
T
8__inference_average_pooling3d_188_layer_call_fn_24047688

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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_240461132
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
6__inference_range_conversion_89_layer_call_fn_24047555

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
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_240461832
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
Х
T
8__inference_average_pooling3d_189_layer_call_fn_24047741

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
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_240462972
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
H__inference_conv3d_463_layer_call_and_return_conditional_losses_24047683

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
ж
T
8__inference_average_pooling3d_186_layer_call_fn_24047592

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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_240460532
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
╫	
q
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_24047567

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
╬
Е
H__inference_conv3d_466_layer_call_and_return_conditional_losses_24047856

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
┴
ж
-__inference_conv3d_468_layer_call_fn_24047885

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
H__inference_conv3d_468_layer_call_and_return_conditional_losses_240464412
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
М	
o
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24046243

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
╜ё
╡
F__inference_model_89_layer_call_and_return_conditional_losses_24047550

inputsG
)conv3d_461_conv3d_readvariableop_resource: 8
*conv3d_461_biasadd_readvariableop_resource: G
)conv3d_462_conv3d_readvariableop_resource: 8
*conv3d_462_biasadd_readvariableop_resource:G
)conv3d_463_conv3d_readvariableop_resource:8
*conv3d_463_biasadd_readvariableop_resource:G
)conv3d_464_conv3d_readvariableop_resource:8
*conv3d_464_biasadd_readvariableop_resource:9
'dense_89_matmul_readvariableop_resource:@@6
(dense_89_biasadd_readvariableop_resource:@G
)conv3d_465_conv3d_readvariableop_resource:8
*conv3d_465_biasadd_readvariableop_resource:G
)conv3d_466_conv3d_readvariableop_resource:8
*conv3d_466_biasadd_readvariableop_resource:G
)conv3d_467_conv3d_readvariableop_resource:8
*conv3d_467_biasadd_readvariableop_resource:G
)conv3d_468_conv3d_readvariableop_resource:0 8
*conv3d_468_biasadd_readvariableop_resource: G
)conv3d_469_conv3d_readvariableop_resource: 8
*conv3d_469_biasadd_readvariableop_resource:
identityИв!conv3d_461/BiasAdd/ReadVariableOpв conv3d_461/Conv3D/ReadVariableOpв!conv3d_462/BiasAdd/ReadVariableOpв conv3d_462/Conv3D/ReadVariableOpв!conv3d_463/BiasAdd/ReadVariableOpв conv3d_463/Conv3D/ReadVariableOpв!conv3d_464/BiasAdd/ReadVariableOpв conv3d_464/Conv3D/ReadVariableOpв!conv3d_465/BiasAdd/ReadVariableOpв conv3d_465/Conv3D/ReadVariableOpв!conv3d_466/BiasAdd/ReadVariableOpв conv3d_466/Conv3D/ReadVariableOpв!conv3d_467/BiasAdd/ReadVariableOpв conv3d_467/Conv3D/ReadVariableOpв!conv3d_468/BiasAdd/ReadVariableOpв conv3d_468/Conv3D/ReadVariableOpв!conv3d_469/BiasAdd/ReadVariableOpв conv3d_469/Conv3D/ReadVariableOpвdense_89/BiasAdd/ReadVariableOpвdense_89/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_514/strided_slice/stack╣
2tf.__operators__.getitem_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_514/strided_slice/stack_1╣
2tf.__operators__.getitem_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_514/strided_slice/stack_2Т
*tf.__operators__.getitem_514/strided_sliceStridedSliceinputs9tf.__operators__.getitem_514/strided_slice/stack:output:0;tf.__operators__.getitem_514/strided_slice/stack_1:output:0;tf.__operators__.getitem_514/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_514/strided_slice{
range_conversion_89/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_89/sub/y╨
range_conversion_89/subSub3tf.__operators__.getitem_514/strided_slice:output:0"range_conversion_89/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/subГ
range_conversion_89/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_89/truediv/y╚
range_conversion_89/truedivRealDivrange_conversion_89/sub:z:0&range_conversion_89/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/truediv{
range_conversion_89/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_89/mul/y╝
range_conversion_89/mulMulrange_conversion_89/truediv:z:0"range_conversion_89/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/mul{
range_conversion_89/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_89/add/y║
range_conversion_89/addAddV2range_conversion_89/mul:z:0"range_conversion_89/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/add╡
0tf.__operators__.getitem_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_515/strided_slice/stack╣
2tf.__operators__.getitem_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_515/strided_slice/stack_1╣
2tf.__operators__.getitem_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_515/strided_slice/stack_2Т
*tf.__operators__.getitem_515/strided_sliceStridedSliceinputs9tf.__operators__.getitem_515/strided_slice/stack:output:0;tf.__operators__.getitem_515/strided_slice/stack_1:output:0;tf.__operators__.getitem_515/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_515/strided_slicex
tf.concat_705/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_705/concat/axisї
tf.concat_705/concatConcatV2range_conversion_89/add:z:03tf.__operators__.getitem_515/strided_slice:output:0"tf.concat_705/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_705/concat║
 conv3d_461/Conv3D/ReadVariableOpReadVariableOp)conv3d_461_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_461/Conv3D/ReadVariableOp°
conv3d_461/Conv3DConv3Dtf.concat_705/concat:output:0(conv3d_461/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_461/Conv3Dн
!conv3d_461/BiasAdd/ReadVariableOpReadVariableOp*conv3d_461_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_461/BiasAdd/ReadVariableOp╧
conv3d_461/BiasAddBiasAddconv3d_461/Conv3D:output:0)conv3d_461/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_461/BiasAddС
conv3d_461/SoftplusSoftplusconv3d_461/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_461/Softplusй
$average_pooling3d_186/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_186/transpose/perm▀
average_pooling3d_186/transpose	Transpose!conv3d_461/Softplus:activations:0-average_pooling3d_186/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_186/transposeЁ
average_pooling3d_186/AvgPool3D	AvgPool3D#average_pooling3d_186/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_186/AvgPool3Dн
&average_pooling3d_186/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_186/transpose_1/permь
!average_pooling3d_186/transpose_1	Transpose(average_pooling3d_186/AvgPool3D:output:0/average_pooling3d_186/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_186/transpose_1║
 conv3d_462/Conv3D/ReadVariableOpReadVariableOp)conv3d_462_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_462/Conv3D/ReadVariableOpА
conv3d_462/Conv3DConv3D%average_pooling3d_186/transpose_1:y:0(conv3d_462/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_462/Conv3Dн
!conv3d_462/BiasAdd/ReadVariableOpReadVariableOp*conv3d_462_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_462/BiasAdd/ReadVariableOp╧
conv3d_462/BiasAddBiasAddconv3d_462/Conv3D:output:0)conv3d_462/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_462/BiasAddС
conv3d_462/SoftplusSoftplusconv3d_462/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_462/Softplusй
$average_pooling3d_187/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_187/transpose/perm▀
average_pooling3d_187/transpose	Transpose!conv3d_462/Softplus:activations:0-average_pooling3d_187/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_187/transposeЁ
average_pooling3d_187/AvgPool3D	AvgPool3D#average_pooling3d_187/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_187/AvgPool3Dн
&average_pooling3d_187/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_187/transpose_1/permь
!average_pooling3d_187/transpose_1	Transpose(average_pooling3d_187/AvgPool3D:output:0/average_pooling3d_187/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_187/transpose_1║
 conv3d_463/Conv3D/ReadVariableOpReadVariableOp)conv3d_463_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_463/Conv3D/ReadVariableOpА
conv3d_463/Conv3DConv3D%average_pooling3d_187/transpose_1:y:0(conv3d_463/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_463/Conv3Dн
!conv3d_463/BiasAdd/ReadVariableOpReadVariableOp*conv3d_463_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_463/BiasAdd/ReadVariableOp╧
conv3d_463/BiasAddBiasAddconv3d_463/Conv3D:output:0)conv3d_463/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_463/BiasAddС
conv3d_463/SoftplusSoftplusconv3d_463/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_463/Softplusй
$average_pooling3d_188/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_188/transpose/perm▀
average_pooling3d_188/transpose	Transpose!conv3d_463/Softplus:activations:0-average_pooling3d_188/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_188/transposeЁ
average_pooling3d_188/AvgPool3D	AvgPool3D#average_pooling3d_188/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_188/AvgPool3Dн
&average_pooling3d_188/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_188/transpose_1/permь
!average_pooling3d_188/transpose_1	Transpose(average_pooling3d_188/AvgPool3D:output:0/average_pooling3d_188/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_188/transpose_1║
 conv3d_464/Conv3D/ReadVariableOpReadVariableOp)conv3d_464_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_464/Conv3D/ReadVariableOpА
conv3d_464/Conv3DConv3D%average_pooling3d_188/transpose_1:y:0(conv3d_464/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_464/Conv3Dн
!conv3d_464/BiasAdd/ReadVariableOpReadVariableOp*conv3d_464_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_464/BiasAdd/ReadVariableOp╧
conv3d_464/BiasAddBiasAddconv3d_464/Conv3D:output:0)conv3d_464/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_464/BiasAddС
conv3d_464/SoftplusSoftplusconv3d_464/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_464/Softplusй
$average_pooling3d_189/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_189/transpose/perm▀
average_pooling3d_189/transpose	Transpose!conv3d_464/Softplus:activations:0-average_pooling3d_189/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_189/transposeЁ
average_pooling3d_189/AvgPool3D	AvgPool3D#average_pooling3d_189/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_189/AvgPool3Dн
&average_pooling3d_189/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_189/transpose_1/permь
!average_pooling3d_189/transpose_1	Transpose(average_pooling3d_189/AvgPool3D:output:0/average_pooling3d_189/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_189/transpose_1{
reshape_178/ShapeShape%average_pooling3d_189/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_178/ShapeМ
reshape_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_178/strided_slice/stackР
!reshape_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_1Р
!reshape_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_2к
reshape_178/strided_sliceStridedSlicereshape_178/Shape:output:0(reshape_178/strided_slice/stack:output:0*reshape_178/strided_slice/stack_1:output:0*reshape_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_178/strided_slice|
reshape_178/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_178/Reshape/shape/1╢
reshape_178/Reshape/shapePack"reshape_178/strided_slice:output:0$reshape_178/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_178/Reshape/shape▓
reshape_178/ReshapeReshape%average_pooling3d_189/transpose_1:y:0"reshape_178/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_178/Reshapeи
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_89/MatMul/ReadVariableOpд
dense_89/MatMulMatMulreshape_178/Reshape:output:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_89/MatMulз
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_89/BiasAdd/ReadVariableOpе
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_89/BiasAdd
dense_89/SoftplusSoftplusdense_89/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_89/Softplusu
reshape_179/ShapeShapedense_89/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_179/ShapeМ
reshape_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_179/strided_slice/stackР
!reshape_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_179/strided_slice/stack_1Р
!reshape_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_179/strided_slice/stack_2к
reshape_179/strided_sliceStridedSlicereshape_179/Shape:output:0(reshape_179/strided_slice/stack:output:0*reshape_179/strided_slice/stack_1:output:0*reshape_179/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_179/strided_slice|
reshape_179/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/1|
reshape_179/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/2|
reshape_179/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/3|
reshape_179/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/4и
reshape_179/Reshape/shapePack"reshape_179/strided_slice:output:0$reshape_179/Reshape/shape/1:output:0$reshape_179/Reshape/shape/2:output:0$reshape_179/Reshape/shape/3:output:0$reshape_179/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_179/Reshape/shape╕
reshape_179/ReshapeReshapedense_89/Softplus:activations:0"reshape_179/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_179/Reshapeе
tf.reshape_896/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_896/Reshape/shape╩
tf.reshape_896/ReshapeReshapereshape_179/Reshape:output:0%tf.reshape_896/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_896/Reshapeб
tf.tile_448/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_448/Tile/multiples╝
tf.tile_448/TileTiletf.reshape_896/Reshape:output:0#tf.tile_448/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_448/TileЩ
tf.reshape_897/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_897/Reshape/shape╗
tf.reshape_897/ReshapeReshapetf.tile_448/Tile:output:0%tf.reshape_897/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_897/Reshapex
tf.concat_706/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_706/concat/axisч
tf.concat_706/concatConcatV2tf.reshape_897/Reshape:output:0!conv3d_464/Softplus:activations:0"tf.concat_706/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_706/concat║
 conv3d_465/Conv3D/ReadVariableOpReadVariableOp)conv3d_465_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_465/Conv3D/ReadVariableOp°
conv3d_465/Conv3DConv3Dtf.concat_706/concat:output:0(conv3d_465/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_465/Conv3Dн
!conv3d_465/BiasAdd/ReadVariableOpReadVariableOp*conv3d_465_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_465/BiasAdd/ReadVariableOp╧
conv3d_465/BiasAddBiasAddconv3d_465/Conv3D:output:0)conv3d_465/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_465/BiasAddС
conv3d_465/SoftplusSoftplusconv3d_465/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_465/Softplusе
tf.reshape_898/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_898/Reshape/shape╧
tf.reshape_898/ReshapeReshape!conv3d_465/Softplus:activations:0%tf.reshape_898/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_898/Reshapeб
tf.tile_449/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_449/Tile/multiples╝
tf.tile_449/TileTiletf.reshape_898/Reshape:output:0#tf.tile_449/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_449/TileЩ
tf.reshape_899/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_899/Reshape/shape╗
tf.reshape_899/ReshapeReshapetf.tile_449/Tile:output:0%tf.reshape_899/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_899/Reshapex
tf.concat_707/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_707/concat/axisч
tf.concat_707/concatConcatV2tf.reshape_899/Reshape:output:0!conv3d_463/Softplus:activations:0"tf.concat_707/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_707/concat║
 conv3d_466/Conv3D/ReadVariableOpReadVariableOp)conv3d_466_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_466/Conv3D/ReadVariableOp°
conv3d_466/Conv3DConv3Dtf.concat_707/concat:output:0(conv3d_466/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_466/Conv3Dн
!conv3d_466/BiasAdd/ReadVariableOpReadVariableOp*conv3d_466_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_466/BiasAdd/ReadVariableOp╧
conv3d_466/BiasAddBiasAddconv3d_466/Conv3D:output:0)conv3d_466/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_466/BiasAddС
conv3d_466/SoftplusSoftplusconv3d_466/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_466/Softplusе
tf.reshape_900/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_900/Reshape/shape╧
tf.reshape_900/ReshapeReshape!conv3d_466/Softplus:activations:0%tf.reshape_900/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_900/Reshapeб
tf.tile_450/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_450/Tile/multiples╝
tf.tile_450/TileTiletf.reshape_900/Reshape:output:0#tf.tile_450/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_450/TileЩ
tf.reshape_901/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_901/Reshape/shape╗
tf.reshape_901/ReshapeReshapetf.tile_450/Tile:output:0%tf.reshape_901/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_901/Reshapex
tf.concat_708/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_708/concat/axisч
tf.concat_708/concatConcatV2tf.reshape_901/Reshape:output:0!conv3d_462/Softplus:activations:0"tf.concat_708/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_708/concat║
 conv3d_467/Conv3D/ReadVariableOpReadVariableOp)conv3d_467_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_467/Conv3D/ReadVariableOp°
conv3d_467/Conv3DConv3Dtf.concat_708/concat:output:0(conv3d_467/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_467/Conv3Dн
!conv3d_467/BiasAdd/ReadVariableOpReadVariableOp*conv3d_467_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_467/BiasAdd/ReadVariableOp╧
conv3d_467/BiasAddBiasAddconv3d_467/Conv3D:output:0)conv3d_467/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_467/BiasAddС
conv3d_467/SoftplusSoftplusconv3d_467/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_467/Softplusе
tf.reshape_902/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_902/Reshape/shape╧
tf.reshape_902/ReshapeReshape!conv3d_467/Softplus:activations:0%tf.reshape_902/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_902/Reshapeб
tf.tile_451/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_451/Tile/multiples╝
tf.tile_451/TileTiletf.reshape_902/Reshape:output:0#tf.tile_451/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_451/TileЩ
tf.reshape_903/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_903/Reshape/shape╗
tf.reshape_903/ReshapeReshapetf.tile_451/Tile:output:0%tf.reshape_903/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_903/Reshapex
tf.concat_709/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_709/concat/axisч
tf.concat_709/concatConcatV2tf.reshape_903/Reshape:output:0!conv3d_461/Softplus:activations:0"tf.concat_709/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_709/concat║
 conv3d_468/Conv3D/ReadVariableOpReadVariableOp)conv3d_468_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_468/Conv3D/ReadVariableOp°
conv3d_468/Conv3DConv3Dtf.concat_709/concat:output:0(conv3d_468/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_468/Conv3Dн
!conv3d_468/BiasAdd/ReadVariableOpReadVariableOp*conv3d_468_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_468/BiasAdd/ReadVariableOp╧
conv3d_468/BiasAddBiasAddconv3d_468/Conv3D:output:0)conv3d_468/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_468/BiasAddС
conv3d_468/SoftplusSoftplusconv3d_468/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_468/Softplus║
 conv3d_469/Conv3D/ReadVariableOpReadVariableOp)conv3d_469_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_469/Conv3D/ReadVariableOp№
conv3d_469/Conv3DConv3D!conv3d_468/Softplus:activations:0(conv3d_469/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_469/Conv3Dн
!conv3d_469/BiasAdd/ReadVariableOpReadVariableOp*conv3d_469_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_469/BiasAdd/ReadVariableOp╧
conv3d_469/BiasAddBiasAddconv3d_469/Conv3D:output:0)conv3d_469/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_469/BiasAddВ
IdentityIdentityconv3d_469/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_461/BiasAdd/ReadVariableOp!^conv3d_461/Conv3D/ReadVariableOp"^conv3d_462/BiasAdd/ReadVariableOp!^conv3d_462/Conv3D/ReadVariableOp"^conv3d_463/BiasAdd/ReadVariableOp!^conv3d_463/Conv3D/ReadVariableOp"^conv3d_464/BiasAdd/ReadVariableOp!^conv3d_464/Conv3D/ReadVariableOp"^conv3d_465/BiasAdd/ReadVariableOp!^conv3d_465/Conv3D/ReadVariableOp"^conv3d_466/BiasAdd/ReadVariableOp!^conv3d_466/Conv3D/ReadVariableOp"^conv3d_467/BiasAdd/ReadVariableOp!^conv3d_467/Conv3D/ReadVariableOp"^conv3d_468/BiasAdd/ReadVariableOp!^conv3d_468/Conv3D/ReadVariableOp"^conv3d_469/BiasAdd/ReadVariableOp!^conv3d_469/Conv3D/ReadVariableOp ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_461/BiasAdd/ReadVariableOp!conv3d_461/BiasAdd/ReadVariableOp2D
 conv3d_461/Conv3D/ReadVariableOp conv3d_461/Conv3D/ReadVariableOp2F
!conv3d_462/BiasAdd/ReadVariableOp!conv3d_462/BiasAdd/ReadVariableOp2D
 conv3d_462/Conv3D/ReadVariableOp conv3d_462/Conv3D/ReadVariableOp2F
!conv3d_463/BiasAdd/ReadVariableOp!conv3d_463/BiasAdd/ReadVariableOp2D
 conv3d_463/Conv3D/ReadVariableOp conv3d_463/Conv3D/ReadVariableOp2F
!conv3d_464/BiasAdd/ReadVariableOp!conv3d_464/BiasAdd/ReadVariableOp2D
 conv3d_464/Conv3D/ReadVariableOp conv3d_464/Conv3D/ReadVariableOp2F
!conv3d_465/BiasAdd/ReadVariableOp!conv3d_465/BiasAdd/ReadVariableOp2D
 conv3d_465/Conv3D/ReadVariableOp conv3d_465/Conv3D/ReadVariableOp2F
!conv3d_466/BiasAdd/ReadVariableOp!conv3d_466/BiasAdd/ReadVariableOp2D
 conv3d_466/Conv3D/ReadVariableOp conv3d_466/Conv3D/ReadVariableOp2F
!conv3d_467/BiasAdd/ReadVariableOp!conv3d_467/BiasAdd/ReadVariableOp2D
 conv3d_467/Conv3D/ReadVariableOp conv3d_467/Conv3D/ReadVariableOp2F
!conv3d_468/BiasAdd/ReadVariableOp!conv3d_468/BiasAdd/ReadVariableOp2D
 conv3d_468/Conv3D/ReadVariableOp conv3d_468/Conv3D/ReadVariableOp2F
!conv3d_469/BiasAdd/ReadVariableOp!conv3d_469/BiasAdd/ReadVariableOp2D
 conv3d_469/Conv3D/ReadVariableOp conv3d_469/Conv3D/ReadVariableOp2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24046053

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
кX
Л
$__inference__traced_restore_24048068
file_prefix@
"assignvariableop_conv3d_461_kernel: 0
"assignvariableop_1_conv3d_461_bias: B
$assignvariableop_2_conv3d_462_kernel: 0
"assignvariableop_3_conv3d_462_bias:B
$assignvariableop_4_conv3d_463_kernel:0
"assignvariableop_5_conv3d_463_bias:B
$assignvariableop_6_conv3d_464_kernel:0
"assignvariableop_7_conv3d_464_bias:4
"assignvariableop_8_dense_89_kernel:@@.
 assignvariableop_9_dense_89_bias:@C
%assignvariableop_10_conv3d_465_kernel:1
#assignvariableop_11_conv3d_465_bias:C
%assignvariableop_12_conv3d_466_kernel:1
#assignvariableop_13_conv3d_466_bias:C
%assignvariableop_14_conv3d_467_kernel:1
#assignvariableop_15_conv3d_467_bias:C
%assignvariableop_16_conv3d_468_kernel:0 1
#assignvariableop_17_conv3d_468_bias: C
%assignvariableop_18_conv3d_469_kernel: 1
#assignvariableop_19_conv3d_469_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_461_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_461_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_462_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_462_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_463_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_463_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_464_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_464_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_89_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_89_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_465_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_465_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_466_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_466_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_467_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_467_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16н
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_468_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17л
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_468_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18н
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_469_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19л
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_469_biasIdentity_19:output:0"/device:CPU:0*
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
Ь
e
I__inference_reshape_178_layer_call_and_return_conditional_losses_24047776

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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_24047731

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
┴
ж
-__inference_conv3d_461_layer_call_fn_24047576

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
H__inference_conv3d_461_layer_call_and_return_conditional_losses_240462022
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
┴
ж
-__inference_conv3d_467_layer_call_fn_24047865

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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_240464162
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
Х
T
8__inference_average_pooling3d_187_layer_call_fn_24047645

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
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_240462432
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
х

o
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24046113

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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_24046416

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
°
э
&__inference_signature_wrapper_24047136	
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
#__inference__wrapped_model_240460402
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
¤Т
а

F__inference_model_89_layer_call_and_return_conditional_losses_24047089	
input1
conv3d_461_24047000: !
conv3d_461_24047002: 1
conv3d_462_24047006: !
conv3d_462_24047008:1
conv3d_463_24047012:!
conv3d_463_24047014:1
conv3d_464_24047018:!
conv3d_464_24047020:#
dense_89_24047025:@@
dense_89_24047027:@1
conv3d_465_24047039:!
conv3d_465_24047041:1
conv3d_466_24047052:!
conv3d_466_24047054:1
conv3d_467_24047065:!
conv3d_467_24047067:1
conv3d_468_24047078:0 !
conv3d_468_24047080: 1
conv3d_469_24047083: !
conv3d_469_24047085:
identityИв"conv3d_461/StatefulPartitionedCallв"conv3d_462/StatefulPartitionedCallв"conv3d_463/StatefulPartitionedCallв"conv3d_464/StatefulPartitionedCallв"conv3d_465/StatefulPartitionedCallв"conv3d_466/StatefulPartitionedCallв"conv3d_467/StatefulPartitionedCallв"conv3d_468/StatefulPartitionedCallв"conv3d_469/StatefulPartitionedCallв dense_89/StatefulPartitionedCall╡
0tf.__operators__.getitem_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_514/strided_slice/stack╣
2tf.__operators__.getitem_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_514/strided_slice/stack_1╣
2tf.__operators__.getitem_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_514/strided_slice/stack_2С
*tf.__operators__.getitem_514/strided_sliceStridedSliceinput9tf.__operators__.getitem_514/strided_slice/stack:output:0;tf.__operators__.getitem_514/strided_slice/stack_1:output:0;tf.__operators__.getitem_514/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_514/strided_slice╗
#range_conversion_89/PartitionedCallPartitionedCall3tf.__operators__.getitem_514/strided_slice:output:0*
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
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_240461832%
#range_conversion_89/PartitionedCall╡
0tf.__operators__.getitem_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_515/strided_slice/stack╣
2tf.__operators__.getitem_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_515/strided_slice/stack_1╣
2tf.__operators__.getitem_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_515/strided_slice/stack_2С
*tf.__operators__.getitem_515/strided_sliceStridedSliceinput9tf.__operators__.getitem_515/strided_slice/stack:output:0;tf.__operators__.getitem_515/strided_slice/stack_1:output:0;tf.__operators__.getitem_515/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_515/strided_slicex
tf.concat_705/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_705/concat/axisЖ
tf.concat_705/concatConcatV2,range_conversion_89/PartitionedCall:output:03tf.__operators__.getitem_515/strided_slice:output:0"tf.concat_705/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_705/concat╥
"conv3d_461/StatefulPartitionedCallStatefulPartitionedCalltf.concat_705/concat:output:0conv3d_461_24047000conv3d_461_24047002*
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
H__inference_conv3d_461_layer_call_and_return_conditional_losses_240462022$
"conv3d_461/StatefulPartitionedCall╣
%average_pooling3d_186/PartitionedCallPartitionedCall+conv3d_461/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_240462162'
%average_pooling3d_186/PartitionedCallу
"conv3d_462/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_186/PartitionedCall:output:0conv3d_462_24047006conv3d_462_24047008*
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
H__inference_conv3d_462_layer_call_and_return_conditional_losses_240462292$
"conv3d_462/StatefulPartitionedCall╣
%average_pooling3d_187/PartitionedCallPartitionedCall+conv3d_462/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_240462432'
%average_pooling3d_187/PartitionedCallу
"conv3d_463/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_187/PartitionedCall:output:0conv3d_463_24047012conv3d_463_24047014*
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
H__inference_conv3d_463_layer_call_and_return_conditional_losses_240462562$
"conv3d_463/StatefulPartitionedCall╣
%average_pooling3d_188/PartitionedCallPartitionedCall+conv3d_463/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_240462702'
%average_pooling3d_188/PartitionedCallу
"conv3d_464/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_188/PartitionedCall:output:0conv3d_464_24047018conv3d_464_24047020*
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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_240462832$
"conv3d_464/StatefulPartitionedCall╣
%average_pooling3d_189/PartitionedCallPartitionedCall+conv3d_464/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_240462972'
%average_pooling3d_189/PartitionedCallТ
reshape_178/PartitionedCallPartitionedCall.average_pooling3d_189/PartitionedCall:output:0*
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
I__inference_reshape_178_layer_call_and_return_conditional_losses_240463112
reshape_178/PartitionedCall├
 dense_89/StatefulPartitionedCallStatefulPartitionedCall$reshape_178/PartitionedCall:output:0dense_89_24047025dense_89_24047027*
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
F__inference_dense_89_layer_call_and_return_conditional_losses_240463242"
 dense_89/StatefulPartitionedCallЩ
reshape_179/PartitionedCallPartitionedCall)dense_89/StatefulPartitionedCall:output:0*
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
I__inference_reshape_179_layer_call_and_return_conditional_losses_240463452
reshape_179/PartitionedCallе
tf.reshape_896/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_896/Reshape/shape╥
tf.reshape_896/ReshapeReshape$reshape_179/PartitionedCall:output:0%tf.reshape_896/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_896/Reshapeб
tf.tile_448/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_448/Tile/multiples╝
tf.tile_448/TileTiletf.reshape_896/Reshape:output:0#tf.tile_448/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_448/TileЩ
tf.reshape_897/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_897/Reshape/shape╗
tf.reshape_897/ReshapeReshapetf.tile_448/Tile:output:0%tf.reshape_897/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_897/Reshapex
tf.concat_706/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_706/concat/axisё
tf.concat_706/concatConcatV2tf.reshape_897/Reshape:output:0+conv3d_464/StatefulPartitionedCall:output:0"tf.concat_706/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_706/concat╥
"conv3d_465/StatefulPartitionedCallStatefulPartitionedCalltf.concat_706/concat:output:0conv3d_465_24047039conv3d_465_24047041*
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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_240463662$
"conv3d_465/StatefulPartitionedCallе
tf.reshape_898/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_898/Reshape/shape┘
tf.reshape_898/ReshapeReshape+conv3d_465/StatefulPartitionedCall:output:0%tf.reshape_898/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_898/Reshapeб
tf.tile_449/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_449/Tile/multiples╝
tf.tile_449/TileTiletf.reshape_898/Reshape:output:0#tf.tile_449/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_449/TileЩ
tf.reshape_899/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_899/Reshape/shape╗
tf.reshape_899/ReshapeReshapetf.tile_449/Tile:output:0%tf.reshape_899/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_899/Reshapex
tf.concat_707/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_707/concat/axisё
tf.concat_707/concatConcatV2tf.reshape_899/Reshape:output:0+conv3d_463/StatefulPartitionedCall:output:0"tf.concat_707/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_707/concat╥
"conv3d_466/StatefulPartitionedCallStatefulPartitionedCalltf.concat_707/concat:output:0conv3d_466_24047052conv3d_466_24047054*
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
H__inference_conv3d_466_layer_call_and_return_conditional_losses_240463912$
"conv3d_466/StatefulPartitionedCallе
tf.reshape_900/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_900/Reshape/shape┘
tf.reshape_900/ReshapeReshape+conv3d_466/StatefulPartitionedCall:output:0%tf.reshape_900/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_900/Reshapeб
tf.tile_450/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_450/Tile/multiples╝
tf.tile_450/TileTiletf.reshape_900/Reshape:output:0#tf.tile_450/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_450/TileЩ
tf.reshape_901/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_901/Reshape/shape╗
tf.reshape_901/ReshapeReshapetf.tile_450/Tile:output:0%tf.reshape_901/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_901/Reshapex
tf.concat_708/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_708/concat/axisё
tf.concat_708/concatConcatV2tf.reshape_901/Reshape:output:0+conv3d_462/StatefulPartitionedCall:output:0"tf.concat_708/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_708/concat╥
"conv3d_467/StatefulPartitionedCallStatefulPartitionedCalltf.concat_708/concat:output:0conv3d_467_24047065conv3d_467_24047067*
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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_240464162$
"conv3d_467/StatefulPartitionedCallе
tf.reshape_902/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_902/Reshape/shape┘
tf.reshape_902/ReshapeReshape+conv3d_467/StatefulPartitionedCall:output:0%tf.reshape_902/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_902/Reshapeб
tf.tile_451/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_451/Tile/multiples╝
tf.tile_451/TileTiletf.reshape_902/Reshape:output:0#tf.tile_451/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_451/TileЩ
tf.reshape_903/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_903/Reshape/shape╗
tf.reshape_903/ReshapeReshapetf.tile_451/Tile:output:0%tf.reshape_903/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_903/Reshapex
tf.concat_709/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_709/concat/axisё
tf.concat_709/concatConcatV2tf.reshape_903/Reshape:output:0+conv3d_461/StatefulPartitionedCall:output:0"tf.concat_709/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_709/concat╥
"conv3d_468/StatefulPartitionedCallStatefulPartitionedCalltf.concat_709/concat:output:0conv3d_468_24047078conv3d_468_24047080*
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
H__inference_conv3d_468_layer_call_and_return_conditional_losses_240464412$
"conv3d_468/StatefulPartitionedCallр
"conv3d_469/StatefulPartitionedCallStatefulPartitionedCall+conv3d_468/StatefulPartitionedCall:output:0conv3d_469_24047083conv3d_469_24047085*
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
H__inference_conv3d_469_layer_call_and_return_conditional_losses_240464572$
"conv3d_469/StatefulPartitionedCallТ
IdentityIdentity+conv3d_469/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_461/StatefulPartitionedCall#^conv3d_462/StatefulPartitionedCall#^conv3d_463/StatefulPartitionedCall#^conv3d_464/StatefulPartitionedCall#^conv3d_465/StatefulPartitionedCall#^conv3d_466/StatefulPartitionedCall#^conv3d_467/StatefulPartitionedCall#^conv3d_468/StatefulPartitionedCall#^conv3d_469/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_461/StatefulPartitionedCall"conv3d_461/StatefulPartitionedCall2H
"conv3d_462/StatefulPartitionedCall"conv3d_462/StatefulPartitionedCall2H
"conv3d_463/StatefulPartitionedCall"conv3d_463/StatefulPartitionedCall2H
"conv3d_464/StatefulPartitionedCall"conv3d_464/StatefulPartitionedCall2H
"conv3d_465/StatefulPartitionedCall"conv3d_465/StatefulPartitionedCall2H
"conv3d_466/StatefulPartitionedCall"conv3d_466/StatefulPartitionedCall2H
"conv3d_467/StatefulPartitionedCall"conv3d_467/StatefulPartitionedCall2H
"conv3d_468/StatefulPartitionedCall"conv3d_468/StatefulPartitionedCall2H
"conv3d_469/StatefulPartitionedCall"conv3d_469/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
Ь
e
I__inference_reshape_179_layer_call_and_return_conditional_losses_24047816

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
а
Є
+__inference_model_89_layer_call_fn_24046507	
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
F__inference_model_89_layer_call_and_return_conditional_losses_240464642
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
щ
J
.__inference_reshape_179_layer_call_fn_24047801

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
I__inference_reshape_179_layer_call_and_return_conditional_losses_240463452
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
┴
ж
-__inference_conv3d_465_layer_call_fn_24047825

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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_240463662
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
╬
Е
H__inference_conv3d_462_layer_call_and_return_conditional_losses_24046229

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
х

o
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24047702

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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24046216

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
╫	
q
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_24046183

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
г
є
+__inference_model_89_layer_call_fn_24047226

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
F__inference_model_89_layer_call_and_return_conditional_losses_240467952
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
М	
o
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24047615

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
Ф
ў
F__inference_dense_89_layer_call_and_return_conditional_losses_24046324

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
г
є
+__inference_model_89_layer_call_fn_24047181

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
F__inference_model_89_layer_call_and_return_conditional_losses_240464642
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
М	
o
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24047711

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
х

o
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24046083

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
Ф
ў
F__inference_dense_89_layer_call_and_return_conditional_losses_24047796

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
вЧ
∙
#__inference__wrapped_model_24046040	
inputP
2model_89_conv3d_461_conv3d_readvariableop_resource: A
3model_89_conv3d_461_biasadd_readvariableop_resource: P
2model_89_conv3d_462_conv3d_readvariableop_resource: A
3model_89_conv3d_462_biasadd_readvariableop_resource:P
2model_89_conv3d_463_conv3d_readvariableop_resource:A
3model_89_conv3d_463_biasadd_readvariableop_resource:P
2model_89_conv3d_464_conv3d_readvariableop_resource:A
3model_89_conv3d_464_biasadd_readvariableop_resource:B
0model_89_dense_89_matmul_readvariableop_resource:@@?
1model_89_dense_89_biasadd_readvariableop_resource:@P
2model_89_conv3d_465_conv3d_readvariableop_resource:A
3model_89_conv3d_465_biasadd_readvariableop_resource:P
2model_89_conv3d_466_conv3d_readvariableop_resource:A
3model_89_conv3d_466_biasadd_readvariableop_resource:P
2model_89_conv3d_467_conv3d_readvariableop_resource:A
3model_89_conv3d_467_biasadd_readvariableop_resource:P
2model_89_conv3d_468_conv3d_readvariableop_resource:0 A
3model_89_conv3d_468_biasadd_readvariableop_resource: P
2model_89_conv3d_469_conv3d_readvariableop_resource: A
3model_89_conv3d_469_biasadd_readvariableop_resource:
identityИв*model_89/conv3d_461/BiasAdd/ReadVariableOpв)model_89/conv3d_461/Conv3D/ReadVariableOpв*model_89/conv3d_462/BiasAdd/ReadVariableOpв)model_89/conv3d_462/Conv3D/ReadVariableOpв*model_89/conv3d_463/BiasAdd/ReadVariableOpв)model_89/conv3d_463/Conv3D/ReadVariableOpв*model_89/conv3d_464/BiasAdd/ReadVariableOpв)model_89/conv3d_464/Conv3D/ReadVariableOpв*model_89/conv3d_465/BiasAdd/ReadVariableOpв)model_89/conv3d_465/Conv3D/ReadVariableOpв*model_89/conv3d_466/BiasAdd/ReadVariableOpв)model_89/conv3d_466/Conv3D/ReadVariableOpв*model_89/conv3d_467/BiasAdd/ReadVariableOpв)model_89/conv3d_467/Conv3D/ReadVariableOpв*model_89/conv3d_468/BiasAdd/ReadVariableOpв)model_89/conv3d_468/Conv3D/ReadVariableOpв*model_89/conv3d_469/BiasAdd/ReadVariableOpв)model_89/conv3d_469/Conv3D/ReadVariableOpв(model_89/dense_89/BiasAdd/ReadVariableOpв'model_89/dense_89/MatMul/ReadVariableOp╟
9model_89/tf.__operators__.getitem_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_89/tf.__operators__.getitem_514/strided_slice/stack╦
;model_89/tf.__operators__.getitem_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_89/tf.__operators__.getitem_514/strided_slice/stack_1╦
;model_89/tf.__operators__.getitem_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_89/tf.__operators__.getitem_514/strided_slice/stack_2╛
3model_89/tf.__operators__.getitem_514/strided_sliceStridedSliceinputBmodel_89/tf.__operators__.getitem_514/strided_slice/stack:output:0Dmodel_89/tf.__operators__.getitem_514/strided_slice/stack_1:output:0Dmodel_89/tf.__operators__.getitem_514/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_89/tf.__operators__.getitem_514/strided_sliceН
"model_89/range_conversion_89/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_89/range_conversion_89/sub/yЇ
 model_89/range_conversion_89/subSub<model_89/tf.__operators__.getitem_514/strided_slice:output:0+model_89/range_conversion_89/sub/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_89/range_conversion_89/subХ
&model_89/range_conversion_89/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_89/range_conversion_89/truediv/yь
$model_89/range_conversion_89/truedivRealDiv$model_89/range_conversion_89/sub:z:0/model_89/range_conversion_89/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2&
$model_89/range_conversion_89/truedivН
"model_89/range_conversion_89/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_89/range_conversion_89/mul/yр
 model_89/range_conversion_89/mulMul(model_89/range_conversion_89/truediv:z:0+model_89/range_conversion_89/mul/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_89/range_conversion_89/mulН
"model_89/range_conversion_89/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_89/range_conversion_89/add/y▐
 model_89/range_conversion_89/addAddV2$model_89/range_conversion_89/mul:z:0+model_89/range_conversion_89/add/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_89/range_conversion_89/add╟
9model_89/tf.__operators__.getitem_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_89/tf.__operators__.getitem_515/strided_slice/stack╦
;model_89/tf.__operators__.getitem_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_89/tf.__operators__.getitem_515/strided_slice/stack_1╦
;model_89/tf.__operators__.getitem_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_89/tf.__operators__.getitem_515/strided_slice/stack_2╛
3model_89/tf.__operators__.getitem_515/strided_sliceStridedSliceinputBmodel_89/tf.__operators__.getitem_515/strided_slice/stack:output:0Dmodel_89/tf.__operators__.getitem_515/strided_slice/stack_1:output:0Dmodel_89/tf.__operators__.getitem_515/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_89/tf.__operators__.getitem_515/strided_sliceК
"model_89/tf.concat_705/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_89/tf.concat_705/concat/axisв
model_89/tf.concat_705/concatConcatV2$model_89/range_conversion_89/add:z:0<model_89/tf.__operators__.getitem_515/strided_slice:output:0+model_89/tf.concat_705/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
model_89/tf.concat_705/concat╒
)model_89/conv3d_461/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_461_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_89/conv3d_461/Conv3D/ReadVariableOpЬ
model_89/conv3d_461/Conv3DConv3D&model_89/tf.concat_705/concat:output:01model_89/conv3d_461/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_461/Conv3D╚
*model_89/conv3d_461/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_461_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_89/conv3d_461/BiasAdd/ReadVariableOpє
model_89/conv3d_461/BiasAddBiasAdd#model_89/conv3d_461/Conv3D:output:02model_89/conv3d_461/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_89/conv3d_461/BiasAddм
model_89/conv3d_461/SoftplusSoftplus$model_89/conv3d_461/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_89/conv3d_461/Softplus╗
-model_89/average_pooling3d_186/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_89/average_pooling3d_186/transpose/permГ
(model_89/average_pooling3d_186/transpose	Transpose*model_89/conv3d_461/Softplus:activations:06model_89/average_pooling3d_186/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2*
(model_89/average_pooling3d_186/transposeЛ
(model_89/average_pooling3d_186/AvgPool3D	AvgPool3D,model_89/average_pooling3d_186/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2*
(model_89/average_pooling3d_186/AvgPool3D┐
/model_89/average_pooling3d_186/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_89/average_pooling3d_186/transpose_1/permР
*model_89/average_pooling3d_186/transpose_1	Transpose1model_89/average_pooling3d_186/AvgPool3D:output:08model_89/average_pooling3d_186/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2,
*model_89/average_pooling3d_186/transpose_1╒
)model_89/conv3d_462/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_462_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_89/conv3d_462/Conv3D/ReadVariableOpд
model_89/conv3d_462/Conv3DConv3D.model_89/average_pooling3d_186/transpose_1:y:01model_89/conv3d_462/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_462/Conv3D╚
*model_89/conv3d_462/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_462_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_89/conv3d_462/BiasAdd/ReadVariableOpє
model_89/conv3d_462/BiasAddBiasAdd#model_89/conv3d_462/Conv3D:output:02model_89/conv3d_462/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_89/conv3d_462/BiasAddм
model_89/conv3d_462/SoftplusSoftplus$model_89/conv3d_462/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_89/conv3d_462/Softplus╗
-model_89/average_pooling3d_187/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_89/average_pooling3d_187/transpose/permГ
(model_89/average_pooling3d_187/transpose	Transpose*model_89/conv3d_462/Softplus:activations:06model_89/average_pooling3d_187/transpose/perm:output:0*
T0*3
_output_shapes!
:           2*
(model_89/average_pooling3d_187/transposeЛ
(model_89/average_pooling3d_187/AvgPool3D	AvgPool3D,model_89/average_pooling3d_187/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_89/average_pooling3d_187/AvgPool3D┐
/model_89/average_pooling3d_187/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_89/average_pooling3d_187/transpose_1/permР
*model_89/average_pooling3d_187/transpose_1	Transpose1model_89/average_pooling3d_187/AvgPool3D:output:08model_89/average_pooling3d_187/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_89/average_pooling3d_187/transpose_1╒
)model_89/conv3d_463/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_463_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_89/conv3d_463/Conv3D/ReadVariableOpд
model_89/conv3d_463/Conv3DConv3D.model_89/average_pooling3d_187/transpose_1:y:01model_89/conv3d_463/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_463/Conv3D╚
*model_89/conv3d_463/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_463_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_89/conv3d_463/BiasAdd/ReadVariableOpє
model_89/conv3d_463/BiasAddBiasAdd#model_89/conv3d_463/Conv3D:output:02model_89/conv3d_463/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_89/conv3d_463/BiasAddм
model_89/conv3d_463/SoftplusSoftplus$model_89/conv3d_463/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_89/conv3d_463/Softplus╗
-model_89/average_pooling3d_188/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_89/average_pooling3d_188/transpose/permГ
(model_89/average_pooling3d_188/transpose	Transpose*model_89/conv3d_463/Softplus:activations:06model_89/average_pooling3d_188/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_89/average_pooling3d_188/transposeЛ
(model_89/average_pooling3d_188/AvgPool3D	AvgPool3D,model_89/average_pooling3d_188/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_89/average_pooling3d_188/AvgPool3D┐
/model_89/average_pooling3d_188/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_89/average_pooling3d_188/transpose_1/permР
*model_89/average_pooling3d_188/transpose_1	Transpose1model_89/average_pooling3d_188/AvgPool3D:output:08model_89/average_pooling3d_188/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_89/average_pooling3d_188/transpose_1╒
)model_89/conv3d_464/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_464_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_89/conv3d_464/Conv3D/ReadVariableOpд
model_89/conv3d_464/Conv3DConv3D.model_89/average_pooling3d_188/transpose_1:y:01model_89/conv3d_464/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_464/Conv3D╚
*model_89/conv3d_464/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_464_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_89/conv3d_464/BiasAdd/ReadVariableOpє
model_89/conv3d_464/BiasAddBiasAdd#model_89/conv3d_464/Conv3D:output:02model_89/conv3d_464/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_89/conv3d_464/BiasAddм
model_89/conv3d_464/SoftplusSoftplus$model_89/conv3d_464/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_89/conv3d_464/Softplus╗
-model_89/average_pooling3d_189/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_89/average_pooling3d_189/transpose/permГ
(model_89/average_pooling3d_189/transpose	Transpose*model_89/conv3d_464/Softplus:activations:06model_89/average_pooling3d_189/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_89/average_pooling3d_189/transposeЛ
(model_89/average_pooling3d_189/AvgPool3D	AvgPool3D,model_89/average_pooling3d_189/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_89/average_pooling3d_189/AvgPool3D┐
/model_89/average_pooling3d_189/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_89/average_pooling3d_189/transpose_1/permР
*model_89/average_pooling3d_189/transpose_1	Transpose1model_89/average_pooling3d_189/AvgPool3D:output:08model_89/average_pooling3d_189/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_89/average_pooling3d_189/transpose_1Ц
model_89/reshape_178/ShapeShape.model_89/average_pooling3d_189/transpose_1:y:0*
T0*
_output_shapes
:2
model_89/reshape_178/ShapeЮ
(model_89/reshape_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_89/reshape_178/strided_slice/stackв
*model_89/reshape_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_89/reshape_178/strided_slice/stack_1в
*model_89/reshape_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_89/reshape_178/strided_slice/stack_2р
"model_89/reshape_178/strided_sliceStridedSlice#model_89/reshape_178/Shape:output:01model_89/reshape_178/strided_slice/stack:output:03model_89/reshape_178/strided_slice/stack_1:output:03model_89/reshape_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_89/reshape_178/strided_sliceО
$model_89/reshape_178/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_89/reshape_178/Reshape/shape/1┌
"model_89/reshape_178/Reshape/shapePack+model_89/reshape_178/strided_slice:output:0-model_89/reshape_178/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_89/reshape_178/Reshape/shape╓
model_89/reshape_178/ReshapeReshape.model_89/average_pooling3d_189/transpose_1:y:0+model_89/reshape_178/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_89/reshape_178/Reshape├
'model_89/dense_89/MatMul/ReadVariableOpReadVariableOp0model_89_dense_89_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_89/dense_89/MatMul/ReadVariableOp╚
model_89/dense_89/MatMulMatMul%model_89/reshape_178/Reshape:output:0/model_89/dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_89/dense_89/MatMul┬
(model_89/dense_89/BiasAdd/ReadVariableOpReadVariableOp1model_89_dense_89_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_89/dense_89/BiasAdd/ReadVariableOp╔
model_89/dense_89/BiasAddBiasAdd"model_89/dense_89/MatMul:product:00model_89/dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_89/dense_89/BiasAddЪ
model_89/dense_89/SoftplusSoftplus"model_89/dense_89/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_89/dense_89/SoftplusР
model_89/reshape_179/ShapeShape(model_89/dense_89/Softplus:activations:0*
T0*
_output_shapes
:2
model_89/reshape_179/ShapeЮ
(model_89/reshape_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_89/reshape_179/strided_slice/stackв
*model_89/reshape_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_89/reshape_179/strided_slice/stack_1в
*model_89/reshape_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_89/reshape_179/strided_slice/stack_2р
"model_89/reshape_179/strided_sliceStridedSlice#model_89/reshape_179/Shape:output:01model_89/reshape_179/strided_slice/stack:output:03model_89/reshape_179/strided_slice/stack_1:output:03model_89/reshape_179/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_89/reshape_179/strided_sliceО
$model_89/reshape_179/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_89/reshape_179/Reshape/shape/1О
$model_89/reshape_179/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_89/reshape_179/Reshape/shape/2О
$model_89/reshape_179/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_89/reshape_179/Reshape/shape/3О
$model_89/reshape_179/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_89/reshape_179/Reshape/shape/4ч
"model_89/reshape_179/Reshape/shapePack+model_89/reshape_179/strided_slice:output:0-model_89/reshape_179/Reshape/shape/1:output:0-model_89/reshape_179/Reshape/shape/2:output:0-model_89/reshape_179/Reshape/shape/3:output:0-model_89/reshape_179/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_89/reshape_179/Reshape/shape▄
model_89/reshape_179/ReshapeReshape(model_89/dense_89/Softplus:activations:0+model_89/reshape_179/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_89/reshape_179/Reshape╖
%model_89/tf.reshape_896/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_89/tf.reshape_896/Reshape/shapeю
model_89/tf.reshape_896/ReshapeReshape%model_89/reshape_179/Reshape:output:0.model_89/tf.reshape_896/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_89/tf.reshape_896/Reshape│
#model_89/tf.tile_448/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_89/tf.tile_448/Tile/multiplesр
model_89/tf.tile_448/TileTile(model_89/tf.reshape_896/Reshape:output:0,model_89/tf.tile_448/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_89/tf.tile_448/Tileл
%model_89/tf.reshape_897/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_89/tf.reshape_897/Reshape/shape▀
model_89/tf.reshape_897/ReshapeReshape"model_89/tf.tile_448/Tile:output:0.model_89/tf.reshape_897/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_89/tf.reshape_897/ReshapeК
"model_89/tf.concat_706/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_89/tf.concat_706/concat/axisФ
model_89/tf.concat_706/concatConcatV2(model_89/tf.reshape_897/Reshape:output:0*model_89/conv3d_464/Softplus:activations:0+model_89/tf.concat_706/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_89/tf.concat_706/concat╒
)model_89/conv3d_465/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_465_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_89/conv3d_465/Conv3D/ReadVariableOpЬ
model_89/conv3d_465/Conv3DConv3D&model_89/tf.concat_706/concat:output:01model_89/conv3d_465/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_465/Conv3D╚
*model_89/conv3d_465/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_465_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_89/conv3d_465/BiasAdd/ReadVariableOpє
model_89/conv3d_465/BiasAddBiasAdd#model_89/conv3d_465/Conv3D:output:02model_89/conv3d_465/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_89/conv3d_465/BiasAddм
model_89/conv3d_465/SoftplusSoftplus$model_89/conv3d_465/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_89/conv3d_465/Softplus╖
%model_89/tf.reshape_898/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_89/tf.reshape_898/Reshape/shapeє
model_89/tf.reshape_898/ReshapeReshape*model_89/conv3d_465/Softplus:activations:0.model_89/tf.reshape_898/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_89/tf.reshape_898/Reshape│
#model_89/tf.tile_449/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_89/tf.tile_449/Tile/multiplesр
model_89/tf.tile_449/TileTile(model_89/tf.reshape_898/Reshape:output:0,model_89/tf.tile_449/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_89/tf.tile_449/Tileл
%model_89/tf.reshape_899/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_89/tf.reshape_899/Reshape/shape▀
model_89/tf.reshape_899/ReshapeReshape"model_89/tf.tile_449/Tile:output:0.model_89/tf.reshape_899/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_89/tf.reshape_899/ReshapeК
"model_89/tf.concat_707/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_89/tf.concat_707/concat/axisФ
model_89/tf.concat_707/concatConcatV2(model_89/tf.reshape_899/Reshape:output:0*model_89/conv3d_463/Softplus:activations:0+model_89/tf.concat_707/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_89/tf.concat_707/concat╒
)model_89/conv3d_466/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_466_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_89/conv3d_466/Conv3D/ReadVariableOpЬ
model_89/conv3d_466/Conv3DConv3D&model_89/tf.concat_707/concat:output:01model_89/conv3d_466/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_466/Conv3D╚
*model_89/conv3d_466/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_466_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_89/conv3d_466/BiasAdd/ReadVariableOpє
model_89/conv3d_466/BiasAddBiasAdd#model_89/conv3d_466/Conv3D:output:02model_89/conv3d_466/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_89/conv3d_466/BiasAddм
model_89/conv3d_466/SoftplusSoftplus$model_89/conv3d_466/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_89/conv3d_466/Softplus╖
%model_89/tf.reshape_900/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_89/tf.reshape_900/Reshape/shapeє
model_89/tf.reshape_900/ReshapeReshape*model_89/conv3d_466/Softplus:activations:0.model_89/tf.reshape_900/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_89/tf.reshape_900/Reshape│
#model_89/tf.tile_450/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_89/tf.tile_450/Tile/multiplesр
model_89/tf.tile_450/TileTile(model_89/tf.reshape_900/Reshape:output:0,model_89/tf.tile_450/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_89/tf.tile_450/Tileл
%model_89/tf.reshape_901/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2'
%model_89/tf.reshape_901/Reshape/shape▀
model_89/tf.reshape_901/ReshapeReshape"model_89/tf.tile_450/Tile:output:0.model_89/tf.reshape_901/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2!
model_89/tf.reshape_901/ReshapeК
"model_89/tf.concat_708/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_89/tf.concat_708/concat/axisФ
model_89/tf.concat_708/concatConcatV2(model_89/tf.reshape_901/Reshape:output:0*model_89/conv3d_462/Softplus:activations:0+model_89/tf.concat_708/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_89/tf.concat_708/concat╒
)model_89/conv3d_467/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_467_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_89/conv3d_467/Conv3D/ReadVariableOpЬ
model_89/conv3d_467/Conv3DConv3D&model_89/tf.concat_708/concat:output:01model_89/conv3d_467/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_467/Conv3D╚
*model_89/conv3d_467/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_467_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_89/conv3d_467/BiasAdd/ReadVariableOpє
model_89/conv3d_467/BiasAddBiasAdd#model_89/conv3d_467/Conv3D:output:02model_89/conv3d_467/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_89/conv3d_467/BiasAddм
model_89/conv3d_467/SoftplusSoftplus$model_89/conv3d_467/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_89/conv3d_467/Softplus╖
%model_89/tf.reshape_902/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2'
%model_89/tf.reshape_902/Reshape/shapeє
model_89/tf.reshape_902/ReshapeReshape*model_89/conv3d_467/Softplus:activations:0.model_89/tf.reshape_902/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2!
model_89/tf.reshape_902/Reshape│
#model_89/tf.tile_451/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_89/tf.tile_451/Tile/multiplesр
model_89/tf.tile_451/TileTile(model_89/tf.reshape_902/Reshape:output:0,model_89/tf.tile_451/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
model_89/tf.tile_451/Tileл
%model_89/tf.reshape_903/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2'
%model_89/tf.reshape_903/Reshape/shape▀
model_89/tf.reshape_903/ReshapeReshape"model_89/tf.tile_451/Tile:output:0.model_89/tf.reshape_903/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2!
model_89/tf.reshape_903/ReshapeК
"model_89/tf.concat_709/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_89/tf.concat_709/concat/axisФ
model_89/tf.concat_709/concatConcatV2(model_89/tf.reshape_903/Reshape:output:0*model_89/conv3d_461/Softplus:activations:0+model_89/tf.concat_709/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
model_89/tf.concat_709/concat╒
)model_89/conv3d_468/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_468_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_89/conv3d_468/Conv3D/ReadVariableOpЬ
model_89/conv3d_468/Conv3DConv3D&model_89/tf.concat_709/concat:output:01model_89/conv3d_468/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_468/Conv3D╚
*model_89/conv3d_468/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_468_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_89/conv3d_468/BiasAdd/ReadVariableOpє
model_89/conv3d_468/BiasAddBiasAdd#model_89/conv3d_468/Conv3D:output:02model_89/conv3d_468/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_89/conv3d_468/BiasAddм
model_89/conv3d_468/SoftplusSoftplus$model_89/conv3d_468/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_89/conv3d_468/Softplus╒
)model_89/conv3d_469/Conv3D/ReadVariableOpReadVariableOp2model_89_conv3d_469_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_89/conv3d_469/Conv3D/ReadVariableOpа
model_89/conv3d_469/Conv3DConv3D*model_89/conv3d_468/Softplus:activations:01model_89/conv3d_469/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_89/conv3d_469/Conv3D╚
*model_89/conv3d_469/BiasAdd/ReadVariableOpReadVariableOp3model_89_conv3d_469_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_89/conv3d_469/BiasAdd/ReadVariableOpє
model_89/conv3d_469/BiasAddBiasAdd#model_89/conv3d_469/Conv3D:output:02model_89/conv3d_469/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
model_89/conv3d_469/BiasAddЛ
IdentityIdentity$model_89/conv3d_469/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity─
NoOpNoOp+^model_89/conv3d_461/BiasAdd/ReadVariableOp*^model_89/conv3d_461/Conv3D/ReadVariableOp+^model_89/conv3d_462/BiasAdd/ReadVariableOp*^model_89/conv3d_462/Conv3D/ReadVariableOp+^model_89/conv3d_463/BiasAdd/ReadVariableOp*^model_89/conv3d_463/Conv3D/ReadVariableOp+^model_89/conv3d_464/BiasAdd/ReadVariableOp*^model_89/conv3d_464/Conv3D/ReadVariableOp+^model_89/conv3d_465/BiasAdd/ReadVariableOp*^model_89/conv3d_465/Conv3D/ReadVariableOp+^model_89/conv3d_466/BiasAdd/ReadVariableOp*^model_89/conv3d_466/Conv3D/ReadVariableOp+^model_89/conv3d_467/BiasAdd/ReadVariableOp*^model_89/conv3d_467/Conv3D/ReadVariableOp+^model_89/conv3d_468/BiasAdd/ReadVariableOp*^model_89/conv3d_468/Conv3D/ReadVariableOp+^model_89/conv3d_469/BiasAdd/ReadVariableOp*^model_89/conv3d_469/Conv3D/ReadVariableOp)^model_89/dense_89/BiasAdd/ReadVariableOp(^model_89/dense_89/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2X
*model_89/conv3d_461/BiasAdd/ReadVariableOp*model_89/conv3d_461/BiasAdd/ReadVariableOp2V
)model_89/conv3d_461/Conv3D/ReadVariableOp)model_89/conv3d_461/Conv3D/ReadVariableOp2X
*model_89/conv3d_462/BiasAdd/ReadVariableOp*model_89/conv3d_462/BiasAdd/ReadVariableOp2V
)model_89/conv3d_462/Conv3D/ReadVariableOp)model_89/conv3d_462/Conv3D/ReadVariableOp2X
*model_89/conv3d_463/BiasAdd/ReadVariableOp*model_89/conv3d_463/BiasAdd/ReadVariableOp2V
)model_89/conv3d_463/Conv3D/ReadVariableOp)model_89/conv3d_463/Conv3D/ReadVariableOp2X
*model_89/conv3d_464/BiasAdd/ReadVariableOp*model_89/conv3d_464/BiasAdd/ReadVariableOp2V
)model_89/conv3d_464/Conv3D/ReadVariableOp)model_89/conv3d_464/Conv3D/ReadVariableOp2X
*model_89/conv3d_465/BiasAdd/ReadVariableOp*model_89/conv3d_465/BiasAdd/ReadVariableOp2V
)model_89/conv3d_465/Conv3D/ReadVariableOp)model_89/conv3d_465/Conv3D/ReadVariableOp2X
*model_89/conv3d_466/BiasAdd/ReadVariableOp*model_89/conv3d_466/BiasAdd/ReadVariableOp2V
)model_89/conv3d_466/Conv3D/ReadVariableOp)model_89/conv3d_466/Conv3D/ReadVariableOp2X
*model_89/conv3d_467/BiasAdd/ReadVariableOp*model_89/conv3d_467/BiasAdd/ReadVariableOp2V
)model_89/conv3d_467/Conv3D/ReadVariableOp)model_89/conv3d_467/Conv3D/ReadVariableOp2X
*model_89/conv3d_468/BiasAdd/ReadVariableOp*model_89/conv3d_468/BiasAdd/ReadVariableOp2V
)model_89/conv3d_468/Conv3D/ReadVariableOp)model_89/conv3d_468/Conv3D/ReadVariableOp2X
*model_89/conv3d_469/BiasAdd/ReadVariableOp*model_89/conv3d_469/BiasAdd/ReadVariableOp2V
)model_89/conv3d_469/Conv3D/ReadVariableOp)model_89/conv3d_469/Conv3D/ReadVariableOp2T
(model_89/dense_89/BiasAdd/ReadVariableOp(model_89/dense_89/BiasAdd/ReadVariableOp2R
'model_89/dense_89/MatMul/ReadVariableOp'model_89/dense_89/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
╬
Е
H__inference_conv3d_463_layer_call_and_return_conditional_losses_24046256

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
М	
o
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24046297

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
Ь
e
I__inference_reshape_179_layer_call_and_return_conditional_losses_24046345

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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24046270

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
А
Ш
+__inference_dense_89_layer_call_fn_24047785

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
F__inference_dense_89_layer_call_and_return_conditional_losses_240463242
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
╜ё
╡
F__inference_model_89_layer_call_and_return_conditional_losses_24047388

inputsG
)conv3d_461_conv3d_readvariableop_resource: 8
*conv3d_461_biasadd_readvariableop_resource: G
)conv3d_462_conv3d_readvariableop_resource: 8
*conv3d_462_biasadd_readvariableop_resource:G
)conv3d_463_conv3d_readvariableop_resource:8
*conv3d_463_biasadd_readvariableop_resource:G
)conv3d_464_conv3d_readvariableop_resource:8
*conv3d_464_biasadd_readvariableop_resource:9
'dense_89_matmul_readvariableop_resource:@@6
(dense_89_biasadd_readvariableop_resource:@G
)conv3d_465_conv3d_readvariableop_resource:8
*conv3d_465_biasadd_readvariableop_resource:G
)conv3d_466_conv3d_readvariableop_resource:8
*conv3d_466_biasadd_readvariableop_resource:G
)conv3d_467_conv3d_readvariableop_resource:8
*conv3d_467_biasadd_readvariableop_resource:G
)conv3d_468_conv3d_readvariableop_resource:0 8
*conv3d_468_biasadd_readvariableop_resource: G
)conv3d_469_conv3d_readvariableop_resource: 8
*conv3d_469_biasadd_readvariableop_resource:
identityИв!conv3d_461/BiasAdd/ReadVariableOpв conv3d_461/Conv3D/ReadVariableOpв!conv3d_462/BiasAdd/ReadVariableOpв conv3d_462/Conv3D/ReadVariableOpв!conv3d_463/BiasAdd/ReadVariableOpв conv3d_463/Conv3D/ReadVariableOpв!conv3d_464/BiasAdd/ReadVariableOpв conv3d_464/Conv3D/ReadVariableOpв!conv3d_465/BiasAdd/ReadVariableOpв conv3d_465/Conv3D/ReadVariableOpв!conv3d_466/BiasAdd/ReadVariableOpв conv3d_466/Conv3D/ReadVariableOpв!conv3d_467/BiasAdd/ReadVariableOpв conv3d_467/Conv3D/ReadVariableOpв!conv3d_468/BiasAdd/ReadVariableOpв conv3d_468/Conv3D/ReadVariableOpв!conv3d_469/BiasAdd/ReadVariableOpв conv3d_469/Conv3D/ReadVariableOpвdense_89/BiasAdd/ReadVariableOpвdense_89/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_514/strided_slice/stack╣
2tf.__operators__.getitem_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_514/strided_slice/stack_1╣
2tf.__operators__.getitem_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_514/strided_slice/stack_2Т
*tf.__operators__.getitem_514/strided_sliceStridedSliceinputs9tf.__operators__.getitem_514/strided_slice/stack:output:0;tf.__operators__.getitem_514/strided_slice/stack_1:output:0;tf.__operators__.getitem_514/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_514/strided_slice{
range_conversion_89/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_89/sub/y╨
range_conversion_89/subSub3tf.__operators__.getitem_514/strided_slice:output:0"range_conversion_89/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/subГ
range_conversion_89/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_89/truediv/y╚
range_conversion_89/truedivRealDivrange_conversion_89/sub:z:0&range_conversion_89/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/truediv{
range_conversion_89/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_89/mul/y╝
range_conversion_89/mulMulrange_conversion_89/truediv:z:0"range_conversion_89/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/mul{
range_conversion_89/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_89/add/y║
range_conversion_89/addAddV2range_conversion_89/mul:z:0"range_conversion_89/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_89/add╡
0tf.__operators__.getitem_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_515/strided_slice/stack╣
2tf.__operators__.getitem_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_515/strided_slice/stack_1╣
2tf.__operators__.getitem_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_515/strided_slice/stack_2Т
*tf.__operators__.getitem_515/strided_sliceStridedSliceinputs9tf.__operators__.getitem_515/strided_slice/stack:output:0;tf.__operators__.getitem_515/strided_slice/stack_1:output:0;tf.__operators__.getitem_515/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_515/strided_slicex
tf.concat_705/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_705/concat/axisї
tf.concat_705/concatConcatV2range_conversion_89/add:z:03tf.__operators__.getitem_515/strided_slice:output:0"tf.concat_705/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_705/concat║
 conv3d_461/Conv3D/ReadVariableOpReadVariableOp)conv3d_461_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_461/Conv3D/ReadVariableOp°
conv3d_461/Conv3DConv3Dtf.concat_705/concat:output:0(conv3d_461/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_461/Conv3Dн
!conv3d_461/BiasAdd/ReadVariableOpReadVariableOp*conv3d_461_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_461/BiasAdd/ReadVariableOp╧
conv3d_461/BiasAddBiasAddconv3d_461/Conv3D:output:0)conv3d_461/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_461/BiasAddС
conv3d_461/SoftplusSoftplusconv3d_461/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_461/Softplusй
$average_pooling3d_186/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_186/transpose/perm▀
average_pooling3d_186/transpose	Transpose!conv3d_461/Softplus:activations:0-average_pooling3d_186/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_186/transposeЁ
average_pooling3d_186/AvgPool3D	AvgPool3D#average_pooling3d_186/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_186/AvgPool3Dн
&average_pooling3d_186/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_186/transpose_1/permь
!average_pooling3d_186/transpose_1	Transpose(average_pooling3d_186/AvgPool3D:output:0/average_pooling3d_186/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_186/transpose_1║
 conv3d_462/Conv3D/ReadVariableOpReadVariableOp)conv3d_462_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_462/Conv3D/ReadVariableOpА
conv3d_462/Conv3DConv3D%average_pooling3d_186/transpose_1:y:0(conv3d_462/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_462/Conv3Dн
!conv3d_462/BiasAdd/ReadVariableOpReadVariableOp*conv3d_462_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_462/BiasAdd/ReadVariableOp╧
conv3d_462/BiasAddBiasAddconv3d_462/Conv3D:output:0)conv3d_462/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_462/BiasAddС
conv3d_462/SoftplusSoftplusconv3d_462/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_462/Softplusй
$average_pooling3d_187/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_187/transpose/perm▀
average_pooling3d_187/transpose	Transpose!conv3d_462/Softplus:activations:0-average_pooling3d_187/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_187/transposeЁ
average_pooling3d_187/AvgPool3D	AvgPool3D#average_pooling3d_187/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_187/AvgPool3Dн
&average_pooling3d_187/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_187/transpose_1/permь
!average_pooling3d_187/transpose_1	Transpose(average_pooling3d_187/AvgPool3D:output:0/average_pooling3d_187/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_187/transpose_1║
 conv3d_463/Conv3D/ReadVariableOpReadVariableOp)conv3d_463_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_463/Conv3D/ReadVariableOpА
conv3d_463/Conv3DConv3D%average_pooling3d_187/transpose_1:y:0(conv3d_463/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_463/Conv3Dн
!conv3d_463/BiasAdd/ReadVariableOpReadVariableOp*conv3d_463_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_463/BiasAdd/ReadVariableOp╧
conv3d_463/BiasAddBiasAddconv3d_463/Conv3D:output:0)conv3d_463/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_463/BiasAddС
conv3d_463/SoftplusSoftplusconv3d_463/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_463/Softplusй
$average_pooling3d_188/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_188/transpose/perm▀
average_pooling3d_188/transpose	Transpose!conv3d_463/Softplus:activations:0-average_pooling3d_188/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_188/transposeЁ
average_pooling3d_188/AvgPool3D	AvgPool3D#average_pooling3d_188/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_188/AvgPool3Dн
&average_pooling3d_188/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_188/transpose_1/permь
!average_pooling3d_188/transpose_1	Transpose(average_pooling3d_188/AvgPool3D:output:0/average_pooling3d_188/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_188/transpose_1║
 conv3d_464/Conv3D/ReadVariableOpReadVariableOp)conv3d_464_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_464/Conv3D/ReadVariableOpА
conv3d_464/Conv3DConv3D%average_pooling3d_188/transpose_1:y:0(conv3d_464/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_464/Conv3Dн
!conv3d_464/BiasAdd/ReadVariableOpReadVariableOp*conv3d_464_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_464/BiasAdd/ReadVariableOp╧
conv3d_464/BiasAddBiasAddconv3d_464/Conv3D:output:0)conv3d_464/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_464/BiasAddС
conv3d_464/SoftplusSoftplusconv3d_464/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_464/Softplusй
$average_pooling3d_189/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_189/transpose/perm▀
average_pooling3d_189/transpose	Transpose!conv3d_464/Softplus:activations:0-average_pooling3d_189/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_189/transposeЁ
average_pooling3d_189/AvgPool3D	AvgPool3D#average_pooling3d_189/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_189/AvgPool3Dн
&average_pooling3d_189/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_189/transpose_1/permь
!average_pooling3d_189/transpose_1	Transpose(average_pooling3d_189/AvgPool3D:output:0/average_pooling3d_189/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_189/transpose_1{
reshape_178/ShapeShape%average_pooling3d_189/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_178/ShapeМ
reshape_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_178/strided_slice/stackР
!reshape_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_1Р
!reshape_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_2к
reshape_178/strided_sliceStridedSlicereshape_178/Shape:output:0(reshape_178/strided_slice/stack:output:0*reshape_178/strided_slice/stack_1:output:0*reshape_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_178/strided_slice|
reshape_178/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_178/Reshape/shape/1╢
reshape_178/Reshape/shapePack"reshape_178/strided_slice:output:0$reshape_178/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_178/Reshape/shape▓
reshape_178/ReshapeReshape%average_pooling3d_189/transpose_1:y:0"reshape_178/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_178/Reshapeи
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_89/MatMul/ReadVariableOpд
dense_89/MatMulMatMulreshape_178/Reshape:output:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_89/MatMulз
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_89/BiasAdd/ReadVariableOpе
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_89/BiasAdd
dense_89/SoftplusSoftplusdense_89/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_89/Softplusu
reshape_179/ShapeShapedense_89/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_179/ShapeМ
reshape_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_179/strided_slice/stackР
!reshape_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_179/strided_slice/stack_1Р
!reshape_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_179/strided_slice/stack_2к
reshape_179/strided_sliceStridedSlicereshape_179/Shape:output:0(reshape_179/strided_slice/stack:output:0*reshape_179/strided_slice/stack_1:output:0*reshape_179/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_179/strided_slice|
reshape_179/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/1|
reshape_179/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/2|
reshape_179/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/3|
reshape_179/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_179/Reshape/shape/4и
reshape_179/Reshape/shapePack"reshape_179/strided_slice:output:0$reshape_179/Reshape/shape/1:output:0$reshape_179/Reshape/shape/2:output:0$reshape_179/Reshape/shape/3:output:0$reshape_179/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_179/Reshape/shape╕
reshape_179/ReshapeReshapedense_89/Softplus:activations:0"reshape_179/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_179/Reshapeе
tf.reshape_896/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_896/Reshape/shape╩
tf.reshape_896/ReshapeReshapereshape_179/Reshape:output:0%tf.reshape_896/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_896/Reshapeб
tf.tile_448/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_448/Tile/multiples╝
tf.tile_448/TileTiletf.reshape_896/Reshape:output:0#tf.tile_448/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_448/TileЩ
tf.reshape_897/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_897/Reshape/shape╗
tf.reshape_897/ReshapeReshapetf.tile_448/Tile:output:0%tf.reshape_897/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_897/Reshapex
tf.concat_706/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_706/concat/axisч
tf.concat_706/concatConcatV2tf.reshape_897/Reshape:output:0!conv3d_464/Softplus:activations:0"tf.concat_706/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_706/concat║
 conv3d_465/Conv3D/ReadVariableOpReadVariableOp)conv3d_465_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_465/Conv3D/ReadVariableOp°
conv3d_465/Conv3DConv3Dtf.concat_706/concat:output:0(conv3d_465/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_465/Conv3Dн
!conv3d_465/BiasAdd/ReadVariableOpReadVariableOp*conv3d_465_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_465/BiasAdd/ReadVariableOp╧
conv3d_465/BiasAddBiasAddconv3d_465/Conv3D:output:0)conv3d_465/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_465/BiasAddС
conv3d_465/SoftplusSoftplusconv3d_465/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_465/Softplusе
tf.reshape_898/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_898/Reshape/shape╧
tf.reshape_898/ReshapeReshape!conv3d_465/Softplus:activations:0%tf.reshape_898/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_898/Reshapeб
tf.tile_449/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_449/Tile/multiples╝
tf.tile_449/TileTiletf.reshape_898/Reshape:output:0#tf.tile_449/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_449/TileЩ
tf.reshape_899/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_899/Reshape/shape╗
tf.reshape_899/ReshapeReshapetf.tile_449/Tile:output:0%tf.reshape_899/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_899/Reshapex
tf.concat_707/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_707/concat/axisч
tf.concat_707/concatConcatV2tf.reshape_899/Reshape:output:0!conv3d_463/Softplus:activations:0"tf.concat_707/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_707/concat║
 conv3d_466/Conv3D/ReadVariableOpReadVariableOp)conv3d_466_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_466/Conv3D/ReadVariableOp°
conv3d_466/Conv3DConv3Dtf.concat_707/concat:output:0(conv3d_466/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_466/Conv3Dн
!conv3d_466/BiasAdd/ReadVariableOpReadVariableOp*conv3d_466_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_466/BiasAdd/ReadVariableOp╧
conv3d_466/BiasAddBiasAddconv3d_466/Conv3D:output:0)conv3d_466/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_466/BiasAddС
conv3d_466/SoftplusSoftplusconv3d_466/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_466/Softplusе
tf.reshape_900/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_900/Reshape/shape╧
tf.reshape_900/ReshapeReshape!conv3d_466/Softplus:activations:0%tf.reshape_900/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_900/Reshapeб
tf.tile_450/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_450/Tile/multiples╝
tf.tile_450/TileTiletf.reshape_900/Reshape:output:0#tf.tile_450/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_450/TileЩ
tf.reshape_901/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_901/Reshape/shape╗
tf.reshape_901/ReshapeReshapetf.tile_450/Tile:output:0%tf.reshape_901/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_901/Reshapex
tf.concat_708/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_708/concat/axisч
tf.concat_708/concatConcatV2tf.reshape_901/Reshape:output:0!conv3d_462/Softplus:activations:0"tf.concat_708/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_708/concat║
 conv3d_467/Conv3D/ReadVariableOpReadVariableOp)conv3d_467_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_467/Conv3D/ReadVariableOp°
conv3d_467/Conv3DConv3Dtf.concat_708/concat:output:0(conv3d_467/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_467/Conv3Dн
!conv3d_467/BiasAdd/ReadVariableOpReadVariableOp*conv3d_467_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_467/BiasAdd/ReadVariableOp╧
conv3d_467/BiasAddBiasAddconv3d_467/Conv3D:output:0)conv3d_467/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_467/BiasAddС
conv3d_467/SoftplusSoftplusconv3d_467/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_467/Softplusе
tf.reshape_902/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_902/Reshape/shape╧
tf.reshape_902/ReshapeReshape!conv3d_467/Softplus:activations:0%tf.reshape_902/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_902/Reshapeб
tf.tile_451/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_451/Tile/multiples╝
tf.tile_451/TileTiletf.reshape_902/Reshape:output:0#tf.tile_451/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_451/TileЩ
tf.reshape_903/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_903/Reshape/shape╗
tf.reshape_903/ReshapeReshapetf.tile_451/Tile:output:0%tf.reshape_903/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_903/Reshapex
tf.concat_709/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_709/concat/axisч
tf.concat_709/concatConcatV2tf.reshape_903/Reshape:output:0!conv3d_461/Softplus:activations:0"tf.concat_709/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_709/concat║
 conv3d_468/Conv3D/ReadVariableOpReadVariableOp)conv3d_468_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_468/Conv3D/ReadVariableOp°
conv3d_468/Conv3DConv3Dtf.concat_709/concat:output:0(conv3d_468/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_468/Conv3Dн
!conv3d_468/BiasAdd/ReadVariableOpReadVariableOp*conv3d_468_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_468/BiasAdd/ReadVariableOp╧
conv3d_468/BiasAddBiasAddconv3d_468/Conv3D:output:0)conv3d_468/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_468/BiasAddС
conv3d_468/SoftplusSoftplusconv3d_468/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_468/Softplus║
 conv3d_469/Conv3D/ReadVariableOpReadVariableOp)conv3d_469_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_469/Conv3D/ReadVariableOp№
conv3d_469/Conv3DConv3D!conv3d_468/Softplus:activations:0(conv3d_469/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_469/Conv3Dн
!conv3d_469/BiasAdd/ReadVariableOpReadVariableOp*conv3d_469_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_469/BiasAdd/ReadVariableOp╧
conv3d_469/BiasAddBiasAddconv3d_469/Conv3D:output:0)conv3d_469/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_469/BiasAddВ
IdentityIdentityconv3d_469/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_461/BiasAdd/ReadVariableOp!^conv3d_461/Conv3D/ReadVariableOp"^conv3d_462/BiasAdd/ReadVariableOp!^conv3d_462/Conv3D/ReadVariableOp"^conv3d_463/BiasAdd/ReadVariableOp!^conv3d_463/Conv3D/ReadVariableOp"^conv3d_464/BiasAdd/ReadVariableOp!^conv3d_464/Conv3D/ReadVariableOp"^conv3d_465/BiasAdd/ReadVariableOp!^conv3d_465/Conv3D/ReadVariableOp"^conv3d_466/BiasAdd/ReadVariableOp!^conv3d_466/Conv3D/ReadVariableOp"^conv3d_467/BiasAdd/ReadVariableOp!^conv3d_467/Conv3D/ReadVariableOp"^conv3d_468/BiasAdd/ReadVariableOp!^conv3d_468/Conv3D/ReadVariableOp"^conv3d_469/BiasAdd/ReadVariableOp!^conv3d_469/Conv3D/ReadVariableOp ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_461/BiasAdd/ReadVariableOp!conv3d_461/BiasAdd/ReadVariableOp2D
 conv3d_461/Conv3D/ReadVariableOp conv3d_461/Conv3D/ReadVariableOp2F
!conv3d_462/BiasAdd/ReadVariableOp!conv3d_462/BiasAdd/ReadVariableOp2D
 conv3d_462/Conv3D/ReadVariableOp conv3d_462/Conv3D/ReadVariableOp2F
!conv3d_463/BiasAdd/ReadVariableOp!conv3d_463/BiasAdd/ReadVariableOp2D
 conv3d_463/Conv3D/ReadVariableOp conv3d_463/Conv3D/ReadVariableOp2F
!conv3d_464/BiasAdd/ReadVariableOp!conv3d_464/BiasAdd/ReadVariableOp2D
 conv3d_464/Conv3D/ReadVariableOp conv3d_464/Conv3D/ReadVariableOp2F
!conv3d_465/BiasAdd/ReadVariableOp!conv3d_465/BiasAdd/ReadVariableOp2D
 conv3d_465/Conv3D/ReadVariableOp conv3d_465/Conv3D/ReadVariableOp2F
!conv3d_466/BiasAdd/ReadVariableOp!conv3d_466/BiasAdd/ReadVariableOp2D
 conv3d_466/Conv3D/ReadVariableOp conv3d_466/Conv3D/ReadVariableOp2F
!conv3d_467/BiasAdd/ReadVariableOp!conv3d_467/BiasAdd/ReadVariableOp2D
 conv3d_467/Conv3D/ReadVariableOp conv3d_467/Conv3D/ReadVariableOp2F
!conv3d_468/BiasAdd/ReadVariableOp!conv3d_468/BiasAdd/ReadVariableOp2D
 conv3d_468/Conv3D/ReadVariableOp conv3d_468/Conv3D/ReadVariableOp2F
!conv3d_469/BiasAdd/ReadVariableOp!conv3d_469/BiasAdd/ReadVariableOp2D
 conv3d_469/Conv3D/ReadVariableOp conv3d_469/Conv3D/ReadVariableOp2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_462_layer_call_fn_24047624

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
H__inference_conv3d_462_layer_call_and_return_conditional_losses_240462292
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
БУ
б

F__inference_model_89_layer_call_and_return_conditional_losses_24046464

inputs1
conv3d_461_24046203: !
conv3d_461_24046205: 1
conv3d_462_24046230: !
conv3d_462_24046232:1
conv3d_463_24046257:!
conv3d_463_24046259:1
conv3d_464_24046284:!
conv3d_464_24046286:#
dense_89_24046325:@@
dense_89_24046327:@1
conv3d_465_24046367:!
conv3d_465_24046369:1
conv3d_466_24046392:!
conv3d_466_24046394:1
conv3d_467_24046417:!
conv3d_467_24046419:1
conv3d_468_24046442:0 !
conv3d_468_24046444: 1
conv3d_469_24046458: !
conv3d_469_24046460:
identityИв"conv3d_461/StatefulPartitionedCallв"conv3d_462/StatefulPartitionedCallв"conv3d_463/StatefulPartitionedCallв"conv3d_464/StatefulPartitionedCallв"conv3d_465/StatefulPartitionedCallв"conv3d_466/StatefulPartitionedCallв"conv3d_467/StatefulPartitionedCallв"conv3d_468/StatefulPartitionedCallв"conv3d_469/StatefulPartitionedCallв dense_89/StatefulPartitionedCall╡
0tf.__operators__.getitem_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_514/strided_slice/stack╣
2tf.__operators__.getitem_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_514/strided_slice/stack_1╣
2tf.__operators__.getitem_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_514/strided_slice/stack_2Т
*tf.__operators__.getitem_514/strided_sliceStridedSliceinputs9tf.__operators__.getitem_514/strided_slice/stack:output:0;tf.__operators__.getitem_514/strided_slice/stack_1:output:0;tf.__operators__.getitem_514/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_514/strided_slice╗
#range_conversion_89/PartitionedCallPartitionedCall3tf.__operators__.getitem_514/strided_slice:output:0*
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
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_240461832%
#range_conversion_89/PartitionedCall╡
0tf.__operators__.getitem_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_515/strided_slice/stack╣
2tf.__operators__.getitem_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_515/strided_slice/stack_1╣
2tf.__operators__.getitem_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_515/strided_slice/stack_2Т
*tf.__operators__.getitem_515/strided_sliceStridedSliceinputs9tf.__operators__.getitem_515/strided_slice/stack:output:0;tf.__operators__.getitem_515/strided_slice/stack_1:output:0;tf.__operators__.getitem_515/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_515/strided_slicex
tf.concat_705/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_705/concat/axisЖ
tf.concat_705/concatConcatV2,range_conversion_89/PartitionedCall:output:03tf.__operators__.getitem_515/strided_slice:output:0"tf.concat_705/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_705/concat╥
"conv3d_461/StatefulPartitionedCallStatefulPartitionedCalltf.concat_705/concat:output:0conv3d_461_24046203conv3d_461_24046205*
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
H__inference_conv3d_461_layer_call_and_return_conditional_losses_240462022$
"conv3d_461/StatefulPartitionedCall╣
%average_pooling3d_186/PartitionedCallPartitionedCall+conv3d_461/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_240462162'
%average_pooling3d_186/PartitionedCallу
"conv3d_462/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_186/PartitionedCall:output:0conv3d_462_24046230conv3d_462_24046232*
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
H__inference_conv3d_462_layer_call_and_return_conditional_losses_240462292$
"conv3d_462/StatefulPartitionedCall╣
%average_pooling3d_187/PartitionedCallPartitionedCall+conv3d_462/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_240462432'
%average_pooling3d_187/PartitionedCallу
"conv3d_463/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_187/PartitionedCall:output:0conv3d_463_24046257conv3d_463_24046259*
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
H__inference_conv3d_463_layer_call_and_return_conditional_losses_240462562$
"conv3d_463/StatefulPartitionedCall╣
%average_pooling3d_188/PartitionedCallPartitionedCall+conv3d_463/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_240462702'
%average_pooling3d_188/PartitionedCallу
"conv3d_464/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_188/PartitionedCall:output:0conv3d_464_24046284conv3d_464_24046286*
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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_240462832$
"conv3d_464/StatefulPartitionedCall╣
%average_pooling3d_189/PartitionedCallPartitionedCall+conv3d_464/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_240462972'
%average_pooling3d_189/PartitionedCallТ
reshape_178/PartitionedCallPartitionedCall.average_pooling3d_189/PartitionedCall:output:0*
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
I__inference_reshape_178_layer_call_and_return_conditional_losses_240463112
reshape_178/PartitionedCall├
 dense_89/StatefulPartitionedCallStatefulPartitionedCall$reshape_178/PartitionedCall:output:0dense_89_24046325dense_89_24046327*
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
F__inference_dense_89_layer_call_and_return_conditional_losses_240463242"
 dense_89/StatefulPartitionedCallЩ
reshape_179/PartitionedCallPartitionedCall)dense_89/StatefulPartitionedCall:output:0*
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
I__inference_reshape_179_layer_call_and_return_conditional_losses_240463452
reshape_179/PartitionedCallе
tf.reshape_896/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_896/Reshape/shape╥
tf.reshape_896/ReshapeReshape$reshape_179/PartitionedCall:output:0%tf.reshape_896/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_896/Reshapeб
tf.tile_448/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_448/Tile/multiples╝
tf.tile_448/TileTiletf.reshape_896/Reshape:output:0#tf.tile_448/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_448/TileЩ
tf.reshape_897/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_897/Reshape/shape╗
tf.reshape_897/ReshapeReshapetf.tile_448/Tile:output:0%tf.reshape_897/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_897/Reshapex
tf.concat_706/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_706/concat/axisё
tf.concat_706/concatConcatV2tf.reshape_897/Reshape:output:0+conv3d_464/StatefulPartitionedCall:output:0"tf.concat_706/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_706/concat╥
"conv3d_465/StatefulPartitionedCallStatefulPartitionedCalltf.concat_706/concat:output:0conv3d_465_24046367conv3d_465_24046369*
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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_240463662$
"conv3d_465/StatefulPartitionedCallе
tf.reshape_898/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_898/Reshape/shape┘
tf.reshape_898/ReshapeReshape+conv3d_465/StatefulPartitionedCall:output:0%tf.reshape_898/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_898/Reshapeб
tf.tile_449/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_449/Tile/multiples╝
tf.tile_449/TileTiletf.reshape_898/Reshape:output:0#tf.tile_449/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_449/TileЩ
tf.reshape_899/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_899/Reshape/shape╗
tf.reshape_899/ReshapeReshapetf.tile_449/Tile:output:0%tf.reshape_899/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_899/Reshapex
tf.concat_707/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_707/concat/axisё
tf.concat_707/concatConcatV2tf.reshape_899/Reshape:output:0+conv3d_463/StatefulPartitionedCall:output:0"tf.concat_707/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_707/concat╥
"conv3d_466/StatefulPartitionedCallStatefulPartitionedCalltf.concat_707/concat:output:0conv3d_466_24046392conv3d_466_24046394*
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
H__inference_conv3d_466_layer_call_and_return_conditional_losses_240463912$
"conv3d_466/StatefulPartitionedCallе
tf.reshape_900/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_900/Reshape/shape┘
tf.reshape_900/ReshapeReshape+conv3d_466/StatefulPartitionedCall:output:0%tf.reshape_900/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_900/Reshapeб
tf.tile_450/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_450/Tile/multiples╝
tf.tile_450/TileTiletf.reshape_900/Reshape:output:0#tf.tile_450/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_450/TileЩ
tf.reshape_901/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_901/Reshape/shape╗
tf.reshape_901/ReshapeReshapetf.tile_450/Tile:output:0%tf.reshape_901/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_901/Reshapex
tf.concat_708/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_708/concat/axisё
tf.concat_708/concatConcatV2tf.reshape_901/Reshape:output:0+conv3d_462/StatefulPartitionedCall:output:0"tf.concat_708/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_708/concat╥
"conv3d_467/StatefulPartitionedCallStatefulPartitionedCalltf.concat_708/concat:output:0conv3d_467_24046417conv3d_467_24046419*
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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_240464162$
"conv3d_467/StatefulPartitionedCallе
tf.reshape_902/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_902/Reshape/shape┘
tf.reshape_902/ReshapeReshape+conv3d_467/StatefulPartitionedCall:output:0%tf.reshape_902/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_902/Reshapeб
tf.tile_451/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_451/Tile/multiples╝
tf.tile_451/TileTiletf.reshape_902/Reshape:output:0#tf.tile_451/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_451/TileЩ
tf.reshape_903/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_903/Reshape/shape╗
tf.reshape_903/ReshapeReshapetf.tile_451/Tile:output:0%tf.reshape_903/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_903/Reshapex
tf.concat_709/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_709/concat/axisё
tf.concat_709/concatConcatV2tf.reshape_903/Reshape:output:0+conv3d_461/StatefulPartitionedCall:output:0"tf.concat_709/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_709/concat╥
"conv3d_468/StatefulPartitionedCallStatefulPartitionedCalltf.concat_709/concat:output:0conv3d_468_24046442conv3d_468_24046444*
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
H__inference_conv3d_468_layer_call_and_return_conditional_losses_240464412$
"conv3d_468/StatefulPartitionedCallр
"conv3d_469/StatefulPartitionedCallStatefulPartitionedCall+conv3d_468/StatefulPartitionedCall:output:0conv3d_469_24046458conv3d_469_24046460*
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
H__inference_conv3d_469_layer_call_and_return_conditional_losses_240464572$
"conv3d_469/StatefulPartitionedCallТ
IdentityIdentity+conv3d_469/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_461/StatefulPartitionedCall#^conv3d_462/StatefulPartitionedCall#^conv3d_463/StatefulPartitionedCall#^conv3d_464/StatefulPartitionedCall#^conv3d_465/StatefulPartitionedCall#^conv3d_466/StatefulPartitionedCall#^conv3d_467/StatefulPartitionedCall#^conv3d_468/StatefulPartitionedCall#^conv3d_469/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_461/StatefulPartitionedCall"conv3d_461/StatefulPartitionedCall2H
"conv3d_462/StatefulPartitionedCall"conv3d_462/StatefulPartitionedCall2H
"conv3d_463/StatefulPartitionedCall"conv3d_463/StatefulPartitionedCall2H
"conv3d_464/StatefulPartitionedCall"conv3d_464/StatefulPartitionedCall2H
"conv3d_465/StatefulPartitionedCall"conv3d_465/StatefulPartitionedCall2H
"conv3d_466/StatefulPartitionedCall"conv3d_466/StatefulPartitionedCall2H
"conv3d_467/StatefulPartitionedCall"conv3d_467/StatefulPartitionedCall2H
"conv3d_468/StatefulPartitionedCall"conv3d_468/StatefulPartitionedCall2H
"conv3d_469/StatefulPartitionedCall"conv3d_469/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_461_layer_call_and_return_conditional_losses_24046202

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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24047606

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
-__inference_conv3d_469_layer_call_fn_24047905

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
H__inference_conv3d_469_layer_call_and_return_conditional_losses_240464572
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
щ
J
.__inference_reshape_178_layer_call_fn_24047764

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
I__inference_reshape_178_layer_call_and_return_conditional_losses_240463112
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
╓
Е
H__inference_conv3d_469_layer_call_and_return_conditional_losses_24046457

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

F__inference_model_89_layer_call_and_return_conditional_losses_24046795

inputs1
conv3d_461_24046706: !
conv3d_461_24046708: 1
conv3d_462_24046712: !
conv3d_462_24046714:1
conv3d_463_24046718:!
conv3d_463_24046720:1
conv3d_464_24046724:!
conv3d_464_24046726:#
dense_89_24046731:@@
dense_89_24046733:@1
conv3d_465_24046745:!
conv3d_465_24046747:1
conv3d_466_24046758:!
conv3d_466_24046760:1
conv3d_467_24046771:!
conv3d_467_24046773:1
conv3d_468_24046784:0 !
conv3d_468_24046786: 1
conv3d_469_24046789: !
conv3d_469_24046791:
identityИв"conv3d_461/StatefulPartitionedCallв"conv3d_462/StatefulPartitionedCallв"conv3d_463/StatefulPartitionedCallв"conv3d_464/StatefulPartitionedCallв"conv3d_465/StatefulPartitionedCallв"conv3d_466/StatefulPartitionedCallв"conv3d_467/StatefulPartitionedCallв"conv3d_468/StatefulPartitionedCallв"conv3d_469/StatefulPartitionedCallв dense_89/StatefulPartitionedCall╡
0tf.__operators__.getitem_514/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_514/strided_slice/stack╣
2tf.__operators__.getitem_514/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_514/strided_slice/stack_1╣
2tf.__operators__.getitem_514/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_514/strided_slice/stack_2Т
*tf.__operators__.getitem_514/strided_sliceStridedSliceinputs9tf.__operators__.getitem_514/strided_slice/stack:output:0;tf.__operators__.getitem_514/strided_slice/stack_1:output:0;tf.__operators__.getitem_514/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_514/strided_slice╗
#range_conversion_89/PartitionedCallPartitionedCall3tf.__operators__.getitem_514/strided_slice:output:0*
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
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_240461832%
#range_conversion_89/PartitionedCall╡
0tf.__operators__.getitem_515/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_515/strided_slice/stack╣
2tf.__operators__.getitem_515/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_515/strided_slice/stack_1╣
2tf.__operators__.getitem_515/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_515/strided_slice/stack_2Т
*tf.__operators__.getitem_515/strided_sliceStridedSliceinputs9tf.__operators__.getitem_515/strided_slice/stack:output:0;tf.__operators__.getitem_515/strided_slice/stack_1:output:0;tf.__operators__.getitem_515/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_515/strided_slicex
tf.concat_705/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_705/concat/axisЖ
tf.concat_705/concatConcatV2,range_conversion_89/PartitionedCall:output:03tf.__operators__.getitem_515/strided_slice:output:0"tf.concat_705/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_705/concat╥
"conv3d_461/StatefulPartitionedCallStatefulPartitionedCalltf.concat_705/concat:output:0conv3d_461_24046706conv3d_461_24046708*
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
H__inference_conv3d_461_layer_call_and_return_conditional_losses_240462022$
"conv3d_461/StatefulPartitionedCall╣
%average_pooling3d_186/PartitionedCallPartitionedCall+conv3d_461/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_240462162'
%average_pooling3d_186/PartitionedCallу
"conv3d_462/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_186/PartitionedCall:output:0conv3d_462_24046712conv3d_462_24046714*
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
H__inference_conv3d_462_layer_call_and_return_conditional_losses_240462292$
"conv3d_462/StatefulPartitionedCall╣
%average_pooling3d_187/PartitionedCallPartitionedCall+conv3d_462/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_240462432'
%average_pooling3d_187/PartitionedCallу
"conv3d_463/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_187/PartitionedCall:output:0conv3d_463_24046718conv3d_463_24046720*
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
H__inference_conv3d_463_layer_call_and_return_conditional_losses_240462562$
"conv3d_463/StatefulPartitionedCall╣
%average_pooling3d_188/PartitionedCallPartitionedCall+conv3d_463/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_240462702'
%average_pooling3d_188/PartitionedCallу
"conv3d_464/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_188/PartitionedCall:output:0conv3d_464_24046724conv3d_464_24046726*
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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_240462832$
"conv3d_464/StatefulPartitionedCall╣
%average_pooling3d_189/PartitionedCallPartitionedCall+conv3d_464/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_240462972'
%average_pooling3d_189/PartitionedCallТ
reshape_178/PartitionedCallPartitionedCall.average_pooling3d_189/PartitionedCall:output:0*
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
I__inference_reshape_178_layer_call_and_return_conditional_losses_240463112
reshape_178/PartitionedCall├
 dense_89/StatefulPartitionedCallStatefulPartitionedCall$reshape_178/PartitionedCall:output:0dense_89_24046731dense_89_24046733*
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
F__inference_dense_89_layer_call_and_return_conditional_losses_240463242"
 dense_89/StatefulPartitionedCallЩ
reshape_179/PartitionedCallPartitionedCall)dense_89/StatefulPartitionedCall:output:0*
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
I__inference_reshape_179_layer_call_and_return_conditional_losses_240463452
reshape_179/PartitionedCallе
tf.reshape_896/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_896/Reshape/shape╥
tf.reshape_896/ReshapeReshape$reshape_179/PartitionedCall:output:0%tf.reshape_896/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_896/Reshapeб
tf.tile_448/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_448/Tile/multiples╝
tf.tile_448/TileTiletf.reshape_896/Reshape:output:0#tf.tile_448/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_448/TileЩ
tf.reshape_897/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_897/Reshape/shape╗
tf.reshape_897/ReshapeReshapetf.tile_448/Tile:output:0%tf.reshape_897/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_897/Reshapex
tf.concat_706/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_706/concat/axisё
tf.concat_706/concatConcatV2tf.reshape_897/Reshape:output:0+conv3d_464/StatefulPartitionedCall:output:0"tf.concat_706/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_706/concat╥
"conv3d_465/StatefulPartitionedCallStatefulPartitionedCalltf.concat_706/concat:output:0conv3d_465_24046745conv3d_465_24046747*
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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_240463662$
"conv3d_465/StatefulPartitionedCallе
tf.reshape_898/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_898/Reshape/shape┘
tf.reshape_898/ReshapeReshape+conv3d_465/StatefulPartitionedCall:output:0%tf.reshape_898/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_898/Reshapeб
tf.tile_449/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_449/Tile/multiples╝
tf.tile_449/TileTiletf.reshape_898/Reshape:output:0#tf.tile_449/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_449/TileЩ
tf.reshape_899/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_899/Reshape/shape╗
tf.reshape_899/ReshapeReshapetf.tile_449/Tile:output:0%tf.reshape_899/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_899/Reshapex
tf.concat_707/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_707/concat/axisё
tf.concat_707/concatConcatV2tf.reshape_899/Reshape:output:0+conv3d_463/StatefulPartitionedCall:output:0"tf.concat_707/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_707/concat╥
"conv3d_466/StatefulPartitionedCallStatefulPartitionedCalltf.concat_707/concat:output:0conv3d_466_24046758conv3d_466_24046760*
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
H__inference_conv3d_466_layer_call_and_return_conditional_losses_240463912$
"conv3d_466/StatefulPartitionedCallе
tf.reshape_900/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_900/Reshape/shape┘
tf.reshape_900/ReshapeReshape+conv3d_466/StatefulPartitionedCall:output:0%tf.reshape_900/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_900/Reshapeб
tf.tile_450/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_450/Tile/multiples╝
tf.tile_450/TileTiletf.reshape_900/Reshape:output:0#tf.tile_450/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_450/TileЩ
tf.reshape_901/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_901/Reshape/shape╗
tf.reshape_901/ReshapeReshapetf.tile_450/Tile:output:0%tf.reshape_901/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_901/Reshapex
tf.concat_708/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_708/concat/axisё
tf.concat_708/concatConcatV2tf.reshape_901/Reshape:output:0+conv3d_462/StatefulPartitionedCall:output:0"tf.concat_708/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_708/concat╥
"conv3d_467/StatefulPartitionedCallStatefulPartitionedCalltf.concat_708/concat:output:0conv3d_467_24046771conv3d_467_24046773*
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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_240464162$
"conv3d_467/StatefulPartitionedCallе
tf.reshape_902/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_902/Reshape/shape┘
tf.reshape_902/ReshapeReshape+conv3d_467/StatefulPartitionedCall:output:0%tf.reshape_902/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_902/Reshapeб
tf.tile_451/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_451/Tile/multiples╝
tf.tile_451/TileTiletf.reshape_902/Reshape:output:0#tf.tile_451/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_451/TileЩ
tf.reshape_903/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_903/Reshape/shape╗
tf.reshape_903/ReshapeReshapetf.tile_451/Tile:output:0%tf.reshape_903/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_903/Reshapex
tf.concat_709/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_709/concat/axisё
tf.concat_709/concatConcatV2tf.reshape_903/Reshape:output:0+conv3d_461/StatefulPartitionedCall:output:0"tf.concat_709/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_709/concat╥
"conv3d_468/StatefulPartitionedCallStatefulPartitionedCalltf.concat_709/concat:output:0conv3d_468_24046784conv3d_468_24046786*
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
H__inference_conv3d_468_layer_call_and_return_conditional_losses_240464412$
"conv3d_468/StatefulPartitionedCallр
"conv3d_469/StatefulPartitionedCallStatefulPartitionedCall+conv3d_468/StatefulPartitionedCall:output:0conv3d_469_24046789conv3d_469_24046791*
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
H__inference_conv3d_469_layer_call_and_return_conditional_losses_240464572$
"conv3d_469/StatefulPartitionedCallТ
IdentityIdentity+conv3d_469/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_461/StatefulPartitionedCall#^conv3d_462/StatefulPartitionedCall#^conv3d_463/StatefulPartitionedCall#^conv3d_464/StatefulPartitionedCall#^conv3d_465/StatefulPartitionedCall#^conv3d_466/StatefulPartitionedCall#^conv3d_467/StatefulPartitionedCall#^conv3d_468/StatefulPartitionedCall#^conv3d_469/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_461/StatefulPartitionedCall"conv3d_461/StatefulPartitionedCall2H
"conv3d_462/StatefulPartitionedCall"conv3d_462/StatefulPartitionedCall2H
"conv3d_463/StatefulPartitionedCall"conv3d_463/StatefulPartitionedCall2H
"conv3d_464/StatefulPartitionedCall"conv3d_464/StatefulPartitionedCall2H
"conv3d_465/StatefulPartitionedCall"conv3d_465/StatefulPartitionedCall2H
"conv3d_466/StatefulPartitionedCall"conv3d_466/StatefulPartitionedCall2H
"conv3d_467/StatefulPartitionedCall"conv3d_467/StatefulPartitionedCall2H
"conv3d_468/StatefulPartitionedCall"conv3d_468/StatefulPartitionedCall2H
"conv3d_469/StatefulPartitionedCall"conv3d_469/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_468_layer_call_and_return_conditional_losses_24047896

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
┴
ж
-__inference_conv3d_464_layer_call_fn_24047720

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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_240462832
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
Х
T
8__inference_average_pooling3d_186_layer_call_fn_24047597

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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_240462162
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
М	
o
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24047759

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
H__inference_conv3d_468_layer_call_and_return_conditional_losses_24046441

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
а
Є
+__inference_model_89_layer_call_fn_24046883	
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
F__inference_model_89_layer_call_and_return_conditional_losses_240467952
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
╒3
╛
!__inference__traced_save_24047998
file_prefix0
,savev2_conv3d_461_kernel_read_readvariableop.
*savev2_conv3d_461_bias_read_readvariableop0
,savev2_conv3d_462_kernel_read_readvariableop.
*savev2_conv3d_462_bias_read_readvariableop0
,savev2_conv3d_463_kernel_read_readvariableop.
*savev2_conv3d_463_bias_read_readvariableop0
,savev2_conv3d_464_kernel_read_readvariableop.
*savev2_conv3d_464_bias_read_readvariableop.
*savev2_dense_89_kernel_read_readvariableop,
(savev2_dense_89_bias_read_readvariableop0
,savev2_conv3d_465_kernel_read_readvariableop.
*savev2_conv3d_465_bias_read_readvariableop0
,savev2_conv3d_466_kernel_read_readvariableop.
*savev2_conv3d_466_bias_read_readvariableop0
,savev2_conv3d_467_kernel_read_readvariableop.
*savev2_conv3d_467_bias_read_readvariableop0
,savev2_conv3d_468_kernel_read_readvariableop.
*savev2_conv3d_468_bias_read_readvariableop0
,savev2_conv3d_469_kernel_read_readvariableop.
*savev2_conv3d_469_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_461_kernel_read_readvariableop*savev2_conv3d_461_bias_read_readvariableop,savev2_conv3d_462_kernel_read_readvariableop*savev2_conv3d_462_bias_read_readvariableop,savev2_conv3d_463_kernel_read_readvariableop*savev2_conv3d_463_bias_read_readvariableop,savev2_conv3d_464_kernel_read_readvariableop*savev2_conv3d_464_bias_read_readvariableop*savev2_dense_89_kernel_read_readvariableop(savev2_dense_89_bias_read_readvariableop,savev2_conv3d_465_kernel_read_readvariableop*savev2_conv3d_465_bias_read_readvariableop,savev2_conv3d_466_kernel_read_readvariableop*savev2_conv3d_466_bias_read_readvariableop,savev2_conv3d_467_kernel_read_readvariableop*savev2_conv3d_467_bias_read_readvariableop,savev2_conv3d_468_kernel_read_readvariableop*savev2_conv3d_468_bias_read_readvariableop,savev2_conv3d_469_kernel_read_readvariableop*savev2_conv3d_469_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
х

o
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24047750

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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_24047836

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
H__inference_conv3d_462_layer_call_and_return_conditional_losses_24047635

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
Ь
e
I__inference_reshape_178_layer_call_and_return_conditional_losses_24046311

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
H__inference_conv3d_466_layer_call_and_return_conditional_losses_24046391

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
┴
ж
-__inference_conv3d_466_layer_call_fn_24047845

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
H__inference_conv3d_466_layer_call_and_return_conditional_losses_240463912
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
ж
T
8__inference_average_pooling3d_189_layer_call_fn_24047736

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
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_240461432
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
ж
T
8__inference_average_pooling3d_187_layer_call_fn_24047640

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
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_240460832
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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_24046366

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
Х
T
8__inference_average_pooling3d_188_layer_call_fn_24047693

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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_240462702
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
╓
Е
H__inference_conv3d_469_layer_call_and_return_conditional_losses_24047915

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
х

o
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24047654

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
х

o
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24046143

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
H__inference_conv3d_461_layer_call_and_return_conditional_losses_24047587

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

conv3d_469<
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
1:/  2conv3d_461/kernel
:  2conv3d_461/bias
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
1:/  2conv3d_462/kernel
: 2conv3d_462/bias
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
1:/ 2conv3d_463/kernel
: 2conv3d_463/bias
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
1:/ 2conv3d_464/kernel
: 2conv3d_464/bias
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
#:!@@ 2dense_89/kernel
:@ 2dense_89/bias
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
1:/ 2conv3d_465/kernel
: 2conv3d_465/bias
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
1:/ 2conv3d_466/kernel
: 2conv3d_466/bias
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
1:/ 2conv3d_467/kernel
: 2conv3d_467/bias
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
1:/0  2conv3d_468/kernel
:  2conv3d_468/bias
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
1:/  2conv3d_469/kernel
: 2conv3d_469/bias
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
+__inference_model_89_layer_call_fn_24046507
+__inference_model_89_layer_call_fn_24047181
+__inference_model_89_layer_call_fn_24047226
+__inference_model_89_layer_call_fn_24046883└
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
#__inference__wrapped_model_24046040input"Ш
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
F__inference_model_89_layer_call_and_return_conditional_losses_24047388
F__inference_model_89_layer_call_and_return_conditional_losses_24047550
F__inference_model_89_layer_call_and_return_conditional_losses_24046986
F__inference_model_89_layer_call_and_return_conditional_losses_24047089└
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
6__inference_range_conversion_89_layer_call_fn_24047555ж
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
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_24047567ж
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
-__inference_conv3d_461_layer_call_fn_24047576в
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
H__inference_conv3d_461_layer_call_and_return_conditional_losses_24047587в
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
8__inference_average_pooling3d_186_layer_call_fn_24047592
8__inference_average_pooling3d_186_layer_call_fn_24047597в
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
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24047606
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24047615в
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
-__inference_conv3d_462_layer_call_fn_24047624в
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
H__inference_conv3d_462_layer_call_and_return_conditional_losses_24047635в
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
8__inference_average_pooling3d_187_layer_call_fn_24047640
8__inference_average_pooling3d_187_layer_call_fn_24047645в
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
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24047654
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24047663в
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
-__inference_conv3d_463_layer_call_fn_24047672в
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
H__inference_conv3d_463_layer_call_and_return_conditional_losses_24047683в
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
8__inference_average_pooling3d_188_layer_call_fn_24047688
8__inference_average_pooling3d_188_layer_call_fn_24047693в
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
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24047702
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24047711в
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
-__inference_conv3d_464_layer_call_fn_24047720в
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
H__inference_conv3d_464_layer_call_and_return_conditional_losses_24047731в
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
8__inference_average_pooling3d_189_layer_call_fn_24047736
8__inference_average_pooling3d_189_layer_call_fn_24047741в
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
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24047750
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24047759в
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
.__inference_reshape_178_layer_call_fn_24047764в
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
I__inference_reshape_178_layer_call_and_return_conditional_losses_24047776в
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
+__inference_dense_89_layer_call_fn_24047785в
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
F__inference_dense_89_layer_call_and_return_conditional_losses_24047796в
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
.__inference_reshape_179_layer_call_fn_24047801в
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
I__inference_reshape_179_layer_call_and_return_conditional_losses_24047816в
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
-__inference_conv3d_465_layer_call_fn_24047825в
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
H__inference_conv3d_465_layer_call_and_return_conditional_losses_24047836в
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
-__inference_conv3d_466_layer_call_fn_24047845в
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
H__inference_conv3d_466_layer_call_and_return_conditional_losses_24047856в
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
-__inference_conv3d_467_layer_call_fn_24047865в
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
H__inference_conv3d_467_layer_call_and_return_conditional_losses_24047876в
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
-__inference_conv3d_468_layer_call_fn_24047885в
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
H__inference_conv3d_468_layer_call_and_return_conditional_losses_24047896в
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
-__inference_conv3d_469_layer_call_fn_24047905в
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
H__inference_conv3d_469_layer_call_and_return_conditional_losses_24047915в
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
&__inference_signature_wrapper_24047136input"Ф
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
#__inference__wrapped_model_24046040Э23<=FGPQ^_lmvwАБКЛРС:в7
0в-
+К(
input         @@
к "Cк@
>

conv3d_4690К-

conv3d_469         @@Р
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24047606╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_186_layer_call_and_return_conditional_losses_24047615p;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0            
Ъ ш
8__inference_average_pooling3d_186_layer_call_fn_24047592л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_186_layer_call_fn_24047597c;в8
1в.
,К)
inputs          @@
к "$К!            Р
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24047654╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_187_layer_call_and_return_conditional_losses_24047663p;в8
1в.
,К)
inputs           
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_187_layer_call_fn_24047640л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_187_layer_call_fn_24047645c;в8
1в.
,К)
inputs           
к "$К!         Р
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24047702╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_188_layer_call_and_return_conditional_losses_24047711p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_188_layer_call_fn_24047688л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_188_layer_call_fn_24047693c;в8
1в.
,К)
inputs         
к "$К!         Р
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24047750╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_189_layer_call_and_return_conditional_losses_24047759p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_189_layer_call_fn_24047736л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_189_layer_call_fn_24047741c;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_461_layer_call_and_return_conditional_losses_24047587t23;в8
1в.
,К)
inputs         @@
к "1в.
'К$
0          @@
Ъ Ш
-__inference_conv3d_461_layer_call_fn_24047576g23;в8
1в.
,К)
inputs         @@
к "$К!          @@└
H__inference_conv3d_462_layer_call_and_return_conditional_losses_24047635t<=;в8
1в.
,К)
inputs            
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_462_layer_call_fn_24047624g<=;в8
1в.
,К)
inputs            
к "$К!           └
H__inference_conv3d_463_layer_call_and_return_conditional_losses_24047683tFG;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_463_layer_call_fn_24047672gFG;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_464_layer_call_and_return_conditional_losses_24047731tPQ;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_464_layer_call_fn_24047720gPQ;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_465_layer_call_and_return_conditional_losses_24047836tlm;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_465_layer_call_fn_24047825glm;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_466_layer_call_and_return_conditional_losses_24047856tvw;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_466_layer_call_fn_24047845gvw;в8
1в.
,К)
inputs         
к "$К!         ┬
H__inference_conv3d_467_layer_call_and_return_conditional_losses_24047876vАБ;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ъ
-__inference_conv3d_467_layer_call_fn_24047865iАБ;в8
1в.
,К)
inputs           
к "$К!           ┬
H__inference_conv3d_468_layer_call_and_return_conditional_losses_24047896vКЛ;в8
1в.
,К)
inputs         0@@
к "1в.
'К$
0          @@
Ъ Ъ
-__inference_conv3d_468_layer_call_fn_24047885iКЛ;в8
1в.
,К)
inputs         0@@
к "$К!          @@┬
H__inference_conv3d_469_layer_call_and_return_conditional_losses_24047915vРС;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0         @@
Ъ Ъ
-__inference_conv3d_469_layer_call_fn_24047905iРС;в8
1в.
,К)
inputs          @@
к "$К!         @@ж
F__inference_dense_89_layer_call_and_return_conditional_losses_24047796\^_/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_89_layer_call_fn_24047785O^_/в,
%в"
 К
inputs         @
к "К         @▐
F__inference_model_89_layer_call_and_return_conditional_losses_24046986У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_89_layer_call_and_return_conditional_losses_24047089У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_89_layer_call_and_return_conditional_losses_24047388Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
F__inference_model_89_layer_call_and_return_conditional_losses_24047550Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
+__inference_model_89_layer_call_fn_24046507Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p 

 
к "$К!         @@╢
+__inference_model_89_layer_call_fn_24046883Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p

 
к "$К!         @@╖
+__inference_model_89_layer_call_fn_24047181З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p 

 
к "$К!         @@╖
+__inference_model_89_layer_call_fn_24047226З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p

 
к "$К!         @@╔
Q__inference_range_conversion_89_layer_call_and_return_conditional_losses_24047567t?в<
5в2
0К-

parameters         @@
к "1в.
'К$
0         @@
Ъ б
6__inference_range_conversion_89_layer_call_fn_24047555g?в<
5в2
0К-

parameters         @@
к "$К!         @@▒
I__inference_reshape_178_layer_call_and_return_conditional_losses_24047776d;в8
1в.
,К)
inputs         
к "%в"
К
0         @
Ъ Й
.__inference_reshape_178_layer_call_fn_24047764W;в8
1в.
,К)
inputs         
к "К         @▒
I__inference_reshape_179_layer_call_and_return_conditional_losses_24047816d/в,
%в"
 К
inputs         @
к "1в.
'К$
0         
Ъ Й
.__inference_reshape_179_layer_call_fn_24047801W/в,
%в"
 К
inputs         @
к "$К!         ╤
&__inference_signature_wrapper_24047136ж23<=FGPQ^_lmvwАБКЛРСCв@
в 
9к6
4
input+К(
input         @@"Cк@
>

conv3d_4690К-

conv3d_469         @@