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
conv3d_276/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_276/kernel
Г
%conv3d_276/kernel/Read/ReadVariableOpReadVariableOpconv3d_276/kernel**
_output_shapes
: *
dtype0
v
conv3d_276/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_276/bias
o
#conv3d_276/bias/Read/ReadVariableOpReadVariableOpconv3d_276/bias*
_output_shapes
: *
dtype0
К
conv3d_277/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_277/kernel
Г
%conv3d_277/kernel/Read/ReadVariableOpReadVariableOpconv3d_277/kernel**
_output_shapes
: *
dtype0
v
conv3d_277/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_277/bias
o
#conv3d_277/bias/Read/ReadVariableOpReadVariableOpconv3d_277/bias*
_output_shapes
:*
dtype0
К
conv3d_278/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_278/kernel
Г
%conv3d_278/kernel/Read/ReadVariableOpReadVariableOpconv3d_278/kernel**
_output_shapes
:*
dtype0
v
conv3d_278/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_278/bias
o
#conv3d_278/bias/Read/ReadVariableOpReadVariableOpconv3d_278/bias*
_output_shapes
:*
dtype0
К
conv3d_279/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_279/kernel
Г
%conv3d_279/kernel/Read/ReadVariableOpReadVariableOpconv3d_279/kernel**
_output_shapes
:*
dtype0
v
conv3d_279/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_279/bias
o
#conv3d_279/bias/Read/ReadVariableOpReadVariableOpconv3d_279/bias*
_output_shapes
:*
dtype0
z
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_60/kernel
s
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes

:@@*
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
_output_shapes
:@*
dtype0
К
conv3d_280/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_280/kernel
Г
%conv3d_280/kernel/Read/ReadVariableOpReadVariableOpconv3d_280/kernel**
_output_shapes
:*
dtype0
v
conv3d_280/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_280/bias
o
#conv3d_280/bias/Read/ReadVariableOpReadVariableOpconv3d_280/bias*
_output_shapes
:*
dtype0
К
conv3d_281/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_281/kernel
Г
%conv3d_281/kernel/Read/ReadVariableOpReadVariableOpconv3d_281/kernel**
_output_shapes
:*
dtype0
v
conv3d_281/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_281/bias
o
#conv3d_281/bias/Read/ReadVariableOpReadVariableOpconv3d_281/bias*
_output_shapes
:*
dtype0
К
conv3d_282/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_282/kernel
Г
%conv3d_282/kernel/Read/ReadVariableOpReadVariableOpconv3d_282/kernel**
_output_shapes
:*
dtype0
v
conv3d_282/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_282/bias
o
#conv3d_282/bias/Read/ReadVariableOpReadVariableOpconv3d_282/bias*
_output_shapes
:*
dtype0
К
conv3d_283/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_283/kernel
Г
%conv3d_283/kernel/Read/ReadVariableOpReadVariableOpconv3d_283/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_283/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_283/bias
o
#conv3d_283/bias/Read/ReadVariableOpReadVariableOpconv3d_283/bias*
_output_shapes
: *
dtype0
К
conv3d_284/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_284/kernel
Г
%conv3d_284/kernel/Read/ReadVariableOpReadVariableOpconv3d_284/kernel**
_output_shapes
: *
dtype0
v
conv3d_284/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_284/bias
o
#conv3d_284/bias/Read/ReadVariableOpReadVariableOpconv3d_284/bias*
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
VARIABLE_VALUEconv3d_276/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_276/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_277/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_277/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_278/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_278/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_279/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_279/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_60/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_60/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_280/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_280/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_281/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_281/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_282/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_282/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_283/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_283/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_284/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_284/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_276/kernelconv3d_276/biasconv3d_277/kernelconv3d_277/biasconv3d_278/kernelconv3d_278/biasconv3d_279/kernelconv3d_279/biasdense_60/kerneldense_60/biasconv3d_280/kernelconv3d_280/biasconv3d_281/kernelconv3d_281/biasconv3d_282/kernelconv3d_282/biasconv3d_283/kernelconv3d_283/biasconv3d_284/kernelconv3d_284/bias* 
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
&__inference_signature_wrapper_14544393
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
░
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_276/kernel/Read/ReadVariableOp#conv3d_276/bias/Read/ReadVariableOp%conv3d_277/kernel/Read/ReadVariableOp#conv3d_277/bias/Read/ReadVariableOp%conv3d_278/kernel/Read/ReadVariableOp#conv3d_278/bias/Read/ReadVariableOp%conv3d_279/kernel/Read/ReadVariableOp#conv3d_279/bias/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOp%conv3d_280/kernel/Read/ReadVariableOp#conv3d_280/bias/Read/ReadVariableOp%conv3d_281/kernel/Read/ReadVariableOp#conv3d_281/bias/Read/ReadVariableOp%conv3d_282/kernel/Read/ReadVariableOp#conv3d_282/bias/Read/ReadVariableOp%conv3d_283/kernel/Read/ReadVariableOp#conv3d_283/bias/Read/ReadVariableOp%conv3d_284/kernel/Read/ReadVariableOp#conv3d_284/bias/Read/ReadVariableOpConst*!
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
!__inference__traced_save_14545255
Ы
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_276/kernelconv3d_276/biasconv3d_277/kernelconv3d_277/biasconv3d_278/kernelconv3d_278/biasconv3d_279/kernelconv3d_279/biasdense_60/kerneldense_60/biasconv3d_280/kernelconv3d_280/biasconv3d_281/kernelconv3d_281/biasconv3d_282/kernelconv3d_282/biasconv3d_283/kernelconv3d_283/biasconv3d_284/kernelconv3d_284/bias* 
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
$__inference__traced_restore_14545325БЩ
Ь
e
I__inference_reshape_121_layer_call_and_return_conditional_losses_14543602

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
╬
Е
H__inference_conv3d_277_layer_call_and_return_conditional_losses_14544892

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
H__inference_conv3d_277_layer_call_and_return_conditional_losses_14543486

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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14543473

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
-__inference_conv3d_282_layer_call_fn_14545122

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
H__inference_conv3d_282_layer_call_and_return_conditional_losses_145436732
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
ж
T
8__inference_average_pooling3d_111_layer_call_fn_14544993

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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_145434002
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
-__inference_conv3d_277_layer_call_fn_14544881

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
H__inference_conv3d_277_layer_call_and_return_conditional_losses_145434862
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
¤Т
а

F__inference_model_60_layer_call_and_return_conditional_losses_14544346	
input1
conv3d_276_14544257: !
conv3d_276_14544259: 1
conv3d_277_14544263: !
conv3d_277_14544265:1
conv3d_278_14544269:!
conv3d_278_14544271:1
conv3d_279_14544275:!
conv3d_279_14544277:#
dense_60_14544282:@@
dense_60_14544284:@1
conv3d_280_14544296:!
conv3d_280_14544298:1
conv3d_281_14544309:!
conv3d_281_14544311:1
conv3d_282_14544322:!
conv3d_282_14544324:1
conv3d_283_14544335:0 !
conv3d_283_14544337: 1
conv3d_284_14544340: !
conv3d_284_14544342:
identityИв"conv3d_276/StatefulPartitionedCallв"conv3d_277/StatefulPartitionedCallв"conv3d_278/StatefulPartitionedCallв"conv3d_279/StatefulPartitionedCallв"conv3d_280/StatefulPartitionedCallв"conv3d_281/StatefulPartitionedCallв"conv3d_282/StatefulPartitionedCallв"conv3d_283/StatefulPartitionedCallв"conv3d_284/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_266/strided_slice/stack╣
2tf.__operators__.getitem_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_266/strided_slice/stack_1╣
2tf.__operators__.getitem_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_266/strided_slice/stack_2С
*tf.__operators__.getitem_266/strided_sliceStridedSliceinput9tf.__operators__.getitem_266/strided_slice/stack:output:0;tf.__operators__.getitem_266/strided_slice/stack_1:output:0;tf.__operators__.getitem_266/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_266/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_266/strided_slice:output:0*
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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_145434402%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_267/strided_slice/stack╣
2tf.__operators__.getitem_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_267/strided_slice/stack_1╣
2tf.__operators__.getitem_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_267/strided_slice/stack_2С
*tf.__operators__.getitem_267/strided_sliceStridedSliceinput9tf.__operators__.getitem_267/strided_slice/stack:output:0;tf.__operators__.getitem_267/strided_slice/stack_1:output:0;tf.__operators__.getitem_267/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_267/strided_slicex
tf.concat_325/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_325/concat/axisЖ
tf.concat_325/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_267/strided_slice:output:0"tf.concat_325/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_325/concat╥
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCalltf.concat_325/concat:output:0conv3d_276_14544257conv3d_276_14544259*
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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_145434592$
"conv3d_276/StatefulPartitionedCall╣
%average_pooling3d_108/PartitionedCallPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_145434732'
%average_pooling3d_108/PartitionedCallу
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_108/PartitionedCall:output:0conv3d_277_14544263conv3d_277_14544265*
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
H__inference_conv3d_277_layer_call_and_return_conditional_losses_145434862$
"conv3d_277/StatefulPartitionedCall╣
%average_pooling3d_109/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_145435002'
%average_pooling3d_109/PartitionedCallу
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_109/PartitionedCall:output:0conv3d_278_14544269conv3d_278_14544271*
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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_145435132$
"conv3d_278/StatefulPartitionedCall╣
%average_pooling3d_110/PartitionedCallPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_145435272'
%average_pooling3d_110/PartitionedCallу
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_110/PartitionedCall:output:0conv3d_279_14544275conv3d_279_14544277*
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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_145435402$
"conv3d_279/StatefulPartitionedCall╣
%average_pooling3d_111/PartitionedCallPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_145435542'
%average_pooling3d_111/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_111/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_145435682
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_14544282dense_60_14544284*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_145435812"
 dense_60/StatefulPartitionedCallЩ
reshape_121/PartitionedCallPartitionedCall)dense_60/StatefulPartitionedCall:output:0*
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_145436022
reshape_121/PartitionedCallе
tf.reshape_384/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_384/Reshape/shape╥
tf.reshape_384/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_384/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_384/Reshapeб
tf.tile_192/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_192/Tile/multiples╝
tf.tile_192/TileTiletf.reshape_384/Reshape:output:0#tf.tile_192/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_192/TileЩ
tf.reshape_385/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_385/Reshape/shape╗
tf.reshape_385/ReshapeReshapetf.tile_192/Tile:output:0%tf.reshape_385/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_385/Reshapex
tf.concat_326/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_326/concat/axisё
tf.concat_326/concatConcatV2tf.reshape_385/Reshape:output:0+conv3d_279/StatefulPartitionedCall:output:0"tf.concat_326/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_326/concat╥
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCalltf.concat_326/concat:output:0conv3d_280_14544296conv3d_280_14544298*
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
H__inference_conv3d_280_layer_call_and_return_conditional_losses_145436232$
"conv3d_280/StatefulPartitionedCallе
tf.reshape_386/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_386/Reshape/shape┘
tf.reshape_386/ReshapeReshape+conv3d_280/StatefulPartitionedCall:output:0%tf.reshape_386/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_386/Reshapeб
tf.tile_193/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_193/Tile/multiples╝
tf.tile_193/TileTiletf.reshape_386/Reshape:output:0#tf.tile_193/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_193/TileЩ
tf.reshape_387/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_387/Reshape/shape╗
tf.reshape_387/ReshapeReshapetf.tile_193/Tile:output:0%tf.reshape_387/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_387/Reshapex
tf.concat_327/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_327/concat/axisё
tf.concat_327/concatConcatV2tf.reshape_387/Reshape:output:0+conv3d_278/StatefulPartitionedCall:output:0"tf.concat_327/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_327/concat╥
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCalltf.concat_327/concat:output:0conv3d_281_14544309conv3d_281_14544311*
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
H__inference_conv3d_281_layer_call_and_return_conditional_losses_145436482$
"conv3d_281/StatefulPartitionedCallе
tf.reshape_388/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_388/Reshape/shape┘
tf.reshape_388/ReshapeReshape+conv3d_281/StatefulPartitionedCall:output:0%tf.reshape_388/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_388/Reshapeб
tf.tile_194/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_194/Tile/multiples╝
tf.tile_194/TileTiletf.reshape_388/Reshape:output:0#tf.tile_194/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_194/TileЩ
tf.reshape_389/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_389/Reshape/shape╗
tf.reshape_389/ReshapeReshapetf.tile_194/Tile:output:0%tf.reshape_389/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_389/Reshapex
tf.concat_328/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_328/concat/axisё
tf.concat_328/concatConcatV2tf.reshape_389/Reshape:output:0+conv3d_277/StatefulPartitionedCall:output:0"tf.concat_328/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_328/concat╥
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCalltf.concat_328/concat:output:0conv3d_282_14544322conv3d_282_14544324*
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
H__inference_conv3d_282_layer_call_and_return_conditional_losses_145436732$
"conv3d_282/StatefulPartitionedCallе
tf.reshape_390/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_390/Reshape/shape┘
tf.reshape_390/ReshapeReshape+conv3d_282/StatefulPartitionedCall:output:0%tf.reshape_390/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_390/Reshapeб
tf.tile_195/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_195/Tile/multiples╝
tf.tile_195/TileTiletf.reshape_390/Reshape:output:0#tf.tile_195/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_195/TileЩ
tf.reshape_391/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_391/Reshape/shape╗
tf.reshape_391/ReshapeReshapetf.tile_195/Tile:output:0%tf.reshape_391/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_391/Reshapex
tf.concat_329/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_329/concat/axisё
tf.concat_329/concatConcatV2tf.reshape_391/Reshape:output:0+conv3d_276/StatefulPartitionedCall:output:0"tf.concat_329/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_329/concat╥
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCalltf.concat_329/concat:output:0conv3d_283_14544335conv3d_283_14544337*
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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_145436982$
"conv3d_283/StatefulPartitionedCallр
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_284_14544340conv3d_284_14544342*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_145437142$
"conv3d_284/StatefulPartitionedCallТ
IdentityIdentity+conv3d_284/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
г
є
+__inference_model_60_layer_call_fn_14544438

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
F__inference_model_60_layer_call_and_return_conditional_losses_145437212
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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_14544844

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
ж
T
8__inference_average_pooling3d_109_layer_call_fn_14544897

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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_145433402
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
╓
Е
H__inference_conv3d_284_layer_call_and_return_conditional_losses_14545172

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
Ь
e
I__inference_reshape_120_layer_call_and_return_conditional_losses_14543568

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
БУ
б

F__inference_model_60_layer_call_and_return_conditional_losses_14544052

