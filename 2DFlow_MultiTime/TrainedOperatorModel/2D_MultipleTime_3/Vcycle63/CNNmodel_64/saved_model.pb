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
conv3d_293/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_293/kernel
Г
%conv3d_293/kernel/Read/ReadVariableOpReadVariableOpconv3d_293/kernel**
_output_shapes
: *
dtype0
v
conv3d_293/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_293/bias
o
#conv3d_293/bias/Read/ReadVariableOpReadVariableOpconv3d_293/bias*
_output_shapes
: *
dtype0
К
conv3d_294/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_294/kernel
Г
%conv3d_294/kernel/Read/ReadVariableOpReadVariableOpconv3d_294/kernel**
_output_shapes
: *
dtype0
v
conv3d_294/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_294/bias
o
#conv3d_294/bias/Read/ReadVariableOpReadVariableOpconv3d_294/bias*
_output_shapes
:*
dtype0
К
conv3d_295/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_295/kernel
Г
%conv3d_295/kernel/Read/ReadVariableOpReadVariableOpconv3d_295/kernel**
_output_shapes
:*
dtype0
v
conv3d_295/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_295/bias
o
#conv3d_295/bias/Read/ReadVariableOpReadVariableOpconv3d_295/bias*
_output_shapes
:*
dtype0
К
conv3d_296/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_296/kernel
Г
%conv3d_296/kernel/Read/ReadVariableOpReadVariableOpconv3d_296/kernel**
_output_shapes
:*
dtype0
v
conv3d_296/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_296/bias
o
#conv3d_296/bias/Read/ReadVariableOpReadVariableOpconv3d_296/bias*
_output_shapes
:*
dtype0
z
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:@@*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:@*
dtype0
К
conv3d_297/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_297/kernel
Г
%conv3d_297/kernel/Read/ReadVariableOpReadVariableOpconv3d_297/kernel**
_output_shapes
:*
dtype0
v
conv3d_297/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_297/bias
o
#conv3d_297/bias/Read/ReadVariableOpReadVariableOpconv3d_297/bias*
_output_shapes
:*
dtype0
К
conv3d_298/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_298/kernel
Г
%conv3d_298/kernel/Read/ReadVariableOpReadVariableOpconv3d_298/kernel**
_output_shapes
:*
dtype0
v
conv3d_298/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_298/bias
o
#conv3d_298/bias/Read/ReadVariableOpReadVariableOpconv3d_298/bias*
_output_shapes
:*
dtype0
К
conv3d_299/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_299/kernel
Г
%conv3d_299/kernel/Read/ReadVariableOpReadVariableOpconv3d_299/kernel**
_output_shapes
:*
dtype0
v
conv3d_299/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_299/bias
o
#conv3d_299/bias/Read/ReadVariableOpReadVariableOpconv3d_299/bias*
_output_shapes
:*
dtype0
К
conv3d_300/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_300/kernel
Г
%conv3d_300/kernel/Read/ReadVariableOpReadVariableOpconv3d_300/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_300/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_300/bias
o
#conv3d_300/bias/Read/ReadVariableOpReadVariableOpconv3d_300/bias*
_output_shapes
: *
dtype0
К
conv3d_301/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_301/kernel
Г
%conv3d_301/kernel/Read/ReadVariableOpReadVariableOpconv3d_301/kernel**
_output_shapes
: *
dtype0
v
conv3d_301/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_301/bias
o
#conv3d_301/bias/Read/ReadVariableOpReadVariableOpconv3d_301/bias*
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
VARIABLE_VALUEconv3d_293/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_293/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_294/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_294/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_295/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_295/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_296/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_296/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_57/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_297/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_297/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_298/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_298/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_299/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_299/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_300/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_300/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_301/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_301/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_293/kernelconv3d_293/biasconv3d_294/kernelconv3d_294/biasconv3d_295/kernelconv3d_295/biasconv3d_296/kernelconv3d_296/biasdense_57/kerneldense_57/biasconv3d_297/kernelconv3d_297/biasconv3d_298/kernelconv3d_298/biasconv3d_299/kernelconv3d_299/biasconv3d_300/kernelconv3d_300/biasconv3d_301/kernelconv3d_301/bias* 
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
&__inference_signature_wrapper_15737196
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
░
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_293/kernel/Read/ReadVariableOp#conv3d_293/bias/Read/ReadVariableOp%conv3d_294/kernel/Read/ReadVariableOp#conv3d_294/bias/Read/ReadVariableOp%conv3d_295/kernel/Read/ReadVariableOp#conv3d_295/bias/Read/ReadVariableOp%conv3d_296/kernel/Read/ReadVariableOp#conv3d_296/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp%conv3d_297/kernel/Read/ReadVariableOp#conv3d_297/bias/Read/ReadVariableOp%conv3d_298/kernel/Read/ReadVariableOp#conv3d_298/bias/Read/ReadVariableOp%conv3d_299/kernel/Read/ReadVariableOp#conv3d_299/bias/Read/ReadVariableOp%conv3d_300/kernel/Read/ReadVariableOp#conv3d_300/bias/Read/ReadVariableOp%conv3d_301/kernel/Read/ReadVariableOp#conv3d_301/bias/Read/ReadVariableOpConst*!
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
!__inference__traced_save_15738058
Ы
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_293/kernelconv3d_293/biasconv3d_294/kernelconv3d_294/biasconv3d_295/kernelconv3d_295/biasconv3d_296/kernelconv3d_296/biasdense_57/kerneldense_57/biasconv3d_297/kernelconv3d_297/biasconv3d_298/kernelconv3d_298/biasconv3d_299/kernelconv3d_299/biasconv3d_300/kernelconv3d_300/biasconv3d_301/kernelconv3d_301/bias* 
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
$__inference__traced_restore_15738128БЩ
Х
T
8__inference_average_pooling3d_119_layer_call_fn_15737705

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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_157363032
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
М	
o
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15737771

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
БУ
б

F__inference_model_57_layer_call_and_return_conditional_losses_15736524

inputs1
conv3d_293_15736263: !
conv3d_293_15736265: 1
conv3d_294_15736290: !
conv3d_294_15736292:1
conv3d_295_15736317:!
conv3d_295_15736319:1
conv3d_296_15736344:!
conv3d_296_15736346:#
dense_57_15736385:@@
dense_57_15736387:@1
conv3d_297_15736427:!
conv3d_297_15736429:1
conv3d_298_15736452:!
conv3d_298_15736454:1
conv3d_299_15736477:!
conv3d_299_15736479:1
conv3d_300_15736502:0 !
conv3d_300_15736504: 1
conv3d_301_15736518: !
conv3d_301_15736520:
identityИв"conv3d_293/StatefulPartitionedCallв"conv3d_294/StatefulPartitionedCallв"conv3d_295/StatefulPartitionedCallв"conv3d_296/StatefulPartitionedCallв"conv3d_297/StatefulPartitionedCallв"conv3d_298/StatefulPartitionedCallв"conv3d_299/StatefulPartitionedCallв"conv3d_300/StatefulPartitionedCallв"conv3d_301/StatefulPartitionedCallв dense_57/StatefulPartitionedCall╡
0tf.__operators__.getitem_450/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_450/strided_slice/stack╣
2tf.__operators__.getitem_450/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_450/strided_slice/stack_1╣
2tf.__operators__.getitem_450/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_450/strided_slice/stack_2Т
*tf.__operators__.getitem_450/strided_sliceStridedSliceinputs9tf.__operators__.getitem_450/strided_slice/stack:output:0;tf.__operators__.getitem_450/strided_slice/stack_1:output:0;tf.__operators__.getitem_450/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_450/strided_slice╗
#range_conversion_57/PartitionedCallPartitionedCall3tf.__operators__.getitem_450/strided_slice:output:0*
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
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_157362432%
#range_conversion_57/PartitionedCall╡
0tf.__operators__.getitem_451/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_451/strided_slice/stack╣
2tf.__operators__.getitem_451/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_451/strided_slice/stack_1╣
2tf.__operators__.getitem_451/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_451/strided_slice/stack_2Т
*tf.__operators__.getitem_451/strided_sliceStridedSliceinputs9tf.__operators__.getitem_451/strided_slice/stack:output:0;tf.__operators__.getitem_451/strided_slice/stack_1:output:0;tf.__operators__.getitem_451/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_451/strided_slicex
tf.concat_605/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_605/concat/axisЖ
tf.concat_605/concatConcatV2,range_conversion_57/PartitionedCall:output:03tf.__operators__.getitem_451/strided_slice:output:0"tf.concat_605/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_605/concat╥
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCalltf.concat_605/concat:output:0conv3d_293_15736263conv3d_293_15736265*
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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_157362622$
"conv3d_293/StatefulPartitionedCall╣
%average_pooling3d_118/PartitionedCallPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_157362762'
%average_pooling3d_118/PartitionedCallу
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_118/PartitionedCall:output:0conv3d_294_15736290conv3d_294_15736292*
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
H__inference_conv3d_294_layer_call_and_return_conditional_losses_157362892$
"conv3d_294/StatefulPartitionedCall╣
%average_pooling3d_119/PartitionedCallPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_157363032'
%average_pooling3d_119/PartitionedCallу
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_119/PartitionedCall:output:0conv3d_295_15736317conv3d_295_15736319*
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
H__inference_conv3d_295_layer_call_and_return_conditional_losses_157363162$
"conv3d_295/StatefulPartitionedCall╣
%average_pooling3d_120/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_157363302'
%average_pooling3d_120/PartitionedCallу
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_120/PartitionedCall:output:0conv3d_296_15736344conv3d_296_15736346*
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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_157363432$
"conv3d_296/StatefulPartitionedCall╣
%average_pooling3d_121/PartitionedCallPartitionedCall+conv3d_296/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_157363572'
%average_pooling3d_121/PartitionedCallТ
reshape_114/PartitionedCallPartitionedCall.average_pooling3d_121/PartitionedCall:output:0*
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
I__inference_reshape_114_layer_call_and_return_conditional_losses_157363712
reshape_114/PartitionedCall├
 dense_57/StatefulPartitionedCallStatefulPartitionedCall$reshape_114/PartitionedCall:output:0dense_57_15736385dense_57_15736387*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_157363842"
 dense_57/StatefulPartitionedCallЩ
reshape_115/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
I__inference_reshape_115_layer_call_and_return_conditional_losses_157364052
reshape_115/PartitionedCallе
tf.reshape_760/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_760/Reshape/shape╥
tf.reshape_760/ReshapeReshape$reshape_115/PartitionedCall:output:0%tf.reshape_760/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_760/Reshapeб
tf.tile_380/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_380/Tile/multiples╝
tf.tile_380/TileTiletf.reshape_760/Reshape:output:0#tf.tile_380/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_380/TileЩ
tf.reshape_761/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_761/Reshape/shape╗
tf.reshape_761/ReshapeReshapetf.tile_380/Tile:output:0%tf.reshape_761/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_761/Reshapex
tf.concat_606/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_606/concat/axisё
tf.concat_606/concatConcatV2tf.reshape_761/Reshape:output:0+conv3d_296/StatefulPartitionedCall:output:0"tf.concat_606/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_606/concat╥
"conv3d_297/StatefulPartitionedCallStatefulPartitionedCalltf.concat_606/concat:output:0conv3d_297_15736427conv3d_297_15736429*
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
H__inference_conv3d_297_layer_call_and_return_conditional_losses_157364262$
"conv3d_297/StatefulPartitionedCallе
tf.reshape_762/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_762/Reshape/shape┘
tf.reshape_762/ReshapeReshape+conv3d_297/StatefulPartitionedCall:output:0%tf.reshape_762/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_762/Reshapeб
tf.tile_381/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_381/Tile/multiples╝
tf.tile_381/TileTiletf.reshape_762/Reshape:output:0#tf.tile_381/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_381/TileЩ
tf.reshape_763/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_763/Reshape/shape╗
tf.reshape_763/ReshapeReshapetf.tile_381/Tile:output:0%tf.reshape_763/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_763/Reshapex
tf.concat_607/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_607/concat/axisё
tf.concat_607/concatConcatV2tf.reshape_763/Reshape:output:0+conv3d_295/StatefulPartitionedCall:output:0"tf.concat_607/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_607/concat╥
"conv3d_298/StatefulPartitionedCallStatefulPartitionedCalltf.concat_607/concat:output:0conv3d_298_15736452conv3d_298_15736454*
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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_157364512$
"conv3d_298/StatefulPartitionedCallе
tf.reshape_764/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_764/Reshape/shape┘
tf.reshape_764/ReshapeReshape+conv3d_298/StatefulPartitionedCall:output:0%tf.reshape_764/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_764/Reshapeб
tf.tile_382/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_382/Tile/multiples╝
tf.tile_382/TileTiletf.reshape_764/Reshape:output:0#tf.tile_382/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_382/TileЩ
tf.reshape_765/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_765/Reshape/shape╗
tf.reshape_765/ReshapeReshapetf.tile_382/Tile:output:0%tf.reshape_765/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_765/Reshapex
tf.concat_608/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_608/concat/axisё
tf.concat_608/concatConcatV2tf.reshape_765/Reshape:output:0+conv3d_294/StatefulPartitionedCall:output:0"tf.concat_608/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_608/concat╥
"conv3d_299/StatefulPartitionedCallStatefulPartitionedCalltf.concat_608/concat:output:0conv3d_299_15736477conv3d_299_15736479*
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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_157364762$
"conv3d_299/StatefulPartitionedCallе
tf.reshape_766/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_766/Reshape/shape┘
tf.reshape_766/ReshapeReshape+conv3d_299/StatefulPartitionedCall:output:0%tf.reshape_766/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_766/Reshapeб
tf.tile_383/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_383/Tile/multiples╝
tf.tile_383/TileTiletf.reshape_766/Reshape:output:0#tf.tile_383/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_383/TileЩ
tf.reshape_767/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_767/Reshape/shape╗
tf.reshape_767/ReshapeReshapetf.tile_383/Tile:output:0%tf.reshape_767/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_767/Reshapex
tf.concat_609/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_609/concat/axisё
tf.concat_609/concatConcatV2tf.reshape_767/Reshape:output:0+conv3d_293/StatefulPartitionedCall:output:0"tf.concat_609/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_609/concat╥
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCalltf.concat_609/concat:output:0conv3d_300_15736502conv3d_300_15736504*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_157365012$
"conv3d_300/StatefulPartitionedCallр
"conv3d_301/StatefulPartitionedCallStatefulPartitionedCall+conv3d_300/StatefulPartitionedCall:output:0conv3d_301_15736518conv3d_301_15736520*
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
H__inference_conv3d_301_layer_call_and_return_conditional_losses_157365172$
"conv3d_301/StatefulPartitionedCallТ
IdentityIdentity+conv3d_301/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall#^conv3d_297/StatefulPartitionedCall#^conv3d_298/StatefulPartitionedCall#^conv3d_299/StatefulPartitionedCall#^conv3d_300/StatefulPartitionedCall#^conv3d_301/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2H
"conv3d_297/StatefulPartitionedCall"conv3d_297/StatefulPartitionedCall2H
"conv3d_298/StatefulPartitionedCall"conv3d_298/StatefulPartitionedCall2H
"conv3d_299/StatefulPartitionedCall"conv3d_299/StatefulPartitionedCall2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2H
"conv3d_301/StatefulPartitionedCall"conv3d_301/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15736357

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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_15736476

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
Ф
ў
F__inference_dense_57_layer_call_and_return_conditional_losses_15737856

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
╬
Е
H__inference_conv3d_300_layer_call_and_return_conditional_losses_15736501

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
х

