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
conv3d_486/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_486/kernel
Г
%conv3d_486/kernel/Read/ReadVariableOpReadVariableOpconv3d_486/kernel**
_output_shapes
: *
dtype0
v
conv3d_486/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_486/bias
o
#conv3d_486/bias/Read/ReadVariableOpReadVariableOpconv3d_486/bias*
_output_shapes
: *
dtype0
К
conv3d_487/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_487/kernel
Г
%conv3d_487/kernel/Read/ReadVariableOpReadVariableOpconv3d_487/kernel**
_output_shapes
: *
dtype0
v
conv3d_487/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_487/bias
o
#conv3d_487/bias/Read/ReadVariableOpReadVariableOpconv3d_487/bias*
_output_shapes
:*
dtype0
К
conv3d_488/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_488/kernel
Г
%conv3d_488/kernel/Read/ReadVariableOpReadVariableOpconv3d_488/kernel**
_output_shapes
:*
dtype0
v
conv3d_488/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_488/bias
o
#conv3d_488/bias/Read/ReadVariableOpReadVariableOpconv3d_488/bias*
_output_shapes
:*
dtype0
К
conv3d_489/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_489/kernel
Г
%conv3d_489/kernel/Read/ReadVariableOpReadVariableOpconv3d_489/kernel**
_output_shapes
:*
dtype0
v
conv3d_489/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_489/bias
o
#conv3d_489/bias/Read/ReadVariableOpReadVariableOpconv3d_489/bias*
_output_shapes
:*
dtype0
z
dense_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_94/kernel
s
#dense_94/kernel/Read/ReadVariableOpReadVariableOpdense_94/kernel*
_output_shapes