inputs1
conv3d_276_14543963: !
conv3d_276_14543965: 1
conv3d_277_14543969: !
conv3d_277_14543971:1
conv3d_278_14543975:!
conv3d_278_14543977:1
conv3d_279_14543981:!
conv3d_279_14543983:#
dense_60_14543988:@@
dense_60_14543990:@1
conv3d_280_14544002:!
conv3d_280_14544004:1
conv3d_281_14544015:!
conv3d_281_14544017:1
conv3d_282_14544028:!
conv3d_282_14544030:1
conv3d_283_14544041:0 !
conv3d_283_14544043: 1
conv3d_284_14544046: !
conv3d_284_14544048:
identityИв"conv3d_276/StatefulPartitionedCallв"conv3d_277/StatefulPartitionedCallв"conv3d_278/StatefulPartitionedCallв"conv3d_279/StatefulPartitionedCallв"conv3d_280/StatefulPartitionedCallв"conv3d_281/StatefulPartitionedCallв"conv3d_282/StatefulPartitionedCallв"conv3d_283/StatefulPartitionedCallв"conv3d_284/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_266/strided_slice/stack╣
2tf.__operators__.getitem_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_266/strided_slice/stack_1╣
2tf.__operators__.getitem_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_266/strided_slice/stack_2Т
*tf.__operators__.getitem_266/strided_sliceStridedSliceinputs9tf.__operators__.getitem_266/strided_slice/stack:output:0;tf.__operators__.getitem_266/strided_slice/stack_1:output:0;tf.__operators__.getitem_266/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_266/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_266/strided_slice:output:0*
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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_145434402%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_267/strided_slice/stack╣
2tf.__operators__.getitem_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_267/strided_slice/stack_1╣
2tf.__operators__.getitem_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_267/strided_slice/stack_2Т
*tf.__operators__.getitem_267/strided_sliceStridedSliceinputs9tf.__operators__.getitem_267/strided_slice/stack:output:0;tf.__operators__.getitem_267/strided_slice/stack_1:output:0;tf.__operators__.getitem_267/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_267/strided_slicex
tf.concat_325/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_325/concat/axisЖ
tf.concat_325/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_267/strided_slice:output:0"tf.concat_325/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_325/concat╥
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCalltf.concat_325/concat:output:0conv3d_276_14543963conv3d_276_14543965*
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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_145434592$
"conv3d_276/StatefulPartitionedCall╣
%average_pooling3d_108/PartitionedCallPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_145434732'
%average_pooling3d_108/PartitionedCallу
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_108/PartitionedCall:output:0conv3d_277_14543969conv3d_277_14543971*
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
H__inference_conv3d_277_layer_call_and_return_conditional_losses_145434862$
"conv3d_277/StatefulPartitionedCall╣
%average_pooling3d_109/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_145435002'
%average_pooling3d_109/PartitionedCallу
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_109/PartitionedCall:output:0conv3d_278_14543975conv3d_278_14543977*
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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_145435132$
"conv3d_278/StatefulPartitionedCall╣
%average_pooling3d_110/PartitionedCallPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_145435272'
%average_pooling3d_110/PartitionedCallу
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_110/PartitionedCall:output:0conv3d_279_14543981conv3d_279_14543983*
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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_145435402$
"conv3d_279/StatefulPartitionedCall╣
%average_pooling3d_111/PartitionedCallPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_145435542'
%average_pooling3d_111/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_111/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_145435682
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_14543988dense_60_14543990*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_145435812"
 dense_60/StatefulPartitionedCallЩ
reshape_121/PartitionedCallPartitionedCall)dense_60/StatefulPartitionedCall:output:0*
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_145436022
reshape_121/PartitionedCallе
tf.reshape_384/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_384/Reshape/shape╥
tf.reshape_384/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_384/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_384/Reshapeб
tf.tile_192/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_192/Tile/multiples╝
tf.tile_192/TileTiletf.reshape_384/Reshape:output:0#tf.tile_192/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_192/TileЩ
tf.reshape_385/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_385/Reshape/shape╗
tf.reshape_385/ReshapeReshapetf.tile_192/Tile:output:0%tf.reshape_385/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_385/Reshapex
tf.concat_326/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_326/concat/axisё
tf.concat_326/concatConcatV2tf.reshape_385/Reshape:output:0+conv3d_279/StatefulPartitionedCall:output:0"tf.concat_326/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_326/concat╥
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCalltf.concat_326/concat:output:0conv3d_280_14544002conv3d_280_14544004*
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
H__inference_conv3d_280_layer_call_and_return_conditional_losses_145436232$
"conv3d_280/StatefulPartitionedCallе
tf.reshape_386/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_386/Reshape/shape┘
tf.reshape_386/ReshapeReshape+conv3d_280/StatefulPartitionedCall:output:0%tf.reshape_386/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_386/Reshapeб
tf.tile_193/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_193/Tile/multiples╝
tf.tile_193/TileTiletf.reshape_386/Reshape:output:0#tf.tile_193/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_193/TileЩ
tf.reshape_387/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_387/Reshape/shape╗
tf.reshape_387/ReshapeReshapetf.tile_193/Tile:output:0%tf.reshape_387/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_387/Reshapex
tf.concat_327/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_327/concat/axisё
tf.concat_327/concatConcatV2tf.reshape_387/Reshape:output:0+conv3d_278/StatefulPartitionedCall:output:0"tf.concat_327/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_327/concat╥
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCalltf.concat_327/concat:output:0conv3d_281_14544015conv3d_281_14544017*
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
H__inference_conv3d_281_layer_call_and_return_conditional_losses_145436482$
"conv3d_281/StatefulPartitionedCallе
tf.reshape_388/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_388/Reshape/shape┘
tf.reshape_388/ReshapeReshape+conv3d_281/StatefulPartitionedCall:output:0%tf.reshape_388/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_388/Reshapeб
tf.tile_194/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_194/Tile/multiples╝
tf.tile_194/TileTiletf.reshape_388/Reshape:output:0#tf.tile_194/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_194/TileЩ
tf.reshape_389/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_389/Reshape/shape╗
tf.reshape_389/ReshapeReshapetf.tile_194/Tile:output:0%tf.reshape_389/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_389/Reshapex
tf.concat_328/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_328/concat/axisё
tf.concat_328/concatConcatV2tf.reshape_389/Reshape:output:0+conv3d_277/StatefulPartitionedCall:output:0"tf.concat_328/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_328/concat╥
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCalltf.concat_328/concat:output:0conv3d_282_14544028conv3d_282_14544030*
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
H__inference_conv3d_282_layer_call_and_return_conditional_losses_145436732$
"conv3d_282/StatefulPartitionedCallе
tf.reshape_390/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_390/Reshape/shape┘
tf.reshape_390/ReshapeReshape+conv3d_282/StatefulPartitionedCall:output:0%tf.reshape_390/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_390/Reshapeб
tf.tile_195/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_195/Tile/multiples╝
tf.tile_195/TileTiletf.reshape_390/Reshape:output:0#tf.tile_195/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_195/TileЩ
tf.reshape_391/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_391/Reshape/shape╗
tf.reshape_391/ReshapeReshapetf.tile_195/Tile:output:0%tf.reshape_391/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_391/Reshapex
tf.concat_329/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_329/concat/axisё
tf.concat_329/concatConcatV2tf.reshape_391/Reshape:output:0+conv3d_276/StatefulPartitionedCall:output:0"tf.concat_329/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_329/concat╥
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCalltf.concat_329/concat:output:0conv3d_283_14544041conv3d_283_14544043*
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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_145436982$
"conv3d_283/StatefulPartitionedCallр
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_284_14544046conv3d_284_14544048*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_145437142$
"conv3d_284/StatefulPartitionedCallТ
IdentityIdentity+conv3d_284/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╜ё
╡
F__inference_model_60_layer_call_and_return_conditional_losses_14544807

