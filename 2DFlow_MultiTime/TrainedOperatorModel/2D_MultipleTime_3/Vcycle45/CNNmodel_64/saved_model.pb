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
conv3d_326/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_326/kernel
Г
%conv3d_326/kernel/Read/ReadVariableOpReadVariableOpconv3d_326/kernel**
_output_shapes
: *
dtype0
v
conv3d_326/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_326/bias
o
#conv3d_326/bias/Read/ReadVariableOpReadVariableOpconv3d_326/bias*
_output_shapes
: *
dtype0
К
conv3d_327/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_327/kernel
Г
%conv3d_327/kernel/Read/ReadVariableOpReadVariableOpconv3d_327/kernel**
_output_shapes
: *
dtype0
v
conv3d_327/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_327/bias
o
#conv3d_327/bias/Read/ReadVariableOpReadVariableOpconv3d_327/bias*
_output_shapes
:*
dtype0
К
conv3d_328/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_328/kernel
Г
%conv3d_328/kernel/Read/ReadVariableOpReadVariableOpconv3d_328/kernel**
_output_shapes
:*
dtype0
v
conv3d_328/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_328/bias
o
#conv3d_328/bias/Read/ReadVariableOpReadVariableOpconv3d_328/bias*
_output_shapes
:*
dtype0
К
conv3d_329/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_329/kernel
Г
%conv3d_329/kernel/Read/ReadVariableOpReadVariableOpconv3d_329/kernel**
_output_shapes
:*
dtype0
v
conv3d_329/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_329/bias
o
#conv3d_329/bias/Read/ReadVariableOpReadVariableOpconv3d_329/bias*
_output_shapes
:*
dtype0
z
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_70/kernel
s
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes

:@@*
dtype0
r
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_70/bias
k
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
_output_shapes
:@*
dtype0
К
conv3d_330/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_330/kernel
Г
%conv3d_330/kernel/Read/ReadVariableOpReadVariableOpconv3d_330/kernel**
_output_shapes
:*
dtype0
v
conv3d_330/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_330/bias
o
#conv3d_330/bias/Read/ReadVariableOpReadVariableOpconv3d_330/bias*
_output_shapes
:*
dtype0
К
conv3d_331/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_331/kernel
Г
%conv3d_331/kernel/Read/ReadVariableOpReadVariableOpconv3d_331/kernel**
_output_shapes
:*
dtype0
v
conv3d_331/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_331/bias
o
#conv3d_331/bias/Read/ReadVariableOpReadVariableOpconv3d_331/bias*
_output_shapes
:*
dtype0
К
conv3d_332/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_332/kernel
Г
%conv3d_332/kernel/Read/ReadVariableOpReadVariableOpconv3d_332/kernel**
_output_shapes
:*
dtype0
v
conv3d_332/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_332/bias
o
#conv3d_332/bias/Read/ReadVariableOpReadVariableOpconv3d_332/bias*
_output_shapes
:*
dtype0
К
conv3d_333/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_333/kernel
Г
%conv3d_333/kernel/Read/ReadVariableOpReadVariableOpconv3d_333/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_333/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_333/bias
o
#conv3d_333/bias/Read/ReadVariableOpReadVariableOpconv3d_333/bias*
_output_shapes
: *
dtype0
К
conv3d_334/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_334/kernel
Г
%conv3d_334/kernel/Read/ReadVariableOpReadVariableOpconv3d_334/kernel**
_output_shapes
: *
dtype0
v
conv3d_334/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_334/bias
o
#conv3d_334/bias/Read/ReadVariableOpReadVariableOpconv3d_334/bias*
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
,regularization_losses
-	variables
.trainable_variables
/	keras_api

0	keras_api

1	keras_api
h

2kernel
3bias
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
h

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
R
Lregularization_losses
M	variables
Ntrainable_variables
O	keras_api
h

Pkernel
Qbias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
R
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
R
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
h

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
R
dregularization_losses
e	variables
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
nregularization_losses
o	variables
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
xregularization_losses
y	variables
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
Вregularization_losses
Г	variables
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
Мregularization_losses
Н	variables
Оtrainable_variables
П	keras_api
n
Рkernel
	Сbias
Тregularization_losses
У	variables
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
 Цlayer_regularization_losses