:@@*
dtype0
r
dense_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_94/bias
k
!dense_94/bias/Read/ReadVariableOpReadVariableOpdense_94/bias*
_output_shapes
:@*
dtype0
К
conv3d_490/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_490/kernel
Г
%conv3d_490/kernel/Read/ReadVariableOpReadVariableOpconv3d_490/kernel**
_output_shapes
:*
dtype0
v
conv3d_490/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_490/bias
o
#conv3d_490/bias/Read/ReadVariableOpReadVariableOpconv3d_490/bias*
_output_shapes
:*
dtype0
К
conv3d_491/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_491/kernel
Г
%conv3d_491/kernel/Read/ReadVariableOpReadVariableOpconv3d_491/kernel**
_output_shapes
:*
dtype0
v
conv3d_491/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_491/bias
o
#conv3d_491/bias/Read/ReadVariableOpReadVariableOpconv3d_491/bias*
_output_shapes
:*
dtype0
К
conv3d_492/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_492/kernel
Г
%conv3d_492/kernel/Read/ReadVariableOpReadVariableOpconv3d_492/kernel**
_output_shapes
:*
dtype0
v
conv3d_492/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_492/bias
o
#conv3d_492/bias/Read/ReadVariableOpReadVariableOpconv3d_492/bias*
_output_shapes
:*
dtype0
К
conv3d_493/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_493/kernel
Г
%conv3d_493/kernel/Read/ReadVariableOpReadVariableOpconv3d_493/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_493/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_493/bias
o
#conv3d_493/bias/Read/ReadVariableOpReadVariableOpconv3d_493/bias*
_output_shapes
: *
dtype0
К
conv3d_494/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_494/kernel
Г
%conv3d_494/kernel/Read/ReadVariableOpReadVariableOpconv3d_494/kernel**
_output_shapes
: *
dtype0
v
conv3d_494/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_494/bias
o
#conv3d_494/bias/Read/ReadVariableOpReadVariableOpconv3d_494/bias*
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
VARIABLE_VALUEconv3d_486/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_486/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_487/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_487/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_488/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_488/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_489/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_489/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_94/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_94/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_490/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_490/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_491/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_491/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_492/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_492/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_493/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_493/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_494/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_494/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_486/kernelconv3d_486/biasconv3d_487/kernelconv3d_487/biasconv3d_488/kernelconv3d_488/biasconv3d_489/kernelconv3d_489/biasdense_94/kerneldense_94/biasconv3d_490/kernelconv3d_490/biasconv3d_491/kernelconv3d_491/biasconv3d_492/kernelconv3d_492/biasconv3d_493/kernelconv3d_493/biasconv3d_494/kernelconv3d_494/bias* 
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
&__inference_signature_wrapper_25209636
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
░
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_486/kernel/Read/ReadVariableOp#conv3d_486/bias/Read/ReadVariableOp%conv3d_487/kernel/Read/ReadVariableOp#conv3d_487/bias/Read/ReadVariableOp%conv3d_488/kernel/Read/ReadVariableOp#conv3d_488/bias/Read/ReadVariableOp%conv3d_489/kernel/Read/ReadVariableOp#conv3d_489/bias/Read/ReadVariableOp#dense_94/kernel/Read/ReadVariableOp!dense_94/bias/Read/ReadVariableOp%conv3d_490/kernel/Read/ReadVariableOp#conv3d_490/bias/Read/ReadVariableOp%conv3d_491/kernel/Read/ReadVariableOp#conv3d_491/bias/Read/ReadVariableOp%conv3d_492/kernel/Read/ReadVariableOp#conv3d_492/bias/Read/ReadVariableOp%conv3d_493/kernel/Read/ReadVariableOp#conv3d_493/bias/Read/ReadVariableOp%conv3d_494/kernel/Read/ReadVariableOp#conv3d_494/bias/Read/ReadVariableOpConst*!
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
!__inference__traced_save_25210498
Ы
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_486/kernelconv3d_486/biasconv3d_487/kernelconv3d_487/biasconv3d_488/kernelconv3d_488/biasconv3d_489/kernelconv3d_489/biasdense_94/kerneldense_94/biasconv3d_490/kernelconv3d_490/biasconv3d_491/kernelconv3d_491/biasconv3d_492/kernelconv3d_492/biasconv3d_493/kernelconv3d_493/biasconv3d_494/kernelconv3d_494/bias* 
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
$__inference__traced_restore_25210568БЩ
╬
Е
H__inference_conv3d_488_layer_call_and_return_conditional_losses_25210183

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
-__inference_conv3d_492_layer_call_fn_25210365

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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_252089162
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
H__inference_conv3d_490_layer_call_and_return_conditional_losses_25210336

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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25208553

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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25210163

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
М	
o
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25208716

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
А
Ш
+__inference_dense_94_layer_call_fn_25210285

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
F__inference_dense_94_layer_call_and_return_conditional_losses_252088242
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
┴
ж
-__inference_conv3d_486_layer_call_fn_25210076

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
H__inference_conv3d_486_layer_call_and_return_conditional_losses_252087022
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
╒3
╛
!__inference__traced_save_25210498
file_prefix0
,savev2_conv3d_486_kernel_read_readvariableop.
*savev2_conv3d_486_bias_read_readvariableop0
,savev2_conv3d_487_kernel_read_readvariableop.
*savev2_conv3d_487_bias_read_readvariableop0
,savev2_conv3d_488_kernel_read_readvariableop.
*savev2_conv3d_488_bias_read_readvariableop0
,savev2_conv3d_489_kernel_read_readvariableop.
*savev2_conv3d_489_bias_read_readvariableop.
*savev2_dense_94_kernel_read_readvariableop,
(savev2_dense_94_bias_read_readvariableop0
,savev2_conv3d_490_kernel_read_readvariableop.
*savev2_conv3d_490_bias_read_readvariableop0
,savev2_conv3d_491_kernel_read_readvariableop.
*savev2_conv3d_491_bias_read_readvariableop0
,savev2_conv3d_492_kernel_read_readvariableop.
*savev2_conv3d_492_bias_read_readvariableop0
,savev2_conv3d_493_kernel_read_readvariableop.
*savev2_conv3d_493_bias_read_readvariableop0
,savev2_conv3d_494_kernel_read_readvariableop.
*savev2_conv3d_494_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_486_kernel_read_readvariableop*savev2_conv3d_486_bias_read_readvariableop,savev2_conv3d_487_kernel_read_readvariableop*savev2_conv3d_487_bias_read_readvariableop,savev2_conv3d_488_kernel_read_readvariableop*savev2_conv3d_488_bias_read_readvariableop,savev2_conv3d_489_kernel_read_readvariableop*savev2_conv3d_489_bias_read_readvariableop*savev2_dense_94_kernel_read_readvariableop(savev2_dense_94_bias_read_readvariableop,savev2_conv3d_490_kernel_read_readvariableop*savev2_conv3d_490_bias_read_readvariableop,savev2_conv3d_491_kernel_read_readvariableop*savev2_conv3d_491_bias_read_readvariableop,savev2_conv3d_492_kernel_read_readvariableop*savev2_conv3d_492_bias_read_readvariableop,savev2_conv3d_493_kernel_read_readvariableop*savev2_conv3d_493_bias_read_readvariableop,savev2_conv3d_494_kernel_read_readvariableop*savev2_conv3d_494_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
F__inference_model_94_layer_call_and_return_conditional_losses_25209888

inputsG
)conv3d_486_conv3d_readvariableop_resource: 8
*conv3d_486_biasadd_readvariableop_resource: G
)conv3d_487_conv3d_readvariableop_resource: 8
*conv3d_487_biasadd_readvariableop_resource:G
)conv3d_488_conv3d_readvariableop_resource:8
*conv3d_488_biasadd_readvariableop_resource:G
)conv3d_489_conv3d_readvariableop_resource:8
*conv3d_489_biasadd_readvariableop_resource:9
'dense_94_matmul_readvariableop_resource:@@6
(dense_94_biasadd_readvariableop_resource:@G
)conv3d_490_conv3d_readvariableop_resource:8
*conv3d_490_biasadd_readvariableop_resource:G
)conv3d_491_conv3d_readvariableop_resource:8
*conv3d_491_biasadd_readvariableop_resource:G
)conv3d_492_conv3d_readvariableop_resource:8
*conv3d_492_biasadd_readvariableop_resource:G
)conv3d_493_conv3d_readvariableop_resource:0 8
*conv3d_493_biasadd_readvariableop_resource: G
)conv3d_494_conv3d_readvariableop_resource: 8
*conv3d_494_biasadd_readvariableop_resource:
identityИв!conv3d_486/BiasAdd/ReadVariableOpв conv3d_486/Conv3D/ReadVariableOpв!conv3d_487/BiasAdd/ReadVariableOpв conv3d_487/Conv3D/ReadVariableOpв!conv3d_488/BiasAdd/ReadVariableOpв conv3d_488/Conv3D/ReadVariableOpв!conv3d_489/BiasAdd/ReadVariableOpв conv3d_489/Conv3D/ReadVariableOpв!conv3d_490/BiasAdd/ReadVariableOpв conv3d_490/Conv3D/ReadVariableOpв!conv3d_491/BiasAdd/ReadVariableOpв conv3d_491/Conv3D/ReadVariableOpв!conv3d_492/BiasAdd/ReadVariableOpв conv3d_492/Conv3D/ReadVariableOpв!conv3d_493/BiasAdd/ReadVariableOpв conv3d_493/Conv3D/ReadVariableOpв!conv3d_494/BiasAdd/ReadVariableOpв conv3d_494/Conv3D/ReadVariableOpвdense_94/BiasAdd/ReadVariableOpвdense_94/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_524/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_524/strided_slice/stack╣
2tf.__operators__.getitem_524/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_524/strided_slice/stack_1╣
2tf.__operators__.getitem_524/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_524/strided_slice/stack_2Т
*tf.__operators__.getitem_524/strided_sliceStridedSliceinputs9tf.__operators__.getitem_524/strided_slice/stack:output:0;tf.__operators__.getitem_524/strided_slice/stack_1:output:0;tf.__operators__.getitem_524/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_524/strided_slice{
range_conversion_94/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_94/sub/y╨
range_conversion_94/subSub3tf.__operators__.getitem_524/strided_slice:output:0"range_conversion_94/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/subГ
range_conversion_94/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_94/truediv/y╚
range_conversion_94/truedivRealDivrange_conversion_94/sub:z:0&range_conversion_94/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/truediv{
range_conversion_94/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_94/mul/y╝
range_conversion_94/mulMulrange_conversion_94/truediv:z:0"range_conversion_94/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/mul{
range_conversion_94/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_94/add/y║
range_conversion_94/addAddV2range_conversion_94/mul:z:0"range_conversion_94/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/add╡
0tf.__operators__.getitem_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_525/strided_slice/stack╣
2tf.__operators__.getitem_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_525/strided_slice/stack_1╣
2tf.__operators__.getitem_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_525/strided_slice/stack_2Т
*tf.__operators__.getitem_525/strided_sliceStridedSliceinputs9tf.__operators__.getitem_525/strided_slice/stack:output:0;tf.__operators__.getitem_525/strided_slice/stack_1:output:0;tf.__operators__.getitem_525/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_525/strided_slicex
tf.concat_720/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_720/concat/axisї
tf.concat_720/concatConcatV2range_conversion_94/add:z:03tf.__operators__.getitem_525/strided_slice:output:0"tf.concat_720/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_720/concat║
 conv3d_486/Conv3D/ReadVariableOpReadVariableOp)conv3d_486_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_486/Conv3D/ReadVariableOp°
conv3d_486/Conv3DConv3Dtf.concat_720/concat:output:0(conv3d_486/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_486/Conv3Dн
!conv3d_486/BiasAdd/ReadVariableOpReadVariableOp*conv3d_486_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_486/BiasAdd/ReadVariableOp╧
conv3d_486/BiasAddBiasAddconv3d_486/Conv3D:output:0)conv3d_486/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_486/BiasAddС
conv3d_486/SoftplusSoftplusconv3d_486/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_486/Softplusй
$average_pooling3d_196/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_196/transpose/perm▀
average_pooling3d_196/transpose	Transpose!conv3d_486/Softplus:activations:0-average_pooling3d_196/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_196/transposeЁ
average_pooling3d_196/AvgPool3D	AvgPool3D#average_pooling3d_196/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_196/AvgPool3Dн
&average_pooling3d_196/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_196/transpose_1/permь
!average_pooling3d_196/transpose_1	Transpose(average_pooling3d_196/AvgPool3D:output:0/average_pooling3d_196/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_196/transpose_1║
 conv3d_487/Conv3D/ReadVariableOpReadVariableOp)conv3d_487_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_487/Conv3D/ReadVariableOpА
conv3d_487/Conv3DConv3D%average_pooling3d_196/transpose_1:y:0(conv3d_487/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_487/Conv3Dн
!conv3d_487/BiasAdd/ReadVariableOpReadVariableOp*conv3d_487_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_487/BiasAdd/ReadVariableOp╧
conv3d_487/BiasAddBiasAddconv3d_487/Conv3D:output:0)conv3d_487/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_487/BiasAddС
conv3d_487/SoftplusSoftplusconv3d_487/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_487/Softplusй
$average_pooling3d_197/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_197/transpose/perm▀
average_pooling3d_197/transpose	Transpose!conv3d_487/Softplus:activations:0-average_pooling3d_197/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_197/transposeЁ
average_pooling3d_197/AvgPool3D	AvgPool3D#average_pooling3d_197/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_197/AvgPool3Dн
&average_pooling3d_197/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_197/transpose_1/permь
!average_pooling3d_197/transpose_1	Transpose(average_pooling3d_197/AvgPool3D:output:0/average_pooling3d_197/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_197/transpose_1║
 conv3d_488/Conv3D/ReadVariableOpReadVariableOp)conv3d_488_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_488/Conv3D/ReadVariableOpА
conv3d_488/Conv3DConv3D%average_pooling3d_197/transpose_1:y:0(conv3d_488/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_488/Conv3Dн
!conv3d_488/BiasAdd/ReadVariableOpReadVariableOp*conv3d_488_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_488/BiasAdd/ReadVariableOp╧
conv3d_488/BiasAddBiasAddconv3d_488/Conv3D:output:0)conv3d_488/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_488/BiasAddС
conv3d_488/SoftplusSoftplusconv3d_488/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_488/Softplusй
$average_pooling3d_198/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_198/transpose/perm▀
average_pooling3d_198/transpose	Transpose!conv3d_488/Softplus:activations:0-average_pooling3d_198/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_198/transposeЁ
average_pooling3d_198/AvgPool3D	AvgPool3D#average_pooling3d_198/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_198/AvgPool3Dн
&average_pooling3d_198/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_198/transpose_1/permь
!average_pooling3d_198/transpose_1	Transpose(average_pooling3d_198/AvgPool3D:output:0/average_pooling3d_198/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_198/transpose_1║
 conv3d_489/Conv3D/ReadVariableOpReadVariableOp)conv3d_489_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_489/Conv3D/ReadVariableOpА
conv3d_489/Conv3DConv3D%average_pooling3d_198/transpose_1:y:0(conv3d_489/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_489/Conv3Dн
!conv3d_489/BiasAdd/ReadVariableOpReadVariableOp*conv3d_489_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_489/BiasAdd/ReadVariableOp╧
conv3d_489/BiasAddBiasAddconv3d_489/Conv3D:output:0)conv3d_489/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_489/BiasAddС
conv3d_489/SoftplusSoftplusconv3d_489/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_489/Softplusй
$average_pooling3d_199/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_199/transpose/perm▀
average_pooling3d_199/transpose	Transpose!conv3d_489/Softplus:activations:0-average_pooling3d_199/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_199/transposeЁ
average_pooling3d_199/AvgPool3D	AvgPool3D#average_pooling3d_199/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_199/AvgPool3Dн
&average_pooling3d_199/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_199/transpose_1/permь
!average_pooling3d_199/transpose_1	Transpose(average_pooling3d_199/AvgPool3D:output:0/average_pooling3d_199/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_199/transpose_1{
reshape_188/ShapeShape%average_pooling3d_199/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_188/ShapeМ
reshape_188/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_188/strided_slice/stackР
!reshape_188/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_188/strided_slice/stack_1Р
!reshape_188/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_188/strided_slice/stack_2к
reshape_188/strided_sliceStridedSlicereshape_188/Shape:output:0(reshape_188/strided_slice/stack:output:0*reshape_188/strided_slice/stack_1:output:0*reshape_188/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_188/strided_slice|
reshape_188/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_188/Reshape/shape/1╢
reshape_188/Reshape/shapePack"reshape_188/strided_slice:output:0$reshape_188/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_188/Reshape/shape▓
reshape_188/ReshapeReshape%average_pooling3d_199/transpose_1:y:0"reshape_188/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_188/Reshapeи
dense_94/MatMul/ReadVariableOpReadVariableOp'dense_94_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_94/MatMul/ReadVariableOpд
dense_94/MatMulMatMulreshape_188/Reshape:output:0&dense_94/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_94/MatMulз
dense_94/BiasAdd/ReadVariableOpReadVariableOp(dense_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_94/BiasAdd/ReadVariableOpе
dense_94/BiasAddBiasAdddense_94/MatMul:product:0'dense_94/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_94/BiasAdd
dense_94/SoftplusSoftplusdense_94/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_94/Softplusu
reshape_189/ShapeShapedense_94/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_189/ShapeМ
reshape_189/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_189/strided_slice/stackР
!reshape_189/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_189/strided_slice/stack_1Р
!reshape_189/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_189/strided_slice/stack_2к
reshape_189/strided_sliceStridedSlicereshape_189/Shape:output:0(reshape_189/strided_slice/stack:output:0*reshape_189/strided_slice/stack_1:output:0*reshape_189/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_189/strided_slice|
reshape_189/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/1|
reshape_189/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/2|
reshape_189/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/3|
reshape_189/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/4и
reshape_189/Reshape/shapePack"reshape_189/strided_slice:output:0$reshape_189/Reshape/shape/1:output:0$reshape_189/Reshape/shape/2:output:0$reshape_189/Reshape/shape/3:output:0$reshape_189/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_189/Reshape/shape╕
reshape_189/ReshapeReshapedense_94/Softplus:activations:0"reshape_189/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_189/Reshapeе
tf.reshape_916/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_916/Reshape/shape╩
tf.reshape_916/ReshapeReshapereshape_189/Reshape:output:0%tf.reshape_916/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_916/Reshapeб
tf.tile_458/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_458/Tile/multiples╝
tf.tile_458/TileTiletf.reshape_916/Reshape:output:0#tf.tile_458/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_458/TileЩ
tf.reshape_917/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_917/Reshape/shape╗
tf.reshape_917/ReshapeReshapetf.tile_458/Tile:output:0%tf.reshape_917/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_917/Reshapex
tf.concat_721/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_721/concat/axisч
tf.concat_721/concatConcatV2tf.reshape_917/Reshape:output:0!conv3d_489/Softplus:activations:0"tf.concat_721/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_721/concat║
 conv3d_490/Conv3D/ReadVariableOpReadVariableOp)conv3d_490_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_490/Conv3D/ReadVariableOp°
conv3d_490/Conv3DConv3Dtf.concat_721/concat:output:0(conv3d_490/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_490/Conv3Dн
!conv3d_490/BiasAdd/ReadVariableOpReadVariableOp*conv3d_490_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_490/BiasAdd/ReadVariableOp╧
conv3d_490/BiasAddBiasAddconv3d_490/Conv3D:output:0)conv3d_490/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_490/BiasAddС
conv3d_490/SoftplusSoftplusconv3d_490/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_490/Softplusе
tf.reshape_918/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_918/Reshape/shape╧
tf.reshape_918/ReshapeReshape!conv3d_490/Softplus:activations:0%tf.reshape_918/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_918/Reshapeб
tf.tile_459/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_459/Tile/multiples╝
tf.tile_459/TileTiletf.reshape_918/Reshape:output:0#tf.tile_459/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_459/TileЩ
tf.reshape_919/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_919/Reshape/shape╗
tf.reshape_919/ReshapeReshapetf.tile_459/Tile:output:0%tf.reshape_919/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_919/Reshapex
tf.concat_722/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_722/concat/axisч
tf.concat_722/concatConcatV2tf.reshape_919/Reshape:output:0!conv3d_488/Softplus:activations:0"tf.concat_722/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_722/concat║
 conv3d_491/Conv3D/ReadVariableOpReadVariableOp)conv3d_491_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_491/Conv3D/ReadVariableOp°
conv3d_491/Conv3DConv3Dtf.concat_722/concat:output:0(conv3d_491/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_491/Conv3Dн
!conv3d_491/BiasAdd/ReadVariableOpReadVariableOp*conv3d_491_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_491/BiasAdd/ReadVariableOp╧
conv3d_491/BiasAddBiasAddconv3d_491/Conv3D:output:0)conv3d_491/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_491/BiasAddС
conv3d_491/SoftplusSoftplusconv3d_491/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_491/Softplusе
tf.reshape_920/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_920/Reshape/shape╧
tf.reshape_920/ReshapeReshape!conv3d_491/Softplus:activations:0%tf.reshape_920/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_920/Reshapeб
tf.tile_460/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_460/Tile/multiples╝
tf.tile_460/TileTiletf.reshape_920/Reshape:output:0#tf.tile_460/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_460/TileЩ
tf.reshape_921/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_921/Reshape/shape╗
tf.reshape_921/ReshapeReshapetf.tile_460/Tile:output:0%tf.reshape_921/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_921/Reshapex
tf.concat_723/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_723/concat/axisч
tf.concat_723/concatConcatV2tf.reshape_921/Reshape:output:0!conv3d_487/Softplus:activations:0"tf.concat_723/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_723/concat║
 conv3d_492/Conv3D/ReadVariableOpReadVariableOp)conv3d_492_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_492/Conv3D/ReadVariableOp°
conv3d_492/Conv3DConv3Dtf.concat_723/concat:output:0(conv3d_492/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_492/Conv3Dн
!conv3d_492/BiasAdd/ReadVariableOpReadVariableOp*conv3d_492_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_492/BiasAdd/ReadVariableOp╧
conv3d_492/BiasAddBiasAddconv3d_492/Conv3D:output:0)conv3d_492/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_492/BiasAddС
conv3d_492/SoftplusSoftplusconv3d_492/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_492/Softplusе
tf.reshape_922/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_922/Reshape/shape╧
tf.reshape_922/ReshapeReshape!conv3d_492/Softplus:activations:0%tf.reshape_922/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_922/Reshapeб
tf.tile_461/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_461/Tile/multiples╝
tf.tile_461/TileTiletf.reshape_922/Reshape:output:0#tf.tile_461/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_461/TileЩ
tf.reshape_923/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_923/Reshape/shape╗
tf.reshape_923/ReshapeReshapetf.tile_461/Tile:output:0%tf.reshape_923/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_923/Reshapex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axisч
tf.concat_724/concatConcatV2tf.reshape_923/Reshape:output:0!conv3d_486/Softplus:activations:0"tf.concat_724/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_724/concat║
 conv3d_493/Conv3D/ReadVariableOpReadVariableOp)conv3d_493_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_493/Conv3D/ReadVariableOp°
conv3d_493/Conv3DConv3Dtf.concat_724/concat:output:0(conv3d_493/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_493/Conv3Dн
!conv3d_493/BiasAdd/ReadVariableOpReadVariableOp*conv3d_493_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_493/BiasAdd/ReadVariableOp╧
conv3d_493/BiasAddBiasAddconv3d_493/Conv3D:output:0)conv3d_493/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_493/BiasAddС
conv3d_493/SoftplusSoftplusconv3d_493/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_493/Softplus║
 conv3d_494/Conv3D/ReadVariableOpReadVariableOp)conv3d_494_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_494/Conv3D/ReadVariableOp№
conv3d_494/Conv3DConv3D!conv3d_493/Softplus:activations:0(conv3d_494/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_494/Conv3Dн
!conv3d_494/BiasAdd/ReadVariableOpReadVariableOp*conv3d_494_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_494/BiasAdd/ReadVariableOp╧
conv3d_494/BiasAddBiasAddconv3d_494/Conv3D:output:0)conv3d_494/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_494/BiasAddВ
IdentityIdentityconv3d_494/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_486/BiasAdd/ReadVariableOp!^conv3d_486/Conv3D/ReadVariableOp"^conv3d_487/BiasAdd/ReadVariableOp!^conv3d_487/Conv3D/ReadVariableOp"^conv3d_488/BiasAdd/ReadVariableOp!^conv3d_488/Conv3D/ReadVariableOp"^conv3d_489/BiasAdd/ReadVariableOp!^conv3d_489/Conv3D/ReadVariableOp"^conv3d_490/BiasAdd/ReadVariableOp!^conv3d_490/Conv3D/ReadVariableOp"^conv3d_491/BiasAdd/ReadVariableOp!^conv3d_491/Conv3D/ReadVariableOp"^conv3d_492/BiasAdd/ReadVariableOp!^conv3d_492/Conv3D/ReadVariableOp"^conv3d_493/BiasAdd/ReadVariableOp!^conv3d_493/Conv3D/ReadVariableOp"^conv3d_494/BiasAdd/ReadVariableOp!^conv3d_494/Conv3D/ReadVariableOp ^dense_94/BiasAdd/ReadVariableOp^dense_94/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_486/BiasAdd/ReadVariableOp!conv3d_486/BiasAdd/ReadVariableOp2D
 conv3d_486/Conv3D/ReadVariableOp conv3d_486/Conv3D/ReadVariableOp2F
!conv3d_487/BiasAdd/ReadVariableOp!conv3d_487/BiasAdd/ReadVariableOp2D
 conv3d_487/Conv3D/ReadVariableOp conv3d_487/Conv3D/ReadVariableOp2F
!conv3d_488/BiasAdd/ReadVariableOp!conv3d_488/BiasAdd/ReadVariableOp2D
 conv3d_488/Conv3D/ReadVariableOp conv3d_488/Conv3D/ReadVariableOp2F
!conv3d_489/BiasAdd/ReadVariableOp!conv3d_489/BiasAdd/ReadVariableOp2D
 conv3d_489/Conv3D/ReadVariableOp conv3d_489/Conv3D/ReadVariableOp2F
!conv3d_490/BiasAdd/ReadVariableOp!conv3d_490/BiasAdd/ReadVariableOp2D
 conv3d_490/Conv3D/ReadVariableOp conv3d_490/Conv3D/ReadVariableOp2F
!conv3d_491/BiasAdd/ReadVariableOp!conv3d_491/BiasAdd/ReadVariableOp2D
 conv3d_491/Conv3D/ReadVariableOp conv3d_491/Conv3D/ReadVariableOp2F
!conv3d_492/BiasAdd/ReadVariableOp!conv3d_492/BiasAdd/ReadVariableOp2D
 conv3d_492/Conv3D/ReadVariableOp conv3d_492/Conv3D/ReadVariableOp2F
!conv3d_493/BiasAdd/ReadVariableOp!conv3d_493/BiasAdd/ReadVariableOp2D
 conv3d_493/Conv3D/ReadVariableOp conv3d_493/Conv3D/ReadVariableOp2F
!conv3d_494/BiasAdd/ReadVariableOp!conv3d_494/BiasAdd/ReadVariableOp2D
 conv3d_494/Conv3D/ReadVariableOp conv3d_494/Conv3D/ReadVariableOp2B
dense_94/BiasAdd/ReadVariableOpdense_94/BiasAdd/ReadVariableOp2@
dense_94/MatMul/ReadVariableOpdense_94/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_486_layer_call_and_return_conditional_losses_25210087

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
Ь
e
I__inference_reshape_188_layer_call_and_return_conditional_losses_25210276

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
х

o
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25208613

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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25208770

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
H__inference_conv3d_489_layer_call_and_return_conditional_losses_25210231

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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25208643

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
г
є
+__inference_model_94_layer_call_fn_25209681

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
F__inference_model_94_layer_call_and_return_conditional_losses_252089642
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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25210115

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
H__inference_conv3d_488_layer_call_and_return_conditional_losses_25208756

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
х

o
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25210250

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
-__inference_conv3d_493_layer_call_fn_25210385

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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_252089412
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
ж
T
8__inference_average_pooling3d_198_layer_call_fn_25210188

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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_252086132
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
х

o
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25210154

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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25210202

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
8__inference_average_pooling3d_197_layer_call_fn_25210140

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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_252085832
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
кX
Л
$__inference__traced_restore_25210568
file_prefix@
"assignvariableop_conv3d_486_kernel: 0
"assignvariableop_1_conv3d_486_bias: B
$assignvariableop_2_conv3d_487_kernel: 0
"assignvariableop_3_conv3d_487_bias:B
$assignvariableop_4_conv3d_488_kernel:0
"assignvariableop_5_conv3d_488_bias:B
$assignvariableop_6_conv3d_489_kernel:0
"assignvariableop_7_conv3d_489_bias:4
"assignvariableop_8_dense_94_kernel:@@.
 assignvariableop_9_dense_94_bias:@C
%assignvariableop_10_conv3d_490_kernel:1
#assignvariableop_11_conv3d_490_bias:C
%assignvariableop_12_conv3d_491_kernel:1
#assignvariableop_13_conv3d_491_bias:C
%assignvariableop_14_conv3d_492_kernel:1
#assignvariableop_15_conv3d_492_bias:C
%assignvariableop_16_conv3d_493_kernel:0 1
#assignvariableop_17_conv3d_493_bias: C
%assignvariableop_18_conv3d_494_kernel: 1
#assignvariableop_19_conv3d_494_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_486_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_486_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_487_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_487_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_488_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_488_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_489_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_489_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_94_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_94_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_490_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_490_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_491_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_491_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_492_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_492_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16н
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_493_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17л
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_493_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18н
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_494_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19л
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_494_biasIdentity_19:output:0"/device:CPU:0*
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
¤Т
а

F__inference_model_94_layer_call_and_return_conditional_losses_25209486	
input1
conv3d_486_25209397: !
conv3d_486_25209399: 1
conv3d_487_25209403: !
conv3d_487_25209405:1
conv3d_488_25209409:!
conv3d_488_25209411:1
conv3d_489_25209415:!
conv3d_489_25209417:#
dense_94_25209422:@@
dense_94_25209424:@1
conv3d_490_25209436:!
conv3d_490_25209438:1
conv3d_491_25209449:!
conv3d_491_25209451:1
conv3d_492_25209462:!
conv3d_492_25209464:1
conv3d_493_25209475:0 !
conv3d_493_25209477: 1
conv3d_494_25209480: !
conv3d_494_25209482:
identityИв"conv3d_486/StatefulPartitionedCallв"conv3d_487/StatefulPartitionedCallв"conv3d_488/StatefulPartitionedCallв"conv3d_489/StatefulPartitionedCallв"conv3d_490/StatefulPartitionedCallв"conv3d_491/StatefulPartitionedCallв"conv3d_492/StatefulPartitionedCallв"conv3d_493/StatefulPartitionedCallв"conv3d_494/StatefulPartitionedCallв dense_94/StatefulPartitionedCall╡
0tf.__operators__.getitem_524/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_524/strided_slice/stack╣
2tf.__operators__.getitem_524/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_524/strided_slice/stack_1╣
2tf.__operators__.getitem_524/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_524/strided_slice/stack_2С
*tf.__operators__.getitem_524/strided_sliceStridedSliceinput9tf.__operators__.getitem_524/strided_slice/stack:output:0;tf.__operators__.getitem_524/strided_slice/stack_1:output:0;tf.__operators__.getitem_524/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_524/strided_slice╗
#range_conversion_94/PartitionedCallPartitionedCall3tf.__operators__.getitem_524/strided_slice:output:0*
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
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_252086832%
#range_conversion_94/PartitionedCall╡
0tf.__operators__.getitem_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_525/strided_slice/stack╣
2tf.__operators__.getitem_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_525/strided_slice/stack_1╣
2tf.__operators__.getitem_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_525/strided_slice/stack_2С
*tf.__operators__.getitem_525/strided_sliceStridedSliceinput9tf.__operators__.getitem_525/strided_slice/stack:output:0;tf.__operators__.getitem_525/strided_slice/stack_1:output:0;tf.__operators__.getitem_525/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_525/strided_slicex
tf.concat_720/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_720/concat/axisЖ
tf.concat_720/concatConcatV2,range_conversion_94/PartitionedCall:output:03tf.__operators__.getitem_525/strided_slice:output:0"tf.concat_720/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_720/concat╥
"conv3d_486/StatefulPartitionedCallStatefulPartitionedCalltf.concat_720/concat:output:0conv3d_486_25209397conv3d_486_25209399*
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
H__inference_conv3d_486_layer_call_and_return_conditional_losses_252087022$
"conv3d_486/StatefulPartitionedCall╣
%average_pooling3d_196/PartitionedCallPartitionedCall+conv3d_486/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_252087162'
%average_pooling3d_196/PartitionedCallу
"conv3d_487/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_196/PartitionedCall:output:0conv3d_487_25209403conv3d_487_25209405*
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
H__inference_conv3d_487_layer_call_and_return_conditional_losses_252087292$
"conv3d_487/StatefulPartitionedCall╣
%average_pooling3d_197/PartitionedCallPartitionedCall+conv3d_487/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_252087432'
%average_pooling3d_197/PartitionedCallу
"conv3d_488/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_197/PartitionedCall:output:0conv3d_488_25209409conv3d_488_25209411*
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
H__inference_conv3d_488_layer_call_and_return_conditional_losses_252087562$
"conv3d_488/StatefulPartitionedCall╣
%average_pooling3d_198/PartitionedCallPartitionedCall+conv3d_488/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_252087702'
%average_pooling3d_198/PartitionedCallу
"conv3d_489/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_198/PartitionedCall:output:0conv3d_489_25209415conv3d_489_25209417*
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
H__inference_conv3d_489_layer_call_and_return_conditional_losses_252087832$
"conv3d_489/StatefulPartitionedCall╣
%average_pooling3d_199/PartitionedCallPartitionedCall+conv3d_489/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_252087972'
%average_pooling3d_199/PartitionedCallТ
reshape_188/PartitionedCallPartitionedCall.average_pooling3d_199/PartitionedCall:output:0*
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
I__inference_reshape_188_layer_call_and_return_conditional_losses_252088112
reshape_188/PartitionedCall├
 dense_94/StatefulPartitionedCallStatefulPartitionedCall$reshape_188/PartitionedCall:output:0dense_94_25209422dense_94_25209424*
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
F__inference_dense_94_layer_call_and_return_conditional_losses_252088242"
 dense_94/StatefulPartitionedCallЩ
reshape_189/PartitionedCallPartitionedCall)dense_94/StatefulPartitionedCall:output:0*
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
I__inference_reshape_189_layer_call_and_return_conditional_losses_252088452
reshape_189/PartitionedCallе
tf.reshape_916/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_916/Reshape/shape╥
tf.reshape_916/ReshapeReshape$reshape_189/PartitionedCall:output:0%tf.reshape_916/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_916/Reshapeб
tf.tile_458/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_458/Tile/multiples╝
tf.tile_458/TileTiletf.reshape_916/Reshape:output:0#tf.tile_458/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_458/TileЩ
tf.reshape_917/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_917/Reshape/shape╗
tf.reshape_917/ReshapeReshapetf.tile_458/Tile:output:0%tf.reshape_917/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_917/Reshapex
tf.concat_721/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_721/concat/axisё
tf.concat_721/concatConcatV2tf.reshape_917/Reshape:output:0+conv3d_489/StatefulPartitionedCall:output:0"tf.concat_721/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_721/concat╥
"conv3d_490/StatefulPartitionedCallStatefulPartitionedCalltf.concat_721/concat:output:0conv3d_490_25209436conv3d_490_25209438*
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
H__inference_conv3d_490_layer_call_and_return_conditional_losses_252088662$
"conv3d_490/StatefulPartitionedCallе
tf.reshape_918/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_918/Reshape/shape┘
tf.reshape_918/ReshapeReshape+conv3d_490/StatefulPartitionedCall:output:0%tf.reshape_918/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_918/Reshapeб
tf.tile_459/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_459/Tile/multiples╝
tf.tile_459/TileTiletf.reshape_918/Reshape:output:0#tf.tile_459/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_459/TileЩ
tf.reshape_919/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_919/Reshape/shape╗
tf.reshape_919/ReshapeReshapetf.tile_459/Tile:output:0%tf.reshape_919/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_919/Reshapex
tf.concat_722/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_722/concat/axisё
tf.concat_722/concatConcatV2tf.reshape_919/Reshape:output:0+conv3d_488/StatefulPartitionedCall:output:0"tf.concat_722/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_722/concat╥
"conv3d_491/StatefulPartitionedCallStatefulPartitionedCalltf.concat_722/concat:output:0conv3d_491_25209449conv3d_491_25209451*
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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_252088912$
"conv3d_491/StatefulPartitionedCallе
tf.reshape_920/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_920/Reshape/shape┘
tf.reshape_920/ReshapeReshape+conv3d_491/StatefulPartitionedCall:output:0%tf.reshape_920/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_920/Reshapeб
tf.tile_460/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_460/Tile/multiples╝
tf.tile_460/TileTiletf.reshape_920/Reshape:output:0#tf.tile_460/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_460/TileЩ
tf.reshape_921/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_921/Reshape/shape╗
tf.reshape_921/ReshapeReshapetf.tile_460/Tile:output:0%tf.reshape_921/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_921/Reshapex
tf.concat_723/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_723/concat/axisё
tf.concat_723/concatConcatV2tf.reshape_921/Reshape:output:0+conv3d_487/StatefulPartitionedCall:output:0"tf.concat_723/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_723/concat╥
"conv3d_492/StatefulPartitionedCallStatefulPartitionedCalltf.concat_723/concat:output:0conv3d_492_25209462conv3d_492_25209464*
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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_252089162$
"conv3d_492/StatefulPartitionedCallе
tf.reshape_922/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_922/Reshape/shape┘
tf.reshape_922/ReshapeReshape+conv3d_492/StatefulPartitionedCall:output:0%tf.reshape_922/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_922/Reshapeб
tf.tile_461/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_461/Tile/multiples╝
tf.tile_461/TileTiletf.reshape_922/Reshape:output:0#tf.tile_461/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_461/TileЩ
tf.reshape_923/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_923/Reshape/shape╗
tf.reshape_923/ReshapeReshapetf.tile_461/Tile:output:0%tf.reshape_923/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_923/Reshapex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axisё
tf.concat_724/concatConcatV2tf.reshape_923/Reshape:output:0+conv3d_486/StatefulPartitionedCall:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_724/concat╥
"conv3d_493/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv3d_493_25209475conv3d_493_25209477*
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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_252089412$
"conv3d_493/StatefulPartitionedCallр
"conv3d_494/StatefulPartitionedCallStatefulPartitionedCall+conv3d_493/StatefulPartitionedCall:output:0conv3d_494_25209480conv3d_494_25209482*
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
H__inference_conv3d_494_layer_call_and_return_conditional_losses_252089572$
"conv3d_494/StatefulPartitionedCallТ
IdentityIdentity+conv3d_494/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_486/StatefulPartitionedCall#^conv3d_487/StatefulPartitionedCall#^conv3d_488/StatefulPartitionedCall#^conv3d_489/StatefulPartitionedCall#^conv3d_490/StatefulPartitionedCall#^conv3d_491/StatefulPartitionedCall#^conv3d_492/StatefulPartitionedCall#^conv3d_493/StatefulPartitionedCall#^conv3d_494/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_486/StatefulPartitionedCall"conv3d_486/StatefulPartitionedCall2H
"conv3d_487/StatefulPartitionedCall"conv3d_487/StatefulPartitionedCall2H
"conv3d_488/StatefulPartitionedCall"conv3d_488/StatefulPartitionedCall2H
"conv3d_489/StatefulPartitionedCall"conv3d_489/StatefulPartitionedCall2H
"conv3d_490/StatefulPartitionedCall"conv3d_490/StatefulPartitionedCall2H
"conv3d_491/StatefulPartitionedCall"conv3d_491/StatefulPartitionedCall2H
"conv3d_492/StatefulPartitionedCall"conv3d_492/StatefulPartitionedCall2H
"conv3d_493/StatefulPartitionedCall"conv3d_493/StatefulPartitionedCall2H
"conv3d_494/StatefulPartitionedCall"conv3d_494/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
╬
Е
H__inference_conv3d_489_layer_call_and_return_conditional_losses_25208783

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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25210259

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
а
Є
+__inference_model_94_layer_call_fn_25209383	
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
F__inference_model_94_layer_call_and_return_conditional_losses_252092952
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
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_25208683

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
Ь
e
I__inference_reshape_189_layer_call_and_return_conditional_losses_25208845

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
H__inference_conv3d_487_layer_call_and_return_conditional_losses_25208729

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
г
є
+__inference_model_94_layer_call_fn_25209726

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
F__inference_model_94_layer_call_and_return_conditional_losses_252092952
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
щ
J
.__inference_reshape_189_layer_call_fn_25210301

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
I__inference_reshape_189_layer_call_and_return_conditional_losses_252088452
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
Х
T
8__inference_average_pooling3d_198_layer_call_fn_25210193

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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_252087702
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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25210106

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
-__inference_conv3d_488_layer_call_fn_25210172

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
H__inference_conv3d_488_layer_call_and_return_conditional_losses_252087562
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
а
Є
+__inference_model_94_layer_call_fn_25209007	
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
F__inference_model_94_layer_call_and_return_conditional_losses_252089642
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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25208743

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
Ф
ў
F__inference_dense_94_layer_call_and_return_conditional_losses_25208824

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
╓
Е
H__inference_conv3d_494_layer_call_and_return_conditional_losses_25210415

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
щ
J
.__inference_reshape_188_layer_call_fn_25210264

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
I__inference_reshape_188_layer_call_and_return_conditional_losses_252088112
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
-__inference_conv3d_487_layer_call_fn_25210124

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
H__inference_conv3d_487_layer_call_and_return_conditional_losses_252087292
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
&__inference_signature_wrapper_25209636	
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
#__inference__wrapped_model_252085402
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
ж
T
8__inference_average_pooling3d_199_layer_call_fn_25210236

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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_252086432
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
х