inputsG
)conv3d_276_conv3d_readvariableop_resource: 8
*conv3d_276_biasadd_readvariableop_resource: G
)conv3d_277_conv3d_readvariableop_resource: 8
*conv3d_277_biasadd_readvariableop_resource:G
)conv3d_278_conv3d_readvariableop_resource:8
*conv3d_278_biasadd_readvariableop_resource:G
)conv3d_279_conv3d_readvariableop_resource:8
*conv3d_279_biasadd_readvariableop_resource:9
'dense_60_matmul_readvariableop_resource:@@6
(dense_60_biasadd_readvariableop_resource:@G
)conv3d_280_conv3d_readvariableop_resource:8
*conv3d_280_biasadd_readvariableop_resource:G
)conv3d_281_conv3d_readvariableop_resource:8
*conv3d_281_biasadd_readvariableop_resource:G
)conv3d_282_conv3d_readvariableop_resource:8
*conv3d_282_biasadd_readvariableop_resource:G
)conv3d_283_conv3d_readvariableop_resource:0 8
*conv3d_283_biasadd_readvariableop_resource: G
)conv3d_284_conv3d_readvariableop_resource: 8
*conv3d_284_biasadd_readvariableop_resource:
identityИв!conv3d_276/BiasAdd/ReadVariableOpв conv3d_276/Conv3D/ReadVariableOpв!conv3d_277/BiasAdd/ReadVariableOpв conv3d_277/Conv3D/ReadVariableOpв!conv3d_278/BiasAdd/ReadVariableOpв conv3d_278/Conv3D/ReadVariableOpв!conv3d_279/BiasAdd/ReadVariableOpв conv3d_279/Conv3D/ReadVariableOpв!conv3d_280/BiasAdd/ReadVariableOpв conv3d_280/Conv3D/ReadVariableOpв!conv3d_281/BiasAdd/ReadVariableOpв conv3d_281/Conv3D/ReadVariableOpв!conv3d_282/BiasAdd/ReadVariableOpв conv3d_282/Conv3D/ReadVariableOpв!conv3d_283/BiasAdd/ReadVariableOpв conv3d_283/Conv3D/ReadVariableOpв!conv3d_284/BiasAdd/ReadVariableOpв conv3d_284/Conv3D/ReadVariableOpвdense_60/BiasAdd/ReadVariableOpвdense_60/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_266/strided_slice/stack╣
2tf.__operators__.getitem_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_266/strided_slice/stack_1╣
2tf.__operators__.getitem_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_266/strided_slice/stack_2Т
*tf.__operators__.getitem_266/strided_sliceStridedSliceinputs9tf.__operators__.getitem_266/strided_slice/stack:output:0;tf.__operators__.getitem_266/strided_slice/stack_1:output:0;tf.__operators__.getitem_266/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_266/strided_slice{
range_conversion_60/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_60/sub/y╨
range_conversion_60/subSub3tf.__operators__.getitem_266/strided_slice:output:0"range_conversion_60/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/subГ
range_conversion_60/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_60/truediv/y╚
range_conversion_60/truedivRealDivrange_conversion_60/sub:z:0&range_conversion_60/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/truediv{
range_conversion_60/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_60/mul/y╝
range_conversion_60/mulMulrange_conversion_60/truediv:z:0"range_conversion_60/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/mul{
range_conversion_60/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_60/add/y║
range_conversion_60/addAddV2range_conversion_60/mul:z:0"range_conversion_60/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/add╡
0tf.__operators__.getitem_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_267/strided_slice/stack╣
2tf.__operators__.getitem_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_267/strided_slice/stack_1╣
2tf.__operators__.getitem_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_267/strided_slice/stack_2Т
*tf.__operators__.getitem_267/strided_sliceStridedSliceinputs9tf.__operators__.getitem_267/strided_slice/stack:output:0;tf.__operators__.getitem_267/strided_slice/stack_1:output:0;tf.__operators__.getitem_267/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_267/strided_slicex
tf.concat_325/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_325/concat/axisї
tf.concat_325/concatConcatV2range_conversion_60/add:z:03tf.__operators__.getitem_267/strided_slice:output:0"tf.concat_325/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_325/concat║
 conv3d_276/Conv3D/ReadVariableOpReadVariableOp)conv3d_276_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_276/Conv3D/ReadVariableOp°
conv3d_276/Conv3DConv3Dtf.concat_325/concat:output:0(conv3d_276/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_276/Conv3Dн
!conv3d_276/BiasAdd/ReadVariableOpReadVariableOp*conv3d_276_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_276/BiasAdd/ReadVariableOp╧
conv3d_276/BiasAddBiasAddconv3d_276/Conv3D:output:0)conv3d_276/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_276/BiasAddС
conv3d_276/SoftplusSoftplusconv3d_276/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_276/Softplusй
$average_pooling3d_108/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_108/transpose/perm▀
average_pooling3d_108/transpose	Transpose!conv3d_276/Softplus:activations:0-average_pooling3d_108/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_108/transposeЁ
average_pooling3d_108/AvgPool3D	AvgPool3D#average_pooling3d_108/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_108/AvgPool3Dн
&average_pooling3d_108/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_108/transpose_1/permь
!average_pooling3d_108/transpose_1	Transpose(average_pooling3d_108/AvgPool3D:output:0/average_pooling3d_108/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_108/transpose_1║
 conv3d_277/Conv3D/ReadVariableOpReadVariableOp)conv3d_277_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_277/Conv3D/ReadVariableOpА
conv3d_277/Conv3DConv3D%average_pooling3d_108/transpose_1:y:0(conv3d_277/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_277/Conv3Dн
!conv3d_277/BiasAdd/ReadVariableOpReadVariableOp*conv3d_277_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_277/BiasAdd/ReadVariableOp╧
conv3d_277/BiasAddBiasAddconv3d_277/Conv3D:output:0)conv3d_277/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_277/BiasAddС
conv3d_277/SoftplusSoftplusconv3d_277/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_277/Softplusй
$average_pooling3d_109/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_109/transpose/perm▀
average_pooling3d_109/transpose	Transpose!conv3d_277/Softplus:activations:0-average_pooling3d_109/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_109/transposeЁ
average_pooling3d_109/AvgPool3D	AvgPool3D#average_pooling3d_109/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_109/AvgPool3Dн
&average_pooling3d_109/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_109/transpose_1/permь
!average_pooling3d_109/transpose_1	Transpose(average_pooling3d_109/AvgPool3D:output:0/average_pooling3d_109/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_109/transpose_1║
 conv3d_278/Conv3D/ReadVariableOpReadVariableOp)conv3d_278_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_278/Conv3D/ReadVariableOpА
conv3d_278/Conv3DConv3D%average_pooling3d_109/transpose_1:y:0(conv3d_278/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_278/Conv3Dн
!conv3d_278/BiasAdd/ReadVariableOpReadVariableOp*conv3d_278_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_278/BiasAdd/ReadVariableOp╧
conv3d_278/BiasAddBiasAddconv3d_278/Conv3D:output:0)conv3d_278/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_278/BiasAddС
conv3d_278/SoftplusSoftplusconv3d_278/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_278/Softplusй
$average_pooling3d_110/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_110/transpose/perm▀
average_pooling3d_110/transpose	Transpose!conv3d_278/Softplus:activations:0-average_pooling3d_110/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_110/transposeЁ
average_pooling3d_110/AvgPool3D	AvgPool3D#average_pooling3d_110/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_110/AvgPool3Dн
&average_pooling3d_110/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_110/transpose_1/permь
!average_pooling3d_110/transpose_1	Transpose(average_pooling3d_110/AvgPool3D:output:0/average_pooling3d_110/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_110/transpose_1║
 conv3d_279/Conv3D/ReadVariableOpReadVariableOp)conv3d_279_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_279/Conv3D/ReadVariableOpА
conv3d_279/Conv3DConv3D%average_pooling3d_110/transpose_1:y:0(conv3d_279/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_279/Conv3Dн
!conv3d_279/BiasAdd/ReadVariableOpReadVariableOp*conv3d_279_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_279/BiasAdd/ReadVariableOp╧
conv3d_279/BiasAddBiasAddconv3d_279/Conv3D:output:0)conv3d_279/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_279/BiasAddС
conv3d_279/SoftplusSoftplusconv3d_279/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_279/Softplusй
$average_pooling3d_111/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_111/transpose/perm▀
average_pooling3d_111/transpose	Transpose!conv3d_279/Softplus:activations:0-average_pooling3d_111/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_111/transposeЁ
average_pooling3d_111/AvgPool3D	AvgPool3D#average_pooling3d_111/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_111/AvgPool3Dн
&average_pooling3d_111/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_111/transpose_1/permь
!average_pooling3d_111/transpose_1	Transpose(average_pooling3d_111/AvgPool3D:output:0/average_pooling3d_111/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_111/transpose_1{
reshape_120/ShapeShape%average_pooling3d_111/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_120/ShapeМ
reshape_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_120/strided_slice/stackР
!reshape_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_120/strided_slice/stack_1Р
!reshape_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_120/strided_slice/stack_2к
reshape_120/strided_sliceStridedSlicereshape_120/Shape:output:0(reshape_120/strided_slice/stack:output:0*reshape_120/strided_slice/stack_1:output:0*reshape_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_120/strided_slice|
reshape_120/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_120/Reshape/shape/1╢
reshape_120/Reshape/shapePack"reshape_120/strided_slice:output:0$reshape_120/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_120/Reshape/shape▓
reshape_120/ReshapeReshape%average_pooling3d_111/transpose_1:y:0"reshape_120/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_120/Reshapeи
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_60/MatMul/ReadVariableOpд
dense_60/MatMulMatMulreshape_120/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_60/MatMulз
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_60/BiasAdd/ReadVariableOpе
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_60/BiasAdd
dense_60/SoftplusSoftplusdense_60/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_60/Softplusu
reshape_121/ShapeShapedense_60/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_121/ShapeМ
reshape_121/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_121/strided_slice/stackР
!reshape_121/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_121/strided_slice/stack_1Р
!reshape_121/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_121/strided_slice/stack_2к
reshape_121/strided_sliceStridedSlicereshape_121/Shape:output:0(reshape_121/strided_slice/stack:output:0*reshape_121/strided_slice/stack_1:output:0*reshape_121/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_121/strided_slice|
reshape_121/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/1|
reshape_121/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/2|
reshape_121/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/3|
reshape_121/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/4и
reshape_121/Reshape/shapePack"reshape_121/strided_slice:output:0$reshape_121/Reshape/shape/1:output:0$reshape_121/Reshape/shape/2:output:0$reshape_121/Reshape/shape/3:output:0$reshape_121/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_121/Reshape/shape╕
reshape_121/ReshapeReshapedense_60/Softplus:activations:0"reshape_121/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_121/Reshapeе
tf.reshape_384/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_384/Reshape/shape╩
tf.reshape_384/ReshapeReshapereshape_121/Reshape:output:0%tf.reshape_384/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_384/Reshapeб
tf.tile_192/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_192/Tile/multiples╝
tf.tile_192/TileTiletf.reshape_384/Reshape:output:0#tf.tile_192/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_192/TileЩ
tf.reshape_385/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_385/Reshape/shape╗
tf.reshape_385/ReshapeReshapetf.tile_192/Tile:output:0%tf.reshape_385/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_385/Reshapex
tf.concat_326/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_326/concat/axisч
tf.concat_326/concatConcatV2tf.reshape_385/Reshape:output:0!conv3d_279/Softplus:activations:0"tf.concat_326/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_326/concat║
 conv3d_280/Conv3D/ReadVariableOpReadVariableOp)conv3d_280_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_280/Conv3D/ReadVariableOp°
conv3d_280/Conv3DConv3Dtf.concat_326/concat:output:0(conv3d_280/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_280/Conv3Dн
!conv3d_280/BiasAdd/ReadVariableOpReadVariableOp*conv3d_280_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_280/BiasAdd/ReadVariableOp╧
conv3d_280/BiasAddBiasAddconv3d_280/Conv3D:output:0)conv3d_280/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_280/BiasAddС
conv3d_280/SoftplusSoftplusconv3d_280/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_280/Softplusе
tf.reshape_386/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_386/Reshape/shape╧
tf.reshape_386/ReshapeReshape!conv3d_280/Softplus:activations:0%tf.reshape_386/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_386/Reshapeб
tf.tile_193/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_193/Tile/multiples╝
tf.tile_193/TileTiletf.reshape_386/Reshape:output:0#tf.tile_193/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_193/TileЩ
tf.reshape_387/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_387/Reshape/shape╗
tf.reshape_387/ReshapeReshapetf.tile_193/Tile:output:0%tf.reshape_387/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_387/Reshapex
tf.concat_327/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_327/concat/axisч
tf.concat_327/concatConcatV2tf.reshape_387/Reshape:output:0!conv3d_278/Softplus:activations:0"tf.concat_327/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_327/concat║
 conv3d_281/Conv3D/ReadVariableOpReadVariableOp)conv3d_281_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_281/Conv3D/ReadVariableOp°
conv3d_281/Conv3DConv3Dtf.concat_327/concat:output:0(conv3d_281/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_281/Conv3Dн
!conv3d_281/BiasAdd/ReadVariableOpReadVariableOp*conv3d_281_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_281/BiasAdd/ReadVariableOp╧
conv3d_281/BiasAddBiasAddconv3d_281/Conv3D:output:0)conv3d_281/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_281/BiasAddС
conv3d_281/SoftplusSoftplusconv3d_281/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_281/Softplusе
tf.reshape_388/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_388/Reshape/shape╧
tf.reshape_388/ReshapeReshape!conv3d_281/Softplus:activations:0%tf.reshape_388/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_388/Reshapeб
tf.tile_194/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_194/Tile/multiples╝
tf.tile_194/TileTiletf.reshape_388/Reshape:output:0#tf.tile_194/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_194/TileЩ
tf.reshape_389/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_389/Reshape/shape╗
tf.reshape_389/ReshapeReshapetf.tile_194/Tile:output:0%tf.reshape_389/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_389/Reshapex
tf.concat_328/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_328/concat/axisч
tf.concat_328/concatConcatV2tf.reshape_389/Reshape:output:0!conv3d_277/Softplus:activations:0"tf.concat_328/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_328/concat║
 conv3d_282/Conv3D/ReadVariableOpReadVariableOp)conv3d_282_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_282/Conv3D/ReadVariableOp°
conv3d_282/Conv3DConv3Dtf.concat_328/concat:output:0(conv3d_282/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_282/Conv3Dн
!conv3d_282/BiasAdd/ReadVariableOpReadVariableOp*conv3d_282_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_282/BiasAdd/ReadVariableOp╧
conv3d_282/BiasAddBiasAddconv3d_282/Conv3D:output:0)conv3d_282/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_282/BiasAddС
conv3d_282/SoftplusSoftplusconv3d_282/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_282/Softplusе
tf.reshape_390/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_390/Reshape/shape╧
tf.reshape_390/ReshapeReshape!conv3d_282/Softplus:activations:0%tf.reshape_390/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_390/Reshapeб
tf.tile_195/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_195/Tile/multiples╝
tf.tile_195/TileTiletf.reshape_390/Reshape:output:0#tf.tile_195/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_195/TileЩ
tf.reshape_391/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_391/Reshape/shape╗
tf.reshape_391/ReshapeReshapetf.tile_195/Tile:output:0%tf.reshape_391/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_391/Reshapex
tf.concat_329/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_329/concat/axisч
tf.concat_329/concatConcatV2tf.reshape_391/Reshape:output:0!conv3d_276/Softplus:activations:0"tf.concat_329/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_329/concat║
 conv3d_283/Conv3D/ReadVariableOpReadVariableOp)conv3d_283_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_283/Conv3D/ReadVariableOp°
conv3d_283/Conv3DConv3Dtf.concat_329/concat:output:0(conv3d_283/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_283/Conv3Dн
!conv3d_283/BiasAdd/ReadVariableOpReadVariableOp*conv3d_283_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_283/BiasAdd/ReadVariableOp╧
conv3d_283/BiasAddBiasAddconv3d_283/Conv3D:output:0)conv3d_283/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_283/BiasAddС
conv3d_283/SoftplusSoftplusconv3d_283/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_283/Softplus║
 conv3d_284/Conv3D/ReadVariableOpReadVariableOp)conv3d_284_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_284/Conv3D/ReadVariableOp№
conv3d_284/Conv3DConv3D!conv3d_283/Softplus:activations:0(conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_284/Conv3Dн
!conv3d_284/BiasAdd/ReadVariableOpReadVariableOp*conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_284/BiasAdd/ReadVariableOp╧
conv3d_284/BiasAddBiasAddconv3d_284/Conv3D:output:0)conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_284/BiasAddВ
IdentityIdentityconv3d_284/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_276/BiasAdd/ReadVariableOp!^conv3d_276/Conv3D/ReadVariableOp"^conv3d_277/BiasAdd/ReadVariableOp!^conv3d_277/Conv3D/ReadVariableOp"^conv3d_278/BiasAdd/ReadVariableOp!^conv3d_278/Conv3D/ReadVariableOp"^conv3d_279/BiasAdd/ReadVariableOp!^conv3d_279/Conv3D/ReadVariableOp"^conv3d_280/BiasAdd/ReadVariableOp!^conv3d_280/Conv3D/ReadVariableOp"^conv3d_281/BiasAdd/ReadVariableOp!^conv3d_281/Conv3D/ReadVariableOp"^conv3d_282/BiasAdd/ReadVariableOp!^conv3d_282/Conv3D/ReadVariableOp"^conv3d_283/BiasAdd/ReadVariableOp!^conv3d_283/Conv3D/ReadVariableOp"^conv3d_284/BiasAdd/ReadVariableOp!^conv3d_284/Conv3D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_276/BiasAdd/ReadVariableOp!conv3d_276/BiasAdd/ReadVariableOp2D
 conv3d_276/Conv3D/ReadVariableOp conv3d_276/Conv3D/ReadVariableOp2F
!conv3d_277/BiasAdd/ReadVariableOp!conv3d_277/BiasAdd/ReadVariableOp2D
 conv3d_277/Conv3D/ReadVariableOp conv3d_277/Conv3D/ReadVariableOp2F
!conv3d_278/BiasAdd/ReadVariableOp!conv3d_278/BiasAdd/ReadVariableOp2D
 conv3d_278/Conv3D/ReadVariableOp conv3d_278/Conv3D/ReadVariableOp2F
!conv3d_279/BiasAdd/ReadVariableOp!conv3d_279/BiasAdd/ReadVariableOp2D
 conv3d_279/Conv3D/ReadVariableOp conv3d_279/Conv3D/ReadVariableOp2F
!conv3d_280/BiasAdd/ReadVariableOp!conv3d_280/BiasAdd/ReadVariableOp2D
 conv3d_280/Conv3D/ReadVariableOp conv3d_280/Conv3D/ReadVariableOp2F
!conv3d_281/BiasAdd/ReadVariableOp!conv3d_281/BiasAdd/ReadVariableOp2D
 conv3d_281/Conv3D/ReadVariableOp conv3d_281/Conv3D/ReadVariableOp2F
!conv3d_282/BiasAdd/ReadVariableOp!conv3d_282/BiasAdd/ReadVariableOp2D
 conv3d_282/Conv3D/ReadVariableOp conv3d_282/Conv3D/ReadVariableOp2F
!conv3d_283/BiasAdd/ReadVariableOp!conv3d_283/BiasAdd/ReadVariableOp2D
 conv3d_283/Conv3D/ReadVariableOp conv3d_283/Conv3D/ReadVariableOp2F
!conv3d_284/BiasAdd/ReadVariableOp!conv3d_284/BiasAdd/ReadVariableOp2D
 conv3d_284/Conv3D/ReadVariableOp conv3d_284/Conv3D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
х

o
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14544911

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
F__inference_dense_60_layer_call_and_return_conditional_losses_14545053

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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14545007

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
╒3
╛
!__inference__traced_save_14545255
file_prefix0
,savev2_conv3d_276_kernel_read_readvariableop.
*savev2_conv3d_276_bias_read_readvariableop0
,savev2_conv3d_277_kernel_read_readvariableop.
*savev2_conv3d_277_bias_read_readvariableop0
,savev2_conv3d_278_kernel_read_readvariableop.
*savev2_conv3d_278_bias_read_readvariableop0
,savev2_conv3d_279_kernel_read_readvariableop.
*savev2_conv3d_279_bias_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop0
,savev2_conv3d_280_kernel_read_readvariableop.
*savev2_conv3d_280_bias_read_readvariableop0
,savev2_conv3d_281_kernel_read_readvariableop.
*savev2_conv3d_281_bias_read_readvariableop0
,savev2_conv3d_282_kernel_read_readvariableop.
*savev2_conv3d_282_bias_read_readvariableop0
,savev2_conv3d_283_kernel_read_readvariableop.
*savev2_conv3d_283_bias_read_readvariableop0
,savev2_conv3d_284_kernel_read_readvariableop.
*savev2_conv3d_284_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_276_kernel_read_readvariableop*savev2_conv3d_276_bias_read_readvariableop,savev2_conv3d_277_kernel_read_readvariableop*savev2_conv3d_277_bias_read_readvariableop,savev2_conv3d_278_kernel_read_readvariableop*savev2_conv3d_278_bias_read_readvariableop,savev2_conv3d_279_kernel_read_readvariableop*savev2_conv3d_279_bias_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop,savev2_conv3d_280_kernel_read_readvariableop*savev2_conv3d_280_bias_read_readvariableop,savev2_conv3d_281_kernel_read_readvariableop*savev2_conv3d_281_bias_read_readvariableop,savev2_conv3d_282_kernel_read_readvariableop*savev2_conv3d_282_bias_read_readvariableop,savev2_conv3d_283_kernel_read_readvariableop*savev2_conv3d_283_bias_read_readvariableop,savev2_conv3d_284_kernel_read_readvariableop*savev2_conv3d_284_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14543310

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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14544968

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
+__inference_dense_60_layer_call_fn_14545042

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
F__inference_dense_60_layer_call_and_return_conditional_losses_145435812
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
Э
V
6__inference_range_conversion_60_layer_call_fn_14544812

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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_145434402
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_14545033

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
щ
J
.__inference_reshape_121_layer_call_fn_14545058

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
I__inference_reshape_121_layer_call_and_return_conditional_losses_145436022
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
х

o
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14544959

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
H__inference_conv3d_280_layer_call_and_return_conditional_losses_14545093

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
х

o
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14543370

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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_14544988

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
-__inference_conv3d_283_layer_call_fn_14545142

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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_145436982
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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14543500

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
БУ
б

F__inference_model_60_layer_call_and_return_conditional_losses_14543721