Чlayers
&regularization_losses
Шlayer_metrics
'	variables
Щnon_trainable_variables
(trainable_variables
Ъmetrics
 
 
 
 
 
▓
 Ыlayer_regularization_losses
Ьlayers
,regularization_losses
Эlayer_metrics
-	variables
Юnon_trainable_variables
.trainable_variables
Яmetrics
 
 
][
VARIABLE_VALUEconv3d_326/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_326/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
▓
 аlayer_regularization_losses
бlayers
4regularization_losses
вlayer_metrics
5	variables
гnon_trainable_variables
6trainable_variables
дmetrics
 
 
 
▓
 еlayer_regularization_losses
жlayers
8regularization_losses
зlayer_metrics
9	variables
иnon_trainable_variables
:trainable_variables
йmetrics
][
VARIABLE_VALUEconv3d_327/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_327/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
▓
 кlayer_regularization_losses
лlayers
>regularization_losses
мlayer_metrics
?	variables
нnon_trainable_variables
@trainable_variables
оmetrics
 
 
 
▓
 пlayer_regularization_losses
░layers
Bregularization_losses
▒layer_metrics
C	variables
▓non_trainable_variables
Dtrainable_variables
│metrics
][
VARIABLE_VALUEconv3d_328/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_328/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1

F0
G1
▓
 ┤layer_regularization_losses
╡layers
Hregularization_losses
╢layer_metrics
I	variables
╖non_trainable_variables
Jtrainable_variables
╕metrics
 
 
 
▓
 ╣layer_regularization_losses
║layers
Lregularization_losses
╗layer_metrics
M	variables
╝non_trainable_variables
Ntrainable_variables
╜metrics
][
VARIABLE_VALUEconv3d_329/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_329/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

P0
Q1
▓
 ╛layer_regularization_losses
┐layers
Rregularization_losses
└layer_metrics
S	variables
┴non_trainable_variables
Ttrainable_variables
┬metrics
 
 
 
▓
 ├layer_regularization_losses
─layers
Vregularization_losses
┼layer_metrics
W	variables
╞non_trainable_variables
Xtrainable_variables
╟metrics
 
 
 
▓
 ╚layer_regularization_losses
╔layers
Zregularization_losses
╩layer_metrics
[	variables
╦non_trainable_variables
\trainable_variables
╠metrics
[Y
VARIABLE_VALUEdense_70/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_70/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

^0
_1
▓
 ═layer_regularization_losses
╬layers
`regularization_losses
╧layer_metrics
a	variables
╨non_trainable_variables
btrainable_variables
╤metrics
 
 
 
▓
 ╥layer_regularization_losses
╙layers
dregularization_losses
╘layer_metrics
e	variables
╒non_trainable_variables
ftrainable_variables
╓metrics
 
 
 
 
][
VARIABLE_VALUEconv3d_330/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_330/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

l0
m1
▓
 ╫layer_regularization_losses
╪layers
nregularization_losses
┘layer_metrics
o	variables
┌non_trainable_variables
ptrainable_variables
█metrics
 
 
 
 
][
VARIABLE_VALUEconv3d_331/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_331/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

v0
w1
▓
 ▄layer_regularization_losses
▌layers
xregularization_losses
▐layer_metrics
y	variables
▀non_trainable_variables
ztrainable_variables
рmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_332/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_332/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

А0
Б1

А0
Б1
╡
 сlayer_regularization_losses
тlayers
Вregularization_losses
уlayer_metrics
Г	variables
фnon_trainable_variables
Дtrainable_variables
хmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_333/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_333/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

К0
Л1

К0
Л1
╡
 цlayer_regularization_losses
чlayers
Мregularization_losses
шlayer_metrics
Н	variables
щnon_trainable_variables
Оtrainable_variables
ъmetrics
][
VARIABLE_VALUEconv3d_334/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_334/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Р0
С1

Р0
С1
╡
 ыlayer_regularization_losses
ьlayers
Тregularization_losses
эlayer_metrics
У	variables
юnon_trainable_variables
Фtrainable_variables
яmetrics
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_326/kernelconv3d_326/biasconv3d_327/kernelconv3d_327/biasconv3d_328/kernelconv3d_328/biasconv3d_329/kernelconv3d_329/biasdense_70/kerneldense_70/biasconv3d_330/kernelconv3d_330/biasconv3d_331/kernelconv3d_331/biasconv3d_332/kernelconv3d_332/biasconv3d_333/kernelconv3d_333/biasconv3d_334/kernelconv3d_334/bias* 
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
&__inference_signature_wrapper_16869393
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
░
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_326/kernel/Read/ReadVariableOp#conv3d_326/bias/Read/ReadVariableOp%conv3d_327/kernel/Read/ReadVariableOp#conv3d_327/bias/Read/ReadVariableOp%conv3d_328/kernel/Read/ReadVariableOp#conv3d_328/bias/Read/ReadVariableOp%conv3d_329/kernel/Read/ReadVariableOp#conv3d_329/bias/Read/ReadVariableOp#dense_70/kernel/Read/ReadVariableOp!dense_70/bias/Read/ReadVariableOp%conv3d_330/kernel/Read/ReadVariableOp#conv3d_330/bias/Read/ReadVariableOp%conv3d_331/kernel/Read/ReadVariableOp#conv3d_331/bias/Read/ReadVariableOp%conv3d_332/kernel/Read/ReadVariableOp#conv3d_332/bias/Read/ReadVariableOp%conv3d_333/kernel/Read/ReadVariableOp#conv3d_333/bias/Read/ReadVariableOp%conv3d_334/kernel/Read/ReadVariableOp#conv3d_334/bias/Read/ReadVariableOpConst*!
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
!__inference__traced_save_16870255
Ы
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_326/kernelconv3d_326/biasconv3d_327/kernelconv3d_327/biasconv3d_328/kernelconv3d_328/biasconv3d_329/kernelconv3d_329/biasdense_70/kerneldense_70/biasconv3d_330/kernelconv3d_330/biasconv3d_331/kernelconv3d_331/biasconv3d_332/kernelconv3d_332/biasconv3d_333/kernelconv3d_333/biasconv3d_334/kernelconv3d_334/bias* 
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
$__inference__traced_restore_16870325БЩ
Ь
e
I__inference_reshape_141_layer_call_and_return_conditional_losses_16870073

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
Э
V
6__inference_range_conversion_70_layer_call_fn_16869812

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
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_168684402
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
Ь
e
I__inference_reshape_140_layer_call_and_return_conditional_losses_16868568

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
┴
ж
-__inference_conv3d_331_layer_call_fn_16870102

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
H__inference_conv3d_331_layer_call_and_return_conditional_losses_168686482
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
кX
Л
$__inference__traced_restore_16870325
file_prefix@
"assignvariableop_conv3d_326_kernel: 0
"assignvariableop_1_conv3d_326_bias: B
$assignvariableop_2_conv3d_327_kernel: 0
"assignvariableop_3_conv3d_327_bias:B
$assignvariableop_4_conv3d_328_kernel:0
"assignvariableop_5_conv3d_328_bias:B
$assignvariableop_6_conv3d_329_kernel:0
"assignvariableop_7_conv3d_329_bias:4
"assignvariableop_8_dense_70_kernel:@@.
 assignvariableop_9_dense_70_bias:@C
%assignvariableop_10_conv3d_330_kernel:1
#assignvariableop_11_conv3d_330_bias:C
%assignvariableop_12_conv3d_331_kernel:1
#assignvariableop_13_conv3d_331_bias:C
%assignvariableop_14_conv3d_332_kernel:1
#assignvariableop_15_conv3d_332_bias:C
%assignvariableop_16_conv3d_333_kernel:0 1
#assignvariableop_17_conv3d_333_bias: C
%assignvariableop_18_conv3d_334_kernel: 1
#assignvariableop_19_conv3d_334_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_326_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_326_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_327_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_327_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_328_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_328_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_329_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_329_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_70_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_70_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_330_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_330_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_331_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_331_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_332_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_332_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16н
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_333_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17л
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_333_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18н
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_334_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19л
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_334_biasIdentity_19:output:0"/device:CPU:0*
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
╜ё
╡
F__inference_model_70_layer_call_and_return_conditional_losses_16869645

inputsG
)conv3d_326_conv3d_readvariableop_resource: 8
*conv3d_326_biasadd_readvariableop_resource: G
)conv3d_327_conv3d_readvariableop_resource: 8
*conv3d_327_biasadd_readvariableop_resource:G
)conv3d_328_conv3d_readvariableop_resource:8
*conv3d_328_biasadd_readvariableop_resource:G
)conv3d_329_conv3d_readvariableop_resource:8
*conv3d_329_biasadd_readvariableop_resource:9
'dense_70_matmul_readvariableop_resource:@@6
(dense_70_biasadd_readvariableop_resource:@G
)conv3d_330_conv3d_readvariableop_resource:8
*conv3d_330_biasadd_readvariableop_resource:G
)conv3d_331_conv3d_readvariableop_resource:8
*conv3d_331_biasadd_readvariableop_resource:G
)conv3d_332_conv3d_readvariableop_resource:8
*conv3d_332_biasadd_readvariableop_resource:G
)conv3d_333_conv3d_readvariableop_resource:0 8
*conv3d_333_biasadd_readvariableop_resource: G
)conv3d_334_conv3d_readvariableop_resource: 8
*conv3d_334_biasadd_readvariableop_resource:
identityИв!conv3d_326/BiasAdd/ReadVariableOpв conv3d_326/Conv3D/ReadVariableOpв!conv3d_327/BiasAdd/ReadVariableOpв conv3d_327/Conv3D/ReadVariableOpв!conv3d_328/BiasAdd/ReadVariableOpв conv3d_328/Conv3D/ReadVariableOpв!conv3d_329/BiasAdd/ReadVariableOpв conv3d_329/Conv3D/ReadVariableOpв!conv3d_330/BiasAdd/ReadVariableOpв conv3d_330/Conv3D/ReadVariableOpв!conv3d_331/BiasAdd/ReadVariableOpв conv3d_331/Conv3D/ReadVariableOpв!conv3d_332/BiasAdd/ReadVariableOpв conv3d_332/Conv3D/ReadVariableOpв!conv3d_333/BiasAdd/ReadVariableOpв conv3d_333/Conv3D/ReadVariableOpв!conv3d_334/BiasAdd/ReadVariableOpв conv3d_334/Conv3D/ReadVariableOpвdense_70/BiasAdd/ReadVariableOpвdense_70/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_286/strided_slice/stack╣
2tf.__operators__.getitem_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_286/strided_slice/stack_1╣
2tf.__operators__.getitem_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_286/strided_slice/stack_2Т
*tf.__operators__.getitem_286/strided_sliceStridedSliceinputs9tf.__operators__.getitem_286/strided_slice/stack:output:0;tf.__operators__.getitem_286/strided_slice/stack_1:output:0;tf.__operators__.getitem_286/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_286/strided_slice{
range_conversion_70/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_70/sub/y╨
range_conversion_70/subSub3tf.__operators__.getitem_286/strided_slice:output:0"range_conversion_70/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/subГ
range_conversion_70/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_70/truediv/y╚
range_conversion_70/truedivRealDivrange_conversion_70/sub:z:0&range_conversion_70/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/truediv{
range_conversion_70/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_70/mul/y╝
range_conversion_70/mulMulrange_conversion_70/truediv:z:0"range_conversion_70/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/mul{
range_conversion_70/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_70/add/y║
range_conversion_70/addAddV2range_conversion_70/mul:z:0"range_conversion_70/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/add╡
0tf.__operators__.getitem_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_287/strided_slice/stack╣
2tf.__operators__.getitem_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_287/strided_slice/stack_1╣
2tf.__operators__.getitem_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_287/strided_slice/stack_2Т
*tf.__operators__.getitem_287/strided_sliceStridedSliceinputs9tf.__operators__.getitem_287/strided_slice/stack:output:0;tf.__operators__.getitem_287/strided_slice/stack_1:output:0;tf.__operators__.getitem_287/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_287/strided_slicex
tf.concat_355/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_355/concat/axisї
tf.concat_355/concatConcatV2range_conversion_70/add:z:03tf.__operators__.getitem_287/strided_slice:output:0"tf.concat_355/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_355/concat║
 conv3d_326/Conv3D/ReadVariableOpReadVariableOp)conv3d_326_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_326/Conv3D/ReadVariableOp°
conv3d_326/Conv3DConv3Dtf.concat_355/concat:output:0(conv3d_326/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_326/Conv3Dн
!conv3d_326/BiasAdd/ReadVariableOpReadVariableOp*conv3d_326_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_326/BiasAdd/ReadVariableOp╧
conv3d_326/BiasAddBiasAddconv3d_326/Conv3D:output:0)conv3d_326/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_326/BiasAddС
conv3d_326/SoftplusSoftplusconv3d_326/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_326/Softplusй
$average_pooling3d_128/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_128/transpose/perm▀
average_pooling3d_128/transpose	Transpose!conv3d_326/Softplus:activations:0-average_pooling3d_128/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_128/transposeЁ
average_pooling3d_128/AvgPool3D	AvgPool3D#average_pooling3d_128/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_128/AvgPool3Dн
&average_pooling3d_128/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_128/transpose_1/permь
!average_pooling3d_128/transpose_1	Transpose(average_pooling3d_128/AvgPool3D:output:0/average_pooling3d_128/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_128/transpose_1║
 conv3d_327/Conv3D/ReadVariableOpReadVariableOp)conv3d_327_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_327/Conv3D/ReadVariableOpА
conv3d_327/Conv3DConv3D%average_pooling3d_128/transpose_1:y:0(conv3d_327/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_327/Conv3Dн
!conv3d_327/BiasAdd/ReadVariableOpReadVariableOp*conv3d_327_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_327/BiasAdd/ReadVariableOp╧
conv3d_327/BiasAddBiasAddconv3d_327/Conv3D:output:0)conv3d_327/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_327/BiasAddС
conv3d_327/SoftplusSoftplusconv3d_327/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_327/Softplusй
$average_pooling3d_129/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_129/transpose/perm▀
average_pooling3d_129/transpose	Transpose!conv3d_327/Softplus:activations:0-average_pooling3d_129/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_129/transposeЁ
average_pooling3d_129/AvgPool3D	AvgPool3D#average_pooling3d_129/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_129/AvgPool3Dн
&average_pooling3d_129/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_129/transpose_1/permь
!average_pooling3d_129/transpose_1	Transpose(average_pooling3d_129/AvgPool3D:output:0/average_pooling3d_129/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_129/transpose_1║
 conv3d_328/Conv3D/ReadVariableOpReadVariableOp)conv3d_328_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_328/Conv3D/ReadVariableOpА
conv3d_328/Conv3DConv3D%average_pooling3d_129/transpose_1:y:0(conv3d_328/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_328/Conv3Dн
!conv3d_328/BiasAdd/ReadVariableOpReadVariableOp*conv3d_328_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_328/BiasAdd/ReadVariableOp╧
conv3d_328/BiasAddBiasAddconv3d_328/Conv3D:output:0)conv3d_328/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_328/BiasAddС
conv3d_328/SoftplusSoftplusconv3d_328/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_328/Softplusй
$average_pooling3d_130/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_130/transpose/perm▀
average_pooling3d_130/transpose	Transpose!conv3d_328/Softplus:activations:0-average_pooling3d_130/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_130/transposeЁ
average_pooling3d_130/AvgPool3D	AvgPool3D#average_pooling3d_130/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_130/AvgPool3Dн
&average_pooling3d_130/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_130/transpose_1/permь
!average_pooling3d_130/transpose_1	Transpose(average_pooling3d_130/AvgPool3D:output:0/average_pooling3d_130/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_130/transpose_1║
 conv3d_329/Conv3D/ReadVariableOpReadVariableOp)conv3d_329_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_329/Conv3D/ReadVariableOpА
conv3d_329/Conv3DConv3D%average_pooling3d_130/transpose_1:y:0(conv3d_329/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_329/Conv3Dн
!conv3d_329/BiasAdd/ReadVariableOpReadVariableOp*conv3d_329_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_329/BiasAdd/ReadVariableOp╧
conv3d_329/BiasAddBiasAddconv3d_329/Conv3D:output:0)conv3d_329/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_329/BiasAddС
conv3d_329/SoftplusSoftplusconv3d_329/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_329/Softplusй
$average_pooling3d_131/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_131/transpose/perm▀
average_pooling3d_131/transpose	Transpose!conv3d_329/Softplus:activations:0-average_pooling3d_131/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_131/transposeЁ
average_pooling3d_131/AvgPool3D	AvgPool3D#average_pooling3d_131/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_131/AvgPool3Dн
&average_pooling3d_131/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_131/transpose_1/permь
!average_pooling3d_131/transpose_1	Transpose(average_pooling3d_131/AvgPool3D:output:0/average_pooling3d_131/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_131/transpose_1{
reshape_140/ShapeShape%average_pooling3d_131/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_140/ShapeМ
reshape_140/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_140/strided_slice/stackР
!reshape_140/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_140/strided_slice/stack_1Р
!reshape_140/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_140/strided_slice/stack_2к
reshape_140/strided_sliceStridedSlicereshape_140/Shape:output:0(reshape_140/strided_slice/stack:output:0*reshape_140/strided_slice/stack_1:output:0*reshape_140/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_140/strided_slice|
reshape_140/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_140/Reshape/shape/1╢
reshape_140/Reshape/shapePack"reshape_140/strided_slice:output:0$reshape_140/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_140/Reshape/shape▓
reshape_140/ReshapeReshape%average_pooling3d_131/transpose_1:y:0"reshape_140/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_140/Reshapeи
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_70/MatMul/ReadVariableOpд
dense_70/MatMulMatMulreshape_140/Reshape:output:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_70/MatMulз
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_70/BiasAdd/ReadVariableOpе
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_70/BiasAdd
dense_70/SoftplusSoftplusdense_70/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_70/Softplusu
reshape_141/ShapeShapedense_70/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_141/ShapeМ
reshape_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_141/strided_slice/stackР
!reshape_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_141/strided_slice/stack_1Р
!reshape_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_141/strided_slice/stack_2к
reshape_141/strided_sliceStridedSlicereshape_141/Shape:output:0(reshape_141/strided_slice/stack:output:0*reshape_141/strided_slice/stack_1:output:0*reshape_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_141/strided_slice|
reshape_141/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/1|
reshape_141/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/2|
reshape_141/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/3|
reshape_141/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/4и
reshape_141/Reshape/shapePack"reshape_141/strided_slice:output:0$reshape_141/Reshape/shape/1:output:0$reshape_141/Reshape/shape/2:output:0$reshape_141/Reshape/shape/3:output:0$reshape_141/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_141/Reshape/shape╕
reshape_141/ReshapeReshapedense_70/Softplus:activations:0"reshape_141/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_141/Reshapeе
tf.reshape_424/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_424/Reshape/shape╩
tf.reshape_424/ReshapeReshapereshape_141/Reshape:output:0%tf.reshape_424/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_424/Reshapeб
tf.tile_212/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_212/Tile/multiples╝
tf.tile_212/TileTiletf.reshape_424/Reshape:output:0#tf.tile_212/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_212/TileЩ
tf.reshape_425/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_425/Reshape/shape╗
tf.reshape_425/ReshapeReshapetf.tile_212/Tile:output:0%tf.reshape_425/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_425/Reshapex
tf.concat_356/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_356/concat/axisч
tf.concat_356/concatConcatV2tf.reshape_425/Reshape:output:0!conv3d_329/Softplus:activations:0"tf.concat_356/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_356/concat║
 conv3d_330/Conv3D/ReadVariableOpReadVariableOp)conv3d_330_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_330/Conv3D/ReadVariableOp°
conv3d_330/Conv3DConv3Dtf.concat_356/concat:output:0(conv3d_330/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_330/Conv3Dн
!conv3d_330/BiasAdd/ReadVariableOpReadVariableOp*conv3d_330_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_330/BiasAdd/ReadVariableOp╧
conv3d_330/BiasAddBiasAddconv3d_330/Conv3D:output:0)conv3d_330/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_330/BiasAddС
conv3d_330/SoftplusSoftplusconv3d_330/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_330/Softplusе
tf.reshape_426/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_426/Reshape/shape╧
tf.reshape_426/ReshapeReshape!conv3d_330/Softplus:activations:0%tf.reshape_426/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_426/Reshapeб
tf.tile_213/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_213/Tile/multiples╝
tf.tile_213/TileTiletf.reshape_426/Reshape:output:0#tf.tile_213/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_213/TileЩ
tf.reshape_427/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_427/Reshape/shape╗
tf.reshape_427/ReshapeReshapetf.tile_213/Tile:output:0%tf.reshape_427/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_427/Reshapex
tf.concat_357/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_357/concat/axisч
tf.concat_357/concatConcatV2tf.reshape_427/Reshape:output:0!conv3d_328/Softplus:activations:0"tf.concat_357/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_357/concat║
 conv3d_331/Conv3D/ReadVariableOpReadVariableOp)conv3d_331_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_331/Conv3D/ReadVariableOp°
conv3d_331/Conv3DConv3Dtf.concat_357/concat:output:0(conv3d_331/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_331/Conv3Dн
!conv3d_331/BiasAdd/ReadVariableOpReadVariableOp*conv3d_331_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_331/BiasAdd/ReadVariableOp╧
conv3d_331/BiasAddBiasAddconv3d_331/Conv3D:output:0)conv3d_331/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_331/BiasAddС
conv3d_331/SoftplusSoftplusconv3d_331/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_331/Softplusе
tf.reshape_428/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_428/Reshape/shape╧
tf.reshape_428/ReshapeReshape!conv3d_331/Softplus:activations:0%tf.reshape_428/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_428/Reshapeб
tf.tile_214/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_214/Tile/multiples╝
tf.tile_214/TileTiletf.reshape_428/Reshape:output:0#tf.tile_214/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_214/TileЩ
tf.reshape_429/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_429/Reshape/shape╗
tf.reshape_429/ReshapeReshapetf.tile_214/Tile:output:0%tf.reshape_429/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_429/Reshapex
tf.concat_358/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_358/concat/axisч
tf.concat_358/concatConcatV2tf.reshape_429/Reshape:output:0!conv3d_327/Softplus:activations:0"tf.concat_358/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_358/concat║
 conv3d_332/Conv3D/ReadVariableOpReadVariableOp)conv3d_332_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_332/Conv3D/ReadVariableOp°
conv3d_332/Conv3DConv3Dtf.concat_358/concat:output:0(conv3d_332/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_332/Conv3Dн
!conv3d_332/BiasAdd/ReadVariableOpReadVariableOp*conv3d_332_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_332/BiasAdd/ReadVariableOp╧
conv3d_332/BiasAddBiasAddconv3d_332/Conv3D:output:0)conv3d_332/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_332/BiasAddС
conv3d_332/SoftplusSoftplusconv3d_332/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_332/Softplusе
tf.reshape_430/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_430/Reshape/shape╧
tf.reshape_430/ReshapeReshape!conv3d_332/Softplus:activations:0%tf.reshape_430/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_430/Reshapeб
tf.tile_215/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_215/Tile/multiples╝
tf.tile_215/TileTiletf.reshape_430/Reshape:output:0#tf.tile_215/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_215/TileЩ
tf.reshape_431/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_431/Reshape/shape╗
tf.reshape_431/ReshapeReshapetf.tile_215/Tile:output:0%tf.reshape_431/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_431/Reshapex
tf.concat_359/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_359/concat/axisч
tf.concat_359/concatConcatV2tf.reshape_431/Reshape:output:0!conv3d_326/Softplus:activations:0"tf.concat_359/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_359/concat║
 conv3d_333/Conv3D/ReadVariableOpReadVariableOp)conv3d_333_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_333/Conv3D/ReadVariableOp°
conv3d_333/Conv3DConv3Dtf.concat_359/concat:output:0(conv3d_333/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_333/Conv3Dн
!conv3d_333/BiasAdd/ReadVariableOpReadVariableOp*conv3d_333_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_333/BiasAdd/ReadVariableOp╧
conv3d_333/BiasAddBiasAddconv3d_333/Conv3D:output:0)conv3d_333/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_333/BiasAddС
conv3d_333/SoftplusSoftplusconv3d_333/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_333/Softplus║
 conv3d_334/Conv3D/ReadVariableOpReadVariableOp)conv3d_334_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_334/Conv3D/ReadVariableOp№
conv3d_334/Conv3DConv3D!conv3d_333/Softplus:activations:0(conv3d_334/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_334/Conv3Dн
!conv3d_334/BiasAdd/ReadVariableOpReadVariableOp*conv3d_334_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_334/BiasAdd/ReadVariableOp╧
conv3d_334/BiasAddBiasAddconv3d_334/Conv3D:output:0)conv3d_334/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_334/BiasAddВ
IdentityIdentityconv3d_334/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_326/BiasAdd/ReadVariableOp!^conv3d_326/Conv3D/ReadVariableOp"^conv3d_327/BiasAdd/ReadVariableOp!^conv3d_327/Conv3D/ReadVariableOp"^conv3d_328/BiasAdd/ReadVariableOp!^conv3d_328/Conv3D/ReadVariableOp"^conv3d_329/BiasAdd/ReadVariableOp!^conv3d_329/Conv3D/ReadVariableOp"^conv3d_330/BiasAdd/ReadVariableOp!^conv3d_330/Conv3D/ReadVariableOp"^conv3d_331/BiasAdd/ReadVariableOp!^conv3d_331/Conv3D/ReadVariableOp"^conv3d_332/BiasAdd/ReadVariableOp!^conv3d_332/Conv3D/ReadVariableOp"^conv3d_333/BiasAdd/ReadVariableOp!^conv3d_333/Conv3D/ReadVariableOp"^conv3d_334/BiasAdd/ReadVariableOp!^conv3d_334/Conv3D/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_326/BiasAdd/ReadVariableOp!conv3d_326/BiasAdd/ReadVariableOp2D
 conv3d_326/Conv3D/ReadVariableOp conv3d_326/Conv3D/ReadVariableOp2F
!conv3d_327/BiasAdd/ReadVariableOp!conv3d_327/BiasAdd/ReadVariableOp2D
 conv3d_327/Conv3D/ReadVariableOp conv3d_327/Conv3D/ReadVariableOp2F
!conv3d_328/BiasAdd/ReadVariableOp!conv3d_328/BiasAdd/ReadVariableOp2D
 conv3d_328/Conv3D/ReadVariableOp conv3d_328/Conv3D/ReadVariableOp2F
!conv3d_329/BiasAdd/ReadVariableOp!conv3d_329/BiasAdd/ReadVariableOp2D
 conv3d_329/Conv3D/ReadVariableOp conv3d_329/Conv3D/ReadVariableOp2F
!conv3d_330/BiasAdd/ReadVariableOp!conv3d_330/BiasAdd/ReadVariableOp2D
 conv3d_330/Conv3D/ReadVariableOp conv3d_330/Conv3D/ReadVariableOp2F
!conv3d_331/BiasAdd/ReadVariableOp!conv3d_331/BiasAdd/ReadVariableOp2D
 conv3d_331/Conv3D/ReadVariableOp conv3d_331/Conv3D/ReadVariableOp2F
!conv3d_332/BiasAdd/ReadVariableOp!conv3d_332/BiasAdd/ReadVariableOp2D
 conv3d_332/Conv3D/ReadVariableOp conv3d_332/Conv3D/ReadVariableOp2F
!conv3d_333/BiasAdd/ReadVariableOp!conv3d_333/BiasAdd/ReadVariableOp2D
 conv3d_333/Conv3D/ReadVariableOp conv3d_333/Conv3D/ReadVariableOp2F
!conv3d_334/BiasAdd/ReadVariableOp!conv3d_334/BiasAdd/ReadVariableOp2D
 conv3d_334/Conv3D/ReadVariableOp conv3d_334/Conv3D/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16870007

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
-__inference_conv3d_333_layer_call_fn_16870142

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
H__inference_conv3d_333_layer_call_and_return_conditional_losses_168686982
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
╓
Е
H__inference_conv3d_334_layer_call_and_return_conditional_losses_16870172

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
╬
Е
H__inference_conv3d_333_layer_call_and_return_conditional_losses_16870153

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
г
є
+__inference_model_70_layer_call_fn_16869483

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
F__inference_model_70_layer_call_and_return_conditional_losses_168690522
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
╬
Е
H__inference_conv3d_331_layer_call_and_return_conditional_losses_16868648

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
H__inference_conv3d_330_layer_call_and_return_conditional_losses_16870093

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
╒3
╛
!__inference__traced_save_16870255
file_prefix0
,savev2_conv3d_326_kernel_read_readvariableop.
*savev2_conv3d_326_bias_read_readvariableop0
,savev2_conv3d_327_kernel_read_readvariableop.
*savev2_conv3d_327_bias_read_readvariableop0
,savev2_conv3d_328_kernel_read_readvariableop.
*savev2_conv3d_328_bias_read_readvariableop0
,savev2_conv3d_329_kernel_read_readvariableop.
*savev2_conv3d_329_bias_read_readvariableop.
*savev2_dense_70_kernel_read_readvariableop,
(savev2_dense_70_bias_read_readvariableop0
,savev2_conv3d_330_kernel_read_readvariableop.
*savev2_conv3d_330_bias_read_readvariableop0
,savev2_conv3d_331_kernel_read_readvariableop.
*savev2_conv3d_331_bias_read_readvariableop0
,savev2_conv3d_332_kernel_read_readvariableop.
*savev2_conv3d_332_bias_read_readvariableop0
,savev2_conv3d_333_kernel_read_readvariableop.
*savev2_conv3d_333_bias_read_readvariableop0
,savev2_conv3d_334_kernel_read_readvariableop.
*savev2_conv3d_334_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_326_kernel_read_readvariableop*savev2_conv3d_326_bias_read_readvariableop,savev2_conv3d_327_kernel_read_readvariableop*savev2_conv3d_327_bias_read_readvariableop,savev2_conv3d_328_kernel_read_readvariableop*savev2_conv3d_328_bias_read_readvariableop,savev2_conv3d_329_kernel_read_readvariableop*savev2_conv3d_329_bias_read_readvariableop*savev2_dense_70_kernel_read_readvariableop(savev2_dense_70_bias_read_readvariableop,savev2_conv3d_330_kernel_read_readvariableop*savev2_conv3d_330_bias_read_readvariableop,savev2_conv3d_331_kernel_read_readvariableop*savev2_conv3d_331_bias_read_readvariableop,savev2_conv3d_332_kernel_read_readvariableop*savev2_conv3d_332_bias_read_readvariableop,savev2_conv3d_333_kernel_read_readvariableop*savev2_conv3d_333_bias_read_readvariableop,savev2_conv3d_334_kernel_read_readvariableop*savev2_conv3d_334_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
╜ё
╡
F__inference_model_70_layer_call_and_return_conditional_losses_16869807

inputsG
)conv3d_326_conv3d_readvariableop_resource: 8
*conv3d_326_biasadd_readvariableop_resource: G
)conv3d_327_conv3d_readvariableop_resource: 8
*conv3d_327_biasadd_readvariableop_resource:G
)conv3d_328_conv3d_readvariableop_resource:8
*conv3d_328_biasadd_readvariableop_resource:G
)conv3d_329_conv3d_readvariableop_resource:8
*conv3d_329_biasadd_readvariableop_resource:9
'dense_70_matmul_readvariableop_resource:@@6
(dense_70_biasadd_readvariableop_resource:@G
)conv3d_330_conv3d_readvariableop_resource:8
*conv3d_330_biasadd_readvariableop_resource:G
)conv3d_331_conv3d_readvariableop_resource:8
*conv3d_331_biasadd_readvariableop_resource:G
)conv3d_332_conv3d_readvariableop_resource:8
*conv3d_332_biasadd_readvariableop_resource:G
)conv3d_333_conv3d_readvariableop_resource:0 8
*conv3d_333_biasadd_readvariableop_resource: G
)conv3d_334_conv3d_readvariableop_resource: 8
*conv3d_334_biasadd_readvariableop_resource:
identityИв!conv3d_326/BiasAdd/ReadVariableOpв conv3d_326/Conv3D/ReadVariableOpв!conv3d_327/BiasAdd/ReadVariableOpв conv3d_327/Conv3D/ReadVariableOpв!conv3d_328/BiasAdd/ReadVariableOpв conv3d_328/Conv3D/ReadVariableOpв!conv3d_329/BiasAdd/ReadVariableOpв conv3d_329/Conv3D/ReadVariableOpв!conv3d_330/BiasAdd/ReadVariableOpв conv3d_330/Conv3D/ReadVariableOpв!conv3d_331/BiasAdd/ReadVariableOpв conv3d_331/Conv3D/ReadVariableOpв!conv3d_332/BiasAdd/ReadVariableOpв conv3d_332/Conv3D/ReadVariableOpв!conv3d_333/BiasAdd/ReadVariableOpв conv3d_333/Conv3D/ReadVariableOpв!conv3d_334/BiasAdd/ReadVariableOpв conv3d_334/Conv3D/ReadVariableOpвdense_70/BiasAdd/ReadVariableOpвdense_70/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_286/strided_slice/stack╣
2tf.__operators__.getitem_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_286/strided_slice/stack_1╣
2tf.__operators__.getitem_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_286/strided_slice/stack_2Т
*tf.__operators__.getitem_286/strided_sliceStridedSliceinputs9tf.__operators__.getitem_286/strided_slice/stack:output:0;tf.__operators__.getitem_286/strided_slice/stack_1:output:0;tf.__operators__.getitem_286/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_286/strided_slice{
range_conversion_70/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_70/sub/y╨
range_conversion_70/subSub3tf.__operators__.getitem_286/strided_slice:output:0"range_conversion_70/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/subГ
range_conversion_70/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_70/truediv/y╚
range_conversion_70/truedivRealDivrange_conversion_70/sub:z:0&range_conversion_70/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/truediv{
range_conversion_70/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_70/mul/y╝
range_conversion_70/mulMulrange_conversion_70/truediv:z:0"range_conversion_70/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/mul{
range_conversion_70/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_70/add/y║
range_conversion_70/addAddV2range_conversion_70/mul:z:0"range_conversion_70/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_70/add╡
0tf.__operators__.getitem_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_287/strided_slice/stack╣
2tf.__operators__.getitem_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_287/strided_slice/stack_1╣
2tf.__operators__.getitem_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_287/strided_slice/stack_2Т
*tf.__operators__.getitem_287/strided_sliceStridedSliceinputs9tf.__operators__.getitem_287/strided_slice/stack:output:0;tf.__operators__.getitem_287/strided_slice/stack_1:output:0;tf.__operators__.getitem_287/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_287/strided_slicex
tf.concat_355/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_355/concat/axisї
tf.concat_355/concatConcatV2range_conversion_70/add:z:03tf.__operators__.getitem_287/strided_slice:output:0"tf.concat_355/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_355/concat║
 conv3d_326/Conv3D/ReadVariableOpReadVariableOp)conv3d_326_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_326/Conv3D/ReadVariableOp°
conv3d_326/Conv3DConv3Dtf.concat_355/concat:output:0(conv3d_326/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_326/Conv3Dн
!conv3d_326/BiasAdd/ReadVariableOpReadVariableOp*conv3d_326_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_326/BiasAdd/ReadVariableOp╧
conv3d_326/BiasAddBiasAddconv3d_326/Conv3D:output:0)conv3d_326/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_326/BiasAddС
conv3d_326/SoftplusSoftplusconv3d_326/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_326/Softplusй
$average_pooling3d_128/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_128/transpose/perm▀
average_pooling3d_128/transpose	Transpose!conv3d_326/Softplus:activations:0-average_pooling3d_128/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_128/transposeЁ
average_pooling3d_128/AvgPool3D	AvgPool3D#average_pooling3d_128/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_128/AvgPool3Dн
&average_pooling3d_128/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_128/transpose_1/permь
!average_pooling3d_128/transpose_1	Transpose(average_pooling3d_128/AvgPool3D:output:0/average_pooling3d_128/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_128/transpose_1║
 conv3d_327/Conv3D/ReadVariableOpReadVariableOp)conv3d_327_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_327/Conv3D/ReadVariableOpА
conv3d_327/Conv3DConv3D%average_pooling3d_128/transpose_1:y:0(conv3d_327/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_327/Conv3Dн
!conv3d_327/BiasAdd/ReadVariableOpReadVariableOp*conv3d_327_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_327/BiasAdd/ReadVariableOp╧
conv3d_327/BiasAddBiasAddconv3d_327/Conv3D:output:0)conv3d_327/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_327/BiasAddС
conv3d_327/SoftplusSoftplusconv3d_327/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_327/Softplusй
$average_pooling3d_129/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_129/transpose/perm▀
average_pooling3d_129/transpose	Transpose!conv3d_327/Softplus:activations:0-average_pooling3d_129/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_129/transposeЁ
average_pooling3d_129/AvgPool3D	AvgPool3D#average_pooling3d_129/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_129/AvgPool3Dн
&average_pooling3d_129/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_129/transpose_1/permь
!average_pooling3d_129/transpose_1	Transpose(average_pooling3d_129/AvgPool3D:output:0/average_pooling3d_129/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_129/transpose_1║
 conv3d_328/Conv3D/ReadVariableOpReadVariableOp)conv3d_328_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_328/Conv3D/ReadVariableOpА
conv3d_328/Conv3DConv3D%average_pooling3d_129/transpose_1:y:0(conv3d_328/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_328/Conv3Dн
!conv3d_328/BiasAdd/ReadVariableOpReadVariableOp*conv3d_328_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_328/BiasAdd/ReadVariableOp╧
conv3d_328/BiasAddBiasAddconv3d_328/Conv3D:output:0)conv3d_328/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_328/BiasAddС
conv3d_328/SoftplusSoftplusconv3d_328/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_328/Softplusй
$average_pooling3d_130/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_130/transpose/perm▀
average_pooling3d_130/transpose	Transpose!conv3d_328/Softplus:activations:0-average_pooling3d_130/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_130/transposeЁ
average_pooling3d_130/AvgPool3D	AvgPool3D#average_pooling3d_130/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_130/AvgPool3Dн
&average_pooling3d_130/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_130/transpose_1/permь
!average_pooling3d_130/transpose_1	Transpose(average_pooling3d_130/AvgPool3D:output:0/average_pooling3d_130/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_130/transpose_1║
 conv3d_329/Conv3D/ReadVariableOpReadVariableOp)conv3d_329_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_329/Conv3D/ReadVariableOpА
conv3d_329/Conv3DConv3D%average_pooling3d_130/transpose_1:y:0(conv3d_329/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_329/Conv3Dн
!conv3d_329/BiasAdd/ReadVariableOpReadVariableOp*conv3d_329_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_329/BiasAdd/ReadVariableOp╧
conv3d_329/BiasAddBiasAddconv3d_329/Conv3D:output:0)conv3d_329/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_329/BiasAddС
conv3d_329/SoftplusSoftplusconv3d_329/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_329/Softplusй
$average_pooling3d_131/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_131/transpose/perm▀
average_pooling3d_131/transpose	Transpose!conv3d_329/Softplus:activations:0-average_pooling3d_131/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_131/transposeЁ
average_pooling3d_131/AvgPool3D	AvgPool3D#average_pooling3d_131/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_131/AvgPool3Dн
&average_pooling3d_131/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_131/transpose_1/permь
!average_pooling3d_131/transpose_1	Transpose(average_pooling3d_131/AvgPool3D:output:0/average_pooling3d_131/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_131/transpose_1{
reshape_140/ShapeShape%average_pooling3d_131/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_140/ShapeМ
reshape_140/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_140/strided_slice/stackР
!reshape_140/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_140/strided_slice/stack_1Р
!reshape_140/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_140/strided_slice/stack_2к
reshape_140/strided_sliceStridedSlicereshape_140/Shape:output:0(reshape_140/strided_slice/stack:output:0*reshape_140/strided_slice/stack_1:output:0*reshape_140/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_140/strided_slice|
reshape_140/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_140/Reshape/shape/1╢
reshape_140/Reshape/shapePack"reshape_140/strided_slice:output:0$reshape_140/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_140/Reshape/shape▓
reshape_140/ReshapeReshape%average_pooling3d_131/transpose_1:y:0"reshape_140/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_140/Reshapeи
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_70/MatMul/ReadVariableOpд
dense_70/MatMulMatMulreshape_140/Reshape:output:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_70/MatMulз
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_70/BiasAdd/ReadVariableOpе
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_70/BiasAdd
dense_70/SoftplusSoftplusdense_70/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_70/Softplusu
reshape_141/ShapeShapedense_70/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_141/ShapeМ
reshape_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_141/strided_slice/stackР
!reshape_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_141/strided_slice/stack_1Р
!reshape_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_141/strided_slice/stack_2к
reshape_141/strided_sliceStridedSlicereshape_141/Shape:output:0(reshape_141/strided_slice/stack:output:0*reshape_141/strided_slice/stack_1:output:0*reshape_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_141/strided_slice|
reshape_141/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/1|
reshape_141/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/2|
reshape_141/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/3|
reshape_141/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_141/Reshape/shape/4и
reshape_141/Reshape/shapePack"reshape_141/strided_slice:output:0$reshape_141/Reshape/shape/1:output:0$reshape_141/Reshape/shape/2:output:0$reshape_141/Reshape/shape/3:output:0$reshape_141/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_141/Reshape/shape╕
reshape_141/ReshapeReshapedense_70/Softplus:activations:0"reshape_141/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_141/Reshapeе
tf.reshape_424/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_424/Reshape/shape╩
tf.reshape_424/ReshapeReshapereshape_141/Reshape:output:0%tf.reshape_424/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_424/Reshapeб
tf.tile_212/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_212/Tile/multiples╝
tf.tile_212/TileTiletf.reshape_424/Reshape:output:0#tf.tile_212/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_212/TileЩ
tf.reshape_425/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_425/Reshape/shape╗
tf.reshape_425/ReshapeReshapetf.tile_212/Tile:output:0%tf.reshape_425/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_425/Reshapex
tf.concat_356/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_356/concat/axisч
tf.concat_356/concatConcatV2tf.reshape_425/Reshape:output:0!conv3d_329/Softplus:activations:0"tf.concat_356/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_356/concat║
 conv3d_330/Conv3D/ReadVariableOpReadVariableOp)conv3d_330_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_330/Conv3D/ReadVariableOp°
conv3d_330/Conv3DConv3Dtf.concat_356/concat:output:0(conv3d_330/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_330/Conv3Dн
!conv3d_330/BiasAdd/ReadVariableOpReadVariableOp*conv3d_330_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_330/BiasAdd/ReadVariableOp╧
conv3d_330/BiasAddBiasAddconv3d_330/Conv3D:output:0)conv3d_330/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_330/BiasAddС
conv3d_330/SoftplusSoftplusconv3d_330/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_330/Softplusе
tf.reshape_426/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_426/Reshape/shape╧
tf.reshape_426/ReshapeReshape!conv3d_330/Softplus:activations:0%tf.reshape_426/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_426/Reshapeб
tf.tile_213/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_213/Tile/multiples╝
tf.tile_213/TileTiletf.reshape_426/Reshape:output:0#tf.tile_213/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_213/TileЩ
tf.reshape_427/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_427/Reshape/shape╗
tf.reshape_427/ReshapeReshapetf.tile_213/Tile:output:0%tf.reshape_427/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_427/Reshapex
tf.concat_357/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_357/concat/axisч
tf.concat_357/concatConcatV2tf.reshape_427/Reshape:output:0!conv3d_328/Softplus:activations:0"tf.concat_357/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_357/concat║
 conv3d_331/Conv3D/ReadVariableOpReadVariableOp)conv3d_331_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_331/Conv3D/ReadVariableOp°
conv3d_331/Conv3DConv3Dtf.concat_357/concat:output:0(conv3d_331/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_331/Conv3Dн
!conv3d_331/BiasAdd/ReadVariableOpReadVariableOp*conv3d_331_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_331/BiasAdd/ReadVariableOp╧
conv3d_331/BiasAddBiasAddconv3d_331/Conv3D:output:0)conv3d_331/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_331/BiasAddС
conv3d_331/SoftplusSoftplusconv3d_331/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_331/Softplusе
tf.reshape_428/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_428/Reshape/shape╧
tf.reshape_428/ReshapeReshape!conv3d_331/Softplus:activations:0%tf.reshape_428/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_428/Reshapeб
tf.tile_214/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_214/Tile/multiples╝
tf.tile_214/TileTiletf.reshape_428/Reshape:output:0#tf.tile_214/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_214/TileЩ
tf.reshape_429/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_429/Reshape/shape╗
tf.reshape_429/ReshapeReshapetf.tile_214/Tile:output:0%tf.reshape_429/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_429/Reshapex
tf.concat_358/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_358/concat/axisч
tf.concat_358/concatConcatV2tf.reshape_429/Reshape:output:0!conv3d_327/Softplus:activations:0"tf.concat_358/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_358/concat║
 conv3d_332/Conv3D/ReadVariableOpReadVariableOp)conv3d_332_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_332/Conv3D/ReadVariableOp°
conv3d_332/Conv3DConv3Dtf.concat_358/concat:output:0(conv3d_332/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_332/Conv3Dн
!conv3d_332/BiasAdd/ReadVariableOpReadVariableOp*conv3d_332_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_332/BiasAdd/ReadVariableOp╧
conv3d_332/BiasAddBiasAddconv3d_332/Conv3D:output:0)conv3d_332/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_332/BiasAddС
conv3d_332/SoftplusSoftplusconv3d_332/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_332/Softplusе
tf.reshape_430/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_430/Reshape/shape╧
tf.reshape_430/ReshapeReshape!conv3d_332/Softplus:activations:0%tf.reshape_430/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_430/Reshapeб
tf.tile_215/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_215/Tile/multiples╝
tf.tile_215/TileTiletf.reshape_430/Reshape:output:0#tf.tile_215/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_215/TileЩ
tf.reshape_431/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_431/Reshape/shape╗
tf.reshape_431/ReshapeReshapetf.tile_215/Tile:output:0%tf.reshape_431/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_431/Reshapex
tf.concat_359/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_359/concat/axisч
tf.concat_359/concatConcatV2tf.reshape_431/Reshape:output:0!conv3d_326/Softplus:activations:0"tf.concat_359/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_359/concat║
 conv3d_333/Conv3D/ReadVariableOpReadVariableOp)conv3d_333_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_333/Conv3D/ReadVariableOp°
conv3d_333/Conv3DConv3Dtf.concat_359/concat:output:0(conv3d_333/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_333/Conv3Dн
!conv3d_333/BiasAdd/ReadVariableOpReadVariableOp*conv3d_333_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_333/BiasAdd/ReadVariableOp╧
conv3d_333/BiasAddBiasAddconv3d_333/Conv3D:output:0)conv3d_333/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_333/BiasAddС
conv3d_333/SoftplusSoftplusconv3d_333/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_333/Softplus║
 conv3d_334/Conv3D/ReadVariableOpReadVariableOp)conv3d_334_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_334/Conv3D/ReadVariableOp№
conv3d_334/Conv3DConv3D!conv3d_333/Softplus:activations:0(conv3d_334/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_334/Conv3Dн
!conv3d_334/BiasAdd/ReadVariableOpReadVariableOp*conv3d_334_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_334/BiasAdd/ReadVariableOp╧
conv3d_334/BiasAddBiasAddconv3d_334/Conv3D:output:0)conv3d_334/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_334/BiasAddВ
IdentityIdentityconv3d_334/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_326/BiasAdd/ReadVariableOp!^conv3d_326/Conv3D/ReadVariableOp"^conv3d_327/BiasAdd/ReadVariableOp!^conv3d_327/Conv3D/ReadVariableOp"^conv3d_328/BiasAdd/ReadVariableOp!^conv3d_328/Conv3D/ReadVariableOp"^conv3d_329/BiasAdd/ReadVariableOp!^conv3d_329/Conv3D/ReadVariableOp"^conv3d_330/BiasAdd/ReadVariableOp!^conv3d_330/Conv3D/ReadVariableOp"^conv3d_331/BiasAdd/ReadVariableOp!^conv3d_331/Conv3D/ReadVariableOp"^conv3d_332/BiasAdd/ReadVariableOp!^conv3d_332/Conv3D/ReadVariableOp"^conv3d_333/BiasAdd/ReadVariableOp!^conv3d_333/Conv3D/ReadVariableOp"^conv3d_334/BiasAdd/ReadVariableOp!^conv3d_334/Conv3D/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_326/BiasAdd/ReadVariableOp!conv3d_326/BiasAdd/ReadVariableOp2D
 conv3d_326/Conv3D/ReadVariableOp conv3d_326/Conv3D/ReadVariableOp2F
!conv3d_327/BiasAdd/ReadVariableOp!conv3d_327/BiasAdd/ReadVariableOp2D
 conv3d_327/Conv3D/ReadVariableOp conv3d_327/Conv3D/ReadVariableOp2F
!conv3d_328/BiasAdd/ReadVariableOp!conv3d_328/BiasAdd/ReadVariableOp2D
 conv3d_328/Conv3D/ReadVariableOp conv3d_328/Conv3D/ReadVariableOp2F
!conv3d_329/BiasAdd/ReadVariableOp!conv3d_329/BiasAdd/ReadVariableOp2D
 conv3d_329/Conv3D/ReadVariableOp conv3d_329/Conv3D/ReadVariableOp2F
!conv3d_330/BiasAdd/ReadVariableOp!conv3d_330/BiasAdd/ReadVariableOp2D
 conv3d_330/Conv3D/ReadVariableOp conv3d_330/Conv3D/ReadVariableOp2F
!conv3d_331/BiasAdd/ReadVariableOp!conv3d_331/BiasAdd/ReadVariableOp2D
 conv3d_331/Conv3D/ReadVariableOp conv3d_331/Conv3D/ReadVariableOp2F
!conv3d_332/BiasAdd/ReadVariableOp!conv3d_332/BiasAdd/ReadVariableOp2D
 conv3d_332/Conv3D/ReadVariableOp conv3d_332/Conv3D/ReadVariableOp2F
!conv3d_333/BiasAdd/ReadVariableOp!conv3d_333/BiasAdd/ReadVariableOp2D
 conv3d_333/Conv3D/ReadVariableOp conv3d_333/Conv3D/ReadVariableOp2F
!conv3d_334/BiasAdd/ReadVariableOp!conv3d_334/BiasAdd/ReadVariableOp2D
 conv3d_334/Conv3D/ReadVariableOp conv3d_334/Conv3D/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16869920

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
8__inference_average_pooling3d_130_layer_call_fn_16869945

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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_168683702
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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_16869940

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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_16869988

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
H__inference_conv3d_332_layer_call_and_return_conditional_losses_16870133

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
Х
T
8__inference_average_pooling3d_131_layer_call_fn_16869998

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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_168685542
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
╓
Е
H__inference_conv3d_334_layer_call_and_return_conditional_losses_16868714

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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16868310

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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16869968

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
╬
Е
H__inference_conv3d_332_layer_call_and_return_conditional_losses_16868673

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
х

o
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16869959

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
щ
J
.__inference_reshape_141_layer_call_fn_16870058

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
I__inference_reshape_141_layer_call_and_return_conditional_losses_168686022
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
М	
o
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16868473

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
╬
Е
H__inference_conv3d_333_layer_call_and_return_conditional_losses_16868698

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
щ
J
.__inference_reshape_140_layer_call_fn_16870021

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
I__inference_reshape_140_layer_call_and_return_conditional_losses_168685682
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
ж
T
8__inference_average_pooling3d_128_layer_call_fn_16869849

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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_168683102
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
-__inference_conv3d_330_layer_call_fn_16870082

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
H__inference_conv3d_330_layer_call_and_return_conditional_losses_168686232
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
¤Т
а

F__inference_model_70_layer_call_and_return_conditional_losses_16869346	
input1
conv3d_326_16869257: !
conv3d_326_16869259: 1
conv3d_327_16869263: !
conv3d_327_16869265:1
conv3d_328_16869269:!
conv3d_328_16869271:1
conv3d_329_16869275:!
conv3d_329_16869277:#
dense_70_16869282:@@
dense_70_16869284:@1
conv3d_330_16869296:!
conv3d_330_16869298:1
conv3d_331_16869309:!
conv3d_331_16869311:1
conv3d_332_16869322:!
conv3d_332_16869324:1
conv3d_333_16869335:0 !
conv3d_333_16869337: 1
conv3d_334_16869340: !
conv3d_334_16869342:
identityИв"conv3d_326/StatefulPartitionedCallв"conv3d_327/StatefulPartitionedCallв"conv3d_328/StatefulPartitionedCallв"conv3d_329/StatefulPartitionedCallв"conv3d_330/StatefulPartitionedCallв"conv3d_331/StatefulPartitionedCallв"conv3d_332/StatefulPartitionedCallв"conv3d_333/StatefulPartitionedCallв"conv3d_334/StatefulPartitionedCallв dense_70/StatefulPartitionedCall╡
0tf.__operators__.getitem_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_286/strided_slice/stack╣
2tf.__operators__.getitem_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_286/strided_slice/stack_1╣
2tf.__operators__.getitem_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_286/strided_slice/stack_2С
*tf.__operators__.getitem_286/strided_sliceStridedSliceinput9tf.__operators__.getitem_286/strided_slice/stack:output:0;tf.__operators__.getitem_286/strided_slice/stack_1:output:0;tf.__operators__.getitem_286/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_286/strided_slice╗
#range_conversion_70/PartitionedCallPartitionedCall3tf.__operators__.getitem_286/strided_slice:output:0*
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
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_168684402%
#range_conversion_70/PartitionedCall╡
0tf.__operators__.getitem_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_287/strided_slice/stack╣
2tf.__operators__.getitem_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_287/strided_slice/stack_1╣
2tf.__operators__.getitem_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_287/strided_slice/stack_2С
*tf.__operators__.getitem_287/strided_sliceStridedSliceinput9tf.__operators__.getitem_287/strided_slice/stack:output:0;tf.__operators__.getitem_287/strided_slice/stack_1:output:0;tf.__operators__.getitem_287/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_287/strided_slicex
tf.concat_355/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_355/concat/axisЖ
tf.concat_355/concatConcatV2,range_conversion_70/PartitionedCall:output:03tf.__operators__.getitem_287/strided_slice:output:0"tf.concat_355/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_355/concat╥
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCalltf.concat_355/concat:output:0conv3d_326_16869257conv3d_326_16869259*
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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_168684592$
"conv3d_326/StatefulPartitionedCall╣
%average_pooling3d_128/PartitionedCallPartitionedCall+conv3d_326/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_168684732'
%average_pooling3d_128/PartitionedCallу
"conv3d_327/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_128/PartitionedCall:output:0conv3d_327_16869263conv3d_327_16869265*
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
H__inference_conv3d_327_layer_call_and_return_conditional_losses_168684862$
"conv3d_327/StatefulPartitionedCall╣
%average_pooling3d_129/PartitionedCallPartitionedCall+conv3d_327/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_168685002'
%average_pooling3d_129/PartitionedCallу
"conv3d_328/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_129/PartitionedCall:output:0conv3d_328_16869269conv3d_328_16869271*
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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_168685132$
"conv3d_328/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_328/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_168685272'
%average_pooling3d_130/PartitionedCallу
"conv3d_329/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_329_16869275conv3d_329_16869277*
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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_168685402$
"conv3d_329/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_329/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_168685542'
%average_pooling3d_131/PartitionedCallТ
reshape_140/PartitionedCallPartitionedCall.average_pooling3d_131/PartitionedCall:output:0*
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
I__inference_reshape_140_layer_call_and_return_conditional_losses_168685682
reshape_140/PartitionedCall├
 dense_70/StatefulPartitionedCallStatefulPartitionedCall$reshape_140/PartitionedCall:output:0dense_70_16869282dense_70_16869284*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_168685812"
 dense_70/StatefulPartitionedCallЩ
reshape_141/PartitionedCallPartitionedCall)dense_70/StatefulPartitionedCall:output:0*
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
I__inference_reshape_141_layer_call_and_return_conditional_losses_168686022
reshape_141/PartitionedCallе
tf.reshape_424/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_424/Reshape/shape╥
tf.reshape_424/ReshapeReshape$reshape_141/PartitionedCall:output:0%tf.reshape_424/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_424/Reshapeб
tf.tile_212/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_212/Tile/multiples╝
tf.tile_212/TileTiletf.reshape_424/Reshape:output:0#tf.tile_212/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_212/TileЩ
tf.reshape_425/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_425/Reshape/shape╗
tf.reshape_425/ReshapeReshapetf.tile_212/Tile:output:0%tf.reshape_425/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_425/Reshapex
tf.concat_356/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_356/concat/axisё
tf.concat_356/concatConcatV2tf.reshape_425/Reshape:output:0+conv3d_329/StatefulPartitionedCall:output:0"tf.concat_356/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_356/concat╥
"conv3d_330/StatefulPartitionedCallStatefulPartitionedCalltf.concat_356/concat:output:0conv3d_330_16869296conv3d_330_16869298*
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
H__inference_conv3d_330_layer_call_and_return_conditional_losses_168686232$
"conv3d_330/StatefulPartitionedCallе
tf.reshape_426/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_426/Reshape/shape┘
tf.reshape_426/ReshapeReshape+conv3d_330/StatefulPartitionedCall:output:0%tf.reshape_426/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_426/Reshapeб
tf.tile_213/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_213/Tile/multiples╝
tf.tile_213/TileTiletf.reshape_426/Reshape:output:0#tf.tile_213/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_213/TileЩ
tf.reshape_427/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_427/Reshape/shape╗
tf.reshape_427/ReshapeReshapetf.tile_213/Tile:output:0%tf.reshape_427/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_427/Reshapex
tf.concat_357/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_357/concat/axisё
tf.concat_357/concatConcatV2tf.reshape_427/Reshape:output:0+conv3d_328/StatefulPartitionedCall:output:0"tf.concat_357/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_357/concat╥
"conv3d_331/StatefulPartitionedCallStatefulPartitionedCalltf.concat_357/concat:output:0conv3d_331_16869309conv3d_331_16869311*
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
H__inference_conv3d_331_layer_call_and_return_conditional_losses_168686482$
"conv3d_331/StatefulPartitionedCallе
tf.reshape_428/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_428/Reshape/shape┘
tf.reshape_428/ReshapeReshape+conv3d_331/StatefulPartitionedCall:output:0%tf.reshape_428/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_428/Reshapeб
tf.tile_214/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_214/Tile/multiples╝
tf.tile_214/TileTiletf.reshape_428/Reshape:output:0#tf.tile_214/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_214/TileЩ
tf.reshape_429/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_429/Reshape/shape╗
tf.reshape_429/ReshapeReshapetf.tile_214/Tile:output:0%tf.reshape_429/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_429/Reshapex
tf.concat_358/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_358/concat/axisё
tf.concat_358/concatConcatV2tf.reshape_429/Reshape:output:0+conv3d_327/StatefulPartitionedCall:output:0"tf.concat_358/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_358/concat╥
"conv3d_332/StatefulPartitionedCallStatefulPartitionedCalltf.concat_358/concat:output:0conv3d_332_16869322conv3d_332_16869324*
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
H__inference_conv3d_332_layer_call_and_return_conditional_losses_168686732$
"conv3d_332/StatefulPartitionedCallе
tf.reshape_430/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_430/Reshape/shape┘
tf.reshape_430/ReshapeReshape+conv3d_332/StatefulPartitionedCall:output:0%tf.reshape_430/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_430/Reshapeб
tf.tile_215/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_215/Tile/multiples╝
tf.tile_215/TileTiletf.reshape_430/Reshape:output:0#tf.tile_215/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_215/TileЩ
tf.reshape_431/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_431/Reshape/shape╗
tf.reshape_431/ReshapeReshapetf.tile_215/Tile:output:0%tf.reshape_431/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_431/Reshapex
tf.concat_359/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_359/concat/axisё
tf.concat_359/concatConcatV2tf.reshape_431/Reshape:output:0+conv3d_326/StatefulPartitionedCall:output:0"tf.concat_359/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_359/concat╥
"conv3d_333/StatefulPartitionedCallStatefulPartitionedCalltf.concat_359/concat:output:0conv3d_333_16869335conv3d_333_16869337*
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
H__inference_conv3d_333_layer_call_and_return_conditional_losses_168686982$
"conv3d_333/StatefulPartitionedCallр
"conv3d_334/StatefulPartitionedCallStatefulPartitionedCall+conv3d_333/StatefulPartitionedCall:output:0conv3d_334_16869340conv3d_334_16869342*
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
H__inference_conv3d_334_layer_call_and_return_conditional_losses_168687142$
"conv3d_334/StatefulPartitionedCallТ
IdentityIdentity+conv3d_334/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_326/StatefulPartitionedCall#^conv3d_327/StatefulPartitionedCall#^conv3d_328/StatefulPartitionedCall#^conv3d_329/StatefulPartitionedCall#^conv3d_330/StatefulPartitionedCall#^conv3d_331/StatefulPartitionedCall#^conv3d_332/StatefulPartitionedCall#^conv3d_333/StatefulPartitionedCall#^conv3d_334/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2H
"conv3d_327/StatefulPartitionedCall"conv3d_327/StatefulPartitionedCall2H
"conv3d_328/StatefulPartitionedCall"conv3d_328/StatefulPartitionedCall2H
"conv3d_329/StatefulPartitionedCall"conv3d_329/StatefulPartitionedCall2H
"conv3d_330/StatefulPartitionedCall"conv3d_330/StatefulPartitionedCall2H
"conv3d_331/StatefulPartitionedCall"conv3d_331/StatefulPartitionedCall2H
"conv3d_332/StatefulPartitionedCall"conv3d_332/StatefulPartitionedCall2H
"conv3d_333/StatefulPartitionedCall"conv3d_333/StatefulPartitionedCall2H
"conv3d_334/StatefulPartitionedCall"conv3d_334/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
х

o
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16869911

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
F__inference_dense_70_layer_call_and_return_conditional_losses_16868581

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
М	
o
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16868527

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

F__inference_model_70_layer_call_and_return_conditional_losses_16868721

inputs1
conv3d_326_16868460: !
conv3d_326_16868462: 1
conv3d_327_16868487: !
conv3d_327_16868489:1
conv3d_328_16868514:!
conv3d_328_16868516:1
conv3d_329_16868541:!
conv3d_329_16868543:#
dense_70_16868582:@@
dense_70_16868584:@1
conv3d_330_16868624:!
conv3d_330_16868626:1
conv3d_331_16868649:!
conv3d_331_16868651:1
conv3d_332_16868674:!
conv3d_332_16868676:1
conv3d_333_16868699:0 !
conv3d_333_16868701: 1
conv3d_334_16868715: !
conv3d_334_16868717:
identityИв"conv3d_326/StatefulPartitionedCallв"conv3d_327/StatefulPartitionedCallв"conv3d_328/StatefulPartitionedCallв"conv3d_329/StatefulPartitionedCallв"conv3d_330/StatefulPartitionedCallв"conv3d_331/StatefulPartitionedCallв"conv3d_332/StatefulPartitionedCallв"conv3d_333/StatefulPartitionedCallв"conv3d_334/StatefulPartitionedCallв dense_70/StatefulPartitionedCall╡
0tf.__operators__.getitem_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_286/strided_slice/stack╣
2tf.__operators__.getitem_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_286/strided_slice/stack_1╣
2tf.__operators__.getitem_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_286/strided_slice/stack_2Т
*tf.__operators__.getitem_286/strided_sliceStridedSliceinputs9tf.__operators__.getitem_286/strided_slice/stack:output:0;tf.__operators__.getitem_286/strided_slice/stack_1:output:0;tf.__operators__.getitem_286/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_286/strided_slice╗
#range_conversion_70/PartitionedCallPartitionedCall3tf.__operators__.getitem_286/strided_slice:output:0*
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
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_168684402%
#range_conversion_70/PartitionedCall╡
0tf.__operators__.getitem_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_287/strided_slice/stack╣
2tf.__operators__.getitem_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_287/strided_slice/stack_1╣
2tf.__operators__.getitem_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_287/strided_slice/stack_2Т
*tf.__operators__.getitem_287/strided_sliceStridedSliceinputs9tf.__operators__.getitem_287/strided_slice/stack:output:0;tf.__operators__.getitem_287/strided_slice/stack_1:output:0;tf.__operators__.getitem_287/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_287/strided_slicex
tf.concat_355/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_355/concat/axisЖ
tf.concat_355/concatConcatV2,range_conversion_70/PartitionedCall:output:03tf.__operators__.getitem_287/strided_slice:output:0"tf.concat_355/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_355/concat╥
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCalltf.concat_355/concat:output:0conv3d_326_16868460conv3d_326_16868462*
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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_168684592$
"conv3d_326/StatefulPartitionedCall╣
%average_pooling3d_128/PartitionedCallPartitionedCall+conv3d_326/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_168684732'
%average_pooling3d_128/PartitionedCallу
"conv3d_327/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_128/PartitionedCall:output:0conv3d_327_16868487conv3d_327_16868489*
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
H__inference_conv3d_327_layer_call_and_return_conditional_losses_168684862$
"conv3d_327/StatefulPartitionedCall╣
%average_pooling3d_129/PartitionedCallPartitionedCall+conv3d_327/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_168685002'
%average_pooling3d_129/PartitionedCallу
"conv3d_328/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_129/PartitionedCall:output:0conv3d_328_16868514conv3d_328_16868516*
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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_168685132$
"conv3d_328/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_328/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_168685272'
%average_pooling3d_130/PartitionedCallу
"conv3d_329/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_329_16868541conv3d_329_16868543*
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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_168685402$
"conv3d_329/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_329/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_168685542'
%average_pooling3d_131/PartitionedCallТ
reshape_140/PartitionedCallPartitionedCall.average_pooling3d_131/PartitionedCall:output:0*
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
I__inference_reshape_140_layer_call_and_return_conditional_losses_168685682
reshape_140/PartitionedCall├
 dense_70/StatefulPartitionedCallStatefulPartitionedCall$reshape_140/PartitionedCall:output:0dense_70_16868582dense_70_16868584*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_168685812"
 dense_70/StatefulPartitionedCallЩ
reshape_141/PartitionedCallPartitionedCall)dense_70/StatefulPartitionedCall:output:0*
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
I__inference_reshape_141_layer_call_and_return_conditional_losses_168686022
reshape_141/PartitionedCallе
tf.reshape_424/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_424/Reshape/shape╥
tf.reshape_424/ReshapeReshape$reshape_141/PartitionedCall:output:0%tf.reshape_424/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_424/Reshapeб
tf.tile_212/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_212/Tile/multiples╝
tf.tile_212/TileTiletf.reshape_424/Reshape:output:0#tf.tile_212/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_212/TileЩ
tf.reshape_425/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_425/Reshape/shape╗
tf.reshape_425/ReshapeReshapetf.tile_212/Tile:output:0%tf.reshape_425/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_425/Reshapex
tf.concat_356/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_356/concat/axisё
tf.concat_356/concatConcatV2tf.reshape_425/Reshape:output:0+conv3d_329/StatefulPartitionedCall:output:0"tf.concat_356/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_356/concat╥
"conv3d_330/StatefulPartitionedCallStatefulPartitionedCalltf.concat_356/concat:output:0conv3d_330_16868624conv3d_330_16868626*
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
H__inference_conv3d_330_layer_call_and_return_conditional_losses_168686232$
"conv3d_330/StatefulPartitionedCallе
tf.reshape_426/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_426/Reshape/shape┘
tf.reshape_426/ReshapeReshape+conv3d_330/StatefulPartitionedCall:output:0%tf.reshape_426/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_426/Reshapeб
tf.tile_213/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_213/Tile/multiples╝
tf.tile_213/TileTiletf.reshape_426/Reshape:output:0#tf.tile_213/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_213/TileЩ
tf.reshape_427/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_427/Reshape/shape╗
tf.reshape_427/ReshapeReshapetf.tile_213/Tile:output:0%tf.reshape_427/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_427/Reshapex
tf.concat_357/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_357/concat/axisё
tf.concat_357/concatConcatV2tf.reshape_427/Reshape:output:0+conv3d_328/StatefulPartitionedCall:output:0"tf.concat_357/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_357/concat╥
"conv3d_331/StatefulPartitionedCallStatefulPartitionedCalltf.concat_357/concat:output:0conv3d_331_16868649conv3d_331_16868651*
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
H__inference_conv3d_331_layer_call_and_return_conditional_losses_168686482$
"conv3d_331/StatefulPartitionedCallе
tf.reshape_428/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_428/Reshape/shape┘
tf.reshape_428/ReshapeReshape+conv3d_331/StatefulPartitionedCall:output:0%tf.reshape_428/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_428/Reshapeб
tf.tile_214/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_214/Tile/multiples╝
tf.tile_214/TileTiletf.reshape_428/Reshape:output:0#tf.tile_214/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_214/TileЩ
tf.reshape_429/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_429/Reshape/shape╗
tf.reshape_429/ReshapeReshapetf.tile_214/Tile:output:0%tf.reshape_429/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_429/Reshapex
tf.concat_358/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_358/concat/axisё
tf.concat_358/concatConcatV2tf.reshape_429/Reshape:output:0+conv3d_327/StatefulPartitionedCall:output:0"tf.concat_358/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_358/concat╥
"conv3d_332/StatefulPartitionedCallStatefulPartitionedCalltf.concat_358/concat:output:0conv3d_332_16868674conv3d_332_16868676*
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
H__inference_conv3d_332_layer_call_and_return_conditional_losses_168686732$
"conv3d_332/StatefulPartitionedCallе
tf.reshape_430/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_430/Reshape/shape┘
tf.reshape_430/ReshapeReshape+conv3d_332/StatefulPartitionedCall:output:0%tf.reshape_430/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_430/Reshapeб
tf.tile_215/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_215/Tile/multiples╝
tf.tile_215/TileTiletf.reshape_430/Reshape:output:0#tf.tile_215/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_215/TileЩ
tf.reshape_431/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_431/Reshape/shape╗
tf.reshape_431/ReshapeReshapetf.tile_215/Tile:output:0%tf.reshape_431/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_431/Reshapex
tf.concat_359/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_359/concat/axisё
tf.concat_359/concatConcatV2tf.reshape_431/Reshape:output:0+conv3d_326/StatefulPartitionedCall:output:0"tf.concat_359/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_359/concat╥
"conv3d_333/StatefulPartitionedCallStatefulPartitionedCalltf.concat_359/concat:output:0conv3d_333_16868699conv3d_333_16868701*
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
H__inference_conv3d_333_layer_call_and_return_conditional_losses_168686982$
"conv3d_333/StatefulPartitionedCallр
"conv3d_334/StatefulPartitionedCallStatefulPartitionedCall+conv3d_333/StatefulPartitionedCall:output:0conv3d_334_16868715conv3d_334_16868717*
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
H__inference_conv3d_334_layer_call_and_return_conditional_losses_168687142$
"conv3d_334/StatefulPartitionedCallТ
IdentityIdentity+conv3d_334/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_326/StatefulPartitionedCall#^conv3d_327/StatefulPartitionedCall#^conv3d_328/StatefulPartitionedCall#^conv3d_329/StatefulPartitionedCall#^conv3d_330/StatefulPartitionedCall#^conv3d_331/StatefulPartitionedCall#^conv3d_332/StatefulPartitionedCall#^conv3d_333/StatefulPartitionedCall#^conv3d_334/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2H
"conv3d_327/StatefulPartitionedCall"conv3d_327/StatefulPartitionedCall2H
"conv3d_328/StatefulPartitionedCall"conv3d_328/StatefulPartitionedCall2H
"conv3d_329/StatefulPartitionedCall"conv3d_329/StatefulPartitionedCall2H
"conv3d_330/StatefulPartitionedCall"conv3d_330/StatefulPartitionedCall2H
"conv3d_331/StatefulPartitionedCall"conv3d_331/StatefulPartitionedCall2H
"conv3d_332/StatefulPartitionedCall"conv3d_332/StatefulPartitionedCall2H
"conv3d_333/StatefulPartitionedCall"conv3d_333/StatefulPartitionedCall2H
"conv3d_334/StatefulPartitionedCall"conv3d_334/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
ж
T
8__inference_average_pooling3d_129_layer_call_fn_16869897

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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_168683402
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
А
Ш
+__inference_dense_70_layer_call_fn_16870042

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
F__inference_dense_70_layer_call_and_return_conditional_losses_168685812
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
БУ
б

F__inference_model_70_layer_call_and_return_conditional_losses_16869052

inputs1
conv3d_326_16868963: !
conv3d_326_16868965: 1
conv3d_327_16868969: !
conv3d_327_16868971:1
conv3d_328_16868975:!
conv3d_328_16868977:1
conv3d_329_16868981:!
conv3d_329_16868983:#
dense_70_16868988:@@
dense_70_16868990:@1
conv3d_330_16869002:!
conv3d_330_16869004:1
conv3d_331_16869015:!
conv3d_331_16869017:1
conv3d_332_16869028:!
conv3d_332_16869030:1
conv3d_333_16869041:0 !
conv3d_333_16869043: 1
conv3d_334_16869046: !
conv3d_334_16869048:
identityИв"conv3d_326/StatefulPartitionedCallв"conv3d_327/StatefulPartitionedCallв"conv3d_328/StatefulPartitionedCallв"conv3d_329/StatefulPartitionedCallв"conv3d_330/StatefulPartitionedCallв"conv3d_331/StatefulPartitionedCallв"conv3d_332/StatefulPartitionedCallв"conv3d_333/StatefulPartitionedCallв"conv3d_334/StatefulPartitionedCallв dense_70/StatefulPartitionedCall╡
0tf.__operators__.getitem_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_286/strided_slice/stack╣
2tf.__operators__.getitem_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_286/strided_slice/stack_1╣
2tf.__operators__.getitem_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_286/strided_slice/stack_2Т
*tf.__operators__.getitem_286/strided_sliceStridedSliceinputs9tf.__operators__.getitem_286/strided_slice/stack:output:0;tf.__operators__.getitem_286/strided_slice/stack_1:output:0;tf.__operators__.getitem_286/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_286/strided_slice╗
#range_conversion_70/PartitionedCallPartitionedCall3tf.__operators__.getitem_286/strided_slice:output:0*
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
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_168684402%
#range_conversion_70/PartitionedCall╡
0tf.__operators__.getitem_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_287/strided_slice/stack╣
2tf.__operators__.getitem_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_287/strided_slice/stack_1╣
2tf.__operators__.getitem_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_287/strided_slice/stack_2Т
*tf.__operators__.getitem_287/strided_sliceStridedSliceinputs9tf.__operators__.getitem_287/strided_slice/stack:output:0;tf.__operators__.getitem_287/strided_slice/stack_1:output:0;tf.__operators__.getitem_287/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_287/strided_slicex
tf.concat_355/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_355/concat/axisЖ
tf.concat_355/concatConcatV2,range_conversion_70/PartitionedCall:output:03tf.__operators__.getitem_287/strided_slice:output:0"tf.concat_355/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_355/concat╥
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCalltf.concat_355/concat:output:0conv3d_326_16868963conv3d_326_16868965*
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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_168684592$
"conv3d_326/StatefulPartitionedCall╣
%average_pooling3d_128/PartitionedCallPartitionedCall+conv3d_326/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_168684732'
%average_pooling3d_128/PartitionedCallу
"conv3d_327/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_128/PartitionedCall:output:0conv3d_327_16868969conv3d_327_16868971*
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
H__inference_conv3d_327_layer_call_and_return_conditional_losses_168684862$
"conv3d_327/StatefulPartitionedCall╣
%average_pooling3d_129/PartitionedCallPartitionedCall+conv3d_327/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_168685002'
%average_pooling3d_129/PartitionedCallу
"conv3d_328/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_129/PartitionedCall:output:0conv3d_328_16868975conv3d_328_16868977*
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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_168685132$
"conv3d_328/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_328/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_168685272'
%average_pooling3d_130/PartitionedCallу
"conv3d_329/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_329_16868981conv3d_329_16868983*
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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_168685402$
"conv3d_329/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_329/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_168685542'
%average_pooling3d_131/PartitionedCallТ
reshape_140/PartitionedCallPartitionedCall.average_pooling3d_131/PartitionedCall:output:0*
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
I__inference_reshape_140_layer_call_and_return_conditional_losses_168685682
reshape_140/PartitionedCall├
 dense_70/StatefulPartitionedCallStatefulPartitionedCall$reshape_140/PartitionedCall:output:0dense_70_16868988dense_70_16868990*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_168685812"
 dense_70/StatefulPartitionedCallЩ
reshape_141/PartitionedCallPartitionedCall)dense_70/StatefulPartitionedCall:output:0*
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
I__inference_reshape_141_layer_call_and_return_conditional_losses_168686022
reshape_141/PartitionedCallе
tf.reshape_424/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_424/Reshape/shape╥
tf.reshape_424/ReshapeReshape$reshape_141/PartitionedCall:output:0%tf.reshape_424/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_424/Reshapeб
tf.tile_212/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_212/Tile/multiples╝
tf.tile_212/TileTiletf.reshape_424/Reshape:output:0#tf.tile_212/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_212/TileЩ
tf.reshape_425/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_425/Reshape/shape╗
tf.reshape_425/ReshapeReshapetf.tile_212/Tile:output:0%tf.reshape_425/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_425/Reshapex
tf.concat_356/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_356/concat/axisё
tf.concat_356/concatConcatV2tf.reshape_425/Reshape:output:0+conv3d_329/StatefulPartitionedCall:output:0"tf.concat_356/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_356/concat╥
"conv3d_330/StatefulPartitionedCallStatefulPartitionedCalltf.concat_356/concat:output:0conv3d_330_16869002conv3d_330_16869004*
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
H__inference_conv3d_330_layer_call_and_return_conditional_losses_168686232$
"conv3d_330/StatefulPartitionedCallе
tf.reshape_426/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_426/Reshape/shape┘
tf.reshape_426/ReshapeReshape+conv3d_330/StatefulPartitionedCall:output:0%tf.reshape_426/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_426/Reshapeб
tf.tile_213/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_213/Tile/multiples╝
tf.tile_213/TileTiletf.reshape_426/Reshape:output:0#tf.tile_213/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_213/TileЩ
tf.reshape_427/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_427/Reshape/shape╗
tf.reshape_427/ReshapeReshapetf.tile_213/Tile:output:0%tf.reshape_427/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_427/Reshapex
tf.concat_357/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_357/concat/axisё
tf.concat_357/concatConcatV2tf.reshape_427/Reshape:output:0+conv3d_328/StatefulPartitionedCall:output:0"tf.concat_357/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_357/concat╥
"conv3d_331/StatefulPartitionedCallStatefulPartitionedCalltf.concat_357/concat:output:0conv3d_331_16869015conv3d_331_16869017*
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
H__inference_conv3d_331_layer_call_and_return_conditional_losses_168686482$
"conv3d_331/StatefulPartitionedCallе
tf.reshape_428/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_428/Reshape/shape┘
tf.reshape_428/ReshapeReshape+conv3d_331/StatefulPartitionedCall:output:0%tf.reshape_428/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_428/Reshapeб
tf.tile_214/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_214/Tile/multiples╝
tf.tile_214/TileTiletf.reshape_428/Reshape:output:0#tf.tile_214/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_214/TileЩ
tf.reshape_429/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_429/Reshape/shape╗
tf.reshape_429/ReshapeReshapetf.tile_214/Tile:output:0%tf.reshape_429/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_429/Reshapex
tf.concat_358/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_358/concat/axisё
tf.concat_358/concatConcatV2tf.reshape_429/Reshape:output:0+conv3d_327/StatefulPartitionedCall:output:0"tf.concat_358/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_358/concat╥
"conv3d_332/StatefulPartitionedCallStatefulPartitionedCalltf.concat_358/concat:output:0conv3d_332_16869028conv3d_332_16869030*
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
H__inference_conv3d_332_layer_call_and_return_conditional_losses_168686732$
"conv3d_332/StatefulPartitionedCallе
tf.reshape_430/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_430/Reshape/shape┘
tf.reshape_430/ReshapeReshape+conv3d_332/StatefulPartitionedCall:output:0%tf.reshape_430/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_430/Reshapeб
tf.tile_215/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_215/Tile/multiples╝
tf.tile_215/TileTiletf.reshape_430/Reshape:output:0#tf.tile_215/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_215/TileЩ
tf.reshape_431/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_431/Reshape/shape╗
tf.reshape_431/ReshapeReshapetf.tile_215/Tile:output:0%tf.reshape_431/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_431/Reshapex
tf.concat_359/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_359/concat/axisё
tf.concat_359/concatConcatV2tf.reshape_431/Reshape:output:0+conv3d_326/StatefulPartitionedCall:output:0"tf.concat_359/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_359/concat╥
"conv3d_333/StatefulPartitionedCallStatefulPartitionedCalltf.concat_359/concat:output:0conv3d_333_16869041conv3d_333_16869043*
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
H__inference_conv3d_333_layer_call_and_return_conditional_losses_168686982$
"conv3d_333/StatefulPartitionedCallр
"conv3d_334/StatefulPartitionedCallStatefulPartitionedCall+conv3d_333/StatefulPartitionedCall:output:0conv3d_334_16869046conv3d_334_16869048*
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
H__inference_conv3d_334_layer_call_and_return_conditional_losses_168687142$
"conv3d_334/StatefulPartitionedCallТ
IdentityIdentity+conv3d_334/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_326/StatefulPartitionedCall#^conv3d_327/StatefulPartitionedCall#^conv3d_328/StatefulPartitionedCall#^conv3d_329/StatefulPartitionedCall#^conv3d_330/StatefulPartitionedCall#^conv3d_331/StatefulPartitionedCall#^conv3d_332/StatefulPartitionedCall#^conv3d_333/StatefulPartitionedCall#^conv3d_334/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2H
"conv3d_327/StatefulPartitionedCall"conv3d_327/StatefulPartitionedCall2H
"conv3d_328/StatefulPartitionedCall"conv3d_328/StatefulPartitionedCall2H
"conv3d_329/StatefulPartitionedCall"conv3d_329/StatefulPartitionedCall2H
"conv3d_330/StatefulPartitionedCall"conv3d_330/StatefulPartitionedCall2H
"conv3d_331/StatefulPartitionedCall"conv3d_331/StatefulPartitionedCall2H
"conv3d_332/StatefulPartitionedCall"conv3d_332/StatefulPartitionedCall2H
"conv3d_333/StatefulPartitionedCall"conv3d_333/StatefulPartitionedCall2H
"conv3d_334/StatefulPartitionedCall"conv3d_334/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
М	
o
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16869872

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
╬
Е
H__inference_conv3d_330_layer_call_and_return_conditional_losses_16868623

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
-__inference_conv3d_327_layer_call_fn_16869881

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
H__inference_conv3d_327_layer_call_and_return_conditional_losses_168684862
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
°
э
&__inference_signature_wrapper_16869393	
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
#__inference__wrapped_model_168682972
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

F__inference_model_70_layer_call_and_return_conditional_losses_16869243	
input1
conv3d_326_16869154: !
conv3d_326_16869156: 1
conv3d_327_16869160: !
conv3d_327_16869162:1
conv3d_328_16869166:!
conv3d_328_16869168:1
conv3d_329_16869172:!
conv3d_329_16869174:#
dense_70_16869179:@@
dense_70_16869181:@1
conv3d_330_16869193:!
conv3d_330_16869195:1
conv3d_331_16869206:!
conv3d_331_16869208:1
conv3d_332_16869219:!
conv3d_332_16869221:1
conv3d_333_16869232:0 !
conv3d_333_16869234: 1
conv3d_334_16869237: !
conv3d_334_16869239:
identityИв"conv3d_326/StatefulPartitionedCallв"conv3d_327/StatefulPartitionedCallв"conv3d_328/StatefulPartitionedCallв"conv3d_329/StatefulPartitionedCallв"conv3d_330/StatefulPartitionedCallв"conv3d_331/StatefulPartitionedCallв"conv3d_332/StatefulPartitionedCallв"conv3d_333/StatefulPartitionedCallв"conv3d_334/StatefulPartitionedCallв dense_70/StatefulPartitionedCall╡
0tf.__operators__.getitem_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_286/strided_slice/stack╣
2tf.__operators__.getitem_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_286/strided_slice/stack_1╣
2tf.__operators__.getitem_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_286/strided_slice/stack_2С
*tf.__operators__.getitem_286/strided_sliceStridedSliceinput9tf.__operators__.getitem_286/strided_slice/stack:output:0;tf.__operators__.getitem_286/strided_slice/stack_1:output:0;tf.__operators__.getitem_286/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_286/strided_slice╗
#range_conversion_70/PartitionedCallPartitionedCall3tf.__operators__.getitem_286/strided_slice:output:0*
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
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_168684402%
#range_conversion_70/PartitionedCall╡
0tf.__operators__.getitem_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_287/strided_slice/stack╣
2tf.__operators__.getitem_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_287/strided_slice/stack_1╣
2tf.__operators__.getitem_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_287/strided_slice/stack_2С
*tf.__operators__.getitem_287/strided_sliceStridedSliceinput9tf.__operators__.getitem_287/strided_slice/stack:output:0;tf.__operators__.getitem_287/strided_slice/stack_1:output:0;tf.__operators__.getitem_287/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_287/strided_slicex
tf.concat_355/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_355/concat/axisЖ
tf.concat_355/concatConcatV2,range_conversion_70/PartitionedCall:output:03tf.__operators__.getitem_287/strided_slice:output:0"tf.concat_355/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_355/concat╥
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCalltf.concat_355/concat:output:0conv3d_326_16869154conv3d_326_16869156*
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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_168684592$
"conv3d_326/StatefulPartitionedCall╣
%average_pooling3d_128/PartitionedCallPartitionedCall+conv3d_326/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_168684732'
%average_pooling3d_128/PartitionedCallу
"conv3d_327/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_128/PartitionedCall:output:0conv3d_327_16869160conv3d_327_16869162*
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
H__inference_conv3d_327_layer_call_and_return_conditional_losses_168684862$
"conv3d_327/StatefulPartitionedCall╣
%average_pooling3d_129/PartitionedCallPartitionedCall+conv3d_327/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_168685002'
%average_pooling3d_129/PartitionedCallу
"conv3d_328/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_129/PartitionedCall:output:0conv3d_328_16869166conv3d_328_16869168*
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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_168685132$
"conv3d_328/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_328/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_168685272'
%average_pooling3d_130/PartitionedCallу
"conv3d_329/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_329_16869172conv3d_329_16869174*
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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_168685402$
"conv3d_329/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_329/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_168685542'
%average_pooling3d_131/PartitionedCallТ
reshape_140/PartitionedCallPartitionedCall.average_pooling3d_131/PartitionedCall:output:0*
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
I__inference_reshape_140_layer_call_and_return_conditional_losses_168685682
reshape_140/PartitionedCall├
 dense_70/StatefulPartitionedCallStatefulPartitionedCall$reshape_140/PartitionedCall:output:0dense_70_16869179dense_70_16869181*
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
F__inference_dense_70_layer_call_and_return_conditional_losses_168685812"
 dense_70/StatefulPartitionedCallЩ
reshape_141/PartitionedCallPartitionedCall)dense_70/StatefulPartitionedCall:output:0*
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
I__inference_reshape_141_layer_call_and_return_conditional_losses_168686022
reshape_141/PartitionedCallе
tf.reshape_424/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_424/Reshape/shape╥
tf.reshape_424/ReshapeReshape$reshape_141/PartitionedCall:output:0%tf.reshape_424/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_424/Reshapeб
tf.tile_212/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_212/Tile/multiples╝
tf.tile_212/TileTiletf.reshape_424/Reshape:output:0#tf.tile_212/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_212/TileЩ
tf.reshape_425/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_425/Reshape/shape╗
tf.reshape_425/ReshapeReshapetf.tile_212/Tile:output:0%tf.reshape_425/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_425/Reshapex
tf.concat_356/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_356/concat/axisё
tf.concat_356/concatConcatV2tf.reshape_425/Reshape:output:0+conv3d_329/StatefulPartitionedCall:output:0"tf.concat_356/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_356/concat╥
"conv3d_330/StatefulPartitionedCallStatefulPartitionedCalltf.concat_356/concat:output:0conv3d_330_16869193conv3d_330_16869195*
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
H__inference_conv3d_330_layer_call_and_return_conditional_losses_168686232$
"conv3d_330/StatefulPartitionedCallе
tf.reshape_426/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_426/Reshape/shape┘
tf.reshape_426/ReshapeReshape+conv3d_330/StatefulPartitionedCall:output:0%tf.reshape_426/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_426/Reshapeб
tf.tile_213/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_213/Tile/multiples╝
tf.tile_213/TileTiletf.reshape_426/Reshape:output:0#tf.tile_213/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_213/TileЩ
tf.reshape_427/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_427/Reshape/shape╗
tf.reshape_427/ReshapeReshapetf.tile_213/Tile:output:0%tf.reshape_427/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_427/Reshapex
tf.concat_357/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_357/concat/axisё
tf.concat_357/concatConcatV2tf.reshape_427/Reshape:output:0+conv3d_328/StatefulPartitionedCall:output:0"tf.concat_357/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_357/concat╥
"conv3d_331/StatefulPartitionedCallStatefulPartitionedCalltf.concat_357/concat:output:0conv3d_331_16869206conv3d_331_16869208*
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
H__inference_conv3d_331_layer_call_and_return_conditional_losses_168686482$
"conv3d_331/StatefulPartitionedCallе
tf.reshape_428/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_428/Reshape/shape┘
tf.reshape_428/ReshapeReshape+conv3d_331/StatefulPartitionedCall:output:0%tf.reshape_428/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_428/Reshapeб
tf.tile_214/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_214/Tile/multiples╝
tf.tile_214/TileTiletf.reshape_428/Reshape:output:0#tf.tile_214/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_214/TileЩ
tf.reshape_429/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_429/Reshape/shape╗
tf.reshape_429/ReshapeReshapetf.tile_214/Tile:output:0%tf.reshape_429/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_429/Reshapex
tf.concat_358/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_358/concat/axisё
tf.concat_358/concatConcatV2tf.reshape_429/Reshape:output:0+conv3d_327/StatefulPartitionedCall:output:0"tf.concat_358/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_358/concat╥
"conv3d_332/StatefulPartitionedCallStatefulPartitionedCalltf.concat_358/concat:output:0conv3d_332_16869219conv3d_332_16869221*
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
H__inference_conv3d_332_layer_call_and_return_conditional_losses_168686732$
"conv3d_332/StatefulPartitionedCallе
tf.reshape_430/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_430/Reshape/shape┘
tf.reshape_430/ReshapeReshape+conv3d_332/StatefulPartitionedCall:output:0%tf.reshape_430/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_430/Reshapeб
tf.tile_215/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_215/Tile/multiples╝
tf.tile_215/TileTiletf.reshape_430/Reshape:output:0#tf.tile_215/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_215/TileЩ
tf.reshape_431/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_431/Reshape/shape╗
tf.reshape_431/ReshapeReshapetf.tile_215/Tile:output:0%tf.reshape_431/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_431/Reshapex
tf.concat_359/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_359/concat/axisё
tf.concat_359/concatConcatV2tf.reshape_431/Reshape:output:0+conv3d_326/StatefulPartitionedCall:output:0"tf.concat_359/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_359/concat╥
"conv3d_333/StatefulPartitionedCallStatefulPartitionedCalltf.concat_359/concat:output:0conv3d_333_16869232conv3d_333_16869234*
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
H__inference_conv3d_333_layer_call_and_return_conditional_losses_168686982$
"conv3d_333/StatefulPartitionedCallр
"conv3d_334/StatefulPartitionedCallStatefulPartitionedCall+conv3d_333/StatefulPartitionedCall:output:0conv3d_334_16869237conv3d_334_16869239*
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
H__inference_conv3d_334_layer_call_and_return_conditional_losses_168687142$
"conv3d_334/StatefulPartitionedCallТ
IdentityIdentity+conv3d_334/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_326/StatefulPartitionedCall#^conv3d_327/StatefulPartitionedCall#^conv3d_328/StatefulPartitionedCall#^conv3d_329/StatefulPartitionedCall#^conv3d_330/StatefulPartitionedCall#^conv3d_331/StatefulPartitionedCall#^conv3d_332/StatefulPartitionedCall#^conv3d_333/StatefulPartitionedCall#^conv3d_334/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2H
"conv3d_327/StatefulPartitionedCall"conv3d_327/StatefulPartitionedCall2H
"conv3d_328/StatefulPartitionedCall"conv3d_328/StatefulPartitionedCall2H
"conv3d_329/StatefulPartitionedCall"conv3d_329/StatefulPartitionedCall2H
"conv3d_330/StatefulPartitionedCall"conv3d_330/StatefulPartitionedCall2H
"conv3d_331/StatefulPartitionedCall"conv3d_331/StatefulPartitionedCall2H
"conv3d_332/StatefulPartitionedCall"conv3d_332/StatefulPartitionedCall2H
"conv3d_333/StatefulPartitionedCall"conv3d_333/StatefulPartitionedCall2H
"conv3d_334/StatefulPartitionedCall"conv3d_334/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
х

o
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16869863

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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_16868540

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
H__inference_conv3d_327_layer_call_and_return_conditional_losses_16869892

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
Х
T
8__inference_average_pooling3d_128_layer_call_fn_16869854

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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_168684732
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
I__inference_reshape_140_layer_call_and_return_conditional_losses_16870033

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
┴
ж
-__inference_conv3d_334_layer_call_fn_16870162

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
H__inference_conv3d_334_layer_call_and_return_conditional_losses_168687142
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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_16869844

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
М	
o
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16868554

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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_16868459

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
H__inference_conv3d_331_layer_call_and_return_conditional_losses_16870113

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
╫	
q
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_16868440

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
вЧ
∙
#__inference__wrapped_model_16868297	
inputP
2model_70_conv3d_326_conv3d_readvariableop_resource: A
3model_70_conv3d_326_biasadd_readvariableop_resource: P
2model_70_conv3d_327_conv3d_readvariableop_resource: A
3model_70_conv3d_327_biasadd_readvariableop_resource:P
2model_70_conv3d_328_conv3d_readvariableop_resource:A
3model_70_conv3d_328_biasadd_readvariableop_resource:P
2model_70_conv3d_329_conv3d_readvariableop_resource:A
3model_70_conv3d_329_biasadd_readvariableop_resource:B
0model_70_dense_70_matmul_readvariableop_resource:@@?
1model_70_dense_70_biasadd_readvariableop_resource:@P
2model_70_conv3d_330_conv3d_readvariableop_resource:A
3model_70_conv3d_330_biasadd_readvariableop_resource:P
2model_70_conv3d_331_conv3d_readvariableop_resource:A
3model_70_conv3d_331_biasadd_readvariableop_resource:P
2model_70_conv3d_332_conv3d_readvariableop_resource:A
3model_70_conv3d_332_biasadd_readvariableop_resource:P
2model_70_conv3d_333_conv3d_readvariableop_resource:0 A
3model_70_conv3d_333_biasadd_readvariableop_resource: P
2model_70_conv3d_334_conv3d_readvariableop_resource: A
3model_70_conv3d_334_biasadd_readvariableop_resource:
identityИв*model_70/conv3d_326/BiasAdd/ReadVariableOpв)model_70/conv3d_326/Conv3D/ReadVariableOpв*model_70/conv3d_327/BiasAdd/ReadVariableOpв)model_70/conv3d_327/Conv3D/ReadVariableOpв*model_70/conv3d_328/BiasAdd/ReadVariableOpв)model_70/conv3d_328/Conv3D/ReadVariableOpв*model_70/conv3d_329/BiasAdd/ReadVariableOpв)model_70/conv3d_329/Conv3D/ReadVariableOpв*model_70/conv3d_330/BiasAdd/ReadVariableOpв)model_70/conv3d_330/Conv3D/ReadVariableOpв*model_70/conv3d_331/BiasAdd/ReadVariableOpв)model_70/conv3d_331/Conv3D/ReadVariableOpв*model_70/conv3d_332/BiasAdd/ReadVariableOpв)model_70/conv3d_332/Conv3D/ReadVariableOpв*model_70/conv3d_333/BiasAdd/ReadVariableOpв)model_70/conv3d_333/Conv3D/ReadVariableOpв*model_70/conv3d_334/BiasAdd/ReadVariableOpв)model_70/conv3d_334/Conv3D/ReadVariableOpв(model_70/dense_70/BiasAdd/ReadVariableOpв'model_70/dense_70/MatMul/ReadVariableOp╟
9model_70/tf.__operators__.getitem_286/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_70/tf.__operators__.getitem_286/strided_slice/stack╦
;model_70/tf.__operators__.getitem_286/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_70/tf.__operators__.getitem_286/strided_slice/stack_1╦
;model_70/tf.__operators__.getitem_286/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_70/tf.__operators__.getitem_286/strided_slice/stack_2╛
3model_70/tf.__operators__.getitem_286/strided_sliceStridedSliceinputBmodel_70/tf.__operators__.getitem_286/strided_slice/stack:output:0Dmodel_70/tf.__operators__.getitem_286/strided_slice/stack_1:output:0Dmodel_70/tf.__operators__.getitem_286/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_70/tf.__operators__.getitem_286/strided_sliceН
"model_70/range_conversion_70/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_70/range_conversion_70/sub/yЇ
 model_70/range_conversion_70/subSub<model_70/tf.__operators__.getitem_286/strided_slice:output:0+model_70/range_conversion_70/sub/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_70/range_conversion_70/subХ
&model_70/range_conversion_70/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_70/range_conversion_70/truediv/yь
$model_70/range_conversion_70/truedivRealDiv$model_70/range_conversion_70/sub:z:0/model_70/range_conversion_70/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2&
$model_70/range_conversion_70/truedivН
"model_70/range_conversion_70/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_70/range_conversion_70/mul/yр
 model_70/range_conversion_70/mulMul(model_70/range_conversion_70/truediv:z:0+model_70/range_conversion_70/mul/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_70/range_conversion_70/mulН
"model_70/range_conversion_70/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_70/range_conversion_70/add/y▐
 model_70/range_conversion_70/addAddV2$model_70/range_conversion_70/mul:z:0+model_70/range_conversion_70/add/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_70/range_conversion_70/add╟
9model_70/tf.__operators__.getitem_287/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_70/tf.__operators__.getitem_287/strided_slice/stack╦
;model_70/tf.__operators__.getitem_287/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_70/tf.__operators__.getitem_287/strided_slice/stack_1╦
;model_70/tf.__operators__.getitem_287/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_70/tf.__operators__.getitem_287/strided_slice/stack_2╛
3model_70/tf.__operators__.getitem_287/strided_sliceStridedSliceinputBmodel_70/tf.__operators__.getitem_287/strided_slice/stack:output:0Dmodel_70/tf.__operators__.getitem_287/strided_slice/stack_1:output:0Dmodel_70/tf.__operators__.getitem_287/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_70/tf.__operators__.getitem_287/strided_sliceК
"model_70/tf.concat_355/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_70/tf.concat_355/concat/axisв
model_70/tf.concat_355/concatConcatV2$model_70/range_conversion_70/add:z:0<model_70/tf.__operators__.getitem_287/strided_slice:output:0+model_70/tf.concat_355/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
model_70/tf.concat_355/concat╒
)model_70/conv3d_326/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_326_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_70/conv3d_326/Conv3D/ReadVariableOpЬ
model_70/conv3d_326/Conv3DConv3D&model_70/tf.concat_355/concat:output:01model_70/conv3d_326/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_326/Conv3D╚
*model_70/conv3d_326/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_326_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_70/conv3d_326/BiasAdd/ReadVariableOpє
model_70/conv3d_326/BiasAddBiasAdd#model_70/conv3d_326/Conv3D:output:02model_70/conv3d_326/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_70/conv3d_326/BiasAddм
model_70/conv3d_326/SoftplusSoftplus$model_70/conv3d_326/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_70/conv3d_326/Softplus╗
-model_70/average_pooling3d_128/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_70/average_pooling3d_128/transpose/permГ
(model_70/average_pooling3d_128/transpose	Transpose*model_70/conv3d_326/Softplus:activations:06model_70/average_pooling3d_128/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2*
(model_70/average_pooling3d_128/transposeЛ
(model_70/average_pooling3d_128/AvgPool3D	AvgPool3D,model_70/average_pooling3d_128/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2*
(model_70/average_pooling3d_128/AvgPool3D┐
/model_70/average_pooling3d_128/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_70/average_pooling3d_128/transpose_1/permР
*model_70/average_pooling3d_128/transpose_1	Transpose1model_70/average_pooling3d_128/AvgPool3D:output:08model_70/average_pooling3d_128/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2,
*model_70/average_pooling3d_128/transpose_1╒
)model_70/conv3d_327/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_327_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_70/conv3d_327/Conv3D/ReadVariableOpд
model_70/conv3d_327/Conv3DConv3D.model_70/average_pooling3d_128/transpose_1:y:01model_70/conv3d_327/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_327/Conv3D╚
*model_70/conv3d_327/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_327_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_70/conv3d_327/BiasAdd/ReadVariableOpє
model_70/conv3d_327/BiasAddBiasAdd#model_70/conv3d_327/Conv3D:output:02model_70/conv3d_327/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_70/conv3d_327/BiasAddм
model_70/conv3d_327/SoftplusSoftplus$model_70/conv3d_327/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_70/conv3d_327/Softplus╗
-model_70/average_pooling3d_129/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_70/average_pooling3d_129/transpose/permГ
(model_70/average_pooling3d_129/transpose	Transpose*model_70/conv3d_327/Softplus:activations:06model_70/average_pooling3d_129/transpose/perm:output:0*
T0*3
_output_shapes!
:           2*
(model_70/average_pooling3d_129/transposeЛ
(model_70/average_pooling3d_129/AvgPool3D	AvgPool3D,model_70/average_pooling3d_129/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_70/average_pooling3d_129/AvgPool3D┐
/model_70/average_pooling3d_129/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_70/average_pooling3d_129/transpose_1/permР
*model_70/average_pooling3d_129/transpose_1	Transpose1model_70/average_pooling3d_129/AvgPool3D:output:08model_70/average_pooling3d_129/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_70/average_pooling3d_129/transpose_1╒
)model_70/conv3d_328/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_328_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_70/conv3d_328/Conv3D/ReadVariableOpд
model_70/conv3d_328/Conv3DConv3D.model_70/average_pooling3d_129/transpose_1:y:01model_70/conv3d_328/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_328/Conv3D╚
*model_70/conv3d_328/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_328_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_70/conv3d_328/BiasAdd/ReadVariableOpє
model_70/conv3d_328/BiasAddBiasAdd#model_70/conv3d_328/Conv3D:output:02model_70/conv3d_328/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_70/conv3d_328/BiasAddм
model_70/conv3d_328/SoftplusSoftplus$model_70/conv3d_328/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_70/conv3d_328/Softplus╗
-model_70/average_pooling3d_130/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_70/average_pooling3d_130/transpose/permГ
(model_70/average_pooling3d_130/transpose	Transpose*model_70/conv3d_328/Softplus:activations:06model_70/average_pooling3d_130/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_70/average_pooling3d_130/transposeЛ
(model_70/average_pooling3d_130/AvgPool3D	AvgPool3D,model_70/average_pooling3d_130/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_70/average_pooling3d_130/AvgPool3D┐
/model_70/average_pooling3d_130/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_70/average_pooling3d_130/transpose_1/permР
*model_70/average_pooling3d_130/transpose_1	Transpose1model_70/average_pooling3d_130/AvgPool3D:output:08model_70/average_pooling3d_130/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_70/average_pooling3d_130/transpose_1╒
)model_70/conv3d_329/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_329_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_70/conv3d_329/Conv3D/ReadVariableOpд
model_70/conv3d_329/Conv3DConv3D.model_70/average_pooling3d_130/transpose_1:y:01model_70/conv3d_329/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_329/Conv3D╚
*model_70/conv3d_329/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_329_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_70/conv3d_329/BiasAdd/ReadVariableOpє
model_70/conv3d_329/BiasAddBiasAdd#model_70/conv3d_329/Conv3D:output:02model_70/conv3d_329/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_70/conv3d_329/BiasAddм
model_70/conv3d_329/SoftplusSoftplus$model_70/conv3d_329/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_70/conv3d_329/Softplus╗
-model_70/average_pooling3d_131/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_70/average_pooling3d_131/transpose/permГ
(model_70/average_pooling3d_131/transpose	Transpose*model_70/conv3d_329/Softplus:activations:06model_70/average_pooling3d_131/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_70/average_pooling3d_131/transposeЛ
(model_70/average_pooling3d_131/AvgPool3D	AvgPool3D,model_70/average_pooling3d_131/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_70/average_pooling3d_131/AvgPool3D┐
/model_70/average_pooling3d_131/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_70/average_pooling3d_131/transpose_1/permР
*model_70/average_pooling3d_131/transpose_1	Transpose1model_70/average_pooling3d_131/AvgPool3D:output:08model_70/average_pooling3d_131/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_70/average_pooling3d_131/transpose_1Ц
model_70/reshape_140/ShapeShape.model_70/average_pooling3d_131/transpose_1:y:0*
T0*
_output_shapes
:2
model_70/reshape_140/ShapeЮ
(model_70/reshape_140/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_70/reshape_140/strided_slice/stackв
*model_70/reshape_140/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_70/reshape_140/strided_slice/stack_1в
*model_70/reshape_140/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_70/reshape_140/strided_slice/stack_2р
"model_70/reshape_140/strided_sliceStridedSlice#model_70/reshape_140/Shape:output:01model_70/reshape_140/strided_slice/stack:output:03model_70/reshape_140/strided_slice/stack_1:output:03model_70/reshape_140/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_70/reshape_140/strided_sliceО
$model_70/reshape_140/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_70/reshape_140/Reshape/shape/1┌
"model_70/reshape_140/Reshape/shapePack+model_70/reshape_140/strided_slice:output:0-model_70/reshape_140/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_70/reshape_140/Reshape/shape╓
model_70/reshape_140/ReshapeReshape.model_70/average_pooling3d_131/transpose_1:y:0+model_70/reshape_140/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_70/reshape_140/Reshape├
'model_70/dense_70/MatMul/ReadVariableOpReadVariableOp0model_70_dense_70_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_70/dense_70/MatMul/ReadVariableOp╚
model_70/dense_70/MatMulMatMul%model_70/reshape_140/Reshape:output:0/model_70/dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_70/dense_70/MatMul┬
(model_70/dense_70/BiasAdd/ReadVariableOpReadVariableOp1model_70_dense_70_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_70/dense_70/BiasAdd/ReadVariableOp╔
model_70/dense_70/BiasAddBiasAdd"model_70/dense_70/MatMul:product:00model_70/dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_70/dense_70/BiasAddЪ
model_70/dense_70/SoftplusSoftplus"model_70/dense_70/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_70/dense_70/SoftplusР
model_70/reshape_141/ShapeShape(model_70/dense_70/Softplus:activations:0*
T0*
_output_shapes
:2
model_70/reshape_141/ShapeЮ
(model_70/reshape_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_70/reshape_141/strided_slice/stackв
*model_70/reshape_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_70/reshape_141/strided_slice/stack_1в
*model_70/reshape_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_70/reshape_141/strided_slice/stack_2р
"model_70/reshape_141/strided_sliceStridedSlice#model_70/reshape_141/Shape:output:01model_70/reshape_141/strided_slice/stack:output:03model_70/reshape_141/strided_slice/stack_1:output:03model_70/reshape_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_70/reshape_141/strided_sliceО
$model_70/reshape_141/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_70/reshape_141/Reshape/shape/1О
$model_70/reshape_141/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_70/reshape_141/Reshape/shape/2О
$model_70/reshape_141/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_70/reshape_141/Reshape/shape/3О
$model_70/reshape_141/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_70/reshape_141/Reshape/shape/4ч
"model_70/reshape_141/Reshape/shapePack+model_70/reshape_141/strided_slice:output:0-model_70/reshape_141/Reshape/shape/1:output:0-model_70/reshape_141/Reshape/shape/2:output:0-model_70/reshape_141/Reshape/shape/3:output:0-model_70/reshape_141/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_70/reshape_141/Reshape/shape▄
model_70/reshape_141/ReshapeReshape(model_70/dense_70/Softplus:activations:0+model_70/reshape_141/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_70/reshape_141/Reshape╖
%model_70/tf.reshape_424/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_70/tf.reshape_424/Reshape/shapeю
model_70/tf.reshape_424/ReshapeReshape%model_70/reshape_141/Reshape:output:0.model_70/tf.reshape_424/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_70/tf.reshape_424/Reshape│
#model_70/tf.tile_212/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_70/tf.tile_212/Tile/multiplesр
model_70/tf.tile_212/TileTile(model_70/tf.reshape_424/Reshape:output:0,model_70/tf.tile_212/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_70/tf.tile_212/Tileл
%model_70/tf.reshape_425/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_70/tf.reshape_425/Reshape/shape▀
model_70/tf.reshape_425/ReshapeReshape"model_70/tf.tile_212/Tile:output:0.model_70/tf.reshape_425/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_70/tf.reshape_425/ReshapeК
"model_70/tf.concat_356/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_70/tf.concat_356/concat/axisФ
model_70/tf.concat_356/concatConcatV2(model_70/tf.reshape_425/Reshape:output:0*model_70/conv3d_329/Softplus:activations:0+model_70/tf.concat_356/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_70/tf.concat_356/concat╒
)model_70/conv3d_330/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_330_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_70/conv3d_330/Conv3D/ReadVariableOpЬ
model_70/conv3d_330/Conv3DConv3D&model_70/tf.concat_356/concat:output:01model_70/conv3d_330/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_330/Conv3D╚
*model_70/conv3d_330/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_330_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_70/conv3d_330/BiasAdd/ReadVariableOpє
model_70/conv3d_330/BiasAddBiasAdd#model_70/conv3d_330/Conv3D:output:02model_70/conv3d_330/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_70/conv3d_330/BiasAddм
model_70/conv3d_330/SoftplusSoftplus$model_70/conv3d_330/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_70/conv3d_330/Softplus╖
%model_70/tf.reshape_426/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_70/tf.reshape_426/Reshape/shapeє
model_70/tf.reshape_426/ReshapeReshape*model_70/conv3d_330/Softplus:activations:0.model_70/tf.reshape_426/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_70/tf.reshape_426/Reshape│
#model_70/tf.tile_213/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_70/tf.tile_213/Tile/multiplesр
model_70/tf.tile_213/TileTile(model_70/tf.reshape_426/Reshape:output:0,model_70/tf.tile_213/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_70/tf.tile_213/Tileл
%model_70/tf.reshape_427/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_70/tf.reshape_427/Reshape/shape▀
model_70/tf.reshape_427/ReshapeReshape"model_70/tf.tile_213/Tile:output:0.model_70/tf.reshape_427/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_70/tf.reshape_427/ReshapeК
"model_70/tf.concat_357/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_70/tf.concat_357/concat/axisФ
model_70/tf.concat_357/concatConcatV2(model_70/tf.reshape_427/Reshape:output:0*model_70/conv3d_328/Softplus:activations:0+model_70/tf.concat_357/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_70/tf.concat_357/concat╒
)model_70/conv3d_331/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_331_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_70/conv3d_331/Conv3D/ReadVariableOpЬ
model_70/conv3d_331/Conv3DConv3D&model_70/tf.concat_357/concat:output:01model_70/conv3d_331/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_331/Conv3D╚
*model_70/conv3d_331/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_331_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_70/conv3d_331/BiasAdd/ReadVariableOpє
model_70/conv3d_331/BiasAddBiasAdd#model_70/conv3d_331/Conv3D:output:02model_70/conv3d_331/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_70/conv3d_331/BiasAddм
model_70/conv3d_331/SoftplusSoftplus$model_70/conv3d_331/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_70/conv3d_331/Softplus╖
%model_70/tf.reshape_428/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_70/tf.reshape_428/Reshape/shapeє
model_70/tf.reshape_428/ReshapeReshape*model_70/conv3d_331/Softplus:activations:0.model_70/tf.reshape_428/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_70/tf.reshape_428/Reshape│
#model_70/tf.tile_214/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_70/tf.tile_214/Tile/multiplesр
model_70/tf.tile_214/TileTile(model_70/tf.reshape_428/Reshape:output:0,model_70/tf.tile_214/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_70/tf.tile_214/Tileл
%model_70/tf.reshape_429/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2'
%model_70/tf.reshape_429/Reshape/shape▀
model_70/tf.reshape_429/ReshapeReshape"model_70/tf.tile_214/Tile:output:0.model_70/tf.reshape_429/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2!
model_70/tf.reshape_429/ReshapeК
"model_70/tf.concat_358/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_70/tf.concat_358/concat/axisФ
model_70/tf.concat_358/concatConcatV2(model_70/tf.reshape_429/Reshape:output:0*model_70/conv3d_327/Softplus:activations:0+model_70/tf.concat_358/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_70/tf.concat_358/concat╒
)model_70/conv3d_332/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_332_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_70/conv3d_332/Conv3D/ReadVariableOpЬ
model_70/conv3d_332/Conv3DConv3D&model_70/tf.concat_358/concat:output:01model_70/conv3d_332/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_332/Conv3D╚
*model_70/conv3d_332/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_332_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_70/conv3d_332/BiasAdd/ReadVariableOpє
model_70/conv3d_332/BiasAddBiasAdd#model_70/conv3d_332/Conv3D:output:02model_70/conv3d_332/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_70/conv3d_332/BiasAddм
model_70/conv3d_332/SoftplusSoftplus$model_70/conv3d_332/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_70/conv3d_332/Softplus╖
%model_70/tf.reshape_430/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2'
%model_70/tf.reshape_430/Reshape/shapeє
model_70/tf.reshape_430/ReshapeReshape*model_70/conv3d_332/Softplus:activations:0.model_70/tf.reshape_430/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2!
model_70/tf.reshape_430/Reshape│
#model_70/tf.tile_215/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_70/tf.tile_215/Tile/multiplesр
model_70/tf.tile_215/TileTile(model_70/tf.reshape_430/Reshape:output:0,model_70/tf.tile_215/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
model_70/tf.tile_215/Tileл
%model_70/tf.reshape_431/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2'
%model_70/tf.reshape_431/Reshape/shape▀
model_70/tf.reshape_431/ReshapeReshape"model_70/tf.tile_215/Tile:output:0.model_70/tf.reshape_431/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2!
model_70/tf.reshape_431/ReshapeК
"model_70/tf.concat_359/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_70/tf.concat_359/concat/axisФ
model_70/tf.concat_359/concatConcatV2(model_70/tf.reshape_431/Reshape:output:0*model_70/conv3d_326/Softplus:activations:0+model_70/tf.concat_359/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
model_70/tf.concat_359/concat╒
)model_70/conv3d_333/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_333_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_70/conv3d_333/Conv3D/ReadVariableOpЬ
model_70/conv3d_333/Conv3DConv3D&model_70/tf.concat_359/concat:output:01model_70/conv3d_333/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_333/Conv3D╚
*model_70/conv3d_333/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_333_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_70/conv3d_333/BiasAdd/ReadVariableOpє
model_70/conv3d_333/BiasAddBiasAdd#model_70/conv3d_333/Conv3D:output:02model_70/conv3d_333/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_70/conv3d_333/BiasAddм
model_70/conv3d_333/SoftplusSoftplus$model_70/conv3d_333/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_70/conv3d_333/Softplus╒
)model_70/conv3d_334/Conv3D/ReadVariableOpReadVariableOp2model_70_conv3d_334_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_70/conv3d_334/Conv3D/ReadVariableOpа
model_70/conv3d_334/Conv3DConv3D*model_70/conv3d_333/Softplus:activations:01model_70/conv3d_334/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_70/conv3d_334/Conv3D╚
*model_70/conv3d_334/BiasAdd/ReadVariableOpReadVariableOp3model_70_conv3d_334_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_70/conv3d_334/BiasAdd/ReadVariableOpє
model_70/conv3d_334/BiasAddBiasAdd#model_70/conv3d_334/Conv3D:output:02model_70/conv3d_334/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
model_70/conv3d_334/BiasAddЛ
IdentityIdentity$model_70/conv3d_334/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity─
NoOpNoOp+^model_70/conv3d_326/BiasAdd/ReadVariableOp*^model_70/conv3d_326/Conv3D/ReadVariableOp+^model_70/conv3d_327/BiasAdd/ReadVariableOp*^model_70/conv3d_327/Conv3D/ReadVariableOp+^model_70/conv3d_328/BiasAdd/ReadVariableOp*^model_70/conv3d_328/Conv3D/ReadVariableOp+^model_70/conv3d_329/BiasAdd/ReadVariableOp*^model_70/conv3d_329/Conv3D/ReadVariableOp+^model_70/conv3d_330/BiasAdd/ReadVariableOp*^model_70/conv3d_330/Conv3D/ReadVariableOp+^model_70/conv3d_331/BiasAdd/ReadVariableOp*^model_70/conv3d_331/Conv3D/ReadVariableOp+^model_70/conv3d_332/BiasAdd/ReadVariableOp*^model_70/conv3d_332/Conv3D/ReadVariableOp+^model_70/conv3d_333/BiasAdd/ReadVariableOp*^model_70/conv3d_333/Conv3D/ReadVariableOp+^model_70/conv3d_334/BiasAdd/ReadVariableOp*^model_70/conv3d_334/Conv3D/ReadVariableOp)^model_70/dense_70/BiasAdd/ReadVariableOp(^model_70/dense_70/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2X
*model_70/conv3d_326/BiasAdd/ReadVariableOp*model_70/conv3d_326/BiasAdd/ReadVariableOp2V
)model_70/conv3d_326/Conv3D/ReadVariableOp)model_70/conv3d_326/Conv3D/ReadVariableOp2X
*model_70/conv3d_327/BiasAdd/ReadVariableOp*model_70/conv3d_327/BiasAdd/ReadVariableOp2V
)model_70/conv3d_327/Conv3D/ReadVariableOp)model_70/conv3d_327/Conv3D/ReadVariableOp2X
*model_70/conv3d_328/BiasAdd/ReadVariableOp*model_70/conv3d_328/BiasAdd/ReadVariableOp2V
)model_70/conv3d_328/Conv3D/ReadVariableOp)model_70/conv3d_328/Conv3D/ReadVariableOp2X
*model_70/conv3d_329/BiasAdd/ReadVariableOp*model_70/conv3d_329/BiasAdd/ReadVariableOp2V
)model_70/conv3d_329/Conv3D/ReadVariableOp)model_70/conv3d_329/Conv3D/ReadVariableOp2X
*model_70/conv3d_330/BiasAdd/ReadVariableOp*model_70/conv3d_330/BiasAdd/ReadVariableOp2V
)model_70/conv3d_330/Conv3D/ReadVariableOp)model_70/conv3d_330/Conv3D/ReadVariableOp2X
*model_70/conv3d_331/BiasAdd/ReadVariableOp*model_70/conv3d_331/BiasAdd/ReadVariableOp2V
)model_70/conv3d_331/Conv3D/ReadVariableOp)model_70/conv3d_331/Conv3D/ReadVariableOp2X
*model_70/conv3d_332/BiasAdd/ReadVariableOp*model_70/conv3d_332/BiasAdd/ReadVariableOp2V
)model_70/conv3d_332/Conv3D/ReadVariableOp)model_70/conv3d_332/Conv3D/ReadVariableOp2X
*model_70/conv3d_333/BiasAdd/ReadVariableOp*model_70/conv3d_333/BiasAdd/ReadVariableOp2V
)model_70/conv3d_333/Conv3D/ReadVariableOp)model_70/conv3d_333/Conv3D/ReadVariableOp2X
*model_70/conv3d_334/BiasAdd/ReadVariableOp*model_70/conv3d_334/BiasAdd/ReadVariableOp2V
)model_70/conv3d_334/Conv3D/ReadVariableOp)model_70/conv3d_334/Conv3D/ReadVariableOp2T
(model_70/dense_70/BiasAdd/ReadVariableOp(model_70/dense_70/BiasAdd/ReadVariableOp2R
'model_70/dense_70/MatMul/ReadVariableOp'model_70/dense_70/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
г
є
+__inference_model_70_layer_call_fn_16869438

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
F__inference_model_70_layer_call_and_return_conditional_losses_168687212
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
┴
ж
-__inference_conv3d_332_layer_call_fn_16870122

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
H__inference_conv3d_332_layer_call_and_return_conditional_losses_168686732
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
╬
Е
H__inference_conv3d_327_layer_call_and_return_conditional_losses_16868486

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
Ь
e
I__inference_reshape_141_layer_call_and_return_conditional_losses_16868602

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
-__inference_conv3d_328_layer_call_fn_16869929

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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_168685132
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
Х
T
8__inference_average_pooling3d_129_layer_call_fn_16869902

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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_168685002
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
┴
ж
-__inference_conv3d_326_layer_call_fn_16869833

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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_168684592
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
а
Є
+__inference_model_70_layer_call_fn_16868764	
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
F__inference_model_70_layer_call_and_return_conditional_losses_168687212
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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16868500

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
╫	
q
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_16869824

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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16868370

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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_16868513

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
а
Є
+__inference_model_70_layer_call_fn_16869140	
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
F__inference_model_70_layer_call_and_return_conditional_losses_168690522
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
х

o
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16868340

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
-__inference_conv3d_329_layer_call_fn_16869977

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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_168685402
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
8__inference_average_pooling3d_130_layer_call_fn_16869950

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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_168685272
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
х

o
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16868400

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
F__inference_dense_70_layer_call_and_return_conditional_losses_16870053

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
М	
o
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16870016

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
8__inference_average_pooling3d_131_layer_call_fn_16869993

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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_168684002
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

conv3d_334<
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
+ё&call_and_return_all_conditional_losses
Є_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
+	keras_api"
_tf_keras_layer
з
,regularization_losses
-	variables
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
4regularization_losses
5	variables
6trainable_variables
7	keras_api
ї__call__
+Ў&call_and_return_all_conditional_losses"
_tf_keras_layer
з
8regularization_losses
9	variables
:trainable_variables
;	keras_api
ў__call__
+°&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
∙__call__
+·&call_and_return_all_conditional_losses"
_tf_keras_layer
з
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
√__call__
+№&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
¤__call__
+■&call_and_return_all_conditional_losses"
_tf_keras_layer
з
Lregularization_losses
M	variables
Ntrainable_variables
O	keras_api
 __call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Pkernel
Qbias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
з
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_layer
з
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
З__call__
+И&call_and_return_all_conditional_losses"
_tf_keras_layer
з
dregularization_losses
e	variables
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
nregularization_losses
o	variables
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
xregularization_losses
y	variables
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
Вregularization_losses
Г	variables
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
Мregularization_losses
Н	variables
Оtrainable_variables
П	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Рkernel
	Сbias
Тregularization_losses
У	variables
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
 Цlayer_regularization_losses
Чlayers
&regularization_losses
Шlayer_metrics
'	variables
Щnon_trainable_variables
(trainable_variables
Ъmetrics
Ё__call__
Є_default_save_signature
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
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
 Ыlayer_regularization_losses
Ьlayers
,regularization_losses
Эlayer_metrics
-	variables
Юnon_trainable_variables
.trainable_variables
Яmetrics
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/  2conv3d_326/kernel
:  2conv3d_326/bias
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
╡
 аlayer_regularization_losses
бlayers
4regularization_losses
вlayer_metrics
5	variables
гnon_trainable_variables
6trainable_variables
дmetrics
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
 еlayer_regularization_losses
жlayers
8regularization_losses
зlayer_metrics
9	variables
иnon_trainable_variables
:trainable_variables
йmetrics
ў__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_327/kernel
: 2conv3d_327/bias
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
╡
 кlayer_regularization_losses
лlayers
>regularization_losses
мlayer_metrics
?	variables
нnon_trainable_variables
@trainable_variables
оmetrics
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
 пlayer_regularization_losses
░layers
Bregularization_losses
▒layer_metrics
C	variables
▓non_trainable_variables
Dtrainable_variables
│metrics
√__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_328/kernel
: 2conv3d_328/bias
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
╡
 ┤layer_regularization_losses
╡layers
Hregularization_losses
╢layer_metrics
I	variables
╖non_trainable_variables
Jtrainable_variables
╕metrics
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
 ╣layer_regularization_losses
║layers
Lregularization_losses
╗layer_metrics
M	variables
╝non_trainable_variables
Ntrainable_variables
╜metrics
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_329/kernel
: 2conv3d_329/bias
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
╡
 ╛layer_regularization_losses
┐layers
Rregularization_losses
└layer_metrics
S	variables
┴non_trainable_variables
Ttrainable_variables
┬metrics
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
 ├layer_regularization_losses
─layers
Vregularization_losses
┼layer_metrics
W	variables
╞non_trainable_variables
Xtrainable_variables
╟metrics
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
 ╚layer_regularization_losses
╔layers
Zregularization_losses
╩layer_metrics
[	variables
╦non_trainable_variables
\trainable_variables
╠metrics
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_70/kernel
:@ 2dense_70/bias
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
╡
 ═layer_regularization_losses
╬layers
`regularization_losses
╧layer_metrics
a	variables
╨non_trainable_variables
btrainable_variables
╤metrics
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
 ╥layer_regularization_losses
╙layers
dregularization_losses
╘layer_metrics
e	variables
╒non_trainable_variables
ftrainable_variables
╓metrics
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
1:/ 2conv3d_330/kernel
: 2conv3d_330/bias
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
╡
 ╫layer_regularization_losses
╪layers
nregularization_losses
┘layer_metrics
o	variables
┌non_trainable_variables
ptrainable_variables
█metrics
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
1:/ 2conv3d_331/kernel
: 2conv3d_331/bias
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
╡
 ▄layer_regularization_losses
▌layers
xregularization_losses
▐layer_metrics
y	variables
▀non_trainable_variables
ztrainable_variables
рmetrics
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
1:/ 2conv3d_332/kernel
: 2conv3d_332/bias
 "
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
╕
 сlayer_regularization_losses
тlayers
Вregularization_losses
уlayer_metrics
Г	variables
фnon_trainable_variables
Дtrainable_variables
хmetrics
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
1:/0  2conv3d_333/kernel
:  2conv3d_333/bias
 "
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
╕
 цlayer_regularization_losses
чlayers
Мregularization_losses
шlayer_metrics
Н	variables
щnon_trainable_variables
Оtrainable_variables
ъmetrics
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_334/kernel
: 2conv3d_334/bias
 "
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
╕
 ыlayer_regularization_losses
ьlayers
Тregularization_losses
эlayer_metrics
У	variables
юnon_trainable_variables
Фtrainable_variables
яmetrics
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
·2ў
+__inference_model_70_layer_call_fn_16868764
+__inference_model_70_layer_call_fn_16869438
+__inference_model_70_layer_call_fn_16869483
+__inference_model_70_layer_call_fn_16869140└
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
ц2у
F__inference_model_70_layer_call_and_return_conditional_losses_16869645
F__inference_model_70_layer_call_and_return_conditional_losses_16869807
F__inference_model_70_layer_call_and_return_conditional_losses_16869243
F__inference_model_70_layer_call_and_return_conditional_losses_16869346└
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
#__inference__wrapped_model_16868297input"Ш
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
ф2с
6__inference_range_conversion_70_layer_call_fn_16869812ж
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
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_16869824ж
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
-__inference_conv3d_326_layer_call_fn_16869833в
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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_16869844в
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
8__inference_average_pooling3d_128_layer_call_fn_16869849
8__inference_average_pooling3d_128_layer_call_fn_16869854в
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
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16869863
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16869872в
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
-__inference_conv3d_327_layer_call_fn_16869881в
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
H__inference_conv3d_327_layer_call_and_return_conditional_losses_16869892в
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
8__inference_average_pooling3d_129_layer_call_fn_16869897
8__inference_average_pooling3d_129_layer_call_fn_16869902в
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
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16869911
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16869920в
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
-__inference_conv3d_328_layer_call_fn_16869929в
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
H__inference_conv3d_328_layer_call_and_return_conditional_losses_16869940в
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
8__inference_average_pooling3d_130_layer_call_fn_16869945
8__inference_average_pooling3d_130_layer_call_fn_16869950в
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16869959
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16869968в
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
-__inference_conv3d_329_layer_call_fn_16869977в
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
H__inference_conv3d_329_layer_call_and_return_conditional_losses_16869988в
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
8__inference_average_pooling3d_131_layer_call_fn_16869993
8__inference_average_pooling3d_131_layer_call_fn_16869998в
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16870007
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16870016в
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
.__inference_reshape_140_layer_call_fn_16870021в
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
I__inference_reshape_140_layer_call_and_return_conditional_losses_16870033в
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
+__inference_dense_70_layer_call_fn_16870042в
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
F__inference_dense_70_layer_call_and_return_conditional_losses_16870053в
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
.__inference_reshape_141_layer_call_fn_16870058в
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
I__inference_reshape_141_layer_call_and_return_conditional_losses_16870073в
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
-__inference_conv3d_330_layer_call_fn_16870082в
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
H__inference_conv3d_330_layer_call_and_return_conditional_losses_16870093в
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
-__inference_conv3d_331_layer_call_fn_16870102в
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
H__inference_conv3d_331_layer_call_and_return_conditional_losses_16870113в
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
-__inference_conv3d_332_layer_call_fn_16870122в
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
H__inference_conv3d_332_layer_call_and_return_conditional_losses_16870133в
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
-__inference_conv3d_333_layer_call_fn_16870142в
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
H__inference_conv3d_333_layer_call_and_return_conditional_losses_16870153в
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
-__inference_conv3d_334_layer_call_fn_16870162в
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
H__inference_conv3d_334_layer_call_and_return_conditional_losses_16870172в
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
&__inference_signature_wrapper_16869393input"Ф
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
#__inference__wrapped_model_16868297Э23<=FGPQ^_lmvwАБКЛРС:в7
0в-
+К(
input         @@
к "Cк@
>

conv3d_3340К-

conv3d_334         @@Р
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16869863╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_128_layer_call_and_return_conditional_losses_16869872p;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0            
Ъ ш
8__inference_average_pooling3d_128_layer_call_fn_16869849л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_128_layer_call_fn_16869854c;в8
1в.
,К)
inputs          @@
к "$К!            Р
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16869911╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_129_layer_call_and_return_conditional_losses_16869920p;в8
1в.
,К)
inputs           
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_129_layer_call_fn_16869897л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_129_layer_call_fn_16869902c;в8
1в.
,К)
inputs           
к "$К!         Р
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16869959╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_16869968p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_130_layer_call_fn_16869945л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_130_layer_call_fn_16869950c;в8
1в.
,К)
inputs         
к "$К!         Р
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16870007╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_16870016p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_131_layer_call_fn_16869993л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_131_layer_call_fn_16869998c;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_326_layer_call_and_return_conditional_losses_16869844t23;в8
1в.
,К)
inputs         @@
к "1в.
'К$
0          @@
Ъ Ш
-__inference_conv3d_326_layer_call_fn_16869833g23;в8
1в.
,К)
inputs         @@
к "$К!          @@└
H__inference_conv3d_327_layer_call_and_return_conditional_losses_16869892t<=;в8
1в.
,К)
inputs            
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_327_layer_call_fn_16869881g<=;в8
1в.
,К)
inputs            
к "$К!           └
H__inference_conv3d_328_layer_call_and_return_conditional_losses_16869940tFG;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_328_layer_call_fn_16869929gFG;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_329_layer_call_and_return_conditional_losses_16869988tPQ;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_329_layer_call_fn_16869977gPQ;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_330_layer_call_and_return_conditional_losses_16870093tlm;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_330_layer_call_fn_16870082glm;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_331_layer_call_and_return_conditional_losses_16870113tvw;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_331_layer_call_fn_16870102gvw;в8
1в.
,К)
inputs         
к "$К!         ┬
H__inference_conv3d_332_layer_call_and_return_conditional_losses_16870133vАБ;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ъ
-__inference_conv3d_332_layer_call_fn_16870122iАБ;в8
1в.
,К)
inputs           
к "$К!           ┬
H__inference_conv3d_333_layer_call_and_return_conditional_losses_16870153vКЛ;в8
1в.
,К)
inputs         0@@
к "1в.
'К$
0          @@
Ъ Ъ
-__inference_conv3d_333_layer_call_fn_16870142iКЛ;в8
1в.
,К)
inputs         0@@
к "$К!          @@┬
H__inference_conv3d_334_layer_call_and_return_conditional_losses_16870172vРС;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0         @@
Ъ Ъ
-__inference_conv3d_334_layer_call_fn_16870162iРС;в8
1в.
,К)
inputs          @@
к "$К!         @@ж
F__inference_dense_70_layer_call_and_return_conditional_losses_16870053\^_/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_70_layer_call_fn_16870042O^_/в,
%в"
 К