o
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15737810

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
Ь
e
I__inference_reshape_114_layer_call_and_return_conditional_losses_15736371

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
а
Є
+__inference_model_57_layer_call_fn_15736943	
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
F__inference_model_57_layer_call_and_return_conditional_losses_157368552
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
М	
o
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15737675

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
-__inference_conv3d_298_layer_call_fn_15737905

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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_157364512
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
Э
V
6__inference_range_conversion_57_layer_call_fn_15737615

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
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_157362432
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
╬
Е
H__inference_conv3d_300_layer_call_and_return_conditional_losses_15737956

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
кX
Л
$__inference__traced_restore_15738128
file_prefix@
"assignvariableop_conv3d_293_kernel: 0
"assignvariableop_1_conv3d_293_bias: B
$assignvariableop_2_conv3d_294_kernel: 0
"assignvariableop_3_conv3d_294_bias:B
$assignvariableop_4_conv3d_295_kernel:0
"assignvariableop_5_conv3d_295_bias:B
$assignvariableop_6_conv3d_296_kernel:0
"assignvariableop_7_conv3d_296_bias:4
"assignvariableop_8_dense_57_kernel:@@.
 assignvariableop_9_dense_57_bias:@C
%assignvariableop_10_conv3d_297_kernel:1
#assignvariableop_11_conv3d_297_bias:C
%assignvariableop_12_conv3d_298_kernel:1
#assignvariableop_13_conv3d_298_bias:C
%assignvariableop_14_conv3d_299_kernel:1
#assignvariableop_15_conv3d_299_bias:C
%assignvariableop_16_conv3d_300_kernel:0 1
#assignvariableop_17_conv3d_300_bias: C
%assignvariableop_18_conv3d_301_kernel: 1
#assignvariableop_19_conv3d_301_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_293_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_293_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_294_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_294_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_295_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_295_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_296_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_296_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_57_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_57_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_297_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_297_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_298_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_298_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_299_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_299_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16н
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_300_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17л
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_300_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18н
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_301_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19л
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_301_biasIdentity_19:output:0"/device:CPU:0*
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
╫	
q
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_15736243

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
╫	
q
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_15737627

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
х

o
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15736203

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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_15736343

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
¤Т
а

F__inference_model_57_layer_call_and_return_conditional_losses_15737046	
input1
conv3d_293_15736957: !
conv3d_293_15736959: 1
conv3d_294_15736963: !
conv3d_294_15736965:1
conv3d_295_15736969:!
conv3d_295_15736971:1
conv3d_296_15736975:!
conv3d_296_15736977:#
dense_57_15736982:@@
dense_57_15736984:@1
conv3d_297_15736996:!
conv3d_297_15736998:1
conv3d_298_15737009:!
conv3d_298_15737011:1
conv3d_299_15737022:!
conv3d_299_15737024:1
conv3d_300_15737035:0 !
conv3d_300_15737037: 1
conv3d_301_15737040: !
conv3d_301_15737042:
identityИв"conv3d_293/StatefulPartitionedCallв"conv3d_294/StatefulPartitionedCallв"conv3d_295/StatefulPartitionedCallв"conv3d_296/StatefulPartitionedCallв"conv3d_297/StatefulPartitionedCallв"conv3d_298/StatefulPartitionedCallв"conv3d_299/StatefulPartitionedCallв"conv3d_300/StatefulPartitionedCallв"conv3d_301/StatefulPartitionedCallв dense_57/StatefulPartitionedCall╡
0tf.__operators__.getitem_450/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_450/strided_slice/stack╣
2tf.__operators__.getitem_450/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_450/strided_slice/stack_1╣
2tf.__operators__.getitem_450/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_450/strided_slice/stack_2С
*tf.__operators__.getitem_450/strided_sliceStridedSliceinput9tf.__operators__.getitem_450/strided_slice/stack:output:0;tf.__operators__.getitem_450/strided_slice/stack_1:output:0;tf.__operators__.getitem_450/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_450/strided_slice╗
#range_conversion_57/PartitionedCallPartitionedCall3tf.__operators__.getitem_450/strided_slice:output:0*
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
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_157362432%
#range_conversion_57/PartitionedCall╡
0tf.__operators__.getitem_451/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_451/strided_slice/stack╣
2tf.__operators__.getitem_451/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_451/strided_slice/stack_1╣
2tf.__operators__.getitem_451/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_451/strided_slice/stack_2С
*tf.__operators__.getitem_451/strided_sliceStridedSliceinput9tf.__operators__.getitem_451/strided_slice/stack:output:0;tf.__operators__.getitem_451/strided_slice/stack_1:output:0;tf.__operators__.getitem_451/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_451/strided_slicex
tf.concat_605/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_605/concat/axisЖ
tf.concat_605/concatConcatV2,range_conversion_57/PartitionedCall:output:03tf.__operators__.getitem_451/strided_slice:output:0"tf.concat_605/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_605/concat╥
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCalltf.concat_605/concat:output:0conv3d_293_15736957conv3d_293_15736959*
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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_157362622$
"conv3d_293/StatefulPartitionedCall╣
%average_pooling3d_118/PartitionedCallPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_157362762'
%average_pooling3d_118/PartitionedCallу
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_118/PartitionedCall:output:0conv3d_294_15736963conv3d_294_15736965*
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
H__inference_conv3d_294_layer_call_and_return_conditional_losses_157362892$
"conv3d_294/StatefulPartitionedCall╣
%average_pooling3d_119/PartitionedCallPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_157363032'
%average_pooling3d_119/PartitionedCallу
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_119/PartitionedCall:output:0conv3d_295_15736969conv3d_295_15736971*
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
H__inference_conv3d_295_layer_call_and_return_conditional_losses_157363162$
"conv3d_295/StatefulPartitionedCall╣
%average_pooling3d_120/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_157363302'
%average_pooling3d_120/PartitionedCallу
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_120/PartitionedCall:output:0conv3d_296_15736975conv3d_296_15736977*
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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_157363432$
"conv3d_296/StatefulPartitionedCall╣
%average_pooling3d_121/PartitionedCallPartitionedCall+conv3d_296/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_157363572'
%average_pooling3d_121/PartitionedCallТ
reshape_114/PartitionedCallPartitionedCall.average_pooling3d_121/PartitionedCall:output:0*
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
I__inference_reshape_114_layer_call_and_return_conditional_losses_157363712
reshape_114/PartitionedCall├
 dense_57/StatefulPartitionedCallStatefulPartitionedCall$reshape_114/PartitionedCall:output:0dense_57_15736982dense_57_15736984*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_157363842"
 dense_57/StatefulPartitionedCallЩ
reshape_115/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
I__inference_reshape_115_layer_call_and_return_conditional_losses_157364052
reshape_115/PartitionedCallе
tf.reshape_760/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_760/Reshape/shape╥
tf.reshape_760/ReshapeReshape$reshape_115/PartitionedCall:output:0%tf.reshape_760/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_760/Reshapeб
tf.tile_380/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_380/Tile/multiples╝
tf.tile_380/TileTiletf.reshape_760/Reshape:output:0#tf.tile_380/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_380/TileЩ
tf.reshape_761/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_761/Reshape/shape╗
tf.reshape_761/ReshapeReshapetf.tile_380/Tile:output:0%tf.reshape_761/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_761/Reshapex
tf.concat_606/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_606/concat/axisё
tf.concat_606/concatConcatV2tf.reshape_761/Reshape:output:0+conv3d_296/StatefulPartitionedCall:output:0"tf.concat_606/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_606/concat╥
"conv3d_297/StatefulPartitionedCallStatefulPartitionedCalltf.concat_606/concat:output:0conv3d_297_15736996conv3d_297_15736998*
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
H__inference_conv3d_297_layer_call_and_return_conditional_losses_157364262$
"conv3d_297/StatefulPartitionedCallе
tf.reshape_762/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_762/Reshape/shape┘
tf.reshape_762/ReshapeReshape+conv3d_297/StatefulPartitionedCall:output:0%tf.reshape_762/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_762/Reshapeб
tf.tile_381/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_381/Tile/multiples╝
tf.tile_381/TileTiletf.reshape_762/Reshape:output:0#tf.tile_381/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_381/TileЩ
tf.reshape_763/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_763/Reshape/shape╗
tf.reshape_763/ReshapeReshapetf.tile_381/Tile:output:0%tf.reshape_763/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_763/Reshapex
tf.concat_607/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_607/concat/axisё
tf.concat_607/concatConcatV2tf.reshape_763/Reshape:output:0+conv3d_295/StatefulPartitionedCall:output:0"tf.concat_607/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_607/concat╥
"conv3d_298/StatefulPartitionedCallStatefulPartitionedCalltf.concat_607/concat:output:0conv3d_298_15737009conv3d_298_15737011*
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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_157364512$
"conv3d_298/StatefulPartitionedCallе
tf.reshape_764/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_764/Reshape/shape┘
tf.reshape_764/ReshapeReshape+conv3d_298/StatefulPartitionedCall:output:0%tf.reshape_764/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_764/Reshapeб
tf.tile_382/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_382/Tile/multiples╝
tf.tile_382/TileTiletf.reshape_764/Reshape:output:0#tf.tile_382/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_382/TileЩ
tf.reshape_765/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_765/Reshape/shape╗
tf.reshape_765/ReshapeReshapetf.tile_382/Tile:output:0%tf.reshape_765/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_765/Reshapex
tf.concat_608/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_608/concat/axisё
tf.concat_608/concatConcatV2tf.reshape_765/Reshape:output:0+conv3d_294/StatefulPartitionedCall:output:0"tf.concat_608/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_608/concat╥
"conv3d_299/StatefulPartitionedCallStatefulPartitionedCalltf.concat_608/concat:output:0conv3d_299_15737022conv3d_299_15737024*
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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_157364762$
"conv3d_299/StatefulPartitionedCallе
tf.reshape_766/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_766/Reshape/shape┘
tf.reshape_766/ReshapeReshape+conv3d_299/StatefulPartitionedCall:output:0%tf.reshape_766/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_766/Reshapeб
tf.tile_383/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_383/Tile/multiples╝
tf.tile_383/TileTiletf.reshape_766/Reshape:output:0#tf.tile_383/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_383/TileЩ
tf.reshape_767/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_767/Reshape/shape╗
tf.reshape_767/ReshapeReshapetf.tile_383/Tile:output:0%tf.reshape_767/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_767/Reshapex
tf.concat_609/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_609/concat/axisё
tf.concat_609/concatConcatV2tf.reshape_767/Reshape:output:0+conv3d_293/StatefulPartitionedCall:output:0"tf.concat_609/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_609/concat╥
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCalltf.concat_609/concat:output:0conv3d_300_15737035conv3d_300_15737037*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_157365012$
"conv3d_300/StatefulPartitionedCallр
"conv3d_301/StatefulPartitionedCallStatefulPartitionedCall+conv3d_300/StatefulPartitionedCall:output:0conv3d_301_15737040conv3d_301_15737042*
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
H__inference_conv3d_301_layer_call_and_return_conditional_losses_157365172$
"conv3d_301/StatefulPartitionedCallТ
IdentityIdentity+conv3d_301/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall#^conv3d_297/StatefulPartitionedCall#^conv3d_298/StatefulPartitionedCall#^conv3d_299/StatefulPartitionedCall#^conv3d_300/StatefulPartitionedCall#^conv3d_301/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2H
"conv3d_297/StatefulPartitionedCall"conv3d_297/StatefulPartitionedCall2H
"conv3d_298/StatefulPartitionedCall"conv3d_298/StatefulPartitionedCall2H
"conv3d_299/StatefulPartitionedCall"conv3d_299/StatefulPartitionedCall2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2H
"conv3d_301/StatefulPartitionedCall"conv3d_301/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
╬
Е
H__inference_conv3d_295_layer_call_and_return_conditional_losses_15736316

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
╬
Е
H__inference_conv3d_295_layer_call_and_return_conditional_losses_15737743

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
щ
J
.__inference_reshape_115_layer_call_fn_15737861

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
I__inference_reshape_115_layer_call_and_return_conditional_losses_157364052
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
ж
T
8__inference_average_pooling3d_118_layer_call_fn_15737652

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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_157361132
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
8__inference_average_pooling3d_118_layer_call_fn_15737657

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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_157362762
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
Ь
e
I__inference_reshape_114_layer_call_and_return_conditional_losses_15737836

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
ж
T
8__inference_average_pooling3d_120_layer_call_fn_15737748

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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_157361732
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
┴
ж
-__inference_conv3d_295_layer_call_fn_15737732

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
H__inference_conv3d_295_layer_call_and_return_conditional_losses_157363162
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
щ
J
.__inference_reshape_114_layer_call_fn_15737824

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
I__inference_reshape_114_layer_call_and_return_conditional_losses_157363712
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
¤Т
а

F__inference_model_57_layer_call_and_return_conditional_losses_15737149	
input1
conv3d_293_15737060: !
conv3d_293_15737062: 1
conv3d_294_15737066: !
conv3d_294_15737068:1
conv3d_295_15737072:!
conv3d_295_15737074:1
conv3d_296_15737078:!
conv3d_296_15737080:#
dense_57_15737085:@@
dense_57_15737087:@1
conv3d_297_15737099:!
conv3d_297_15737101:1
conv3d_298_15737112:!
conv3d_298_15737114:1
conv3d_299_15737125:!
conv3d_299_15737127:1
conv3d_300_15737138:0 !
conv3d_300_15737140: 1
conv3d_301_15737143: !
conv3d_301_15737145:
identityИв"conv3d_293/StatefulPartitionedCallв"conv3d_294/StatefulPartitionedCallв"conv3d_295/StatefulPartitionedCallв"conv3d_296/StatefulPartitionedCallв"conv3d_297/StatefulPartitionedCallв"conv3d_298/StatefulPartitionedCallв"conv3d_299/StatefulPartitionedCallв"conv3d_300/StatefulPartitionedCallв"conv3d_301/StatefulPartitionedCallв dense_57/StatefulPartitionedCall╡
0tf.__operators__.getitem_450/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_450/strided_slice/stack╣
2tf.__operators__.getitem_450/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_450/strided_slice/stack_1╣
2tf.__operators__.getitem_450/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_450/strided_slice/stack_2С
*tf.__operators__.getitem_450/strided_sliceStridedSliceinput9tf.__operators__.getitem_450/strided_slice/stack:output:0;tf.__operators__.getitem_450/strided_slice/stack_1:output:0;tf.__operators__.getitem_450/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_450/strided_slice╗
#range_conversion_57/PartitionedCallPartitionedCall3tf.__operators__.getitem_450/strided_slice:output:0*
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
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_157362432%
#range_conversion_57/PartitionedCall╡
0tf.__operators__.getitem_451/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_451/strided_slice/stack╣
2tf.__operators__.getitem_451/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_451/strided_slice/stack_1╣
2tf.__operators__.getitem_451/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_451/strided_slice/stack_2С
*tf.__operators__.getitem_451/strided_sliceStridedSliceinput9tf.__operators__.getitem_451/strided_slice/stack:output:0;tf.__operators__.getitem_451/strided_slice/stack_1:output:0;tf.__operators__.getitem_451/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_451/strided_slicex
tf.concat_605/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_605/concat/axisЖ
tf.concat_605/concatConcatV2,range_conversion_57/PartitionedCall:output:03tf.__operators__.getitem_451/strided_slice:output:0"tf.concat_605/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_605/concat╥
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCalltf.concat_605/concat:output:0conv3d_293_15737060conv3d_293_15737062*
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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_157362622$
"conv3d_293/StatefulPartitionedCall╣
%average_pooling3d_118/PartitionedCallPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_157362762'
%average_pooling3d_118/PartitionedCallу
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_118/PartitionedCall:output:0conv3d_294_15737066conv3d_294_15737068*
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
H__inference_conv3d_294_layer_call_and_return_conditional_losses_157362892$
"conv3d_294/StatefulPartitionedCall╣
%average_pooling3d_119/PartitionedCallPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_157363032'
%average_pooling3d_119/PartitionedCallу
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_119/PartitionedCall:output:0conv3d_295_15737072conv3d_295_15737074*
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
H__inference_conv3d_295_layer_call_and_return_conditional_losses_157363162$
"conv3d_295/StatefulPartitionedCall╣
%average_pooling3d_120/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_157363302'
%average_pooling3d_120/PartitionedCallу
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_120/PartitionedCall:output:0conv3d_296_15737078conv3d_296_15737080*
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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_157363432$
"conv3d_296/StatefulPartitionedCall╣
%average_pooling3d_121/PartitionedCallPartitionedCall+conv3d_296/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_157363572'
%average_pooling3d_121/PartitionedCallТ
reshape_114/PartitionedCallPartitionedCall.average_pooling3d_121/PartitionedCall:output:0*
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
I__inference_reshape_114_layer_call_and_return_conditional_losses_157363712
reshape_114/PartitionedCall├
 dense_57/StatefulPartitionedCallStatefulPartitionedCall$reshape_114/PartitionedCall:output:0dense_57_15737085dense_57_15737087*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_157363842"
 dense_57/StatefulPartitionedCallЩ