inputs1
conv3d_276_14543460: !
conv3d_276_14543462: 1
conv3d_277_14543487: !
conv3d_277_14543489:1
conv3d_278_14543514:!
conv3d_278_14543516:1
conv3d_279_14543541:!
conv3d_279_14543543:#
dense_60_14543582:@@
dense_60_14543584:@1
conv3d_280_14543624:!
conv3d_280_14543626:1
conv3d_281_14543649:!
conv3d_281_14543651:1
conv3d_282_14543674:!
conv3d_282_14543676:1
conv3d_283_14543699:0 !
conv3d_283_14543701: 1
conv3d_284_14543715: !
conv3d_284_14543717:
identityИв"conv3d_276/StatefulPartitionedCallв"conv3d_277/StatefulPartitionedCallв"conv3d_278/StatefulPartitionedCallв"conv3d_279/StatefulPartitionedCallв"conv3d_280/StatefulPartitionedCallв"conv3d_281/StatefulPartitionedCallв"conv3d_282/StatefulPartitionedCallв"conv3d_283/StatefulPartitionedCallв"conv3d_284/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_266/strided_slice/stack╣
2tf.__operators__.getitem_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_266/strided_slice/stack_1╣
2tf.__operators__.getitem_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_266/strided_slice/stack_2Т
*tf.__operators__.getitem_266/strided_sliceStridedSliceinputs9tf.__operators__.getitem_266/strided_slice/stack:output:0;tf.__operators__.getitem_266/strided_slice/stack_1:output:0;tf.__operators__.getitem_266/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_266/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_266/strided_slice:output:0*
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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_145434402%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_267/strided_slice/stack╣
2tf.__operators__.getitem_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_267/strided_slice/stack_1╣
2tf.__operators__.getitem_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_267/strided_slice/stack_2Т
*tf.__operators__.getitem_267/strided_sliceStridedSliceinputs9tf.__operators__.getitem_267/strided_slice/stack:output:0;tf.__operators__.getitem_267/strided_slice/stack_1:output:0;tf.__operators__.getitem_267/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_267/strided_slicex
tf.concat_325/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_325/concat/axisЖ
tf.concat_325/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_267/strided_slice:output:0"tf.concat_325/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_325/concat╥
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCalltf.concat_325/concat:output:0conv3d_276_14543460conv3d_276_14543462*
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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_145434592$
"conv3d_276/StatefulPartitionedCall╣
%average_pooling3d_108/PartitionedCallPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_145434732'
%average_pooling3d_108/PartitionedCallу
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_108/PartitionedCall:output:0conv3d_277_14543487conv3d_277_14543489*
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
H__inference_conv3d_277_layer_call_and_return_conditional_losses_145434862$
"conv3d_277/StatefulPartitionedCall╣
%average_pooling3d_109/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_145435002'
%average_pooling3d_109/PartitionedCallу
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_109/PartitionedCall:output:0conv3d_278_14543514conv3d_278_14543516*
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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_145435132$
"conv3d_278/StatefulPartitionedCall╣
%average_pooling3d_110/PartitionedCallPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_145435272'
%average_pooling3d_110/PartitionedCallу
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_110/PartitionedCall:output:0conv3d_279_14543541conv3d_279_14543543*
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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_145435402$
"conv3d_279/StatefulPartitionedCall╣
%average_pooling3d_111/PartitionedCallPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_145435542'
%average_pooling3d_111/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_111/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_145435682
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_14543582dense_60_14543584*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_145435812"
 dense_60/StatefulPartitionedCallЩ
reshape_121/PartitionedCallPartitionedCall)dense_60/StatefulPartitionedCall:output:0*
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_145436022
reshape_121/PartitionedCallе
tf.reshape_384/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_384/Reshape/shape╥
tf.reshape_384/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_384/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_384/Reshapeб
tf.tile_192/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_192/Tile/multiples╝
tf.tile_192/TileTiletf.reshape_384/Reshape:output:0#tf.tile_192/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_192/TileЩ
tf.reshape_385/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_385/Reshape/shape╗
tf.reshape_385/ReshapeReshapetf.tile_192/Tile:output:0%tf.reshape_385/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_385/Reshapex
tf.concat_326/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_326/concat/axisё
tf.concat_326/concatConcatV2tf.reshape_385/Reshape:output:0+conv3d_279/StatefulPartitionedCall:output:0"tf.concat_326/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_326/concat╥
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCalltf.concat_326/concat:output:0conv3d_280_14543624conv3d_280_14543626*
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
H__inference_conv3d_280_layer_call_and_return_conditional_losses_145436232$
"conv3d_280/StatefulPartitionedCallе
tf.reshape_386/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_386/Reshape/shape┘
tf.reshape_386/ReshapeReshape+conv3d_280/StatefulPartitionedCall:output:0%tf.reshape_386/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_386/Reshapeб
tf.tile_193/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_193/Tile/multiples╝
tf.tile_193/TileTiletf.reshape_386/Reshape:output:0#tf.tile_193/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_193/TileЩ
tf.reshape_387/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_387/Reshape/shape╗
tf.reshape_387/ReshapeReshapetf.tile_193/Tile:output:0%tf.reshape_387/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_387/Reshapex
tf.concat_327/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_327/concat/axisё
tf.concat_327/concatConcatV2tf.reshape_387/Reshape:output:0+conv3d_278/StatefulPartitionedCall:output:0"tf.concat_327/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_327/concat╥
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCalltf.concat_327/concat:output:0conv3d_281_14543649conv3d_281_14543651*
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
H__inference_conv3d_281_layer_call_and_return_conditional_losses_145436482$
"conv3d_281/StatefulPartitionedCallе
tf.reshape_388/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_388/Reshape/shape┘
tf.reshape_388/ReshapeReshape+conv3d_281/StatefulPartitionedCall:output:0%tf.reshape_388/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_388/Reshapeб
tf.tile_194/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_194/Tile/multiples╝
tf.tile_194/TileTiletf.reshape_388/Reshape:output:0#tf.tile_194/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_194/TileЩ
tf.reshape_389/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_389/Reshape/shape╗
tf.reshape_389/ReshapeReshapetf.tile_194/Tile:output:0%tf.reshape_389/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_389/Reshapex
tf.concat_328/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_328/concat/axisё
tf.concat_328/concatConcatV2tf.reshape_389/Reshape:output:0+conv3d_277/StatefulPartitionedCall:output:0"tf.concat_328/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_328/concat╥
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCalltf.concat_328/concat:output:0conv3d_282_14543674conv3d_282_14543676*
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
H__inference_conv3d_282_layer_call_and_return_conditional_losses_145436732$
"conv3d_282/StatefulPartitionedCallе
tf.reshape_390/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_390/Reshape/shape┘
tf.reshape_390/ReshapeReshape+conv3d_282/StatefulPartitionedCall:output:0%tf.reshape_390/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_390/Reshapeб
tf.tile_195/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_195/Tile/multiples╝
tf.tile_195/TileTiletf.reshape_390/Reshape:output:0#tf.tile_195/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_195/TileЩ
tf.reshape_391/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_391/Reshape/shape╗
tf.reshape_391/ReshapeReshapetf.tile_195/Tile:output:0%tf.reshape_391/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_391/Reshapex
tf.concat_329/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_329/concat/axisё
tf.concat_329/concatConcatV2tf.reshape_391/Reshape:output:0+conv3d_276/StatefulPartitionedCall:output:0"tf.concat_329/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_329/concat╥
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCalltf.concat_329/concat:output:0conv3d_283_14543699conv3d_283_14543701*
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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_145436982$
"conv3d_283/StatefulPartitionedCallр
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_284_14543715conv3d_284_14543717*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_145437142$
"conv3d_284/StatefulPartitionedCallТ
IdentityIdentity+conv3d_284/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_280_layer_call_and_return_conditional_losses_14543623

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
-__inference_conv3d_276_layer_call_fn_14544833

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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_145434592
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
-__inference_conv3d_281_layer_call_fn_14545102

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
H__inference_conv3d_281_layer_call_and_return_conditional_losses_145436482
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
х

o
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14543400

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
-__inference_conv3d_278_layer_call_fn_14544929

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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_145435132
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
╫	
q
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_14543440

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
H__inference_conv3d_281_layer_call_and_return_conditional_losses_14543648

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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_14543459

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
╫	
q
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_14544824

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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_14545153

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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_14543513

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
Х
T
8__inference_average_pooling3d_108_layer_call_fn_14544854

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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_145434732
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
ж
T
8__inference_average_pooling3d_108_layer_call_fn_14544849

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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_145433102
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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_14543698

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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_14544940

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
╜ё
╡
F__inference_model_60_layer_call_and_return_conditional_losses_14544645