o
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25208583

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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_25208891

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
I__inference_reshape_189_layer_call_and_return_conditional_losses_25210316

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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_25210376

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
вЧ
∙
#__inference__wrapped_model_25208540	
inputP
2model_94_conv3d_486_conv3d_readvariableop_resource: A
3model_94_conv3d_486_biasadd_readvariableop_resource: P
2model_94_conv3d_487_conv3d_readvariableop_resource: A
3model_94_conv3d_487_biasadd_readvariableop_resource:P
2model_94_conv3d_488_conv3d_readvariableop_resource:A
3model_94_conv3d_488_biasadd_readvariableop_resource:P
2model_94_conv3d_489_conv3d_readvariableop_resource:A
3model_94_conv3d_489_biasadd_readvariableop_resource:B
0model_94_dense_94_matmul_readvariableop_resource:@@?
1model_94_dense_94_biasadd_readvariableop_resource:@P
2model_94_conv3d_490_conv3d_readvariableop_resource:A
3model_94_conv3d_490_biasadd_readvariableop_resource:P
2model_94_conv3d_491_conv3d_readvariableop_resource:A
3model_94_conv3d_491_biasadd_readvariableop_resource:P
2model_94_conv3d_492_conv3d_readvariableop_resource:A
3model_94_conv3d_492_biasadd_readvariableop_resource:P
2model_94_conv3d_493_conv3d_readvariableop_resource:0 A
3model_94_conv3d_493_biasadd_readvariableop_resource: P
2model_94_conv3d_494_conv3d_readvariableop_resource: A
3model_94_conv3d_494_biasadd_readvariableop_resource:
identityИв*model_94/conv3d_486/BiasAdd/ReadVariableOpв)model_94/conv3d_486/Conv3D/ReadVariableOpв*model_94/conv3d_487/BiasAdd/ReadVariableOpв)model_94/conv3d_487/Conv3D/ReadVariableOpв*model_94/conv3d_488/BiasAdd/ReadVariableOpв)model_94/conv3d_488/Conv3D/ReadVariableOpв*model_94/conv3d_489/BiasAdd/ReadVariableOpв)model_94/conv3d_489/Conv3D/ReadVariableOpв*model_94/conv3d_490/BiasAdd/ReadVariableOpв)model_94/conv3d_490/Conv3D/ReadVariableOpв*model_94/conv3d_491/BiasAdd/ReadVariableOpв)model_94/conv3d_491/Conv3D/ReadVariableOpв*model_94/conv3d_492/BiasAdd/ReadVariableOpв)model_94/conv3d_492/Conv3D/ReadVariableOpв*model_94/conv3d_493/BiasAdd/ReadVariableOpв)model_94/conv3d_493/Conv3D/ReadVariableOpв*model_94/conv3d_494/BiasAdd/ReadVariableOpв)model_94/conv3d_494/Conv3D/ReadVariableOpв(model_94/dense_94/BiasAdd/ReadVariableOpв'model_94/dense_94/MatMul/ReadVariableOp╟
9model_94/tf.__operators__.getitem_524/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_94/tf.__operators__.getitem_524/strided_slice/stack╦
;model_94/tf.__operators__.getitem_524/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_94/tf.__operators__.getitem_524/strided_slice/stack_1╦
;model_94/tf.__operators__.getitem_524/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_94/tf.__operators__.getitem_524/strided_slice/stack_2╛
3model_94/tf.__operators__.getitem_524/strided_sliceStridedSliceinputBmodel_94/tf.__operators__.getitem_524/strided_slice/stack:output:0Dmodel_94/tf.__operators__.getitem_524/strided_slice/stack_1:output:0Dmodel_94/tf.__operators__.getitem_524/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_94/tf.__operators__.getitem_524/strided_sliceН
"model_94/range_conversion_94/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_94/range_conversion_94/sub/yЇ
 model_94/range_conversion_94/subSub<model_94/tf.__operators__.getitem_524/strided_slice:output:0+model_94/range_conversion_94/sub/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_94/range_conversion_94/subХ
&model_94/range_conversion_94/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_94/range_conversion_94/truediv/yь
$model_94/range_conversion_94/truedivRealDiv$model_94/range_conversion_94/sub:z:0/model_94/range_conversion_94/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2&
$model_94/range_conversion_94/truedivН
"model_94/range_conversion_94/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_94/range_conversion_94/mul/yр
 model_94/range_conversion_94/mulMul(model_94/range_conversion_94/truediv:z:0+model_94/range_conversion_94/mul/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_94/range_conversion_94/mulН
"model_94/range_conversion_94/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_94/range_conversion_94/add/y▐
 model_94/range_conversion_94/addAddV2$model_94/range_conversion_94/mul:z:0+model_94/range_conversion_94/add/y:output:0*
T0*3
_output_shapes!
:         @@2"
 model_94/range_conversion_94/add╟
9model_94/tf.__operators__.getitem_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_94/tf.__operators__.getitem_525/strided_slice/stack╦
;model_94/tf.__operators__.getitem_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_94/tf.__operators__.getitem_525/strided_slice/stack_1╦
;model_94/tf.__operators__.getitem_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_94/tf.__operators__.getitem_525/strided_slice/stack_2╛
3model_94/tf.__operators__.getitem_525/strided_sliceStridedSliceinputBmodel_94/tf.__operators__.getitem_525/strided_slice/stack:output:0Dmodel_94/tf.__operators__.getitem_525/strided_slice/stack_1:output:0Dmodel_94/tf.__operators__.getitem_525/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask25
3model_94/tf.__operators__.getitem_525/strided_sliceК
"model_94/tf.concat_720/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_94/tf.concat_720/concat/axisв
model_94/tf.concat_720/concatConcatV2$model_94/range_conversion_94/add:z:0<model_94/tf.__operators__.getitem_525/strided_slice:output:0+model_94/tf.concat_720/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
model_94/tf.concat_720/concat╒
)model_94/conv3d_486/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_486_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_94/conv3d_486/Conv3D/ReadVariableOpЬ
model_94/conv3d_486/Conv3DConv3D&model_94/tf.concat_720/concat:output:01model_94/conv3d_486/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_486/Conv3D╚
*model_94/conv3d_486/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_486_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_94/conv3d_486/BiasAdd/ReadVariableOpє
model_94/conv3d_486/BiasAddBiasAdd#model_94/conv3d_486/Conv3D:output:02model_94/conv3d_486/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_94/conv3d_486/BiasAddм
model_94/conv3d_486/SoftplusSoftplus$model_94/conv3d_486/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_94/conv3d_486/Softplus╗
-model_94/average_pooling3d_196/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_94/average_pooling3d_196/transpose/permГ
(model_94/average_pooling3d_196/transpose	Transpose*model_94/conv3d_486/Softplus:activations:06model_94/average_pooling3d_196/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2*
(model_94/average_pooling3d_196/transposeЛ
(model_94/average_pooling3d_196/AvgPool3D	AvgPool3D,model_94/average_pooling3d_196/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2*
(model_94/average_pooling3d_196/AvgPool3D┐
/model_94/average_pooling3d_196/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_94/average_pooling3d_196/transpose_1/permР
*model_94/average_pooling3d_196/transpose_1	Transpose1model_94/average_pooling3d_196/AvgPool3D:output:08model_94/average_pooling3d_196/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2,
*model_94/average_pooling3d_196/transpose_1╒
)model_94/conv3d_487/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_487_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_94/conv3d_487/Conv3D/ReadVariableOpд
model_94/conv3d_487/Conv3DConv3D.model_94/average_pooling3d_196/transpose_1:y:01model_94/conv3d_487/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_487/Conv3D╚
*model_94/conv3d_487/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_487_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_94/conv3d_487/BiasAdd/ReadVariableOpє
model_94/conv3d_487/BiasAddBiasAdd#model_94/conv3d_487/Conv3D:output:02model_94/conv3d_487/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_94/conv3d_487/BiasAddм
model_94/conv3d_487/SoftplusSoftplus$model_94/conv3d_487/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_94/conv3d_487/Softplus╗
-model_94/average_pooling3d_197/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_94/average_pooling3d_197/transpose/permГ
(model_94/average_pooling3d_197/transpose	Transpose*model_94/conv3d_487/Softplus:activations:06model_94/average_pooling3d_197/transpose/perm:output:0*
T0*3
_output_shapes!
:           2*
(model_94/average_pooling3d_197/transposeЛ
(model_94/average_pooling3d_197/AvgPool3D	AvgPool3D,model_94/average_pooling3d_197/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_94/average_pooling3d_197/AvgPool3D┐
/model_94/average_pooling3d_197/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_94/average_pooling3d_197/transpose_1/permР
*model_94/average_pooling3d_197/transpose_1	Transpose1model_94/average_pooling3d_197/AvgPool3D:output:08model_94/average_pooling3d_197/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_94/average_pooling3d_197/transpose_1╒
)model_94/conv3d_488/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_488_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_94/conv3d_488/Conv3D/ReadVariableOpд
model_94/conv3d_488/Conv3DConv3D.model_94/average_pooling3d_197/transpose_1:y:01model_94/conv3d_488/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_488/Conv3D╚
*model_94/conv3d_488/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_488_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_94/conv3d_488/BiasAdd/ReadVariableOpє
model_94/conv3d_488/BiasAddBiasAdd#model_94/conv3d_488/Conv3D:output:02model_94/conv3d_488/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_94/conv3d_488/BiasAddм
model_94/conv3d_488/SoftplusSoftplus$model_94/conv3d_488/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_94/conv3d_488/Softplus╗
-model_94/average_pooling3d_198/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_94/average_pooling3d_198/transpose/permГ
(model_94/average_pooling3d_198/transpose	Transpose*model_94/conv3d_488/Softplus:activations:06model_94/average_pooling3d_198/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_94/average_pooling3d_198/transposeЛ
(model_94/average_pooling3d_198/AvgPool3D	AvgPool3D,model_94/average_pooling3d_198/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_94/average_pooling3d_198/AvgPool3D┐
/model_94/average_pooling3d_198/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_94/average_pooling3d_198/transpose_1/permР
*model_94/average_pooling3d_198/transpose_1	Transpose1model_94/average_pooling3d_198/AvgPool3D:output:08model_94/average_pooling3d_198/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_94/average_pooling3d_198/transpose_1╒
)model_94/conv3d_489/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_489_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_94/conv3d_489/Conv3D/ReadVariableOpд
model_94/conv3d_489/Conv3DConv3D.model_94/average_pooling3d_198/transpose_1:y:01model_94/conv3d_489/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_489/Conv3D╚
*model_94/conv3d_489/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_489_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_94/conv3d_489/BiasAdd/ReadVariableOpє
model_94/conv3d_489/BiasAddBiasAdd#model_94/conv3d_489/Conv3D:output:02model_94/conv3d_489/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_94/conv3d_489/BiasAddм
model_94/conv3d_489/SoftplusSoftplus$model_94/conv3d_489/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_94/conv3d_489/Softplus╗
-model_94/average_pooling3d_199/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_94/average_pooling3d_199/transpose/permГ
(model_94/average_pooling3d_199/transpose	Transpose*model_94/conv3d_489/Softplus:activations:06model_94/average_pooling3d_199/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_94/average_pooling3d_199/transposeЛ
(model_94/average_pooling3d_199/AvgPool3D	AvgPool3D,model_94/average_pooling3d_199/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_94/average_pooling3d_199/AvgPool3D┐
/model_94/average_pooling3d_199/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_94/average_pooling3d_199/transpose_1/permР
*model_94/average_pooling3d_199/transpose_1	Transpose1model_94/average_pooling3d_199/AvgPool3D:output:08model_94/average_pooling3d_199/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_94/average_pooling3d_199/transpose_1Ц
model_94/reshape_188/ShapeShape.model_94/average_pooling3d_199/transpose_1:y:0*
T0*
_output_shapes
:2
model_94/reshape_188/ShapeЮ
(model_94/reshape_188/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_94/reshape_188/strided_slice/stackв
*model_94/reshape_188/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_94/reshape_188/strided_slice/stack_1в
*model_94/reshape_188/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_94/reshape_188/strided_slice/stack_2р
"model_94/reshape_188/strided_sliceStridedSlice#model_94/reshape_188/Shape:output:01model_94/reshape_188/strided_slice/stack:output:03model_94/reshape_188/strided_slice/stack_1:output:03model_94/reshape_188/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_94/reshape_188/strided_sliceО
$model_94/reshape_188/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_94/reshape_188/Reshape/shape/1┌
"model_94/reshape_188/Reshape/shapePack+model_94/reshape_188/strided_slice:output:0-model_94/reshape_188/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_94/reshape_188/Reshape/shape╓
model_94/reshape_188/ReshapeReshape.model_94/average_pooling3d_199/transpose_1:y:0+model_94/reshape_188/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_94/reshape_188/Reshape├
'model_94/dense_94/MatMul/ReadVariableOpReadVariableOp0model_94_dense_94_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_94/dense_94/MatMul/ReadVariableOp╚
model_94/dense_94/MatMulMatMul%model_94/reshape_188/Reshape:output:0/model_94/dense_94/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_94/dense_94/MatMul┬
(model_94/dense_94/BiasAdd/ReadVariableOpReadVariableOp1model_94_dense_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_94/dense_94/BiasAdd/ReadVariableOp╔
model_94/dense_94/BiasAddBiasAdd"model_94/dense_94/MatMul:product:00model_94/dense_94/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_94/dense_94/BiasAddЪ
model_94/dense_94/SoftplusSoftplus"model_94/dense_94/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_94/dense_94/SoftplusР
model_94/reshape_189/ShapeShape(model_94/dense_94/Softplus:activations:0*
T0*
_output_shapes
:2
model_94/reshape_189/ShapeЮ
(model_94/reshape_189/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_94/reshape_189/strided_slice/stackв
*model_94/reshape_189/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_94/reshape_189/strided_slice/stack_1в
*model_94/reshape_189/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_94/reshape_189/strided_slice/stack_2р
"model_94/reshape_189/strided_sliceStridedSlice#model_94/reshape_189/Shape:output:01model_94/reshape_189/strided_slice/stack:output:03model_94/reshape_189/strided_slice/stack_1:output:03model_94/reshape_189/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_94/reshape_189/strided_sliceО
$model_94/reshape_189/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_94/reshape_189/Reshape/shape/1О
$model_94/reshape_189/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_94/reshape_189/Reshape/shape/2О
$model_94/reshape_189/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_94/reshape_189/Reshape/shape/3О
$model_94/reshape_189/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_94/reshape_189/Reshape/shape/4ч
"model_94/reshape_189/Reshape/shapePack+model_94/reshape_189/strided_slice:output:0-model_94/reshape_189/Reshape/shape/1:output:0-model_94/reshape_189/Reshape/shape/2:output:0-model_94/reshape_189/Reshape/shape/3:output:0-model_94/reshape_189/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_94/reshape_189/Reshape/shape▄
model_94/reshape_189/ReshapeReshape(model_94/dense_94/Softplus:activations:0+model_94/reshape_189/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_94/reshape_189/Reshape╖
%model_94/tf.reshape_916/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_94/tf.reshape_916/Reshape/shapeю
model_94/tf.reshape_916/ReshapeReshape%model_94/reshape_189/Reshape:output:0.model_94/tf.reshape_916/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_94/tf.reshape_916/Reshape│
#model_94/tf.tile_458/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_94/tf.tile_458/Tile/multiplesр
model_94/tf.tile_458/TileTile(model_94/tf.reshape_916/Reshape:output:0,model_94/tf.tile_458/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_94/tf.tile_458/Tileл
%model_94/tf.reshape_917/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_94/tf.reshape_917/Reshape/shape▀
model_94/tf.reshape_917/ReshapeReshape"model_94/tf.tile_458/Tile:output:0.model_94/tf.reshape_917/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_94/tf.reshape_917/ReshapeК
"model_94/tf.concat_721/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_94/tf.concat_721/concat/axisФ
model_94/tf.concat_721/concatConcatV2(model_94/tf.reshape_917/Reshape:output:0*model_94/conv3d_489/Softplus:activations:0+model_94/tf.concat_721/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_94/tf.concat_721/concat╒
)model_94/conv3d_490/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_490_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_94/conv3d_490/Conv3D/ReadVariableOpЬ
model_94/conv3d_490/Conv3DConv3D&model_94/tf.concat_721/concat:output:01model_94/conv3d_490/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_490/Conv3D╚
*model_94/conv3d_490/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_490_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_94/conv3d_490/BiasAdd/ReadVariableOpє
model_94/conv3d_490/BiasAddBiasAdd#model_94/conv3d_490/Conv3D:output:02model_94/conv3d_490/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_94/conv3d_490/BiasAddм
model_94/conv3d_490/SoftplusSoftplus$model_94/conv3d_490/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_94/conv3d_490/Softplus╖
%model_94/tf.reshape_918/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_94/tf.reshape_918/Reshape/shapeє
model_94/tf.reshape_918/ReshapeReshape*model_94/conv3d_490/Softplus:activations:0.model_94/tf.reshape_918/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_94/tf.reshape_918/Reshape│
#model_94/tf.tile_459/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_94/tf.tile_459/Tile/multiplesр
model_94/tf.tile_459/TileTile(model_94/tf.reshape_918/Reshape:output:0,model_94/tf.tile_459/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_94/tf.tile_459/Tileл
%model_94/tf.reshape_919/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_94/tf.reshape_919/Reshape/shape▀
model_94/tf.reshape_919/ReshapeReshape"model_94/tf.tile_459/Tile:output:0.model_94/tf.reshape_919/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_94/tf.reshape_919/ReshapeК
"model_94/tf.concat_722/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_94/tf.concat_722/concat/axisФ
model_94/tf.concat_722/concatConcatV2(model_94/tf.reshape_919/Reshape:output:0*model_94/conv3d_488/Softplus:activations:0+model_94/tf.concat_722/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_94/tf.concat_722/concat╒
)model_94/conv3d_491/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_491_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_94/conv3d_491/Conv3D/ReadVariableOpЬ
model_94/conv3d_491/Conv3DConv3D&model_94/tf.concat_722/concat:output:01model_94/conv3d_491/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_491/Conv3D╚
*model_94/conv3d_491/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_491_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_94/conv3d_491/BiasAdd/ReadVariableOpє
model_94/conv3d_491/BiasAddBiasAdd#model_94/conv3d_491/Conv3D:output:02model_94/conv3d_491/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_94/conv3d_491/BiasAddм
model_94/conv3d_491/SoftplusSoftplus$model_94/conv3d_491/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_94/conv3d_491/Softplus╖
%model_94/tf.reshape_920/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_94/tf.reshape_920/Reshape/shapeє
model_94/tf.reshape_920/ReshapeReshape*model_94/conv3d_491/Softplus:activations:0.model_94/tf.reshape_920/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_94/tf.reshape_920/Reshape│
#model_94/tf.tile_460/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_94/tf.tile_460/Tile/multiplesр
model_94/tf.tile_460/TileTile(model_94/tf.reshape_920/Reshape:output:0,model_94/tf.tile_460/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_94/tf.tile_460/Tileл
%model_94/tf.reshape_921/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2'
%model_94/tf.reshape_921/Reshape/shape▀
model_94/tf.reshape_921/ReshapeReshape"model_94/tf.tile_460/Tile:output:0.model_94/tf.reshape_921/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2!
model_94/tf.reshape_921/ReshapeК
"model_94/tf.concat_723/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_94/tf.concat_723/concat/axisФ
model_94/tf.concat_723/concatConcatV2(model_94/tf.reshape_921/Reshape:output:0*model_94/conv3d_487/Softplus:activations:0+model_94/tf.concat_723/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_94/tf.concat_723/concat╒
)model_94/conv3d_492/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_492_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_94/conv3d_492/Conv3D/ReadVariableOpЬ
model_94/conv3d_492/Conv3DConv3D&model_94/tf.concat_723/concat:output:01model_94/conv3d_492/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_492/Conv3D╚
*model_94/conv3d_492/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_492_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_94/conv3d_492/BiasAdd/ReadVariableOpє
model_94/conv3d_492/BiasAddBiasAdd#model_94/conv3d_492/Conv3D:output:02model_94/conv3d_492/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_94/conv3d_492/BiasAddм
model_94/conv3d_492/SoftplusSoftplus$model_94/conv3d_492/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_94/conv3d_492/Softplus╖
%model_94/tf.reshape_922/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2'
%model_94/tf.reshape_922/Reshape/shapeє
model_94/tf.reshape_922/ReshapeReshape*model_94/conv3d_492/Softplus:activations:0.model_94/tf.reshape_922/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2!
model_94/tf.reshape_922/Reshape│
#model_94/tf.tile_461/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_94/tf.tile_461/Tile/multiplesр
model_94/tf.tile_461/TileTile(model_94/tf.reshape_922/Reshape:output:0,model_94/tf.tile_461/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
model_94/tf.tile_461/Tileл
%model_94/tf.reshape_923/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2'
%model_94/tf.reshape_923/Reshape/shape▀
model_94/tf.reshape_923/ReshapeReshape"model_94/tf.tile_461/Tile:output:0.model_94/tf.reshape_923/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2!
model_94/tf.reshape_923/ReshapeК
"model_94/tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_94/tf.concat_724/concat/axisФ
model_94/tf.concat_724/concatConcatV2(model_94/tf.reshape_923/Reshape:output:0*model_94/conv3d_486/Softplus:activations:0+model_94/tf.concat_724/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
model_94/tf.concat_724/concat╒
)model_94/conv3d_493/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_493_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_94/conv3d_493/Conv3D/ReadVariableOpЬ
model_94/conv3d_493/Conv3DConv3D&model_94/tf.concat_724/concat:output:01model_94/conv3d_493/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_493/Conv3D╚
*model_94/conv3d_493/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_493_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_94/conv3d_493/BiasAdd/ReadVariableOpє
model_94/conv3d_493/BiasAddBiasAdd#model_94/conv3d_493/Conv3D:output:02model_94/conv3d_493/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
model_94/conv3d_493/BiasAddм
model_94/conv3d_493/SoftplusSoftplus$model_94/conv3d_493/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
model_94/conv3d_493/Softplus╒
)model_94/conv3d_494/Conv3D/ReadVariableOpReadVariableOp2model_94_conv3d_494_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_94/conv3d_494/Conv3D/ReadVariableOpа
model_94/conv3d_494/Conv3DConv3D*model_94/conv3d_493/Softplus:activations:01model_94/conv3d_494/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_94/conv3d_494/Conv3D╚
*model_94/conv3d_494/BiasAdd/ReadVariableOpReadVariableOp3model_94_conv3d_494_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_94/conv3d_494/BiasAdd/ReadVariableOpє
model_94/conv3d_494/BiasAddBiasAdd#model_94/conv3d_494/Conv3D:output:02model_94/conv3d_494/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
model_94/conv3d_494/BiasAddЛ
IdentityIdentity$model_94/conv3d_494/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity─
NoOpNoOp+^model_94/conv3d_486/BiasAdd/ReadVariableOp*^model_94/conv3d_486/Conv3D/ReadVariableOp+^model_94/conv3d_487/BiasAdd/ReadVariableOp*^model_94/conv3d_487/Conv3D/ReadVariableOp+^model_94/conv3d_488/BiasAdd/ReadVariableOp*^model_94/conv3d_488/Conv3D/ReadVariableOp+^model_94/conv3d_489/BiasAdd/ReadVariableOp*^model_94/conv3d_489/Conv3D/ReadVariableOp+^model_94/conv3d_490/BiasAdd/ReadVariableOp*^model_94/conv3d_490/Conv3D/ReadVariableOp+^model_94/conv3d_491/BiasAdd/ReadVariableOp*^model_94/conv3d_491/Conv3D/ReadVariableOp+^model_94/conv3d_492/BiasAdd/ReadVariableOp*^model_94/conv3d_492/Conv3D/ReadVariableOp+^model_94/conv3d_493/BiasAdd/ReadVariableOp*^model_94/conv3d_493/Conv3D/ReadVariableOp+^model_94/conv3d_494/BiasAdd/ReadVariableOp*^model_94/conv3d_494/Conv3D/ReadVariableOp)^model_94/dense_94/BiasAdd/ReadVariableOp(^model_94/dense_94/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2X
*model_94/conv3d_486/BiasAdd/ReadVariableOp*model_94/conv3d_486/BiasAdd/ReadVariableOp2V
)model_94/conv3d_486/Conv3D/ReadVariableOp)model_94/conv3d_486/Conv3D/ReadVariableOp2X
*model_94/conv3d_487/BiasAdd/ReadVariableOp*model_94/conv3d_487/BiasAdd/ReadVariableOp2V
)model_94/conv3d_487/Conv3D/ReadVariableOp)model_94/conv3d_487/Conv3D/ReadVariableOp2X
*model_94/conv3d_488/BiasAdd/ReadVariableOp*model_94/conv3d_488/BiasAdd/ReadVariableOp2V
)model_94/conv3d_488/Conv3D/ReadVariableOp)model_94/conv3d_488/Conv3D/ReadVariableOp2X
*model_94/conv3d_489/BiasAdd/ReadVariableOp*model_94/conv3d_489/BiasAdd/ReadVariableOp2V
)model_94/conv3d_489/Conv3D/ReadVariableOp)model_94/conv3d_489/Conv3D/ReadVariableOp2X
*model_94/conv3d_490/BiasAdd/ReadVariableOp*model_94/conv3d_490/BiasAdd/ReadVariableOp2V
)model_94/conv3d_490/Conv3D/ReadVariableOp)model_94/conv3d_490/Conv3D/ReadVariableOp2X
*model_94/conv3d_491/BiasAdd/ReadVariableOp*model_94/conv3d_491/BiasAdd/ReadVariableOp2V
)model_94/conv3d_491/Conv3D/ReadVariableOp)model_94/conv3d_491/Conv3D/ReadVariableOp2X
*model_94/conv3d_492/BiasAdd/ReadVariableOp*model_94/conv3d_492/BiasAdd/ReadVariableOp2V
)model_94/conv3d_492/Conv3D/ReadVariableOp)model_94/conv3d_492/Conv3D/ReadVariableOp2X
*model_94/conv3d_493/BiasAdd/ReadVariableOp*model_94/conv3d_493/BiasAdd/ReadVariableOp2V
)model_94/conv3d_493/Conv3D/ReadVariableOp)model_94/conv3d_493/Conv3D/ReadVariableOp2X
*model_94/conv3d_494/BiasAdd/ReadVariableOp*model_94/conv3d_494/BiasAdd/ReadVariableOp2V
)model_94/conv3d_494/Conv3D/ReadVariableOp)model_94/conv3d_494/Conv3D/ReadVariableOp2T
(model_94/dense_94/BiasAdd/ReadVariableOp(model_94/dense_94/BiasAdd/ReadVariableOp2R
'model_94/dense_94/MatMul/ReadVariableOp'model_94/dense_94/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
╬
Е
H__inference_conv3d_487_layer_call_and_return_conditional_losses_25210135

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
8__inference_average_pooling3d_199_layer_call_fn_25210241

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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_252087972
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
┴
ж
-__inference_conv3d_494_layer_call_fn_25210405

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
H__inference_conv3d_494_layer_call_and_return_conditional_losses_252089572
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
БУ
б

F__inference_model_94_layer_call_and_return_conditional_losses_25209295

inputs1
conv3d_486_25209206: !
conv3d_486_25209208: 1
conv3d_487_25209212: !
conv3d_487_25209214:1
conv3d_488_25209218:!
conv3d_488_25209220:1
conv3d_489_25209224:!
conv3d_489_25209226:#
dense_94_25209231:@@
dense_94_25209233:@1
conv3d_490_25209245:!
conv3d_490_25209247:1
conv3d_491_25209258:!
conv3d_491_25209260:1
conv3d_492_25209271:!
conv3d_492_25209273:1
conv3d_493_25209284:0 !
conv3d_493_25209286: 1
conv3d_494_25209289: !
conv3d_494_25209291:
identityИв"conv3d_486/StatefulPartitionedCallв"conv3d_487/StatefulPartitionedCallв"conv3d_488/StatefulPartitionedCallв"conv3d_489/StatefulPartitionedCallв"conv3d_490/StatefulPartitionedCallв"conv3d_491/StatefulPartitionedCallв"conv3d_492/StatefulPartitionedCallв"conv3d_493/StatefulPartitionedCallв"conv3d_494/StatefulPartitionedCallв dense_94/StatefulPartitionedCall╡
0tf.__operators__.getitem_524/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_524/strided_slice/stack╣
2tf.__operators__.getitem_524/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_524/strided_slice/stack_1╣
2tf.__operators__.getitem_524/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_524/strided_slice/stack_2Т
*tf.__operators__.getitem_524/strided_sliceStridedSliceinputs9tf.__operators__.getitem_524/strided_slice/stack:output:0;tf.__operators__.getitem_524/strided_slice/stack_1:output:0;tf.__operators__.getitem_524/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_524/strided_slice╗
#range_conversion_94/PartitionedCallPartitionedCall3tf.__operators__.getitem_524/strided_slice:output:0*
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
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_252086832%
#range_conversion_94/PartitionedCall╡
0tf.__operators__.getitem_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_525/strided_slice/stack╣
2tf.__operators__.getitem_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_525/strided_slice/stack_1╣
2tf.__operators__.getitem_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_525/strided_slice/stack_2Т
*tf.__operators__.getitem_525/strided_sliceStridedSliceinputs9tf.__operators__.getitem_525/strided_slice/stack:output:0;tf.__operators__.getitem_525/strided_slice/stack_1:output:0;tf.__operators__.getitem_525/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_525/strided_slicex
tf.concat_720/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_720/concat/axisЖ
tf.concat_720/concatConcatV2,range_conversion_94/PartitionedCall:output:03tf.__operators__.getitem_525/strided_slice:output:0"tf.concat_720/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_720/concat╥
"conv3d_486/StatefulPartitionedCallStatefulPartitionedCalltf.concat_720/concat:output:0conv3d_486_25209206conv3d_486_25209208*
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
H__inference_conv3d_486_layer_call_and_return_conditional_losses_252087022$
"conv3d_486/StatefulPartitionedCall╣
%average_pooling3d_196/PartitionedCallPartitionedCall+conv3d_486/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_252087162'
%average_pooling3d_196/PartitionedCallу
"conv3d_487/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_196/PartitionedCall:output:0conv3d_487_25209212conv3d_487_25209214*
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
H__inference_conv3d_487_layer_call_and_return_conditional_losses_252087292$
"conv3d_487/StatefulPartitionedCall╣
%average_pooling3d_197/PartitionedCallPartitionedCall+conv3d_487/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_252087432'
%average_pooling3d_197/PartitionedCallу
"conv3d_488/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_197/PartitionedCall:output:0conv3d_488_25209218conv3d_488_25209220*
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
H__inference_conv3d_488_layer_call_and_return_conditional_losses_252087562$
"conv3d_488/StatefulPartitionedCall╣
%average_pooling3d_198/PartitionedCallPartitionedCall+conv3d_488/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_252087702'
%average_pooling3d_198/PartitionedCallу
"conv3d_489/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_198/PartitionedCall:output:0conv3d_489_25209224conv3d_489_25209226*
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
H__inference_conv3d_489_layer_call_and_return_conditional_losses_252087832$
"conv3d_489/StatefulPartitionedCall╣
%average_pooling3d_199/PartitionedCallPartitionedCall+conv3d_489/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_252087972'
%average_pooling3d_199/PartitionedCallТ
reshape_188/PartitionedCallPartitionedCall.average_pooling3d_199/PartitionedCall:output:0*
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
I__inference_reshape_188_layer_call_and_return_conditional_losses_252088112
reshape_188/PartitionedCall├
 dense_94/StatefulPartitionedCallStatefulPartitionedCall$reshape_188/PartitionedCall:output:0dense_94_25209231dense_94_25209233*
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
F__inference_dense_94_layer_call_and_return_conditional_losses_252088242"
 dense_94/StatefulPartitionedCallЩ
reshape_189/PartitionedCallPartitionedCall)dense_94/StatefulPartitionedCall:output:0*
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
I__inference_reshape_189_layer_call_and_return_conditional_losses_252088452
reshape_189/PartitionedCallе
tf.reshape_916/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_916/Reshape/shape╥
tf.reshape_916/ReshapeReshape$reshape_189/PartitionedCall:output:0%tf.reshape_916/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_916/Reshapeб
tf.tile_458/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_458/Tile/multiples╝
tf.tile_458/TileTiletf.reshape_916/Reshape:output:0#tf.tile_458/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_458/TileЩ
tf.reshape_917/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_917/Reshape/shape╗
tf.reshape_917/ReshapeReshapetf.tile_458/Tile:output:0%tf.reshape_917/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_917/Reshapex
tf.concat_721/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_721/concat/axisё
tf.concat_721/concatConcatV2tf.reshape_917/Reshape:output:0+conv3d_489/StatefulPartitionedCall:output:0"tf.concat_721/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_721/concat╥
"conv3d_490/StatefulPartitionedCallStatefulPartitionedCalltf.concat_721/concat:output:0conv3d_490_25209245conv3d_490_25209247*
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
H__inference_conv3d_490_layer_call_and_return_conditional_losses_252088662$
"conv3d_490/StatefulPartitionedCallе
tf.reshape_918/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_918/Reshape/shape┘
tf.reshape_918/ReshapeReshape+conv3d_490/StatefulPartitionedCall:output:0%tf.reshape_918/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_918/Reshapeб
tf.tile_459/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_459/Tile/multiples╝
tf.tile_459/TileTiletf.reshape_918/Reshape:output:0#tf.tile_459/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_459/TileЩ
tf.reshape_919/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_919/Reshape/shape╗
tf.reshape_919/ReshapeReshapetf.tile_459/Tile:output:0%tf.reshape_919/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_919/Reshapex
tf.concat_722/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_722/concat/axisё
tf.concat_722/concatConcatV2tf.reshape_919/Reshape:output:0+conv3d_488/StatefulPartitionedCall:output:0"tf.concat_722/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_722/concat╥
"conv3d_491/StatefulPartitionedCallStatefulPartitionedCalltf.concat_722/concat:output:0conv3d_491_25209258conv3d_491_25209260*
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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_252088912$
"conv3d_491/StatefulPartitionedCallе
tf.reshape_920/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_920/Reshape/shape┘
tf.reshape_920/ReshapeReshape+conv3d_491/StatefulPartitionedCall:output:0%tf.reshape_920/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_920/Reshapeб
tf.tile_460/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_460/Tile/multiples╝
tf.tile_460/TileTiletf.reshape_920/Reshape:output:0#tf.tile_460/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_460/TileЩ
tf.reshape_921/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_921/Reshape/shape╗
tf.reshape_921/ReshapeReshapetf.tile_460/Tile:output:0%tf.reshape_921/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_921/Reshapex
tf.concat_723/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_723/concat/axisё
tf.concat_723/concatConcatV2tf.reshape_921/Reshape:output:0+conv3d_487/StatefulPartitionedCall:output:0"tf.concat_723/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_723/concat╥
"conv3d_492/StatefulPartitionedCallStatefulPartitionedCalltf.concat_723/concat:output:0conv3d_492_25209271conv3d_492_25209273*
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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_252089162$
"conv3d_492/StatefulPartitionedCallе
tf.reshape_922/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_922/Reshape/shape┘
tf.reshape_922/ReshapeReshape+conv3d_492/StatefulPartitionedCall:output:0%tf.reshape_922/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_922/Reshapeб
tf.tile_461/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_461/Tile/multiples╝
tf.tile_461/TileTiletf.reshape_922/Reshape:output:0#tf.tile_461/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_461/TileЩ
tf.reshape_923/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_923/Reshape/shape╗
tf.reshape_923/ReshapeReshapetf.tile_461/Tile:output:0%tf.reshape_923/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_923/Reshapex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axisё
tf.concat_724/concatConcatV2tf.reshape_923/Reshape:output:0+conv3d_486/StatefulPartitionedCall:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_724/concat╥
"conv3d_493/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv3d_493_25209284conv3d_493_25209286*
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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_252089412$
"conv3d_493/StatefulPartitionedCallр
"conv3d_494/StatefulPartitionedCallStatefulPartitionedCall+conv3d_493/StatefulPartitionedCall:output:0conv3d_494_25209289conv3d_494_25209291*
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
H__inference_conv3d_494_layer_call_and_return_conditional_losses_252089572$
"conv3d_494/StatefulPartitionedCallТ
IdentityIdentity+conv3d_494/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_486/StatefulPartitionedCall#^conv3d_487/StatefulPartitionedCall#^conv3d_488/StatefulPartitionedCall#^conv3d_489/StatefulPartitionedCall#^conv3d_490/StatefulPartitionedCall#^conv3d_491/StatefulPartitionedCall#^conv3d_492/StatefulPartitionedCall#^conv3d_493/StatefulPartitionedCall#^conv3d_494/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_486/StatefulPartitionedCall"conv3d_486/StatefulPartitionedCall2H
"conv3d_487/StatefulPartitionedCall"conv3d_487/StatefulPartitionedCall2H
"conv3d_488/StatefulPartitionedCall"conv3d_488/StatefulPartitionedCall2H
"conv3d_489/StatefulPartitionedCall"conv3d_489/StatefulPartitionedCall2H
"conv3d_490/StatefulPartitionedCall"conv3d_490/StatefulPartitionedCall2H
"conv3d_491/StatefulPartitionedCall"conv3d_491/StatefulPartitionedCall2H
"conv3d_492/StatefulPartitionedCall"conv3d_492/StatefulPartitionedCall2H
"conv3d_493/StatefulPartitionedCall"conv3d_493/StatefulPartitionedCall2H
"conv3d_494/StatefulPartitionedCall"conv3d_494/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╜ё
╡
F__inference_model_94_layer_call_and_return_conditional_losses_25210050

inputsG
)conv3d_486_conv3d_readvariableop_resource: 8
*conv3d_486_biasadd_readvariableop_resource: G
)conv3d_487_conv3d_readvariableop_resource: 8
*conv3d_487_biasadd_readvariableop_resource:G
)conv3d_488_conv3d_readvariableop_resource:8
*conv3d_488_biasadd_readvariableop_resource:G
)conv3d_489_conv3d_readvariableop_resource:8
*conv3d_489_biasadd_readvariableop_resource:9
'dense_94_matmul_readvariableop_resource:@@6
(dense_94_biasadd_readvariableop_resource:@G
)conv3d_490_conv3d_readvariableop_resource:8
*conv3d_490_biasadd_readvariableop_resource:G
)conv3d_491_conv3d_readvariableop_resource:8
*conv3d_491_biasadd_readvariableop_resource:G
)conv3d_492_conv3d_readvariableop_resource:8
*conv3d_492_biasadd_readvariableop_resource:G
)conv3d_493_conv3d_readvariableop_resource:0 8
*conv3d_493_biasadd_readvariableop_resource: G
)conv3d_494_conv3d_readvariableop_resource: 8
*conv3d_494_biasadd_readvariableop_resource:
identityИв!conv3d_486/BiasAdd/ReadVariableOpв conv3d_486/Conv3D/ReadVariableOpв!conv3d_487/BiasAdd/ReadVariableOpв conv3d_487/Conv3D/ReadVariableOpв!conv3d_488/BiasAdd/ReadVariableOpв conv3d_488/Conv3D/ReadVariableOpв!conv3d_489/BiasAdd/ReadVariableOpв conv3d_489/Conv3D/ReadVariableOpв!conv3d_490/BiasAdd/ReadVariableOpв conv3d_490/Conv3D/ReadVariableOpв!conv3d_491/BiasAdd/ReadVariableOpв conv3d_491/Conv3D/ReadVariableOpв!conv3d_492/BiasAdd/ReadVariableOpв conv3d_492/Conv3D/ReadVariableOpв!conv3d_493/BiasAdd/ReadVariableOpв conv3d_493/Conv3D/ReadVariableOpв!conv3d_494/BiasAdd/ReadVariableOpв conv3d_494/Conv3D/ReadVariableOpвdense_94/BiasAdd/ReadVariableOpвdense_94/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_524/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_524/strided_slice/stack╣
2tf.__operators__.getitem_524/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_524/strided_slice/stack_1╣
2tf.__operators__.getitem_524/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_524/strided_slice/stack_2Т
*tf.__operators__.getitem_524/strided_sliceStridedSliceinputs9tf.__operators__.getitem_524/strided_slice/stack:output:0;tf.__operators__.getitem_524/strided_slice/stack_1:output:0;tf.__operators__.getitem_524/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_524/strided_slice{
range_conversion_94/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_94/sub/y╨
range_conversion_94/subSub3tf.__operators__.getitem_524/strided_slice:output:0"range_conversion_94/sub/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/subГ
range_conversion_94/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_94/truediv/y╚
range_conversion_94/truedivRealDivrange_conversion_94/sub:z:0&range_conversion_94/truediv/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/truediv{
range_conversion_94/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_94/mul/y╝
range_conversion_94/mulMulrange_conversion_94/truediv:z:0"range_conversion_94/mul/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/mul{
range_conversion_94/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_94/add/y║
range_conversion_94/addAddV2range_conversion_94/mul:z:0"range_conversion_94/add/y:output:0*
T0*3
_output_shapes!
:         @@2
range_conversion_94/add╡
0tf.__operators__.getitem_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_525/strided_slice/stack╣
2tf.__operators__.getitem_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_525/strided_slice/stack_1╣
2tf.__operators__.getitem_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_525/strided_slice/stack_2Т
*tf.__operators__.getitem_525/strided_sliceStridedSliceinputs9tf.__operators__.getitem_525/strided_slice/stack:output:0;tf.__operators__.getitem_525/strided_slice/stack_1:output:0;tf.__operators__.getitem_525/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_525/strided_slicex
tf.concat_720/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_720/concat/axisї
tf.concat_720/concatConcatV2range_conversion_94/add:z:03tf.__operators__.getitem_525/strided_slice:output:0"tf.concat_720/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_720/concat║
 conv3d_486/Conv3D/ReadVariableOpReadVariableOp)conv3d_486_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_486/Conv3D/ReadVariableOp°
conv3d_486/Conv3DConv3Dtf.concat_720/concat:output:0(conv3d_486/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_486/Conv3Dн
!conv3d_486/BiasAdd/ReadVariableOpReadVariableOp*conv3d_486_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_486/BiasAdd/ReadVariableOp╧
conv3d_486/BiasAddBiasAddconv3d_486/Conv3D:output:0)conv3d_486/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_486/BiasAddС
conv3d_486/SoftplusSoftplusconv3d_486/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_486/Softplusй
$average_pooling3d_196/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_196/transpose/perm▀
average_pooling3d_196/transpose	Transpose!conv3d_486/Softplus:activations:0-average_pooling3d_196/transpose/perm:output:0*
T0*3
_output_shapes!
:         @@ 2!
average_pooling3d_196/transposeЁ
average_pooling3d_196/AvgPool3D	AvgPool3D#average_pooling3d_196/transpose:y:0*
T0*3
_output_shapes!
:            *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_196/AvgPool3Dн
&average_pooling3d_196/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_196/transpose_1/permь
!average_pooling3d_196/transpose_1	Transpose(average_pooling3d_196/AvgPool3D:output:0/average_pooling3d_196/transpose_1/perm:output:0*
T0*3
_output_shapes!
:            2#
!average_pooling3d_196/transpose_1║
 conv3d_487/Conv3D/ReadVariableOpReadVariableOp)conv3d_487_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_487/Conv3D/ReadVariableOpА
conv3d_487/Conv3DConv3D%average_pooling3d_196/transpose_1:y:0(conv3d_487/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_487/Conv3Dн
!conv3d_487/BiasAdd/ReadVariableOpReadVariableOp*conv3d_487_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_487/BiasAdd/ReadVariableOp╧
conv3d_487/BiasAddBiasAddconv3d_487/Conv3D:output:0)conv3d_487/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_487/BiasAddС
conv3d_487/SoftplusSoftplusconv3d_487/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_487/Softplusй
$average_pooling3d_197/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_197/transpose/perm▀
average_pooling3d_197/transpose	Transpose!conv3d_487/Softplus:activations:0-average_pooling3d_197/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_197/transposeЁ
average_pooling3d_197/AvgPool3D	AvgPool3D#average_pooling3d_197/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_197/AvgPool3Dн
&average_pooling3d_197/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_197/transpose_1/permь
!average_pooling3d_197/transpose_1	Transpose(average_pooling3d_197/AvgPool3D:output:0/average_pooling3d_197/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_197/transpose_1║
 conv3d_488/Conv3D/ReadVariableOpReadVariableOp)conv3d_488_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_488/Conv3D/ReadVariableOpА
conv3d_488/Conv3DConv3D%average_pooling3d_197/transpose_1:y:0(conv3d_488/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_488/Conv3Dн
!conv3d_488/BiasAdd/ReadVariableOpReadVariableOp*conv3d_488_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_488/BiasAdd/ReadVariableOp╧
conv3d_488/BiasAddBiasAddconv3d_488/Conv3D:output:0)conv3d_488/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_488/BiasAddС
conv3d_488/SoftplusSoftplusconv3d_488/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_488/Softplusй
$average_pooling3d_198/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_198/transpose/perm▀
average_pooling3d_198/transpose	Transpose!conv3d_488/Softplus:activations:0-average_pooling3d_198/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_198/transposeЁ
average_pooling3d_198/AvgPool3D	AvgPool3D#average_pooling3d_198/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_198/AvgPool3Dн
&average_pooling3d_198/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_198/transpose_1/permь
!average_pooling3d_198/transpose_1	Transpose(average_pooling3d_198/AvgPool3D:output:0/average_pooling3d_198/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_198/transpose_1║
 conv3d_489/Conv3D/ReadVariableOpReadVariableOp)conv3d_489_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_489/Conv3D/ReadVariableOpА
conv3d_489/Conv3DConv3D%average_pooling3d_198/transpose_1:y:0(conv3d_489/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_489/Conv3Dн
!conv3d_489/BiasAdd/ReadVariableOpReadVariableOp*conv3d_489_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_489/BiasAdd/ReadVariableOp╧
conv3d_489/BiasAddBiasAddconv3d_489/Conv3D:output:0)conv3d_489/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_489/BiasAddС
conv3d_489/SoftplusSoftplusconv3d_489/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_489/Softplusй
$average_pooling3d_199/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_199/transpose/perm▀
average_pooling3d_199/transpose	Transpose!conv3d_489/Softplus:activations:0-average_pooling3d_199/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_199/transposeЁ
average_pooling3d_199/AvgPool3D	AvgPool3D#average_pooling3d_199/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_199/AvgPool3Dн
&average_pooling3d_199/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_199/transpose_1/permь
!average_pooling3d_199/transpose_1	Transpose(average_pooling3d_199/AvgPool3D:output:0/average_pooling3d_199/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_199/transpose_1{
reshape_188/ShapeShape%average_pooling3d_199/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_188/ShapeМ
reshape_188/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_188/strided_slice/stackР
!reshape_188/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_188/strided_slice/stack_1Р
!reshape_188/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_188/strided_slice/stack_2к
reshape_188/strided_sliceStridedSlicereshape_188/Shape:output:0(reshape_188/strided_slice/stack:output:0*reshape_188/strided_slice/stack_1:output:0*reshape_188/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_188/strided_slice|
reshape_188/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_188/Reshape/shape/1╢
reshape_188/Reshape/shapePack"reshape_188/strided_slice:output:0$reshape_188/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_188/Reshape/shape▓
reshape_188/ReshapeReshape%average_pooling3d_199/transpose_1:y:0"reshape_188/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_188/Reshapeи
dense_94/MatMul/ReadVariableOpReadVariableOp'dense_94_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_94/MatMul/ReadVariableOpд
dense_94/MatMulMatMulreshape_188/Reshape:output:0&dense_94/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_94/MatMulз
dense_94/BiasAdd/ReadVariableOpReadVariableOp(dense_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_94/BiasAdd/ReadVariableOpе
dense_94/BiasAddBiasAdddense_94/MatMul:product:0'dense_94/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_94/BiasAdd
dense_94/SoftplusSoftplusdense_94/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_94/Softplusu
reshape_189/ShapeShapedense_94/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_189/ShapeМ
reshape_189/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_189/strided_slice/stackР
!reshape_189/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_189/strided_slice/stack_1Р
!reshape_189/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_189/strided_slice/stack_2к
reshape_189/strided_sliceStridedSlicereshape_189/Shape:output:0(reshape_189/strided_slice/stack:output:0*reshape_189/strided_slice/stack_1:output:0*reshape_189/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_189/strided_slice|
reshape_189/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/1|
reshape_189/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/2|
reshape_189/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/3|
reshape_189/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_189/Reshape/shape/4и
reshape_189/Reshape/shapePack"reshape_189/strided_slice:output:0$reshape_189/Reshape/shape/1:output:0$reshape_189/Reshape/shape/2:output:0$reshape_189/Reshape/shape/3:output:0$reshape_189/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_189/Reshape/shape╕
reshape_189/ReshapeReshapedense_94/Softplus:activations:0"reshape_189/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_189/Reshapeе
tf.reshape_916/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_916/Reshape/shape╩
tf.reshape_916/ReshapeReshapereshape_189/Reshape:output:0%tf.reshape_916/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_916/Reshapeб
tf.tile_458/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_458/Tile/multiples╝
tf.tile_458/TileTiletf.reshape_916/Reshape:output:0#tf.tile_458/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_458/TileЩ
tf.reshape_917/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_917/Reshape/shape╗
tf.reshape_917/ReshapeReshapetf.tile_458/Tile:output:0%tf.reshape_917/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_917/Reshapex
tf.concat_721/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_721/concat/axisч
tf.concat_721/concatConcatV2tf.reshape_917/Reshape:output:0!conv3d_489/Softplus:activations:0"tf.concat_721/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_721/concat║
 conv3d_490/Conv3D/ReadVariableOpReadVariableOp)conv3d_490_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_490/Conv3D/ReadVariableOp°
conv3d_490/Conv3DConv3Dtf.concat_721/concat:output:0(conv3d_490/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_490/Conv3Dн
!conv3d_490/BiasAdd/ReadVariableOpReadVariableOp*conv3d_490_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_490/BiasAdd/ReadVariableOp╧
conv3d_490/BiasAddBiasAddconv3d_490/Conv3D:output:0)conv3d_490/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_490/BiasAddС
conv3d_490/SoftplusSoftplusconv3d_490/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_490/Softplusе
tf.reshape_918/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_918/Reshape/shape╧
tf.reshape_918/ReshapeReshape!conv3d_490/Softplus:activations:0%tf.reshape_918/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_918/Reshapeб
tf.tile_459/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_459/Tile/multiples╝
tf.tile_459/TileTiletf.reshape_918/Reshape:output:0#tf.tile_459/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_459/TileЩ
tf.reshape_919/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_919/Reshape/shape╗
tf.reshape_919/ReshapeReshapetf.tile_459/Tile:output:0%tf.reshape_919/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_919/Reshapex
tf.concat_722/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_722/concat/axisч
tf.concat_722/concatConcatV2tf.reshape_919/Reshape:output:0!conv3d_488/Softplus:activations:0"tf.concat_722/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_722/concat║
 conv3d_491/Conv3D/ReadVariableOpReadVariableOp)conv3d_491_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_491/Conv3D/ReadVariableOp°
conv3d_491/Conv3DConv3Dtf.concat_722/concat:output:0(conv3d_491/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_491/Conv3Dн
!conv3d_491/BiasAdd/ReadVariableOpReadVariableOp*conv3d_491_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_491/BiasAdd/ReadVariableOp╧
conv3d_491/BiasAddBiasAddconv3d_491/Conv3D:output:0)conv3d_491/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_491/BiasAddС
conv3d_491/SoftplusSoftplusconv3d_491/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_491/Softplusе
tf.reshape_920/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_920/Reshape/shape╧
tf.reshape_920/ReshapeReshape!conv3d_491/Softplus:activations:0%tf.reshape_920/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_920/Reshapeб
tf.tile_460/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_460/Tile/multiples╝
tf.tile_460/TileTiletf.reshape_920/Reshape:output:0#tf.tile_460/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_460/TileЩ
tf.reshape_921/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_921/Reshape/shape╗
tf.reshape_921/ReshapeReshapetf.tile_460/Tile:output:0%tf.reshape_921/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_921/Reshapex
tf.concat_723/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_723/concat/axisч
tf.concat_723/concatConcatV2tf.reshape_921/Reshape:output:0!conv3d_487/Softplus:activations:0"tf.concat_723/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_723/concat║
 conv3d_492/Conv3D/ReadVariableOpReadVariableOp)conv3d_492_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_492/Conv3D/ReadVariableOp°
conv3d_492/Conv3DConv3Dtf.concat_723/concat:output:0(conv3d_492/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_492/Conv3Dн
!conv3d_492/BiasAdd/ReadVariableOpReadVariableOp*conv3d_492_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_492/BiasAdd/ReadVariableOp╧
conv3d_492/BiasAddBiasAddconv3d_492/Conv3D:output:0)conv3d_492/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_492/BiasAddС
conv3d_492/SoftplusSoftplusconv3d_492/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_492/Softplusе
tf.reshape_922/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_922/Reshape/shape╧
tf.reshape_922/ReshapeReshape!conv3d_492/Softplus:activations:0%tf.reshape_922/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_922/Reshapeб
tf.tile_461/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_461/Tile/multiples╝
tf.tile_461/TileTiletf.reshape_922/Reshape:output:0#tf.tile_461/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_461/TileЩ
tf.reshape_923/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_923/Reshape/shape╗
tf.reshape_923/ReshapeReshapetf.tile_461/Tile:output:0%tf.reshape_923/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_923/Reshapex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axisч
tf.concat_724/concatConcatV2tf.reshape_923/Reshape:output:0!conv3d_486/Softplus:activations:0"tf.concat_724/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_724/concat║
 conv3d_493/Conv3D/ReadVariableOpReadVariableOp)conv3d_493_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_493/Conv3D/ReadVariableOp°
conv3d_493/Conv3DConv3Dtf.concat_724/concat:output:0(conv3d_493/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_493/Conv3Dн
!conv3d_493/BiasAdd/ReadVariableOpReadVariableOp*conv3d_493_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_493/BiasAdd/ReadVariableOp╧
conv3d_493/BiasAddBiasAddconv3d_493/Conv3D:output:0)conv3d_493/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:          @@*
data_formatNCHW2
conv3d_493/BiasAddС
conv3d_493/SoftplusSoftplusconv3d_493/BiasAdd:output:0*
T0*3
_output_shapes!
:          @@2
conv3d_493/Softplus║
 conv3d_494/Conv3D/ReadVariableOpReadVariableOp)conv3d_494_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_494/Conv3D/ReadVariableOp№
conv3d_494/Conv3DConv3D!conv3d_493/Softplus:activations:0(conv3d_494/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_494/Conv3Dн
!conv3d_494/BiasAdd/ReadVariableOpReadVariableOp*conv3d_494_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_494/BiasAdd/ReadVariableOp╧
conv3d_494/BiasAddBiasAddconv3d_494/Conv3D:output:0)conv3d_494/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         @@*
data_formatNCHW2
conv3d_494/BiasAddВ
IdentityIdentityconv3d_494/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

IdentityР
NoOpNoOp"^conv3d_486/BiasAdd/ReadVariableOp!^conv3d_486/Conv3D/ReadVariableOp"^conv3d_487/BiasAdd/ReadVariableOp!^conv3d_487/Conv3D/ReadVariableOp"^conv3d_488/BiasAdd/ReadVariableOp!^conv3d_488/Conv3D/ReadVariableOp"^conv3d_489/BiasAdd/ReadVariableOp!^conv3d_489/Conv3D/ReadVariableOp"^conv3d_490/BiasAdd/ReadVariableOp!^conv3d_490/Conv3D/ReadVariableOp"^conv3d_491/BiasAdd/ReadVariableOp!^conv3d_491/Conv3D/ReadVariableOp"^conv3d_492/BiasAdd/ReadVariableOp!^conv3d_492/Conv3D/ReadVariableOp"^conv3d_493/BiasAdd/ReadVariableOp!^conv3d_493/Conv3D/ReadVariableOp"^conv3d_494/BiasAdd/ReadVariableOp!^conv3d_494/Conv3D/ReadVariableOp ^dense_94/BiasAdd/ReadVariableOp^dense_94/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_486/BiasAdd/ReadVariableOp!conv3d_486/BiasAdd/ReadVariableOp2D
 conv3d_486/Conv3D/ReadVariableOp conv3d_486/Conv3D/ReadVariableOp2F
!conv3d_487/BiasAdd/ReadVariableOp!conv3d_487/BiasAdd/ReadVariableOp2D
 conv3d_487/Conv3D/ReadVariableOp conv3d_487/Conv3D/ReadVariableOp2F
!conv3d_488/BiasAdd/ReadVariableOp!conv3d_488/BiasAdd/ReadVariableOp2D
 conv3d_488/Conv3D/ReadVariableOp conv3d_488/Conv3D/ReadVariableOp2F
!conv3d_489/BiasAdd/ReadVariableOp!conv3d_489/BiasAdd/ReadVariableOp2D
 conv3d_489/Conv3D/ReadVariableOp conv3d_489/Conv3D/ReadVariableOp2F
!conv3d_490/BiasAdd/ReadVariableOp!conv3d_490/BiasAdd/ReadVariableOp2D
 conv3d_490/Conv3D/ReadVariableOp conv3d_490/Conv3D/ReadVariableOp2F
!conv3d_491/BiasAdd/ReadVariableOp!conv3d_491/BiasAdd/ReadVariableOp2D
 conv3d_491/Conv3D/ReadVariableOp conv3d_491/Conv3D/ReadVariableOp2F
!conv3d_492/BiasAdd/ReadVariableOp!conv3d_492/BiasAdd/ReadVariableOp2D
 conv3d_492/Conv3D/ReadVariableOp conv3d_492/Conv3D/ReadVariableOp2F
!conv3d_493/BiasAdd/ReadVariableOp!conv3d_493/BiasAdd/ReadVariableOp2D
 conv3d_493/Conv3D/ReadVariableOp conv3d_493/Conv3D/ReadVariableOp2F
!conv3d_494/BiasAdd/ReadVariableOp!conv3d_494/BiasAdd/ReadVariableOp2D
 conv3d_494/Conv3D/ReadVariableOp conv3d_494/Conv3D/ReadVariableOp2B
dense_94/BiasAdd/ReadVariableOpdense_94/BiasAdd/ReadVariableOp2@
dense_94/MatMul/ReadVariableOpdense_94/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
Х
T
8__inference_average_pooling3d_197_layer_call_fn_25210145

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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_252087432
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
╬
Е
H__inference_conv3d_490_layer_call_and_return_conditional_losses_25208866

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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25208797

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
Ф
ў
F__inference_dense_94_layer_call_and_return_conditional_losses_25210296

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
¤Т
а

F__inference_model_94_layer_call_and_return_conditional_losses_25209589	
input1
conv3d_486_25209500: !
conv3d_486_25209502: 1
conv3d_487_25209506: !
conv3d_487_25209508:1
conv3d_488_25209512:!
conv3d_488_25209514:1
conv3d_489_25209518:!
conv3d_489_25209520:#
dense_94_25209525:@@
dense_94_25209527:@1
conv3d_490_25209539:!
conv3d_490_25209541:1
conv3d_491_25209552:!
conv3d_491_25209554:1
conv3d_492_25209565:!
conv3d_492_25209567:1
conv3d_493_25209578:0 !
conv3d_493_25209580: 1
conv3d_494_25209583: !
conv3d_494_25209585:
identityИв"conv3d_486/StatefulPartitionedCallв"conv3d_487/StatefulPartitionedCallв"conv3d_488/StatefulPartitionedCallв"conv3d_489/StatefulPartitionedCallв"conv3d_490/StatefulPartitionedCallв"conv3d_491/StatefulPartitionedCallв"conv3d_492/StatefulPartitionedCallв"conv3d_493/StatefulPartitionedCallв"conv3d_494/StatefulPartitionedCallв dense_94/StatefulPartitionedCall╡
0tf.__operators__.getitem_524/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_524/strided_slice/stack╣
2tf.__operators__.getitem_524/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_524/strided_slice/stack_1╣
2tf.__operators__.getitem_524/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_524/strided_slice/stack_2С
*tf.__operators__.getitem_524/strided_sliceStridedSliceinput9tf.__operators__.getitem_524/strided_slice/stack:output:0;tf.__operators__.getitem_524/strided_slice/stack_1:output:0;tf.__operators__.getitem_524/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_524/strided_slice╗
#range_conversion_94/PartitionedCallPartitionedCall3tf.__operators__.getitem_524/strided_slice:output:0*
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
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_252086832%
#range_conversion_94/PartitionedCall╡
0tf.__operators__.getitem_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_525/strided_slice/stack╣
2tf.__operators__.getitem_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_525/strided_slice/stack_1╣
2tf.__operators__.getitem_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_525/strided_slice/stack_2С
*tf.__operators__.getitem_525/strided_sliceStridedSliceinput9tf.__operators__.getitem_525/strided_slice/stack:output:0;tf.__operators__.getitem_525/strided_slice/stack_1:output:0;tf.__operators__.getitem_525/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_525/strided_slicex
tf.concat_720/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_720/concat/axisЖ
tf.concat_720/concatConcatV2,range_conversion_94/PartitionedCall:output:03tf.__operators__.getitem_525/strided_slice:output:0"tf.concat_720/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_720/concat╥
"conv3d_486/StatefulPartitionedCallStatefulPartitionedCalltf.concat_720/concat:output:0conv3d_486_25209500conv3d_486_25209502*
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
H__inference_conv3d_486_layer_call_and_return_conditional_losses_252087022$
"conv3d_486/StatefulPartitionedCall╣
%average_pooling3d_196/PartitionedCallPartitionedCall+conv3d_486/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_252087162'
%average_pooling3d_196/PartitionedCallу
"conv3d_487/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_196/PartitionedCall:output:0conv3d_487_25209506conv3d_487_25209508*
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
H__inference_conv3d_487_layer_call_and_return_conditional_losses_252087292$
"conv3d_487/StatefulPartitionedCall╣
%average_pooling3d_197/PartitionedCallPartitionedCall+conv3d_487/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_252087432'
%average_pooling3d_197/PartitionedCallу
"conv3d_488/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_197/PartitionedCall:output:0conv3d_488_25209512conv3d_488_25209514*
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
H__inference_conv3d_488_layer_call_and_return_conditional_losses_252087562$
"conv3d_488/StatefulPartitionedCall╣
%average_pooling3d_198/PartitionedCallPartitionedCall+conv3d_488/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_252087702'
%average_pooling3d_198/PartitionedCallу
"conv3d_489/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_198/PartitionedCall:output:0conv3d_489_25209518conv3d_489_25209520*
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
H__inference_conv3d_489_layer_call_and_return_conditional_losses_252087832$
"conv3d_489/StatefulPartitionedCall╣
%average_pooling3d_199/PartitionedCallPartitionedCall+conv3d_489/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_252087972'
%average_pooling3d_199/PartitionedCallТ
reshape_188/PartitionedCallPartitionedCall.average_pooling3d_199/PartitionedCall:output:0*
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
I__inference_reshape_188_layer_call_and_return_conditional_losses_252088112
reshape_188/PartitionedCall├
 dense_94/StatefulPartitionedCallStatefulPartitionedCall$reshape_188/PartitionedCall:output:0dense_94_25209525dense_94_25209527*
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
F__inference_dense_94_layer_call_and_return_conditional_losses_252088242"
 dense_94/StatefulPartitionedCallЩ
reshape_189/PartitionedCallPartitionedCall)dense_94/StatefulPartitionedCall:output:0*
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
I__inference_reshape_189_layer_call_and_return_conditional_losses_252088452
reshape_189/PartitionedCallе
tf.reshape_916/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_916/Reshape/shape╥
tf.reshape_916/ReshapeReshape$reshape_189/PartitionedCall:output:0%tf.reshape_916/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_916/Reshapeб
tf.tile_458/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_458/Tile/multiples╝
tf.tile_458/TileTiletf.reshape_916/Reshape:output:0#tf.tile_458/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_458/TileЩ
tf.reshape_917/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_917/Reshape/shape╗
tf.reshape_917/ReshapeReshapetf.tile_458/Tile:output:0%tf.reshape_917/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_917/Reshapex
tf.concat_721/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_721/concat/axisё
tf.concat_721/concatConcatV2tf.reshape_917/Reshape:output:0+conv3d_489/StatefulPartitionedCall:output:0"tf.concat_721/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_721/concat╥
"conv3d_490/StatefulPartitionedCallStatefulPartitionedCalltf.concat_721/concat:output:0conv3d_490_25209539conv3d_490_25209541*
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
H__inference_conv3d_490_layer_call_and_return_conditional_losses_252088662$
"conv3d_490/StatefulPartitionedCallе
tf.reshape_918/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_918/Reshape/shape┘
tf.reshape_918/ReshapeReshape+conv3d_490/StatefulPartitionedCall:output:0%tf.reshape_918/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_918/Reshapeб
tf.tile_459/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_459/Tile/multiples╝
tf.tile_459/TileTiletf.reshape_918/Reshape:output:0#tf.tile_459/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_459/TileЩ
tf.reshape_919/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_919/Reshape/shape╗
tf.reshape_919/ReshapeReshapetf.tile_459/Tile:output:0%tf.reshape_919/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_919/Reshapex
tf.concat_722/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_722/concat/axisё
tf.concat_722/concatConcatV2tf.reshape_919/Reshape:output:0+conv3d_488/StatefulPartitionedCall:output:0"tf.concat_722/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_722/concat╥
"conv3d_491/StatefulPartitionedCallStatefulPartitionedCalltf.concat_722/concat:output:0conv3d_491_25209552conv3d_491_25209554*
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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_252088912$
"conv3d_491/StatefulPartitionedCallе
tf.reshape_920/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_920/Reshape/shape┘
tf.reshape_920/ReshapeReshape+conv3d_491/StatefulPartitionedCall:output:0%tf.reshape_920/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_920/Reshapeб
tf.tile_460/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_460/Tile/multiples╝
tf.tile_460/TileTiletf.reshape_920/Reshape:output:0#tf.tile_460/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_460/TileЩ
tf.reshape_921/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_921/Reshape/shape╗
tf.reshape_921/ReshapeReshapetf.tile_460/Tile:output:0%tf.reshape_921/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_921/Reshapex
tf.concat_723/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_723/concat/axisё
tf.concat_723/concatConcatV2tf.reshape_921/Reshape:output:0+conv3d_487/StatefulPartitionedCall:output:0"tf.concat_723/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_723/concat╥
"conv3d_492/StatefulPartitionedCallStatefulPartitionedCalltf.concat_723/concat:output:0conv3d_492_25209565conv3d_492_25209567*
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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_252089162$
"conv3d_492/StatefulPartitionedCallе
tf.reshape_922/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_922/Reshape/shape┘
tf.reshape_922/ReshapeReshape+conv3d_492/StatefulPartitionedCall:output:0%tf.reshape_922/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_922/Reshapeб
tf.tile_461/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_461/Tile/multiples╝
tf.tile_461/TileTiletf.reshape_922/Reshape:output:0#tf.tile_461/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_461/TileЩ
tf.reshape_923/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_923/Reshape/shape╗
tf.reshape_923/ReshapeReshapetf.tile_461/Tile:output:0%tf.reshape_923/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_923/Reshapex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axisё
tf.concat_724/concatConcatV2tf.reshape_923/Reshape:output:0+conv3d_486/StatefulPartitionedCall:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_724/concat╥
"conv3d_493/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv3d_493_25209578conv3d_493_25209580*
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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_252089412$
"conv3d_493/StatefulPartitionedCallр
"conv3d_494/StatefulPartitionedCallStatefulPartitionedCall+conv3d_493/StatefulPartitionedCall:output:0conv3d_494_25209583conv3d_494_25209585*
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
H__inference_conv3d_494_layer_call_and_return_conditional_losses_252089572$
"conv3d_494/StatefulPartitionedCallТ
IdentityIdentity+conv3d_494/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_486/StatefulPartitionedCall#^conv3d_487/StatefulPartitionedCall#^conv3d_488/StatefulPartitionedCall#^conv3d_489/StatefulPartitionedCall#^conv3d_490/StatefulPartitionedCall#^conv3d_491/StatefulPartitionedCall#^conv3d_492/StatefulPartitionedCall#^conv3d_493/StatefulPartitionedCall#^conv3d_494/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_486/StatefulPartitionedCall"conv3d_486/StatefulPartitionedCall2H
"conv3d_487/StatefulPartitionedCall"conv3d_487/StatefulPartitionedCall2H
"conv3d_488/StatefulPartitionedCall"conv3d_488/StatefulPartitionedCall2H
"conv3d_489/StatefulPartitionedCall"conv3d_489/StatefulPartitionedCall2H
"conv3d_490/StatefulPartitionedCall"conv3d_490/StatefulPartitionedCall2H
"conv3d_491/StatefulPartitionedCall"conv3d_491/StatefulPartitionedCall2H
"conv3d_492/StatefulPartitionedCall"conv3d_492/StatefulPartitionedCall2H
"conv3d_493/StatefulPartitionedCall"conv3d_493/StatefulPartitionedCall2H
"conv3d_494/StatefulPartitionedCall"conv3d_494/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall:Z V
3
_output_shapes!
:         @@