reshape_115/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
I__inference_reshape_115_layer_call_and_return_conditional_losses_157364052
reshape_115/PartitionedCallе
tf.reshape_760/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_760/Reshape/shape╥
tf.reshape_760/ReshapeReshape$reshape_115/PartitionedCall:output:0%tf.reshape_760/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_760/Reshapeб
tf.tile_380/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_380/Tile/multiples╝
tf.tile_380/TileTiletf.reshape_760/Reshape:output:0#tf.tile_380/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_380/TileЩ
tf.reshape_761/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_761/Reshape/shape╗
tf.reshape_761/ReshapeReshapetf.tile_380/Tile:output:0%tf.reshape_761/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_761/Reshapex
tf.concat_606/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_606/concat/axisё
tf.concat_606/concatConcatV2tf.reshape_761/Reshape:output:0+conv3d_296/StatefulPartitionedCall:output:0"tf.concat_606/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_606/concat╥
"conv3d_297/StatefulPartitionedCallStatefulPartitionedCalltf.concat_606/concat:output:0conv3d_297_15737099conv3d_297_15737101*
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
H__inference_conv3d_297_layer_call_and_return_conditional_losses_157364262$
"conv3d_297/StatefulPartitionedCallе
tf.reshape_762/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_762/Reshape/shape┘
tf.reshape_762/ReshapeReshape+conv3d_297/StatefulPartitionedCall:output:0%tf.reshape_762/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_762/Reshapeб
tf.tile_381/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_381/Tile/multiples╝
tf.tile_381/TileTiletf.reshape_762/Reshape:output:0#tf.tile_381/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_381/TileЩ
tf.reshape_763/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_763/Reshape/shape╗
tf.reshape_763/ReshapeReshapetf.tile_381/Tile:output:0%tf.reshape_763/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_763/Reshapex
tf.concat_607/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_607/concat/axisё
tf.concat_607/concatConcatV2tf.reshape_763/Reshape:output:0+conv3d_295/StatefulPartitionedCall:output:0"tf.concat_607/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_607/concat╥
"conv3d_298/StatefulPartitionedCallStatefulPartitionedCalltf.concat_607/concat:output:0conv3d_298_15737112conv3d_298_15737114*
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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_157364512$
"conv3d_298/StatefulPartitionedCallе
tf.reshape_764/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_764/Reshape/shape┘
tf.reshape_764/ReshapeReshape+conv3d_298/StatefulPartitionedCall:output:0%tf.reshape_764/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_764/Reshapeб
tf.tile_382/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_382/Tile/multiples╝
tf.tile_382/TileTiletf.reshape_764/Reshape:output:0#tf.tile_382/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_382/TileЩ
tf.reshape_765/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_765/Reshape/shape╗
tf.reshape_765/ReshapeReshapetf.tile_382/Tile:output:0%tf.reshape_765/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_765/Reshapex
tf.concat_608/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_608/concat/axisё
tf.concat_608/concatConcatV2tf.reshape_765/Reshape:output:0+conv3d_294/StatefulPartitionedCall:output:0"tf.concat_608/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_608/concat╥
"conv3d_299/StatefulPartitionedCallStatefulPartitionedCalltf.concat_608/concat:output:0conv3d_299_15737125conv3d_299_15737127*
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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_157364762$
"conv3d_299/StatefulPartitionedCallе
tf.reshape_766/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_766/Reshape/shape┘
tf.reshape_766/ReshapeReshape+conv3d_299/StatefulPartitionedCall:output:0%tf.reshape_766/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_766/Reshapeб
tf.tile_383/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_383/Tile/multiples╝
tf.tile_383/TileTiletf.reshape_766/Reshape:output:0#tf.tile_383/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_383/TileЩ
tf.reshape_767/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_767/Reshape/shape╗
tf.reshape_767/ReshapeReshapetf.tile_383/Tile:output:0%tf.reshape_767/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_767/Reshapex
tf.concat_609/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_609/concat/axisё
tf.concat_609/concatConcatV2tf.reshape_767/Reshape:output:0+conv3d_293/StatefulPartitionedCall:output:0"tf.concat_609/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_609/concat╥
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCalltf.concat_609/concat:output:0conv3d_300_15737138conv3d_300_15737140*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_157365012$
"conv3d_300/StatefulPartitionedCallр
"conv3d_301/StatefulPartitionedCallStatefulPartitionedCall+conv3d_300/StatefulPartitionedCall:output:0conv3d_301_15737143conv3d_301_15737145*
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
H__inference_conv3d_301_layer_call_and_return_conditional_losses_157365172$
"conv3d_301/StatefulPartitionedCallТ
IdentityIdentity+conv3d_301/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall#^conv3d_297/StatefulPartitionedCall#^conv3d_298/StatefulPartitionedCall#^conv3d_299/StatefulPartitionedCall#^conv3d_300/StatefulPartitionedCall#^conv3d_301/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2H
"conv3d_297/StatefulPartitionedCall"conv3d_297/StatefulPartitionedCall2H
"conv3d_298/StatefulPartitionedCall"conv3d_298/StatefulPartitionedCall2H
"conv3d_299/StatefulPartitionedCall"conv3d_299/StatefulPartitionedCall2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2H
"conv3d_301/StatefulPartitionedCall"conv3d_301/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
┴
ж
-__inference_conv3d_297_layer_call_fn_15737885

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
H__inference_conv3d_297_layer_call_and_return_conditional_losses_157364262
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
-__inference_conv3d_299_layer_call_fn_15737925

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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_157364762
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
╓
Е
H__inference_conv3d_301_layer_call_and_return_conditional_losses_15736517

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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15736113

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
H__inference_conv3d_294_layer_call_and_return_conditional_losses_15737695

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
╒3
╛
!__inference__traced_save_15738058
file_prefix0
,savev2_conv3d_293_kernel_read_readvariableop.
*savev2_conv3d_293_bias_read_readvariableop0
,savev2_conv3d_294_kernel_read_readvariableop.
*savev2_conv3d_294_bias_read_readvariableop0
,savev2_conv3d_295_kernel_read_readvariableop.
*savev2_conv3d_295_bias_read_readvariableop0
,savev2_conv3d_296_kernel_read_readvariableop.
*savev2_conv3d_296_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop0
,savev2_conv3d_297_kernel_read_readvariableop.
*savev2_conv3d_297_bias_read_readvariableop0
,savev2_conv3d_298_kernel_read_readvariableop.
*savev2_conv3d_298_bias_read_readvariableop0
,savev2_conv3d_299_kernel_read_readvariableop.
*savev2_conv3d_299_bias_read_readvariableop0
,savev2_conv3d_300_kernel_read_readvariableop.
*savev2_conv3d_300_bias_read_readvariableop0
,savev2_conv3d_301_kernel_read_readvariableop.
*savev2_conv3d_301_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_293_kernel_read_readvariableop*savev2_conv3d_293_bias_read_readvariableop,savev2_conv3d_294_kernel_read_readvariableop*savev2_conv3d_294_bias_read_readvariableop,savev2_conv3d_295_kernel_read_readvariableop*savev2_conv3d_295_bias_read_readvariableop,savev2_conv3d_296_kernel_read_readvariableop*savev2_conv3d_296_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop,savev2_conv3d_297_kernel_read_readvariableop*savev2_conv3d_297_bias_read_readvariableop,savev2_conv3d_298_kernel_read_readvariableop*savev2_conv3d_298_bias_read_readvariableop,savev2_conv3d_299_kernel_read_readvariableop*savev2_conv3d_299_bias_read_readvariableop,savev2_conv3d_300_kernel_read_readvariableop*savev2_conv3d_300_bias_read_readvariableop,savev2_conv3d_301_kernel_read_readvariableop*savev2_conv3d_301_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15736330

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
ж
T
8__inference_average_pooling3d_121_layer_call_fn_15737796

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
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_157362032
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
Ф
ў
F__inference_dense_57_layer_call_and_return_conditional_losses_15736384

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
╬
Е
H__inference_conv3d_297_layer_call_and_return_conditional_losses_15736426

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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_15737647

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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15737714

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
вЧ
∙
#__inference__wrapped_model_15736100	
inputP
2model_57_conv3d_293_conv3d_readvariableop_resource: A
3model_57_conv3d_293_biasadd_readvariableop_resource: P
2model_57_conv3d_294_conv3d_readvariableop_resource: A
3model_57_conv3d_294_biasadd_readvariableop_resource:P
2model_57_conv3d_295_conv3d_readvariableop_resource:A
3model_57_conv3d_295_biasadd_readvariableop_resource:P
2model_57_conv3d_296_conv3d_readvariableop_resource:A
3model_57_conv3d_296_biasadd_readvariableop_resource:B
0model_57_dense_57_matmul_readvariableop_resource:@@?
1model_57_dense_57_biasadd_readvariableop_resource:@P
2model_57_conv3d_297_conv3d_readvariableop_resource:A
3model_57_conv3d_297_biasadd_readvariableop_resource:P
2model_57_conv3d_298_conv3d_readvariableop_resource:A
3model_57_conv3d_298_biasadd_readvariableop_resource:P
2model_57_conv3d_299_conv3d_readvariableop_resource:A
3model_57_conv3d_299_biasadd_readvariableop_resource:P
2model_57_conv3d_300_conv3d_readvariableop_resource:0 A
3model_57_conv3d_300_biasadd_readvariableop_resource: P
2model_57_conv3d_301_conv3d_readvariableop_resource: A
3model_57_conv3d_301_biasadd_readvariableop_resource:
identityИв*model_57/conv3d_293/BiasAdd/ReadVariableOpв)model_57/conv3d_293/Conv3D/ReadVariableOpв*model_57/conv3d_294/BiasAdd/ReadVariableOpв)model_57/conv3d_294/Conv3D/ReadVariableOpв*model_57/conv3d_295/BiasAdd/ReadVariableOpв)model_57/conv3d_295/Conv3D/ReadVariableOpв*model_57/conv3d_296/BiasAdd/ReadVariableOpв)model_57/conv3d_296/Conv3D/ReadVariableOpв*model_57/conv3d_297/BiasAdd/ReadVariableOpв)model_57/conv3d_297/Conv3D/ReadVariableOpв*model_57/conv3d_298/BiasAdd/ReadVariableOpв)model_57/conv3d_298/Conv3D/ReadVariableOpв*model_57/conv3d_299/BiasAdd/ReadVariableOpв)model_57/conv3d_299/Conv3D/ReadVariableOpв*model_57/conv3d_300/BiasAdd/ReadVariableOpв)model_57/conv3d_300/Conv3D/ReadVariableOpв*model_57/conv3d_301/BiasAdd/ReadVariableOpв)model_57/conv3d_301/Conv3D/ReadVariableOpв(model_57/dense_57/BiasAdd/ReadVariableOpв'model_57/dense_57/MatMul/ReadVariableOp╟
9model_57/tf.__operators__.getitem_450/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_57/tf.__operators__.getitem_450/strided_slice/stack╦
;model_57/tf.__operators__.getitem_450/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_57/tf.__operators__.getitem_450/strided_slice/stack_1╦
;model_57/tf.__operators__.getitem_450/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_57/tf.__operators__.getitem_450/strided_slice/stack_2╛
3model_57/tf.__operators__.getitem_450/strided_sliceStridedSliceinputBmodel_57/tf.__operators__.getitem_450/strided_slice/stack:output:0Dmodel_57/tf.__operators__.getitem_450/strided_slice/stack_1:output:0Dmodel_57/tf.__operators__.getitem_450/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_57/tf.__operators__.getitem_450/strided_sliceН
"model_57/range_conversion_57/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_57/range_conversion_57/sub/yЇ
 model_57/range_conversion_57/subSub<model_57/tf.__operators__.getitem_450/strided_slice:output:0+model_57/range_conversion_57/sub/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_57/range_conversion_57/subХ
&model_57/range_conversion_57/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_57/range_conversion_57/truediv/yь
$model_57/range_conversion_57/truedivRealDiv$model_57/range_conversion_57/sub:z:0/model_57/range_conversion_57/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2&
$model_57/range_conversion_57/truedivН
"model_57/range_conversion_57/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_57/range_conversion_57/mul/yр
 model_57/range_conversion_57/mulMul(model_57/range_conversion_57/truediv:z:0+model_57/range_conversion_57/mul/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_57/range_conversion_57/mulН
"model_57/range_conversion_57/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_57/range_conversion_57/add/y▐
 model_57/range_conversion_57/addAddV2$model_57/range_conversion_57/mul:z:0+model_57/range_conversion_57/add/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_57/range_conversion_57/add╟
9model_57/tf.__operators__.getitem_451/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_57/tf.__operators__.getitem_451/strided_slice/stack╦
;model_57/tf.__operators__.getitem_451/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_57/tf.__operators__.getitem_451/strided_slice/stack_1╦
;model_57/tf.__operators__.getitem_451/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_57/tf.__operators__.getitem_451/strided_slice/stack_2╛
3model_57/tf.__operators__.getitem_451/strided_sliceStridedSliceinputBmodel_57/tf.__operators__.getitem_451/strided_slice/stack:output:0Dmodel_57/tf.__operators__.getitem_451/strided_slice/stack_1:output:0Dmodel_57/tf.__operators__.getitem_451/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_57/tf.__operators__.getitem_451/strided_sliceК
"model_57/tf.concat_605/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_57/tf.concat_605/concat/axisв
model_57/tf.concat_605/concatConcatV2$model_57/range_conversion_57/add:z:0<model_57/tf.__operators__.getitem_451/strided_slice:output:0+model_57/tf.concat_605/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
model_57/tf.concat_605/concat╒
)model_57/conv3d_293/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_293_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_57/conv3d_293/Conv3D/ReadVariableOpЬ
model_57/conv3d_293/Conv3DConv3D&model_57/tf.concat_605/concat:output:01model_57/conv3d_293/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_293/Conv3D╚
*model_57/conv3d_293/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_293_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_57/conv3d_293/BiasAdd/ReadVariableOpє
model_57/conv3d_293/BiasAddBiasAdd#model_57/conv3d_293/Conv3D:output:02model_57/conv3d_293/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_57/conv3d_293/BiasAddм
model_57/conv3d_293/SoftplusSoftplus$model_57/conv3d_293/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_57/conv3d_293/Softplus╗
-model_57/average_pooling3d_118/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_57/average_pooling3d_118/transpose/permГ
(model_57/average_pooling3d_118/transpose	Transpose*model_57/conv3d_293/Softplus:activations:06model_57/average_pooling3d_118/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2*
(model_57/average_pooling3d_118/transposeЛ
(model_57/average_pooling3d_118/AvgPool3D	AvgPool3D,model_57/average_pooling3d_118/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2*
(model_57/average_pooling3d_118/AvgPool3D┐
/model_57/average_pooling3d_118/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_57/average_pooling3d_118/transpose_1/permР
*model_57/average_pooling3d_118/transpose_1	Transpose1model_57/average_pooling3d_118/AvgPool3D:output:08model_57/average_pooling3d_118/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2,
*model_57/average_pooling3d_118/transpose_1╒
)model_57/conv3d_294/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_294_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_57/conv3d_294/Conv3D/ReadVariableOpд
model_57/conv3d_294/Conv3DConv3D.model_57/average_pooling3d_118/transpose_1:y:01model_57/conv3d_294/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_294/Conv3D╚
*model_57/conv3d_294/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_57/conv3d_294/BiasAdd/ReadVariableOpє
model_57/conv3d_294/BiasAddBiasAdd#model_57/conv3d_294/Conv3D:output:02model_57/conv3d_294/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_57/conv3d_294/BiasAddм
model_57/conv3d_294/SoftplusSoftplus$model_57/conv3d_294/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_57/conv3d_294/Softplus╗
-model_57/average_pooling3d_119/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_57/average_pooling3d_119/transpose/permГ
(model_57/average_pooling3d_119/transpose	Transpose*model_57/conv3d_294/Softplus:activations:06model_57/average_pooling3d_119/transpose/perm:output:0*
T0*3
_output_shapes!
:           2*
(model_57/average_pooling3d_119/transposeЛ
(model_57/average_pooling3d_119/AvgPool3D	AvgPool3D,model_57/average_pooling3d_119/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_57/average_pooling3d_119/AvgPool3D┐
/model_57/average_pooling3d_119/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_57/average_pooling3d_119/transpose_1/permР
*model_57/average_pooling3d_119/transpose_1	Transpose1model_57/average_pooling3d_119/AvgPool3D:output:08model_57/average_pooling3d_119/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_57/average_pooling3d_119/transpose_1╒
)model_57/conv3d_295/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_295_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_57/conv3d_295/Conv3D/ReadVariableOpд
model_57/conv3d_295/Conv3DConv3D.model_57/average_pooling3d_119/transpose_1:y:01model_57/conv3d_295/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_295/Conv3D╚
*model_57/conv3d_295/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_57/conv3d_295/BiasAdd/ReadVariableOpє
model_57/conv3d_295/BiasAddBiasAdd#model_57/conv3d_295/Conv3D:output:02model_57/conv3d_295/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_57/conv3d_295/BiasAddм
model_57/conv3d_295/SoftplusSoftplus$model_57/conv3d_295/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_57/conv3d_295/Softplus╗
-model_57/average_pooling3d_120/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_57/average_pooling3d_120/transpose/permГ
(model_57/average_pooling3d_120/transpose	Transpose*model_57/conv3d_295/Softplus:activations:06model_57/average_pooling3d_120/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_57/average_pooling3d_120/transposeЛ
(model_57/average_pooling3d_120/AvgPool3D	AvgPool3D,model_57/average_pooling3d_120/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_57/average_pooling3d_120/AvgPool3D┐
/model_57/average_pooling3d_120/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_57/average_pooling3d_120/transpose_1/permР
*model_57/average_pooling3d_120/transpose_1	Transpose1model_57/average_pooling3d_120/AvgPool3D:output:08model_57/average_pooling3d_120/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_57/average_pooling3d_120/transpose_1╒
)model_57/conv3d_296/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_296_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_57/conv3d_296/Conv3D/ReadVariableOpд
model_57/conv3d_296/Conv3DConv3D.model_57/average_pooling3d_120/transpose_1:y:01model_57/conv3d_296/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_296/Conv3D╚
*model_57/conv3d_296/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_57/conv3d_296/BiasAdd/ReadVariableOpє
model_57/conv3d_296/BiasAddBiasAdd#model_57/conv3d_296/Conv3D:output:02model_57/conv3d_296/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_57/conv3d_296/BiasAddм
model_57/conv3d_296/SoftplusSoftplus$model_57/conv3d_296/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_57/conv3d_296/Softplus╗
-model_57/average_pooling3d_121/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_57/average_pooling3d_121/transpose/permГ
(model_57/average_pooling3d_121/transpose	Transpose*model_57/conv3d_296/Softplus:activations:06model_57/average_pooling3d_121/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_57/average_pooling3d_121/transposeЛ
(model_57/average_pooling3d_121/AvgPool3D	AvgPool3D,model_57/average_pooling3d_121/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_57/average_pooling3d_121/AvgPool3D┐
/model_57/average_pooling3d_121/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_57/average_pooling3d_121/transpose_1/permР
*model_57/average_pooling3d_121/transpose_1	Transpose1model_57/average_pooling3d_121/AvgPool3D:output:08model_57/average_pooling3d_121/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_57/average_pooling3d_121/transpose_1Ц
model_57/reshape_114/ShapeShape.model_57/average_pooling3d_121/transpose_1:y:0*
T0*
_output_shapes
:2
model_57/reshape_114/ShapeЮ
(model_57/reshape_114/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_57/reshape_114/strided_slice/stackв
*model_57/reshape_114/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_57/reshape_114/strided_slice/stack_1в
*model_57/reshape_114/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_57/reshape_114/strided_slice/stack_2р
"model_57/reshape_114/strided_sliceStridedSlice#model_57/reshape_114/Shape:output:01model_57/reshape_114/strided_slice/stack:output:03model_57/reshape_114/strided_slice/stack_1:output:03model_57/reshape_114/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_57/reshape_114/strided_sliceО
$model_57/reshape_114/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_57/reshape_114/Reshape/shape/1┌
"model_57/reshape_114/Reshape/shapePack+model_57/reshape_114/strided_slice:output:0-model_57/reshape_114/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_57/reshape_114/Reshape/shape╓
model_57/reshape_114/ReshapeReshape.model_57/average_pooling3d_121/transpose_1:y:0+model_57/reshape_114/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_57/reshape_114/Reshape├
'model_57/dense_57/MatMul/ReadVariableOpReadVariableOp0model_57_dense_57_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_57/dense_57/MatMul/ReadVariableOp╚
model_57/dense_57/MatMulMatMul%model_57/reshape_114/Reshape:output:0/model_57/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_57/dense_57/MatMul┬
(model_57/dense_57/BiasAdd/ReadVariableOpReadVariableOp1model_57_dense_57_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_57/dense_57/BiasAdd/ReadVariableOp╔
model_57/dense_57/BiasAddBiasAdd"model_57/dense_57/MatMul:product:00model_57/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_57/dense_57/BiasAddЪ
model_57/dense_57/SoftplusSoftplus"model_57/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_57/dense_57/SoftplusР
model_57/reshape_115/ShapeShape(model_57/dense_57/Softplus:activations:0*
T0*
_output_shapes
:2
model_57/reshape_115/ShapeЮ
(model_57/reshape_115/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_57/reshape_115/strided_slice/stackв
*model_57/reshape_115/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_57/reshape_115/strided_slice/stack_1в
*model_57/reshape_115/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_57/reshape_115/strided_slice/stack_2р
"model_57/reshape_115/strided_sliceStridedSlice#model_57/reshape_115/Shape:output:01model_57/reshape_115/strided_slice/stack:output:03model_57/reshape_115/strided_slice/stack_1:output:03model_57/reshape_115/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_57/reshape_115/strided_sliceО
$model_57/reshape_115/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_57/reshape_115/Reshape/shape/1О
$model_57/reshape_115/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_57/reshape_115/Reshape/shape/2О
$model_57/reshape_115/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_57/reshape_115/Reshape/shape/3О
$model_57/reshape_115/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_57/reshape_115/Reshape/shape/4ч
"model_57/reshape_115/Reshape/shapePack+model_57/reshape_115/strided_slice:output:0-model_57/reshape_115/Reshape/shape/1:output:0-model_57/reshape_115/Reshape/shape/2:output:0-model_57/reshape_115/Reshape/shape/3:output:0-model_57/reshape_115/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_57/reshape_115/Reshape/shape▄
model_57/reshape_115/ReshapeReshape(model_57/dense_57/Softplus:activations:0+model_57/reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_57/reshape_115/Reshape╖
%model_57/tf.reshape_760/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_57/tf.reshape_760/Reshape/shapeю
model_57/tf.reshape_760/ReshapeReshape%model_57/reshape_115/Reshape:output:0.model_57/tf.reshape_760/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_57/tf.reshape_760/Reshape│
#model_57/tf.tile_380/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_57/tf.tile_380/Tile/multiplesр
model_57/tf.tile_380/TileTile(model_57/tf.reshape_760/Reshape:output:0,model_57/tf.tile_380/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_57/tf.tile_380/Tileл
%model_57/tf.reshape_761/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_57/tf.reshape_761/Reshape/shape▀
model_57/tf.reshape_761/ReshapeReshape"model_57/tf.tile_380/Tile:output:0.model_57/tf.reshape_761/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_57/tf.reshape_761/ReshapeК
"model_57/tf.concat_606/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_57/tf.concat_606/concat/axisФ
model_57/tf.concat_606/concatConcatV2(model_57/tf.reshape_761/Reshape:output:0*model_57/conv3d_296/Softplus:activations:0+model_57/tf.concat_606/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_57/tf.concat_606/concat╒
)model_57/conv3d_297/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_297_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_57/conv3d_297/Conv3D/ReadVariableOpЬ
model_57/conv3d_297/Conv3DConv3D&model_57/tf.concat_606/concat:output:01model_57/conv3d_297/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_297/Conv3D╚
*model_57/conv3d_297/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_297_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_57/conv3d_297/BiasAdd/ReadVariableOpє
model_57/conv3d_297/BiasAddBiasAdd#model_57/conv3d_297/Conv3D:output:02model_57/conv3d_297/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_57/conv3d_297/BiasAddм
model_57/conv3d_297/SoftplusSoftplus$model_57/conv3d_297/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_57/conv3d_297/Softplus╖
%model_57/tf.reshape_762/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_57/tf.reshape_762/Reshape/shapeє
model_57/tf.reshape_762/ReshapeReshape*model_57/conv3d_297/Softplus:activations:0.model_57/tf.reshape_762/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_57/tf.reshape_762/Reshape│
#model_57/tf.tile_381/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_57/tf.tile_381/Tile/multiplesр
model_57/tf.tile_381/TileTile(model_57/tf.reshape_762/Reshape:output:0,model_57/tf.tile_381/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_57/tf.tile_381/Tileл
%model_57/tf.reshape_763/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_57/tf.reshape_763/Reshape/shape▀
model_57/tf.reshape_763/ReshapeReshape"model_57/tf.tile_381/Tile:output:0.model_57/tf.reshape_763/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_57/tf.reshape_763/ReshapeК
"model_57/tf.concat_607/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_57/tf.concat_607/concat/axisФ
model_57/tf.concat_607/concatConcatV2(model_57/tf.reshape_763/Reshape:output:0*model_57/conv3d_295/Softplus:activations:0+model_57/tf.concat_607/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_57/tf.concat_607/concat╒
)model_57/conv3d_298/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_298_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_57/conv3d_298/Conv3D/ReadVariableOpЬ
model_57/conv3d_298/Conv3DConv3D&model_57/tf.concat_607/concat:output:01model_57/conv3d_298/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_298/Conv3D╚
*model_57/conv3d_298/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_298_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_57/conv3d_298/BiasAdd/ReadVariableOpє
model_57/conv3d_298/BiasAddBiasAdd#model_57/conv3d_298/Conv3D:output:02model_57/conv3d_298/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_57/conv3d_298/BiasAddм
model_57/conv3d_298/SoftplusSoftplus$model_57/conv3d_298/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_57/conv3d_298/Softplus╖
%model_57/tf.reshape_764/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_57/tf.reshape_764/Reshape/shapeє
model_57/tf.reshape_764/ReshapeReshape*model_57/conv3d_298/Softplus:activations:0.model_57/tf.reshape_764/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_57/tf.reshape_764/Reshape│
#model_57/tf.tile_382/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_57/tf.tile_382/Tile/multiplesр
model_57/tf.tile_382/TileTile(model_57/tf.reshape_764/Reshape:output:0,model_57/tf.tile_382/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_57/tf.tile_382/Tileл
%model_57/tf.reshape_765/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2'
%model_57/tf.reshape_765/Reshape/shape▀
model_57/tf.reshape_765/ReshapeReshape"model_57/tf.tile_382/Tile:output:0.model_57/tf.reshape_765/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2!
model_57/tf.reshape_765/ReshapeК
"model_57/tf.concat_608/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_57/tf.concat_608/concat/axisФ
model_57/tf.concat_608/concatConcatV2(model_57/tf.reshape_765/Reshape:output:0*model_57/conv3d_294/Softplus:activations:0+model_57/tf.concat_608/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_57/tf.concat_608/concat╒
)model_57/conv3d_299/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_299_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_57/conv3d_299/Conv3D/ReadVariableOpЬ
model_57/conv3d_299/Conv3DConv3D&model_57/tf.concat_608/concat:output:01model_57/conv3d_299/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_299/Conv3D╚
*model_57/conv3d_299/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_299_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_57/conv3d_299/BiasAdd/ReadVariableOpє
model_57/conv3d_299/BiasAddBiasAdd#model_57/conv3d_299/Conv3D:output:02model_57/conv3d_299/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_57/conv3d_299/BiasAddм
model_57/conv3d_299/SoftplusSoftplus$model_57/conv3d_299/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_57/conv3d_299/Softplus╖
%model_57/tf.reshape_766/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2'
%model_57/tf.reshape_766/Reshape/shapeє
model_57/tf.reshape_766/ReshapeReshape*model_57/conv3d_299/Softplus:activations:0.model_57/tf.reshape_766/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2!
model_57/tf.reshape_766/Reshape│
#model_57/tf.tile_383/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_57/tf.tile_383/Tile/multiplesр
model_57/tf.tile_383/TileTile(model_57/tf.reshape_766/Reshape:output:0,model_57/tf.tile_383/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
model_57/tf.tile_383/Tileл
%model_57/tf.reshape_767/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2'
%model_57/tf.reshape_767/Reshape/shape▀
model_57/tf.reshape_767/ReshapeReshape"model_57/tf.tile_383/Tile:output:0.model_57/tf.reshape_767/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2!
model_57/tf.reshape_767/ReshapeК
"model_57/tf.concat_609/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_57/tf.concat_609/concat/axisФ
model_57/tf.concat_609/concatConcatV2(model_57/tf.reshape_767/Reshape:output:0*model_57/conv3d_293/Softplus:activations:0+model_57/tf.concat_609/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
model_57/tf.concat_609/concat╒
)model_57/conv3d_300/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_300_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_57/conv3d_300/Conv3D/ReadVariableOpЬ
model_57/conv3d_300/Conv3DConv3D&model_57/tf.concat_609/concat:output:01model_57/conv3d_300/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_300/Conv3D╚
*model_57/conv3d_300/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_300_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_57/conv3d_300/BiasAdd/ReadVariableOpє
model_57/conv3d_300/BiasAddBiasAdd#model_57/conv3d_300/Conv3D:output:02model_57/conv3d_300/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_57/conv3d_300/BiasAddм
model_57/conv3d_300/SoftplusSoftplus$model_57/conv3d_300/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_57/conv3d_300/Softplus╒
)model_57/conv3d_301/Conv3D/ReadVariableOpReadVariableOp2model_57_conv3d_301_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_57/conv3d_301/Conv3D/ReadVariableOpа
model_57/conv3d_301/Conv3DConv3D*model_57/conv3d_300/Softplus:activations:01model_57/conv3d_301/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_57/conv3d_301/Conv3D╚
*model_57/conv3d_301/BiasAdd/ReadVariableOpReadVariableOp3model_57_conv3d_301_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_57/conv3d_301/BiasAdd/ReadVariableOpє
model_57/conv3d_301/BiasAddBiasAdd#model_57/conv3d_301/Conv3D:output:02model_57/conv3d_301/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
model_57/conv3d_301/BiasAddЛ
IdentityIdentity$model_57/conv3d_301/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity─
NoOpNoOp+^model_57/conv3d_293/BiasAdd/ReadVariableOp*^model_57/conv3d_293/Conv3D/ReadVariableOp+^model_57/conv3d_294/BiasAdd/ReadVariableOp*^model_57/conv3d_294/Conv3D/ReadVariableOp+^model_57/conv3d_295/BiasAdd/ReadVariableOp*^model_57/conv3d_295/Conv3D/ReadVariableOp+^model_57/conv3d_296/BiasAdd/ReadVariableOp*^model_57/conv3d_296/Conv3D/ReadVariableOp+^model_57/conv3d_297/BiasAdd/ReadVariableOp*^model_57/conv3d_297/Conv3D/ReadVariableOp+^model_57/conv3d_298/BiasAdd/ReadVariableOp*^model_57/conv3d_298/Conv3D/ReadVariableOp+^model_57/conv3d_299/BiasAdd/ReadVariableOp*^model_57/conv3d_299/Conv3D/ReadVariableOp+^model_57/conv3d_300/BiasAdd/ReadVariableOp*^model_57/conv3d_300/Conv3D/ReadVariableOp+^model_57/conv3d_301/BiasAdd/ReadVariableOp*^model_57/conv3d_301/Conv3D/ReadVariableOp)^model_57/dense_57/BiasAdd/ReadVariableOp(^model_57/dense_57/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2X
*model_57/conv3d_293/BiasAdd/ReadVariableOp*model_57/conv3d_293/BiasAdd/ReadVariableOp2V
)model_57/conv3d_293/Conv3D/ReadVariableOp)model_57/conv3d_293/Conv3D/ReadVariableOp2X
*model_57/conv3d_294/BiasAdd/ReadVariableOp*model_57/conv3d_294/BiasAdd/ReadVariableOp2V
)model_57/conv3d_294/Conv3D/ReadVariableOp)model_57/conv3d_294/Conv3D/ReadVariableOp2X
*model_57/conv3d_295/BiasAdd/ReadVariableOp*model_57/conv3d_295/BiasAdd/ReadVariableOp2V
)model_57/conv3d_295/Conv3D/ReadVariableOp)model_57/conv3d_295/Conv3D/ReadVariableOp2X
*model_57/conv3d_296/BiasAdd/ReadVariableOp*model_57/conv3d_296/BiasAdd/ReadVariableOp2V
)model_57/conv3d_296/Conv3D/ReadVariableOp)model_57/conv3d_296/Conv3D/ReadVariableOp2X
*model_57/conv3d_297/BiasAdd/ReadVariableOp*model_57/conv3d_297/BiasAdd/ReadVariableOp2V
)model_57/conv3d_297/Conv3D/ReadVariableOp)model_57/conv3d_297/Conv3D/ReadVariableOp2X
*model_57/conv3d_298/BiasAdd/ReadVariableOp*model_57/conv3d_298/BiasAdd/ReadVariableOp2V
)model_57/conv3d_298/Conv3D/ReadVariableOp)model_57/conv3d_298/Conv3D/ReadVariableOp2X
*model_57/conv3d_299/BiasAdd/ReadVariableOp*model_57/conv3d_299/BiasAdd/ReadVariableOp2V
)model_57/conv3d_299/Conv3D/ReadVariableOp)model_57/conv3d_299/Conv3D/ReadVariableOp2X
*model_57/conv3d_300/BiasAdd/ReadVariableOp*model_57/conv3d_300/BiasAdd/ReadVariableOp2V
)model_57/conv3d_300/Conv3D/ReadVariableOp)model_57/conv3d_300/Conv3D/ReadVariableOp2X
*model_57/conv3d_301/BiasAdd/ReadVariableOp*model_57/conv3d_301/BiasAdd/ReadVariableOp2V
)model_57/conv3d_301/Conv3D/ReadVariableOp)model_57/conv3d_301/Conv3D/ReadVariableOp2T
(model_57/dense_57/BiasAdd/ReadVariableOp(model_57/dense_57/BiasAdd/ReadVariableOp2R
'model_57/dense_57/MatMul/ReadVariableOp'model_57/dense_57/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
г
є
+__inference_model_57_layer_call_fn_15737241

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
F__inference_model_57_layer_call_and_return_conditional_losses_157365242
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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15737666

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
-__inference_conv3d_293_layer_call_fn_15737636

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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_157362622
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
х

o
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15737762

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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_15736262

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
┴
ж
-__inference_conv3d_294_layer_call_fn_15737684

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
H__inference_conv3d_294_layer_call_and_return_conditional_losses_157362892
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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_15737791

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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_15736451

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
Ь
e
I__inference_reshape_115_layer_call_and_return_conditional_losses_15737876

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
┴
ж
-__inference_conv3d_301_layer_call_fn_15737965

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
H__inference_conv3d_301_layer_call_and_return_conditional_losses_157365172
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
╬
Е
H__inference_conv3d_294_layer_call_and_return_conditional_losses_15736289

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
╬
Е
H__inference_conv3d_297_layer_call_and_return_conditional_losses_15737896

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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15737723

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
┴
ж
-__inference_conv3d_300_layer_call_fn_15737945

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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_157365012
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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15736143

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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15736173

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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_15737916

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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_15737936

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
г
є
+__inference_model_57_layer_call_fn_15737286

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
F__inference_model_57_layer_call_and_return_conditional_losses_157368552
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
╜ё
╡
F__inference_model_57_layer_call_and_return_conditional_losses_15737610

inputsG
)conv3d_293_conv3d_readvariableop_resource: 8
*conv3d_293_biasadd_readvariableop_resource: G
)conv3d_294_conv3d_readvariableop_resource: 8
*conv3d_294_biasadd_readvariableop_resource:G
)conv3d_295_conv3d_readvariableop_resource:8
*conv3d_295_biasadd_readvariableop_resource:G
)conv3d_296_conv3d_readvariableop_resource:8
*conv3d_296_biasadd_readvariableop_resource:9
'dense_57_matmul_readvariableop_resource:@@6
(dense_57_biasadd_readvariableop_resource:@G
)conv3d_297_conv3d_readvariableop_resource:8
*conv3d_297_biasadd_readvariableop_resource:G
)conv3d_298_conv3d_readvariableop_resource:8
*conv3d_298_biasadd_readvariableop_resource:G
)conv3d_299_conv3d_readvariableop_resource:8
*conv3d_299_biasadd_readvariableop_resource:G
)conv3d_300_conv3d_readvariableop_resource:0 8
*conv3d_300_biasadd_readvariableop_resource: G
)conv3d_301_conv3d_readvariableop_resource: 8
*conv3d_301_biasadd_readvariableop_resource:
identityИв!conv3d_293/BiasAdd/ReadVariableOpв conv3d_293/Conv3D/ReadVariableOpв!conv3d_294/BiasAdd/ReadVariableOpв conv3d_294/Conv3D/ReadVariableOpв!conv3d_295/BiasAdd/ReadVariableOpв conv3d_295/Conv3D/ReadVariableOpв!conv3d_296/BiasAdd/ReadVariableOpв conv3d_296/Conv3D/ReadVariableOpв!conv3d_297/BiasAdd/ReadVariableOpв conv3d_297/Conv3D/ReadVariableOpв!conv3d_298/BiasAdd/ReadVariableOpв conv3d_298/Conv3D/ReadVariableOpв!conv3d_299/BiasAdd/ReadVariableOpв conv3d_299/Conv3D/ReadVariableOpв!conv3d_300/BiasAdd/ReadVariableOpв conv3d_300/Conv3D/ReadVariableOpв!conv3d_301/BiasAdd/ReadVariableOpв conv3d_301/Conv3D/ReadVariableOpвdense_57/BiasAdd/ReadVariableOpвdense_57/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_450/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_450/strided_slice/stack╣
2tf.__operators__.getitem_450/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_450/strided_slice/stack_1╣
2tf.__operators__.getitem_450/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_450/strided_slice/stack_2Т
*tf.__operators__.getitem_450/strided_sliceStridedSliceinputs9tf.__operators__.getitem_450/strided_slice/stack:output:0;tf.__operators__.getitem_450/strided_slice/stack_1:output:0;tf.__operators__.getitem_450/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_450/strided_slice{
range_conversion_57/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_57/sub/y╨
range_conversion_57/subSub3tf.__operators__.getitem_450/strided_slice:output:0"range_conversion_57/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/subГ
range_conversion_57/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_57/truediv/y╚
range_conversion_57/truedivRealDivrange_conversion_57/sub:z:0&range_conversion_57/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/truediv{
range_conversion_57/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_57/mul/y╝
range_conversion_57/mulMulrange_conversion_57/truediv:z:0"range_conversion_57/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/mul{
range_conversion_57/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_57/add/y║
range_conversion_57/addAddV2range_conversion_57/mul:z:0"range_conversion_57/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/add╡
0tf.__operators__.getitem_451/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_451/strided_slice/stack╣
2tf.__operators__.getitem_451/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_451/strided_slice/stack_1╣
2tf.__operators__.getitem_451/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_451/strided_slice/stack_2Т
*tf.__operators__.getitem_451/strided_sliceStridedSliceinputs9tf.__operators__.getitem_451/strided_slice/stack:output:0;tf.__operators__.getitem_451/strided_slice/stack_1:output:0;tf.__operators__.getitem_451/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_451/strided_slicex
tf.concat_605/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_605/concat/axisї
tf.concat_605/concatConcatV2range_conversion_57/add:z:03tf.__operators__.getitem_451/strided_slice:output:0"tf.concat_605/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_605/concat║
 conv3d_293/Conv3D/ReadVariableOpReadVariableOp)conv3d_293_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_293/Conv3D/ReadVariableOp°
conv3d_293/Conv3DConv3Dtf.concat_605/concat:output:0(conv3d_293/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_293/Conv3Dн
!conv3d_293/BiasAdd/ReadVariableOpReadVariableOp*conv3d_293_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_293/BiasAdd/ReadVariableOp╧
conv3d_293/BiasAddBiasAddconv3d_293/Conv3D:output:0)conv3d_293/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_293/BiasAddС
conv3d_293/SoftplusSoftplusconv3d_293/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_293/Softplusй
$average_pooling3d_118/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_118/transpose/perm▀
average_pooling3d_118/transpose	Transpose!conv3d_293/Softplus:activations:0-average_pooling3d_118/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_118/transposeЁ
average_pooling3d_118/AvgPool3D	AvgPool3D#average_pooling3d_118/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_118/AvgPool3Dн
&average_pooling3d_118/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_118/transpose_1/permь
!average_pooling3d_118/transpose_1	Transpose(average_pooling3d_118/AvgPool3D:output:0/average_pooling3d_118/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_118/transpose_1║
 conv3d_294/Conv3D/ReadVariableOpReadVariableOp)conv3d_294_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_294/Conv3D/ReadVariableOpА
conv3d_294/Conv3DConv3D%average_pooling3d_118/transpose_1:y:0(conv3d_294/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_294/Conv3Dн
!conv3d_294/BiasAdd/ReadVariableOpReadVariableOp*conv3d_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_294/BiasAdd/ReadVariableOp╧
conv3d_294/BiasAddBiasAddconv3d_294/Conv3D:output:0)conv3d_294/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_294/BiasAddС
conv3d_294/SoftplusSoftplusconv3d_294/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_294/Softplusй
$average_pooling3d_119/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_119/transpose/perm▀
average_pooling3d_119/transpose	Transpose!conv3d_294/Softplus:activations:0-average_pooling3d_119/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_119/transposeЁ
average_pooling3d_119/AvgPool3D	AvgPool3D#average_pooling3d_119/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_119/AvgPool3Dн
&average_pooling3d_119/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_119/transpose_1/permь
!average_pooling3d_119/transpose_1	Transpose(average_pooling3d_119/AvgPool3D:output:0/average_pooling3d_119/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_119/transpose_1║
 conv3d_295/Conv3D/ReadVariableOpReadVariableOp)conv3d_295_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_295/Conv3D/ReadVariableOpА
conv3d_295/Conv3DConv3D%average_pooling3d_119/transpose_1:y:0(conv3d_295/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_295/Conv3Dн
!conv3d_295/BiasAdd/ReadVariableOpReadVariableOp*conv3d_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_295/BiasAdd/ReadVariableOp╧
conv3d_295/BiasAddBiasAddconv3d_295/Conv3D:output:0)conv3d_295/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_295/BiasAddС
conv3d_295/SoftplusSoftplusconv3d_295/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_295/Softplusй
$average_pooling3d_120/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_120/transpose/perm▀
average_pooling3d_120/transpose	Transpose!conv3d_295/Softplus:activations:0-average_pooling3d_120/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_120/transposeЁ
average_pooling3d_120/AvgPool3D	AvgPool3D#average_pooling3d_120/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_120/AvgPool3Dн
&average_pooling3d_120/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_120/transpose_1/permь
!average_pooling3d_120/transpose_1	Transpose(average_pooling3d_120/AvgPool3D:output:0/average_pooling3d_120/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_120/transpose_1║
 conv3d_296/Conv3D/ReadVariableOpReadVariableOp)conv3d_296_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_296/Conv3D/ReadVariableOpА
conv3d_296/Conv3DConv3D%average_pooling3d_120/transpose_1:y:0(conv3d_296/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_296/Conv3Dн
!conv3d_296/BiasAdd/ReadVariableOpReadVariableOp*conv3d_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_296/BiasAdd/ReadVariableOp╧
conv3d_296/BiasAddBiasAddconv3d_296/Conv3D:output:0)conv3d_296/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_296/BiasAddС
conv3d_296/SoftplusSoftplusconv3d_296/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_296/Softplusй
$average_pooling3d_121/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_121/transpose/perm▀
average_pooling3d_121/transpose	Transpose!conv3d_296/Softplus:activations:0-average_pooling3d_121/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_121/transposeЁ
average_pooling3d_121/AvgPool3D	AvgPool3D#average_pooling3d_121/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_121/AvgPool3Dн
&average_pooling3d_121/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_121/transpose_1/permь
!average_pooling3d_121/transpose_1	Transpose(average_pooling3d_121/AvgPool3D:output:0/average_pooling3d_121/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_121/transpose_1{
reshape_114/ShapeShape%average_pooling3d_121/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_114/ShapeМ
reshape_114/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_114/strided_slice/stackР
!reshape_114/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_114/strided_slice/stack_1Р
!reshape_114/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_114/strided_slice/stack_2к
reshape_114/strided_sliceStridedSlicereshape_114/Shape:output:0(reshape_114/strided_slice/stack:output:0*reshape_114/strided_slice/stack_1:output:0*reshape_114/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_114/strided_slice|
reshape_114/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_114/Reshape/shape/1╢
reshape_114/Reshape/shapePack"reshape_114/strided_slice:output:0$reshape_114/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_114/Reshape/shape▓
reshape_114/ReshapeReshape%average_pooling3d_121/transpose_1:y:0"reshape_114/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_114/Reshapeи
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_57/MatMul/ReadVariableOpд
dense_57/MatMulMatMulreshape_114/Reshape:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_57/MatMulз
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_57/BiasAdd/ReadVariableOpе
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_57/BiasAdd
dense_57/SoftplusSoftplusdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_57/Softplusu
reshape_115/ShapeShapedense_57/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_115/ShapeМ
reshape_115/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_115/strided_slice/stackР
!reshape_115/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_115/strided_slice/stack_1Р
!reshape_115/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_115/strided_slice/stack_2к
reshape_115/strided_sliceStridedSlicereshape_115/Shape:output:0(reshape_115/strided_slice/stack:output:0*reshape_115/strided_slice/stack_1:output:0*reshape_115/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_115/strided_slice|
reshape_115/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/1|
reshape_115/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/2|
reshape_115/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/3|
reshape_115/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/4и
reshape_115/Reshape/shapePack"reshape_115/strided_slice:output:0$reshape_115/Reshape/shape/1:output:0$reshape_115/Reshape/shape/2:output:0$reshape_115/Reshape/shape/3:output:0$reshape_115/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_115/Reshape/shape╕
reshape_115/ReshapeReshapedense_57/Softplus:activations:0"reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_115/Reshapeе
tf.reshape_760/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_760/Reshape/shape╩
tf.reshape_760/ReshapeReshapereshape_115/Reshape:output:0%tf.reshape_760/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_760/Reshapeб
tf.tile_380/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_380/Tile/multiples╝
tf.tile_380/TileTiletf.reshape_760/Reshape:output:0#tf.tile_380/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_380/TileЩ
tf.reshape_761/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_761/Reshape/shape╗
tf.reshape_761/ReshapeReshapetf.tile_380/Tile:output:0%tf.reshape_761/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_761/Reshapex
tf.concat_606/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_606/concat/axisч
tf.concat_606/concatConcatV2tf.reshape_761/Reshape:output:0!conv3d_296/Softplus:activations:0"tf.concat_606/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_606/concat║
 conv3d_297/Conv3D/ReadVariableOpReadVariableOp)conv3d_297_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_297/Conv3D/ReadVariableOp°
conv3d_297/Conv3DConv3Dtf.concat_606/concat:output:0(conv3d_297/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_297/Conv3Dн
!conv3d_297/BiasAdd/ReadVariableOpReadVariableOp*conv3d_297_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_297/BiasAdd/ReadVariableOp╧
conv3d_297/BiasAddBiasAddconv3d_297/Conv3D:output:0)conv3d_297/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_297/BiasAddС
conv3d_297/SoftplusSoftplusconv3d_297/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_297/Softplusе
tf.reshape_762/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_762/Reshape/shape╧
tf.reshape_762/ReshapeReshape!conv3d_297/Softplus:activations:0%tf.reshape_762/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_762/Reshapeб
tf.tile_381/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_381/Tile/multiples╝
tf.tile_381/TileTiletf.reshape_762/Reshape:output:0#tf.tile_381/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_381/TileЩ
tf.reshape_763/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_763/Reshape/shape╗
tf.reshape_763/ReshapeReshapetf.tile_381/Tile:output:0%tf.reshape_763/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_763/Reshapex
tf.concat_607/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_607/concat/axisч
tf.concat_607/concatConcatV2tf.reshape_763/Reshape:output:0!conv3d_295/Softplus:activations:0"tf.concat_607/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_607/concat║
 conv3d_298/Conv3D/ReadVariableOpReadVariableOp)conv3d_298_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_298/Conv3D/ReadVariableOp°
conv3d_298/Conv3DConv3Dtf.concat_607/concat:output:0(conv3d_298/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_298/Conv3Dн
!conv3d_298/BiasAdd/ReadVariableOpReadVariableOp*conv3d_298_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_298/BiasAdd/ReadVariableOp╧
conv3d_298/BiasAddBiasAddconv3d_298/Conv3D:output:0)conv3d_298/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_298/BiasAddС
conv3d_298/SoftplusSoftplusconv3d_298/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_298/Softplusе
tf.reshape_764/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_764/Reshape/shape╧
tf.reshape_764/ReshapeReshape!conv3d_298/Softplus:activations:0%tf.reshape_764/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_764/Reshapeб
tf.tile_382/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_382/Tile/multiples╝
tf.tile_382/TileTiletf.reshape_764/Reshape:output:0#tf.tile_382/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_382/TileЩ
tf.reshape_765/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_765/Reshape/shape╗
tf.reshape_765/ReshapeReshapetf.tile_382/Tile:output:0%tf.reshape_765/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_765/Reshapex
tf.concat_608/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_608/concat/axisч
tf.concat_608/concatConcatV2tf.reshape_765/Reshape:output:0!conv3d_294/Softplus:activations:0"tf.concat_608/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_608/concat║
 conv3d_299/Conv3D/ReadVariableOpReadVariableOp)conv3d_299_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_299/Conv3D/ReadVariableOp°
conv3d_299/Conv3DConv3Dtf.concat_608/concat:output:0(conv3d_299/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_299/Conv3Dн
!conv3d_299/BiasAdd/ReadVariableOpReadVariableOp*conv3d_299_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_299/BiasAdd/ReadVariableOp╧
conv3d_299/BiasAddBiasAddconv3d_299/Conv3D:output:0)conv3d_299/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_299/BiasAddС
conv3d_299/SoftplusSoftplusconv3d_299/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_299/Softplusе
tf.reshape_766/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_766/Reshape/shape╧
tf.reshape_766/ReshapeReshape!conv3d_299/Softplus:activations:0%tf.reshape_766/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_766/Reshapeб
tf.tile_383/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_383/Tile/multiples╝
tf.tile_383/TileTiletf.reshape_766/Reshape:output:0#tf.tile_383/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_383/TileЩ
tf.reshape_767/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_767/Reshape/shape╗
tf.reshape_767/ReshapeReshapetf.tile_383/Tile:output:0%tf.reshape_767/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_767/Reshapex
tf.concat_609/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_609/concat/axisч
tf.concat_609/concatConcatV2tf.reshape_767/Reshape:output:0!conv3d_293/Softplus:activations:0"tf.concat_609/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_609/concat║
 conv3d_300/Conv3D/ReadVariableOpReadVariableOp)conv3d_300_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_300/Conv3D/ReadVariableOp°
conv3d_300/Conv3DConv3Dtf.concat_609/concat:output:0(conv3d_300/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_300/Conv3Dн
!conv3d_300/BiasAdd/ReadVariableOpReadVariableOp*conv3d_300_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_300/BiasAdd/ReadVariableOp╧
conv3d_300/BiasAddBiasAddconv3d_300/Conv3D:output:0)conv3d_300/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_300/BiasAddС
conv3d_300/SoftplusSoftplusconv3d_300/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_300/Softplus║
 conv3d_301/Conv3D/ReadVariableOpReadVariableOp)conv3d_301_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_301/Conv3D/ReadVariableOp№