inputsG
)conv3d_276_conv3d_readvariableop_resource: 8
*conv3d_276_biasadd_readvariableop_resource: G
)conv3d_277_conv3d_readvariableop_resource: 8
*conv3d_277_biasadd_readvariableop_resource:G
)conv3d_278_conv3d_readvariableop_resource:8
*conv3d_278_biasadd_readvariableop_resource:G
)conv3d_279_conv3d_readvariableop_resource:8
*conv3d_279_biasadd_readvariableop_resource:9
'dense_60_matmul_readvariableop_resource:@@6
(dense_60_biasadd_readvariableop_resource:@G
)conv3d_280_conv3d_readvariableop_resource:8
*conv3d_280_biasadd_readvariableop_resource:G
)conv3d_281_conv3d_readvariableop_resource:8
*conv3d_281_biasadd_readvariableop_resource:G
)conv3d_282_conv3d_readvariableop_resource:8
*conv3d_282_biasadd_readvariableop_resource:G
)conv3d_283_conv3d_readvariableop_resource:0 8
*conv3d_283_biasadd_readvariableop_resource: G
)conv3d_284_conv3d_readvariableop_resource: 8
*conv3d_284_biasadd_readvariableop_resource:
identityИв!conv3d_276/BiasAdd/ReadVariableOpв conv3d_276/Conv3D/ReadVariableOpв!conv3d_277/BiasAdd/ReadVariableOpв conv3d_277/Conv3D/ReadVariableOpв!conv3d_278/BiasAdd/ReadVariableOpв conv3d_278/Conv3D/ReadVariableOpв!conv3d_279/BiasAdd/ReadVariableOpв conv3d_279/Conv3D/ReadVariableOpв!conv3d_280/BiasAdd/ReadVariableOpв conv3d_280/Conv3D/ReadVariableOpв!conv3d_281/BiasAdd/ReadVariableOpв conv3d_281/Conv3D/ReadVariableOpв!conv3d_282/BiasAdd/ReadVariableOpв conv3d_282/Conv3D/ReadVariableOpв!conv3d_283/BiasAdd/ReadVariableOpв conv3d_283/Conv3D/ReadVariableOpв!conv3d_284/BiasAdd/ReadVariableOpв conv3d_284/Conv3D/ReadVariableOpвdense_60/BiasAdd/ReadVariableOpвdense_60/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_266/strided_slice/stack╣
2tf.__operators__.getitem_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_266/strided_slice/stack_1╣
2tf.__operators__.getitem_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_266/strided_slice/stack_2Т
*tf.__operators__.getitem_266/strided_sliceStridedSliceinputs9tf.__operators__.getitem_266/strided_slice/stack:output:0;tf.__operators__.getitem_266/strided_slice/stack_1:output:0;tf.__operators__.getitem_266/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_266/strided_slice{
range_conversion_60/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_60/sub/y╨
range_conversion_60/subSub3tf.__operators__.getitem_266/strided_slice:output:0"range_conversion_60/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/subГ
range_conversion_60/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_60/truediv/y╚
range_conversion_60/truedivRealDivrange_conversion_60/sub:z:0&range_conversion_60/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/truediv{
range_conversion_60/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_60/mul/y╝
range_conversion_60/mulMulrange_conversion_60/truediv:z:0"range_conversion_60/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/mul{
range_conversion_60/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_60/add/y║
range_conversion_60/addAddV2range_conversion_60/mul:z:0"range_conversion_60/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_60/add╡
0tf.__operators__.getitem_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_267/strided_slice/stack╣
2tf.__operators__.getitem_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_267/strided_slice/stack_1╣
2tf.__operators__.getitem_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_267/strided_slice/stack_2Т
*tf.__operators__.getitem_267/strided_sliceStridedSliceinputs9tf.__operators__.getitem_267/strided_slice/stack:output:0;tf.__operators__.getitem_267/strided_slice/stack_1:output:0;tf.__operators__.getitem_267/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_267/strided_slicex
tf.concat_325/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_325/concat/axisї
tf.concat_325/concatConcatV2range_conversion_60/add:z:03tf.__operators__.getitem_267/strided_slice:output:0"tf.concat_325/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_325/concat║
 conv3d_276/Conv3D/ReadVariableOpReadVariableOp)conv3d_276_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_276/Conv3D/ReadVariableOp°
conv3d_276/Conv3DConv3Dtf.concat_325/concat:output:0(conv3d_276/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_276/Conv3Dн
!conv3d_276/BiasAdd/ReadVariableOpReadVariableOp*conv3d_276_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_276/BiasAdd/ReadVariableOp╧
conv3d_276/BiasAddBiasAddconv3d_276/Conv3D:output:0)conv3d_276/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_276/BiasAddС
conv3d_276/SoftplusSoftplusconv3d_276/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_276/Softplusй
$average_pooling3d_108/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_108/transpose/perm▀
average_pooling3d_108/transpose	Transpose!conv3d_276/Softplus:activations:0-average_pooling3d_108/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_108/transposeЁ
average_pooling3d_108/AvgPool3D	AvgPool3D#average_pooling3d_108/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_108/AvgPool3Dн
&average_pooling3d_108/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_108/transpose_1/permь
!average_pooling3d_108/transpose_1	Transpose(average_pooling3d_108/AvgPool3D:output:0/average_pooling3d_108/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_108/transpose_1║
 conv3d_277/Conv3D/ReadVariableOpReadVariableOp)conv3d_277_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_277/Conv3D/ReadVariableOpА
conv3d_277/Conv3DConv3D%average_pooling3d_108/transpose_1:y:0(conv3d_277/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_277/Conv3Dн
!conv3d_277/BiasAdd/ReadVariableOpReadVariableOp*conv3d_277_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_277/BiasAdd/ReadVariableOp╧
conv3d_277/BiasAddBiasAddconv3d_277/Conv3D:output:0)conv3d_277/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_277/BiasAddС
conv3d_277/SoftplusSoftplusconv3d_277/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_277/Softplusй
$average_pooling3d_109/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_109/transpose/perm▀
average_pooling3d_109/transpose	Transpose!conv3d_277/Softplus:activations:0-average_pooling3d_109/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_109/transposeЁ
average_pooling3d_109/AvgPool3D	AvgPool3D#average_pooling3d_109/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_109/AvgPool3Dн
&average_pooling3d_109/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_109/transpose_1/permь
!average_pooling3d_109/transpose_1	Transpose(average_pooling3d_109/AvgPool3D:output:0/average_pooling3d_109/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_109/transpose_1║
 conv3d_278/Conv3D/ReadVariableOpReadVariableOp)conv3d_278_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_278/Conv3D/ReadVariableOpА
conv3d_278/Conv3DConv3D%average_pooling3d_109/transpose_1:y:0(conv3d_278/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_278/Conv3Dн
!conv3d_278/BiasAdd/ReadVariableOpReadVariableOp*conv3d_278_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_278/BiasAdd/ReadVariableOp╧
conv3d_278/BiasAddBiasAddconv3d_278/Conv3D:output:0)conv3d_278/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_278/BiasAddС
conv3d_278/SoftplusSoftplusconv3d_278/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_278/Softplusй
$average_pooling3d_110/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_110/transpose/perm▀
average_pooling3d_110/transpose	Transpose!conv3d_278/Softplus:activations:0-average_pooling3d_110/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_110/transposeЁ
average_pooling3d_110/AvgPool3D	AvgPool3D#average_pooling3d_110/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_110/AvgPool3Dн
&average_pooling3d_110/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_110/transpose_1/permь
!average_pooling3d_110/transpose_1	Transpose(average_pooling3d_110/AvgPool3D:output:0/average_pooling3d_110/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_110/transpose_1║
 conv3d_279/Conv3D/ReadVariableOpReadVariableOp)conv3d_279_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_279/Conv3D/ReadVariableOpА
conv3d_279/Conv3DConv3D%average_pooling3d_110/transpose_1:y:0(conv3d_279/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_279/Conv3Dн
!conv3d_279/BiasAdd/ReadVariableOpReadVariableOp*conv3d_279_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_279/BiasAdd/ReadVariableOp╧
conv3d_279/BiasAddBiasAddconv3d_279/Conv3D:output:0)conv3d_279/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_279/BiasAddС
conv3d_279/SoftplusSoftplusconv3d_279/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_279/Softplusй
$average_pooling3d_111/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_111/transpose/perm▀
average_pooling3d_111/transpose	Transpose!conv3d_279/Softplus:activations:0-average_pooling3d_111/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_111/transposeЁ
average_pooling3d_111/AvgPool3D	AvgPool3D#average_pooling3d_111/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_111/AvgPool3Dн
&average_pooling3d_111/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_111/transpose_1/permь
!average_pooling3d_111/transpose_1	Transpose(average_pooling3d_111/AvgPool3D:output:0/average_pooling3d_111/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_111/transpose_1{
reshape_120/ShapeShape%average_pooling3d_111/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_120/ShapeМ
reshape_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_120/strided_slice/stackР
!reshape_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_120/strided_slice/stack_1Р
!reshape_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_120/strided_slice/stack_2к
reshape_120/strided_sliceStridedSlicereshape_120/Shape:output:0(reshape_120/strided_slice/stack:output:0*reshape_120/strided_slice/stack_1:output:0*reshape_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_120/strided_slice|
reshape_120/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_120/Reshape/shape/1╢
reshape_120/Reshape/shapePack"reshape_120/strided_slice:output:0$reshape_120/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_120/Reshape/shape▓
reshape_120/ReshapeReshape%average_pooling3d_111/transpose_1:y:0"reshape_120/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_120/Reshapeи
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_60/MatMul/ReadVariableOpд
dense_60/MatMulMatMulreshape_120/Reshape:output:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_60/MatMulз
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_60/BiasAdd/ReadVariableOpе
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_60/BiasAdd
dense_60/SoftplusSoftplusdense_60/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_60/Softplusu
reshape_121/ShapeShapedense_60/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_121/ShapeМ
reshape_121/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_121/strided_slice/stackР
!reshape_121/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_121/strided_slice/stack_1Р
!reshape_121/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_121/strided_slice/stack_2к
reshape_121/strided_sliceStridedSlicereshape_121/Shape:output:0(reshape_121/strided_slice/stack:output:0*reshape_121/strided_slice/stack_1:output:0*reshape_121/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_121/strided_slice|
reshape_121/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/1|
reshape_121/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/2|
reshape_121/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/3|
reshape_121/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_121/Reshape/shape/4и
reshape_121/Reshape/shapePack"reshape_121/strided_slice:output:0$reshape_121/Reshape/shape/1:output:0$reshape_121/Reshape/shape/2:output:0$reshape_121/Reshape/shape/3:output:0$reshape_121/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_121/Reshape/shape╕
reshape_121/ReshapeReshapedense_60/Softplus:activations:0"reshape_121/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_121/Reshapeе
tf.reshape_384/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_384/Reshape/shape╩
tf.reshape_384/ReshapeReshapereshape_121/Reshape:output:0%tf.reshape_384/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_384/Reshapeб
tf.tile_192/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_192/Tile/multiples╝
tf.tile_192/TileTiletf.reshape_384/Reshape:output:0#tf.tile_192/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_192/TileЩ
tf.reshape_385/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_385/Reshape/shape╗
tf.reshape_385/ReshapeReshapetf.tile_192/Tile:output:0%tf.reshape_385/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_385/Reshapex
tf.concat_326/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_326/concat/axisч
tf.concat_326/concatConcatV2tf.reshape_385/Reshape:output:0!conv3d_279/Softplus:activations:0"tf.concat_326/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_326/concat║
 conv3d_280/Conv3D/ReadVariableOpReadVariableOp)conv3d_280_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_280/Conv3D/ReadVariableOp°
conv3d_280/Conv3DConv3Dtf.concat_326/concat:output:0(conv3d_280/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_280/Conv3Dн
!conv3d_280/BiasAdd/ReadVariableOpReadVariableOp*conv3d_280_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_280/BiasAdd/ReadVariableOp╧
conv3d_280/BiasAddBiasAddconv3d_280/Conv3D:output:0)conv3d_280/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_280/BiasAddС
conv3d_280/SoftplusSoftplusconv3d_280/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_280/Softplusе
tf.reshape_386/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_386/Reshape/shape╧
tf.reshape_386/ReshapeReshape!conv3d_280/Softplus:activations:0%tf.reshape_386/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_386/Reshapeб
tf.tile_193/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_193/Tile/multiples╝
tf.tile_193/TileTiletf.reshape_386/Reshape:output:0#tf.tile_193/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_193/TileЩ
tf.reshape_387/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_387/Reshape/shape╗
tf.reshape_387/ReshapeReshapetf.tile_193/Tile:output:0%tf.reshape_387/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_387/Reshapex
tf.concat_327/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_327/concat/axisч
tf.concat_327/concatConcatV2tf.reshape_387/Reshape:output:0!conv3d_278/Softplus:activations:0"tf.concat_327/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_327/concat║
 conv3d_281/Conv3D/ReadVariableOpReadVariableOp)conv3d_281_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_281/Conv3D/ReadVariableOp°
conv3d_281/Conv3DConv3Dtf.concat_327/concat:output:0(conv3d_281/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_281/Conv3Dн
!conv3d_281/BiasAdd/ReadVariableOpReadVariableOp*conv3d_281_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_281/BiasAdd/ReadVariableOp╧
conv3d_281/BiasAddBiasAddconv3d_281/Conv3D:output:0)conv3d_281/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_281/BiasAddС
conv3d_281/SoftplusSoftplusconv3d_281/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_281/Softplusе
tf.reshape_388/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_388/Reshape/shape╧
tf.reshape_388/ReshapeReshape!conv3d_281/Softplus:activations:0%tf.reshape_388/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_388/Reshapeб
tf.tile_194/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_194/Tile/multiples╝
tf.tile_194/TileTiletf.reshape_388/Reshape:output:0#tf.tile_194/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_194/TileЩ
tf.reshape_389/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_389/Reshape/shape╗
tf.reshape_389/ReshapeReshapetf.tile_194/Tile:output:0%tf.reshape_389/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_389/Reshapex
tf.concat_328/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_328/concat/axisч
tf.concat_328/concatConcatV2tf.reshape_389/Reshape:output:0!conv3d_277/Softplus:activations:0"tf.concat_328/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_328/concat║
 conv3d_282/Conv3D/ReadVariableOpReadVariableOp)conv3d_282_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_282/Conv3D/ReadVariableOp°
conv3d_282/Conv3DConv3Dtf.concat_328/concat:output:0(conv3d_282/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_282/Conv3Dн
!conv3d_282/BiasAdd/ReadVariableOpReadVariableOp*conv3d_282_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_282/BiasAdd/ReadVariableOp╧
conv3d_282/BiasAddBiasAddconv3d_282/Conv3D:output:0)conv3d_282/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_282/BiasAddС
conv3d_282/SoftplusSoftplusconv3d_282/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_282/Softplusе
tf.reshape_390/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_390/Reshape/shape╧
tf.reshape_390/ReshapeReshape!conv3d_282/Softplus:activations:0%tf.reshape_390/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_390/Reshapeб
tf.tile_195/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_195/Tile/multiples╝
tf.tile_195/TileTiletf.reshape_390/Reshape:output:0#tf.tile_195/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_195/TileЩ
tf.reshape_391/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_391/Reshape/shape╗
tf.reshape_391/ReshapeReshapetf.tile_195/Tile:output:0%tf.reshape_391/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_391/Reshapex
tf.concat_329/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_329/concat/axisч
tf.concat_329/concatConcatV2tf.reshape_391/Reshape:output:0!conv3d_276/Softplus:activations:0"tf.concat_329/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_329/concat║
 conv3d_283/Conv3D/ReadVariableOpReadVariableOp)conv3d_283_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_283/Conv3D/ReadVariableOp°
conv3d_283/Conv3DConv3Dtf.concat_329/concat:output:0(conv3d_283/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_283/Conv3Dн
!conv3d_283/BiasAdd/ReadVariableOpReadVariableOp*conv3d_283_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_283/BiasAdd/ReadVariableOp╧
conv3d_283/BiasAddBiasAddconv3d_283/Conv3D:output:0)conv3d_283/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_283/BiasAddС
conv3d_283/SoftplusSoftplusconv3d_283/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_283/Softplus║
 conv3d_284/Conv3D/ReadVariableOpReadVariableOp)conv3d_284_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_284/Conv3D/ReadVariableOp№
conv3d_284/Conv3DConv3D!conv3d_283/Softplus:activations:0(conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_284/Conv3Dн
!conv3d_284/BiasAdd/ReadVariableOpReadVariableOp*conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_284/BiasAdd/ReadVariableOp╧
conv3d_284/BiasAddBiasAddconv3d_284/Conv3D:output:0)conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_284/BiasAddВ
IdentityIdentityconv3d_284/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_276/BiasAdd/ReadVariableOp!^conv3d_276/Conv3D/ReadVariableOp"^conv3d_277/BiasAdd/ReadVariableOp!^conv3d_277/Conv3D/ReadVariableOp"^conv3d_278/BiasAdd/ReadVariableOp!^conv3d_278/Conv3D/ReadVariableOp"^conv3d_279/BiasAdd/ReadVariableOp!^conv3d_279/Conv3D/ReadVariableOp"^conv3d_280/BiasAdd/ReadVariableOp!^conv3d_280/Conv3D/ReadVariableOp"^conv3d_281/BiasAdd/ReadVariableOp!^conv3d_281/Conv3D/ReadVariableOp"^conv3d_282/BiasAdd/ReadVariableOp!^conv3d_282/Conv3D/ReadVariableOp"^conv3d_283/BiasAdd/ReadVariableOp!^conv3d_283/Conv3D/ReadVariableOp"^conv3d_284/BiasAdd/ReadVariableOp!^conv3d_284/Conv3D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_276/BiasAdd/ReadVariableOp!conv3d_276/BiasAdd/ReadVariableOp2D
 conv3d_276/Conv3D/ReadVariableOp conv3d_276/Conv3D/ReadVariableOp2F
!conv3d_277/BiasAdd/ReadVariableOp!conv3d_277/BiasAdd/ReadVariableOp2D
 conv3d_277/Conv3D/ReadVariableOp conv3d_277/Conv3D/ReadVariableOp2F
!conv3d_278/BiasAdd/ReadVariableOp!conv3d_278/BiasAdd/ReadVariableOp2D
 conv3d_278/Conv3D/ReadVariableOp conv3d_278/Conv3D/ReadVariableOp2F
!conv3d_279/BiasAdd/ReadVariableOp!conv3d_279/BiasAdd/ReadVariableOp2D
 conv3d_279/Conv3D/ReadVariableOp conv3d_279/Conv3D/ReadVariableOp2F
!conv3d_280/BiasAdd/ReadVariableOp!conv3d_280/BiasAdd/ReadVariableOp2D
 conv3d_280/Conv3D/ReadVariableOp conv3d_280/Conv3D/ReadVariableOp2F
!conv3d_281/BiasAdd/ReadVariableOp!conv3d_281/BiasAdd/ReadVariableOp2D
 conv3d_281/Conv3D/ReadVariableOp conv3d_281/Conv3D/ReadVariableOp2F
!conv3d_282/BiasAdd/ReadVariableOp!conv3d_282/BiasAdd/ReadVariableOp2D
 conv3d_282/Conv3D/ReadVariableOp conv3d_282/Conv3D/ReadVariableOp2F
!conv3d_283/BiasAdd/ReadVariableOp!conv3d_283/BiasAdd/ReadVariableOp2D
 conv3d_283/Conv3D/ReadVariableOp conv3d_283/Conv3D/ReadVariableOp2F
!conv3d_284/BiasAdd/ReadVariableOp!conv3d_284/BiasAdd/ReadVariableOp2D
 conv3d_284/Conv3D/ReadVariableOp conv3d_284/Conv3D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
щ
J
.__inference_reshape_120_layer_call_fn_14545021

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
I__inference_reshape_120_layer_call_and_return_conditional_losses_145435682
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

F__inference_model_60_layer_call_and_return_conditional_losses_14544243	
input1
conv3d_276_14544154: !
conv3d_276_14544156: 1
conv3d_277_14544160: !
conv3d_277_14544162:1
conv3d_278_14544166:!
conv3d_278_14544168:1
conv3d_279_14544172:!
conv3d_279_14544174:#
dense_60_14544179:@@
dense_60_14544181:@1
conv3d_280_14544193:!
conv3d_280_14544195:1
conv3d_281_14544206:!
conv3d_281_14544208:1
conv3d_282_14544219:!
conv3d_282_14544221:1
conv3d_283_14544232:0 !
conv3d_283_14544234: 1
conv3d_284_14544237: !
conv3d_284_14544239:
identityИв"conv3d_276/StatefulPartitionedCallв"conv3d_277/StatefulPartitionedCallв"conv3d_278/StatefulPartitionedCallв"conv3d_279/StatefulPartitionedCallв"conv3d_280/StatefulPartitionedCallв"conv3d_281/StatefulPartitionedCallв"conv3d_282/StatefulPartitionedCallв"conv3d_283/StatefulPartitionedCallв"conv3d_284/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_266/strided_slice/stack╣
2tf.__operators__.getitem_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_266/strided_slice/stack_1╣
2tf.__operators__.getitem_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_266/strided_slice/stack_2С
*tf.__operators__.getitem_266/strided_sliceStridedSliceinput9tf.__operators__.getitem_266/strided_slice/stack:output:0;tf.__operators__.getitem_266/strided_slice/stack_1:output:0;tf.__operators__.getitem_266/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_266/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_266/strided_slice:output:0*
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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_145434402%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_267/strided_slice/stack╣
2tf.__operators__.getitem_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_267/strided_slice/stack_1╣
2tf.__operators__.getitem_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_267/strided_slice/stack_2С
*tf.__operators__.getitem_267/strided_sliceStridedSliceinput9tf.__operators__.getitem_267/strided_slice/stack:output:0;tf.__operators__.getitem_267/strided_slice/stack_1:output:0;tf.__operators__.getitem_267/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_267/strided_slicex
tf.concat_325/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_325/concat/axisЖ
tf.concat_325/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_267/strided_slice:output:0"tf.concat_325/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_325/concat╥
"conv3d_276/StatefulPartitionedCallStatefulPartitionedCalltf.concat_325/concat:output:0conv3d_276_14544154conv3d_276_14544156*
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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_145434592$
"conv3d_276/StatefulPartitionedCall╣
%average_pooling3d_108/PartitionedCallPartitionedCall+conv3d_276/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_145434732'
%average_pooling3d_108/PartitionedCallу
"conv3d_277/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_108/PartitionedCall:output:0conv3d_277_14544160conv3d_277_14544162*
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
H__inference_conv3d_277_layer_call_and_return_conditional_losses_145434862$
"conv3d_277/StatefulPartitionedCall╣
%average_pooling3d_109/PartitionedCallPartitionedCall+conv3d_277/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_145435002'
%average_pooling3d_109/PartitionedCallу
"conv3d_278/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_109/PartitionedCall:output:0conv3d_278_14544166conv3d_278_14544168*
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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_145435132$
"conv3d_278/StatefulPartitionedCall╣
%average_pooling3d_110/PartitionedCallPartitionedCall+conv3d_278/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_145435272'
%average_pooling3d_110/PartitionedCallу
"conv3d_279/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_110/PartitionedCall:output:0conv3d_279_14544172conv3d_279_14544174*
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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_145435402$
"conv3d_279/StatefulPartitionedCall╣
%average_pooling3d_111/PartitionedCallPartitionedCall+conv3d_279/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_145435542'
%average_pooling3d_111/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_111/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_145435682
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_14544179dense_60_14544181*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_145435812"
 dense_60/StatefulPartitionedCallЩ