_user_specified_nameinput
БУ
б

F__inference_model_94_layer_call_and_return_conditional_losses_25208964

inputs1
conv3d_486_25208703: !
conv3d_486_25208705: 1
conv3d_487_25208730: !
conv3d_487_25208732:1
conv3d_488_25208757:!
conv3d_488_25208759:1
conv3d_489_25208784:!
conv3d_489_25208786:#
dense_94_25208825:@@
dense_94_25208827:@1
conv3d_490_25208867:!
conv3d_490_25208869:1
conv3d_491_25208892:!
conv3d_491_25208894:1
conv3d_492_25208917:!
conv3d_492_25208919:1
conv3d_493_25208942:0 !
conv3d_493_25208944: 1
conv3d_494_25208958: !
conv3d_494_25208960:
identityИв"conv3d_486/StatefulPartitionedCallв"conv3d_487/StatefulPartitionedCallв"conv3d_488/StatefulPartitionedCallв"conv3d_489/StatefulPartitionedCallв"conv3d_490/StatefulPartitionedCallв"conv3d_491/StatefulPartitionedCallв"conv3d_492/StatefulPartitionedCallв"conv3d_493/StatefulPartitionedCallв"conv3d_494/StatefulPartitionedCallв dense_94/StatefulPartitionedCall╡
0tf.__operators__.getitem_524/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_524/strided_slice/stack╣
2tf.__operators__.getitem_524/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_524/strided_slice/stack_1╣
2tf.__operators__.getitem_524/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_524/strided_slice/stack_2Т
*tf.__operators__.getitem_524/strided_sliceStridedSliceinputs9tf.__operators__.getitem_524/strided_slice/stack:output:0;tf.__operators__.getitem_524/strided_slice/stack_1:output:0;tf.__operators__.getitem_524/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_524/strided_slice╗
#range_conversion_94/PartitionedCallPartitionedCall3tf.__operators__.getitem_524/strided_slice:output:0*
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
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_252086832%
#range_conversion_94/PartitionedCall╡
0tf.__operators__.getitem_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_525/strided_slice/stack╣
2tf.__operators__.getitem_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_525/strided_slice/stack_1╣
2tf.__operators__.getitem_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_525/strided_slice/stack_2Т
*tf.__operators__.getitem_525/strided_sliceStridedSliceinputs9tf.__operators__.getitem_525/strided_slice/stack:output:0;tf.__operators__.getitem_525/strided_slice/stack_1:output:0;tf.__operators__.getitem_525/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         @@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_525/strided_slicex
tf.concat_720/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_720/concat/axisЖ
tf.concat_720/concatConcatV2,range_conversion_94/PartitionedCall:output:03tf.__operators__.getitem_525/strided_slice:output:0"tf.concat_720/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         @@2
tf.concat_720/concat╥
"conv3d_486/StatefulPartitionedCallStatefulPartitionedCalltf.concat_720/concat:output:0conv3d_486_25208703conv3d_486_25208705*
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
H__inference_conv3d_486_layer_call_and_return_conditional_losses_252087022$
"conv3d_486/StatefulPartitionedCall╣
%average_pooling3d_196/PartitionedCallPartitionedCall+conv3d_486/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_252087162'
%average_pooling3d_196/PartitionedCallу
"conv3d_487/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_196/PartitionedCall:output:0conv3d_487_25208730conv3d_487_25208732*
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
H__inference_conv3d_487_layer_call_and_return_conditional_losses_252087292$
"conv3d_487/StatefulPartitionedCall╣
%average_pooling3d_197/PartitionedCallPartitionedCall+conv3d_487/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_252087432'
%average_pooling3d_197/PartitionedCallу
"conv3d_488/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_197/PartitionedCall:output:0conv3d_488_25208757conv3d_488_25208759*
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
H__inference_conv3d_488_layer_call_and_return_conditional_losses_252087562$
"conv3d_488/StatefulPartitionedCall╣
%average_pooling3d_198/PartitionedCallPartitionedCall+conv3d_488/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_252087702'
%average_pooling3d_198/PartitionedCallу
"conv3d_489/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_198/PartitionedCall:output:0conv3d_489_25208784conv3d_489_25208786*
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
H__inference_conv3d_489_layer_call_and_return_conditional_losses_252087832$
"conv3d_489/StatefulPartitionedCall╣
%average_pooling3d_199/PartitionedCallPartitionedCall+conv3d_489/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_252087972'
%average_pooling3d_199/PartitionedCallТ
reshape_188/PartitionedCallPartitionedCall.average_pooling3d_199/PartitionedCall:output:0*
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
I__inference_reshape_188_layer_call_and_return_conditional_losses_252088112
reshape_188/PartitionedCall├
 dense_94/StatefulPartitionedCallStatefulPartitionedCall$reshape_188/PartitionedCall:output:0dense_94_25208825dense_94_25208827*
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
F__inference_dense_94_layer_call_and_return_conditional_losses_252088242"
 dense_94/StatefulPartitionedCallЩ