conv3d_301/Conv3DConv3D!conv3d_300/Softplus:activations:0(conv3d_301/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_301/Conv3Dн
!conv3d_301/BiasAdd/ReadVariableOpReadVariableOp*conv3d_301_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_301/BiasAdd/ReadVariableOp╧
conv3d_301/BiasAddBiasAddconv3d_301/Conv3D:output:0)conv3d_301/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_301/BiasAddВ
IdentityIdentityconv3d_301/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_293/BiasAdd/ReadVariableOp!^conv3d_293/Conv3D/ReadVariableOp"^conv3d_294/BiasAdd/ReadVariableOp!^conv3d_294/Conv3D/ReadVariableOp"^conv3d_295/BiasAdd/ReadVariableOp!^conv3d_295/Conv3D/ReadVariableOp"^conv3d_296/BiasAdd/ReadVariableOp!^conv3d_296/Conv3D/ReadVariableOp"^conv3d_297/BiasAdd/ReadVariableOp!^conv3d_297/Conv3D/ReadVariableOp"^conv3d_298/BiasAdd/ReadVariableOp!^conv3d_298/Conv3D/ReadVariableOp"^conv3d_299/BiasAdd/ReadVariableOp!^conv3d_299/Conv3D/ReadVariableOp"^conv3d_300/BiasAdd/ReadVariableOp!^conv3d_300/Conv3D/ReadVariableOp"^conv3d_301/BiasAdd/ReadVariableOp!^conv3d_301/Conv3D/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_293/BiasAdd/ReadVariableOp!conv3d_293/BiasAdd/ReadVariableOp2D
 conv3d_293/Conv3D/ReadVariableOp conv3d_293/Conv3D/ReadVariableOp2F
