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
conv3d_176/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_176/kernel

%conv3d_176/kernel/Read/ReadVariableOpReadVariableOpconv3d_176/kernel**
_output_shapes
: *
dtype0
v
conv3d_176/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_176/bias
o
#conv3d_176/bias/Read/ReadVariableOpReadVariableOpconv3d_176/bias*
_output_shapes
: *
dtype0

conv3d_177/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_177/kernel

%conv3d_177/kernel/Read/ReadVariableOpReadVariableOpconv3d_177/kernel**
_output_shapes
: *
dtype0
v
conv3d_177/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_177/bias
o
#conv3d_177/bias/Read/ReadVariableOpReadVariableOpconv3d_177/bias*
_output_shapes
:*
dtype0

conv3d_178/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_178/kernel

%conv3d_178/kernel/Read/ReadVariableOpReadVariableOpconv3d_178/kernel**
_output_shapes
:*
dtype0
v
conv3d_178/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_178/bias
o
#conv3d_178/bias/Read/ReadVariableOpReadVariableOpconv3d_178/bias*
_output_shapes
:*
dtype0

conv3d_179/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_179/kernel

%conv3d_179/kernel/Read/ReadVariableOpReadVariableOpconv3d_179/kernel**
_output_shapes
:*
dtype0
v
conv3d_179/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_179/bias
o
#conv3d_179/bias/Read/ReadVariableOpReadVariableOpconv3d_179/bias*
_output_shapes
:*
dtype0
z
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_40/kernel
s
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes

:@@*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:@*
dtype0

conv3d_180/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_180/kernel

%conv3d_180/kernel/Read/ReadVariableOpReadVariableOpconv3d_180/kernel**
_output_shapes
:*
dtype0
v
conv3d_180/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_180/bias
o
#conv3d_180/bias/Read/ReadVariableOpReadVariableOpconv3d_180/bias*
_output_shapes
:*
dtype0

conv3d_181/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_181/kernel

%conv3d_181/kernel/Read/ReadVariableOpReadVariableOpconv3d_181/kernel**
_output_shapes
:*
dtype0
v
conv3d_181/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_181/bias
o
#conv3d_181/bias/Read/ReadVariableOpReadVariableOpconv3d_181/bias*
_output_shapes
:*
dtype0

conv3d_182/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_182/kernel

%conv3d_182/kernel/Read/ReadVariableOpReadVariableOpconv3d_182/kernel**
_output_shapes
:*
dtype0
v
conv3d_182/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_182/bias
o
#conv3d_182/bias/Read/ReadVariableOpReadVariableOpconv3d_182/bias*
_output_shapes
:*
dtype0

conv3d_183/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_183/kernel

%conv3d_183/kernel/Read/ReadVariableOpReadVariableOpconv3d_183/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_183/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_183/bias
o
#conv3d_183/bias/Read/ReadVariableOpReadVariableOpconv3d_183/bias*
_output_shapes
: *
dtype0

conv3d_184/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_184/kernel

%conv3d_184/kernel/Read/ReadVariableOpReadVariableOpconv3d_184/kernel**
_output_shapes
: *
dtype0
v
conv3d_184/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_184/bias
o
#conv3d_184/bias/Read/ReadVariableOpReadVariableOpconv3d_184/bias*
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
kernel
	bias
regularization_losses
	variables
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
regularization_losses
	variables
trainable_variables
	keras_api
n
kernel
	bias
regularization_losses
	variables
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
 layer_regularization_losses