reshape_189/PartitionedCallPartitionedCall)dense_94/StatefulPartitionedCall:output:0*
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
I__inference_reshape_189_layer_call_and_return_conditional_losses_252088452
reshape_189/PartitionedCallе
tf.reshape_916/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_916/Reshape/shape╥
tf.reshape_916/ReshapeReshape$reshape_189/PartitionedCall:output:0%tf.reshape_916/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_916/Reshapeб
tf.tile_458/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_458/Tile/multiples╝
tf.tile_458/TileTiletf.reshape_916/Reshape:output:0#tf.tile_458/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_458/TileЩ
tf.reshape_917/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_917/Reshape/shape╗
tf.reshape_917/ReshapeReshapetf.tile_458/Tile:output:0%tf.reshape_917/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_917/Reshapex
tf.concat_721/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_721/concat/axisё
tf.concat_721/concatConcatV2tf.reshape_917/Reshape:output:0+conv3d_489/StatefulPartitionedCall:output:0"tf.concat_721/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_721/concat╥
"conv3d_490/StatefulPartitionedCallStatefulPartitionedCalltf.concat_721/concat:output:0conv3d_490_25208867conv3d_490_25208869*
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
H__inference_conv3d_490_layer_call_and_return_conditional_losses_252088662$
"conv3d_490/StatefulPartitionedCallе
tf.reshape_918/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_918/Reshape/shape┘
tf.reshape_918/ReshapeReshape+conv3d_490/StatefulPartitionedCall:output:0%tf.reshape_918/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_918/Reshapeб
tf.tile_459/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_459/Tile/multiples╝
tf.tile_459/TileTiletf.reshape_918/Reshape:output:0#tf.tile_459/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_459/TileЩ
tf.reshape_919/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_919/Reshape/shape╗
tf.reshape_919/ReshapeReshapetf.tile_459/Tile:output:0%tf.reshape_919/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_919/Reshapex
tf.concat_722/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_722/concat/axisё
tf.concat_722/concatConcatV2tf.reshape_919/Reshape:output:0+conv3d_488/StatefulPartitionedCall:output:0"tf.concat_722/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_722/concat╥
"conv3d_491/StatefulPartitionedCallStatefulPartitionedCalltf.concat_722/concat:output:0conv3d_491_25208892conv3d_491_25208894*
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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_252088912$
"conv3d_491/StatefulPartitionedCallе
tf.reshape_920/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_920/Reshape/shape┘
tf.reshape_920/ReshapeReshape+conv3d_491/StatefulPartitionedCall:output:0%tf.reshape_920/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_920/Reshapeб
tf.tile_460/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_460/Tile/multiples╝
tf.tile_460/TileTiletf.reshape_920/Reshape:output:0#tf.tile_460/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_460/TileЩ
tf.reshape_921/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_921/Reshape/shape╗
tf.reshape_921/ReshapeReshapetf.tile_460/Tile:output:0%tf.reshape_921/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_921/Reshapex
tf.concat_723/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_723/concat/axisё
tf.concat_723/concatConcatV2tf.reshape_921/Reshape:output:0+conv3d_487/StatefulPartitionedCall:output:0"tf.concat_723/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_723/concat╥
"conv3d_492/StatefulPartitionedCallStatefulPartitionedCalltf.concat_723/concat:output:0conv3d_492_25208917conv3d_492_25208919*
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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_252089162$
"conv3d_492/StatefulPartitionedCallе
tf.reshape_922/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                            2
tf.reshape_922/Reshape/shape┘
tf.reshape_922/ReshapeReshape+conv3d_492/StatefulPartitionedCall:output:0%tf.reshape_922/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)           2
tf.reshape_922/Reshapeб
tf.tile_461/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_461/Tile/multiples╝
tf.tile_461/TileTiletf.reshape_922/Reshape:output:0#tf.tile_461/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)           2
tf.tile_461/TileЩ
tf.reshape_923/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"          @   @   2
tf.reshape_923/Reshape/shape╗
tf.reshape_923/ReshapeReshapetf.tile_461/Tile:output:0%tf.reshape_923/Reshape/shape:output:0*
T0*3
_output_shapes!
:         @@2
tf.reshape_923/Reshapex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axisё
tf.concat_724/concatConcatV2tf.reshape_923/Reshape:output:0+conv3d_486/StatefulPartitionedCall:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         0@@2
tf.concat_724/concat╥
"conv3d_493/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv3d_493_25208942conv3d_493_25208944*
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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_252089412$
"conv3d_493/StatefulPartitionedCallр
"conv3d_494/StatefulPartitionedCallStatefulPartitionedCall+conv3d_493/StatefulPartitionedCall:output:0conv3d_494_25208958conv3d_494_25208960*
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
H__inference_conv3d_494_layer_call_and_return_conditional_losses_252089572$
"conv3d_494/StatefulPartitionedCallТ
IdentityIdentity+conv3d_494/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         @@2