!conv3d_294/BiasAdd/ReadVariableOp!conv3d_294/BiasAdd/ReadVariableOp2D
 conv3d_294/Conv3D/ReadVariableOp conv3d_294/Conv3D/ReadVariableOp2F
!conv3d_295/BiasAdd/ReadVariableOp!conv3d_295/BiasAdd/ReadVariableOp2D
 conv3d_295/Conv3D/ReadVariableOp conv3d_295/Conv3D/ReadVariableOp2F
!conv3d_296/BiasAdd/ReadVariableOp!conv3d_296/BiasAdd/ReadVariableOp2D
 conv3d_296/Conv3D/ReadVariableOp conv3d_296/Conv3D/ReadVariableOp2F
!conv3d_297/BiasAdd/ReadVariableOp!conv3d_297/BiasAdd/ReadVariableOp2D
 conv3d_297/Conv3D/ReadVariableOp conv3d_297/Conv3D/ReadVariableOp2F
!conv3d_298/BiasAdd/ReadVariableOp!conv3d_298/BiasAdd/ReadVariableOp2D
 conv3d_298/Conv3D/ReadVariableOp conv3d_298/Conv3D/ReadVariableOp2F
!conv3d_299/BiasAdd/ReadVariableOp!conv3d_299/BiasAdd/ReadVariableOp2D
 conv3d_299/Conv3D/ReadVariableOp conv3d_299/Conv3D/ReadVariableOp2F