reshape_121/PartitionedCallPartitionedCall)dense_60/StatefulPartitionedCall:output:0*
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_145436022
reshape_121/PartitionedCallе
tf.reshape_384/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_384/Reshape/shape╥
tf.reshape_384/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_384/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_384/Reshapeб
tf.tile_192/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_192/Tile/multiples╝
tf.tile_192/TileTiletf.reshape_384/Reshape:output:0#tf.tile_192/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_192/TileЩ
tf.reshape_385/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_385/Reshape/shape╗
tf.reshape_385/ReshapeReshapetf.tile_192/Tile:output:0%tf.reshape_385/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_385/Reshapex
tf.concat_326/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_326/concat/axisё
tf.concat_326/concatConcatV2tf.reshape_385/Reshape:output:0+conv3d_279/StatefulPartitionedCall:output:0"tf.concat_326/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_326/concat╥
"conv3d_280/StatefulPartitionedCallStatefulPartitionedCalltf.concat_326/concat:output:0conv3d_280_14544193conv3d_280_14544195*
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
H__inference_conv3d_280_layer_call_and_return_conditional_losses_145436232$
"conv3d_280/StatefulPartitionedCallе
tf.reshape_386/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_386/Reshape/shape┘
tf.reshape_386/ReshapeReshape+conv3d_280/StatefulPartitionedCall:output:0%tf.reshape_386/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_386/Reshapeб
tf.tile_193/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_193/Tile/multiples╝
tf.tile_193/TileTiletf.reshape_386/Reshape:output:0#tf.tile_193/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_193/TileЩ
tf.reshape_387/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_387/Reshape/shape╗
tf.reshape_387/ReshapeReshapetf.tile_193/Tile:output:0%tf.reshape_387/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_387/Reshapex
tf.concat_327/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_327/concat/axisё
tf.concat_327/concatConcatV2tf.reshape_387/Reshape:output:0+conv3d_278/StatefulPartitionedCall:output:0"tf.concat_327/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_327/concat╥
"conv3d_281/StatefulPartitionedCallStatefulPartitionedCalltf.concat_327/concat:output:0conv3d_281_14544206conv3d_281_14544208*
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
H__inference_conv3d_281_layer_call_and_return_conditional_losses_145436482$
"conv3d_281/StatefulPartitionedCallе
tf.reshape_388/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_388/Reshape/shape┘
tf.reshape_388/ReshapeReshape+conv3d_281/StatefulPartitionedCall:output:0%tf.reshape_388/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_388/Reshapeб
tf.tile_194/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_194/Tile/multiples╝
tf.tile_194/TileTiletf.reshape_388/Reshape:output:0#tf.tile_194/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_194/TileЩ
tf.reshape_389/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_389/Reshape/shape╗
tf.reshape_389/ReshapeReshapetf.tile_194/Tile:output:0%tf.reshape_389/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_389/Reshapex
tf.concat_328/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_328/concat/axisё
tf.concat_328/concatConcatV2tf.reshape_389/Reshape:output:0+conv3d_277/StatefulPartitionedCall:output:0"tf.concat_328/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_328/concat╥
"conv3d_282/StatefulPartitionedCallStatefulPartitionedCalltf.concat_328/concat:output:0conv3d_282_14544219conv3d_282_14544221*
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
H__inference_conv3d_282_layer_call_and_return_conditional_losses_145436732$
"conv3d_282/StatefulPartitionedCallе
tf.reshape_390/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_390/Reshape/shape┘
tf.reshape_390/ReshapeReshape+conv3d_282/StatefulPartitionedCall:output:0%tf.reshape_390/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_390/Reshapeб
tf.tile_195/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_195/Tile/multiples╝
tf.tile_195/TileTiletf.reshape_390/Reshape:output:0#tf.tile_195/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_195/TileЩ
tf.reshape_391/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_391/Reshape/shape╗
tf.reshape_391/ReshapeReshapetf.tile_195/Tile:output:0%tf.reshape_391/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_391/Reshapex
tf.concat_329/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_329/concat/axisё
tf.concat_329/concatConcatV2tf.reshape_391/Reshape:output:0+conv3d_276/StatefulPartitionedCall:output:0"tf.concat_329/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_329/concat╥
"conv3d_283/StatefulPartitionedCallStatefulPartitionedCalltf.concat_329/concat:output:0conv3d_283_14544232conv3d_283_14544234*
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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_145436982$
"conv3d_283/StatefulPartitionedCallр
"conv3d_284/StatefulPartitionedCallStatefulPartitionedCall+conv3d_283/StatefulPartitionedCall:output:0conv3d_284_14544237conv3d_284_14544239*
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_145437142$
"conv3d_284/StatefulPartitionedCallТ
IdentityIdentity+conv3d_284/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_276/StatefulPartitionedCall#^conv3d_277/StatefulPartitionedCall#^conv3d_278/StatefulPartitionedCall#^conv3d_279/StatefulPartitionedCall#^conv3d_280/StatefulPartitionedCall#^conv3d_281/StatefulPartitionedCall#^conv3d_282/StatefulPartitionedCall#^conv3d_283/StatefulPartitionedCall#^conv3d_284/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_276/StatefulPartitionedCall"conv3d_276/StatefulPartitionedCall2H
"conv3d_277/StatefulPartitionedCall"conv3d_277/StatefulPartitionedCall2H
"conv3d_278/StatefulPartitionedCall"conv3d_278/StatefulPartitionedCall2H
"conv3d_279/StatefulPartitionedCall"conv3d_279/StatefulPartitionedCall2H
"conv3d_280/StatefulPartitionedCall"conv3d_280/StatefulPartitionedCall2H
"conv3d_281/StatefulPartitionedCall"conv3d_281/StatefulPartitionedCall2H
"conv3d_282/StatefulPartitionedCall"conv3d_282/StatefulPartitionedCall2H
"conv3d_283/StatefulPartitionedCall"conv3d_283/StatefulPartitionedCall2H
"conv3d_284/StatefulPartitionedCall"conv3d_284/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
г
є
+__inference_model_60_layer_call_fn_14544483

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
F__inference_model_60_layer_call_and_return_conditional_losses_145440522
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
╓
Е
H__inference_conv3d_284_layer_call_and_return_conditional_losses_14543714

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
8__inference_average_pooling3d_109_layer_call_fn_14544902

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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_145435002
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
а
Є
+__inference_model_60_layer_call_fn_14544140	
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
F__inference_model_60_layer_call_and_return_conditional_losses_145440522
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
┴
ж
-__inference_conv3d_280_layer_call_fn_14545082

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
H__inference_conv3d_280_layer_call_and_return_conditional_losses_145436232
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
H__inference_conv3d_282_layer_call_and_return_conditional_losses_14545133

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
кX
Л
$__inference__traced_restore_14545325
file_prefix@
"assignvariableop_conv3d_276_kernel: 0
"assignvariableop_1_conv3d_276_bias: B
$assignvariableop_2_conv3d_277_kernel: 0
"assignvariableop_3_conv3d_277_bias:B
$assignvariableop_4_conv3d_278_kernel:0
"assignvariableop_5_conv3d_278_bias:B
$assignvariableop_6_conv3d_279_kernel:0
"assignvariableop_7_conv3d_279_bias:4
"assignvariableop_8_dense_60_kernel:@@.
 assignvariableop_9_dense_60_bias:@C