Identity╛
NoOpNoOp#^conv3d_486/StatefulPartitionedCall#^conv3d_487/StatefulPartitionedCall#^conv3d_488/StatefulPartitionedCall#^conv3d_489/StatefulPartitionedCall#^conv3d_490/StatefulPartitionedCall#^conv3d_491/StatefulPartitionedCall#^conv3d_492/StatefulPartitionedCall#^conv3d_493/StatefulPartitionedCall#^conv3d_494/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         @@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_486/StatefulPartitionedCall"conv3d_486/StatefulPartitionedCall2H
"conv3d_487/StatefulPartitionedCall"conv3d_487/StatefulPartitionedCall2H
"conv3d_488/StatefulPartitionedCall"conv3d_488/StatefulPartitionedCall2H
"conv3d_489/StatefulPartitionedCall"conv3d_489/StatefulPartitionedCall2H
"conv3d_490/StatefulPartitionedCall"conv3d_490/StatefulPartitionedCall2H
"conv3d_491/StatefulPartitionedCall"conv3d_491/StatefulPartitionedCall2H
"conv3d_492/StatefulPartitionedCall"conv3d_492/StatefulPartitionedCall2H
"conv3d_493/StatefulPartitionedCall"conv3d_493/StatefulPartitionedCall2H
"conv3d_494/StatefulPartitionedCall"conv3d_494/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall:[ W
3
_output_shapes!
:         @@
 
_user_specified_nameinputs
╫	
q
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_25210067

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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_25210396

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
Ь
e
I__inference_reshape_188_layer_call_and_return_conditional_losses_25208811

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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25210211

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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_25210356

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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_25208941

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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_25208916

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
ж
T
8__inference_average_pooling3d_196_layer_call_fn_25210092

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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_252085532
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
-__inference_conv3d_489_layer_call_fn_25210220

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
H__inference_conv3d_489_layer_call_and_return_conditional_losses_252087832
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
-__inference_conv3d_490_layer_call_fn_25210325

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
H__inference_conv3d_490_layer_call_and_return_conditional_losses_252088662
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
8__inference_average_pooling3d_196_layer_call_fn_25210097

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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_252087162
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
H__inference_conv3d_486_layer_call_and_return_conditional_losses_25208702

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
╓
Е
H__inference_conv3d_494_layer_call_and_return_conditional_losses_25208957

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
┴
ж
-__inference_conv3d_491_layer_call_fn_25210345

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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_252088912
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
6__inference_range_conversion_94_layer_call_fn_25210055

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
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_252086832
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
parameters"иL
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

conv3d_494<
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
1:/  2conv3d_486/kernel
:  2conv3d_486/bias
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
1:/  2conv3d_487/kernel
: 2conv3d_487/bias
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
1:/ 2conv3d_488/kernel
: 2conv3d_488/bias
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
1:/ 2conv3d_489/kernel
: 2conv3d_489/bias
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
#:!@@ 2dense_94/kernel
:@ 2dense_94/bias
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
1:/ 2conv3d_490/kernel
: 2conv3d_490/bias
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
1:/ 2conv3d_491/kernel
: 2conv3d_491/bias
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
1:/ 2conv3d_492/kernel
: 2conv3d_492/bias
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
1:/0  2conv3d_493/kernel
:  2conv3d_493/bias
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
1:/  2conv3d_494/kernel
: 2conv3d_494/bias
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
+__inference_model_94_layer_call_fn_25209007
+__inference_model_94_layer_call_fn_25209681
+__inference_model_94_layer_call_fn_25209726
+__inference_model_94_layer_call_fn_25209383└
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
#__inference__wrapped_model_25208540input"Ш
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
F__inference_model_94_layer_call_and_return_conditional_losses_25209888
F__inference_model_94_layer_call_and_return_conditional_losses_25210050
F__inference_model_94_layer_call_and_return_conditional_losses_25209486
F__inference_model_94_layer_call_and_return_conditional_losses_25209589└
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
6__inference_range_conversion_94_layer_call_fn_25210055ж
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
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_25210067ж
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
-__inference_conv3d_486_layer_call_fn_25210076в
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
H__inference_conv3d_486_layer_call_and_return_conditional_losses_25210087в
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
8__inference_average_pooling3d_196_layer_call_fn_25210092
8__inference_average_pooling3d_196_layer_call_fn_25210097в
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
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25210106
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25210115в
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
-__inference_conv3d_487_layer_call_fn_25210124в
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
H__inference_conv3d_487_layer_call_and_return_conditional_losses_25210135в
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
8__inference_average_pooling3d_197_layer_call_fn_25210140
8__inference_average_pooling3d_197_layer_call_fn_25210145в
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
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25210154
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25210163в
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
-__inference_conv3d_488_layer_call_fn_25210172в
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
H__inference_conv3d_488_layer_call_and_return_conditional_losses_25210183в
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
8__inference_average_pooling3d_198_layer_call_fn_25210188
8__inference_average_pooling3d_198_layer_call_fn_25210193в
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
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25210202
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25210211в
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
-__inference_conv3d_489_layer_call_fn_25210220в
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
H__inference_conv3d_489_layer_call_and_return_conditional_losses_25210231в
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
8__inference_average_pooling3d_199_layer_call_fn_25210236
8__inference_average_pooling3d_199_layer_call_fn_25210241в
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
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25210250
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25210259в
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
.__inference_reshape_188_layer_call_fn_25210264в
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
I__inference_reshape_188_layer_call_and_return_conditional_losses_25210276в
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
+__inference_dense_94_layer_call_fn_25210285в
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
F__inference_dense_94_layer_call_and_return_conditional_losses_25210296в
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
.__inference_reshape_189_layer_call_fn_25210301в
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
I__inference_reshape_189_layer_call_and_return_conditional_losses_25210316в
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
-__inference_conv3d_490_layer_call_fn_25210325в
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
H__inference_conv3d_490_layer_call_and_return_conditional_losses_25210336в
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
-__inference_conv3d_491_layer_call_fn_25210345в
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
H__inference_conv3d_491_layer_call_and_return_conditional_losses_25210356в
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
-__inference_conv3d_492_layer_call_fn_25210365в
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
H__inference_conv3d_492_layer_call_and_return_conditional_losses_25210376в
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
-__inference_conv3d_493_layer_call_fn_25210385в
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
H__inference_conv3d_493_layer_call_and_return_conditional_losses_25210396в
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
-__inference_conv3d_494_layer_call_fn_25210405в
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
H__inference_conv3d_494_layer_call_and_return_conditional_losses_25210415в
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
&__inference_signature_wrapper_25209636input"Ф
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
#__inference__wrapped_model_25208540Э23<=FGPQ^_lmvwАБКЛРС:в7
0в-
+К(
input         @@
к "Cк@
>

conv3d_4940К-

conv3d_494         @@Р
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25210106╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_196_layer_call_and_return_conditional_losses_25210115p;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0            
Ъ ш
8__inference_average_pooling3d_196_layer_call_fn_25210092л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_196_layer_call_fn_25210097c;в8
1в.
,К)
inputs          @@
к "$К!            Р
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25210154╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_197_layer_call_and_return_conditional_losses_25210163p;в8
1в.
,К)
inputs           
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_197_layer_call_fn_25210140л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_197_layer_call_fn_25210145c;в8
1в.
,К)
inputs           
к "$К!         Р
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25210202╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_198_layer_call_and_return_conditional_losses_25210211p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_198_layer_call_fn_25210188л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_198_layer_call_fn_25210193c;в8
1в.
,К)
inputs         
к "$К!         Р
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25210250╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_199_layer_call_and_return_conditional_losses_25210259p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_199_layer_call_fn_25210236л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_199_layer_call_fn_25210241c;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_486_layer_call_and_return_conditional_losses_25210087t23;в8
1в.
,К)
inputs         @@
к "1в.
'К$
0          @@
Ъ Ш
-__inference_conv3d_486_layer_call_fn_25210076g23;в8
1в.
,К)
inputs         @@
к "$К!          @@└
H__inference_conv3d_487_layer_call_and_return_conditional_losses_25210135t<=;в8
1в.
,К)
inputs            
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_487_layer_call_fn_25210124g<=;в8
1в.
,К)
inputs            
к "$К!           └
H__inference_conv3d_488_layer_call_and_return_conditional_losses_25210183tFG;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_488_layer_call_fn_25210172gFG;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_489_layer_call_and_return_conditional_losses_25210231tPQ;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_489_layer_call_fn_25210220gPQ;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_490_layer_call_and_return_conditional_losses_25210336tlm;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_490_layer_call_fn_25210325glm;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_491_layer_call_and_return_conditional_losses_25210356tvw;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_491_layer_call_fn_25210345gvw;в8
1в.
,К)
inputs         
к "$К!         ┬
H__inference_conv3d_492_layer_call_and_return_conditional_losses_25210376vАБ;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ъ
-__inference_conv3d_492_layer_call_fn_25210365iАБ;в8
1в.
,К)
inputs           
к "$К!           ┬
H__inference_conv3d_493_layer_call_and_return_conditional_losses_25210396vКЛ;в8
1в.
,К)
inputs         0@@
к "1в.
'К$
0          @@
Ъ Ъ
-__inference_conv3d_493_layer_call_fn_25210385iКЛ;в8
1в.
,К)
inputs         0@@
к "$К!          @@┬
H__inference_conv3d_494_layer_call_and_return_conditional_losses_25210415vРС;в8
1в.
,К)
inputs          @@
к "1в.
'К$
0         @@
Ъ Ъ
-__inference_conv3d_494_layer_call_fn_25210405iРС;в8
1в.
,К)
inputs          @@
к "$К!         @@ж
F__inference_dense_94_layer_call_and_return_conditional_losses_25210296\^_/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_94_layer_call_fn_25210285O^_/в,
%в"
 К