!conv3d_300/BiasAdd/ReadVariableOp!conv3d_300/BiasAdd/ReadVariableOp2D
 conv3d_300/Conv3D/ReadVariableOp conv3d_300/Conv3D/ReadVariableOp2F
!conv3d_301/BiasAdd/ReadVariableOp!conv3d_301/BiasAdd/ReadVariableOp2D
 conv3d_301/Conv3D/ReadVariableOp conv3d_301/Conv3D/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╓
Е
H__inference_conv3d_301_layer_call_and_return_conditional_losses_15737975

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
а
Є
+__inference_model_57_layer_call_fn_15736567	
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
F__inference_model_57_layer_call_and_return_conditional_losses_157365242
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
°
э
&__inference_signature_wrapper_15737196	
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
#__inference__wrapped_model_157361002
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
М	
o
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15736303

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
Х
T
8__inference_average_pooling3d_121_layer_call_fn_15737801

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
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_157363572
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
А
Ш
+__inference_dense_57_layer_call_fn_15737845

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
F__inference_dense_57_layer_call_and_return_conditional_losses_157363842
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
Ь
e
I__inference_reshape_115_layer_call_and_return_conditional_losses_15736405

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
╜ё
╡
F__inference_model_57_layer_call_and_return_conditional_losses_15737448