layers
&regularization_losses
layer_metrics
'	variables
non_trainable_variables
(trainable_variables
metrics
 
 
 
 
 
В
 layer_regularization_losses
layers
,regularization_losses
layer_metrics
-	variables
non_trainable_variables
.trainable_variables
metrics
 
 
][
VARIABLE_VALUEconv3d_176/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_176/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
В
  layer_regularization_losses
Ёlayers
4regularization_losses
Ђlayer_metrics
5	variables
Ѓnon_trainable_variables
6trainable_variables
Єmetrics
 
 
 
В
 Ѕlayer_regularization_losses
Іlayers
8regularization_losses
Їlayer_metrics
9	variables
Јnon_trainable_variables
:trainable_variables
Љmetrics
][
VARIABLE_VALUEconv3d_177/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_177/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
В
 Њlayer_regularization_losses
Ћlayers
>regularization_losses
Ќlayer_metrics
?	variables
­non_trainable_variables
@trainable_variables
Ўmetrics
 
 
 
В
 Џlayer_regularization_losses
Аlayers
Bregularization_losses
Бlayer_metrics
C	variables
Вnon_trainable_variables
Dtrainable_variables
Гmetrics
][
VARIABLE_VALUEconv3d_178/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_178/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1

F0
G1
В
 Дlayer_regularization_losses
Еlayers
Hregularization_losses
Жlayer_metrics
I	variables
Зnon_trainable_variables
Jtrainable_variables
Иmetrics
 
 
 
В
 Йlayer_regularization_losses
Кlayers
Lregularization_losses
Лlayer_metrics
M	variables
Мnon_trainable_variables
Ntrainable_variables
Нmetrics
][
VARIABLE_VALUEconv3d_179/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_179/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

P0
Q1
В
 Оlayer_regularization_losses
Пlayers
Rregularization_losses
Рlayer_metrics
S	variables
Сnon_trainable_variables
Ttrainable_variables
Тmetrics
 
 
 
В
 Уlayer_regularization_losses
Фlayers
Vregularization_losses
Хlayer_metrics
W	variables
Цnon_trainable_variables
Xtrainable_variables
Чmetrics
 
 
 
В
 Шlayer_regularization_losses
Щlayers
Zregularization_losses
Ъlayer_metrics
[	variables
Ыnon_trainable_variables
\trainable_variables
Ьmetrics
[Y
VARIABLE_VALUEdense_40/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_40/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

^0
_1
В
 Эlayer_regularization_losses
Юlayers
`regularization_losses
Яlayer_metrics
a	variables
аnon_trainable_variables
btrainable_variables
бmetrics
 
 
 
В
 вlayer_regularization_losses
гlayers
dregularization_losses
дlayer_metrics
e	variables
еnon_trainable_variables
ftrainable_variables
жmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_180/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_180/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

l0
m1
В
 зlayer_regularization_losses
иlayers
nregularization_losses
йlayer_metrics
o	variables
кnon_trainable_variables
ptrainable_variables
лmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_181/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_181/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

v0
w1
В
 мlayer_regularization_losses
нlayers
xregularization_losses
оlayer_metrics
y	variables
пnon_trainable_variables
ztrainable_variables
рmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_182/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_182/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Е
 сlayer_regularization_losses
тlayers
regularization_losses
уlayer_metrics
	variables
фnon_trainable_variables
trainable_variables
хmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_183/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_183/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Е
 цlayer_regularization_losses
чlayers
regularization_losses
шlayer_metrics
	variables
щnon_trainable_variables
trainable_variables
ъmetrics
][
VARIABLE_VALUEconv3d_184/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_184/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Е
 ыlayer_regularization_losses
ьlayers
regularization_losses
эlayer_metrics
	variables
юnon_trainable_variables
trainable_variables
яmetrics
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_176/kernelconv3d_176/biasconv3d_177/kernelconv3d_177/biasconv3d_178/kernelconv3d_178/biasconv3d_179/kernelconv3d_179/biasdense_40/kerneldense_40/biasconv3d_180/kernelconv3d_180/biasconv3d_181/kernelconv3d_181/biasconv3d_182/kernelconv3d_182/biasconv3d_183/kernelconv3d_183/biasconv3d_184/kernelconv3d_184/bias* 
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
%__inference_signature_wrapper_9894393
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Џ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_176/kernel/Read/ReadVariableOp#conv3d_176/bias/Read/ReadVariableOp%conv3d_177/kernel/Read/ReadVariableOp#conv3d_177/bias/Read/ReadVariableOp%conv3d_178/kernel/Read/ReadVariableOp#conv3d_178/bias/Read/ReadVariableOp%conv3d_179/kernel/Read/ReadVariableOp#conv3d_179/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp%conv3d_180/kernel/Read/ReadVariableOp#conv3d_180/bias/Read/ReadVariableOp%conv3d_181/kernel/Read/ReadVariableOp#conv3d_181/bias/Read/ReadVariableOp%conv3d_182/kernel/Read/ReadVariableOp#conv3d_182/bias/Read/ReadVariableOp%conv3d_183/kernel/Read/ReadVariableOp#conv3d_183/bias/Read/ReadVariableOp%conv3d_184/kernel/Read/ReadVariableOp#conv3d_184/bias/Read/ReadVariableOpConst*!
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
 __inference__traced_save_9895255

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_176/kernelconv3d_176/biasconv3d_177/kernelconv3d_177/biasconv3d_178/kernelconv3d_178/biasconv3d_179/kernelconv3d_179/biasdense_40/kerneldense_40/biasconv3d_180/kernelconv3d_180/biasconv3d_181/kernelconv3d_181/biasconv3d_182/kernelconv3d_182/biasconv3d_183/kernelconv3d_183/biasconv3d_184/kernelconv3d_184/bias* 
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
#__inference__traced_restore_9895325Ь

R
6__inference_average_pooling3d_68_layer_call_fn_9894854

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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_98934732
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
Џ


E__inference_model_40_layer_call_and_return_conditional_losses_9894052

inputs0
conv3d_176_9893963:  
conv3d_176_9893965: 0
conv3d_177_9893969:  
conv3d_177_9893971:0
conv3d_178_9893975: 
conv3d_178_9893977:0
conv3d_179_9893981: 
conv3d_179_9893983:"
dense_40_9893988:@@
dense_40_9893990:@0
conv3d_180_9894002: 
conv3d_180_9894004:0
conv3d_181_9894015: 
conv3d_181_9894017:0
conv3d_182_9894028: 
conv3d_182_9894030:0
conv3d_183_9894041:0  
conv3d_183_9894043: 0
conv3d_184_9894046:  
conv3d_184_9894048:
identityЂ"conv3d_176/StatefulPartitionedCallЂ"conv3d_177/StatefulPartitionedCallЂ"conv3d_178/StatefulPartitionedCallЂ"conv3d_179/StatefulPartitionedCallЂ"conv3d_180/StatefulPartitionedCallЂ"conv3d_181/StatefulPartitionedCallЂ"conv3d_182/StatefulPartitionedCallЂ"conv3d_183/StatefulPartitionedCallЂ"conv3d_184/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЕ
0tf.__operators__.getitem_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_226/strided_slice/stackЙ
2tf.__operators__.getitem_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_226/strided_slice/stack_1Й
2tf.__operators__.getitem_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_226/strided_slice/stack_2
*tf.__operators__.getitem_226/strided_sliceStridedSliceinputs9tf.__operators__.getitem_226/strided_slice/stack:output:0;tf.__operators__.getitem_226/strided_slice/stack_1:output:0;tf.__operators__.getitem_226/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_226/strided_sliceК
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_226/strided_slice:output:0*
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
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_98934402%
#range_conversion_40/PartitionedCallЕ
0tf.__operators__.getitem_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_227/strided_slice/stackЙ
2tf.__operators__.getitem_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_227/strided_slice/stack_1Й
2tf.__operators__.getitem_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_227/strided_slice/stack_2
*tf.__operators__.getitem_227/strided_sliceStridedSliceinputs9tf.__operators__.getitem_227/strided_slice/stack:output:0;tf.__operators__.getitem_227/strided_slice/stack_1:output:0;tf.__operators__.getitem_227/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_227/strided_slicex
tf.concat_265/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_265/concat/axis
tf.concat_265/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_227/strided_slice:output:0"tf.concat_265/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_265/concatЯ
"conv3d_176/StatefulPartitionedCallStatefulPartitionedCalltf.concat_265/concat:output:0conv3d_176_9893963conv3d_176_9893965*
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
G__inference_conv3d_176_layer_call_and_return_conditional_losses_98934592$
"conv3d_176/StatefulPartitionedCallЕ
$average_pooling3d_68/PartitionedCallPartitionedCall+conv3d_176/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_98934732&
$average_pooling3d_68/PartitionedCallп
"conv3d_177/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_68/PartitionedCall:output:0conv3d_177_9893969conv3d_177_9893971*
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
G__inference_conv3d_177_layer_call_and_return_conditional_losses_98934862$
"conv3d_177/StatefulPartitionedCallЕ
$average_pooling3d_69/PartitionedCallPartitionedCall+conv3d_177/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_98935002&
$average_pooling3d_69/PartitionedCallп
"conv3d_178/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_69/PartitionedCall:output:0conv3d_178_9893975conv3d_178_9893977*
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
G__inference_conv3d_178_layer_call_and_return_conditional_losses_98935132$
"conv3d_178/StatefulPartitionedCallЕ
$average_pooling3d_70/PartitionedCallPartitionedCall+conv3d_178/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_98935272&
$average_pooling3d_70/PartitionedCallп
"conv3d_179/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_70/PartitionedCall:output:0conv3d_179_9893981conv3d_179_9893983*
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
G__inference_conv3d_179_layer_call_and_return_conditional_losses_98935402$
"conv3d_179/StatefulPartitionedCallЕ
$average_pooling3d_71/PartitionedCallPartitionedCall+conv3d_179/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_98935542&
$average_pooling3d_71/PartitionedCall
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_71/PartitionedCall:output:0*
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
G__inference_reshape_80_layer_call_and_return_conditional_losses_98935682
reshape_80/PartitionedCallП
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_9893988dense_40_9893990*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_98935812"
 dense_40/StatefulPartitionedCall
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
G__inference_reshape_81_layer_call_and_return_conditional_losses_98936022
reshape_81/PartitionedCallЅ
tf.reshape_304/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_304/Reshape/shapeб
tf.reshape_304/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_304/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_304/ReshapeЁ
tf.tile_152/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_152/Tile/multiplesМ
tf.tile_152/TileTiletf.reshape_304/Reshape:output:0#tf.tile_152/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_152/Tile
tf.reshape_305/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_305/Reshape/shapeЛ
tf.reshape_305/ReshapeReshapetf.tile_152/Tile:output:0%tf.reshape_305/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_305/Reshapex
tf.concat_266/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_266/concat/axisё
tf.concat_266/concatConcatV2tf.reshape_305/Reshape:output:0+conv3d_179/StatefulPartitionedCall:output:0"tf.concat_266/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_266/concatЯ
"conv3d_180/StatefulPartitionedCallStatefulPartitionedCalltf.concat_266/concat:output:0conv3d_180_9894002conv3d_180_9894004*
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
G__inference_conv3d_180_layer_call_and_return_conditional_losses_98936232$
"conv3d_180/StatefulPartitionedCallЅ
tf.reshape_306/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_306/Reshape/shapeй
tf.reshape_306/ReshapeReshape+conv3d_180/StatefulPartitionedCall:output:0%tf.reshape_306/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_306/ReshapeЁ
tf.tile_153/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_153/Tile/multiplesМ
tf.tile_153/TileTiletf.reshape_306/Reshape:output:0#tf.tile_153/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_153/Tile
tf.reshape_307/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_307/Reshape/shapeЛ
tf.reshape_307/ReshapeReshapetf.tile_153/Tile:output:0%tf.reshape_307/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_307/Reshapex
tf.concat_267/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_267/concat/axisё
tf.concat_267/concatConcatV2tf.reshape_307/Reshape:output:0+conv3d_178/StatefulPartitionedCall:output:0"tf.concat_267/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_267/concatЯ
"conv3d_181/StatefulPartitionedCallStatefulPartitionedCalltf.concat_267/concat:output:0conv3d_181_9894015conv3d_181_9894017*
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
G__inference_conv3d_181_layer_call_and_return_conditional_losses_98936482$
"conv3d_181/StatefulPartitionedCallЅ
tf.reshape_308/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_308/Reshape/shapeй
tf.reshape_308/ReshapeReshape+conv3d_181/StatefulPartitionedCall:output:0%tf.reshape_308/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_308/ReshapeЁ
tf.tile_154/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_154/Tile/multiplesМ
tf.tile_154/TileTiletf.reshape_308/Reshape:output:0#tf.tile_154/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_154/Tile
tf.reshape_309/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_309/Reshape/shapeЛ
tf.reshape_309/ReshapeReshapetf.tile_154/Tile:output:0%tf.reshape_309/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_309/Reshapex
tf.concat_268/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_268/concat/axisё
tf.concat_268/concatConcatV2tf.reshape_309/Reshape:output:0+conv3d_177/StatefulPartitionedCall:output:0"tf.concat_268/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_268/concatЯ
"conv3d_182/StatefulPartitionedCallStatefulPartitionedCalltf.concat_268/concat:output:0conv3d_182_9894028conv3d_182_9894030*
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
G__inference_conv3d_182_layer_call_and_return_conditional_losses_98936732$
"conv3d_182/StatefulPartitionedCallЅ
tf.reshape_310/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_310/Reshape/shapeй
tf.reshape_310/ReshapeReshape+conv3d_182/StatefulPartitionedCall:output:0%tf.reshape_310/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_310/ReshapeЁ
tf.tile_155/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_155/Tile/multiplesМ
tf.tile_155/TileTiletf.reshape_310/Reshape:output:0#tf.tile_155/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_155/Tile
tf.reshape_311/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_311/Reshape/shapeЛ
tf.reshape_311/ReshapeReshapetf.tile_155/Tile:output:0%tf.reshape_311/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_311/Reshapex
tf.concat_269/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_269/concat/axisё
tf.concat_269/concatConcatV2tf.reshape_311/Reshape:output:0+conv3d_176/StatefulPartitionedCall:output:0"tf.concat_269/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_269/concatЯ
"conv3d_183/StatefulPartitionedCallStatefulPartitionedCalltf.concat_269/concat:output:0conv3d_183_9894041conv3d_183_9894043*
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
G__inference_conv3d_183_layer_call_and_return_conditional_losses_98936982$
"conv3d_183/StatefulPartitionedCallн
"conv3d_184/StatefulPartitionedCallStatefulPartitionedCall+conv3d_183/StatefulPartitionedCall:output:0conv3d_184_9894046conv3d_184_9894048*
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
G__inference_conv3d_184_layer_call_and_return_conditional_losses_98937142$
"conv3d_184/StatefulPartitionedCall
IdentityIdentity+conv3d_184/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_176/StatefulPartitionedCall#^conv3d_177/StatefulPartitionedCall#^conv3d_178/StatefulPartitionedCall#^conv3d_179/StatefulPartitionedCall#^conv3d_180/StatefulPartitionedCall#^conv3d_181/StatefulPartitionedCall#^conv3d_182/StatefulPartitionedCall#^conv3d_183/StatefulPartitionedCall#^conv3d_184/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_176/StatefulPartitionedCall"conv3d_176/StatefulPartitionedCall2H
"conv3d_177/StatefulPartitionedCall"conv3d_177/StatefulPartitionedCall2H
"conv3d_178/StatefulPartitionedCall"conv3d_178/StatefulPartitionedCall2H
"conv3d_179/StatefulPartitionedCall"conv3d_179/StatefulPartitionedCall2H
"conv3d_180/StatefulPartitionedCall"conv3d_180/StatefulPartitionedCall2H
"conv3d_181/StatefulPartitionedCall"conv3d_181/StatefulPartitionedCall2H
"conv3d_182/StatefulPartitionedCall"conv3d_182/StatefulPartitionedCall2H
"conv3d_183/StatefulPartitionedCall"conv3d_183/StatefulPartitionedCall2H
"conv3d_184/StatefulPartitionedCall"conv3d_184/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Э

G__inference_conv3d_180_layer_call_and_return_conditional_losses_9893623

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
П
Ѕ
,__inference_conv3d_178_layer_call_fn_9894929

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
G__inference_conv3d_178_layer_call_and_return_conditional_losses_98935132
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
ў

*__inference_dense_40_layer_call_fn_9895042

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
E__inference_dense_40_layer_call_and_return_conditional_losses_98935812
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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9894911

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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9893370

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
,__inference_conv3d_180_layer_call_fn_9895082

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
G__inference_conv3d_180_layer_call_and_return_conditional_losses_98936232
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
,__inference_conv3d_184_layer_call_fn_9895162

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
G__inference_conv3d_184_layer_call_and_return_conditional_losses_98937142
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
у

m
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9895007

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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9894863

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
G__inference_conv3d_182_layer_call_and_return_conditional_losses_9895133

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
Џ


E__inference_model_40_layer_call_and_return_conditional_losses_9893721

inputs0
conv3d_176_9893460:  
conv3d_176_9893462: 0
conv3d_177_9893487:  
conv3d_177_9893489:0
conv3d_178_9893514: 
conv3d_178_9893516:0
conv3d_179_9893541: 
conv3d_179_9893543:"
dense_40_9893582:@@
dense_40_9893584:@0
conv3d_180_9893624: 
conv3d_180_9893626:0
conv3d_181_9893649: 
conv3d_181_9893651:0
conv3d_182_9893674: 
conv3d_182_9893676:0
conv3d_183_9893699:0  
conv3d_183_9893701: 0
conv3d_184_9893715:  
conv3d_184_9893717:
identityЂ"conv3d_176/StatefulPartitionedCallЂ"conv3d_177/StatefulPartitionedCallЂ"conv3d_178/StatefulPartitionedCallЂ"conv3d_179/StatefulPartitionedCallЂ"conv3d_180/StatefulPartitionedCallЂ"conv3d_181/StatefulPartitionedCallЂ"conv3d_182/StatefulPartitionedCallЂ"conv3d_183/StatefulPartitionedCallЂ"conv3d_184/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЕ
0tf.__operators__.getitem_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_226/strided_slice/stackЙ
2tf.__operators__.getitem_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_226/strided_slice/stack_1Й
2tf.__operators__.getitem_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_226/strided_slice/stack_2
*tf.__operators__.getitem_226/strided_sliceStridedSliceinputs9tf.__operators__.getitem_226/strided_slice/stack:output:0;tf.__operators__.getitem_226/strided_slice/stack_1:output:0;tf.__operators__.getitem_226/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_226/strided_sliceК
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_226/strided_slice:output:0*
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
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_98934402%
#range_conversion_40/PartitionedCallЕ
0tf.__operators__.getitem_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_227/strided_slice/stackЙ
2tf.__operators__.getitem_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_227/strided_slice/stack_1Й
2tf.__operators__.getitem_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_227/strided_slice/stack_2
*tf.__operators__.getitem_227/strided_sliceStridedSliceinputs9tf.__operators__.getitem_227/strided_slice/stack:output:0;tf.__operators__.getitem_227/strided_slice/stack_1:output:0;tf.__operators__.getitem_227/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_227/strided_slicex
tf.concat_265/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_265/concat/axis
tf.concat_265/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_227/strided_slice:output:0"tf.concat_265/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_265/concatЯ
"conv3d_176/StatefulPartitionedCallStatefulPartitionedCalltf.concat_265/concat:output:0conv3d_176_9893460conv3d_176_9893462*
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
G__inference_conv3d_176_layer_call_and_return_conditional_losses_98934592$
"conv3d_176/StatefulPartitionedCallЕ
$average_pooling3d_68/PartitionedCallPartitionedCall+conv3d_176/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_98934732&
$average_pooling3d_68/PartitionedCallп
"conv3d_177/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_68/PartitionedCall:output:0conv3d_177_9893487conv3d_177_9893489*
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
G__inference_conv3d_177_layer_call_and_return_conditional_losses_98934862$
"conv3d_177/StatefulPartitionedCallЕ
$average_pooling3d_69/PartitionedCallPartitionedCall+conv3d_177/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_98935002&
$average_pooling3d_69/PartitionedCallп
"conv3d_178/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_69/PartitionedCall:output:0conv3d_178_9893514conv3d_178_9893516*
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
G__inference_conv3d_178_layer_call_and_return_conditional_losses_98935132$
"conv3d_178/StatefulPartitionedCallЕ
$average_pooling3d_70/PartitionedCallPartitionedCall+conv3d_178/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_98935272&
$average_pooling3d_70/PartitionedCallп
"conv3d_179/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_70/PartitionedCall:output:0conv3d_179_9893541conv3d_179_9893543*
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
G__inference_conv3d_179_layer_call_and_return_conditional_losses_98935402$
"conv3d_179/StatefulPartitionedCallЕ
$average_pooling3d_71/PartitionedCallPartitionedCall+conv3d_179/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_98935542&
$average_pooling3d_71/PartitionedCall
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_71/PartitionedCall:output:0*
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
G__inference_reshape_80_layer_call_and_return_conditional_losses_98935682
reshape_80/PartitionedCallП
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_9893582dense_40_9893584*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_98935812"
 dense_40/StatefulPartitionedCall
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
G__inference_reshape_81_layer_call_and_return_conditional_losses_98936022
reshape_81/PartitionedCallЅ
tf.reshape_304/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_304/Reshape/shapeб
tf.reshape_304/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_304/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_304/ReshapeЁ
tf.tile_152/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_152/Tile/multiplesМ
tf.tile_152/TileTiletf.reshape_304/Reshape:output:0#tf.tile_152/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_152/Tile
tf.reshape_305/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_305/Reshape/shapeЛ
tf.reshape_305/ReshapeReshapetf.tile_152/Tile:output:0%tf.reshape_305/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_305/Reshapex
tf.concat_266/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_266/concat/axisё
tf.concat_266/concatConcatV2tf.reshape_305/Reshape:output:0+conv3d_179/StatefulPartitionedCall:output:0"tf.concat_266/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_266/concatЯ
"conv3d_180/StatefulPartitionedCallStatefulPartitionedCalltf.concat_266/concat:output:0conv3d_180_9893624conv3d_180_9893626*
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
G__inference_conv3d_180_layer_call_and_return_conditional_losses_98936232$
"conv3d_180/StatefulPartitionedCallЅ
tf.reshape_306/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_306/Reshape/shapeй
tf.reshape_306/ReshapeReshape+conv3d_180/StatefulPartitionedCall:output:0%tf.reshape_306/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_306/ReshapeЁ
tf.tile_153/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_153/Tile/multiplesМ
tf.tile_153/TileTiletf.reshape_306/Reshape:output:0#tf.tile_153/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_153/Tile
tf.reshape_307/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_307/Reshape/shapeЛ
tf.reshape_307/ReshapeReshapetf.tile_153/Tile:output:0%tf.reshape_307/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_307/Reshapex
tf.concat_267/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_267/concat/axisё
tf.concat_267/concatConcatV2tf.reshape_307/Reshape:output:0+conv3d_178/StatefulPartitionedCall:output:0"tf.concat_267/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_267/concatЯ
"conv3d_181/StatefulPartitionedCallStatefulPartitionedCalltf.concat_267/concat:output:0conv3d_181_9893649conv3d_181_9893651*
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
G__inference_conv3d_181_layer_call_and_return_conditional_losses_98936482$
"conv3d_181/StatefulPartitionedCallЅ
tf.reshape_308/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_308/Reshape/shapeй
tf.reshape_308/ReshapeReshape+conv3d_181/StatefulPartitionedCall:output:0%tf.reshape_308/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_308/ReshapeЁ
tf.tile_154/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_154/Tile/multiplesМ
tf.tile_154/TileTiletf.reshape_308/Reshape:output:0#tf.tile_154/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_154/Tile
tf.reshape_309/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_309/Reshape/shapeЛ
tf.reshape_309/ReshapeReshapetf.tile_154/Tile:output:0%tf.reshape_309/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_309/Reshapex
tf.concat_268/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_268/concat/axisё
tf.concat_268/concatConcatV2tf.reshape_309/Reshape:output:0+conv3d_177/StatefulPartitionedCall:output:0"tf.concat_268/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_268/concatЯ
"conv3d_182/StatefulPartitionedCallStatefulPartitionedCalltf.concat_268/concat:output:0conv3d_182_9893674conv3d_182_9893676*
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
G__inference_conv3d_182_layer_call_and_return_conditional_losses_98936732$
"conv3d_182/StatefulPartitionedCallЅ
tf.reshape_310/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_310/Reshape/shapeй
tf.reshape_310/ReshapeReshape+conv3d_182/StatefulPartitionedCall:output:0%tf.reshape_310/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_310/ReshapeЁ
tf.tile_155/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_155/Tile/multiplesМ
tf.tile_155/TileTiletf.reshape_310/Reshape:output:0#tf.tile_155/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_155/Tile
tf.reshape_311/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_311/Reshape/shapeЛ
tf.reshape_311/ReshapeReshapetf.tile_155/Tile:output:0%tf.reshape_311/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_311/Reshapex
tf.concat_269/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_269/concat/axisё
tf.concat_269/concatConcatV2tf.reshape_311/Reshape:output:0+conv3d_176/StatefulPartitionedCall:output:0"tf.concat_269/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_269/concatЯ
"conv3d_183/StatefulPartitionedCallStatefulPartitionedCalltf.concat_269/concat:output:0conv3d_183_9893699conv3d_183_9893701*
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
G__inference_conv3d_183_layer_call_and_return_conditional_losses_98936982$
"conv3d_183/StatefulPartitionedCallн
"conv3d_184/StatefulPartitionedCallStatefulPartitionedCall+conv3d_183/StatefulPartitionedCall:output:0conv3d_184_9893715conv3d_184_9893717*
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
G__inference_conv3d_184_layer_call_and_return_conditional_losses_98937142$
"conv3d_184/StatefulPartitionedCall
IdentityIdentity+conv3d_184/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_176/StatefulPartitionedCall#^conv3d_177/StatefulPartitionedCall#^conv3d_178/StatefulPartitionedCall#^conv3d_179/StatefulPartitionedCall#^conv3d_180/StatefulPartitionedCall#^conv3d_181/StatefulPartitionedCall#^conv3d_182/StatefulPartitionedCall#^conv3d_183/StatefulPartitionedCall#^conv3d_184/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_176/StatefulPartitionedCall"conv3d_176/StatefulPartitionedCall2H
"conv3d_177/StatefulPartitionedCall"conv3d_177/StatefulPartitionedCall2H
"conv3d_178/StatefulPartitionedCall"conv3d_178/StatefulPartitionedCall2H
"conv3d_179/StatefulPartitionedCall"conv3d_179/StatefulPartitionedCall2H
"conv3d_180/StatefulPartitionedCall"conv3d_180/StatefulPartitionedCall2H
"conv3d_181/StatefulPartitionedCall"conv3d_181/StatefulPartitionedCall2H
"conv3d_182/StatefulPartitionedCall"conv3d_182/StatefulPartitionedCall2H
"conv3d_183/StatefulPartitionedCall"conv3d_183/StatefulPartitionedCall2H
"conv3d_184/StatefulPartitionedCall"conv3d_184/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs

c
G__inference_reshape_81_layer_call_and_return_conditional_losses_9895073

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
Ц№
Д
E__inference_model_40_layer_call_and_return_conditional_losses_9894645

inputsG
)conv3d_176_conv3d_readvariableop_resource: 8
*conv3d_176_biasadd_readvariableop_resource: G
)conv3d_177_conv3d_readvariableop_resource: 8
*conv3d_177_biasadd_readvariableop_resource:G
)conv3d_178_conv3d_readvariableop_resource:8
*conv3d_178_biasadd_readvariableop_resource:G
)conv3d_179_conv3d_readvariableop_resource:8
*conv3d_179_biasadd_readvariableop_resource:9
'dense_40_matmul_readvariableop_resource:@@6
(dense_40_biasadd_readvariableop_resource:@G
)conv3d_180_conv3d_readvariableop_resource:8
*conv3d_180_biasadd_readvariableop_resource:G
)conv3d_181_conv3d_readvariableop_resource:8
*conv3d_181_biasadd_readvariableop_resource:G
)conv3d_182_conv3d_readvariableop_resource:8
*conv3d_182_biasadd_readvariableop_resource:G
)conv3d_183_conv3d_readvariableop_resource:0 8
*conv3d_183_biasadd_readvariableop_resource: G
)conv3d_184_conv3d_readvariableop_resource: 8
*conv3d_184_biasadd_readvariableop_resource:
identityЂ!conv3d_176/BiasAdd/ReadVariableOpЂ conv3d_176/Conv3D/ReadVariableOpЂ!conv3d_177/BiasAdd/ReadVariableOpЂ conv3d_177/Conv3D/ReadVariableOpЂ!conv3d_178/BiasAdd/ReadVariableOpЂ conv3d_178/Conv3D/ReadVariableOpЂ!conv3d_179/BiasAdd/ReadVariableOpЂ conv3d_179/Conv3D/ReadVariableOpЂ!conv3d_180/BiasAdd/ReadVariableOpЂ conv3d_180/Conv3D/ReadVariableOpЂ!conv3d_181/BiasAdd/ReadVariableOpЂ conv3d_181/Conv3D/ReadVariableOpЂ!conv3d_182/BiasAdd/ReadVariableOpЂ conv3d_182/Conv3D/ReadVariableOpЂ!conv3d_183/BiasAdd/ReadVariableOpЂ conv3d_183/Conv3D/ReadVariableOpЂ!conv3d_184/BiasAdd/ReadVariableOpЂ conv3d_184/Conv3D/ReadVariableOpЂdense_40/BiasAdd/ReadVariableOpЂdense_40/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_226/strided_slice/stackЙ
2tf.__operators__.getitem_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_226/strided_slice/stack_1Й
2tf.__operators__.getitem_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_226/strided_slice/stack_2
*tf.__operators__.getitem_226/strided_sliceStridedSliceinputs9tf.__operators__.getitem_226/strided_slice/stack:output:0;tf.__operators__.getitem_226/strided_slice/stack_1:output:0;tf.__operators__.getitem_226/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_226/strided_slice{
range_conversion_40/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_40/sub/yа
range_conversion_40/subSub3tf.__operators__.getitem_226/strided_slice:output:0"range_conversion_40/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/sub
range_conversion_40/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_40/truediv/yШ
range_conversion_40/truedivRealDivrange_conversion_40/sub:z:0&range_conversion_40/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/truediv{
range_conversion_40/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_40/mul/yМ
range_conversion_40/mulMulrange_conversion_40/truediv:z:0"range_conversion_40/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/mul{
range_conversion_40/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_40/add/yК
range_conversion_40/addAddV2range_conversion_40/mul:z:0"range_conversion_40/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/addЕ
0tf.__operators__.getitem_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_227/strided_slice/stackЙ
2tf.__operators__.getitem_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_227/strided_slice/stack_1Й
2tf.__operators__.getitem_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_227/strided_slice/stack_2
*tf.__operators__.getitem_227/strided_sliceStridedSliceinputs9tf.__operators__.getitem_227/strided_slice/stack:output:0;tf.__operators__.getitem_227/strided_slice/stack_1:output:0;tf.__operators__.getitem_227/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_227/strided_slicex
tf.concat_265/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_265/concat/axisѕ
tf.concat_265/concatConcatV2range_conversion_40/add:z:03tf.__operators__.getitem_227/strided_slice:output:0"tf.concat_265/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_265/concatК
 conv3d_176/Conv3D/ReadVariableOpReadVariableOp)conv3d_176_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_176/Conv3D/ReadVariableOpј
conv3d_176/Conv3DConv3Dtf.concat_265/concat:output:0(conv3d_176/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_176/Conv3D­
!conv3d_176/BiasAdd/ReadVariableOpReadVariableOp*conv3d_176_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_176/BiasAdd/ReadVariableOpЯ
conv3d_176/BiasAddBiasAddconv3d_176/Conv3D:output:0)conv3d_176/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_176/BiasAdd
conv3d_176/SoftplusSoftplusconv3d_176/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_176/SoftplusЇ
#average_pooling3d_68/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_68/transpose/permм
average_pooling3d_68/transpose	Transpose!conv3d_176/Softplus:activations:0,average_pooling3d_68/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2 
average_pooling3d_68/transposeэ
average_pooling3d_68/AvgPool3D	AvgPool3D"average_pooling3d_68/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_68/AvgPool3DЋ
%average_pooling3d_68/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_68/transpose_1/permш
 average_pooling3d_68/transpose_1	Transpose'average_pooling3d_68/AvgPool3D:output:0.average_pooling3d_68/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2"
 average_pooling3d_68/transpose_1К
 conv3d_177/Conv3D/ReadVariableOpReadVariableOp)conv3d_177_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_177/Conv3D/ReadVariableOpџ
conv3d_177/Conv3DConv3D$average_pooling3d_68/transpose_1:y:0(conv3d_177/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_177/Conv3D­
!conv3d_177/BiasAdd/ReadVariableOpReadVariableOp*conv3d_177_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_177/BiasAdd/ReadVariableOpЯ
conv3d_177/BiasAddBiasAddconv3d_177/Conv3D:output:0)conv3d_177/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_177/BiasAdd
conv3d_177/SoftplusSoftplusconv3d_177/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_177/SoftplusЇ
#average_pooling3d_69/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_69/transpose/permм
average_pooling3d_69/transpose	Transpose!conv3d_177/Softplus:activations:0,average_pooling3d_69/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_69/transposeэ
average_pooling3d_69/AvgPool3D	AvgPool3D"average_pooling3d_69/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_69/AvgPool3DЋ
%average_pooling3d_69/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_69/transpose_1/permш
 average_pooling3d_69/transpose_1	Transpose'average_pooling3d_69/AvgPool3D:output:0.average_pooling3d_69/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_69/transpose_1К
 conv3d_178/Conv3D/ReadVariableOpReadVariableOp)conv3d_178_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_178/Conv3D/ReadVariableOpџ
conv3d_178/Conv3DConv3D$average_pooling3d_69/transpose_1:y:0(conv3d_178/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_178/Conv3D­
!conv3d_178/BiasAdd/ReadVariableOpReadVariableOp*conv3d_178_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_178/BiasAdd/ReadVariableOpЯ
conv3d_178/BiasAddBiasAddconv3d_178/Conv3D:output:0)conv3d_178/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_178/BiasAdd
conv3d_178/SoftplusSoftplusconv3d_178/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_178/SoftplusЇ
#average_pooling3d_70/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_70/transpose/permм
average_pooling3d_70/transpose	Transpose!conv3d_178/Softplus:activations:0,average_pooling3d_70/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_70/transposeэ
average_pooling3d_70/AvgPool3D	AvgPool3D"average_pooling3d_70/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_70/AvgPool3DЋ
%average_pooling3d_70/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_70/transpose_1/permш
 average_pooling3d_70/transpose_1	Transpose'average_pooling3d_70/AvgPool3D:output:0.average_pooling3d_70/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_70/transpose_1К
 conv3d_179/Conv3D/ReadVariableOpReadVariableOp)conv3d_179_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_179/Conv3D/ReadVariableOpџ
conv3d_179/Conv3DConv3D$average_pooling3d_70/transpose_1:y:0(conv3d_179/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_179/Conv3D­
!conv3d_179/BiasAdd/ReadVariableOpReadVariableOp*conv3d_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_179/BiasAdd/ReadVariableOpЯ
conv3d_179/BiasAddBiasAddconv3d_179/Conv3D:output:0)conv3d_179/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_179/BiasAdd
conv3d_179/SoftplusSoftplusconv3d_179/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_179/SoftplusЇ
#average_pooling3d_71/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_71/transpose/permм
average_pooling3d_71/transpose	Transpose!conv3d_179/Softplus:activations:0,average_pooling3d_71/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_71/transposeэ
average_pooling3d_71/AvgPool3D	AvgPool3D"average_pooling3d_71/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_71/AvgPool3DЋ
%average_pooling3d_71/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_71/transpose_1/permш
 average_pooling3d_71/transpose_1	Transpose'average_pooling3d_71/AvgPool3D:output:0.average_pooling3d_71/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_71/transpose_1x
reshape_80/ShapeShape$average_pooling3d_71/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_80/Shape
reshape_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_80/strided_slice/stack
 reshape_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_1
 reshape_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_2Є
reshape_80/strided_sliceStridedSlicereshape_80/Shape:output:0'reshape_80/strided_slice/stack:output:0)reshape_80/strided_slice/stack_1:output:0)reshape_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_80/strided_slicez
reshape_80/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_80/Reshape/shape/1В
reshape_80/Reshape/shapePack!reshape_80/strided_slice:output:0#reshape_80/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_80/Reshape/shapeЎ
reshape_80/ReshapeReshape$average_pooling3d_71/transpose_1:y:0!reshape_80/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_80/ReshapeЈ
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_40/MatMul/ReadVariableOpЃ
dense_40/MatMulMatMulreshape_80/Reshape:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_40/MatMulЇ
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_40/BiasAdd/ReadVariableOpЅ
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_40/BiasAdd
dense_40/SoftplusSoftplusdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_40/Softpluss
reshape_81/ShapeShapedense_40/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_81/Shape
reshape_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_81/strided_slice/stack
 reshape_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_1
 reshape_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_2Є
reshape_81/strided_sliceStridedSlicereshape_81/Shape:output:0'reshape_81/strided_slice/stack:output:0)reshape_81/strided_slice/stack_1:output:0)reshape_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_81/strided_slicez
reshape_81/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/1z
reshape_81/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/2z
reshape_81/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/3z
reshape_81/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/4Ё
reshape_81/Reshape/shapePack!reshape_81/strided_slice:output:0#reshape_81/Reshape/shape/1:output:0#reshape_81/Reshape/shape/2:output:0#reshape_81/Reshape/shape/3:output:0#reshape_81/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_81/Reshape/shapeЕ
reshape_81/ReshapeReshapedense_40/Softplus:activations:0!reshape_81/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_81/ReshapeЅ
tf.reshape_304/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_304/Reshape/shapeЩ
tf.reshape_304/ReshapeReshapereshape_81/Reshape:output:0%tf.reshape_304/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_304/ReshapeЁ
tf.tile_152/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_152/Tile/multiplesМ
tf.tile_152/TileTiletf.reshape_304/Reshape:output:0#tf.tile_152/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_152/Tile
tf.reshape_305/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_305/Reshape/shapeЛ
tf.reshape_305/ReshapeReshapetf.tile_152/Tile:output:0%tf.reshape_305/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_305/Reshapex
tf.concat_266/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_266/concat/axisч
tf.concat_266/concatConcatV2tf.reshape_305/Reshape:output:0!conv3d_179/Softplus:activations:0"tf.concat_266/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_266/concatК
 conv3d_180/Conv3D/ReadVariableOpReadVariableOp)conv3d_180_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_180/Conv3D/ReadVariableOpј
conv3d_180/Conv3DConv3Dtf.concat_266/concat:output:0(conv3d_180/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_180/Conv3D­
!conv3d_180/BiasAdd/ReadVariableOpReadVariableOp*conv3d_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_180/BiasAdd/ReadVariableOpЯ
conv3d_180/BiasAddBiasAddconv3d_180/Conv3D:output:0)conv3d_180/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_180/BiasAdd
conv3d_180/SoftplusSoftplusconv3d_180/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_180/SoftplusЅ
tf.reshape_306/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_306/Reshape/shapeЯ
tf.reshape_306/ReshapeReshape!conv3d_180/Softplus:activations:0%tf.reshape_306/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_306/ReshapeЁ
tf.tile_153/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_153/Tile/multiplesМ
tf.tile_153/TileTiletf.reshape_306/Reshape:output:0#tf.tile_153/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_153/Tile
tf.reshape_307/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_307/Reshape/shapeЛ
tf.reshape_307/ReshapeReshapetf.tile_153/Tile:output:0%tf.reshape_307/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_307/Reshapex
tf.concat_267/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_267/concat/axisч
tf.concat_267/concatConcatV2tf.reshape_307/Reshape:output:0!conv3d_178/Softplus:activations:0"tf.concat_267/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_267/concatК
 conv3d_181/Conv3D/ReadVariableOpReadVariableOp)conv3d_181_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_181/Conv3D/ReadVariableOpј
conv3d_181/Conv3DConv3Dtf.concat_267/concat:output:0(conv3d_181/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_181/Conv3D­
!conv3d_181/BiasAdd/ReadVariableOpReadVariableOp*conv3d_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_181/BiasAdd/ReadVariableOpЯ
conv3d_181/BiasAddBiasAddconv3d_181/Conv3D:output:0)conv3d_181/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_181/BiasAdd
conv3d_181/SoftplusSoftplusconv3d_181/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_181/SoftplusЅ
tf.reshape_308/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_308/Reshape/shapeЯ
tf.reshape_308/ReshapeReshape!conv3d_181/Softplus:activations:0%tf.reshape_308/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_308/ReshapeЁ
tf.tile_154/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_154/Tile/multiplesМ
tf.tile_154/TileTiletf.reshape_308/Reshape:output:0#tf.tile_154/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_154/Tile
tf.reshape_309/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_309/Reshape/shapeЛ
tf.reshape_309/ReshapeReshapetf.tile_154/Tile:output:0%tf.reshape_309/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_309/Reshapex
tf.concat_268/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_268/concat/axisч
tf.concat_268/concatConcatV2tf.reshape_309/Reshape:output:0!conv3d_177/Softplus:activations:0"tf.concat_268/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_268/concatК
 conv3d_182/Conv3D/ReadVariableOpReadVariableOp)conv3d_182_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_182/Conv3D/ReadVariableOpј
conv3d_182/Conv3DConv3Dtf.concat_268/concat:output:0(conv3d_182/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_182/Conv3D­
!conv3d_182/BiasAdd/ReadVariableOpReadVariableOp*conv3d_182_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_182/BiasAdd/ReadVariableOpЯ
conv3d_182/BiasAddBiasAddconv3d_182/Conv3D:output:0)conv3d_182/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_182/BiasAdd
conv3d_182/SoftplusSoftplusconv3d_182/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_182/SoftplusЅ
tf.reshape_310/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_310/Reshape/shapeЯ
tf.reshape_310/ReshapeReshape!conv3d_182/Softplus:activations:0%tf.reshape_310/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_310/ReshapeЁ
tf.tile_155/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_155/Tile/multiplesМ
tf.tile_155/TileTiletf.reshape_310/Reshape:output:0#tf.tile_155/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_155/Tile
tf.reshape_311/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_311/Reshape/shapeЛ
tf.reshape_311/ReshapeReshapetf.tile_155/Tile:output:0%tf.reshape_311/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_311/Reshapex
tf.concat_269/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_269/concat/axisч
tf.concat_269/concatConcatV2tf.reshape_311/Reshape:output:0!conv3d_176/Softplus:activations:0"tf.concat_269/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_269/concatК
 conv3d_183/Conv3D/ReadVariableOpReadVariableOp)conv3d_183_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_183/Conv3D/ReadVariableOpј
conv3d_183/Conv3DConv3Dtf.concat_269/concat:output:0(conv3d_183/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_183/Conv3D­
!conv3d_183/BiasAdd/ReadVariableOpReadVariableOp*conv3d_183_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_183/BiasAdd/ReadVariableOpЯ
conv3d_183/BiasAddBiasAddconv3d_183/Conv3D:output:0)conv3d_183/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_183/BiasAdd
conv3d_183/SoftplusSoftplusconv3d_183/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_183/SoftplusК
 conv3d_184/Conv3D/ReadVariableOpReadVariableOp)conv3d_184_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_184/Conv3D/ReadVariableOpќ
conv3d_184/Conv3DConv3D!conv3d_183/Softplus:activations:0(conv3d_184/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_184/Conv3D­
!conv3d_184/BiasAdd/ReadVariableOpReadVariableOp*conv3d_184_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_184/BiasAdd/ReadVariableOpЯ
conv3d_184/BiasAddBiasAddconv3d_184/Conv3D:output:0)conv3d_184/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_184/BiasAdd
IdentityIdentityconv3d_184/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp"^conv3d_176/BiasAdd/ReadVariableOp!^conv3d_176/Conv3D/ReadVariableOp"^conv3d_177/BiasAdd/ReadVariableOp!^conv3d_177/Conv3D/ReadVariableOp"^conv3d_178/BiasAdd/ReadVariableOp!^conv3d_178/Conv3D/ReadVariableOp"^conv3d_179/BiasAdd/ReadVariableOp!^conv3d_179/Conv3D/ReadVariableOp"^conv3d_180/BiasAdd/ReadVariableOp!^conv3d_180/Conv3D/ReadVariableOp"^conv3d_181/BiasAdd/ReadVariableOp!^conv3d_181/Conv3D/ReadVariableOp"^conv3d_182/BiasAdd/ReadVariableOp!^conv3d_182/Conv3D/ReadVariableOp"^conv3d_183/BiasAdd/ReadVariableOp!^conv3d_183/Conv3D/ReadVariableOp"^conv3d_184/BiasAdd/ReadVariableOp!^conv3d_184/Conv3D/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_176/BiasAdd/ReadVariableOp!conv3d_176/BiasAdd/ReadVariableOp2D
 conv3d_176/Conv3D/ReadVariableOp conv3d_176/Conv3D/ReadVariableOp2F
!conv3d_177/BiasAdd/ReadVariableOp!conv3d_177/BiasAdd/ReadVariableOp2D
 conv3d_177/Conv3D/ReadVariableOp conv3d_177/Conv3D/ReadVariableOp2F
!conv3d_178/BiasAdd/ReadVariableOp!conv3d_178/BiasAdd/ReadVariableOp2D
 conv3d_178/Conv3D/ReadVariableOp conv3d_178/Conv3D/ReadVariableOp2F
!conv3d_179/BiasAdd/ReadVariableOp!conv3d_179/BiasAdd/ReadVariableOp2D
 conv3d_179/Conv3D/ReadVariableOp conv3d_179/Conv3D/ReadVariableOp2F
!conv3d_180/BiasAdd/ReadVariableOp!conv3d_180/BiasAdd/ReadVariableOp2D
 conv3d_180/Conv3D/ReadVariableOp conv3d_180/Conv3D/ReadVariableOp2F
!conv3d_181/BiasAdd/ReadVariableOp!conv3d_181/BiasAdd/ReadVariableOp2D
 conv3d_181/Conv3D/ReadVariableOp conv3d_181/Conv3D/ReadVariableOp2F
!conv3d_182/BiasAdd/ReadVariableOp!conv3d_182/BiasAdd/ReadVariableOp2D
 conv3d_182/Conv3D/ReadVariableOp conv3d_182/Conv3D/ReadVariableOp2F
!conv3d_183/BiasAdd/ReadVariableOp!conv3d_183/BiasAdd/ReadVariableOp2D
 conv3d_183/Conv3D/ReadVariableOp conv3d_183/Conv3D/ReadVariableOp2F
!conv3d_184/BiasAdd/ReadVariableOp!conv3d_184/BiasAdd/ReadVariableOp2D
 conv3d_184/Conv3D/ReadVariableOp conv3d_184/Conv3D/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
	
m
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9893473

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
Э

G__inference_conv3d_177_layer_call_and_return_conditional_losses_9893486

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
П
Ѕ
,__inference_conv3d_176_layer_call_fn_9894833

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
G__inference_conv3d_176_layer_call_and_return_conditional_losses_98934592
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
Ц№
Д
E__inference_model_40_layer_call_and_return_conditional_losses_9894807

inputsG
)conv3d_176_conv3d_readvariableop_resource: 8
*conv3d_176_biasadd_readvariableop_resource: G
)conv3d_177_conv3d_readvariableop_resource: 8
*conv3d_177_biasadd_readvariableop_resource:G
)conv3d_178_conv3d_readvariableop_resource:8
*conv3d_178_biasadd_readvariableop_resource:G
)conv3d_179_conv3d_readvariableop_resource:8
*conv3d_179_biasadd_readvariableop_resource:9
'dense_40_matmul_readvariableop_resource:@@6
(dense_40_biasadd_readvariableop_resource:@G
)conv3d_180_conv3d_readvariableop_resource:8
*conv3d_180_biasadd_readvariableop_resource:G
)conv3d_181_conv3d_readvariableop_resource:8
*conv3d_181_biasadd_readvariableop_resource:G
)conv3d_182_conv3d_readvariableop_resource:8
*conv3d_182_biasadd_readvariableop_resource:G
)conv3d_183_conv3d_readvariableop_resource:0 8
*conv3d_183_biasadd_readvariableop_resource: G
)conv3d_184_conv3d_readvariableop_resource: 8
*conv3d_184_biasadd_readvariableop_resource:
identityЂ!conv3d_176/BiasAdd/ReadVariableOpЂ conv3d_176/Conv3D/ReadVariableOpЂ!conv3d_177/BiasAdd/ReadVariableOpЂ conv3d_177/Conv3D/ReadVariableOpЂ!conv3d_178/BiasAdd/ReadVariableOpЂ conv3d_178/Conv3D/ReadVariableOpЂ!conv3d_179/BiasAdd/ReadVariableOpЂ conv3d_179/Conv3D/ReadVariableOpЂ!conv3d_180/BiasAdd/ReadVariableOpЂ conv3d_180/Conv3D/ReadVariableOpЂ!conv3d_181/BiasAdd/ReadVariableOpЂ conv3d_181/Conv3D/ReadVariableOpЂ!conv3d_182/BiasAdd/ReadVariableOpЂ conv3d_182/Conv3D/ReadVariableOpЂ!conv3d_183/BiasAdd/ReadVariableOpЂ conv3d_183/Conv3D/ReadVariableOpЂ!conv3d_184/BiasAdd/ReadVariableOpЂ conv3d_184/Conv3D/ReadVariableOpЂdense_40/BiasAdd/ReadVariableOpЂdense_40/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_226/strided_slice/stackЙ
2tf.__operators__.getitem_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_226/strided_slice/stack_1Й
2tf.__operators__.getitem_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_226/strided_slice/stack_2
*tf.__operators__.getitem_226/strided_sliceStridedSliceinputs9tf.__operators__.getitem_226/strided_slice/stack:output:0;tf.__operators__.getitem_226/strided_slice/stack_1:output:0;tf.__operators__.getitem_226/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_226/strided_slice{
range_conversion_40/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_40/sub/yа
range_conversion_40/subSub3tf.__operators__.getitem_226/strided_slice:output:0"range_conversion_40/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/sub
range_conversion_40/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_40/truediv/yШ
range_conversion_40/truedivRealDivrange_conversion_40/sub:z:0&range_conversion_40/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/truediv{
range_conversion_40/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_40/mul/yМ
range_conversion_40/mulMulrange_conversion_40/truediv:z:0"range_conversion_40/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/mul{
range_conversion_40/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_40/add/yК
range_conversion_40/addAddV2range_conversion_40/mul:z:0"range_conversion_40/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_40/addЕ
0tf.__operators__.getitem_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_227/strided_slice/stackЙ
2tf.__operators__.getitem_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_227/strided_slice/stack_1Й
2tf.__operators__.getitem_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_227/strided_slice/stack_2
*tf.__operators__.getitem_227/strided_sliceStridedSliceinputs9tf.__operators__.getitem_227/strided_slice/stack:output:0;tf.__operators__.getitem_227/strided_slice/stack_1:output:0;tf.__operators__.getitem_227/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_227/strided_slicex
tf.concat_265/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_265/concat/axisѕ
tf.concat_265/concatConcatV2range_conversion_40/add:z:03tf.__operators__.getitem_227/strided_slice:output:0"tf.concat_265/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_265/concatК
 conv3d_176/Conv3D/ReadVariableOpReadVariableOp)conv3d_176_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_176/Conv3D/ReadVariableOpј
conv3d_176/Conv3DConv3Dtf.concat_265/concat:output:0(conv3d_176/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_176/Conv3D­
!conv3d_176/BiasAdd/ReadVariableOpReadVariableOp*conv3d_176_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_176/BiasAdd/ReadVariableOpЯ
conv3d_176/BiasAddBiasAddconv3d_176/Conv3D:output:0)conv3d_176/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_176/BiasAdd
conv3d_176/SoftplusSoftplusconv3d_176/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_176/SoftplusЇ
#average_pooling3d_68/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_68/transpose/permм
average_pooling3d_68/transpose	Transpose!conv3d_176/Softplus:activations:0,average_pooling3d_68/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2 
average_pooling3d_68/transposeэ
average_pooling3d_68/AvgPool3D	AvgPool3D"average_pooling3d_68/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_68/AvgPool3DЋ
%average_pooling3d_68/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_68/transpose_1/permш
 average_pooling3d_68/transpose_1	Transpose'average_pooling3d_68/AvgPool3D:output:0.average_pooling3d_68/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2"
 average_pooling3d_68/transpose_1К
 conv3d_177/Conv3D/ReadVariableOpReadVariableOp)conv3d_177_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_177/Conv3D/ReadVariableOpџ
conv3d_177/Conv3DConv3D$average_pooling3d_68/transpose_1:y:0(conv3d_177/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_177/Conv3D­
!conv3d_177/BiasAdd/ReadVariableOpReadVariableOp*conv3d_177_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_177/BiasAdd/ReadVariableOpЯ
conv3d_177/BiasAddBiasAddconv3d_177/Conv3D:output:0)conv3d_177/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_177/BiasAdd
conv3d_177/SoftplusSoftplusconv3d_177/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_177/SoftplusЇ
#average_pooling3d_69/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_69/transpose/permм
average_pooling3d_69/transpose	Transpose!conv3d_177/Softplus:activations:0,average_pooling3d_69/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_69/transposeэ
average_pooling3d_69/AvgPool3D	AvgPool3D"average_pooling3d_69/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_69/AvgPool3DЋ
%average_pooling3d_69/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_69/transpose_1/permш
 average_pooling3d_69/transpose_1	Transpose'average_pooling3d_69/AvgPool3D:output:0.average_pooling3d_69/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_69/transpose_1К
 conv3d_178/Conv3D/ReadVariableOpReadVariableOp)conv3d_178_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_178/Conv3D/ReadVariableOpџ
conv3d_178/Conv3DConv3D$average_pooling3d_69/transpose_1:y:0(conv3d_178/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_178/Conv3D­
!conv3d_178/BiasAdd/ReadVariableOpReadVariableOp*conv3d_178_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_178/BiasAdd/ReadVariableOpЯ
conv3d_178/BiasAddBiasAddconv3d_178/Conv3D:output:0)conv3d_178/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_178/BiasAdd
conv3d_178/SoftplusSoftplusconv3d_178/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_178/SoftplusЇ
#average_pooling3d_70/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_70/transpose/permм
average_pooling3d_70/transpose	Transpose!conv3d_178/Softplus:activations:0,average_pooling3d_70/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_70/transposeэ
average_pooling3d_70/AvgPool3D	AvgPool3D"average_pooling3d_70/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_70/AvgPool3DЋ
%average_pooling3d_70/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_70/transpose_1/permш
 average_pooling3d_70/transpose_1	Transpose'average_pooling3d_70/AvgPool3D:output:0.average_pooling3d_70/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_70/transpose_1К
 conv3d_179/Conv3D/ReadVariableOpReadVariableOp)conv3d_179_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_179/Conv3D/ReadVariableOpџ
conv3d_179/Conv3DConv3D$average_pooling3d_70/transpose_1:y:0(conv3d_179/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_179/Conv3D­
!conv3d_179/BiasAdd/ReadVariableOpReadVariableOp*conv3d_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_179/BiasAdd/ReadVariableOpЯ
conv3d_179/BiasAddBiasAddconv3d_179/Conv3D:output:0)conv3d_179/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_179/BiasAdd
conv3d_179/SoftplusSoftplusconv3d_179/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_179/SoftplusЇ
#average_pooling3d_71/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_71/transpose/permм
average_pooling3d_71/transpose	Transpose!conv3d_179/Softplus:activations:0,average_pooling3d_71/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_71/transposeэ
average_pooling3d_71/AvgPool3D	AvgPool3D"average_pooling3d_71/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_71/AvgPool3DЋ
%average_pooling3d_71/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_71/transpose_1/permш
 average_pooling3d_71/transpose_1	Transpose'average_pooling3d_71/AvgPool3D:output:0.average_pooling3d_71/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_71/transpose_1x
reshape_80/ShapeShape$average_pooling3d_71/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_80/Shape
reshape_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_80/strided_slice/stack
 reshape_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_1
 reshape_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_2Є
reshape_80/strided_sliceStridedSlicereshape_80/Shape:output:0'reshape_80/strided_slice/stack:output:0)reshape_80/strided_slice/stack_1:output:0)reshape_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_80/strided_slicez
reshape_80/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_80/Reshape/shape/1В
reshape_80/Reshape/shapePack!reshape_80/strided_slice:output:0#reshape_80/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_80/Reshape/shapeЎ
reshape_80/ReshapeReshape$average_pooling3d_71/transpose_1:y:0!reshape_80/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_80/ReshapeЈ
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_40/MatMul/ReadVariableOpЃ
dense_40/MatMulMatMulreshape_80/Reshape:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_40/MatMulЇ
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_40/BiasAdd/ReadVariableOpЅ
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_40/BiasAdd
dense_40/SoftplusSoftplusdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_40/Softpluss
reshape_81/ShapeShapedense_40/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_81/Shape
reshape_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_81/strided_slice/stack
 reshape_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_1
 reshape_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_2Є
reshape_81/strided_sliceStridedSlicereshape_81/Shape:output:0'reshape_81/strided_slice/stack:output:0)reshape_81/strided_slice/stack_1:output:0)reshape_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_81/strided_slicez
reshape_81/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/1z
reshape_81/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/2z
reshape_81/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/3z
reshape_81/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/4Ё
reshape_81/Reshape/shapePack!reshape_81/strided_slice:output:0#reshape_81/Reshape/shape/1:output:0#reshape_81/Reshape/shape/2:output:0#reshape_81/Reshape/shape/3:output:0#reshape_81/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_81/Reshape/shapeЕ
reshape_81/ReshapeReshapedense_40/Softplus:activations:0!reshape_81/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_81/ReshapeЅ
tf.reshape_304/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_304/Reshape/shapeЩ
tf.reshape_304/ReshapeReshapereshape_81/Reshape:output:0%tf.reshape_304/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_304/ReshapeЁ
tf.tile_152/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_152/Tile/multiplesМ
tf.tile_152/TileTiletf.reshape_304/Reshape:output:0#tf.tile_152/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_152/Tile
tf.reshape_305/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_305/Reshape/shapeЛ
tf.reshape_305/ReshapeReshapetf.tile_152/Tile:output:0%tf.reshape_305/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_305/Reshapex
tf.concat_266/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_266/concat/axisч
tf.concat_266/concatConcatV2tf.reshape_305/Reshape:output:0!conv3d_179/Softplus:activations:0"tf.concat_266/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_266/concatК
 conv3d_180/Conv3D/ReadVariableOpReadVariableOp)conv3d_180_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_180/Conv3D/ReadVariableOpј
conv3d_180/Conv3DConv3Dtf.concat_266/concat:output:0(conv3d_180/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_180/Conv3D­
!conv3d_180/BiasAdd/ReadVariableOpReadVariableOp*conv3d_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_180/BiasAdd/ReadVariableOpЯ
conv3d_180/BiasAddBiasAddconv3d_180/Conv3D:output:0)conv3d_180/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_180/BiasAdd
conv3d_180/SoftplusSoftplusconv3d_180/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_180/SoftplusЅ
tf.reshape_306/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_306/Reshape/shapeЯ
tf.reshape_306/ReshapeReshape!conv3d_180/Softplus:activations:0%tf.reshape_306/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_306/ReshapeЁ
tf.tile_153/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_153/Tile/multiplesМ
tf.tile_153/TileTiletf.reshape_306/Reshape:output:0#tf.tile_153/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_153/Tile
tf.reshape_307/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_307/Reshape/shapeЛ
tf.reshape_307/ReshapeReshapetf.tile_153/Tile:output:0%tf.reshape_307/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_307/Reshapex
tf.concat_267/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_267/concat/axisч
tf.concat_267/concatConcatV2tf.reshape_307/Reshape:output:0!conv3d_178/Softplus:activations:0"tf.concat_267/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_267/concatК
 conv3d_181/Conv3D/ReadVariableOpReadVariableOp)conv3d_181_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_181/Conv3D/ReadVariableOpј
conv3d_181/Conv3DConv3Dtf.concat_267/concat:output:0(conv3d_181/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_181/Conv3D­
!conv3d_181/BiasAdd/ReadVariableOpReadVariableOp*conv3d_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_181/BiasAdd/ReadVariableOpЯ
conv3d_181/BiasAddBiasAddconv3d_181/Conv3D:output:0)conv3d_181/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_181/BiasAdd
conv3d_181/SoftplusSoftplusconv3d_181/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_181/SoftplusЅ
tf.reshape_308/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_308/Reshape/shapeЯ
tf.reshape_308/ReshapeReshape!conv3d_181/Softplus:activations:0%tf.reshape_308/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_308/ReshapeЁ
tf.tile_154/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_154/Tile/multiplesМ
tf.tile_154/TileTiletf.reshape_308/Reshape:output:0#tf.tile_154/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_154/Tile
tf.reshape_309/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_309/Reshape/shapeЛ
tf.reshape_309/ReshapeReshapetf.tile_154/Tile:output:0%tf.reshape_309/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_309/Reshapex
tf.concat_268/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_268/concat/axisч
tf.concat_268/concatConcatV2tf.reshape_309/Reshape:output:0!conv3d_177/Softplus:activations:0"tf.concat_268/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_268/concatК
 conv3d_182/Conv3D/ReadVariableOpReadVariableOp)conv3d_182_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_182/Conv3D/ReadVariableOpј
conv3d_182/Conv3DConv3Dtf.concat_268/concat:output:0(conv3d_182/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_182/Conv3D­
!conv3d_182/BiasAdd/ReadVariableOpReadVariableOp*conv3d_182_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_182/BiasAdd/ReadVariableOpЯ
conv3d_182/BiasAddBiasAddconv3d_182/Conv3D:output:0)conv3d_182/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_182/BiasAdd
conv3d_182/SoftplusSoftplusconv3d_182/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_182/SoftplusЅ
tf.reshape_310/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_310/Reshape/shapeЯ
tf.reshape_310/ReshapeReshape!conv3d_182/Softplus:activations:0%tf.reshape_310/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_310/ReshapeЁ
tf.tile_155/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_155/Tile/multiplesМ
tf.tile_155/TileTiletf.reshape_310/Reshape:output:0#tf.tile_155/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_155/Tile
tf.reshape_311/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_311/Reshape/shapeЛ
tf.reshape_311/ReshapeReshapetf.tile_155/Tile:output:0%tf.reshape_311/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_311/Reshapex
tf.concat_269/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_269/concat/axisч
tf.concat_269/concatConcatV2tf.reshape_311/Reshape:output:0!conv3d_176/Softplus:activations:0"tf.concat_269/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_269/concatК
 conv3d_183/Conv3D/ReadVariableOpReadVariableOp)conv3d_183_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_183/Conv3D/ReadVariableOpј
conv3d_183/Conv3DConv3Dtf.concat_269/concat:output:0(conv3d_183/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_183/Conv3D­
!conv3d_183/BiasAdd/ReadVariableOpReadVariableOp*conv3d_183_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_183/BiasAdd/ReadVariableOpЯ
conv3d_183/BiasAddBiasAddconv3d_183/Conv3D:output:0)conv3d_183/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_183/BiasAdd
conv3d_183/SoftplusSoftplusconv3d_183/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_183/SoftplusК
 conv3d_184/Conv3D/ReadVariableOpReadVariableOp)conv3d_184_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_184/Conv3D/ReadVariableOpќ
conv3d_184/Conv3DConv3D!conv3d_183/Softplus:activations:0(conv3d_184/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_184/Conv3D­
!conv3d_184/BiasAdd/ReadVariableOpReadVariableOp*conv3d_184_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_184/BiasAdd/ReadVariableOpЯ
conv3d_184/BiasAddBiasAddconv3d_184/Conv3D:output:0)conv3d_184/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_184/BiasAdd
IdentityIdentityconv3d_184/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp"^conv3d_176/BiasAdd/ReadVariableOp!^conv3d_176/Conv3D/ReadVariableOp"^conv3d_177/BiasAdd/ReadVariableOp!^conv3d_177/Conv3D/ReadVariableOp"^conv3d_178/BiasAdd/ReadVariableOp!^conv3d_178/Conv3D/ReadVariableOp"^conv3d_179/BiasAdd/ReadVariableOp!^conv3d_179/Conv3D/ReadVariableOp"^conv3d_180/BiasAdd/ReadVariableOp!^conv3d_180/Conv3D/ReadVariableOp"^conv3d_181/BiasAdd/ReadVariableOp!^conv3d_181/Conv3D/ReadVariableOp"^conv3d_182/BiasAdd/ReadVariableOp!^conv3d_182/Conv3D/ReadVariableOp"^conv3d_183/BiasAdd/ReadVariableOp!^conv3d_183/Conv3D/ReadVariableOp"^conv3d_184/BiasAdd/ReadVariableOp!^conv3d_184/Conv3D/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_176/BiasAdd/ReadVariableOp!conv3d_176/BiasAdd/ReadVariableOp2D
 conv3d_176/Conv3D/ReadVariableOp conv3d_176/Conv3D/ReadVariableOp2F
!conv3d_177/BiasAdd/ReadVariableOp!conv3d_177/BiasAdd/ReadVariableOp2D
 conv3d_177/Conv3D/ReadVariableOp conv3d_177/Conv3D/ReadVariableOp2F
!conv3d_178/BiasAdd/ReadVariableOp!conv3d_178/BiasAdd/ReadVariableOp2D
 conv3d_178/Conv3D/ReadVariableOp conv3d_178/Conv3D/ReadVariableOp2F
!conv3d_179/BiasAdd/ReadVariableOp!conv3d_179/BiasAdd/ReadVariableOp2D
 conv3d_179/Conv3D/ReadVariableOp conv3d_179/Conv3D/ReadVariableOp2F
!conv3d_180/BiasAdd/ReadVariableOp!conv3d_180/BiasAdd/ReadVariableOp2D
 conv3d_180/Conv3D/ReadVariableOp conv3d_180/Conv3D/ReadVariableOp2F
!conv3d_181/BiasAdd/ReadVariableOp!conv3d_181/BiasAdd/ReadVariableOp2D
 conv3d_181/Conv3D/ReadVariableOp conv3d_181/Conv3D/ReadVariableOp2F
!conv3d_182/BiasAdd/ReadVariableOp!conv3d_182/BiasAdd/ReadVariableOp2D
 conv3d_182/Conv3D/ReadVariableOp conv3d_182/Conv3D/ReadVariableOp2F
!conv3d_183/BiasAdd/ReadVariableOp!conv3d_183/BiasAdd/ReadVariableOp2D
 conv3d_183/Conv3D/ReadVariableOp conv3d_183/Conv3D/ReadVariableOp2F
!conv3d_184/BiasAdd/ReadVariableOp!conv3d_184/BiasAdd/ReadVariableOp2D
 conv3d_184/Conv3D/ReadVariableOp conv3d_184/Conv3D/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs

R
6__inference_average_pooling3d_71_layer_call_fn_9894998

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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_98935542
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
Ћ


E__inference_model_40_layer_call_and_return_conditional_losses_9894243	
input0
conv3d_176_9894154:  
conv3d_176_9894156: 0
conv3d_177_9894160:  
conv3d_177_9894162:0
conv3d_178_9894166: 
conv3d_178_9894168:0
conv3d_179_9894172: 
conv3d_179_9894174:"
dense_40_9894179:@@
dense_40_9894181:@0
conv3d_180_9894193: 
conv3d_180_9894195:0
conv3d_181_9894206: 
conv3d_181_9894208:0
conv3d_182_9894219: 
conv3d_182_9894221:0
conv3d_183_9894232:0  
conv3d_183_9894234: 0
conv3d_184_9894237:  
conv3d_184_9894239:
identityЂ"conv3d_176/StatefulPartitionedCallЂ"conv3d_177/StatefulPartitionedCallЂ"conv3d_178/StatefulPartitionedCallЂ"conv3d_179/StatefulPartitionedCallЂ"conv3d_180/StatefulPartitionedCallЂ"conv3d_181/StatefulPartitionedCallЂ"conv3d_182/StatefulPartitionedCallЂ"conv3d_183/StatefulPartitionedCallЂ"conv3d_184/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЕ
0tf.__operators__.getitem_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_226/strided_slice/stackЙ
2tf.__operators__.getitem_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_226/strided_slice/stack_1Й
2tf.__operators__.getitem_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_226/strided_slice/stack_2
*tf.__operators__.getitem_226/strided_sliceStridedSliceinput9tf.__operators__.getitem_226/strided_slice/stack:output:0;tf.__operators__.getitem_226/strided_slice/stack_1:output:0;tf.__operators__.getitem_226/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_226/strided_sliceК
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_226/strided_slice:output:0*
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
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_98934402%
#range_conversion_40/PartitionedCallЕ
0tf.__operators__.getitem_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_227/strided_slice/stackЙ
2tf.__operators__.getitem_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_227/strided_slice/stack_1Й
2tf.__operators__.getitem_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_227/strided_slice/stack_2
*tf.__operators__.getitem_227/strided_sliceStridedSliceinput9tf.__operators__.getitem_227/strided_slice/stack:output:0;tf.__operators__.getitem_227/strided_slice/stack_1:output:0;tf.__operators__.getitem_227/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_227/strided_slicex
tf.concat_265/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_265/concat/axis
tf.concat_265/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_227/strided_slice:output:0"tf.concat_265/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_265/concatЯ
"conv3d_176/StatefulPartitionedCallStatefulPartitionedCalltf.concat_265/concat:output:0conv3d_176_9894154conv3d_176_9894156*
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
G__inference_conv3d_176_layer_call_and_return_conditional_losses_98934592$
"conv3d_176/StatefulPartitionedCallЕ
$average_pooling3d_68/PartitionedCallPartitionedCall+conv3d_176/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_98934732&
$average_pooling3d_68/PartitionedCallп
"conv3d_177/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_68/PartitionedCall:output:0conv3d_177_9894160conv3d_177_9894162*
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
G__inference_conv3d_177_layer_call_and_return_conditional_losses_98934862$
"conv3d_177/StatefulPartitionedCallЕ
$average_pooling3d_69/PartitionedCallPartitionedCall+conv3d_177/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_98935002&
$average_pooling3d_69/PartitionedCallп
"conv3d_178/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_69/PartitionedCall:output:0conv3d_178_9894166conv3d_178_9894168*
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
G__inference_conv3d_178_layer_call_and_return_conditional_losses_98935132$
"conv3d_178/StatefulPartitionedCallЕ
$average_pooling3d_70/PartitionedCallPartitionedCall+conv3d_178/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_98935272&
$average_pooling3d_70/PartitionedCallп
"conv3d_179/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_70/PartitionedCall:output:0conv3d_179_9894172conv3d_179_9894174*
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
G__inference_conv3d_179_layer_call_and_return_conditional_losses_98935402$
"conv3d_179/StatefulPartitionedCallЕ
$average_pooling3d_71/PartitionedCallPartitionedCall+conv3d_179/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_98935542&
$average_pooling3d_71/PartitionedCall
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_71/PartitionedCall:output:0*
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
G__inference_reshape_80_layer_call_and_return_conditional_losses_98935682
reshape_80/PartitionedCallП
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_9894179dense_40_9894181*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_98935812"
 dense_40/StatefulPartitionedCall
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
G__inference_reshape_81_layer_call_and_return_conditional_losses_98936022
reshape_81/PartitionedCallЅ
tf.reshape_304/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_304/Reshape/shapeб
tf.reshape_304/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_304/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_304/ReshapeЁ
tf.tile_152/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_152/Tile/multiplesМ
tf.tile_152/TileTiletf.reshape_304/Reshape:output:0#tf.tile_152/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_152/Tile
tf.reshape_305/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_305/Reshape/shapeЛ
tf.reshape_305/ReshapeReshapetf.tile_152/Tile:output:0%tf.reshape_305/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_305/Reshapex
tf.concat_266/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_266/concat/axisё
tf.concat_266/concatConcatV2tf.reshape_305/Reshape:output:0+conv3d_179/StatefulPartitionedCall:output:0"tf.concat_266/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_266/concatЯ
"conv3d_180/StatefulPartitionedCallStatefulPartitionedCalltf.concat_266/concat:output:0conv3d_180_9894193conv3d_180_9894195*
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
G__inference_conv3d_180_layer_call_and_return_conditional_losses_98936232$
"conv3d_180/StatefulPartitionedCallЅ
tf.reshape_306/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_306/Reshape/shapeй
tf.reshape_306/ReshapeReshape+conv3d_180/StatefulPartitionedCall:output:0%tf.reshape_306/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_306/ReshapeЁ
tf.tile_153/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_153/Tile/multiplesМ
tf.tile_153/TileTiletf.reshape_306/Reshape:output:0#tf.tile_153/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_153/Tile
tf.reshape_307/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_307/Reshape/shapeЛ
tf.reshape_307/ReshapeReshapetf.tile_153/Tile:output:0%tf.reshape_307/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_307/Reshapex
tf.concat_267/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_267/concat/axisё
tf.concat_267/concatConcatV2tf.reshape_307/Reshape:output:0+conv3d_178/StatefulPartitionedCall:output:0"tf.concat_267/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_267/concatЯ
"conv3d_181/StatefulPartitionedCallStatefulPartitionedCalltf.concat_267/concat:output:0conv3d_181_9894206conv3d_181_9894208*
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
G__inference_conv3d_181_layer_call_and_return_conditional_losses_98936482$
"conv3d_181/StatefulPartitionedCallЅ
tf.reshape_308/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_308/Reshape/shapeй
tf.reshape_308/ReshapeReshape+conv3d_181/StatefulPartitionedCall:output:0%tf.reshape_308/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_308/ReshapeЁ
tf.tile_154/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_154/Tile/multiplesМ
tf.tile_154/TileTiletf.reshape_308/Reshape:output:0#tf.tile_154/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_154/Tile
tf.reshape_309/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_309/Reshape/shapeЛ
tf.reshape_309/ReshapeReshapetf.tile_154/Tile:output:0%tf.reshape_309/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_309/Reshapex
tf.concat_268/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_268/concat/axisё
tf.concat_268/concatConcatV2tf.reshape_309/Reshape:output:0+conv3d_177/StatefulPartitionedCall:output:0"tf.concat_268/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_268/concatЯ
"conv3d_182/StatefulPartitionedCallStatefulPartitionedCalltf.concat_268/concat:output:0conv3d_182_9894219conv3d_182_9894221*
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
G__inference_conv3d_182_layer_call_and_return_conditional_losses_98936732$
"conv3d_182/StatefulPartitionedCallЅ
tf.reshape_310/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_310/Reshape/shapeй
tf.reshape_310/ReshapeReshape+conv3d_182/StatefulPartitionedCall:output:0%tf.reshape_310/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_310/ReshapeЁ
tf.tile_155/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_155/Tile/multiplesМ
tf.tile_155/TileTiletf.reshape_310/Reshape:output:0#tf.tile_155/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_155/Tile
tf.reshape_311/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_311/Reshape/shapeЛ
tf.reshape_311/ReshapeReshapetf.tile_155/Tile:output:0%tf.reshape_311/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_311/Reshapex
tf.concat_269/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_269/concat/axisё
tf.concat_269/concatConcatV2tf.reshape_311/Reshape:output:0+conv3d_176/StatefulPartitionedCall:output:0"tf.concat_269/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_269/concatЯ
"conv3d_183/StatefulPartitionedCallStatefulPartitionedCalltf.concat_269/concat:output:0conv3d_183_9894232conv3d_183_9894234*
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
G__inference_conv3d_183_layer_call_and_return_conditional_losses_98936982$
"conv3d_183/StatefulPartitionedCallн
"conv3d_184/StatefulPartitionedCallStatefulPartitionedCall+conv3d_183/StatefulPartitionedCall:output:0conv3d_184_9894237conv3d_184_9894239*
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
G__inference_conv3d_184_layer_call_and_return_conditional_losses_98937142$
"conv3d_184/StatefulPartitionedCall
IdentityIdentity+conv3d_184/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_176/StatefulPartitionedCall#^conv3d_177/StatefulPartitionedCall#^conv3d_178/StatefulPartitionedCall#^conv3d_179/StatefulPartitionedCall#^conv3d_180/StatefulPartitionedCall#^conv3d_181/StatefulPartitionedCall#^conv3d_182/StatefulPartitionedCall#^conv3d_183/StatefulPartitionedCall#^conv3d_184/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_176/StatefulPartitionedCall"conv3d_176/StatefulPartitionedCall2H
"conv3d_177/StatefulPartitionedCall"conv3d_177/StatefulPartitionedCall2H
"conv3d_178/StatefulPartitionedCall"conv3d_178/StatefulPartitionedCall2H
"conv3d_179/StatefulPartitionedCall"conv3d_179/StatefulPartitionedCall2H
"conv3d_180/StatefulPartitionedCall"conv3d_180/StatefulPartitionedCall2H
"conv3d_181/StatefulPartitionedCall"conv3d_181/StatefulPartitionedCall2H
"conv3d_182/StatefulPartitionedCall"conv3d_182/StatefulPartitionedCall2H
"conv3d_183/StatefulPartitionedCall"conv3d_183/StatefulPartitionedCall2H
"conv3d_184/StatefulPartitionedCall"conv3d_184/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
х
H
,__inference_reshape_81_layer_call_fn_9895058

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
G__inference_reshape_81_layer_call_and_return_conditional_losses_98936022
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
П
Ѕ
,__inference_conv3d_179_layer_call_fn_9894977

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
G__inference_conv3d_179_layer_call_and_return_conditional_losses_98935402
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

і
E__inference_dense_40_layer_call_and_return_conditional_losses_9895053

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

ё
*__inference_model_40_layer_call_fn_9893764	
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
E__inference_model_40_layer_call_and_return_conditional_losses_98937212
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
е

G__inference_conv3d_184_layer_call_and_return_conditional_losses_9895172

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
Э

G__inference_conv3d_178_layer_call_and_return_conditional_losses_9894940

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
і
ь
%__inference_signature_wrapper_9894393	
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
"__inference__wrapped_model_98932972
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
Ђ
R
6__inference_average_pooling3d_69_layer_call_fn_9894897

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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_98933402
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
G__inference_conv3d_179_layer_call_and_return_conditional_losses_9893540

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

c
G__inference_reshape_81_layer_call_and_return_conditional_losses_9893602

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
	
m
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9894968

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
Э

G__inference_conv3d_181_layer_call_and_return_conditional_losses_9893648

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
Ђ
R
6__inference_average_pooling3d_70_layer_call_fn_9894945

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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_98933702
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
G__inference_conv3d_180_layer_call_and_return_conditional_losses_9895093

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
	
m
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9894920

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
Ђ
R
6__inference_average_pooling3d_71_layer_call_fn_9894993

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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_98934002
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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9893400

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
е

G__inference_conv3d_184_layer_call_and_return_conditional_losses_9893714

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
	
m
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9893500

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
	
m
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9893554

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
	
m
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9894872

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
х
H
,__inference_reshape_80_layer_call_fn_9895021

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
G__inference_reshape_80_layer_call_and_return_conditional_losses_98935682
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
Ё
ђ
*__inference_model_40_layer_call_fn_9894483

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
E__inference_model_40_layer_call_and_return_conditional_losses_98940522
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

U
5__inference_range_conversion_40_layer_call_fn_9894812

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
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_98934402
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
у

m
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9894959

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
G__inference_conv3d_178_layer_call_and_return_conditional_losses_9893513

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

R
6__inference_average_pooling3d_69_layer_call_fn_9894902

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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_98935002
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
Э

G__inference_conv3d_176_layer_call_and_return_conditional_losses_9893459

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
Ћ


E__inference_model_40_layer_call_and_return_conditional_losses_9894346	
input0
conv3d_176_9894257:  
conv3d_176_9894259: 0
conv3d_177_9894263:  
conv3d_177_9894265:0
conv3d_178_9894269: 
conv3d_178_9894271:0
conv3d_179_9894275: 
conv3d_179_9894277:"
dense_40_9894282:@@
dense_40_9894284:@0
conv3d_180_9894296: 
conv3d_180_9894298:0
conv3d_181_9894309: 
conv3d_181_9894311:0
conv3d_182_9894322: 
conv3d_182_9894324:0
conv3d_183_9894335:0  
conv3d_183_9894337: 0
conv3d_184_9894340:  
conv3d_184_9894342:
identityЂ"conv3d_176/StatefulPartitionedCallЂ"conv3d_177/StatefulPartitionedCallЂ"conv3d_178/StatefulPartitionedCallЂ"conv3d_179/StatefulPartitionedCallЂ"conv3d_180/StatefulPartitionedCallЂ"conv3d_181/StatefulPartitionedCallЂ"conv3d_182/StatefulPartitionedCallЂ"conv3d_183/StatefulPartitionedCallЂ"conv3d_184/StatefulPartitionedCallЂ dense_40/StatefulPartitionedCallЕ
0tf.__operators__.getitem_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_226/strided_slice/stackЙ
2tf.__operators__.getitem_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_226/strided_slice/stack_1Й
2tf.__operators__.getitem_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_226/strided_slice/stack_2
*tf.__operators__.getitem_226/strided_sliceStridedSliceinput9tf.__operators__.getitem_226/strided_slice/stack:output:0;tf.__operators__.getitem_226/strided_slice/stack_1:output:0;tf.__operators__.getitem_226/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_226/strided_sliceК
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_226/strided_slice:output:0*
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
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_98934402%
#range_conversion_40/PartitionedCallЕ
0tf.__operators__.getitem_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_227/strided_slice/stackЙ
2tf.__operators__.getitem_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_227/strided_slice/stack_1Й
2tf.__operators__.getitem_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_227/strided_slice/stack_2
*tf.__operators__.getitem_227/strided_sliceStridedSliceinput9tf.__operators__.getitem_227/strided_slice/stack:output:0;tf.__operators__.getitem_227/strided_slice/stack_1:output:0;tf.__operators__.getitem_227/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_227/strided_slicex
tf.concat_265/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_265/concat/axis
tf.concat_265/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_227/strided_slice:output:0"tf.concat_265/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_265/concatЯ
"conv3d_176/StatefulPartitionedCallStatefulPartitionedCalltf.concat_265/concat:output:0conv3d_176_9894257conv3d_176_9894259*
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
G__inference_conv3d_176_layer_call_and_return_conditional_losses_98934592$
"conv3d_176/StatefulPartitionedCallЕ
$average_pooling3d_68/PartitionedCallPartitionedCall+conv3d_176/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_98934732&
$average_pooling3d_68/PartitionedCallп
"conv3d_177/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_68/PartitionedCall:output:0conv3d_177_9894263conv3d_177_9894265*
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
G__inference_conv3d_177_layer_call_and_return_conditional_losses_98934862$
"conv3d_177/StatefulPartitionedCallЕ
$average_pooling3d_69/PartitionedCallPartitionedCall+conv3d_177/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_98935002&
$average_pooling3d_69/PartitionedCallп
"conv3d_178/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_69/PartitionedCall:output:0conv3d_178_9894269conv3d_178_9894271*
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
G__inference_conv3d_178_layer_call_and_return_conditional_losses_98935132$
"conv3d_178/StatefulPartitionedCallЕ
$average_pooling3d_70/PartitionedCallPartitionedCall+conv3d_178/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_98935272&
$average_pooling3d_70/PartitionedCallп
"conv3d_179/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_70/PartitionedCall:output:0conv3d_179_9894275conv3d_179_9894277*
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
G__inference_conv3d_179_layer_call_and_return_conditional_losses_98935402$
"conv3d_179/StatefulPartitionedCallЕ
$average_pooling3d_71/PartitionedCallPartitionedCall+conv3d_179/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_98935542&
$average_pooling3d_71/PartitionedCall
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_71/PartitionedCall:output:0*
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
G__inference_reshape_80_layer_call_and_return_conditional_losses_98935682
reshape_80/PartitionedCallП
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_9894282dense_40_9894284*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_98935812"
 dense_40/StatefulPartitionedCall
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
G__inference_reshape_81_layer_call_and_return_conditional_losses_98936022
reshape_81/PartitionedCallЅ
tf.reshape_304/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_304/Reshape/shapeб
tf.reshape_304/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_304/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_304/ReshapeЁ
tf.tile_152/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_152/Tile/multiplesМ
tf.tile_152/TileTiletf.reshape_304/Reshape:output:0#tf.tile_152/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_152/Tile
tf.reshape_305/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_305/Reshape/shapeЛ
tf.reshape_305/ReshapeReshapetf.tile_152/Tile:output:0%tf.reshape_305/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_305/Reshapex
tf.concat_266/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_266/concat/axisё
tf.concat_266/concatConcatV2tf.reshape_305/Reshape:output:0+conv3d_179/StatefulPartitionedCall:output:0"tf.concat_266/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_266/concatЯ
"conv3d_180/StatefulPartitionedCallStatefulPartitionedCalltf.concat_266/concat:output:0conv3d_180_9894296conv3d_180_9894298*
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
G__inference_conv3d_180_layer_call_and_return_conditional_losses_98936232$
"conv3d_180/StatefulPartitionedCallЅ
tf.reshape_306/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_306/Reshape/shapeй
tf.reshape_306/ReshapeReshape+conv3d_180/StatefulPartitionedCall:output:0%tf.reshape_306/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_306/ReshapeЁ
tf.tile_153/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_153/Tile/multiplesМ
tf.tile_153/TileTiletf.reshape_306/Reshape:output:0#tf.tile_153/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_153/Tile
tf.reshape_307/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_307/Reshape/shapeЛ
tf.reshape_307/ReshapeReshapetf.tile_153/Tile:output:0%tf.reshape_307/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_307/Reshapex
tf.concat_267/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_267/concat/axisё
tf.concat_267/concatConcatV2tf.reshape_307/Reshape:output:0+conv3d_178/StatefulPartitionedCall:output:0"tf.concat_267/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_267/concatЯ
"conv3d_181/StatefulPartitionedCallStatefulPartitionedCalltf.concat_267/concat:output:0conv3d_181_9894309conv3d_181_9894311*
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
G__inference_conv3d_181_layer_call_and_return_conditional_losses_98936482$
"conv3d_181/StatefulPartitionedCallЅ
tf.reshape_308/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_308/Reshape/shapeй
tf.reshape_308/ReshapeReshape+conv3d_181/StatefulPartitionedCall:output:0%tf.reshape_308/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_308/ReshapeЁ
tf.tile_154/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_154/Tile/multiplesМ
tf.tile_154/TileTiletf.reshape_308/Reshape:output:0#tf.tile_154/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_154/Tile
tf.reshape_309/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_309/Reshape/shapeЛ
tf.reshape_309/ReshapeReshapetf.tile_154/Tile:output:0%tf.reshape_309/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_309/Reshapex
tf.concat_268/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_268/concat/axisё
tf.concat_268/concatConcatV2tf.reshape_309/Reshape:output:0+conv3d_177/StatefulPartitionedCall:output:0"tf.concat_268/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_268/concatЯ
"conv3d_182/StatefulPartitionedCallStatefulPartitionedCalltf.concat_268/concat:output:0conv3d_182_9894322conv3d_182_9894324*
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
G__inference_conv3d_182_layer_call_and_return_conditional_losses_98936732$
"conv3d_182/StatefulPartitionedCallЅ
tf.reshape_310/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_310/Reshape/shapeй
tf.reshape_310/ReshapeReshape+conv3d_182/StatefulPartitionedCall:output:0%tf.reshape_310/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_310/ReshapeЁ
tf.tile_155/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_155/Tile/multiplesМ
tf.tile_155/TileTiletf.reshape_310/Reshape:output:0#tf.tile_155/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_155/Tile
tf.reshape_311/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_311/Reshape/shapeЛ
tf.reshape_311/ReshapeReshapetf.tile_155/Tile:output:0%tf.reshape_311/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_311/Reshapex
tf.concat_269/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_269/concat/axisё
tf.concat_269/concatConcatV2tf.reshape_311/Reshape:output:0+conv3d_176/StatefulPartitionedCall:output:0"tf.concat_269/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_269/concatЯ
"conv3d_183/StatefulPartitionedCallStatefulPartitionedCalltf.concat_269/concat:output:0conv3d_183_9894335conv3d_183_9894337*
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
G__inference_conv3d_183_layer_call_and_return_conditional_losses_98936982$
"conv3d_183/StatefulPartitionedCallн
"conv3d_184/StatefulPartitionedCallStatefulPartitionedCall+conv3d_183/StatefulPartitionedCall:output:0conv3d_184_9894340conv3d_184_9894342*
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
G__inference_conv3d_184_layer_call_and_return_conditional_losses_98937142$
"conv3d_184/StatefulPartitionedCall
IdentityIdentity+conv3d_184/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_176/StatefulPartitionedCall#^conv3d_177/StatefulPartitionedCall#^conv3d_178/StatefulPartitionedCall#^conv3d_179/StatefulPartitionedCall#^conv3d_180/StatefulPartitionedCall#^conv3d_181/StatefulPartitionedCall#^conv3d_182/StatefulPartitionedCall#^conv3d_183/StatefulPartitionedCall#^conv3d_184/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_176/StatefulPartitionedCall"conv3d_176/StatefulPartitionedCall2H
"conv3d_177/StatefulPartitionedCall"conv3d_177/StatefulPartitionedCall2H
"conv3d_178/StatefulPartitionedCall"conv3d_178/StatefulPartitionedCall2H
"conv3d_179/StatefulPartitionedCall"conv3d_179/StatefulPartitionedCall2H
"conv3d_180/StatefulPartitionedCall"conv3d_180/StatefulPartitionedCall2H
"conv3d_181/StatefulPartitionedCall"conv3d_181/StatefulPartitionedCall2H
"conv3d_182/StatefulPartitionedCall"conv3d_182/StatefulPartitionedCall2H
"conv3d_183/StatefulPartitionedCall"conv3d_183/StatefulPartitionedCall2H
"conv3d_184/StatefulPartitionedCall"conv3d_184/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
у

m
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9893340

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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9893527

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
ж	
p
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_9894824

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
Э

G__inference_conv3d_176_layer_call_and_return_conditional_losses_9894844

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

R
6__inference_average_pooling3d_70_layer_call_fn_9894950

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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_98935272
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

і
E__inference_dense_40_layer_call_and_return_conditional_losses_9893581

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
П
Ѕ
,__inference_conv3d_177_layer_call_fn_9894881

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
G__inference_conv3d_177_layer_call_and_return_conditional_losses_98934862
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

ё
*__inference_model_40_layer_call_fn_9894140	
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
E__inference_model_40_layer_call_and_return_conditional_losses_98940522
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
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_9893440

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
Э

G__inference_conv3d_179_layer_call_and_return_conditional_losses_9894988

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
G__inference_conv3d_181_layer_call_and_return_conditional_losses_9895113

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
ЉX

#__inference__traced_restore_9895325
file_prefix@
"assignvariableop_conv3d_176_kernel: 0
"assignvariableop_1_conv3d_176_bias: B
$assignvariableop_2_conv3d_177_kernel: 0
"assignvariableop_3_conv3d_177_bias:B
$assignvariableop_4_conv3d_178_kernel:0
"assignvariableop_5_conv3d_178_bias:B
$assignvariableop_6_conv3d_179_kernel:0
"assignvariableop_7_conv3d_179_bias:4
"assignvariableop_8_dense_40_kernel:@@.
 assignvariableop_9_dense_40_bias:@C
%assignvariableop_10_conv3d_180_kernel:1
#assignvariableop_11_conv3d_180_bias:C
%assignvariableop_12_conv3d_181_kernel:1
#assignvariableop_13_conv3d_181_bias:C
%assignvariableop_14_conv3d_182_kernel:1
#assignvariableop_15_conv3d_182_bias:C
%assignvariableop_16_conv3d_183_kernel:0 1
#assignvariableop_17_conv3d_183_bias: C
%assignvariableop_18_conv3d_184_kernel: 1
#assignvariableop_19_conv3d_184_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_176_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ї
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_176_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Љ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_177_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ї
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_177_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Љ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_178_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ї
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_178_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Љ
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_179_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ї
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_179_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ї
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_40_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_40_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10­
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_180_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ћ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_180_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12­
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_181_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ћ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_181_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14­
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_182_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ћ
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_182_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16­
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_183_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ћ
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_183_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18­
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_184_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ћ
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_184_biasIdentity_19:output:0"/device:CPU:0*
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
П
Ѕ
,__inference_conv3d_182_layer_call_fn_9895122

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
G__inference_conv3d_182_layer_call_and_return_conditional_losses_98936732
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
Э

G__inference_conv3d_182_layer_call_and_return_conditional_losses_9893673

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
П
Ѕ
,__inference_conv3d_183_layer_call_fn_9895142

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
G__inference_conv3d_183_layer_call_and_return_conditional_losses_98936982
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
Э

G__inference_conv3d_183_layer_call_and_return_conditional_losses_9895153

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
Ћ
ј
"__inference__wrapped_model_9893297	
inputP
2model_40_conv3d_176_conv3d_readvariableop_resource: A
3model_40_conv3d_176_biasadd_readvariableop_resource: P
2model_40_conv3d_177_conv3d_readvariableop_resource: A
3model_40_conv3d_177_biasadd_readvariableop_resource:P
2model_40_conv3d_178_conv3d_readvariableop_resource:A
3model_40_conv3d_178_biasadd_readvariableop_resource:P
2model_40_conv3d_179_conv3d_readvariableop_resource:A
3model_40_conv3d_179_biasadd_readvariableop_resource:B
0model_40_dense_40_matmul_readvariableop_resource:@@?
1model_40_dense_40_biasadd_readvariableop_resource:@P
2model_40_conv3d_180_conv3d_readvariableop_resource:A
3model_40_conv3d_180_biasadd_readvariableop_resource:P
2model_40_conv3d_181_conv3d_readvariableop_resource:A
3model_40_conv3d_181_biasadd_readvariableop_resource:P
2model_40_conv3d_182_conv3d_readvariableop_resource:A
3model_40_conv3d_182_biasadd_readvariableop_resource:P
2model_40_conv3d_183_conv3d_readvariableop_resource:0 A
3model_40_conv3d_183_biasadd_readvariableop_resource: P
2model_40_conv3d_184_conv3d_readvariableop_resource: A
3model_40_conv3d_184_biasadd_readvariableop_resource:
identityЂ*model_40/conv3d_176/BiasAdd/ReadVariableOpЂ)model_40/conv3d_176/Conv3D/ReadVariableOpЂ*model_40/conv3d_177/BiasAdd/ReadVariableOpЂ)model_40/conv3d_177/Conv3D/ReadVariableOpЂ*model_40/conv3d_178/BiasAdd/ReadVariableOpЂ)model_40/conv3d_178/Conv3D/ReadVariableOpЂ*model_40/conv3d_179/BiasAdd/ReadVariableOpЂ)model_40/conv3d_179/Conv3D/ReadVariableOpЂ*model_40/conv3d_180/BiasAdd/ReadVariableOpЂ)model_40/conv3d_180/Conv3D/ReadVariableOpЂ*model_40/conv3d_181/BiasAdd/ReadVariableOpЂ)model_40/conv3d_181/Conv3D/ReadVariableOpЂ*model_40/conv3d_182/BiasAdd/ReadVariableOpЂ)model_40/conv3d_182/Conv3D/ReadVariableOpЂ*model_40/conv3d_183/BiasAdd/ReadVariableOpЂ)model_40/conv3d_183/Conv3D/ReadVariableOpЂ*model_40/conv3d_184/BiasAdd/ReadVariableOpЂ)model_40/conv3d_184/Conv3D/ReadVariableOpЂ(model_40/dense_40/BiasAdd/ReadVariableOpЂ'model_40/dense_40/MatMul/ReadVariableOpЧ
9model_40/tf.__operators__.getitem_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_40/tf.__operators__.getitem_226/strided_slice/stackЫ
;model_40/tf.__operators__.getitem_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_40/tf.__operators__.getitem_226/strided_slice/stack_1Ы
;model_40/tf.__operators__.getitem_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_40/tf.__operators__.getitem_226/strided_slice/stack_2О
3model_40/tf.__operators__.getitem_226/strided_sliceStridedSliceinputBmodel_40/tf.__operators__.getitem_226/strided_slice/stack:output:0Dmodel_40/tf.__operators__.getitem_226/strided_slice/stack_1:output:0Dmodel_40/tf.__operators__.getitem_226/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask25
3model_40/tf.__operators__.getitem_226/strided_slice
"model_40/range_conversion_40/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_40/range_conversion_40/sub/yє
 model_40/range_conversion_40/subSub<model_40/tf.__operators__.getitem_226/strided_slice:output:0+model_40/range_conversion_40/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_40/range_conversion_40/sub
&model_40/range_conversion_40/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_40/range_conversion_40/truediv/yь
$model_40/range_conversion_40/truedivRealDiv$model_40/range_conversion_40/sub:z:0/model_40/range_conversion_40/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2&
$model_40/range_conversion_40/truediv
"model_40/range_conversion_40/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_40/range_conversion_40/mul/yр
 model_40/range_conversion_40/mulMul(model_40/range_conversion_40/truediv:z:0+model_40/range_conversion_40/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_40/range_conversion_40/mul
"model_40/range_conversion_40/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2$
"model_40/range_conversion_40/add/yо
 model_40/range_conversion_40/addAddV2$model_40/range_conversion_40/mul:z:0+model_40/range_conversion_40/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_40/range_conversion_40/addЧ
9model_40/tf.__operators__.getitem_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_40/tf.__operators__.getitem_227/strided_slice/stackЫ
;model_40/tf.__operators__.getitem_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_40/tf.__operators__.getitem_227/strided_slice/stack_1Ы
;model_40/tf.__operators__.getitem_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_40/tf.__operators__.getitem_227/strided_slice/stack_2О
3model_40/tf.__operators__.getitem_227/strided_sliceStridedSliceinputBmodel_40/tf.__operators__.getitem_227/strided_slice/stack:output:0Dmodel_40/tf.__operators__.getitem_227/strided_slice/stack_1:output:0Dmodel_40/tf.__operators__.getitem_227/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask25
3model_40/tf.__operators__.getitem_227/strided_slice
"model_40/tf.concat_265/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_40/tf.concat_265/concat/axisЂ
model_40/tf.concat_265/concatConcatV2$model_40/range_conversion_40/add:z:0<model_40/tf.__operators__.getitem_227/strided_slice:output:0+model_40/tf.concat_265/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model_40/tf.concat_265/concatе
)model_40/conv3d_176/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_176_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_40/conv3d_176/Conv3D/ReadVariableOp
model_40/conv3d_176/Conv3DConv3D&model_40/tf.concat_265/concat:output:01model_40/conv3d_176/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_176/Conv3DШ
*model_40/conv3d_176/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_176_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_40/conv3d_176/BiasAdd/ReadVariableOpѓ
model_40/conv3d_176/BiasAddBiasAdd#model_40/conv3d_176/Conv3D:output:02model_40/conv3d_176/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model_40/conv3d_176/BiasAddЌ
model_40/conv3d_176/SoftplusSoftplus$model_40/conv3d_176/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model_40/conv3d_176/SoftplusЙ
,model_40/average_pooling3d_68/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_40/average_pooling3d_68/transpose/perm
'model_40/average_pooling3d_68/transpose	Transpose*model_40/conv3d_176/Softplus:activations:05model_40/average_pooling3d_68/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2)
'model_40/average_pooling3d_68/transpose
'model_40/average_pooling3d_68/AvgPool3D	AvgPool3D+model_40/average_pooling3d_68/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2)
'model_40/average_pooling3d_68/AvgPool3DН
.model_40/average_pooling3d_68/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_40/average_pooling3d_68/transpose_1/perm
)model_40/average_pooling3d_68/transpose_1	Transpose0model_40/average_pooling3d_68/AvgPool3D:output:07model_40/average_pooling3d_68/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2+
)model_40/average_pooling3d_68/transpose_1е
)model_40/conv3d_177/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_177_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_40/conv3d_177/Conv3D/ReadVariableOpЃ
model_40/conv3d_177/Conv3DConv3D-model_40/average_pooling3d_68/transpose_1:y:01model_40/conv3d_177/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_177/Conv3DШ
*model_40/conv3d_177/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_177_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_177/BiasAdd/ReadVariableOpѓ
model_40/conv3d_177/BiasAddBiasAdd#model_40/conv3d_177/Conv3D:output:02model_40/conv3d_177/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_40/conv3d_177/BiasAddЌ
model_40/conv3d_177/SoftplusSoftplus$model_40/conv3d_177/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_40/conv3d_177/SoftplusЙ
,model_40/average_pooling3d_69/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_40/average_pooling3d_69/transpose/perm
'model_40/average_pooling3d_69/transpose	Transpose*model_40/conv3d_177/Softplus:activations:05model_40/average_pooling3d_69/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2)
'model_40/average_pooling3d_69/transpose
'model_40/average_pooling3d_69/AvgPool3D	AvgPool3D+model_40/average_pooling3d_69/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_40/average_pooling3d_69/AvgPool3DН
.model_40/average_pooling3d_69/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_40/average_pooling3d_69/transpose_1/perm
)model_40/average_pooling3d_69/transpose_1	Transpose0model_40/average_pooling3d_69/AvgPool3D:output:07model_40/average_pooling3d_69/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_40/average_pooling3d_69/transpose_1е
)model_40/conv3d_178/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_178_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_178/Conv3D/ReadVariableOpЃ
model_40/conv3d_178/Conv3DConv3D-model_40/average_pooling3d_69/transpose_1:y:01model_40/conv3d_178/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_178/Conv3DШ
*model_40/conv3d_178/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_178_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_178/BiasAdd/ReadVariableOpѓ
model_40/conv3d_178/BiasAddBiasAdd#model_40/conv3d_178/Conv3D:output:02model_40/conv3d_178/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_40/conv3d_178/BiasAddЌ
model_40/conv3d_178/SoftplusSoftplus$model_40/conv3d_178/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_40/conv3d_178/SoftplusЙ
,model_40/average_pooling3d_70/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_40/average_pooling3d_70/transpose/perm
'model_40/average_pooling3d_70/transpose	Transpose*model_40/conv3d_178/Softplus:activations:05model_40/average_pooling3d_70/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_40/average_pooling3d_70/transpose
'model_40/average_pooling3d_70/AvgPool3D	AvgPool3D+model_40/average_pooling3d_70/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_40/average_pooling3d_70/AvgPool3DН
.model_40/average_pooling3d_70/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_40/average_pooling3d_70/transpose_1/perm
)model_40/average_pooling3d_70/transpose_1	Transpose0model_40/average_pooling3d_70/AvgPool3D:output:07model_40/average_pooling3d_70/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_40/average_pooling3d_70/transpose_1е
)model_40/conv3d_179/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_179_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_179/Conv3D/ReadVariableOpЃ
model_40/conv3d_179/Conv3DConv3D-model_40/average_pooling3d_70/transpose_1:y:01model_40/conv3d_179/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_179/Conv3DШ
*model_40/conv3d_179/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_179/BiasAdd/ReadVariableOpѓ
model_40/conv3d_179/BiasAddBiasAdd#model_40/conv3d_179/Conv3D:output:02model_40/conv3d_179/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_40/conv3d_179/BiasAddЌ
model_40/conv3d_179/SoftplusSoftplus$model_40/conv3d_179/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_40/conv3d_179/SoftplusЙ
,model_40/average_pooling3d_71/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_40/average_pooling3d_71/transpose/perm
'model_40/average_pooling3d_71/transpose	Transpose*model_40/conv3d_179/Softplus:activations:05model_40/average_pooling3d_71/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_40/average_pooling3d_71/transpose
'model_40/average_pooling3d_71/AvgPool3D	AvgPool3D+model_40/average_pooling3d_71/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_40/average_pooling3d_71/AvgPool3DН
.model_40/average_pooling3d_71/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_40/average_pooling3d_71/transpose_1/perm
)model_40/average_pooling3d_71/transpose_1	Transpose0model_40/average_pooling3d_71/AvgPool3D:output:07model_40/average_pooling3d_71/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_40/average_pooling3d_71/transpose_1
model_40/reshape_80/ShapeShape-model_40/average_pooling3d_71/transpose_1:y:0*
T0*
_output_shapes
:2
model_40/reshape_80/Shape
'model_40/reshape_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_40/reshape_80/strided_slice/stack 
)model_40/reshape_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_80/strided_slice/stack_1 
)model_40/reshape_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_80/strided_slice/stack_2к
!model_40/reshape_80/strided_sliceStridedSlice"model_40/reshape_80/Shape:output:00model_40/reshape_80/strided_slice/stack:output:02model_40/reshape_80/strided_slice/stack_1:output:02model_40/reshape_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_40/reshape_80/strided_slice
#model_40/reshape_80/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_40/reshape_80/Reshape/shape/1ж
!model_40/reshape_80/Reshape/shapePack*model_40/reshape_80/strided_slice:output:0,model_40/reshape_80/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_40/reshape_80/Reshape/shapeв
model_40/reshape_80/ReshapeReshape-model_40/average_pooling3d_71/transpose_1:y:0*model_40/reshape_80/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_40/reshape_80/ReshapeУ
'model_40/dense_40/MatMul/ReadVariableOpReadVariableOp0model_40_dense_40_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_40/dense_40/MatMul/ReadVariableOpЧ
model_40/dense_40/MatMulMatMul$model_40/reshape_80/Reshape:output:0/model_40/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_40/dense_40/MatMulТ
(model_40/dense_40/BiasAdd/ReadVariableOpReadVariableOp1model_40_dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_40/dense_40/BiasAdd/ReadVariableOpЩ
model_40/dense_40/BiasAddBiasAdd"model_40/dense_40/MatMul:product:00model_40/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_40/dense_40/BiasAdd
model_40/dense_40/SoftplusSoftplus"model_40/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_40/dense_40/Softplus
model_40/reshape_81/ShapeShape(model_40/dense_40/Softplus:activations:0*
T0*
_output_shapes
:2
model_40/reshape_81/Shape
'model_40/reshape_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_40/reshape_81/strided_slice/stack 
)model_40/reshape_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_81/strided_slice/stack_1 
)model_40/reshape_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_81/strided_slice/stack_2к
!model_40/reshape_81/strided_sliceStridedSlice"model_40/reshape_81/Shape:output:00model_40/reshape_81/strided_slice/stack:output:02model_40/reshape_81/strided_slice/stack_1:output:02model_40/reshape_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_40/reshape_81/strided_slice
#model_40/reshape_81/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/1
#model_40/reshape_81/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/2
#model_40/reshape_81/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/3
#model_40/reshape_81/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/4р
!model_40/reshape_81/Reshape/shapePack*model_40/reshape_81/strided_slice:output:0,model_40/reshape_81/Reshape/shape/1:output:0,model_40/reshape_81/Reshape/shape/2:output:0,model_40/reshape_81/Reshape/shape/3:output:0,model_40/reshape_81/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_40/reshape_81/Reshape/shapeй
model_40/reshape_81/ReshapeReshape(model_40/dense_40/Softplus:activations:0*model_40/reshape_81/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_40/reshape_81/ReshapeЗ
%model_40/tf.reshape_304/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_40/tf.reshape_304/Reshape/shapeэ
model_40/tf.reshape_304/ReshapeReshape$model_40/reshape_81/Reshape:output:0.model_40/tf.reshape_304/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_40/tf.reshape_304/ReshapeГ
#model_40/tf.tile_152/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_40/tf.tile_152/Tile/multiplesр
model_40/tf.tile_152/TileTile(model_40/tf.reshape_304/Reshape:output:0,model_40/tf.tile_152/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_40/tf.tile_152/TileЋ
%model_40/tf.reshape_305/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2'
%model_40/tf.reshape_305/Reshape/shapeп
model_40/tf.reshape_305/ReshapeReshape"model_40/tf.tile_152/Tile:output:0.model_40/tf.reshape_305/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
model_40/tf.reshape_305/Reshape
"model_40/tf.concat_266/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_40/tf.concat_266/concat/axis
model_40/tf.concat_266/concatConcatV2(model_40/tf.reshape_305/Reshape:output:0*model_40/conv3d_179/Softplus:activations:0+model_40/tf.concat_266/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_40/tf.concat_266/concatе
)model_40/conv3d_180/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_180_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_180/Conv3D/ReadVariableOp
model_40/conv3d_180/Conv3DConv3D&model_40/tf.concat_266/concat:output:01model_40/conv3d_180/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_180/Conv3DШ
*model_40/conv3d_180/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_180/BiasAdd/ReadVariableOpѓ
model_40/conv3d_180/BiasAddBiasAdd#model_40/conv3d_180/Conv3D:output:02model_40/conv3d_180/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_40/conv3d_180/BiasAddЌ
model_40/conv3d_180/SoftplusSoftplus$model_40/conv3d_180/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_40/conv3d_180/SoftplusЗ
%model_40/tf.reshape_306/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_40/tf.reshape_306/Reshape/shapeѓ
model_40/tf.reshape_306/ReshapeReshape*model_40/conv3d_180/Softplus:activations:0.model_40/tf.reshape_306/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_40/tf.reshape_306/ReshapeГ
#model_40/tf.tile_153/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_40/tf.tile_153/Tile/multiplesр
model_40/tf.tile_153/TileTile(model_40/tf.reshape_306/Reshape:output:0,model_40/tf.tile_153/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_40/tf.tile_153/TileЋ
%model_40/tf.reshape_307/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2'
%model_40/tf.reshape_307/Reshape/shapeп
model_40/tf.reshape_307/ReshapeReshape"model_40/tf.tile_153/Tile:output:0.model_40/tf.reshape_307/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
model_40/tf.reshape_307/Reshape
"model_40/tf.concat_267/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_40/tf.concat_267/concat/axis
model_40/tf.concat_267/concatConcatV2(model_40/tf.reshape_307/Reshape:output:0*model_40/conv3d_178/Softplus:activations:0+model_40/tf.concat_267/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_40/tf.concat_267/concatе
)model_40/conv3d_181/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_181_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_181/Conv3D/ReadVariableOp
model_40/conv3d_181/Conv3DConv3D&model_40/tf.concat_267/concat:output:01model_40/conv3d_181/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_181/Conv3DШ
*model_40/conv3d_181/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_181_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_181/BiasAdd/ReadVariableOpѓ
model_40/conv3d_181/BiasAddBiasAdd#model_40/conv3d_181/Conv3D:output:02model_40/conv3d_181/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_40/conv3d_181/BiasAddЌ
model_40/conv3d_181/SoftplusSoftplus$model_40/conv3d_181/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_40/conv3d_181/SoftplusЗ
%model_40/tf.reshape_308/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_40/tf.reshape_308/Reshape/shapeѓ
model_40/tf.reshape_308/ReshapeReshape*model_40/conv3d_181/Softplus:activations:0.model_40/tf.reshape_308/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_40/tf.reshape_308/ReshapeГ
#model_40/tf.tile_154/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_40/tf.tile_154/Tile/multiplesр
model_40/tf.tile_154/TileTile(model_40/tf.reshape_308/Reshape:output:0,model_40/tf.tile_154/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_40/tf.tile_154/TileЋ
%model_40/tf.reshape_309/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2'
%model_40/tf.reshape_309/Reshape/shapeп
model_40/tf.reshape_309/ReshapeReshape"model_40/tf.tile_154/Tile:output:0.model_40/tf.reshape_309/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2!
model_40/tf.reshape_309/Reshape
"model_40/tf.concat_268/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_40/tf.concat_268/concat/axis
model_40/tf.concat_268/concatConcatV2(model_40/tf.reshape_309/Reshape:output:0*model_40/conv3d_177/Softplus:activations:0+model_40/tf.concat_268/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_40/tf.concat_268/concatе
)model_40/conv3d_182/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_182_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_182/Conv3D/ReadVariableOp
model_40/conv3d_182/Conv3DConv3D&model_40/tf.concat_268/concat:output:01model_40/conv3d_182/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_182/Conv3DШ
*model_40/conv3d_182/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_182_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_182/BiasAdd/ReadVariableOpѓ
model_40/conv3d_182/BiasAddBiasAdd#model_40/conv3d_182/Conv3D:output:02model_40/conv3d_182/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_40/conv3d_182/BiasAddЌ
model_40/conv3d_182/SoftplusSoftplus$model_40/conv3d_182/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_40/conv3d_182/SoftplusЗ
%model_40/tf.reshape_310/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2'
%model_40/tf.reshape_310/Reshape/shapeѓ
model_40/tf.reshape_310/ReshapeReshape*model_40/conv3d_182/Softplus:activations:0.model_40/tf.reshape_310/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2!
model_40/tf.reshape_310/ReshapeГ
#model_40/tf.tile_155/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_40/tf.tile_155/Tile/multiplesр
model_40/tf.tile_155/TileTile(model_40/tf.reshape_310/Reshape:output:0,model_40/tf.tile_155/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
model_40/tf.tile_155/TileЋ
%model_40/tf.reshape_311/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2'
%model_40/tf.reshape_311/Reshape/shapeп
model_40/tf.reshape_311/ReshapeReshape"model_40/tf.tile_155/Tile:output:0.model_40/tf.reshape_311/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2!
model_40/tf.reshape_311/Reshape
"model_40/tf.concat_269/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_40/tf.concat_269/concat/axis
model_40/tf.concat_269/concatConcatV2(model_40/tf.reshape_311/Reshape:output:0*model_40/conv3d_176/Softplus:activations:0+model_40/tf.concat_269/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
model_40/tf.concat_269/concatе
)model_40/conv3d_183/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_183_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_40/conv3d_183/Conv3D/ReadVariableOp
model_40/conv3d_183/Conv3DConv3D&model_40/tf.concat_269/concat:output:01model_40/conv3d_183/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_183/Conv3DШ
*model_40/conv3d_183/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_183_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_40/conv3d_183/BiasAdd/ReadVariableOpѓ
model_40/conv3d_183/BiasAddBiasAdd#model_40/conv3d_183/Conv3D:output:02model_40/conv3d_183/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model_40/conv3d_183/BiasAddЌ
model_40/conv3d_183/SoftplusSoftplus$model_40/conv3d_183/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model_40/conv3d_183/Softplusе
)model_40/conv3d_184/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_184_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_40/conv3d_184/Conv3D/ReadVariableOp 
model_40/conv3d_184/Conv3DConv3D*model_40/conv3d_183/Softplus:activations:01model_40/conv3d_184/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_184/Conv3DШ
*model_40/conv3d_184/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_184_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_184/BiasAdd/ReadVariableOpѓ
model_40/conv3d_184/BiasAddBiasAdd#model_40/conv3d_184/Conv3D:output:02model_40/conv3d_184/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
model_40/conv3d_184/BiasAdd
IdentityIdentity$model_40/conv3d_184/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityФ
NoOpNoOp+^model_40/conv3d_176/BiasAdd/ReadVariableOp*^model_40/conv3d_176/Conv3D/ReadVariableOp+^model_40/conv3d_177/BiasAdd/ReadVariableOp*^model_40/conv3d_177/Conv3D/ReadVariableOp+^model_40/conv3d_178/BiasAdd/ReadVariableOp*^model_40/conv3d_178/Conv3D/ReadVariableOp+^model_40/conv3d_179/BiasAdd/ReadVariableOp*^model_40/conv3d_179/Conv3D/ReadVariableOp+^model_40/conv3d_180/BiasAdd/ReadVariableOp*^model_40/conv3d_180/Conv3D/ReadVariableOp+^model_40/conv3d_181/BiasAdd/ReadVariableOp*^model_40/conv3d_181/Conv3D/ReadVariableOp+^model_40/conv3d_182/BiasAdd/ReadVariableOp*^model_40/conv3d_182/Conv3D/ReadVariableOp+^model_40/conv3d_183/BiasAdd/ReadVariableOp*^model_40/conv3d_183/Conv3D/ReadVariableOp+^model_40/conv3d_184/BiasAdd/ReadVariableOp*^model_40/conv3d_184/Conv3D/ReadVariableOp)^model_40/dense_40/BiasAdd/ReadVariableOp(^model_40/dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2X
*model_40/conv3d_176/BiasAdd/ReadVariableOp*model_40/conv3d_176/BiasAdd/ReadVariableOp2V
)model_40/conv3d_176/Conv3D/ReadVariableOp)model_40/conv3d_176/Conv3D/ReadVariableOp2X
*model_40/conv3d_177/BiasAdd/ReadVariableOp*model_40/conv3d_177/BiasAdd/ReadVariableOp2V
)model_40/conv3d_177/Conv3D/ReadVariableOp)model_40/conv3d_177/Conv3D/ReadVariableOp2X
*model_40/conv3d_178/BiasAdd/ReadVariableOp*model_40/conv3d_178/BiasAdd/ReadVariableOp2V
)model_40/conv3d_178/Conv3D/ReadVariableOp)model_40/conv3d_178/Conv3D/ReadVariableOp2X
*model_40/conv3d_179/BiasAdd/ReadVariableOp*model_40/conv3d_179/BiasAdd/ReadVariableOp2V
)model_40/conv3d_179/Conv3D/ReadVariableOp)model_40/conv3d_179/Conv3D/ReadVariableOp2X
*model_40/conv3d_180/BiasAdd/ReadVariableOp*model_40/conv3d_180/BiasAdd/ReadVariableOp2V
)model_40/conv3d_180/Conv3D/ReadVariableOp)model_40/conv3d_180/Conv3D/ReadVariableOp2X
*model_40/conv3d_181/BiasAdd/ReadVariableOp*model_40/conv3d_181/BiasAdd/ReadVariableOp2V
)model_40/conv3d_181/Conv3D/ReadVariableOp)model_40/conv3d_181/Conv3D/ReadVariableOp2X
*model_40/conv3d_182/BiasAdd/ReadVariableOp*model_40/conv3d_182/BiasAdd/ReadVariableOp2V
)model_40/conv3d_182/Conv3D/ReadVariableOp)model_40/conv3d_182/Conv3D/ReadVariableOp2X
*model_40/conv3d_183/BiasAdd/ReadVariableOp*model_40/conv3d_183/BiasAdd/ReadVariableOp2V
)model_40/conv3d_183/Conv3D/ReadVariableOp)model_40/conv3d_183/Conv3D/ReadVariableOp2X
*model_40/conv3d_184/BiasAdd/ReadVariableOp*model_40/conv3d_184/BiasAdd/ReadVariableOp2V
)model_40/conv3d_184/Conv3D/ReadVariableOp)model_40/conv3d_184/Conv3D/ReadVariableOp2T
(model_40/dense_40/BiasAdd/ReadVariableOp(model_40/dense_40/BiasAdd/ReadVariableOp2R
'model_40/dense_40/MatMul/ReadVariableOp'model_40/dense_40/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
	
m
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9895016

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
у

m
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9893310

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
G__inference_reshape_80_layer_call_and_return_conditional_losses_9893568

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
Ђ
R
6__inference_average_pooling3d_68_layer_call_fn_9894849

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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_98933102
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
G__inference_conv3d_177_layer_call_and_return_conditional_losses_9894892

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

c
G__inference_reshape_80_layer_call_and_return_conditional_losses_9895033

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
Э

G__inference_conv3d_183_layer_call_and_return_conditional_losses_9893698

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
д3
Н
 __inference__traced_save_9895255
file_prefix0
,savev2_conv3d_176_kernel_read_readvariableop.
*savev2_conv3d_176_bias_read_readvariableop0
,savev2_conv3d_177_kernel_read_readvariableop.
*savev2_conv3d_177_bias_read_readvariableop0
,savev2_conv3d_178_kernel_read_readvariableop.
*savev2_conv3d_178_bias_read_readvariableop0
,savev2_conv3d_179_kernel_read_readvariableop.
*savev2_conv3d_179_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop0
,savev2_conv3d_180_kernel_read_readvariableop.
*savev2_conv3d_180_bias_read_readvariableop0
,savev2_conv3d_181_kernel_read_readvariableop.
*savev2_conv3d_181_bias_read_readvariableop0
,savev2_conv3d_182_kernel_read_readvariableop.
*savev2_conv3d_182_bias_read_readvariableop0
,savev2_conv3d_183_kernel_read_readvariableop.
*savev2_conv3d_183_bias_read_readvariableop0
,savev2_conv3d_184_kernel_read_readvariableop.
*savev2_conv3d_184_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_176_kernel_read_readvariableop*savev2_conv3d_176_bias_read_readvariableop,savev2_conv3d_177_kernel_read_readvariableop*savev2_conv3d_177_bias_read_readvariableop,savev2_conv3d_178_kernel_read_readvariableop*savev2_conv3d_178_bias_read_readvariableop,savev2_conv3d_179_kernel_read_readvariableop*savev2_conv3d_179_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop,savev2_conv3d_180_kernel_read_readvariableop*savev2_conv3d_180_bias_read_readvariableop,savev2_conv3d_181_kernel_read_readvariableop*savev2_conv3d_181_bias_read_readvariableop,savev2_conv3d_182_kernel_read_readvariableop*savev2_conv3d_182_bias_read_readvariableop,savev2_conv3d_183_kernel_read_readvariableop*savev2_conv3d_183_bias_read_readvariableop,savev2_conv3d_184_kernel_read_readvariableop*savev2_conv3d_184_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
Ё
ђ
*__inference_model_40_layer_call_fn_9894438

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
E__inference_model_40_layer_call_and_return_conditional_losses_98937212
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
П
Ѕ
,__inference_conv3d_181_layer_call_fn_9895102

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
G__inference_conv3d_181_layer_call_and_return_conditional_losses_98936482
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

conv3d_184<
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
+ё&call_and_return_all_conditional_losses
ђ_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
+	keras_api"
_tf_keras_layer
Ї
,regularization_losses
-	variables
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
4regularization_losses
5	variables
6trainable_variables
7	keras_api
ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
8regularization_losses
9	variables
:trainable_variables
;	keras_api
ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
ћ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
§__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Lregularization_losses
M	variables
Ntrainable_variables
O	keras_api
џ__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Pkernel
Qbias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
dregularization_losses
e	variables
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
nregularization_losses
o	variables
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
xregularization_losses
y	variables
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
regularization_losses
	variables
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
regularization_losses
	variables
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
regularization_losses
	variables
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
 layer_regularization_losses
layers
&regularization_losses
layer_metrics
'	variables
non_trainable_variables
(trainable_variables
metrics
№__call__
ђ_default_save_signature
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
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
 layer_regularization_losses
layers
,regularization_losses
layer_metrics
-	variables
non_trainable_variables
.trainable_variables
metrics
ѓ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/  2conv3d_176/kernel
:  2conv3d_176/bias
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
Е
  layer_regularization_losses
Ёlayers
4regularization_losses
Ђlayer_metrics
5	variables
Ѓnon_trainable_variables
6trainable_variables
Єmetrics
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
 Ѕlayer_regularization_losses
Іlayers
8regularization_losses
Їlayer_metrics
9	variables
Јnon_trainable_variables
:trainable_variables
Љmetrics
ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_177/kernel
: 2conv3d_177/bias
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
Е
 Њlayer_regularization_losses
Ћlayers
>regularization_losses
Ќlayer_metrics
?	variables
­non_trainable_variables
@trainable_variables
Ўmetrics
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
 Џlayer_regularization_losses
Аlayers
Bregularization_losses
Бlayer_metrics
C	variables
Вnon_trainable_variables
Dtrainable_variables
Гmetrics
ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_178/kernel
: 2conv3d_178/bias
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
Е
 Дlayer_regularization_losses
Еlayers
Hregularization_losses
Жlayer_metrics
I	variables
Зnon_trainable_variables
Jtrainable_variables
Иmetrics
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
 Йlayer_regularization_losses
Кlayers
Lregularization_losses
Лlayer_metrics
M	variables
Мnon_trainable_variables
Ntrainable_variables
Нmetrics
џ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_179/kernel
: 2conv3d_179/bias
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
Е
 Оlayer_regularization_losses
Пlayers
Rregularization_losses
Рlayer_metrics
S	variables
Сnon_trainable_variables
Ttrainable_variables
Тmetrics
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
 Уlayer_regularization_losses
Фlayers
Vregularization_losses
Хlayer_metrics
W	variables
Цnon_trainable_variables
Xtrainable_variables
Чmetrics
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
 Шlayer_regularization_losses
Щlayers
Zregularization_losses
Ъlayer_metrics
[	variables
Ыnon_trainable_variables
\trainable_variables
Ьmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_40/kernel
:@ 2dense_40/bias
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
Е
 Эlayer_regularization_losses
Юlayers
`regularization_losses
Яlayer_metrics
a	variables
аnon_trainable_variables
btrainable_variables
бmetrics
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
 вlayer_regularization_losses
гlayers
dregularization_losses
дlayer_metrics
e	variables
еnon_trainable_variables
ftrainable_variables
жmetrics
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
1:/ 2conv3d_180/kernel
: 2conv3d_180/bias
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
Е
 зlayer_regularization_losses
иlayers
nregularization_losses
йlayer_metrics
o	variables
кnon_trainable_variables
ptrainable_variables
лmetrics
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
1:/ 2conv3d_181/kernel
: 2conv3d_181/bias
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
Е
 мlayer_regularization_losses
нlayers
xregularization_losses
оlayer_metrics
y	variables
пnon_trainable_variables
ztrainable_variables
рmetrics
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
1:/ 2conv3d_182/kernel
: 2conv3d_182/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 сlayer_regularization_losses
тlayers
regularization_losses
уlayer_metrics
	variables
фnon_trainable_variables
trainable_variables
хmetrics
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
1:/0  2conv3d_183/kernel
:  2conv3d_183/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 цlayer_regularization_losses
чlayers
regularization_losses
шlayer_metrics
	variables
щnon_trainable_variables
trainable_variables
ъmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_184/kernel
: 2conv3d_184/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 ыlayer_regularization_losses
ьlayers
regularization_losses
эlayer_metrics
	variables
юnon_trainable_variables
trainable_variables
яmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
і2ѓ
*__inference_model_40_layer_call_fn_9893764
*__inference_model_40_layer_call_fn_9894438
*__inference_model_40_layer_call_fn_9894483
*__inference_model_40_layer_call_fn_9894140Р
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
т2п
E__inference_model_40_layer_call_and_return_conditional_losses_9894645
E__inference_model_40_layer_call_and_return_conditional_losses_9894807
E__inference_model_40_layer_call_and_return_conditional_losses_9894243
E__inference_model_40_layer_call_and_return_conditional_losses_9894346Р
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
"__inference__wrapped_model_9893297input"
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
у2р
5__inference_range_conversion_40_layer_call_fn_9894812І
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
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_9894824І
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
,__inference_conv3d_176_layer_call_fn_9894833Ђ
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
G__inference_conv3d_176_layer_call_and_return_conditional_losses_9894844Ђ
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
6__inference_average_pooling3d_68_layer_call_fn_9894849
6__inference_average_pooling3d_68_layer_call_fn_9894854Ђ
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
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9894863
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9894872Ђ
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
,__inference_conv3d_177_layer_call_fn_9894881Ђ
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
G__inference_conv3d_177_layer_call_and_return_conditional_losses_9894892Ђ
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
6__inference_average_pooling3d_69_layer_call_fn_9894897
6__inference_average_pooling3d_69_layer_call_fn_9894902Ђ
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
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9894911
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9894920Ђ
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
,__inference_conv3d_178_layer_call_fn_9894929Ђ
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
G__inference_conv3d_178_layer_call_and_return_conditional_losses_9894940Ђ
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
6__inference_average_pooling3d_70_layer_call_fn_9894945
6__inference_average_pooling3d_70_layer_call_fn_9894950Ђ
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
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9894959
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9894968Ђ
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
,__inference_conv3d_179_layer_call_fn_9894977Ђ
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
G__inference_conv3d_179_layer_call_and_return_conditional_losses_9894988Ђ
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
6__inference_average_pooling3d_71_layer_call_fn_9894993
6__inference_average_pooling3d_71_layer_call_fn_9894998Ђ
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
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9895007
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9895016Ђ
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
,__inference_reshape_80_layer_call_fn_9895021Ђ
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
G__inference_reshape_80_layer_call_and_return_conditional_losses_9895033Ђ
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
*__inference_dense_40_layer_call_fn_9895042Ђ
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
E__inference_dense_40_layer_call_and_return_conditional_losses_9895053Ђ
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
,__inference_reshape_81_layer_call_fn_9895058Ђ
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
G__inference_reshape_81_layer_call_and_return_conditional_losses_9895073Ђ
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
,__inference_conv3d_180_layer_call_fn_9895082Ђ
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
G__inference_conv3d_180_layer_call_and_return_conditional_losses_9895093Ђ
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
,__inference_conv3d_181_layer_call_fn_9895102Ђ
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
G__inference_conv3d_181_layer_call_and_return_conditional_losses_9895113Ђ
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
,__inference_conv3d_182_layer_call_fn_9895122Ђ
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
G__inference_conv3d_182_layer_call_and_return_conditional_losses_9895133Ђ
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
,__inference_conv3d_183_layer_call_fn_9895142Ђ
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
G__inference_conv3d_183_layer_call_and_return_conditional_losses_9895153Ђ
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
,__inference_conv3d_184_layer_call_fn_9895162Ђ
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
G__inference_conv3d_184_layer_call_and_return_conditional_losses_9895172Ђ
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
%__inference_signature_wrapper_9894393input"
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
"__inference__wrapped_model_989329723<=FGPQ^_lmvw:Ђ7
0Ђ-
+(
inputџџџџџџџџџ@@
Њ "CЊ@
>

conv3d_1840-

conv3d_184џџџџџџџџџ@@
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9894863И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_68_layer_call_and_return_conditional_losses_9894872p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ   
 ц
6__inference_average_pooling3d_68_layer_call_fn_9894849Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_68_layer_call_fn_9894854c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ   
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9894911И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_69_layer_call_and_return_conditional_losses_9894920p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ
 ц
6__inference_average_pooling3d_69_layer_call_fn_9894897Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_69_layer_call_fn_9894902c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9894959И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_70_layer_call_and_return_conditional_losses_9894968p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ц
6__inference_average_pooling3d_70_layer_call_fn_9894945Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_70_layer_call_fn_9894950c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџ
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9895007И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
Q__inference_average_pooling3d_71_layer_call_and_return_conditional_losses_9895016p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ц
6__inference_average_pooling3d_71_layer_call_fn_9894993Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_average_pooling3d_71_layer_call_fn_9894998c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_176_layer_call_and_return_conditional_losses_9894844t23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
,__inference_conv3d_176_layer_call_fn_9894833g23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "$!џџџџџџџџџ @@П
G__inference_conv3d_177_layer_call_and_return_conditional_losses_9894892t<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
,__inference_conv3d_177_layer_call_fn_9894881g<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "$!џџџџџџџџџ  П
G__inference_conv3d_178_layer_call_and_return_conditional_losses_9894940tFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_178_layer_call_fn_9894929gFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_179_layer_call_and_return_conditional_losses_9894988tPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_179_layer_call_fn_9894977gPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_180_layer_call_and_return_conditional_losses_9895093tlm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_180_layer_call_fn_9895082glm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџП
G__inference_conv3d_181_layer_call_and_return_conditional_losses_9895113tvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_conv3d_181_layer_call_fn_9895102gvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџС
G__inference_conv3d_182_layer_call_and_return_conditional_losses_9895133v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
,__inference_conv3d_182_layer_call_fn_9895122i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ  С
G__inference_conv3d_183_layer_call_and_return_conditional_losses_9895153v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
,__inference_conv3d_183_layer_call_fn_9895142i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "$!џџџџџџџџџ @@С
G__inference_conv3d_184_layer_call_and_return_conditional_losses_9895172v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 
,__inference_conv3d_184_layer_call_fn_9895162i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ@@Ѕ
E__inference_dense_40_layer_call_and_return_conditional_losses_9895053\^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 }
*__inference_dense_40_layer_call_fn_9895042O^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@н
E__inference_model_40_layer_call_and_return_conditional_losses_989424323<=FGPQ^_lmvwBЂ?
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
E__inference_model_40_layer_call_and_return_conditional_losses_989434623<=FGPQ^_lmvwBЂ?
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
E__inference_model_40_layer_call_and_return_conditional_losses_989464523<=FGPQ^_lmvwCЂ@
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
E__inference_model_40_layer_call_and_return_conditional_losses_989480723<=FGPQ^_lmvwCЂ@
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
*__inference_model_40_layer_call_fn_989376423<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@Е
*__inference_model_40_layer_call_fn_989414023<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@Ж
*__inference_model_40_layer_call_fn_989443823<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@Ж
*__inference_model_40_layer_call_fn_989448323<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@Ш
P__inference_range_conversion_40_layer_call_and_return_conditional_losses_9894824t?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
  
5__inference_range_conversion_40_layer_call_fn_9894812g?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "$!џџџџџџџџџ@@Џ
G__inference_reshape_80_layer_call_and_return_conditional_losses_9895033d;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 
,__inference_reshape_80_layer_call_fn_9895021W;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@Џ
G__inference_reshape_81_layer_call_and_return_conditional_losses_9895073d/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "1Ђ.
'$
0џџџџџџџџџ
 
,__inference_reshape_81_layer_call_fn_9895058W/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "$!џџџџџџџџџа
%__inference_signature_wrapper_9894393І23<=FGPQ^_lmvwCЂ@
Ђ 
9Њ6
4
input+(
inputџџџџџџџџџ@@"CЊ@
>

conv3d_1840-

conv3d_184џџџџџџџџџ@@