inputs         @
к "К         @▐
F__inference_model_94_layer_call_and_return_conditional_losses_25209486У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_94_layer_call_and_return_conditional_losses_25209589У23<=FGPQ^_lmvwАБКЛРСBв?
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
F__inference_model_94_layer_call_and_return_conditional_losses_25209888Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
F__inference_model_94_layer_call_and_return_conditional_losses_25210050Ф23<=FGPQ^_lmvwАБКЛРСCв@
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
+__inference_model_94_layer_call_fn_25209007Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p 

 
к "$К!         @@╢
+__inference_model_94_layer_call_fn_25209383Ж23<=FGPQ^_lmvwАБКЛРСBв?
8в5
+К(
input         @@
p

 
к "$К!         @@╖
+__inference_model_94_layer_call_fn_25209681З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p 

 
к "$К!         @@╖
+__inference_model_94_layer_call_fn_25209726З23<=FGPQ^_lmvwАБКЛРСCв@
9в6
,К)
inputs         @@
p

 
к "$К!         @@╔
Q__inference_range_conversion_94_layer_call_and_return_conditional_losses_25210067t?в<
5в2
0К-

parameters         @@
к "1в.
'К$
0         @@
Ъ б
6__inference_range_conversion_94_layer_call_fn_25210055g?в<
5в2
0К-

parameters         @@
к "$К!         @@▒
I__inference_reshape_188_layer_call_and_return_conditional_losses_25210276d;в8
1в.
,К)
inputs         
к "%в"
К
0         @
Ъ Й
.__inference_reshape_188_layer_call_fn_25210264W;в8
1в.
,К)
inputs         
к "К         @▒
I__inference_reshape_189_layer_call_and_return_conditional_losses_25210316d/в,
%в"
 К
inputs         @
к "1в.
'К$
0         
Ъ Й
.__inference_reshape_189_layer_call_fn_25210301W/в,
%в"
 К
inputs         @
к "$К!         ╤
&__inference_signature_wrapper_25209636ж23<=FGPQ^_lmvwАБКЛРСCв@
в 
9к6
4
input+К(
input         @@"Cк@
>

conv3d_4940К-

conv3d_494         @@