%assignvariableop_10_conv3d_280_kernel:1
#assignvariableop_11_conv3d_280_bias:C
%assignvariableop_12_conv3d_281_kernel:1
#assignvariableop_13_conv3d_281_bias:C
%assignvariableop_14_conv3d_282_kernel:1
#assignvariableop_15_conv3d_282_bias:C
%assignvariableop_16_conv3d_283_kernel:0 1
#assignvariableop_17_conv3d_283_bias: C
%assignvariableop_18_conv3d_284_kernel: 1
#assignvariableop_19_conv3d_284_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_276_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_276_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_277_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_277_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_278_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_278_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_279_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_279_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_60_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_60_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_280_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_280_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_281_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_281_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_282_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_282_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16н
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_283_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17л
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_283_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18н
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_284_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19л
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_284_biasIdentity_19:output:0"/device:CPU:0*
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
╬
Е
H__inference_conv3d_281_layer_call_and_return_conditional_losses_14545113

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
а
Є
+__inference_model_60_layer_call_fn_14543764	
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
F__inference_model_60_layer_call_and_return_conditional_losses_145437212
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
╬
Е
H__inference_conv3d_282_layer_call_and_return_conditional_losses_14543673

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
F__inference_dense_60_layer_call_and_return_conditional_losses_14543581

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
Ь
e
I__inference_reshape_121_layer_call_and_return_conditional_losses_14545073

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
°
э
&__inference_signature_wrapper_14544393	
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
#__inference__wrapped_model_145432972
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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14544872

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
-__inference_conv3d_284_layer_call_fn_14545162

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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_145437142
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
М	
o
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14544920

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
-__inference_conv3d_279_layer_call_fn_14544977

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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_145435402
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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_14543540

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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14543554

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
8__inference_average_pooling3d_110_layer_call_fn_14544945

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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_145433702
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
М	
o
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14545016

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
М	
o
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14543527

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
вЧ
∙
#__inference__wrapped_model_14543297	
inputP
2model_60_conv3d_276_conv3d_readvariableop_resource: A
3model_60_conv3d_276_biasadd_readvariableop_resource: P
2model_60_conv3d_277_conv3d_readvariableop_resource: A
3model_60_conv3d_277_biasadd_readvariableop_resource:P
2model_60_conv3d_278_conv3d_readvariableop_resource:A
3model_60_conv3d_278_biasadd_readvariableop_resource:P
2model_60_conv3d_279_conv3d_readvariableop_resource:A
3model_60_conv3d_279_biasadd_readvariableop_resource:B
0model_60_dense_60_matmul_readvariableop_resource:@@?
1model_60_dense_60_biasadd_readvariableop_resource:@P
2model_60_conv3d_280_conv3d_readvariableop_resource:A
3model_60_conv3d_280_biasadd_readvariableop_resource:P
2model_60_conv3d_281_conv3d_readvariableop_resource:A
3model_60_conv3d_281_biasadd_readvariableop_resource:P
2model_60_conv3d_282_conv3d_readvariableop_resource:A
3model_60_conv3d_282_biasadd_readvariableop_resource:P
2model_60_conv3d_283_conv3d_readvariableop_resource:0 A
3model_60_conv3d_283_biasadd_readvariableop_resource: P
2model_60_conv3d_284_conv3d_readvariableop_resource: A
3model_60_conv3d_284_biasadd_readvariableop_resource:
identityИв*model_60/conv3d_276/BiasAdd/ReadVariableOpв)model_60/conv3d_276/Conv3D/ReadVariableOpв*model_60/conv3d_277/BiasAdd/ReadVariableOpв)model_60/conv3d_277/Conv3D/ReadVariableOpв*model_60/conv3d_278/BiasAdd/ReadVariableOpв)model_60/conv3d_278/Conv3D/ReadVariableOpв*model_60/conv3d_279/BiasAdd/ReadVariableOpв)model_60/conv3d_279/Conv3D/ReadVariableOpв*model_60/conv3d_280/BiasAdd/ReadVariableOpв)model_60/conv3d_280/Conv3D/ReadVariableOpв*model_60/conv3d_281/BiasAdd/ReadVariableOpв)model_60/conv3d_281/Conv3D/ReadVariableOpв*model_60/conv3d_282/BiasAdd/ReadVariableOpв)model_60/conv3d_282/Conv3D/ReadVariableOpв*model_60/conv3d_283/BiasAdd/ReadVariableOpв)model_60/conv3d_283/Conv3D/ReadVariableOpв*model_60/conv3d_284/BiasAdd/ReadVariableOpв)model_60/conv3d_284/Conv3D/ReadVariableOpв(model_60/dense_60/BiasAdd/ReadVariableOpв'model_60/dense_60/MatMul/ReadVariableOp╟
9model_60/tf.__operators__.getitem_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_60/tf.__operators__.getitem_266/strided_slice/stack╦
;model_60/tf.__operators__.getitem_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_60/tf.__operators__.getitem_266/strided_slice/stack_1╦
;model_60/tf.__operators__.getitem_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_60/tf.__operators__.getitem_266/strided_slice/stack_2╛
3model_60/tf.__operators__.getitem_266/strided_sliceStridedSliceinputBmodel_60/tf.__operators__.getitem_266/strided_slice/stack:output:0Dmodel_60/tf.__operators__.getitem_266/strided_slice/stack_1:output:0Dmodel_60/tf.__operators__.getitem_266/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_60/tf.__operators__.getitem_266/strided_sliceН
"model_60/range_conversion_60/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_60/range_conversion_60/sub/yЇ
 model_60/range_conversion_60/subSub<model_60/tf.__operators__.getitem_266/strided_slice:output:0+model_60/range_conversion_60/sub/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_60/range_conversion_60/subХ
&model_60/range_conversion_60/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_60/range_conversion_60/truediv/yь
$model_60/range_conversion_60/truedivRealDiv$model_60/range_conversion_60/sub:z:0/model_60/range_conversion_60/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2&
$model_60/range_conversion_60/truedivН
"model_60/range_conversion_60/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_60/range_conversion_60/mul/yр
 model_60/range_conversion_60/mulMul(model_60/range_conversion_60/truediv:z:0+model_60/range_conversion_60/mul/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_60/range_conversion_60/mulН
"model_60/range_conversion_60/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_60/range_conversion_60/add/y▐
 model_60/range_conversion_60/addAddV2$model_60/range_conversion_60/mul:z:0+model_60/range_conversion_60/add/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_60/range_conversion_60/add╟
9model_60/tf.__operators__.getitem_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_60/tf.__operators__.getitem_267/strided_slice/stack╦
;model_60/tf.__operators__.getitem_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_60/tf.__operators__.getitem_267/strided_slice/stack_1╦
;model_60/tf.__operators__.getitem_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_60/tf.__operators__.getitem_267/strided_slice/stack_2╛
3model_60/tf.__operators__.getitem_267/strided_sliceStridedSliceinputBmodel_60/tf.__operators__.getitem_267/strided_slice/stack:output:0Dmodel_60/tf.__operators__.getitem_267/strided_slice/stack_1:output:0Dmodel_60/tf.__operators__.getitem_267/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_60/tf.__operators__.getitem_267/strided_sliceК
"model_60/tf.concat_325/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_325/concat/axisв
model_60/tf.concat_325/concatConcatV2$model_60/range_conversion_60/add:z:0<model_60/tf.__operators__.getitem_267/strided_slice:output:0+model_60/tf.concat_325/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
model_60/tf.concat_325/concat╒
)model_60/conv3d_276/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_276_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_60/conv3d_276/Conv3D/ReadVariableOpЬ
model_60/conv3d_276/Conv3DConv3D&model_60/tf.concat_325/concat:output:01model_60/conv3d_276/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_276/Conv3D╚
*model_60/conv3d_276/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_276_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_60/conv3d_276/BiasAdd/ReadVariableOpє
model_60/conv3d_276/BiasAddBiasAdd#model_60/conv3d_276/Conv3D:output:02model_60/conv3d_276/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_60/conv3d_276/BiasAddм
model_60/conv3d_276/SoftplusSoftplus$model_60/conv3d_276/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_60/conv3d_276/Softplus╗
-model_60/average_pooling3d_108/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_60/average_pooling3d_108/transpose/permГ
(model_60/average_pooling3d_108/transpose	Transpose*model_60/conv3d_276/Softplus:activations:06model_60/average_pooling3d_108/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2*
(model_60/average_pooling3d_108/transposeЛ
(model_60/average_pooling3d_108/AvgPool3D	AvgPool3D,model_60/average_pooling3d_108/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2*
(model_60/average_pooling3d_108/AvgPool3D┐
/model_60/average_pooling3d_108/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_60/average_pooling3d_108/transpose_1/permР
*model_60/average_pooling3d_108/transpose_1	Transpose1model_60/average_pooling3d_108/AvgPool3D:output:08model_60/average_pooling3d_108/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2,
*model_60/average_pooling3d_108/transpose_1╒
)model_60/conv3d_277/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_277_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_60/conv3d_277/Conv3D/ReadVariableOpд
model_60/conv3d_277/Conv3DConv3D.model_60/average_pooling3d_108/transpose_1:y:01model_60/conv3d_277/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_277/Conv3D╚
*model_60/conv3d_277/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_277_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_277/BiasAdd/ReadVariableOpє
model_60/conv3d_277/BiasAddBiasAdd#model_60/conv3d_277/Conv3D:output:02model_60/conv3d_277/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_60/conv3d_277/BiasAddм
model_60/conv3d_277/SoftplusSoftplus$model_60/conv3d_277/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_60/conv3d_277/Softplus╗
-model_60/average_pooling3d_109/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_60/average_pooling3d_109/transpose/permГ
(model_60/average_pooling3d_109/transpose	Transpose*model_60/conv3d_277/Softplus:activations:06model_60/average_pooling3d_109/transpose/perm:output:0*
T0*3
_output_shapes!
:           2*
(model_60/average_pooling3d_109/transposeЛ
(model_60/average_pooling3d_109/AvgPool3D	AvgPool3D,model_60/average_pooling3d_109/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_60/average_pooling3d_109/AvgPool3D┐
/model_60/average_pooling3d_109/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_60/average_pooling3d_109/transpose_1/permР
*model_60/average_pooling3d_109/transpose_1	Transpose1model_60/average_pooling3d_109/AvgPool3D:output:08model_60/average_pooling3d_109/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_60/average_pooling3d_109/transpose_1╒
)model_60/conv3d_278/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_278_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_278/Conv3D/ReadVariableOpд
model_60/conv3d_278/Conv3DConv3D.model_60/average_pooling3d_109/transpose_1:y:01model_60/conv3d_278/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_278/Conv3D╚
*model_60/conv3d_278/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_278_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_278/BiasAdd/ReadVariableOpє
model_60/conv3d_278/BiasAddBiasAdd#model_60/conv3d_278/Conv3D:output:02model_60/conv3d_278/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_278/BiasAddм
model_60/conv3d_278/SoftplusSoftplus$model_60/conv3d_278/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_278/Softplus╗
-model_60/average_pooling3d_110/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_60/average_pooling3d_110/transpose/permГ
(model_60/average_pooling3d_110/transpose	Transpose*model_60/conv3d_278/Softplus:activations:06model_60/average_pooling3d_110/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_60/average_pooling3d_110/transposeЛ
(model_60/average_pooling3d_110/AvgPool3D	AvgPool3D,model_60/average_pooling3d_110/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_60/average_pooling3d_110/AvgPool3D┐
/model_60/average_pooling3d_110/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_60/average_pooling3d_110/transpose_1/permР
*model_60/average_pooling3d_110/transpose_1	Transpose1model_60/average_pooling3d_110/AvgPool3D:output:08model_60/average_pooling3d_110/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_60/average_pooling3d_110/transpose_1╒
)model_60/conv3d_279/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_279_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_279/Conv3D/ReadVariableOpд
model_60/conv3d_279/Conv3DConv3D.model_60/average_pooling3d_110/transpose_1:y:01model_60/conv3d_279/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_279/Conv3D╚
*model_60/conv3d_279/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_279_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_279/BiasAdd/ReadVariableOpє
model_60/conv3d_279/BiasAddBiasAdd#model_60/conv3d_279/Conv3D:output:02model_60/conv3d_279/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_279/BiasAddм
model_60/conv3d_279/SoftplusSoftplus$model_60/conv3d_279/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_279/Softplus╗
-model_60/average_pooling3d_111/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_60/average_pooling3d_111/transpose/permГ
(model_60/average_pooling3d_111/transpose	Transpose*model_60/conv3d_279/Softplus:activations:06model_60/average_pooling3d_111/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_60/average_pooling3d_111/transposeЛ
(model_60/average_pooling3d_111/AvgPool3D	AvgPool3D,model_60/average_pooling3d_111/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_60/average_pooling3d_111/AvgPool3D┐
/model_60/average_pooling3d_111/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_60/average_pooling3d_111/transpose_1/permР
*model_60/average_pooling3d_111/transpose_1	Transpose1model_60/average_pooling3d_111/AvgPool3D:output:08model_60/average_pooling3d_111/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_60/average_pooling3d_111/transpose_1Ц
model_60/reshape_120/ShapeShape.model_60/average_pooling3d_111/transpose_1:y:0*
T0*
_output_shapes
:2
model_60/reshape_120/ShapeЮ
(model_60/reshape_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_60/reshape_120/strided_slice/stackв
*model_60/reshape_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_60/reshape_120/strided_slice/stack_1в
*model_60/reshape_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_60/reshape_120/strided_slice/stack_2р
"model_60/reshape_120/strided_sliceStridedSlice#model_60/reshape_120/Shape:output:01model_60/reshape_120/strided_slice/stack:output:03model_60/reshape_120/strided_slice/stack_1:output:03model_60/reshape_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_60/reshape_120/strided_sliceО
$model_60/reshape_120/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_60/reshape_120/Reshape/shape/1┌
"model_60/reshape_120/Reshape/shapePack+model_60/reshape_120/strided_slice:output:0-model_60/reshape_120/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_60/reshape_120/Reshape/shape╓
model_60/reshape_120/ReshapeReshape.model_60/average_pooling3d_111/transpose_1:y:0+model_60/reshape_120/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_60/reshape_120/Reshape├
'model_60/dense_60/MatMul/ReadVariableOpReadVariableOp0model_60_dense_60_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_60/dense_60/MatMul/ReadVariableOp╚
model_60/dense_60/MatMulMatMul%model_60/reshape_120/Reshape:output:0/model_60/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_60/dense_60/MatMul┬
(model_60/dense_60/BiasAdd/ReadVariableOpReadVariableOp1model_60_dense_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_60/dense_60/BiasAdd/ReadVariableOp╔
model_60/dense_60/BiasAddBiasAdd"model_60/dense_60/MatMul:product:00model_60/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_60/dense_60/BiasAddЪ
model_60/dense_60/SoftplusSoftplus"model_60/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_60/dense_60/SoftplusР
model_60/reshape_121/ShapeShape(model_60/dense_60/Softplus:activations:0*
T0*
_output_shapes
:2
model_60/reshape_121/ShapeЮ
(model_60/reshape_121/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_60/reshape_121/strided_slice/stackв
*model_60/reshape_121/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_60/reshape_121/strided_slice/stack_1в
*model_60/reshape_121/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_60/reshape_121/strided_slice/stack_2р
"model_60/reshape_121/strided_sliceStridedSlice#model_60/reshape_121/Shape:output:01model_60/reshape_121/strided_slice/stack:output:03model_60/reshape_121/strided_slice/stack_1:output:03model_60/reshape_121/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_60/reshape_121/strided_sliceО
$model_60/reshape_121/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_60/reshape_121/Reshape/shape/1О
$model_60/reshape_121/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_60/reshape_121/Reshape/shape/2О
$model_60/reshape_121/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_60/reshape_121/Reshape/shape/3О
$model_60/reshape_121/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_60/reshape_121/Reshape/shape/4ч
"model_60/reshape_121/Reshape/shapePack+model_60/reshape_121/strided_slice:output:0-model_60/reshape_121/Reshape/shape/1:output:0-model_60/reshape_121/Reshape/shape/2:output:0-model_60/reshape_121/Reshape/shape/3:output:0-model_60/reshape_121/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_60/reshape_121/Reshape/shape▄
model_60/reshape_121/ReshapeReshape(model_60/dense_60/Softplus:activations:0+model_60/reshape_121/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_60/reshape_121/Reshape╖
%model_60/tf.reshape_384/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_60/tf.reshape_384/Reshape/shapeю
model_60/tf.reshape_384/ReshapeReshape%model_60/reshape_121/Reshape:output:0.model_60/tf.reshape_384/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_60/tf.reshape_384/Reshape│
#model_60/tf.tile_192/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_60/tf.tile_192/Tile/multiplesр
model_60/tf.tile_192/TileTile(model_60/tf.reshape_384/Reshape:output:0,model_60/tf.tile_192/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_60/tf.tile_192/Tileл
%model_60/tf.reshape_385/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_60/tf.reshape_385/Reshape/shape▀
model_60/tf.reshape_385/ReshapeReshape"model_60/tf.tile_192/Tile:output:0.model_60/tf.reshape_385/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_60/tf.reshape_385/ReshapeК
"model_60/tf.concat_326/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_326/concat/axisФ
model_60/tf.concat_326/concatConcatV2(model_60/tf.reshape_385/Reshape:output:0*model_60/conv3d_279/Softplus:activations:0+model_60/tf.concat_326/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_60/tf.concat_326/concat╒
)model_60/conv3d_280/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_280_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_280/Conv3D/ReadVariableOpЬ
model_60/conv3d_280/Conv3DConv3D&model_60/tf.concat_326/concat:output:01model_60/conv3d_280/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_280/Conv3D╚
*model_60/conv3d_280/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_280_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_280/BiasAdd/ReadVariableOpє
model_60/conv3d_280/BiasAddBiasAdd#model_60/conv3d_280/Conv3D:output:02model_60/conv3d_280/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_280/BiasAddм
model_60/conv3d_280/SoftplusSoftplus$model_60/conv3d_280/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_280/Softplus╖
%model_60/tf.reshape_386/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_60/tf.reshape_386/Reshape/shapeє
model_60/tf.reshape_386/ReshapeReshape*model_60/conv3d_280/Softplus:activations:0.model_60/tf.reshape_386/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_60/tf.reshape_386/Reshape│
#model_60/tf.tile_193/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_60/tf.tile_193/Tile/multiplesр
model_60/tf.tile_193/TileTile(model_60/tf.reshape_386/Reshape:output:0,model_60/tf.tile_193/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_60/tf.tile_193/Tileл
%model_60/tf.reshape_387/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_60/tf.reshape_387/Reshape/shape▀
model_60/tf.reshape_387/ReshapeReshape"model_60/tf.tile_193/Tile:output:0.model_60/tf.reshape_387/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_60/tf.reshape_387/ReshapeК
"model_60/tf.concat_327/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_327/concat/axisФ
model_60/tf.concat_327/concatConcatV2(model_60/tf.reshape_387/Reshape:output:0*model_60/conv3d_278/Softplus:activations:0+model_60/tf.concat_327/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_60/tf.concat_327/concat╒
)model_60/conv3d_281/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_281_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_281/Conv3D/ReadVariableOpЬ
model_60/conv3d_281/Conv3DConv3D&model_60/tf.concat_327/concat:output:01model_60/conv3d_281/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_281/Conv3D╚
*model_60/conv3d_281/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_281_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_281/BiasAdd/ReadVariableOpє
model_60/conv3d_281/BiasAddBiasAdd#model_60/conv3d_281/Conv3D:output:02model_60/conv3d_281/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_281/BiasAddм
model_60/conv3d_281/SoftplusSoftplus$model_60/conv3d_281/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_281/Softplus╖
%model_60/tf.reshape_388/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_60/tf.reshape_388/Reshape/shapeє
model_60/tf.reshape_388/ReshapeReshape*model_60/conv3d_281/Softplus:activations:0.model_60/tf.reshape_388/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_60/tf.reshape_388/Reshape│
#model_60/tf.tile_194/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_60/tf.tile_194/Tile/multiplesр
model_60/tf.tile_194/TileTile(model_60/tf.reshape_388/Reshape:output:0,model_60/tf.tile_194/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_60/tf.tile_194/Tileл
%model_60/tf.reshape_389/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2'
%model_60/tf.reshape_389/Reshape/shape▀
model_60/tf.reshape_389/ReshapeReshape"model_60/tf.tile_194/Tile:output:0.model_60/tf.reshape_389/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2!
model_60/tf.reshape_389/ReshapeК
"model_60/tf.concat_328/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_328/concat/axisФ
model_60/tf.concat_328/concatConcatV2(model_60/tf.reshape_389/Reshape:output:0*model_60/conv3d_277/Softplus:activations:0+model_60/tf.concat_328/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_60/tf.concat_328/concat╒
)model_60/conv3d_282/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_282_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_282/Conv3D/ReadVariableOpЬ
model_60/conv3d_282/Conv3DConv3D&model_60/tf.concat_328/concat:output:01model_60/conv3d_282/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_282/Conv3D╚
*model_60/conv3d_282/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_282_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_282/BiasAdd/ReadVariableOpє
model_60/conv3d_282/BiasAddBiasAdd#model_60/conv3d_282/Conv3D:output:02model_60/conv3d_282/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_60/conv3d_282/BiasAddм
model_60/conv3d_282/SoftplusSoftplus$model_60/conv3d_282/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_60/conv3d_282/Softplus╖
%model_60/tf.reshape_390/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2'
%model_60/tf.reshape_390/Reshape/shapeє
model_60/tf.reshape_390/ReshapeReshape*model_60/conv3d_282/Softplus:activations:0.model_60/tf.reshape_390/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2!
model_60/tf.reshape_390/Reshape│
#model_60/tf.tile_195/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_60/tf.tile_195/Tile/multiplesр
model_60/tf.tile_195/TileTile(model_60/tf.reshape_390/Reshape:output:0,model_60/tf.tile_195/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
model_60/tf.tile_195/Tileл
%model_60/tf.reshape_391/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2'
%model_60/tf.reshape_391/Reshape/shape▀
model_60/tf.reshape_391/ReshapeReshape"model_60/tf.tile_195/Tile:output:0.model_60/tf.reshape_391/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2!
model_60/tf.reshape_391/ReshapeК
"model_60/tf.concat_329/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_329/concat/axisФ
model_60/tf.concat_329/concatConcatV2(model_60/tf.reshape_391/Reshape:output:0*model_60/conv3d_276/Softplus:activations:0+model_60/tf.concat_329/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
model_60/tf.concat_329/concat╒
)model_60/conv3d_283/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_283_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_60/conv3d_283/Conv3D/ReadVariableOpЬ
model_60/conv3d_283/Conv3DConv3D&model_60/tf.concat_329/concat:output:01model_60/conv3d_283/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_283/Conv3D╚
*model_60/conv3d_283/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_283_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_60/conv3d_283/BiasAdd/ReadVariableOpє
model_60/conv3d_283/BiasAddBiasAdd#model_60/conv3d_283/Conv3D:output:02model_60/conv3d_283/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_60/conv3d_283/BiasAddм
model_60/conv3d_283/SoftplusSoftplus$model_60/conv3d_283/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_60/conv3d_283/Softplus╒
)model_60/conv3d_284/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_284_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_60/conv3d_284/Conv3D/ReadVariableOpа
model_60/conv3d_284/Conv3DConv3D*model_60/conv3d_283/Softplus:activations:01model_60/conv3d_284/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_284/Conv3D╚
*model_60/conv3d_284/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_284_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_284/BiasAdd/ReadVariableOpє
model_60/conv3d_284/BiasAddBiasAdd#model_60/conv3d_284/Conv3D:output:02model_60/conv3d_284/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
model_60/conv3d_284/BiasAddЛ
IdentityIdentity$model_60/conv3d_284/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity─
NoOpNoOp+^model_60/conv3d_276/BiasAdd/ReadVariableOp*^model_60/conv3d_276/Conv3D/ReadVariableOp+^model_60/conv3d_277/BiasAdd/ReadVariableOp*^model_60/conv3d_277/Conv3D/ReadVariableOp+^model_60/conv3d_278/BiasAdd/ReadVariableOp*^model_60/conv3d_278/Conv3D/ReadVariableOp+^model_60/conv3d_279/BiasAdd/ReadVariableOp*^model_60/conv3d_279/Conv3D/ReadVariableOp+^model_60/conv3d_280/BiasAdd/ReadVariableOp*^model_60/conv3d_280/Conv3D/ReadVariableOp+^model_60/conv3d_281/BiasAdd/ReadVariableOp*^model_60/conv3d_281/Conv3D/ReadVariableOp+^model_60/conv3d_282/BiasAdd/ReadVariableOp*^model_60/conv3d_282/Conv3D/ReadVariableOp+^model_60/conv3d_283/BiasAdd/ReadVariableOp*^model_60/conv3d_283/Conv3D/ReadVariableOp+^model_60/conv3d_284/BiasAdd/ReadVariableOp*^model_60/conv3d_284/Conv3D/ReadVariableOp)^model_60/dense_60/BiasAdd/ReadVariableOp(^model_60/dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2X
*model_60/conv3d_276/BiasAdd/ReadVariableOp*model_60/conv3d_276/BiasAdd/ReadVariableOp2V
)model_60/conv3d_276/Conv3D/ReadVariableOp)model_60/conv3d_276/Conv3D/ReadVariableOp2X
*model_60/conv3d_277/BiasAdd/ReadVariableOp*model_60/conv3d_277/BiasAdd/ReadVariableOp2V
)model_60/conv3d_277/Conv3D/ReadVariableOp)model_60/conv3d_277/Conv3D/ReadVariableOp2X
*model_60/conv3d_278/BiasAdd/ReadVariableOp*model_60/conv3d_278/BiasAdd/ReadVariableOp2V
)model_60/conv3d_278/Conv3D/ReadVariableOp)model_60/conv3d_278/Conv3D/ReadVariableOp2X
*model_60/conv3d_279/BiasAdd/ReadVariableOp*model_60/conv3d_279/BiasAdd/ReadVariableOp2V
)model_60/conv3d_279/Conv3D/ReadVariableOp)model_60/conv3d_279/Conv3D/ReadVariableOp2X
*model_60/conv3d_280/BiasAdd/ReadVariableOp*model_60/conv3d_280/BiasAdd/ReadVariableOp2V
)model_60/conv3d_280/Conv3D/ReadVariableOp)model_60/conv3d_280/Conv3D/ReadVariableOp2X
*model_60/conv3d_281/BiasAdd/ReadVariableOp*model_60/conv3d_281/BiasAdd/ReadVariableOp2V
)model_60/conv3d_281/Conv3D/ReadVariableOp)model_60/conv3d_281/Conv3D/ReadVariableOp2X
*model_60/conv3d_282/BiasAdd/ReadVariableOp*model_60/conv3d_282/BiasAdd/ReadVariableOp2V
)model_60/conv3d_282/Conv3D/ReadVariableOp)model_60/conv3d_282/Conv3D/ReadVariableOp2X
*model_60/conv3d_283/BiasAdd/ReadVariableOp*model_60/conv3d_283/BiasAdd/ReadVariableOp2V
)model_60/conv3d_283/Conv3D/ReadVariableOp)model_60/conv3d_283/Conv3D/ReadVariableOp2X
*model_60/conv3d_284/BiasAdd/ReadVariableOp*model_60/conv3d_284/BiasAdd/ReadVariableOp2V
)model_60/conv3d_284/Conv3D/ReadVariableOp)model_60/conv3d_284/Conv3D/ReadVariableOp2T
(model_60/dense_60/BiasAdd/ReadVariableOp(model_60/dense_60/BiasAdd/ReadVariableOp2R
'model_60/dense_60/MatMul/ReadVariableOp'model_60/dense_60/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
х

o
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14544863

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
8__inference_average_pooling3d_111_layer_call_fn_14544998

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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_145435542
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
Х
T
8__inference_average_pooling3d_110_layer_call_fn_14544950

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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_145435272
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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14543340

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

conv3d_284<
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
1:/  2conv3d_276/kernel
:  2conv3d_276/bias
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
1:/  2conv3d_277/kernel
: 2conv3d_277/bias
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
1:/ 2conv3d_278/kernel
: 2conv3d_278/bias
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
1:/ 2conv3d_279/kernel
: 2conv3d_279/bias
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
#:!@@ 2dense_60/kernel
:@ 2dense_60/bias
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
1:/ 2conv3d_280/kernel
: 2conv3d_280/bias
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
1:/ 2conv3d_281/kernel
: 2conv3d_281/bias
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
1:/ 2conv3d_282/kernel
: 2conv3d_282/bias
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
1:/0  2conv3d_283/kernel
:  2conv3d_283/bias
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
1:/  2conv3d_284/kernel
: 2conv3d_284/bias
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
+__inference_model_60_layer_call_fn_14543764
+__inference_model_60_layer_call_fn_14544438
+__inference_model_60_layer_call_fn_14544483
+__inference_model_60_layer_call_fn_14544140└
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
F__inference_model_60_layer_call_and_return_conditional_losses_14544645
F__inference_model_60_layer_call_and_return_conditional_losses_14544807
F__inference_model_60_layer_call_and_return_conditional_losses_14544243
F__inference_model_60_layer_call_and_return_conditional_losses_14544346└
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
#__inference__wrapped_model_14543297input"Ш
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
6__inference_range_conversion_60_layer_call_fn_14544812ж
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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_14544824ж
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
-__inference_conv3d_276_layer_call_fn_14544833в
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
H__inference_conv3d_276_layer_call_and_return_conditional_losses_14544844в
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
8__inference_average_pooling3d_108_layer_call_fn_14544849
8__inference_average_pooling3d_108_layer_call_fn_14544854в
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
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14544863
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14544872в
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
-__inference_conv3d_277_layer_call_fn_14544881в
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
H__inference_conv3d_277_layer_call_and_return_conditional_losses_14544892в
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
8__inference_average_pooling3d_109_layer_call_fn_14544897
8__inference_average_pooling3d_109_layer_call_fn_14544902в
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
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14544911
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14544920в
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
-__inference_conv3d_278_layer_call_fn_14544929в
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
H__inference_conv3d_278_layer_call_and_return_conditional_losses_14544940в
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
8__inference_average_pooling3d_110_layer_call_fn_14544945
8__inference_average_pooling3d_110_layer_call_fn_14544950в
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
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14544959
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14544968в
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
-__inference_conv3d_279_layer_call_fn_14544977в
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
H__inference_conv3d_279_layer_call_and_return_conditional_losses_14544988в
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
8__inference_average_pooling3d_111_layer_call_fn_14544993
8__inference_average_pooling3d_111_layer_call_fn_14544998в
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
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14545007
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14545016в
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
.__inference_reshape_120_layer_call_fn_14545021в
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_14545033в
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
+__inference_dense_60_layer_call_fn_14545042в
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
F__inference_dense_60_layer_call_and_return_conditional_losses_14545053в
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
.__inference_reshape_121_layer_call_fn_14545058в
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_14545073в
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
-__inference_conv3d_280_layer_call_fn_14545082в
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
H__inference_conv3d_280_layer_call_and_return_conditional_losses_14545093в
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
-__inference_conv3d_281_layer_call_fn_14545102в
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
H__inference_conv3d_281_layer_call_and_return_conditional_losses_14545113в
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
-__inference_conv3d_282_layer_call_fn_14545122в
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
H__inference_conv3d_282_layer_call_and_return_conditional_losses_14545133в
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
-__inference_conv3d_283_layer_call_fn_14545142в
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
H__inference_conv3d_283_layer_call_and_return_conditional_losses_14545153в
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
-__inference_conv3d_284_layer_call_fn_14545162в
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
H__inference_conv3d_284_layer_call_and_return_conditional_losses_14545172в
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
&__inference_signature_wrapper_14544393input"Ф
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
#__inference__wrapped_model_14543297Э23<=FGPQ^_lmvwАБКЛРС:в7
0в-
+К(
input         @@
к "Cк@
>

conv3d_2840К-

conv3d_284         @@Р
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14544863╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_108_layer_call_and_return_conditional_losses_14544872p;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0            
Ъ ш
8__inference_average_pooling3d_108_layer_call_fn_14544849л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_108_layer_call_fn_14544854c;в8
1в.
,К)
inputs          @@
к "$К!            Р
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14544911╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_109_layer_call_and_return_conditional_losses_14544920p;в8
1в.
,К)
inputs           
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_109_layer_call_fn_14544897л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_109_layer_call_fn_14544902c;в8
1в.
,К)
inputs           
к "$К!         Р
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14544959╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_110_layer_call_and_return_conditional_losses_14544968p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_110_layer_call_fn_14544945л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_110_layer_call_fn_14544950c;в8
1в.
,К)
inputs         
к "$К!         Р
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14545007╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_111_layer_call_and_return_conditional_losses_14545016p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_111_layer_call_fn_14544993л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_111_layer_call_fn_14544998c;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_276_layer_call_and_return_conditional_losses_14544844t23;в8
1в.
,К)
inputs         @@
к "1в.
'К$
0          @@
Ъ Ш
-__inference_conv3d_276_layer_call_fn_14544833g23;в8
1в.
,К)
inputs         @@
к "$К!          @@└
H__inference_conv3d_277_layer_call_and_return_conditional_losses_14544892t<=;в8
1в.
,К)
inputs            
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_277_layer_call_fn_14544881g<=;в8
1в.
,К)
inputs            
к "$К!           └
H__inference_conv3d_278_layer_call_and_return_conditional_losses_14544940tFG;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_278_layer_call_fn_14544929gFG;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_279_layer_call_and_return_conditional_losses_14544988tPQ;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_279_layer_call_fn_14544977gPQ;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_280_layer_call_and_return_conditional_losses_14545093tlm;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_280_layer_call_fn_14545082glm;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_281_layer_call_and_return_conditional_losses_14545113tvw;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_281_layer_call_fn_14545102gvw;в8
1в.
,К)
inputs         
к "$К!         ┬
H__inference_conv3d_282_layer_call_and_return_conditional_losses_14545133vАБ;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ъ
-__inference_conv3d_282_layer_call_fn_14545122iАБ;в8
1в.
,К)
inputs           
к "$К!           ┬
H__inference_conv3d_283_layer_call_and_return_conditional_losses_14545153vКЛ;в8
1в.
,К)
inputs         0@@
к "1в.
'К$
0          @@
Ъ Ъ
-__inference_conv3d_283_layer_call_fn_14545142iКЛ;в8
1в.
,К)
inputs         0@@
к "$К!          @@┬
H__inference_conv3d_284_layer_call_and_return_conditional_losses_14545172vРС;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0         @@
Ъ Ъ
-__inference_conv3d_284_layer_call_fn_14545162iРС;в8
1в.
,К)
inputs          @@
к "$К!         @@ж
F__inference_dense_60_layer_call_and_return_conditional_losses_14545053\^_/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_60_layer_call_fn_14545042O^_/в,
%в"
 К