inputsG
)conv3d_293_conv3d_readvariableop_resource: 8
*conv3d_293_biasadd_readvariableop_resource: G
)conv3d_294_conv3d_readvariableop_resource: 8
*conv3d_294_biasadd_readvariableop_resource:G
)conv3d_295_conv3d_readvariableop_resource:8
*conv3d_295_biasadd_readvariableop_resource:G
)conv3d_296_conv3d_readvariableop_resource:8
*conv3d_296_biasadd_readvariableop_resource:9
'dense_57_matmul_readvariableop_resource:@@6
(dense_57_biasadd_readvariableop_resource:@G
)conv3d_297_conv3d_readvariableop_resource:8
*conv3d_297_biasadd_readvariableop_resource:G
)conv3d_298_conv3d_readvariableop_resource:8
*conv3d_298_biasadd_readvariableop_resource:G
)conv3d_299_conv3d_readvariableop_resource:8
*conv3d_299_biasadd_readvariableop_resource:G
)conv3d_300_conv3d_readvariableop_resource:0 8
*conv3d_300_biasadd_readvariableop_resource: G
)conv3d_301_conv3d_readvariableop_resource: 8
*conv3d_301_biasadd_readvariableop_resource:
identityИв!conv3d_293/BiasAdd/ReadVariableOpв conv3d_293/Conv3D/ReadVariableOpв!conv3d_294/BiasAdd/ReadVariableOpв conv3d_294/Conv3D/ReadVariableOpв!conv3d_295/BiasAdd/ReadVariableOpв conv3d_295/Conv3D/ReadVariableOpв!conv3d_296/BiasAdd/ReadVariableOpв conv3d_296/Conv3D/ReadVariableOpв!conv3d_297/BiasAdd/ReadVariableOpв conv3d_297/Conv3D/ReadVariableOpв!conv3d_298/BiasAdd/ReadVariableOpв conv3d_298/Conv3D/ReadVariableOpв!conv3d_299/BiasAdd/ReadVariableOpв conv3d_299/Conv3D/ReadVariableOpв!conv3d_300/BiasAdd/ReadVariableOpв conv3d_300/Conv3D/ReadVariableOpв!conv3d_301/BiasAdd/ReadVariableOpв conv3d_301/Conv3D/ReadVariableOpвdense_57/BiasAdd/ReadVariableOpвdense_57/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_450/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_450/strided_slice/stack╣
2tf.__operators__.getitem_450/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_450/strided_slice/stack_1╣
2tf.__operators__.getitem_450/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_450/strided_slice/stack_2Т
*tf.__operators__.getitem_450/strided_sliceStridedSliceinputs9tf.__operators__.getitem_450/strided_slice/stack:output:0;tf.__operators__.getitem_450/strided_slice/stack_1:output:0;tf.__operators__.getitem_450/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_450/strided_slice{
range_conversion_57/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_57/sub/y╨
range_conversion_57/subSub3tf.__operators__.getitem_450/strided_slice:output:0"range_conversion_57/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/subГ
range_conversion_57/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_57/truediv/y╚
range_conversion_57/truedivRealDivrange_conversion_57/sub:z:0&range_conversion_57/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/truediv{
range_conversion_57/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_57/mul/y╝
range_conversion_57/mulMulrange_conversion_57/truediv:z:0"range_conversion_57/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/mul{
range_conversion_57/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_57/add/y║
range_conversion_57/addAddV2range_conversion_57/mul:z:0"range_conversion_57/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_57/add╡
0tf.__operators__.getitem_451/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_451/strided_slice/stack╣
2tf.__operators__.getitem_451/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_451/strided_slice/stack_1╣
2tf.__operators__.getitem_451/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_451/strided_slice/stack_2Т
*tf.__operators__.getitem_451/strided_sliceStridedSliceinputs9tf.__operators__.getitem_451/strided_slice/stack:output:0;tf.__operators__.getitem_451/strided_slice/stack_1:output:0;tf.__operators__.getitem_451/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_451/strided_slicex
tf.concat_605/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_605/concat/axisї
tf.concat_605/concatConcatV2range_conversion_57/add:z:03tf.__operators__.getitem_451/strided_slice:output:0"tf.concat_605/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_605/concat║
 conv3d_293/Conv3D/ReadVariableOpReadVariableOp)conv3d_293_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_293/Conv3D/ReadVariableOp°
conv3d_293/Conv3DConv3Dtf.concat_605/concat:output:0(conv3d_293/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_293/Conv3Dн
!conv3d_293/BiasAdd/ReadVariableOpReadVariableOp*conv3d_293_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_293/BiasAdd/ReadVariableOp╧
conv3d_293/BiasAddBiasAddconv3d_293/Conv3D:output:0)conv3d_293/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_293/BiasAddС
conv3d_293/SoftplusSoftplusconv3d_293/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_293/Softplusй
$average_pooling3d_118/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_118/transpose/perm▀
average_pooling3d_118/transpose	Transpose!conv3d_293/Softplus:activations:0-average_pooling3d_118/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_118/transposeЁ
average_pooling3d_118/AvgPool3D	AvgPool3D#average_pooling3d_118/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_118/AvgPool3Dн
&average_pooling3d_118/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_118/transpose_1/permь
!average_pooling3d_118/transpose_1	Transpose(average_pooling3d_118/AvgPool3D:output:0/average_pooling3d_118/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_118/transpose_1║
 conv3d_294/Conv3D/ReadVariableOpReadVariableOp)conv3d_294_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_294/Conv3D/ReadVariableOpА
conv3d_294/Conv3DConv3D%average_pooling3d_118/transpose_1:y:0(conv3d_294/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_294/Conv3Dн
!conv3d_294/BiasAdd/ReadVariableOpReadVariableOp*conv3d_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_294/BiasAdd/ReadVariableOp╧
conv3d_294/BiasAddBiasAddconv3d_294/Conv3D:output:0)conv3d_294/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_294/BiasAddС
conv3d_294/SoftplusSoftplusconv3d_294/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_294/Softplusй
$average_pooling3d_119/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_119/transpose/perm▀
average_pooling3d_119/transpose	Transpose!conv3d_294/Softplus:activations:0-average_pooling3d_119/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_119/transposeЁ
average_pooling3d_119/AvgPool3D	AvgPool3D#average_pooling3d_119/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_119/AvgPool3Dн
&average_pooling3d_119/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_119/transpose_1/permь
!average_pooling3d_119/transpose_1	Transpose(average_pooling3d_119/AvgPool3D:output:0/average_pooling3d_119/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_119/transpose_1║
 conv3d_295/Conv3D/ReadVariableOpReadVariableOp)conv3d_295_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_295/Conv3D/ReadVariableOpА
conv3d_295/Conv3DConv3D%average_pooling3d_119/transpose_1:y:0(conv3d_295/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_295/Conv3Dн
!conv3d_295/BiasAdd/ReadVariableOpReadVariableOp*conv3d_295_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_295/BiasAdd/ReadVariableOp╧
conv3d_295/BiasAddBiasAddconv3d_295/Conv3D:output:0)conv3d_295/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_295/BiasAddС
conv3d_295/SoftplusSoftplusconv3d_295/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_295/Softplusй
$average_pooling3d_120/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_120/transpose/perm▀
average_pooling3d_120/transpose	Transpose!conv3d_295/Softplus:activations:0-average_pooling3d_120/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_120/transposeЁ
average_pooling3d_120/AvgPool3D	AvgPool3D#average_pooling3d_120/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_120/AvgPool3Dн
&average_pooling3d_120/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_120/transpose_1/permь
!average_pooling3d_120/transpose_1	Transpose(average_pooling3d_120/AvgPool3D:output:0/average_pooling3d_120/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_120/transpose_1║
 conv3d_296/Conv3D/ReadVariableOpReadVariableOp)conv3d_296_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_296/Conv3D/ReadVariableOpА
conv3d_296/Conv3DConv3D%average_pooling3d_120/transpose_1:y:0(conv3d_296/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_296/Conv3Dн
!conv3d_296/BiasAdd/ReadVariableOpReadVariableOp*conv3d_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_296/BiasAdd/ReadVariableOp╧
conv3d_296/BiasAddBiasAddconv3d_296/Conv3D:output:0)conv3d_296/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_296/BiasAddС
conv3d_296/SoftplusSoftplusconv3d_296/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_296/Softplusй
$average_pooling3d_121/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_121/transpose/perm▀
average_pooling3d_121/transpose	Transpose!conv3d_296/Softplus:activations:0-average_pooling3d_121/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_121/transposeЁ
average_pooling3d_121/AvgPool3D	AvgPool3D#average_pooling3d_121/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_121/AvgPool3Dн
&average_pooling3d_121/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_121/transpose_1/permь
!average_pooling3d_121/transpose_1	Transpose(average_pooling3d_121/AvgPool3D:output:0/average_pooling3d_121/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_121/transpose_1{
reshape_114/ShapeShape%average_pooling3d_121/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_114/ShapeМ
reshape_114/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_114/strided_slice/stackР
!reshape_114/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_114/strided_slice/stack_1Р
!reshape_114/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_114/strided_slice/stack_2к
reshape_114/strided_sliceStridedSlicereshape_114/Shape:output:0(reshape_114/strided_slice/stack:output:0*reshape_114/strided_slice/stack_1:output:0*reshape_114/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_114/strided_slice|
reshape_114/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_114/Reshape/shape/1╢
reshape_114/Reshape/shapePack"reshape_114/strided_slice:output:0$reshape_114/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_114/Reshape/shape▓
reshape_114/ReshapeReshape%average_pooling3d_121/transpose_1:y:0"reshape_114/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_114/Reshapeи
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_57/MatMul/ReadVariableOpд
dense_57/MatMulMatMulreshape_114/Reshape:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_57/MatMulз
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_57/BiasAdd/ReadVariableOpе
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_57/BiasAdd
dense_57/SoftplusSoftplusdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_57/Softplusu
reshape_115/ShapeShapedense_57/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_115/ShapeМ
reshape_115/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_115/strided_slice/stackР
!reshape_115/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_115/strided_slice/stack_1Р
!reshape_115/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_115/strided_slice/stack_2к
reshape_115/strided_sliceStridedSlicereshape_115/Shape:output:0(reshape_115/strided_slice/stack:output:0*reshape_115/strided_slice/stack_1:output:0*reshape_115/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_115/strided_slice|
reshape_115/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/1|
reshape_115/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/2|
reshape_115/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/3|
reshape_115/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_115/Reshape/shape/4и
reshape_115/Reshape/shapePack"reshape_115/strided_slice:output:0$reshape_115/Reshape/shape/1:output:0$reshape_115/Reshape/shape/2:output:0$reshape_115/Reshape/shape/3:output:0$reshape_115/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_115/Reshape/shape╕
reshape_115/ReshapeReshapedense_57/Softplus:activations:0"reshape_115/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_115/Reshapeе
tf.reshape_760/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_760/Reshape/shape╩
tf.reshape_760/ReshapeReshapereshape_115/Reshape:output:0%tf.reshape_760/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_760/Reshapeб
tf.tile_380/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_380/Tile/multiples╝
tf.tile_380/TileTiletf.reshape_760/Reshape:output:0#tf.tile_380/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_380/TileЩ
tf.reshape_761/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_761/Reshape/shape╗
tf.reshape_761/ReshapeReshapetf.tile_380/Tile:output:0%tf.reshape_761/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_761/Reshapex
tf.concat_606/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_606/concat/axisч
tf.concat_606/concatConcatV2tf.reshape_761/Reshape:output:0!conv3d_296/Softplus:activations:0"tf.concat_606/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_606/concat║
 conv3d_297/Conv3D/ReadVariableOpReadVariableOp)conv3d_297_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_297/Conv3D/ReadVariableOp°
conv3d_297/Conv3DConv3Dtf.concat_606/concat:output:0(conv3d_297/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_297/Conv3Dн
!conv3d_297/BiasAdd/ReadVariableOpReadVariableOp*conv3d_297_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_297/BiasAdd/ReadVariableOp╧
conv3d_297/BiasAddBiasAddconv3d_297/Conv3D:output:0)conv3d_297/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_297/BiasAddС
conv3d_297/SoftplusSoftplusconv3d_297/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_297/Softplusе
tf.reshape_762/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_762/Reshape/shape╧
tf.reshape_762/ReshapeReshape!conv3d_297/Softplus:activations:0%tf.reshape_762/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_762/Reshapeб
tf.tile_381/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_381/Tile/multiples╝
tf.tile_381/TileTiletf.reshape_762/Reshape:output:0#tf.tile_381/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_381/TileЩ
tf.reshape_763/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_763/Reshape/shape╗
tf.reshape_763/ReshapeReshapetf.tile_381/Tile:output:0%tf.reshape_763/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_763/Reshapex
tf.concat_607/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_607/concat/axisч
tf.concat_607/concatConcatV2tf.reshape_763/Reshape:output:0!conv3d_295/Softplus:activations:0"tf.concat_607/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_607/concat║
 conv3d_298/Conv3D/ReadVariableOpReadVariableOp)conv3d_298_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_298/Conv3D/ReadVariableOp°
conv3d_298/Conv3DConv3Dtf.concat_607/concat:output:0(conv3d_298/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_298/Conv3Dн
!conv3d_298/BiasAdd/ReadVariableOpReadVariableOp*conv3d_298_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_298/BiasAdd/ReadVariableOp╧
conv3d_298/BiasAddBiasAddconv3d_298/Conv3D:output:0)conv3d_298/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_298/BiasAddС
conv3d_298/SoftplusSoftplusconv3d_298/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_298/Softplusе
tf.reshape_764/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_764/Reshape/shape╧
tf.reshape_764/ReshapeReshape!conv3d_298/Softplus:activations:0%tf.reshape_764/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_764/Reshapeб
tf.tile_382/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_382/Tile/multiples╝
tf.tile_382/TileTiletf.reshape_764/Reshape:output:0#tf.tile_382/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_382/TileЩ
tf.reshape_765/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_765/Reshape/shape╗
tf.reshape_765/ReshapeReshapetf.tile_382/Tile:output:0%tf.reshape_765/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_765/Reshapex
tf.concat_608/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_608/concat/axisч
tf.concat_608/concatConcatV2tf.reshape_765/Reshape:output:0!conv3d_294/Softplus:activations:0"tf.concat_608/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_608/concat║
 conv3d_299/Conv3D/ReadVariableOpReadVariableOp)conv3d_299_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_299/Conv3D/ReadVariableOp°
conv3d_299/Conv3DConv3Dtf.concat_608/concat:output:0(conv3d_299/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_299/Conv3Dн
!conv3d_299/BiasAdd/ReadVariableOpReadVariableOp*conv3d_299_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_299/BiasAdd/ReadVariableOp╧
conv3d_299/BiasAddBiasAddconv3d_299/Conv3D:output:0)conv3d_299/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_299/BiasAddС
conv3d_299/SoftplusSoftplusconv3d_299/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_299/Softplusе
tf.reshape_766/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_766/Reshape/shape╧
tf.reshape_766/ReshapeReshape!conv3d_299/Softplus:activations:0%tf.reshape_766/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_766/Reshapeб
tf.tile_383/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_383/Tile/multiples╝
tf.tile_383/TileTiletf.reshape_766/Reshape:output:0#tf.tile_383/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_383/TileЩ
tf.reshape_767/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_767/Reshape/shape╗
tf.reshape_767/ReshapeReshapetf.tile_383/Tile:output:0%tf.reshape_767/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_767/Reshapex
tf.concat_609/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_609/concat/axisч
tf.concat_609/concatConcatV2tf.reshape_767/Reshape:output:0!conv3d_293/Softplus:activations:0"tf.concat_609/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_609/concat║
 conv3d_300/Conv3D/ReadVariableOpReadVariableOp)conv3d_300_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_300/Conv3D/ReadVariableOp°
conv3d_300/Conv3DConv3Dtf.concat_609/concat:output:0(conv3d_300/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_300/Conv3Dн
!conv3d_300/BiasAdd/ReadVariableOpReadVariableOp*conv3d_300_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_300/BiasAdd/ReadVariableOp╧
conv3d_300/BiasAddBiasAddconv3d_300/Conv3D:output:0)conv3d_300/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_300/BiasAddС
conv3d_300/SoftplusSoftplusconv3d_300/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_300/Softplus║
 conv3d_301/Conv3D/ReadVariableOpReadVariableOp)conv3d_301_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_301/Conv3D/ReadVariableOp№
conv3d_301/Conv3DConv3D!conv3d_300/Softplus:activations:0(conv3d_301/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_301/Conv3Dн
!conv3d_301/BiasAdd/ReadVariableOpReadVariableOp*conv3d_301_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_301/BiasAdd/ReadVariableOp╧
conv3d_301/BiasAddBiasAddconv3d_301/Conv3D:output:0)conv3d_301/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_301/BiasAddВ
IdentityIdentityconv3d_301/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_293/BiasAdd/ReadVariableOp!^conv3d_293/Conv3D/ReadVariableOp"^conv3d_294/BiasAdd/ReadVariableOp!^conv3d_294/Conv3D/ReadVariableOp"^conv3d_295/BiasAdd/ReadVariableOp!^conv3d_295/Conv3D/ReadVariableOp"^conv3d_296/BiasAdd/ReadVariableOp!^conv3d_296/Conv3D/ReadVariableOp"^conv3d_297/BiasAdd/ReadVariableOp!^conv3d_297/Conv3D/ReadVariableOp"^conv3d_298/BiasAdd/ReadVariableOp!^conv3d_298/Conv3D/ReadVariableOp"^conv3d_299/BiasAdd/ReadVariableOp!^conv3d_299/Conv3D/ReadVariableOp"^conv3d_300/BiasAdd/ReadVariableOp!^conv3d_300/Conv3D/ReadVariableOp"^conv3d_301/BiasAdd/ReadVariableOp!^conv3d_301/Conv3D/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_293/BiasAdd/ReadVariableOp!conv3d_293/BiasAdd/ReadVariableOp2D
 conv3d_293/Conv3D/ReadVariableOp conv3d_293/Conv3D/ReadVariableOp2F
!conv3d_294/BiasAdd/ReadVariableOp!conv3d_294/BiasAdd/ReadVariableOp2D
 conv3d_294/Conv3D/ReadVariableOp conv3d_294/Conv3D/ReadVariableOp2F
!conv3d_295/BiasAdd/ReadVariableOp!conv3d_295/BiasAdd/ReadVariableOp2D
 conv3d_295/Conv3D/ReadVariableOp conv3d_295/Conv3D/ReadVariableOp2F
!conv3d_296/BiasAdd/ReadVariableOp!conv3d_296/BiasAdd/ReadVariableOp2D
 conv3d_296/Conv3D/ReadVariableOp conv3d_296/Conv3D/ReadVariableOp2F
!conv3d_297/BiasAdd/ReadVariableOp!conv3d_297/BiasAdd/ReadVariableOp2D
 conv3d_297/Conv3D/ReadVariableOp conv3d_297/Conv3D/ReadVariableOp2F
!conv3d_298/BiasAdd/ReadVariableOp!conv3d_298/BiasAdd/ReadVariableOp2D
 conv3d_298/Conv3D/ReadVariableOp conv3d_298/Conv3D/ReadVariableOp2F
!conv3d_299/BiasAdd/ReadVariableOp!conv3d_299/BiasAdd/ReadVariableOp2D
 conv3d_299/Conv3D/ReadVariableOp conv3d_299/Conv3D/ReadVariableOp2F
!conv3d_300/BiasAdd/ReadVariableOp!conv3d_300/BiasAdd/ReadVariableOp2D
 conv3d_300/Conv3D/ReadVariableOp conv3d_300/Conv3D/ReadVariableOp2F
!conv3d_301/BiasAdd/ReadVariableOp!conv3d_301/BiasAdd/ReadVariableOp2D
 conv3d_301/Conv3D/ReadVariableOp conv3d_301/Conv3D/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15737819

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
ж
T
8__inference_average_pooling3d_119_layer_call_fn_15737700

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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_157361432
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
┴
ж
-__inference_conv3d_296_layer_call_fn_15737780

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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_157363432
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
8__inference_average_pooling3d_120_layer_call_fn_15737753

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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_157363302
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
БУ
б

F__inference_model_57_layer_call_and_return_conditional_losses_15736855

inputs1
conv3d_293_15736766: !
conv3d_293_15736768: 1
conv3d_294_15736772: !
conv3d_294_15736774:1
conv3d_295_15736778:!
conv3d_295_15736780:1
conv3d_296_15736784:!
conv3d_296_15736786:#
dense_57_15736791:@@
dense_57_15736793:@1
conv3d_297_15736805:!
conv3d_297_15736807:1
conv3d_298_15736818:!
conv3d_298_15736820:1
conv3d_299_15736831:!
conv3d_299_15736833:1
conv3d_300_15736844:0 !
conv3d_300_15736846: 1
conv3d_301_15736849: !
conv3d_301_15736851:
identityИв"conv3d_293/StatefulPartitionedCallв"conv3d_294/StatefulPartitionedCallв"conv3d_295/StatefulPartitionedCallв"conv3d_296/StatefulPartitionedCallв"conv3d_297/StatefulPartitionedCallв"conv3d_298/StatefulPartitionedCallв"conv3d_299/StatefulPartitionedCallв"conv3d_300/StatefulPartitionedCallв"conv3d_301/StatefulPartitionedCallв dense_57/StatefulPartitionedCall╡
0tf.__operators__.getitem_450/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_450/strided_slice/stack╣
2tf.__operators__.getitem_450/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_450/strided_slice/stack_1╣
2tf.__operators__.getitem_450/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_450/strided_slice/stack_2Т
*tf.__operators__.getitem_450/strided_sliceStridedSliceinputs9tf.__operators__.getitem_450/strided_slice/stack:output:0;tf.__operators__.getitem_450/strided_slice/stack_1:output:0;tf.__operators__.getitem_450/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_450/strided_slice╗
#range_conversion_57/PartitionedCallPartitionedCall3tf.__operators__.getitem_450/strided_slice:output:0*
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
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_157362432%
#range_conversion_57/PartitionedCall╡
0tf.__operators__.getitem_451/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_451/strided_slice/stack╣
2tf.__operators__.getitem_451/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_451/strided_slice/stack_1╣
2tf.__operators__.getitem_451/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_451/strided_slice/stack_2Т
*tf.__operators__.getitem_451/strided_sliceStridedSliceinputs9tf.__operators__.getitem_451/strided_slice/stack:output:0;tf.__operators__.getitem_451/strided_slice/stack_1:output:0;tf.__operators__.getitem_451/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_451/strided_slicex
tf.concat_605/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_605/concat/axisЖ
tf.concat_605/concatConcatV2,range_conversion_57/PartitionedCall:output:03tf.__operators__.getitem_451/strided_slice:output:0"tf.concat_605/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_605/concat╥
"conv3d_293/StatefulPartitionedCallStatefulPartitionedCalltf.concat_605/concat:output:0conv3d_293_15736766conv3d_293_15736768*
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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_157362622$
"conv3d_293/StatefulPartitionedCall╣
%average_pooling3d_118/PartitionedCallPartitionedCall+conv3d_293/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_157362762'
%average_pooling3d_118/PartitionedCallу
"conv3d_294/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_118/PartitionedCall:output:0conv3d_294_15736772conv3d_294_15736774*
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
H__inference_conv3d_294_layer_call_and_return_conditional_losses_157362892$
"conv3d_294/StatefulPartitionedCall╣
%average_pooling3d_119/PartitionedCallPartitionedCall+conv3d_294/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_157363032'
%average_pooling3d_119/PartitionedCallу
"conv3d_295/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_119/PartitionedCall:output:0conv3d_295_15736778conv3d_295_15736780*
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
H__inference_conv3d_295_layer_call_and_return_conditional_losses_157363162$
"conv3d_295/StatefulPartitionedCall╣
%average_pooling3d_120/PartitionedCallPartitionedCall+conv3d_295/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_157363302'
%average_pooling3d_120/PartitionedCallу
"conv3d_296/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_120/PartitionedCall:output:0conv3d_296_15736784conv3d_296_15736786*
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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_157363432$
"conv3d_296/StatefulPartitionedCall╣
%average_pooling3d_121/PartitionedCallPartitionedCall+conv3d_296/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_157363572'
%average_pooling3d_121/PartitionedCallТ
reshape_114/PartitionedCallPartitionedCall.average_pooling3d_121/PartitionedCall:output:0*
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
I__inference_reshape_114_layer_call_and_return_conditional_losses_157363712
reshape_114/PartitionedCall├
 dense_57/StatefulPartitionedCallStatefulPartitionedCall$reshape_114/PartitionedCall:output:0dense_57_15736791dense_57_15736793*
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
F__inference_dense_57_layer_call_and_return_conditional_losses_157363842"
 dense_57/StatefulPartitionedCallЩ