inputs         @
к "К         @▐
F__inference_model_70_layer_call_and_return_conditional_losses_16869243У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_70_layer_call_and_return_conditional_losses_16869346У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_70_layer_call_and_return_conditional_losses_16869645Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
F__inference_model_70_layer_call_and_return_conditional_losses_16869807Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
+__inference_model_70_layer_call_fn_16868764Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p 

 
к "$К!         @@╢
+__inference_model_70_layer_call_fn_16869140Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p

 
к "$К!         @@╖
+__inference_model_70_layer_call_fn_16869438З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p 

 
к "$К!         @@╖
+__inference_model_70_layer_call_fn_16869483З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p

 
к "$К!         @@╔
Q__inference_range_conversion_70_layer_call_and_return_conditional_losses_16869824t?в<
5в2
0К-

parameters         @@
к "1в.
'К$
0         @@
Ъ б
6__inference_range_conversion_70_layer_call_fn_16869812g?в<
5в2
0К-

parameters         @@
к "$К!         @@▒
I__inference_reshape_140_layer_call_and_return_conditional_losses_16870033d;в8
1в.
,К)
inputs         
к "%в"
К
0         @
Ъ Й
.__inference_reshape_140_layer_call_fn_16870021W;в8
1в.
,К)
inputs         
к "К         @▒
I__inference_reshape_141_layer_call_and_return_conditional_losses_16870073d/в,
%в"
 К
inputs         @
к "1в.
'К$
0         
Ъ Й
.__inference_reshape_141_layer_call_fn_16870058W/в,
%в"
 К
inputs         @
к "$К!         ╤
&__inference_signature_wrapper_16869393ж23<=FGPQ^_lmvwАБКЛРСCв@
в 
9к6
4
input+К(
input         @@"Cк@
>

conv3d_3340К-

conv3d_334         @@