inputs         @
к "К         @▐
F__inference_model_60_layer_call_and_return_conditional_losses_14544243У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_60_layer_call_and_return_conditional_losses_14544346У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_60_layer_call_and_return_conditional_losses_14544645Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
F__inference_model_60_layer_call_and_return_conditional_losses_14544807Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
+__inference_model_60_layer_call_fn_14543764Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p 

 
к "$К!         @@╢
+__inference_model_60_layer_call_fn_14544140Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p

 
к "$К!         @@╖
+__inference_model_60_layer_call_fn_14544438З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p 

 
к "$К!         @@╖
+__inference_model_60_layer_call_fn_14544483З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p

 
к "$К!         @@╔
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_14544824t?в<
5в2
0К-

parameters         @@
к "1в.
'К$
0         @@
Ъ б
6__inference_range_conversion_60_layer_call_fn_14544812g?в<
5в2
0К-

parameters         @@
к "$К!         @@▒
I__inference_reshape_120_layer_call_and_return_conditional_losses_14545033d;в8
1в.
,К)
inputs         
к "%в"
К
0         @
Ъ Й
.__inference_reshape_120_layer_call_fn_14545021W;в8
1в.
,К)
inputs         
к "К         @▒
I__inference_reshape_121_layer_call_and_return_conditional_losses_14545073d/в,
%в"
 К
inputs         @
к "1в.
'К$
0         
Ъ Й
.__inference_reshape_121_layer_call_fn_14545058W/в,
%в"
 К
inputs         @
к "$К!         ╤
&__inference_signature_wrapper_14544393ж23<=FGPQ^_lmvwАБКЛРСCв@
в 
9к6
4
input+К(
input         @@"Cк@
>

conv3d_2840К-

conv3d_284         @@