reshape_115/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
I__inference_reshape_115_layer_call_and_return_conditional_losses_157364052
reshape_115/PartitionedCallе
tf.reshape_760/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_760/Reshape/shape╥
tf.reshape_760/ReshapeReshape$reshape_115/PartitionedCall:output:0%tf.reshape_760/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_760/Reshapeб
tf.tile_380/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_380/Tile/multiples╝
tf.tile_380/TileTiletf.reshape_760/Reshape:output:0#tf.tile_380/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_380/TileЩ
tf.reshape_761/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_761/Reshape/shape╗
tf.reshape_761/ReshapeReshapetf.tile_380/Tile:output:0%tf.reshape_761/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_761/Reshapex
tf.concat_606/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_606/concat/axisё
tf.concat_606/concatConcatV2tf.reshape_761/Reshape:output:0+conv3d_296/StatefulPartitionedCall:output:0"tf.concat_606/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_606/concat╥
"conv3d_297/StatefulPartitionedCallStatefulPartitionedCalltf.concat_606/concat:output:0conv3d_297_15736805conv3d_297_15736807*
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
H__inference_conv3d_297_layer_call_and_return_conditional_losses_157364262$
"conv3d_297/StatefulPartitionedCallе
tf.reshape_762/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_762/Reshape/shape┘
tf.reshape_762/ReshapeReshape+conv3d_297/StatefulPartitionedCall:output:0%tf.reshape_762/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_762/Reshapeб
tf.tile_381/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_381/Tile/multiples╝
tf.tile_381/TileTiletf.reshape_762/Reshape:output:0#tf.tile_381/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_381/TileЩ
tf.reshape_763/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_763/Reshape/shape╗
tf.reshape_763/ReshapeReshapetf.tile_381/Tile:output:0%tf.reshape_763/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_763/Reshapex
tf.concat_607/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_607/concat/axisё
tf.concat_607/concatConcatV2tf.reshape_763/Reshape:output:0+conv3d_295/StatefulPartitionedCall:output:0"tf.concat_607/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_607/concat╥
"conv3d_298/StatefulPartitionedCallStatefulPartitionedCalltf.concat_607/concat:output:0conv3d_298_15736818conv3d_298_15736820*
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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_157364512$
"conv3d_298/StatefulPartitionedCallе
tf.reshape_764/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_764/Reshape/shape┘
tf.reshape_764/ReshapeReshape+conv3d_298/StatefulPartitionedCall:output:0%tf.reshape_764/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_764/Reshapeб
tf.tile_382/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_382/Tile/multiples╝
tf.tile_382/TileTiletf.reshape_764/Reshape:output:0#tf.tile_382/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_382/TileЩ
tf.reshape_765/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_765/Reshape/shape╗
tf.reshape_765/ReshapeReshapetf.tile_382/Tile:output:0%tf.reshape_765/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_765/Reshapex
tf.concat_608/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_608/concat/axisё
tf.concat_608/concatConcatV2tf.reshape_765/Reshape:output:0+conv3d_294/StatefulPartitionedCall:output:0"tf.concat_608/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_608/concat╥
"conv3d_299/StatefulPartitionedCallStatefulPartitionedCalltf.concat_608/concat:output:0conv3d_299_15736831conv3d_299_15736833*
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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_157364762$
"conv3d_299/StatefulPartitionedCallе
tf.reshape_766/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_766/Reshape/shape┘
tf.reshape_766/ReshapeReshape+conv3d_299/StatefulPartitionedCall:output:0%tf.reshape_766/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_766/Reshapeб
tf.tile_383/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_383/Tile/multiples╝
tf.tile_383/TileTiletf.reshape_766/Reshape:output:0#tf.tile_383/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_383/TileЩ
tf.reshape_767/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_767/Reshape/shape╗
tf.reshape_767/ReshapeReshapetf.tile_383/Tile:output:0%tf.reshape_767/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_767/Reshapex
tf.concat_609/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_609/concat/axisё
tf.concat_609/concatConcatV2tf.reshape_767/Reshape:output:0+conv3d_293/StatefulPartitionedCall:output:0"tf.concat_609/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_609/concat╥
"conv3d_300/StatefulPartitionedCallStatefulPartitionedCalltf.concat_609/concat:output:0conv3d_300_15736844conv3d_300_15736846*
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_157365012$
"conv3d_300/StatefulPartitionedCallр
"conv3d_301/StatefulPartitionedCallStatefulPartitionedCall+conv3d_300/StatefulPartitionedCall:output:0conv3d_301_15736849conv3d_301_15736851*
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
H__inference_conv3d_301_layer_call_and_return_conditional_losses_157365172$
"conv3d_301/StatefulPartitionedCallТ
IdentityIdentity+conv3d_301/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_293/StatefulPartitionedCall#^conv3d_294/StatefulPartitionedCall#^conv3d_295/StatefulPartitionedCall#^conv3d_296/StatefulPartitionedCall#^conv3d_297/StatefulPartitionedCall#^conv3d_298/StatefulPartitionedCall#^conv3d_299/StatefulPartitionedCall#^conv3d_300/StatefulPartitionedCall#^conv3d_301/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_293/StatefulPartitionedCall"conv3d_293/StatefulPartitionedCall2H
"conv3d_294/StatefulPartitionedCall"conv3d_294/StatefulPartitionedCall2H
"conv3d_295/StatefulPartitionedCall"conv3d_295/StatefulPartitionedCall2H
"conv3d_296/StatefulPartitionedCall"conv3d_296/StatefulPartitionedCall2H
"conv3d_297/StatefulPartitionedCall"conv3d_297/StatefulPartitionedCall2H
"conv3d_298/StatefulPartitionedCall"conv3d_298/StatefulPartitionedCall2H
"conv3d_299/StatefulPartitionedCall"conv3d_299/StatefulPartitionedCall2H
"conv3d_300/StatefulPartitionedCall"conv3d_300/StatefulPartitionedCall2H
"conv3d_301/StatefulPartitionedCall"conv3d_301/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15736276

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

conv3d_301<
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
1:/  2conv3d_293/kernel
:  2conv3d_293/bias
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
1:/  2conv3d_294/kernel
: 2conv3d_294/bias
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
1:/ 2conv3d_295/kernel
: 2conv3d_295/bias
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
1:/ 2conv3d_296/kernel
: 2conv3d_296/bias
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
#:!@@ 2dense_57/kernel
:@ 2dense_57/bias
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
1:/ 2conv3d_297/kernel
: 2conv3d_297/bias
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
1:/ 2conv3d_298/kernel
: 2conv3d_298/bias
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
1:/ 2conv3d_299/kernel
: 2conv3d_299/bias
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
1:/0  2conv3d_300/kernel
:  2conv3d_300/bias
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
1:/  2conv3d_301/kernel
: 2conv3d_301/bias
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
+__inference_model_57_layer_call_fn_15736567
+__inference_model_57_layer_call_fn_15737241
+__inference_model_57_layer_call_fn_15737286
+__inference_model_57_layer_call_fn_15736943└
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
#__inference__wrapped_model_15736100input"Ш
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
F__inference_model_57_layer_call_and_return_conditional_losses_15737448
F__inference_model_57_layer_call_and_return_conditional_losses_15737610
F__inference_model_57_layer_call_and_return_conditional_losses_15737046
F__inference_model_57_layer_call_and_return_conditional_losses_15737149└
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
6__inference_range_conversion_57_layer_call_fn_15737615ж
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
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_15737627ж
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
-__inference_conv3d_293_layer_call_fn_15737636в
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
H__inference_conv3d_293_layer_call_and_return_conditional_losses_15737647в
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
8__inference_average_pooling3d_118_layer_call_fn_15737652
8__inference_average_pooling3d_118_layer_call_fn_15737657в
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
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15737666
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15737675в
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
-__inference_conv3d_294_layer_call_fn_15737684в
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
H__inference_conv3d_294_layer_call_and_return_conditional_losses_15737695в
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
8__inference_average_pooling3d_119_layer_call_fn_15737700
8__inference_average_pooling3d_119_layer_call_fn_15737705в
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
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15737714
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15737723в
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
-__inference_conv3d_295_layer_call_fn_15737732в
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
H__inference_conv3d_295_layer_call_and_return_conditional_losses_15737743в
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
8__inference_average_pooling3d_120_layer_call_fn_15737748
8__inference_average_pooling3d_120_layer_call_fn_15737753в
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
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15737762
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15737771в
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
-__inference_conv3d_296_layer_call_fn_15737780в
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
H__inference_conv3d_296_layer_call_and_return_conditional_losses_15737791в
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
8__inference_average_pooling3d_121_layer_call_fn_15737796
8__inference_average_pooling3d_121_layer_call_fn_15737801в
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
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15737810
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15737819в
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
.__inference_reshape_114_layer_call_fn_15737824в
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
I__inference_reshape_114_layer_call_and_return_conditional_losses_15737836в
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
+__inference_dense_57_layer_call_fn_15737845в
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
F__inference_dense_57_layer_call_and_return_conditional_losses_15737856в
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
.__inference_reshape_115_layer_call_fn_15737861в
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
I__inference_reshape_115_layer_call_and_return_conditional_losses_15737876в
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
-__inference_conv3d_297_layer_call_fn_15737885в
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
H__inference_conv3d_297_layer_call_and_return_conditional_losses_15737896в
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
-__inference_conv3d_298_layer_call_fn_15737905в
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
H__inference_conv3d_298_layer_call_and_return_conditional_losses_15737916в
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
-__inference_conv3d_299_layer_call_fn_15737925в
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
H__inference_conv3d_299_layer_call_and_return_conditional_losses_15737936в
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
-__inference_conv3d_300_layer_call_fn_15737945в
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
H__inference_conv3d_300_layer_call_and_return_conditional_losses_15737956в
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
-__inference_conv3d_301_layer_call_fn_15737965в
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
H__inference_conv3d_301_layer_call_and_return_conditional_losses_15737975в
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
&__inference_signature_wrapper_15737196input"Ф
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
#__inference__wrapped_model_15736100Э23<=FGPQ^_lmvwАБКЛРС:в7
0в-
+К(
input         @@
к "Cк@
>

conv3d_3010К-

conv3d_301         @@Р
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15737666╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_118_layer_call_and_return_conditional_losses_15737675p;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0            
Ъ ш
8__inference_average_pooling3d_118_layer_call_fn_15737652л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_118_layer_call_fn_15737657c;в8
1в.
,К)
inputs          @@
к "$К!            Р
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15737714╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_119_layer_call_and_return_conditional_losses_15737723p;в8
1в.
,К)
inputs           
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_119_layer_call_fn_15737700л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_119_layer_call_fn_15737705c;в8
1в.
,К)
inputs           
к "$К!         Р
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15737762╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_120_layer_call_and_return_conditional_losses_15737771p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_120_layer_call_fn_15737748л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_120_layer_call_fn_15737753c;в8
1в.
,К)
inputs         
к "$К!         Р
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15737810╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_121_layer_call_and_return_conditional_losses_15737819p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_121_layer_call_fn_15737796л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_121_layer_call_fn_15737801c;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_293_layer_call_and_return_conditional_losses_15737647t23;в8
1в.
,К)
inputs         @@
к "1в.
'К$
0          @@
Ъ Ш
-__inference_conv3d_293_layer_call_fn_15737636g23;в8
1в.
,К)
inputs         @@
к "$К!          @@└
H__inference_conv3d_294_layer_call_and_return_conditional_losses_15737695t<=;в8
1в.
,К)
inputs            
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_294_layer_call_fn_15737684g<=;в8
1в.
,К)
inputs            
к "$К!           └
H__inference_conv3d_295_layer_call_and_return_conditional_losses_15737743tFG;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_295_layer_call_fn_15737732gFG;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_296_layer_call_and_return_conditional_losses_15737791tPQ;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_296_layer_call_fn_15737780gPQ;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_297_layer_call_and_return_conditional_losses_15737896tlm;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_297_layer_call_fn_15737885glm;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_298_layer_call_and_return_conditional_losses_15737916tvw;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_298_layer_call_fn_15737905gvw;в8
1в.
,К)
inputs         
к "$К!         ┬
H__inference_conv3d_299_layer_call_and_return_conditional_losses_15737936vАБ;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ъ
-__inference_conv3d_299_layer_call_fn_15737925iАБ;в8
1в.
,К)
inputs           
к "$К!           ┬
H__inference_conv3d_300_layer_call_and_return_conditional_losses_15737956vКЛ;в8
1в.
,К)
inputs         0@@
к "1в.
'К$
0          @@
Ъ Ъ
-__inference_conv3d_300_layer_call_fn_15737945iКЛ;в8
1в.
,К)
inputs         0@@
к "$К!          @@┬
H__inference_conv3d_301_layer_call_and_return_conditional_losses_15737975vРС;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0         @@
Ъ Ъ
-__inference_conv3d_301_layer_call_fn_15737965iРС;в8
1в.
,К)
inputs          @@
к "$К!         @@ж
F__inference_dense_57_layer_call_and_return_conditional_losses_15737856\^_/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_57_layer_call_fn_15737845O^_/в,
%в"
 К
inputs         @
к "К         @▐
F__inference_model_57_layer_call_and_return_conditional_losses_15737046У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_57_layer_call_and_return_conditional_losses_15737149У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_57_layer_call_and_return_conditional_losses_15737448Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
F__inference_model_57_layer_call_and_return_conditional_losses_15737610Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
+__inference_model_57_layer_call_fn_15736567Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p 

 
к "$К!         @@╢
+__inference_model_57_layer_call_fn_15736943Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p

 
к "$К!         @@╖
+__inference_model_57_layer_call_fn_15737241З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p 

 
к "$К!         @@╖
+__inference_model_57_layer_call_fn_15737286З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p

 
к "$К!         @@╔
Q__inference_range_conversion_57_layer_call_and_return_conditional_losses_15737627t?в<
5в2
0К-

parameters         @@
к "1в.
'К$
0         @@
Ъ б
6__inference_range_conversion_57_layer_call_fn_15737615g?в<
5в2
0К-

parameters         @@
к "$К!         @@▒
I__inference_reshape_114_layer_call_and_return_conditional_losses_15737836d;в8
1в.
,К)
inputs         
к "%в"
К
0         @
Ъ Й
.__inference_reshape_114_layer_call_fn_15737824W;в8
1в.
,К)
inputs         
к "К         @▒
I__inference_reshape_115_layer_call_and_return_conditional_losses_15737876d/в,
%в"
 К
inputs         @
к "1в.
'К$
0         
Ъ Й
.__inference_reshape_115_layer_call_fn_15737861W/в,
%в"
 К
inputs         @
к "$К!         ╤
&__inference_signature_wrapper_15737196ж23<=FGPQ^_lmvwАБКЛРСCв@
в 
9к6
4
input+К(
input         @@"Cк@
>

conv3d_3010К-

conv3d_301         @@