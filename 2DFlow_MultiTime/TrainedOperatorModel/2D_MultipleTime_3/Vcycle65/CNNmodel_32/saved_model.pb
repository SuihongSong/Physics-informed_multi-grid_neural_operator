гФ
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
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258нД
К
conv3d_320/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_320/kernel
Г
%conv3d_320/kernel/Read/ReadVariableOpReadVariableOpconv3d_320/kernel**
_output_shapes
:*
dtype0
v
conv3d_320/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_320/bias
o
#conv3d_320/bias/Read/ReadVariableOpReadVariableOpconv3d_320/bias*
_output_shapes
:*
dtype0
К
conv3d_321/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_321/kernel
Г
%conv3d_321/kernel/Read/ReadVariableOpReadVariableOpconv3d_321/kernel**
_output_shapes
:*
dtype0
v
conv3d_321/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_321/bias
o
#conv3d_321/bias/Read/ReadVariableOpReadVariableOpconv3d_321/bias*
_output_shapes
:*
dtype0
К
conv3d_322/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_322/kernel
Г
%conv3d_322/kernel/Read/ReadVariableOpReadVariableOpconv3d_322/kernel**
_output_shapes
:*
dtype0
v
conv3d_322/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_322/bias
o
#conv3d_322/bias/Read/ReadVariableOpReadVariableOpconv3d_322/bias*
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
conv3d_323/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_323/kernel
Г
%conv3d_323/kernel/Read/ReadVariableOpReadVariableOpconv3d_323/kernel**
_output_shapes
:*
dtype0
v
conv3d_323/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_323/bias
o
#conv3d_323/bias/Read/ReadVariableOpReadVariableOpconv3d_323/bias*
_output_shapes
:*
dtype0
К
conv3d_324/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_324/kernel
Г
%conv3d_324/kernel/Read/ReadVariableOpReadVariableOpconv3d_324/kernel**
_output_shapes
:*
dtype0
v
conv3d_324/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_324/bias
o
#conv3d_324/bias/Read/ReadVariableOpReadVariableOpconv3d_324/bias*
_output_shapes
:*
dtype0
К
conv3d_325/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_325/kernel
Г
%conv3d_325/kernel/Read/ReadVariableOpReadVariableOpconv3d_325/kernel**
_output_shapes
:*
dtype0
v
conv3d_325/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_325/bias
o
#conv3d_325/bias/Read/ReadVariableOpReadVariableOpconv3d_325/bias*
_output_shapes
:*
dtype0
К
conv3d_326/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_326/kernel
Г
%conv3d_326/kernel/Read/ReadVariableOpReadVariableOpconv3d_326/kernel**
_output_shapes
:*
dtype0
v
conv3d_326/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_326/bias
o
#conv3d_326/bias/Read/ReadVariableOpReadVariableOpconv3d_326/bias*
_output_shapes
:*
dtype0

NoOpNoOp
Ц;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╤:
value╟:B─: B╜:
╠
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
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer_with_weights-4
layer-18
layer-19
layer-20
layer-21
layer-22
layer_with_weights-5
layer-23
layer-24
layer-25
layer-26
layer-27
layer_with_weights-6
layer-28
layer_with_weights-7
layer-29
regularization_losses
 	variables
!trainable_variables
"	keras_api
#
signatures
 

$	keras_api
R
%	variables
&regularization_losses
'trainable_variables
(	keras_api

)	keras_api

*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
R
1	variables
2regularization_losses
3trainable_variables
4	keras_api
h

5kernel
6bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
R
;	variables
<regularization_losses
=trainable_variables
>	keras_api
h

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
R
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
R
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
h

Mkernel
Nbias
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
R
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api

W	keras_api

X	keras_api

Y	keras_api

Z	keras_api
h

[kernel
\bias
]	variables
^regularization_losses
_trainable_variables
`	keras_api

a	keras_api

b	keras_api

c	keras_api

d	keras_api
h

ekernel
fbias
g	variables
hregularization_losses
itrainable_variables
j	keras_api

k	keras_api

l	keras_api

m	keras_api

n	keras_api
h

okernel
pbias
q	variables
rregularization_losses
strainable_variables
t	keras_api
h

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
 
v
+0
,1
52
63
?4
@5
M6
N7
[8
\9
e10
f11
o12
p13
u14
v15
v
+0
,1
52
63
?4
@5
M6
N7
[8
\9
e10
f11
o12
p13
u14
v15
н
{non_trainable_variables
|metrics
}layer_regularization_losses
~layer_metrics
regularization_losses

layers
 	variables
!trainable_variables
 
 
 
 
 
▓
Аnon_trainable_variables
%	variables
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
&regularization_losses
Дlayers
'trainable_variables
 
 
][
VARIABLE_VALUEconv3d_320/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_320/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
▓
Еnon_trainable_variables
-	variables
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
.regularization_losses
Йlayers
/trainable_variables
 
 
 
▓
Кnon_trainable_variables
1	variables
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
2regularization_losses
Оlayers
3trainable_variables
][
VARIABLE_VALUEconv3d_321/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_321/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61
 

50
61
▓
Пnon_trainable_variables
7	variables
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
8regularization_losses
Уlayers
9trainable_variables
 
 
 
▓
Фnon_trainable_variables
;	variables
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
<regularization_losses
Шlayers
=trainable_variables
][
VARIABLE_VALUEconv3d_322/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_322/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
▓
Щnon_trainable_variables
A	variables
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Bregularization_losses
Эlayers
Ctrainable_variables
 
 
 
▓
Юnon_trainable_variables
E	variables
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
Fregularization_losses
вlayers
Gtrainable_variables
 
 
 
▓
гnon_trainable_variables
I	variables
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Jregularization_losses
зlayers
Ktrainable_variables
[Y
VARIABLE_VALUEdense_60/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_60/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

M0
N1
 

M0
N1
▓
иnon_trainable_variables
O	variables
йmetrics
 кlayer_regularization_losses
лlayer_metrics
Pregularization_losses
мlayers
Qtrainable_variables
 
 
 
▓
нnon_trainable_variables
S	variables
оmetrics
 пlayer_regularization_losses
░layer_metrics
Tregularization_losses
▒layers
Utrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_323/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_323/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1
 

[0
\1
▓
▓non_trainable_variables
]	variables
│metrics
 ┤layer_regularization_losses
╡layer_metrics
^regularization_losses
╢layers
_trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_324/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_324/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1
 

e0
f1
▓
╖non_trainable_variables
g	variables
╕metrics
 ╣layer_regularization_losses
║layer_metrics
hregularization_losses
╗layers
itrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_325/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_325/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1
 

o0
p1
▓
╝non_trainable_variables
q	variables
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
rregularization_losses
└layers
strainable_variables
][
VARIABLE_VALUEconv3d_326/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_326/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 

u0
v1
▓
┴non_trainable_variables
w	variables
┬metrics
 ├layer_regularization_losses
─layer_metrics
xregularization_losses
┼layers
ytrainable_variables
 
 
 
 
ц
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
:           *
dtype0*(
shape:           
Е
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_320/kernelconv3d_320/biasconv3d_321/kernelconv3d_321/biasconv3d_322/kernelconv3d_322/biasdense_60/kerneldense_60/biasconv3d_323/kernelconv3d_323/biasconv3d_324/kernelconv3d_324/biasconv3d_325/kernelconv3d_325/biasconv3d_326/kernelconv3d_326/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В */
f*R(
&__inference_signature_wrapper_17074171
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ф
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_320/kernel/Read/ReadVariableOp#conv3d_320/bias/Read/ReadVariableOp%conv3d_321/kernel/Read/ReadVariableOp#conv3d_321/bias/Read/ReadVariableOp%conv3d_322/kernel/Read/ReadVariableOp#conv3d_322/bias/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOp%conv3d_323/kernel/Read/ReadVariableOp#conv3d_323/bias/Read/ReadVariableOp%conv3d_324/kernel/Read/ReadVariableOp#conv3d_324/bias/Read/ReadVariableOp%conv3d_325/kernel/Read/ReadVariableOp#conv3d_325/bias/Read/ReadVariableOp%conv3d_326/kernel/Read/ReadVariableOp#conv3d_326/bias/Read/ReadVariableOpConst*
Tin
2*
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
!__inference__traced_save_17074883
╧
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_320/kernelconv3d_320/biasconv3d_321/kernelconv3d_321/biasconv3d_322/kernelconv3d_322/biasdense_60/kerneldense_60/biasconv3d_323/kernelconv3d_323/biasconv3d_324/kernelconv3d_324/biasconv3d_325/kernelconv3d_325/biasconv3d_326/kernelconv3d_326/bias*
Tin
2*
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
$__inference__traced_restore_17074941ЁЦ
М	
o
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17073479

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
H__inference_conv3d_320_layer_call_and_return_conditional_losses_17074552

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_322_layer_call_fn_17074637

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
H__inference_conv3d_322_layer_call_and_return_conditional_losses_170734652
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
оч
Э
#__inference__wrapped_model_17073279	
inputP
2model_60_conv3d_320_conv3d_readvariableop_resource:A
3model_60_conv3d_320_biasadd_readvariableop_resource:P
2model_60_conv3d_321_conv3d_readvariableop_resource:A
3model_60_conv3d_321_biasadd_readvariableop_resource:P
2model_60_conv3d_322_conv3d_readvariableop_resource:A
3model_60_conv3d_322_biasadd_readvariableop_resource:B
0model_60_dense_60_matmul_readvariableop_resource:@@?
1model_60_dense_60_biasadd_readvariableop_resource:@P
2model_60_conv3d_323_conv3d_readvariableop_resource:A
3model_60_conv3d_323_biasadd_readvariableop_resource:P
2model_60_conv3d_324_conv3d_readvariableop_resource:A
3model_60_conv3d_324_biasadd_readvariableop_resource:P
2model_60_conv3d_325_conv3d_readvariableop_resource:A
3model_60_conv3d_325_biasadd_readvariableop_resource:P
2model_60_conv3d_326_conv3d_readvariableop_resource:A
3model_60_conv3d_326_biasadd_readvariableop_resource:
identityИв*model_60/conv3d_320/BiasAdd/ReadVariableOpв)model_60/conv3d_320/Conv3D/ReadVariableOpв*model_60/conv3d_321/BiasAdd/ReadVariableOpв)model_60/conv3d_321/Conv3D/ReadVariableOpв*model_60/conv3d_322/BiasAdd/ReadVariableOpв)model_60/conv3d_322/Conv3D/ReadVariableOpв*model_60/conv3d_323/BiasAdd/ReadVariableOpв)model_60/conv3d_323/Conv3D/ReadVariableOpв*model_60/conv3d_324/BiasAdd/ReadVariableOpв)model_60/conv3d_324/Conv3D/ReadVariableOpв*model_60/conv3d_325/BiasAdd/ReadVariableOpв)model_60/conv3d_325/Conv3D/ReadVariableOpв*model_60/conv3d_326/BiasAdd/ReadVariableOpв)model_60/conv3d_326/Conv3D/ReadVariableOpв(model_60/dense_60/BiasAdd/ReadVariableOpв'model_60/dense_60/MatMul/ReadVariableOp╟
9model_60/tf.__operators__.getitem_456/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_60/tf.__operators__.getitem_456/strided_slice/stack╦
;model_60/tf.__operators__.getitem_456/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_60/tf.__operators__.getitem_456/strided_slice/stack_1╦
;model_60/tf.__operators__.getitem_456/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_60/tf.__operators__.getitem_456/strided_slice/stack_2╛
3model_60/tf.__operators__.getitem_456/strided_sliceStridedSliceinputBmodel_60/tf.__operators__.getitem_456/strided_slice/stack:output:0Dmodel_60/tf.__operators__.getitem_456/strided_slice/stack_1:output:0Dmodel_60/tf.__operators__.getitem_456/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask25
3model_60/tf.__operators__.getitem_456/strided_sliceН
"model_60/range_conversion_60/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_60/range_conversion_60/sub/yЇ
 model_60/range_conversion_60/subSub<model_60/tf.__operators__.getitem_456/strided_slice:output:0+model_60/range_conversion_60/sub/y:output:0*
T0*3
_output_shapes!
:           2"
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
:           2&
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
:           2"
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
:           2"
 model_60/range_conversion_60/add╟
9model_60/tf.__operators__.getitem_457/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_60/tf.__operators__.getitem_457/strided_slice/stack╦
;model_60/tf.__operators__.getitem_457/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_60/tf.__operators__.getitem_457/strided_slice/stack_1╦
;model_60/tf.__operators__.getitem_457/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_60/tf.__operators__.getitem_457/strided_slice/stack_2╛
3model_60/tf.__operators__.getitem_457/strided_sliceStridedSliceinputBmodel_60/tf.__operators__.getitem_457/strided_slice/stack:output:0Dmodel_60/tf.__operators__.getitem_457/strided_slice/stack_1:output:0Dmodel_60/tf.__operators__.getitem_457/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask25
3model_60/tf.__operators__.getitem_457/strided_sliceК
"model_60/tf.concat_620/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_620/concat/axisв
model_60/tf.concat_620/concatConcatV2$model_60/range_conversion_60/add:z:0<model_60/tf.__operators__.getitem_457/strided_slice:output:0+model_60/tf.concat_620/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_60/tf.concat_620/concat╒
)model_60/conv3d_320/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_320_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_320/Conv3D/ReadVariableOpЬ
model_60/conv3d_320/Conv3DConv3D&model_60/tf.concat_620/concat:output:01model_60/conv3d_320/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_320/Conv3D╚
*model_60/conv3d_320/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_320_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_320/BiasAdd/ReadVariableOpє
model_60/conv3d_320/BiasAddBiasAdd#model_60/conv3d_320/Conv3D:output:02model_60/conv3d_320/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_60/conv3d_320/BiasAddм
model_60/conv3d_320/SoftplusSoftplus$model_60/conv3d_320/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_60/conv3d_320/Softplus╗
-model_60/average_pooling3d_130/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_60/average_pooling3d_130/transpose/permГ
(model_60/average_pooling3d_130/transpose	Transpose*model_60/conv3d_320/Softplus:activations:06model_60/average_pooling3d_130/transpose/perm:output:0*
T0*3
_output_shapes!
:           2*
(model_60/average_pooling3d_130/transposeЛ
(model_60/average_pooling3d_130/AvgPool3D	AvgPool3D,model_60/average_pooling3d_130/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_60/average_pooling3d_130/AvgPool3D┐
/model_60/average_pooling3d_130/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_60/average_pooling3d_130/transpose_1/permР
*model_60/average_pooling3d_130/transpose_1	Transpose1model_60/average_pooling3d_130/AvgPool3D:output:08model_60/average_pooling3d_130/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_60/average_pooling3d_130/transpose_1╒
)model_60/conv3d_321/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_321_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_321/Conv3D/ReadVariableOpд
model_60/conv3d_321/Conv3DConv3D.model_60/average_pooling3d_130/transpose_1:y:01model_60/conv3d_321/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_321/Conv3D╚
*model_60/conv3d_321/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_321_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_321/BiasAdd/ReadVariableOpє
model_60/conv3d_321/BiasAddBiasAdd#model_60/conv3d_321/Conv3D:output:02model_60/conv3d_321/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_321/BiasAddм
model_60/conv3d_321/SoftplusSoftplus$model_60/conv3d_321/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_321/Softplus╗
-model_60/average_pooling3d_131/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_60/average_pooling3d_131/transpose/permГ
(model_60/average_pooling3d_131/transpose	Transpose*model_60/conv3d_321/Softplus:activations:06model_60/average_pooling3d_131/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_60/average_pooling3d_131/transposeЛ
(model_60/average_pooling3d_131/AvgPool3D	AvgPool3D,model_60/average_pooling3d_131/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_60/average_pooling3d_131/AvgPool3D┐
/model_60/average_pooling3d_131/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_60/average_pooling3d_131/transpose_1/permР
*model_60/average_pooling3d_131/transpose_1	Transpose1model_60/average_pooling3d_131/AvgPool3D:output:08model_60/average_pooling3d_131/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_60/average_pooling3d_131/transpose_1╒
)model_60/conv3d_322/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_322_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_322/Conv3D/ReadVariableOpд
model_60/conv3d_322/Conv3DConv3D.model_60/average_pooling3d_131/transpose_1:y:01model_60/conv3d_322/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_322/Conv3D╚
*model_60/conv3d_322/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_322_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_322/BiasAdd/ReadVariableOpє
model_60/conv3d_322/BiasAddBiasAdd#model_60/conv3d_322/Conv3D:output:02model_60/conv3d_322/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_322/BiasAddм
model_60/conv3d_322/SoftplusSoftplus$model_60/conv3d_322/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_322/Softplus╗
-model_60/average_pooling3d_132/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_60/average_pooling3d_132/transpose/permГ
(model_60/average_pooling3d_132/transpose	Transpose*model_60/conv3d_322/Softplus:activations:06model_60/average_pooling3d_132/transpose/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_60/average_pooling3d_132/transposeЛ
(model_60/average_pooling3d_132/AvgPool3D	AvgPool3D,model_60/average_pooling3d_132/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2*
(model_60/average_pooling3d_132/AvgPool3D┐
/model_60/average_pooling3d_132/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                21
/model_60/average_pooling3d_132/transpose_1/permР
*model_60/average_pooling3d_132/transpose_1	Transpose1model_60/average_pooling3d_132/AvgPool3D:output:08model_60/average_pooling3d_132/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2,
*model_60/average_pooling3d_132/transpose_1Ц
model_60/reshape_120/ShapeShape.model_60/average_pooling3d_132/transpose_1:y:0*
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
model_60/reshape_120/ReshapeReshape.model_60/average_pooling3d_132/transpose_1:y:0+model_60/reshape_120/Reshape/shape:output:0*
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
%model_60/tf.reshape_784/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_60/tf.reshape_784/Reshape/shapeю
model_60/tf.reshape_784/ReshapeReshape%model_60/reshape_121/Reshape:output:0.model_60/tf.reshape_784/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_60/tf.reshape_784/Reshape│
#model_60/tf.tile_392/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_60/tf.tile_392/Tile/multiplesр
model_60/tf.tile_392/TileTile(model_60/tf.reshape_784/Reshape:output:0,model_60/tf.tile_392/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_60/tf.tile_392/Tileл
%model_60/tf.reshape_785/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_60/tf.reshape_785/Reshape/shape▀
model_60/tf.reshape_785/ReshapeReshape"model_60/tf.tile_392/Tile:output:0.model_60/tf.reshape_785/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_60/tf.reshape_785/ReshapeК
"model_60/tf.concat_621/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_621/concat/axisФ
model_60/tf.concat_621/concatConcatV2(model_60/tf.reshape_785/Reshape:output:0*model_60/conv3d_322/Softplus:activations:0+model_60/tf.concat_621/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_60/tf.concat_621/concat╒
)model_60/conv3d_323/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_323_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_323/Conv3D/ReadVariableOpЬ
model_60/conv3d_323/Conv3DConv3D&model_60/tf.concat_621/concat:output:01model_60/conv3d_323/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_323/Conv3D╚
*model_60/conv3d_323/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_323_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_323/BiasAdd/ReadVariableOpє
model_60/conv3d_323/BiasAddBiasAdd#model_60/conv3d_323/Conv3D:output:02model_60/conv3d_323/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_323/BiasAddм
model_60/conv3d_323/SoftplusSoftplus$model_60/conv3d_323/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_323/Softplus╖
%model_60/tf.reshape_786/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_60/tf.reshape_786/Reshape/shapeє
model_60/tf.reshape_786/ReshapeReshape*model_60/conv3d_323/Softplus:activations:0.model_60/tf.reshape_786/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_60/tf.reshape_786/Reshape│
#model_60/tf.tile_393/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_60/tf.tile_393/Tile/multiplesр
model_60/tf.tile_393/TileTile(model_60/tf.reshape_786/Reshape:output:0,model_60/tf.tile_393/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_60/tf.tile_393/Tileл
%model_60/tf.reshape_787/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2'
%model_60/tf.reshape_787/Reshape/shape▀
model_60/tf.reshape_787/ReshapeReshape"model_60/tf.tile_393/Tile:output:0.model_60/tf.reshape_787/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2!
model_60/tf.reshape_787/ReshapeК
"model_60/tf.concat_622/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_622/concat/axisФ
model_60/tf.concat_622/concatConcatV2(model_60/tf.reshape_787/Reshape:output:0*model_60/conv3d_321/Softplus:activations:0+model_60/tf.concat_622/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_60/tf.concat_622/concat╒
)model_60/conv3d_324/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_324_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_324/Conv3D/ReadVariableOpЬ
model_60/conv3d_324/Conv3DConv3D&model_60/tf.concat_622/concat:output:01model_60/conv3d_324/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_324/Conv3D╚
*model_60/conv3d_324/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_324_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_324/BiasAdd/ReadVariableOpє
model_60/conv3d_324/BiasAddBiasAdd#model_60/conv3d_324/Conv3D:output:02model_60/conv3d_324/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_60/conv3d_324/BiasAddм
model_60/conv3d_324/SoftplusSoftplus$model_60/conv3d_324/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_60/conv3d_324/Softplus╖
%model_60/tf.reshape_788/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2'
%model_60/tf.reshape_788/Reshape/shapeє
model_60/tf.reshape_788/ReshapeReshape*model_60/conv3d_324/Softplus:activations:0.model_60/tf.reshape_788/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2!
model_60/tf.reshape_788/Reshape│
#model_60/tf.tile_394/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_60/tf.tile_394/Tile/multiplesр
model_60/tf.tile_394/TileTile(model_60/tf.reshape_788/Reshape:output:0,model_60/tf.tile_394/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_60/tf.tile_394/Tileл
%model_60/tf.reshape_789/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2'
%model_60/tf.reshape_789/Reshape/shape▀
model_60/tf.reshape_789/ReshapeReshape"model_60/tf.tile_394/Tile:output:0.model_60/tf.reshape_789/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2!
model_60/tf.reshape_789/ReshapeК
"model_60/tf.concat_623/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_60/tf.concat_623/concat/axisФ
model_60/tf.concat_623/concatConcatV2(model_60/tf.reshape_789/Reshape:output:0*model_60/conv3d_320/Softplus:activations:0+model_60/tf.concat_623/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
model_60/tf.concat_623/concat╒
)model_60/conv3d_325/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_325_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_325/Conv3D/ReadVariableOpЬ
model_60/conv3d_325/Conv3DConv3D&model_60/tf.concat_623/concat:output:01model_60/conv3d_325/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_325/Conv3D╚
*model_60/conv3d_325/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_325_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_325/BiasAdd/ReadVariableOpє
model_60/conv3d_325/BiasAddBiasAdd#model_60/conv3d_325/Conv3D:output:02model_60/conv3d_325/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_60/conv3d_325/BiasAddм
model_60/conv3d_325/SoftplusSoftplus$model_60/conv3d_325/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_60/conv3d_325/Softplus╒
)model_60/conv3d_326/Conv3D/ReadVariableOpReadVariableOp2model_60_conv3d_326_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_60/conv3d_326/Conv3D/ReadVariableOpа
model_60/conv3d_326/Conv3DConv3D*model_60/conv3d_325/Softplus:activations:01model_60/conv3d_326/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_60/conv3d_326/Conv3D╚
*model_60/conv3d_326/BiasAdd/ReadVariableOpReadVariableOp3model_60_conv3d_326_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_60/conv3d_326/BiasAdd/ReadVariableOpє
model_60/conv3d_326/BiasAddBiasAdd#model_60/conv3d_326/Conv3D:output:02model_60/conv3d_326/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_60/conv3d_326/BiasAddЛ
IdentityIdentity$model_60/conv3d_326/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

IdentityТ
NoOpNoOp+^model_60/conv3d_320/BiasAdd/ReadVariableOp*^model_60/conv3d_320/Conv3D/ReadVariableOp+^model_60/conv3d_321/BiasAdd/ReadVariableOp*^model_60/conv3d_321/Conv3D/ReadVariableOp+^model_60/conv3d_322/BiasAdd/ReadVariableOp*^model_60/conv3d_322/Conv3D/ReadVariableOp+^model_60/conv3d_323/BiasAdd/ReadVariableOp*^model_60/conv3d_323/Conv3D/ReadVariableOp+^model_60/conv3d_324/BiasAdd/ReadVariableOp*^model_60/conv3d_324/Conv3D/ReadVariableOp+^model_60/conv3d_325/BiasAdd/ReadVariableOp*^model_60/conv3d_325/Conv3D/ReadVariableOp+^model_60/conv3d_326/BiasAdd/ReadVariableOp*^model_60/conv3d_326/Conv3D/ReadVariableOp)^model_60/dense_60/BiasAdd/ReadVariableOp(^model_60/dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2X
*model_60/conv3d_320/BiasAdd/ReadVariableOp*model_60/conv3d_320/BiasAdd/ReadVariableOp2V
)model_60/conv3d_320/Conv3D/ReadVariableOp)model_60/conv3d_320/Conv3D/ReadVariableOp2X
*model_60/conv3d_321/BiasAdd/ReadVariableOp*model_60/conv3d_321/BiasAdd/ReadVariableOp2V
)model_60/conv3d_321/Conv3D/ReadVariableOp)model_60/conv3d_321/Conv3D/ReadVariableOp2X
*model_60/conv3d_322/BiasAdd/ReadVariableOp*model_60/conv3d_322/BiasAdd/ReadVariableOp2V
)model_60/conv3d_322/Conv3D/ReadVariableOp)model_60/conv3d_322/Conv3D/ReadVariableOp2X
*model_60/conv3d_323/BiasAdd/ReadVariableOp*model_60/conv3d_323/BiasAdd/ReadVariableOp2V
)model_60/conv3d_323/Conv3D/ReadVariableOp)model_60/conv3d_323/Conv3D/ReadVariableOp2X
*model_60/conv3d_324/BiasAdd/ReadVariableOp*model_60/conv3d_324/BiasAdd/ReadVariableOp2V
)model_60/conv3d_324/Conv3D/ReadVariableOp)model_60/conv3d_324/Conv3D/ReadVariableOp2X
*model_60/conv3d_325/BiasAdd/ReadVariableOp*model_60/conv3d_325/BiasAdd/ReadVariableOp2V
)model_60/conv3d_325/Conv3D/ReadVariableOp)model_60/conv3d_325/Conv3D/ReadVariableOp2X
*model_60/conv3d_326/BiasAdd/ReadVariableOp*model_60/conv3d_326/BiasAdd/ReadVariableOp2V
)model_60/conv3d_326/Conv3D/ReadVariableOp)model_60/conv3d_326/Conv3D/ReadVariableOp2T
(model_60/dense_60/BiasAdd/ReadVariableOp(model_60/dense_60/BiasAdd/ReadVariableOp2R
'model_60/dense_60/MatMul/ReadVariableOp'model_60/dense_60/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:           

_user_specified_nameinput
Х
T
8__inference_average_pooling3d_131_layer_call_fn_17074610

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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_170734522
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
щ
J
.__inference_reshape_121_layer_call_fn_17074718

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
I__inference_reshape_121_layer_call_and_return_conditional_losses_170735272
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
√x
к
F__inference_model_60_layer_call_and_return_conditional_losses_17074132	
input1
conv3d_320_17074062:!
conv3d_320_17074064:1
conv3d_321_17074068:!
conv3d_321_17074070:1
conv3d_322_17074074:!
conv3d_322_17074076:#
dense_60_17074081:@@
dense_60_17074083:@1
conv3d_323_17074095:!
conv3d_323_17074097:1
conv3d_324_17074108:!
conv3d_324_17074110:1
conv3d_325_17074121:!
conv3d_325_17074123:1
conv3d_326_17074126:!
conv3d_326_17074128:
identityИв"conv3d_320/StatefulPartitionedCallв"conv3d_321/StatefulPartitionedCallв"conv3d_322/StatefulPartitionedCallв"conv3d_323/StatefulPartitionedCallв"conv3d_324/StatefulPartitionedCallв"conv3d_325/StatefulPartitionedCallв"conv3d_326/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_456/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_456/strided_slice/stack╣
2tf.__operators__.getitem_456/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_456/strided_slice/stack_1╣
2tf.__operators__.getitem_456/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_456/strided_slice/stack_2С
*tf.__operators__.getitem_456/strided_sliceStridedSliceinput9tf.__operators__.getitem_456/strided_slice/stack:output:0;tf.__operators__.getitem_456/strided_slice/stack_1:output:0;tf.__operators__.getitem_456/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_456/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_456/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_170733922%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_457/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_457/strided_slice/stack╣
2tf.__operators__.getitem_457/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_457/strided_slice/stack_1╣
2tf.__operators__.getitem_457/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_457/strided_slice/stack_2С
*tf.__operators__.getitem_457/strided_sliceStridedSliceinput9tf.__operators__.getitem_457/strided_slice/stack:output:0;tf.__operators__.getitem_457/strided_slice/stack_1:output:0;tf.__operators__.getitem_457/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_457/strided_slicex
tf.concat_620/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_620/concat/axisЖ
tf.concat_620/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_457/strided_slice:output:0"tf.concat_620/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_620/concat╥
"conv3d_320/StatefulPartitionedCallStatefulPartitionedCalltf.concat_620/concat:output:0conv3d_320_17074062conv3d_320_17074064*
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
H__inference_conv3d_320_layer_call_and_return_conditional_losses_170734112$
"conv3d_320/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_320/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_170734252'
%average_pooling3d_130/PartitionedCallу
"conv3d_321/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_321_17074068conv3d_321_17074070*
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
H__inference_conv3d_321_layer_call_and_return_conditional_losses_170734382$
"conv3d_321/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_321/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_170734522'
%average_pooling3d_131/PartitionedCallу
"conv3d_322/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_131/PartitionedCall:output:0conv3d_322_17074074conv3d_322_17074076*
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
H__inference_conv3d_322_layer_call_and_return_conditional_losses_170734652$
"conv3d_322/StatefulPartitionedCall╣
%average_pooling3d_132/PartitionedCallPartitionedCall+conv3d_322/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_170734792'
%average_pooling3d_132/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_132/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_170734932
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_17074081dense_60_17074083*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_170735062"
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_170735272
reshape_121/PartitionedCallе
tf.reshape_784/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_784/Reshape/shape╥
tf.reshape_784/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_784/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_784/Reshapeб
tf.tile_392/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_392/Tile/multiples╝
tf.tile_392/TileTiletf.reshape_784/Reshape:output:0#tf.tile_392/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_392/TileЩ
tf.reshape_785/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_785/Reshape/shape╗
tf.reshape_785/ReshapeReshapetf.tile_392/Tile:output:0%tf.reshape_785/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_785/Reshapex
tf.concat_621/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_621/concat/axisё
tf.concat_621/concatConcatV2tf.reshape_785/Reshape:output:0+conv3d_322/StatefulPartitionedCall:output:0"tf.concat_621/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_621/concat╥
"conv3d_323/StatefulPartitionedCallStatefulPartitionedCalltf.concat_621/concat:output:0conv3d_323_17074095conv3d_323_17074097*
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
H__inference_conv3d_323_layer_call_and_return_conditional_losses_170735482$
"conv3d_323/StatefulPartitionedCallе
tf.reshape_786/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_786/Reshape/shape┘
tf.reshape_786/ReshapeReshape+conv3d_323/StatefulPartitionedCall:output:0%tf.reshape_786/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_786/Reshapeб
tf.tile_393/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_393/Tile/multiples╝
tf.tile_393/TileTiletf.reshape_786/Reshape:output:0#tf.tile_393/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_393/TileЩ
tf.reshape_787/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_787/Reshape/shape╗
tf.reshape_787/ReshapeReshapetf.tile_393/Tile:output:0%tf.reshape_787/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_787/Reshapex
tf.concat_622/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_622/concat/axisё
tf.concat_622/concatConcatV2tf.reshape_787/Reshape:output:0+conv3d_321/StatefulPartitionedCall:output:0"tf.concat_622/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_622/concat╥
"conv3d_324/StatefulPartitionedCallStatefulPartitionedCalltf.concat_622/concat:output:0conv3d_324_17074108conv3d_324_17074110*
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
H__inference_conv3d_324_layer_call_and_return_conditional_losses_170735732$
"conv3d_324/StatefulPartitionedCallе
tf.reshape_788/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_788/Reshape/shape┘
tf.reshape_788/ReshapeReshape+conv3d_324/StatefulPartitionedCall:output:0%tf.reshape_788/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_788/Reshapeб
tf.tile_394/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_394/Tile/multiples╝
tf.tile_394/TileTiletf.reshape_788/Reshape:output:0#tf.tile_394/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_394/TileЩ
tf.reshape_789/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_789/Reshape/shape╗
tf.reshape_789/ReshapeReshapetf.tile_394/Tile:output:0%tf.reshape_789/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_789/Reshapex
tf.concat_623/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_623/concat/axisё
tf.concat_623/concatConcatV2tf.reshape_789/Reshape:output:0+conv3d_320/StatefulPartitionedCall:output:0"tf.concat_623/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_623/concat╥
"conv3d_325/StatefulPartitionedCallStatefulPartitionedCalltf.concat_623/concat:output:0conv3d_325_17074121conv3d_325_17074123*
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
H__inference_conv3d_325_layer_call_and_return_conditional_losses_170735982$
"conv3d_325/StatefulPartitionedCallр
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCall+conv3d_325/StatefulPartitionedCall:output:0conv3d_326_17074126conv3d_326_17074128*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_326_layer_call_and_return_conditional_losses_170736142$
"conv3d_326/StatefulPartitionedCallТ
IdentityIdentity+conv3d_326/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

IdentityЇ
NoOpNoOp#^conv3d_320/StatefulPartitionedCall#^conv3d_321/StatefulPartitionedCall#^conv3d_322/StatefulPartitionedCall#^conv3d_323/StatefulPartitionedCall#^conv3d_324/StatefulPartitionedCall#^conv3d_325/StatefulPartitionedCall#^conv3d_326/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_320/StatefulPartitionedCall"conv3d_320/StatefulPartitionedCall2H
"conv3d_321/StatefulPartitionedCall"conv3d_321/StatefulPartitionedCall2H
"conv3d_322/StatefulPartitionedCall"conv3d_322/StatefulPartitionedCall2H
"conv3d_323/StatefulPartitionedCall"conv3d_323/StatefulPartitionedCall2H
"conv3d_324/StatefulPartitionedCall"conv3d_324/StatefulPartitionedCall2H
"conv3d_325/StatefulPartitionedCall"conv3d_325/StatefulPartitionedCall2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
╬
Е
H__inference_conv3d_322_layer_call_and_return_conditional_losses_17073465

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
╓
Е
H__inference_conv3d_326_layer_call_and_return_conditional_losses_17073614

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
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
:           *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
ж
T
8__inference_average_pooling3d_130_layer_call_fn_17074557

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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_170732922
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17073292

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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17074619

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
-__inference_conv3d_320_layer_call_fn_17074541

inputs%
unknown:
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
H__inference_conv3d_320_layer_call_and_return_conditional_losses_170734112
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
#:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_321_layer_call_and_return_conditional_losses_17073438

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
█
ы
+__inference_model_60_layer_call_fn_17074208

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_60_layer_call_and_return_conditional_losses_170736212
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╪
ъ
+__inference_model_60_layer_call_fn_17073964	
input%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_60_layer_call_and_return_conditional_losses_170738922
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
╬
Е
H__inference_conv3d_325_layer_call_and_return_conditional_losses_17073598

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
 x
л
F__inference_model_60_layer_call_and_return_conditional_losses_17073892

inputs1
conv3d_320_17073822:!
conv3d_320_17073824:1
conv3d_321_17073828:!
conv3d_321_17073830:1
conv3d_322_17073834:!
conv3d_322_17073836:#
dense_60_17073841:@@
dense_60_17073843:@1
conv3d_323_17073855:!
conv3d_323_17073857:1
conv3d_324_17073868:!
conv3d_324_17073870:1
conv3d_325_17073881:!
conv3d_325_17073883:1
conv3d_326_17073886:!
conv3d_326_17073888:
identityИв"conv3d_320/StatefulPartitionedCallв"conv3d_321/StatefulPartitionedCallв"conv3d_322/StatefulPartitionedCallв"conv3d_323/StatefulPartitionedCallв"conv3d_324/StatefulPartitionedCallв"conv3d_325/StatefulPartitionedCallв"conv3d_326/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_456/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_456/strided_slice/stack╣
2tf.__operators__.getitem_456/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_456/strided_slice/stack_1╣
2tf.__operators__.getitem_456/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_456/strided_slice/stack_2Т
*tf.__operators__.getitem_456/strided_sliceStridedSliceinputs9tf.__operators__.getitem_456/strided_slice/stack:output:0;tf.__operators__.getitem_456/strided_slice/stack_1:output:0;tf.__operators__.getitem_456/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_456/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_456/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_170733922%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_457/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_457/strided_slice/stack╣
2tf.__operators__.getitem_457/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_457/strided_slice/stack_1╣
2tf.__operators__.getitem_457/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_457/strided_slice/stack_2Т
*tf.__operators__.getitem_457/strided_sliceStridedSliceinputs9tf.__operators__.getitem_457/strided_slice/stack:output:0;tf.__operators__.getitem_457/strided_slice/stack_1:output:0;tf.__operators__.getitem_457/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_457/strided_slicex
tf.concat_620/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_620/concat/axisЖ
tf.concat_620/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_457/strided_slice:output:0"tf.concat_620/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_620/concat╥
"conv3d_320/StatefulPartitionedCallStatefulPartitionedCalltf.concat_620/concat:output:0conv3d_320_17073822conv3d_320_17073824*
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
H__inference_conv3d_320_layer_call_and_return_conditional_losses_170734112$
"conv3d_320/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_320/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_170734252'
%average_pooling3d_130/PartitionedCallу
"conv3d_321/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_321_17073828conv3d_321_17073830*
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
H__inference_conv3d_321_layer_call_and_return_conditional_losses_170734382$
"conv3d_321/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_321/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_170734522'
%average_pooling3d_131/PartitionedCallу
"conv3d_322/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_131/PartitionedCall:output:0conv3d_322_17073834conv3d_322_17073836*
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
H__inference_conv3d_322_layer_call_and_return_conditional_losses_170734652$
"conv3d_322/StatefulPartitionedCall╣
%average_pooling3d_132/PartitionedCallPartitionedCall+conv3d_322/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_170734792'
%average_pooling3d_132/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_132/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_170734932
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_17073841dense_60_17073843*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_170735062"
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_170735272
reshape_121/PartitionedCallе
tf.reshape_784/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_784/Reshape/shape╥
tf.reshape_784/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_784/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_784/Reshapeб
tf.tile_392/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_392/Tile/multiples╝
tf.tile_392/TileTiletf.reshape_784/Reshape:output:0#tf.tile_392/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_392/TileЩ
tf.reshape_785/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_785/Reshape/shape╗
tf.reshape_785/ReshapeReshapetf.tile_392/Tile:output:0%tf.reshape_785/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_785/Reshapex
tf.concat_621/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_621/concat/axisё
tf.concat_621/concatConcatV2tf.reshape_785/Reshape:output:0+conv3d_322/StatefulPartitionedCall:output:0"tf.concat_621/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_621/concat╥
"conv3d_323/StatefulPartitionedCallStatefulPartitionedCalltf.concat_621/concat:output:0conv3d_323_17073855conv3d_323_17073857*
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
H__inference_conv3d_323_layer_call_and_return_conditional_losses_170735482$
"conv3d_323/StatefulPartitionedCallе
tf.reshape_786/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_786/Reshape/shape┘
tf.reshape_786/ReshapeReshape+conv3d_323/StatefulPartitionedCall:output:0%tf.reshape_786/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_786/Reshapeб
tf.tile_393/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_393/Tile/multiples╝
tf.tile_393/TileTiletf.reshape_786/Reshape:output:0#tf.tile_393/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_393/TileЩ
tf.reshape_787/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_787/Reshape/shape╗
tf.reshape_787/ReshapeReshapetf.tile_393/Tile:output:0%tf.reshape_787/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_787/Reshapex
tf.concat_622/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_622/concat/axisё
tf.concat_622/concatConcatV2tf.reshape_787/Reshape:output:0+conv3d_321/StatefulPartitionedCall:output:0"tf.concat_622/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_622/concat╥
"conv3d_324/StatefulPartitionedCallStatefulPartitionedCalltf.concat_622/concat:output:0conv3d_324_17073868conv3d_324_17073870*
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
H__inference_conv3d_324_layer_call_and_return_conditional_losses_170735732$
"conv3d_324/StatefulPartitionedCallе
tf.reshape_788/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_788/Reshape/shape┘
tf.reshape_788/ReshapeReshape+conv3d_324/StatefulPartitionedCall:output:0%tf.reshape_788/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_788/Reshapeб
tf.tile_394/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_394/Tile/multiples╝
tf.tile_394/TileTiletf.reshape_788/Reshape:output:0#tf.tile_394/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_394/TileЩ
tf.reshape_789/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_789/Reshape/shape╗
tf.reshape_789/ReshapeReshapetf.tile_394/Tile:output:0%tf.reshape_789/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_789/Reshapex
tf.concat_623/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_623/concat/axisё
tf.concat_623/concatConcatV2tf.reshape_789/Reshape:output:0+conv3d_320/StatefulPartitionedCall:output:0"tf.concat_623/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_623/concat╥
"conv3d_325/StatefulPartitionedCallStatefulPartitionedCalltf.concat_623/concat:output:0conv3d_325_17073881conv3d_325_17073883*
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
H__inference_conv3d_325_layer_call_and_return_conditional_losses_170735982$
"conv3d_325/StatefulPartitionedCallр
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCall+conv3d_325/StatefulPartitionedCall:output:0conv3d_326_17073886conv3d_326_17073888*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_326_layer_call_and_return_conditional_losses_170736142$
"conv3d_326/StatefulPartitionedCallТ
IdentityIdentity+conv3d_326/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

IdentityЇ
NoOpNoOp#^conv3d_320/StatefulPartitionedCall#^conv3d_321/StatefulPartitionedCall#^conv3d_322/StatefulPartitionedCall#^conv3d_323/StatefulPartitionedCall#^conv3d_324/StatefulPartitionedCall#^conv3d_325/StatefulPartitionedCall#^conv3d_326/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_320/StatefulPartitionedCall"conv3d_320/StatefulPartitionedCall2H
"conv3d_321/StatefulPartitionedCall"conv3d_321/StatefulPartitionedCall2H
"conv3d_322/StatefulPartitionedCall"conv3d_322/StatefulPartitionedCall2H
"conv3d_323/StatefulPartitionedCall"conv3d_323/StatefulPartitionedCall2H
"conv3d_324/StatefulPartitionedCall"conv3d_324/StatefulPartitionedCall2H
"conv3d_325/StatefulPartitionedCall"conv3d_325/StatefulPartitionedCall2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_322_layer_call_and_return_conditional_losses_17074648

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
-__inference_conv3d_323_layer_call_fn_17074742

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
H__inference_conv3d_323_layer_call_and_return_conditional_losses_170735482
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
Ф
ў
F__inference_dense_60_layer_call_and_return_conditional_losses_17074713

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
ж
T
8__inference_average_pooling3d_131_layer_call_fn_17074605

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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_170733222
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
H__inference_conv3d_321_layer_call_and_return_conditional_losses_17074600

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
А
Ш
+__inference_dense_60_layer_call_fn_17074702

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
F__inference_dense_60_layer_call_and_return_conditional_losses_170735062
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
╬
Е
H__inference_conv3d_324_layer_call_and_return_conditional_losses_17074773

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
М	
o
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17073452

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
H__inference_conv3d_325_layer_call_and_return_conditional_losses_17074793

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
█
ы
+__inference_model_60_layer_call_fn_17074245

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_60_layer_call_and_return_conditional_losses_170738922
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
┴
ж
-__inference_conv3d_326_layer_call_fn_17074802

inputs%
unknown:
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
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_326_layer_call_and_return_conditional_losses_170736142
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
Ь
e
I__inference_reshape_120_layer_call_and_return_conditional_losses_17073493

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
╪
ъ
+__inference_model_60_layer_call_fn_17073656	
input%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_model_60_layer_call_and_return_conditional_losses_170736212
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
Ь
e
I__inference_reshape_120_layer_call_and_return_conditional_losses_17074693

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
╫	
q
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_17073392

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
:           2
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
:           2	
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
:           2
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
:           2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :_ [
3
_output_shapes!
:           
$
_user_specified_name
parameters
Ш╚
б
F__inference_model_60_layer_call_and_return_conditional_losses_17074380

inputsG
)conv3d_320_conv3d_readvariableop_resource:8
*conv3d_320_biasadd_readvariableop_resource:G
)conv3d_321_conv3d_readvariableop_resource:8
*conv3d_321_biasadd_readvariableop_resource:G
)conv3d_322_conv3d_readvariableop_resource:8
*conv3d_322_biasadd_readvariableop_resource:9
'dense_60_matmul_readvariableop_resource:@@6
(dense_60_biasadd_readvariableop_resource:@G
)conv3d_323_conv3d_readvariableop_resource:8
*conv3d_323_biasadd_readvariableop_resource:G
)conv3d_324_conv3d_readvariableop_resource:8
*conv3d_324_biasadd_readvariableop_resource:G
)conv3d_325_conv3d_readvariableop_resource:8
*conv3d_325_biasadd_readvariableop_resource:G
)conv3d_326_conv3d_readvariableop_resource:8
*conv3d_326_biasadd_readvariableop_resource:
identityИв!conv3d_320/BiasAdd/ReadVariableOpв conv3d_320/Conv3D/ReadVariableOpв!conv3d_321/BiasAdd/ReadVariableOpв conv3d_321/Conv3D/ReadVariableOpв!conv3d_322/BiasAdd/ReadVariableOpв conv3d_322/Conv3D/ReadVariableOpв!conv3d_323/BiasAdd/ReadVariableOpв conv3d_323/Conv3D/ReadVariableOpв!conv3d_324/BiasAdd/ReadVariableOpв conv3d_324/Conv3D/ReadVariableOpв!conv3d_325/BiasAdd/ReadVariableOpв conv3d_325/Conv3D/ReadVariableOpв!conv3d_326/BiasAdd/ReadVariableOpв conv3d_326/Conv3D/ReadVariableOpвdense_60/BiasAdd/ReadVariableOpвdense_60/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_456/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_456/strided_slice/stack╣
2tf.__operators__.getitem_456/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_456/strided_slice/stack_1╣
2tf.__operators__.getitem_456/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_456/strided_slice/stack_2Т
*tf.__operators__.getitem_456/strided_sliceStridedSliceinputs9tf.__operators__.getitem_456/strided_slice/stack:output:0;tf.__operators__.getitem_456/strided_slice/stack_1:output:0;tf.__operators__.getitem_456/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_456/strided_slice{
range_conversion_60/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_60/sub/y╨
range_conversion_60/subSub3tf.__operators__.getitem_456/strided_slice:output:0"range_conversion_60/sub/y:output:0*
T0*3
_output_shapes!
:           2
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
:           2
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
:           2
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
:           2
range_conversion_60/add╡
0tf.__operators__.getitem_457/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_457/strided_slice/stack╣
2tf.__operators__.getitem_457/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_457/strided_slice/stack_1╣
2tf.__operators__.getitem_457/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_457/strided_slice/stack_2Т
*tf.__operators__.getitem_457/strided_sliceStridedSliceinputs9tf.__operators__.getitem_457/strided_slice/stack:output:0;tf.__operators__.getitem_457/strided_slice/stack_1:output:0;tf.__operators__.getitem_457/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_457/strided_slicex
tf.concat_620/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_620/concat/axisї
tf.concat_620/concatConcatV2range_conversion_60/add:z:03tf.__operators__.getitem_457/strided_slice:output:0"tf.concat_620/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_620/concat║
 conv3d_320/Conv3D/ReadVariableOpReadVariableOp)conv3d_320_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_320/Conv3D/ReadVariableOp°
conv3d_320/Conv3DConv3Dtf.concat_620/concat:output:0(conv3d_320/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_320/Conv3Dн
!conv3d_320/BiasAdd/ReadVariableOpReadVariableOp*conv3d_320_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_320/BiasAdd/ReadVariableOp╧
conv3d_320/BiasAddBiasAddconv3d_320/Conv3D:output:0)conv3d_320/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_320/BiasAddС
conv3d_320/SoftplusSoftplusconv3d_320/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_320/Softplusй
$average_pooling3d_130/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_130/transpose/perm▀
average_pooling3d_130/transpose	Transpose!conv3d_320/Softplus:activations:0-average_pooling3d_130/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_130/transposeЁ
average_pooling3d_130/AvgPool3D	AvgPool3D#average_pooling3d_130/transpose:y:0*
T0*3
_output_shapes!
:         *
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
:         2#
!average_pooling3d_130/transpose_1║
 conv3d_321/Conv3D/ReadVariableOpReadVariableOp)conv3d_321_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_321/Conv3D/ReadVariableOpА
conv3d_321/Conv3DConv3D%average_pooling3d_130/transpose_1:y:0(conv3d_321/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_321/Conv3Dн
!conv3d_321/BiasAdd/ReadVariableOpReadVariableOp*conv3d_321_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_321/BiasAdd/ReadVariableOp╧
conv3d_321/BiasAddBiasAddconv3d_321/Conv3D:output:0)conv3d_321/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_321/BiasAddС
conv3d_321/SoftplusSoftplusconv3d_321/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_321/Softplusй
$average_pooling3d_131/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_131/transpose/perm▀
average_pooling3d_131/transpose	Transpose!conv3d_321/Softplus:activations:0-average_pooling3d_131/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_131/transposeЁ
average_pooling3d_131/AvgPool3D	AvgPool3D#average_pooling3d_131/transpose:y:0*
T0*3
_output_shapes!
:         *
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
:         2#
!average_pooling3d_131/transpose_1║
 conv3d_322/Conv3D/ReadVariableOpReadVariableOp)conv3d_322_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_322/Conv3D/ReadVariableOpА
conv3d_322/Conv3DConv3D%average_pooling3d_131/transpose_1:y:0(conv3d_322/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_322/Conv3Dн
!conv3d_322/BiasAdd/ReadVariableOpReadVariableOp*conv3d_322_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_322/BiasAdd/ReadVariableOp╧
conv3d_322/BiasAddBiasAddconv3d_322/Conv3D:output:0)conv3d_322/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_322/BiasAddС
conv3d_322/SoftplusSoftplusconv3d_322/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_322/Softplusй
$average_pooling3d_132/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_132/transpose/perm▀
average_pooling3d_132/transpose	Transpose!conv3d_322/Softplus:activations:0-average_pooling3d_132/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_132/transposeЁ
average_pooling3d_132/AvgPool3D	AvgPool3D#average_pooling3d_132/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_132/AvgPool3Dн
&average_pooling3d_132/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_132/transpose_1/permь
!average_pooling3d_132/transpose_1	Transpose(average_pooling3d_132/AvgPool3D:output:0/average_pooling3d_132/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_132/transpose_1{
reshape_120/ShapeShape%average_pooling3d_132/transpose_1:y:0*
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
reshape_120/ReshapeReshape%average_pooling3d_132/transpose_1:y:0"reshape_120/Reshape/shape:output:0*
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
tf.reshape_784/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_784/Reshape/shape╩
tf.reshape_784/ReshapeReshapereshape_121/Reshape:output:0%tf.reshape_784/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_784/Reshapeб
tf.tile_392/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_392/Tile/multiples╝
tf.tile_392/TileTiletf.reshape_784/Reshape:output:0#tf.tile_392/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_392/TileЩ
tf.reshape_785/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_785/Reshape/shape╗
tf.reshape_785/ReshapeReshapetf.tile_392/Tile:output:0%tf.reshape_785/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_785/Reshapex
tf.concat_621/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_621/concat/axisч
tf.concat_621/concatConcatV2tf.reshape_785/Reshape:output:0!conv3d_322/Softplus:activations:0"tf.concat_621/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_621/concat║
 conv3d_323/Conv3D/ReadVariableOpReadVariableOp)conv3d_323_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_323/Conv3D/ReadVariableOp°
conv3d_323/Conv3DConv3Dtf.concat_621/concat:output:0(conv3d_323/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_323/Conv3Dн
!conv3d_323/BiasAdd/ReadVariableOpReadVariableOp*conv3d_323_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_323/BiasAdd/ReadVariableOp╧
conv3d_323/BiasAddBiasAddconv3d_323/Conv3D:output:0)conv3d_323/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_323/BiasAddС
conv3d_323/SoftplusSoftplusconv3d_323/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_323/Softplusе
tf.reshape_786/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_786/Reshape/shape╧
tf.reshape_786/ReshapeReshape!conv3d_323/Softplus:activations:0%tf.reshape_786/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_786/Reshapeб
tf.tile_393/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_393/Tile/multiples╝
tf.tile_393/TileTiletf.reshape_786/Reshape:output:0#tf.tile_393/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_393/TileЩ
tf.reshape_787/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_787/Reshape/shape╗
tf.reshape_787/ReshapeReshapetf.tile_393/Tile:output:0%tf.reshape_787/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_787/Reshapex
tf.concat_622/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_622/concat/axisч
tf.concat_622/concatConcatV2tf.reshape_787/Reshape:output:0!conv3d_321/Softplus:activations:0"tf.concat_622/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_622/concat║
 conv3d_324/Conv3D/ReadVariableOpReadVariableOp)conv3d_324_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_324/Conv3D/ReadVariableOp°
conv3d_324/Conv3DConv3Dtf.concat_622/concat:output:0(conv3d_324/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_324/Conv3Dн
!conv3d_324/BiasAdd/ReadVariableOpReadVariableOp*conv3d_324_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_324/BiasAdd/ReadVariableOp╧
conv3d_324/BiasAddBiasAddconv3d_324/Conv3D:output:0)conv3d_324/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_324/BiasAddС
conv3d_324/SoftplusSoftplusconv3d_324/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_324/Softplusе
tf.reshape_788/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_788/Reshape/shape╧
tf.reshape_788/ReshapeReshape!conv3d_324/Softplus:activations:0%tf.reshape_788/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_788/Reshapeб
tf.tile_394/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_394/Tile/multiples╝
tf.tile_394/TileTiletf.reshape_788/Reshape:output:0#tf.tile_394/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_394/TileЩ
tf.reshape_789/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_789/Reshape/shape╗
tf.reshape_789/ReshapeReshapetf.tile_394/Tile:output:0%tf.reshape_789/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_789/Reshapex
tf.concat_623/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_623/concat/axisч
tf.concat_623/concatConcatV2tf.reshape_789/Reshape:output:0!conv3d_320/Softplus:activations:0"tf.concat_623/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_623/concat║
 conv3d_325/Conv3D/ReadVariableOpReadVariableOp)conv3d_325_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_325/Conv3D/ReadVariableOp°
conv3d_325/Conv3DConv3Dtf.concat_623/concat:output:0(conv3d_325/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_325/Conv3Dн
!conv3d_325/BiasAdd/ReadVariableOpReadVariableOp*conv3d_325_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_325/BiasAdd/ReadVariableOp╧
conv3d_325/BiasAddBiasAddconv3d_325/Conv3D:output:0)conv3d_325/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_325/BiasAddС
conv3d_325/SoftplusSoftplusconv3d_325/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_325/Softplus║
 conv3d_326/Conv3D/ReadVariableOpReadVariableOp)conv3d_326_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_326/Conv3D/ReadVariableOp№
conv3d_326/Conv3DConv3D!conv3d_325/Softplus:activations:0(conv3d_326/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_326/Conv3Dн
!conv3d_326/BiasAdd/ReadVariableOpReadVariableOp*conv3d_326_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_326/BiasAdd/ReadVariableOp╧
conv3d_326/BiasAddBiasAddconv3d_326/Conv3D:output:0)conv3d_326/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_326/BiasAddВ
IdentityIdentityconv3d_326/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

IdentityВ
NoOpNoOp"^conv3d_320/BiasAdd/ReadVariableOp!^conv3d_320/Conv3D/ReadVariableOp"^conv3d_321/BiasAdd/ReadVariableOp!^conv3d_321/Conv3D/ReadVariableOp"^conv3d_322/BiasAdd/ReadVariableOp!^conv3d_322/Conv3D/ReadVariableOp"^conv3d_323/BiasAdd/ReadVariableOp!^conv3d_323/Conv3D/ReadVariableOp"^conv3d_324/BiasAdd/ReadVariableOp!^conv3d_324/Conv3D/ReadVariableOp"^conv3d_325/BiasAdd/ReadVariableOp!^conv3d_325/Conv3D/ReadVariableOp"^conv3d_326/BiasAdd/ReadVariableOp!^conv3d_326/Conv3D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2F
!conv3d_320/BiasAdd/ReadVariableOp!conv3d_320/BiasAdd/ReadVariableOp2D
 conv3d_320/Conv3D/ReadVariableOp conv3d_320/Conv3D/ReadVariableOp2F
!conv3d_321/BiasAdd/ReadVariableOp!conv3d_321/BiasAdd/ReadVariableOp2D
 conv3d_321/Conv3D/ReadVariableOp conv3d_321/Conv3D/ReadVariableOp2F
!conv3d_322/BiasAdd/ReadVariableOp!conv3d_322/BiasAdd/ReadVariableOp2D
 conv3d_322/Conv3D/ReadVariableOp conv3d_322/Conv3D/ReadVariableOp2F
!conv3d_323/BiasAdd/ReadVariableOp!conv3d_323/BiasAdd/ReadVariableOp2D
 conv3d_323/Conv3D/ReadVariableOp conv3d_323/Conv3D/ReadVariableOp2F
!conv3d_324/BiasAdd/ReadVariableOp!conv3d_324/BiasAdd/ReadVariableOp2D
 conv3d_324/Conv3D/ReadVariableOp conv3d_324/Conv3D/ReadVariableOp2F
!conv3d_325/BiasAdd/ReadVariableOp!conv3d_325/BiasAdd/ReadVariableOp2D
 conv3d_325/Conv3D/ReadVariableOp conv3d_325/Conv3D/ReadVariableOp2F
!conv3d_326/BiasAdd/ReadVariableOp!conv3d_326/BiasAdd/ReadVariableOp2D
 conv3d_326/Conv3D/ReadVariableOp conv3d_326/Conv3D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_323_layer_call_and_return_conditional_losses_17073548

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
H__inference_conv3d_324_layer_call_and_return_conditional_losses_17073573

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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_17074532

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
:           2
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
:           2	
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
:           2
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
:           2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :_ [
3
_output_shapes!
:           
$
_user_specified_name
parameters
Ь
e
I__inference_reshape_121_layer_call_and_return_conditional_losses_17073527

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
х

o
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17073352

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
Ь
e
I__inference_reshape_121_layer_call_and_return_conditional_losses_17074733

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
-__inference_conv3d_324_layer_call_fn_17074762

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
H__inference_conv3d_324_layer_call_and_return_conditional_losses_170735732
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
 x
л
F__inference_model_60_layer_call_and_return_conditional_losses_17073621

inputs1
conv3d_320_17073412:!
conv3d_320_17073414:1
conv3d_321_17073439:!
conv3d_321_17073441:1
conv3d_322_17073466:!
conv3d_322_17073468:#
dense_60_17073507:@@
dense_60_17073509:@1
conv3d_323_17073549:!
conv3d_323_17073551:1
conv3d_324_17073574:!
conv3d_324_17073576:1
conv3d_325_17073599:!
conv3d_325_17073601:1
conv3d_326_17073615:!
conv3d_326_17073617:
identityИв"conv3d_320/StatefulPartitionedCallв"conv3d_321/StatefulPartitionedCallв"conv3d_322/StatefulPartitionedCallв"conv3d_323/StatefulPartitionedCallв"conv3d_324/StatefulPartitionedCallв"conv3d_325/StatefulPartitionedCallв"conv3d_326/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_456/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_456/strided_slice/stack╣
2tf.__operators__.getitem_456/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_456/strided_slice/stack_1╣
2tf.__operators__.getitem_456/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_456/strided_slice/stack_2Т
*tf.__operators__.getitem_456/strided_sliceStridedSliceinputs9tf.__operators__.getitem_456/strided_slice/stack:output:0;tf.__operators__.getitem_456/strided_slice/stack_1:output:0;tf.__operators__.getitem_456/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_456/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_456/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_170733922%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_457/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_457/strided_slice/stack╣
2tf.__operators__.getitem_457/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_457/strided_slice/stack_1╣
2tf.__operators__.getitem_457/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_457/strided_slice/stack_2Т
*tf.__operators__.getitem_457/strided_sliceStridedSliceinputs9tf.__operators__.getitem_457/strided_slice/stack:output:0;tf.__operators__.getitem_457/strided_slice/stack_1:output:0;tf.__operators__.getitem_457/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_457/strided_slicex
tf.concat_620/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_620/concat/axisЖ
tf.concat_620/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_457/strided_slice:output:0"tf.concat_620/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_620/concat╥
"conv3d_320/StatefulPartitionedCallStatefulPartitionedCalltf.concat_620/concat:output:0conv3d_320_17073412conv3d_320_17073414*
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
H__inference_conv3d_320_layer_call_and_return_conditional_losses_170734112$
"conv3d_320/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_320/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_170734252'
%average_pooling3d_130/PartitionedCallу
"conv3d_321/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_321_17073439conv3d_321_17073441*
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
H__inference_conv3d_321_layer_call_and_return_conditional_losses_170734382$
"conv3d_321/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_321/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_170734522'
%average_pooling3d_131/PartitionedCallу
"conv3d_322/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_131/PartitionedCall:output:0conv3d_322_17073466conv3d_322_17073468*
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
H__inference_conv3d_322_layer_call_and_return_conditional_losses_170734652$
"conv3d_322/StatefulPartitionedCall╣
%average_pooling3d_132/PartitionedCallPartitionedCall+conv3d_322/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_170734792'
%average_pooling3d_132/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_132/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_170734932
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_17073507dense_60_17073509*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_170735062"
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_170735272
reshape_121/PartitionedCallе
tf.reshape_784/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_784/Reshape/shape╥
tf.reshape_784/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_784/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_784/Reshapeб
tf.tile_392/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_392/Tile/multiples╝
tf.tile_392/TileTiletf.reshape_784/Reshape:output:0#tf.tile_392/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_392/TileЩ
tf.reshape_785/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_785/Reshape/shape╗
tf.reshape_785/ReshapeReshapetf.tile_392/Tile:output:0%tf.reshape_785/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_785/Reshapex
tf.concat_621/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_621/concat/axisё
tf.concat_621/concatConcatV2tf.reshape_785/Reshape:output:0+conv3d_322/StatefulPartitionedCall:output:0"tf.concat_621/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_621/concat╥
"conv3d_323/StatefulPartitionedCallStatefulPartitionedCalltf.concat_621/concat:output:0conv3d_323_17073549conv3d_323_17073551*
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
H__inference_conv3d_323_layer_call_and_return_conditional_losses_170735482$
"conv3d_323/StatefulPartitionedCallе
tf.reshape_786/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_786/Reshape/shape┘
tf.reshape_786/ReshapeReshape+conv3d_323/StatefulPartitionedCall:output:0%tf.reshape_786/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_786/Reshapeб
tf.tile_393/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_393/Tile/multiples╝
tf.tile_393/TileTiletf.reshape_786/Reshape:output:0#tf.tile_393/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_393/TileЩ
tf.reshape_787/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_787/Reshape/shape╗
tf.reshape_787/ReshapeReshapetf.tile_393/Tile:output:0%tf.reshape_787/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_787/Reshapex
tf.concat_622/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_622/concat/axisё
tf.concat_622/concatConcatV2tf.reshape_787/Reshape:output:0+conv3d_321/StatefulPartitionedCall:output:0"tf.concat_622/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_622/concat╥
"conv3d_324/StatefulPartitionedCallStatefulPartitionedCalltf.concat_622/concat:output:0conv3d_324_17073574conv3d_324_17073576*
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
H__inference_conv3d_324_layer_call_and_return_conditional_losses_170735732$
"conv3d_324/StatefulPartitionedCallе
tf.reshape_788/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_788/Reshape/shape┘
tf.reshape_788/ReshapeReshape+conv3d_324/StatefulPartitionedCall:output:0%tf.reshape_788/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_788/Reshapeб
tf.tile_394/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_394/Tile/multiples╝
tf.tile_394/TileTiletf.reshape_788/Reshape:output:0#tf.tile_394/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_394/TileЩ
tf.reshape_789/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_789/Reshape/shape╗
tf.reshape_789/ReshapeReshapetf.tile_394/Tile:output:0%tf.reshape_789/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_789/Reshapex
tf.concat_623/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_623/concat/axisё
tf.concat_623/concatConcatV2tf.reshape_789/Reshape:output:0+conv3d_320/StatefulPartitionedCall:output:0"tf.concat_623/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_623/concat╥
"conv3d_325/StatefulPartitionedCallStatefulPartitionedCalltf.concat_623/concat:output:0conv3d_325_17073599conv3d_325_17073601*
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
H__inference_conv3d_325_layer_call_and_return_conditional_losses_170735982$
"conv3d_325/StatefulPartitionedCallр
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCall+conv3d_325/StatefulPartitionedCall:output:0conv3d_326_17073615conv3d_326_17073617*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_326_layer_call_and_return_conditional_losses_170736142$
"conv3d_326/StatefulPartitionedCallТ
IdentityIdentity+conv3d_326/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

IdentityЇ
NoOpNoOp#^conv3d_320/StatefulPartitionedCall#^conv3d_321/StatefulPartitionedCall#^conv3d_322/StatefulPartitionedCall#^conv3d_323/StatefulPartitionedCall#^conv3d_324/StatefulPartitionedCall#^conv3d_325/StatefulPartitionedCall#^conv3d_326/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_320/StatefulPartitionedCall"conv3d_320/StatefulPartitionedCall2H
"conv3d_321/StatefulPartitionedCall"conv3d_321/StatefulPartitionedCall2H
"conv3d_322/StatefulPartitionedCall"conv3d_322/StatefulPartitionedCall2H
"conv3d_323/StatefulPartitionedCall"conv3d_323/StatefulPartitionedCall2H
"conv3d_324/StatefulPartitionedCall"conv3d_324/StatefulPartitionedCall2H
"conv3d_325/StatefulPartitionedCall"conv3d_325/StatefulPartitionedCall2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_320_layer_call_and_return_conditional_losses_17073411

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
Ш╚
б
F__inference_model_60_layer_call_and_return_conditional_losses_17074515

inputsG
)conv3d_320_conv3d_readvariableop_resource:8
*conv3d_320_biasadd_readvariableop_resource:G
)conv3d_321_conv3d_readvariableop_resource:8
*conv3d_321_biasadd_readvariableop_resource:G
)conv3d_322_conv3d_readvariableop_resource:8
*conv3d_322_biasadd_readvariableop_resource:9
'dense_60_matmul_readvariableop_resource:@@6
(dense_60_biasadd_readvariableop_resource:@G
)conv3d_323_conv3d_readvariableop_resource:8
*conv3d_323_biasadd_readvariableop_resource:G
)conv3d_324_conv3d_readvariableop_resource:8
*conv3d_324_biasadd_readvariableop_resource:G
)conv3d_325_conv3d_readvariableop_resource:8
*conv3d_325_biasadd_readvariableop_resource:G
)conv3d_326_conv3d_readvariableop_resource:8
*conv3d_326_biasadd_readvariableop_resource:
identityИв!conv3d_320/BiasAdd/ReadVariableOpв conv3d_320/Conv3D/ReadVariableOpв!conv3d_321/BiasAdd/ReadVariableOpв conv3d_321/Conv3D/ReadVariableOpв!conv3d_322/BiasAdd/ReadVariableOpв conv3d_322/Conv3D/ReadVariableOpв!conv3d_323/BiasAdd/ReadVariableOpв conv3d_323/Conv3D/ReadVariableOpв!conv3d_324/BiasAdd/ReadVariableOpв conv3d_324/Conv3D/ReadVariableOpв!conv3d_325/BiasAdd/ReadVariableOpв conv3d_325/Conv3D/ReadVariableOpв!conv3d_326/BiasAdd/ReadVariableOpв conv3d_326/Conv3D/ReadVariableOpвdense_60/BiasAdd/ReadVariableOpвdense_60/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_456/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_456/strided_slice/stack╣
2tf.__operators__.getitem_456/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_456/strided_slice/stack_1╣
2tf.__operators__.getitem_456/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_456/strided_slice/stack_2Т
*tf.__operators__.getitem_456/strided_sliceStridedSliceinputs9tf.__operators__.getitem_456/strided_slice/stack:output:0;tf.__operators__.getitem_456/strided_slice/stack_1:output:0;tf.__operators__.getitem_456/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_456/strided_slice{
range_conversion_60/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_60/sub/y╨
range_conversion_60/subSub3tf.__operators__.getitem_456/strided_slice:output:0"range_conversion_60/sub/y:output:0*
T0*3
_output_shapes!
:           2
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
:           2
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
:           2
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
:           2
range_conversion_60/add╡
0tf.__operators__.getitem_457/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_457/strided_slice/stack╣
2tf.__operators__.getitem_457/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_457/strided_slice/stack_1╣
2tf.__operators__.getitem_457/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_457/strided_slice/stack_2Т
*tf.__operators__.getitem_457/strided_sliceStridedSliceinputs9tf.__operators__.getitem_457/strided_slice/stack:output:0;tf.__operators__.getitem_457/strided_slice/stack_1:output:0;tf.__operators__.getitem_457/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_457/strided_slicex
tf.concat_620/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_620/concat/axisї
tf.concat_620/concatConcatV2range_conversion_60/add:z:03tf.__operators__.getitem_457/strided_slice:output:0"tf.concat_620/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_620/concat║
 conv3d_320/Conv3D/ReadVariableOpReadVariableOp)conv3d_320_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_320/Conv3D/ReadVariableOp°
conv3d_320/Conv3DConv3Dtf.concat_620/concat:output:0(conv3d_320/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_320/Conv3Dн
!conv3d_320/BiasAdd/ReadVariableOpReadVariableOp*conv3d_320_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_320/BiasAdd/ReadVariableOp╧
conv3d_320/BiasAddBiasAddconv3d_320/Conv3D:output:0)conv3d_320/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_320/BiasAddС
conv3d_320/SoftplusSoftplusconv3d_320/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_320/Softplusй
$average_pooling3d_130/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_130/transpose/perm▀
average_pooling3d_130/transpose	Transpose!conv3d_320/Softplus:activations:0-average_pooling3d_130/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_130/transposeЁ
average_pooling3d_130/AvgPool3D	AvgPool3D#average_pooling3d_130/transpose:y:0*
T0*3
_output_shapes!
:         *
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
:         2#
!average_pooling3d_130/transpose_1║
 conv3d_321/Conv3D/ReadVariableOpReadVariableOp)conv3d_321_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_321/Conv3D/ReadVariableOpА
conv3d_321/Conv3DConv3D%average_pooling3d_130/transpose_1:y:0(conv3d_321/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_321/Conv3Dн
!conv3d_321/BiasAdd/ReadVariableOpReadVariableOp*conv3d_321_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_321/BiasAdd/ReadVariableOp╧
conv3d_321/BiasAddBiasAddconv3d_321/Conv3D:output:0)conv3d_321/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_321/BiasAddС
conv3d_321/SoftplusSoftplusconv3d_321/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_321/Softplusй
$average_pooling3d_131/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_131/transpose/perm▀
average_pooling3d_131/transpose	Transpose!conv3d_321/Softplus:activations:0-average_pooling3d_131/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_131/transposeЁ
average_pooling3d_131/AvgPool3D	AvgPool3D#average_pooling3d_131/transpose:y:0*
T0*3
_output_shapes!
:         *
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
:         2#
!average_pooling3d_131/transpose_1║
 conv3d_322/Conv3D/ReadVariableOpReadVariableOp)conv3d_322_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_322/Conv3D/ReadVariableOpА
conv3d_322/Conv3DConv3D%average_pooling3d_131/transpose_1:y:0(conv3d_322/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_322/Conv3Dн
!conv3d_322/BiasAdd/ReadVariableOpReadVariableOp*conv3d_322_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_322/BiasAdd/ReadVariableOp╧
conv3d_322/BiasAddBiasAddconv3d_322/Conv3D:output:0)conv3d_322/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_322/BiasAddС
conv3d_322/SoftplusSoftplusconv3d_322/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_322/Softplusй
$average_pooling3d_132/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_132/transpose/perm▀
average_pooling3d_132/transpose	Transpose!conv3d_322/Softplus:activations:0-average_pooling3d_132/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_132/transposeЁ
average_pooling3d_132/AvgPool3D	AvgPool3D#average_pooling3d_132/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_132/AvgPool3Dн
&average_pooling3d_132/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_132/transpose_1/permь
!average_pooling3d_132/transpose_1	Transpose(average_pooling3d_132/AvgPool3D:output:0/average_pooling3d_132/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_132/transpose_1{
reshape_120/ShapeShape%average_pooling3d_132/transpose_1:y:0*
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
reshape_120/ReshapeReshape%average_pooling3d_132/transpose_1:y:0"reshape_120/Reshape/shape:output:0*
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
tf.reshape_784/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_784/Reshape/shape╩
tf.reshape_784/ReshapeReshapereshape_121/Reshape:output:0%tf.reshape_784/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_784/Reshapeб
tf.tile_392/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_392/Tile/multiples╝
tf.tile_392/TileTiletf.reshape_784/Reshape:output:0#tf.tile_392/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_392/TileЩ
tf.reshape_785/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_785/Reshape/shape╗
tf.reshape_785/ReshapeReshapetf.tile_392/Tile:output:0%tf.reshape_785/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_785/Reshapex
tf.concat_621/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_621/concat/axisч
tf.concat_621/concatConcatV2tf.reshape_785/Reshape:output:0!conv3d_322/Softplus:activations:0"tf.concat_621/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_621/concat║
 conv3d_323/Conv3D/ReadVariableOpReadVariableOp)conv3d_323_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_323/Conv3D/ReadVariableOp°
conv3d_323/Conv3DConv3Dtf.concat_621/concat:output:0(conv3d_323/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_323/Conv3Dн
!conv3d_323/BiasAdd/ReadVariableOpReadVariableOp*conv3d_323_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_323/BiasAdd/ReadVariableOp╧
conv3d_323/BiasAddBiasAddconv3d_323/Conv3D:output:0)conv3d_323/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_323/BiasAddС
conv3d_323/SoftplusSoftplusconv3d_323/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_323/Softplusе
tf.reshape_786/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_786/Reshape/shape╧
tf.reshape_786/ReshapeReshape!conv3d_323/Softplus:activations:0%tf.reshape_786/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_786/Reshapeб
tf.tile_393/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_393/Tile/multiples╝
tf.tile_393/TileTiletf.reshape_786/Reshape:output:0#tf.tile_393/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_393/TileЩ
tf.reshape_787/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_787/Reshape/shape╗
tf.reshape_787/ReshapeReshapetf.tile_393/Tile:output:0%tf.reshape_787/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_787/Reshapex
tf.concat_622/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_622/concat/axisч
tf.concat_622/concatConcatV2tf.reshape_787/Reshape:output:0!conv3d_321/Softplus:activations:0"tf.concat_622/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_622/concat║
 conv3d_324/Conv3D/ReadVariableOpReadVariableOp)conv3d_324_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_324/Conv3D/ReadVariableOp°
conv3d_324/Conv3DConv3Dtf.concat_622/concat:output:0(conv3d_324/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_324/Conv3Dн
!conv3d_324/BiasAdd/ReadVariableOpReadVariableOp*conv3d_324_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_324/BiasAdd/ReadVariableOp╧
conv3d_324/BiasAddBiasAddconv3d_324/Conv3D:output:0)conv3d_324/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_324/BiasAddС
conv3d_324/SoftplusSoftplusconv3d_324/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_324/Softplusе
tf.reshape_788/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_788/Reshape/shape╧
tf.reshape_788/ReshapeReshape!conv3d_324/Softplus:activations:0%tf.reshape_788/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_788/Reshapeб
tf.tile_394/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_394/Tile/multiples╝
tf.tile_394/TileTiletf.reshape_788/Reshape:output:0#tf.tile_394/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_394/TileЩ
tf.reshape_789/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_789/Reshape/shape╗
tf.reshape_789/ReshapeReshapetf.tile_394/Tile:output:0%tf.reshape_789/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_789/Reshapex
tf.concat_623/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_623/concat/axisч
tf.concat_623/concatConcatV2tf.reshape_789/Reshape:output:0!conv3d_320/Softplus:activations:0"tf.concat_623/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_623/concat║
 conv3d_325/Conv3D/ReadVariableOpReadVariableOp)conv3d_325_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_325/Conv3D/ReadVariableOp°
conv3d_325/Conv3DConv3Dtf.concat_623/concat:output:0(conv3d_325/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_325/Conv3Dн
!conv3d_325/BiasAdd/ReadVariableOpReadVariableOp*conv3d_325_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_325/BiasAdd/ReadVariableOp╧
conv3d_325/BiasAddBiasAddconv3d_325/Conv3D:output:0)conv3d_325/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_325/BiasAddС
conv3d_325/SoftplusSoftplusconv3d_325/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_325/Softplus║
 conv3d_326/Conv3D/ReadVariableOpReadVariableOp)conv3d_326_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_326/Conv3D/ReadVariableOp№
conv3d_326/Conv3DConv3D!conv3d_325/Softplus:activations:0(conv3d_326/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_326/Conv3Dн
!conv3d_326/BiasAdd/ReadVariableOpReadVariableOp*conv3d_326_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_326/BiasAdd/ReadVariableOp╧
conv3d_326/BiasAddBiasAddconv3d_326/Conv3D:output:0)conv3d_326/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_326/BiasAddВ
IdentityIdentityconv3d_326/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

IdentityВ
NoOpNoOp"^conv3d_320/BiasAdd/ReadVariableOp!^conv3d_320/Conv3D/ReadVariableOp"^conv3d_321/BiasAdd/ReadVariableOp!^conv3d_321/Conv3D/ReadVariableOp"^conv3d_322/BiasAdd/ReadVariableOp!^conv3d_322/Conv3D/ReadVariableOp"^conv3d_323/BiasAdd/ReadVariableOp!^conv3d_323/Conv3D/ReadVariableOp"^conv3d_324/BiasAdd/ReadVariableOp!^conv3d_324/Conv3D/ReadVariableOp"^conv3d_325/BiasAdd/ReadVariableOp!^conv3d_325/Conv3D/ReadVariableOp"^conv3d_326/BiasAdd/ReadVariableOp!^conv3d_326/Conv3D/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2F
!conv3d_320/BiasAdd/ReadVariableOp!conv3d_320/BiasAdd/ReadVariableOp2D
 conv3d_320/Conv3D/ReadVariableOp conv3d_320/Conv3D/ReadVariableOp2F
!conv3d_321/BiasAdd/ReadVariableOp!conv3d_321/BiasAdd/ReadVariableOp2D
 conv3d_321/Conv3D/ReadVariableOp conv3d_321/Conv3D/ReadVariableOp2F
!conv3d_322/BiasAdd/ReadVariableOp!conv3d_322/BiasAdd/ReadVariableOp2D
 conv3d_322/Conv3D/ReadVariableOp conv3d_322/Conv3D/ReadVariableOp2F
!conv3d_323/BiasAdd/ReadVariableOp!conv3d_323/BiasAdd/ReadVariableOp2D
 conv3d_323/Conv3D/ReadVariableOp conv3d_323/Conv3D/ReadVariableOp2F
!conv3d_324/BiasAdd/ReadVariableOp!conv3d_324/BiasAdd/ReadVariableOp2D
 conv3d_324/Conv3D/ReadVariableOp conv3d_324/Conv3D/ReadVariableOp2F
!conv3d_325/BiasAdd/ReadVariableOp!conv3d_325/BiasAdd/ReadVariableOp2D
 conv3d_325/Conv3D/ReadVariableOp conv3d_325/Conv3D/ReadVariableOp2F
!conv3d_326/BiasAdd/ReadVariableOp!conv3d_326/BiasAdd/ReadVariableOp2D
 conv3d_326/Conv3D/ReadVariableOp conv3d_326/Conv3D/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Е
H__inference_conv3d_323_layer_call_and_return_conditional_losses_17074753

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
8__inference_average_pooling3d_132_layer_call_fn_17074658

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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_170734792
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
░
х
&__inference_signature_wrapper_17074171	
input%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *,
f'R%
#__inference__wrapped_model_170732792
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
х

o
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17073322

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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17074667

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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17074580

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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17074628

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
-__inference_conv3d_321_layer_call_fn_17074589

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
H__inference_conv3d_321_layer_call_and_return_conditional_losses_170734382
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
┴
ж
-__inference_conv3d_325_layer_call_fn_17074782

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
H__inference_conv3d_325_layer_call_and_return_conditional_losses_170735982
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
М	
o
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17073425

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
.__inference_reshape_120_layer_call_fn_17074681

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
I__inference_reshape_120_layer_call_and_return_conditional_losses_170734932
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
Э
V
6__inference_range_conversion_60_layer_call_fn_17074520

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
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_170733922
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :_ [
3
_output_shapes!
:           
$
_user_specified_name
parameters
Х
T
8__inference_average_pooling3d_130_layer_call_fn_17074562

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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_170734252
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
Ф
ў
F__inference_dense_60_layer_call_and_return_conditional_losses_17073506

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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_17074812

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
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
:           *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
ж
T
8__inference_average_pooling3d_132_layer_call_fn_17074653

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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_170733522
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
ЖH
├

$__inference__traced_restore_17074941
file_prefix@
"assignvariableop_conv3d_320_kernel:0
"assignvariableop_1_conv3d_320_bias:B
$assignvariableop_2_conv3d_321_kernel:0
"assignvariableop_3_conv3d_321_bias:B
$assignvariableop_4_conv3d_322_kernel:0
"assignvariableop_5_conv3d_322_bias:4
"assignvariableop_6_dense_60_kernel:@@.
 assignvariableop_7_dense_60_bias:@B
$assignvariableop_8_conv3d_323_kernel:0
"assignvariableop_9_conv3d_323_bias:C
%assignvariableop_10_conv3d_324_kernel:1
#assignvariableop_11_conv3d_324_bias:C
%assignvariableop_12_conv3d_325_kernel:1
#assignvariableop_13_conv3d_325_bias:C
%assignvariableop_14_conv3d_326_kernel:1
#assignvariableop_15_conv3d_326_bias:
identity_17ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ч
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names░
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesА
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityб
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_320_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_320_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_321_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_321_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4й
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_322_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_322_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6з
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_60_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7е
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_60_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8й
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_323_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9з
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_323_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_324_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_324_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12н
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_325_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13л
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_325_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14н
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_326_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15л
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_326_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╛
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17ж
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
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
√x
к
F__inference_model_60_layer_call_and_return_conditional_losses_17074048	
input1
conv3d_320_17073978:!
conv3d_320_17073980:1
conv3d_321_17073984:!
conv3d_321_17073986:1
conv3d_322_17073990:!
conv3d_322_17073992:#
dense_60_17073997:@@
dense_60_17073999:@1
conv3d_323_17074011:!
conv3d_323_17074013:1
conv3d_324_17074024:!
conv3d_324_17074026:1
conv3d_325_17074037:!
conv3d_325_17074039:1
conv3d_326_17074042:!
conv3d_326_17074044:
identityИв"conv3d_320/StatefulPartitionedCallв"conv3d_321/StatefulPartitionedCallв"conv3d_322/StatefulPartitionedCallв"conv3d_323/StatefulPartitionedCallв"conv3d_324/StatefulPartitionedCallв"conv3d_325/StatefulPartitionedCallв"conv3d_326/StatefulPartitionedCallв dense_60/StatefulPartitionedCall╡
0tf.__operators__.getitem_456/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_456/strided_slice/stack╣
2tf.__operators__.getitem_456/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_456/strided_slice/stack_1╣
2tf.__operators__.getitem_456/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_456/strided_slice/stack_2С
*tf.__operators__.getitem_456/strided_sliceStridedSliceinput9tf.__operators__.getitem_456/strided_slice/stack:output:0;tf.__operators__.getitem_456/strided_slice/stack_1:output:0;tf.__operators__.getitem_456/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_456/strided_slice╗
#range_conversion_60/PartitionedCallPartitionedCall3tf.__operators__.getitem_456/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_170733922%
#range_conversion_60/PartitionedCall╡
0tf.__operators__.getitem_457/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_457/strided_slice/stack╣
2tf.__operators__.getitem_457/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_457/strided_slice/stack_1╣
2tf.__operators__.getitem_457/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_457/strided_slice/stack_2С
*tf.__operators__.getitem_457/strided_sliceStridedSliceinput9tf.__operators__.getitem_457/strided_slice/stack:output:0;tf.__operators__.getitem_457/strided_slice/stack_1:output:0;tf.__operators__.getitem_457/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_457/strided_slicex
tf.concat_620/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_620/concat/axisЖ
tf.concat_620/concatConcatV2,range_conversion_60/PartitionedCall:output:03tf.__operators__.getitem_457/strided_slice:output:0"tf.concat_620/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_620/concat╥
"conv3d_320/StatefulPartitionedCallStatefulPartitionedCalltf.concat_620/concat:output:0conv3d_320_17073978conv3d_320_17073980*
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
H__inference_conv3d_320_layer_call_and_return_conditional_losses_170734112$
"conv3d_320/StatefulPartitionedCall╣
%average_pooling3d_130/PartitionedCallPartitionedCall+conv3d_320/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_170734252'
%average_pooling3d_130/PartitionedCallу
"conv3d_321/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_130/PartitionedCall:output:0conv3d_321_17073984conv3d_321_17073986*
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
H__inference_conv3d_321_layer_call_and_return_conditional_losses_170734382$
"conv3d_321/StatefulPartitionedCall╣
%average_pooling3d_131/PartitionedCallPartitionedCall+conv3d_321/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_170734522'
%average_pooling3d_131/PartitionedCallу
"conv3d_322/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_131/PartitionedCall:output:0conv3d_322_17073990conv3d_322_17073992*
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
H__inference_conv3d_322_layer_call_and_return_conditional_losses_170734652$
"conv3d_322/StatefulPartitionedCall╣
%average_pooling3d_132/PartitionedCallPartitionedCall+conv3d_322/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_170734792'
%average_pooling3d_132/PartitionedCallТ
reshape_120/PartitionedCallPartitionedCall.average_pooling3d_132/PartitionedCall:output:0*
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_170734932
reshape_120/PartitionedCall├
 dense_60/StatefulPartitionedCallStatefulPartitionedCall$reshape_120/PartitionedCall:output:0dense_60_17073997dense_60_17073999*
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
F__inference_dense_60_layer_call_and_return_conditional_losses_170735062"
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_170735272
reshape_121/PartitionedCallе
tf.reshape_784/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_784/Reshape/shape╥
tf.reshape_784/ReshapeReshape$reshape_121/PartitionedCall:output:0%tf.reshape_784/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_784/Reshapeб
tf.tile_392/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_392/Tile/multiples╝
tf.tile_392/TileTiletf.reshape_784/Reshape:output:0#tf.tile_392/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_392/TileЩ
tf.reshape_785/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_785/Reshape/shape╗
tf.reshape_785/ReshapeReshapetf.tile_392/Tile:output:0%tf.reshape_785/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_785/Reshapex
tf.concat_621/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_621/concat/axisё
tf.concat_621/concatConcatV2tf.reshape_785/Reshape:output:0+conv3d_322/StatefulPartitionedCall:output:0"tf.concat_621/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_621/concat╥
"conv3d_323/StatefulPartitionedCallStatefulPartitionedCalltf.concat_621/concat:output:0conv3d_323_17074011conv3d_323_17074013*
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
H__inference_conv3d_323_layer_call_and_return_conditional_losses_170735482$
"conv3d_323/StatefulPartitionedCallе
tf.reshape_786/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_786/Reshape/shape┘
tf.reshape_786/ReshapeReshape+conv3d_323/StatefulPartitionedCall:output:0%tf.reshape_786/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_786/Reshapeб
tf.tile_393/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_393/Tile/multiples╝
tf.tile_393/TileTiletf.reshape_786/Reshape:output:0#tf.tile_393/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_393/TileЩ
tf.reshape_787/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_787/Reshape/shape╗
tf.reshape_787/ReshapeReshapetf.tile_393/Tile:output:0%tf.reshape_787/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_787/Reshapex
tf.concat_622/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_622/concat/axisё
tf.concat_622/concatConcatV2tf.reshape_787/Reshape:output:0+conv3d_321/StatefulPartitionedCall:output:0"tf.concat_622/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_622/concat╥
"conv3d_324/StatefulPartitionedCallStatefulPartitionedCalltf.concat_622/concat:output:0conv3d_324_17074024conv3d_324_17074026*
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
H__inference_conv3d_324_layer_call_and_return_conditional_losses_170735732$
"conv3d_324/StatefulPartitionedCallе
tf.reshape_788/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_788/Reshape/shape┘
tf.reshape_788/ReshapeReshape+conv3d_324/StatefulPartitionedCall:output:0%tf.reshape_788/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_788/Reshapeб
tf.tile_394/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_394/Tile/multiples╝
tf.tile_394/TileTiletf.reshape_788/Reshape:output:0#tf.tile_394/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_394/TileЩ
tf.reshape_789/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_789/Reshape/shape╗
tf.reshape_789/ReshapeReshapetf.tile_394/Tile:output:0%tf.reshape_789/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_789/Reshapex
tf.concat_623/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_623/concat/axisё
tf.concat_623/concatConcatV2tf.reshape_789/Reshape:output:0+conv3d_320/StatefulPartitionedCall:output:0"tf.concat_623/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_623/concat╥
"conv3d_325/StatefulPartitionedCallStatefulPartitionedCalltf.concat_623/concat:output:0conv3d_325_17074037conv3d_325_17074039*
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
H__inference_conv3d_325_layer_call_and_return_conditional_losses_170735982$
"conv3d_325/StatefulPartitionedCallр
"conv3d_326/StatefulPartitionedCallStatefulPartitionedCall+conv3d_325/StatefulPartitionedCall:output:0conv3d_326_17074042conv3d_326_17074044*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Q
fLRJ
H__inference_conv3d_326_layer_call_and_return_conditional_losses_170736142$
"conv3d_326/StatefulPartitionedCallТ
IdentityIdentity+conv3d_326/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

IdentityЇ
NoOpNoOp#^conv3d_320/StatefulPartitionedCall#^conv3d_321/StatefulPartitionedCall#^conv3d_322/StatefulPartitionedCall#^conv3d_323/StatefulPartitionedCall#^conv3d_324/StatefulPartitionedCall#^conv3d_325/StatefulPartitionedCall#^conv3d_326/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_320/StatefulPartitionedCall"conv3d_320/StatefulPartitionedCall2H
"conv3d_321/StatefulPartitionedCall"conv3d_321/StatefulPartitionedCall2H
"conv3d_322/StatefulPartitionedCall"conv3d_322/StatefulPartitionedCall2H
"conv3d_323/StatefulPartitionedCall"conv3d_323/StatefulPartitionedCall2H
"conv3d_324/StatefulPartitionedCall"conv3d_324/StatefulPartitionedCall2H
"conv3d_325/StatefulPartitionedCall"conv3d_325/StatefulPartitionedCall2H
"conv3d_326/StatefulPartitionedCall"conv3d_326/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
х

o
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17074571

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
Х-
·
!__inference__traced_save_17074883
file_prefix0
,savev2_conv3d_320_kernel_read_readvariableop.
*savev2_conv3d_320_bias_read_readvariableop0
,savev2_conv3d_321_kernel_read_readvariableop.
*savev2_conv3d_321_bias_read_readvariableop0
,savev2_conv3d_322_kernel_read_readvariableop.
*savev2_conv3d_322_bias_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop0
,savev2_conv3d_323_kernel_read_readvariableop.
*savev2_conv3d_323_bias_read_readvariableop0
,savev2_conv3d_324_kernel_read_readvariableop.
*savev2_conv3d_324_bias_read_readvariableop0
,savev2_conv3d_325_kernel_read_readvariableop.
*savev2_conv3d_325_bias_read_readvariableop0
,savev2_conv3d_326_kernel_read_readvariableop.
*savev2_conv3d_326_bias_read_readvariableop
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
ShardedFilenameС
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesк
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЦ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_320_kernel_read_readvariableop*savev2_conv3d_320_bias_read_readvariableop,savev2_conv3d_321_kernel_read_readvariableop*savev2_conv3d_321_bias_read_readvariableop,savev2_conv3d_322_kernel_read_readvariableop*savev2_conv3d_322_bias_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop,savev2_conv3d_323_kernel_read_readvariableop*savev2_conv3d_323_bias_read_readvariableop,savev2_conv3d_324_kernel_read_readvariableop*savev2_conv3d_324_bias_read_readvariableop,savev2_conv3d_325_kernel_read_readvariableop*savev2_conv3d_325_bias_read_readvariableop,savev2_conv3d_326_kernel_read_readvariableop*savev2_conv3d_326_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*э
_input_shapes█
╪: :::::::@@:@::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:0	,
*
_output_shapes
:: 


_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
М	
o
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17074676

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
serving_default_input:0           J

conv3d_326<
StatefulPartitionedCall:0           tensorflow/serving/predict:уЇ
┴
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
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer_with_weights-4
layer-18
layer-19
layer-20
layer-21
layer-22
layer_with_weights-5
layer-23
layer-24
layer-25
layer-26
layer-27
layer_with_weights-6
layer-28
layer_with_weights-7
layer-29
regularization_losses
 	variables
!trainable_variables
"	keras_api
#
signatures
╞__call__
╟_default_save_signature
+╚&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
з
%	variables
&regularization_losses
'trainable_variables
(	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"
_tf_keras_layer
(
)	keras_api"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
╜

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"
_tf_keras_layer
з
1	variables
2regularization_losses
3trainable_variables
4	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

5kernel
6bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses"
_tf_keras_layer
з
;	variables
<regularization_losses
=trainable_variables
>	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses"
_tf_keras_layer
з
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
╒__call__
+╓&call_and_return_all_conditional_losses"
_tf_keras_layer
з
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Mkernel
Nbias
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"
_tf_keras_layer
з
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
█__call__
+▄&call_and_return_all_conditional_losses"
_tf_keras_layer
(
W	keras_api"
_tf_keras_layer
(
X	keras_api"
_tf_keras_layer
(
Y	keras_api"
_tf_keras_layer
(
Z	keras_api"
_tf_keras_layer
╜

[kernel
\bias
]	variables
^regularization_losses
_trainable_variables
`	keras_api
▌__call__
+▐&call_and_return_all_conditional_losses"
_tf_keras_layer
(
a	keras_api"
_tf_keras_layer
(
b	keras_api"
_tf_keras_layer
(
c	keras_api"
_tf_keras_layer
(
d	keras_api"
_tf_keras_layer
╜

ekernel
fbias
g	variables
hregularization_losses
itrainable_variables
j	keras_api
▀__call__
+р&call_and_return_all_conditional_losses"
_tf_keras_layer
(
k	keras_api"
_tf_keras_layer
(
l	keras_api"
_tf_keras_layer
(
m	keras_api"
_tf_keras_layer
(
n	keras_api"
_tf_keras_layer
╜

okernel
pbias
q	variables
rregularization_losses
strainable_variables
t	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
Ц
+0
,1
52
63
?4
@5
M6
N7
[8
\9
e10
f11
o12
p13
u14
v15"
trackable_list_wrapper
Ц
+0
,1
52
63
?4
@5
M6
N7
[8
\9
e10
f11
o12
p13
u14
v15"
trackable_list_wrapper
╬
{non_trainable_variables
|metrics
}layer_regularization_losses
~layer_metrics
regularization_losses

layers
 	variables
!trainable_variables
╞__call__
╟_default_save_signature
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
-
хserving_default"
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
Аnon_trainable_variables
%	variables
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
&regularization_losses
Дlayers
'trainable_variables
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_320/kernel
: 2conv3d_320/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
╡
Еnon_trainable_variables
-	variables
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
.regularization_losses
Йlayers
/trainable_variables
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Кnon_trainable_variables
1	variables
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
2regularization_losses
Оlayers
3trainable_variables
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_321/kernel
: 2conv3d_321/bias
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
╡
Пnon_trainable_variables
7	variables
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
8regularization_losses
Уlayers
9trainable_variables
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Фnon_trainable_variables
;	variables
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
<regularization_losses
Шlayers
=trainable_variables
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_322/kernel
: 2conv3d_322/bias
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
╡
Щnon_trainable_variables
A	variables
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Bregularization_losses
Эlayers
Ctrainable_variables
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Юnon_trainable_variables
E	variables
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
Fregularization_losses
вlayers
Gtrainable_variables
╒__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
гnon_trainable_variables
I	variables
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Jregularization_losses
зlayers
Ktrainable_variables
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_60/kernel
:@ 2dense_60/bias
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
╡
иnon_trainable_variables
O	variables
йmetrics
 кlayer_regularization_losses
лlayer_metrics
Pregularization_losses
мlayers
Qtrainable_variables
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
нnon_trainable_variables
S	variables
оmetrics
 пlayer_regularization_losses
░layer_metrics
Tregularization_losses
▒layers
Utrainable_variables
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_323/kernel
: 2conv3d_323/bias
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
╡
▓non_trainable_variables
]	variables
│metrics
 ┤layer_regularization_losses
╡layer_metrics
^regularization_losses
╢layers
_trainable_variables
▌__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_324/kernel
: 2conv3d_324/bias
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
╡
╖non_trainable_variables
g	variables
╕metrics
 ╣layer_regularization_losses
║layer_metrics
hregularization_losses
╗layers
itrainable_variables
▀__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_325/kernel
: 2conv3d_325/bias
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
╡
╝non_trainable_variables
q	variables
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
rregularization_losses
└layers
strainable_variables
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_326/kernel
: 2conv3d_326/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
╡
┴non_trainable_variables
w	variables
┬metrics
 ├layer_regularization_losses
─layer_metrics
xregularization_losses
┼layers
ytrainable_variables
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ж
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
29"
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
+__inference_model_60_layer_call_fn_17073656
+__inference_model_60_layer_call_fn_17074208
+__inference_model_60_layer_call_fn_17074245
+__inference_model_60_layer_call_fn_17073964└
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
#__inference__wrapped_model_17073279input"Ш
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
F__inference_model_60_layer_call_and_return_conditional_losses_17074380
F__inference_model_60_layer_call_and_return_conditional_losses_17074515
F__inference_model_60_layer_call_and_return_conditional_losses_17074048
F__inference_model_60_layer_call_and_return_conditional_losses_17074132└
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
6__inference_range_conversion_60_layer_call_fn_17074520ж
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
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_17074532ж
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
-__inference_conv3d_320_layer_call_fn_17074541в
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
H__inference_conv3d_320_layer_call_and_return_conditional_losses_17074552в
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
8__inference_average_pooling3d_130_layer_call_fn_17074557
8__inference_average_pooling3d_130_layer_call_fn_17074562в
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
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17074571
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17074580в
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
-__inference_conv3d_321_layer_call_fn_17074589в
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
H__inference_conv3d_321_layer_call_and_return_conditional_losses_17074600в
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
8__inference_average_pooling3d_131_layer_call_fn_17074605
8__inference_average_pooling3d_131_layer_call_fn_17074610в
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
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17074619
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17074628в
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
-__inference_conv3d_322_layer_call_fn_17074637в
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
H__inference_conv3d_322_layer_call_and_return_conditional_losses_17074648в
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
8__inference_average_pooling3d_132_layer_call_fn_17074653
8__inference_average_pooling3d_132_layer_call_fn_17074658в
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
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17074667
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17074676в
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
.__inference_reshape_120_layer_call_fn_17074681в
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
I__inference_reshape_120_layer_call_and_return_conditional_losses_17074693в
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
+__inference_dense_60_layer_call_fn_17074702в
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
F__inference_dense_60_layer_call_and_return_conditional_losses_17074713в
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
.__inference_reshape_121_layer_call_fn_17074718в
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
I__inference_reshape_121_layer_call_and_return_conditional_losses_17074733в
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
-__inference_conv3d_323_layer_call_fn_17074742в
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
H__inference_conv3d_323_layer_call_and_return_conditional_losses_17074753в
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
-__inference_conv3d_324_layer_call_fn_17074762в
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
H__inference_conv3d_324_layer_call_and_return_conditional_losses_17074773в
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
-__inference_conv3d_325_layer_call_fn_17074782в
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
H__inference_conv3d_325_layer_call_and_return_conditional_losses_17074793в
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
-__inference_conv3d_326_layer_call_fn_17074802в
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
H__inference_conv3d_326_layer_call_and_return_conditional_losses_17074812в
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
&__inference_signature_wrapper_17074171input"Ф
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
 ╗
#__inference__wrapped_model_17073279У+,56?@MN[\efopuv:в7
0в-
+К(
input           
к "Cк@
>

conv3d_3260К-

conv3d_326           Р
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17074571╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_130_layer_call_and_return_conditional_losses_17074580p;в8
1в.
,К)
inputs           
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_130_layer_call_fn_17074557л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_130_layer_call_fn_17074562c;в8
1в.
,К)
inputs           
к "$К!         Р
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17074619╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_131_layer_call_and_return_conditional_losses_17074628p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_131_layer_call_fn_17074605л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_131_layer_call_fn_17074610c;в8
1в.
,К)
inputs         
к "$К!         Р
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17074667╕_в\
UвR
PКM
inputsA                                             
к "UвR
KКH
0A                                             
Ъ ╟
S__inference_average_pooling3d_132_layer_call_and_return_conditional_losses_17074676p;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ ш
8__inference_average_pooling3d_132_layer_call_fn_17074653л_в\
UвR
PКM
inputsA                                             
к "HКEA                                             Я
8__inference_average_pooling3d_132_layer_call_fn_17074658c;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_320_layer_call_and_return_conditional_losses_17074552t+,;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_320_layer_call_fn_17074541g+,;в8
1в.
,К)
inputs           
к "$К!           └
H__inference_conv3d_321_layer_call_and_return_conditional_losses_17074600t56;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_321_layer_call_fn_17074589g56;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_322_layer_call_and_return_conditional_losses_17074648t?@;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_322_layer_call_fn_17074637g?@;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_323_layer_call_and_return_conditional_losses_17074753t[\;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_323_layer_call_fn_17074742g[\;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_324_layer_call_and_return_conditional_losses_17074773tef;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ш
-__inference_conv3d_324_layer_call_fn_17074762gef;в8
1в.
,К)
inputs         
к "$К!         └
H__inference_conv3d_325_layer_call_and_return_conditional_losses_17074793top;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_325_layer_call_fn_17074782gop;в8
1в.
,К)
inputs           
к "$К!           └
H__inference_conv3d_326_layer_call_and_return_conditional_losses_17074812tuv;в8
1в.
,К)
inputs           
к "1в.
'К$
0           
Ъ Ш
-__inference_conv3d_326_layer_call_fn_17074802guv;в8
1в.
,К)
inputs           
к "$К!           ж
F__inference_dense_60_layer_call_and_return_conditional_losses_17074713\MN/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_60_layer_call_fn_17074702OMN/в,
%в"
 К
inputs         @
к "К         @╘
F__inference_model_60_layer_call_and_return_conditional_losses_17074048Й+,56?@MN[\efopuvBв?
8в5
+К(
input           
p 

 
к "1в.
'К$
0           
Ъ ╘
F__inference_model_60_layer_call_and_return_conditional_losses_17074132Й+,56?@MN[\efopuvBв?
8в5
+К(
input           
p

 
к "1в.
'К$
0           
Ъ ╒
F__inference_model_60_layer_call_and_return_conditional_losses_17074380К+,56?@MN[\efopuvCв@
9в6
,К)
inputs           
p 

 
к "1в.
'К$
0           
Ъ ╒
F__inference_model_60_layer_call_and_return_conditional_losses_17074515К+,56?@MN[\efopuvCв@
9в6
,К)
inputs           
p

 
к "1в.
'К$
0           
Ъ л
+__inference_model_60_layer_call_fn_17073656|+,56?@MN[\efopuvBв?
8в5
+К(
input           
p 

 
к "$К!           л
+__inference_model_60_layer_call_fn_17073964|+,56?@MN[\efopuvBв?
8в5
+К(
input           
p

 
к "$К!           м
+__inference_model_60_layer_call_fn_17074208}+,56?@MN[\efopuvCв@
9в6
,К)
inputs           
p 

 
к "$К!           м
+__inference_model_60_layer_call_fn_17074245}+,56?@MN[\efopuvCв@
9в6
,К)
inputs           
p

 
к "$К!           ╔
Q__inference_range_conversion_60_layer_call_and_return_conditional_losses_17074532t?в<
5в2
0К-

parameters           
к "1в.
'К$
0           
Ъ б
6__inference_range_conversion_60_layer_call_fn_17074520g?в<
5в2
0К-

parameters           
к "$К!           ▒
I__inference_reshape_120_layer_call_and_return_conditional_losses_17074693d;в8
1в.
,К)
inputs         
к "%в"
К
0         @
Ъ Й
.__inference_reshape_120_layer_call_fn_17074681W;в8
1в.
,К)
inputs         
к "К         @▒
I__inference_reshape_121_layer_call_and_return_conditional_losses_17074733d/в,
%в"
 К
inputs         @
к "1в.
'К$
0         
Ъ Й
.__inference_reshape_121_layer_call_fn_17074718W/в,
%в"
 К
inputs         @
к "$К!         ╟
&__inference_signature_wrapper_17074171Ь+,56?@MN[\efopuvCв@
в 
9к6
4
input+К(
input           "Cк@
>

conv3d_3260К-

conv3d_326           