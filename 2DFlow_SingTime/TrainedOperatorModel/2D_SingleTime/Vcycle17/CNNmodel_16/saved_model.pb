юй
Г┘
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
╝
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258║╛
Ж
conv2d_791/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_791/kernel

%conv2d_791/kernel/Read/ReadVariableOpReadVariableOpconv2d_791/kernel*&
_output_shapes
:*
dtype0
v
conv2d_791/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_791/bias
o
#conv2d_791/bias/Read/ReadVariableOpReadVariableOpconv2d_791/bias*
_output_shapes
:*
dtype0
Ж
conv2d_792/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_792/kernel

%conv2d_792/kernel/Read/ReadVariableOpReadVariableOpconv2d_792/kernel*&
_output_shapes
:*
dtype0
v
conv2d_792/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_792/bias
o
#conv2d_792/bias/Read/ReadVariableOpReadVariableOpconv2d_792/bias*
_output_shapes
:*
dtype0
|
dense_203/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_203/kernel
u
$dense_203/kernel/Read/ReadVariableOpReadVariableOpdense_203/kernel*
_output_shapes

:@@*
dtype0
t
dense_203/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_203/bias
m
"dense_203/bias/Read/ReadVariableOpReadVariableOpdense_203/bias*
_output_shapes
:@*
dtype0
Ж
conv2d_793/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_793/kernel

%conv2d_793/kernel/Read/ReadVariableOpReadVariableOpconv2d_793/kernel*&
_output_shapes
:*
dtype0
v
conv2d_793/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_793/bias
o
#conv2d_793/bias/Read/ReadVariableOpReadVariableOpconv2d_793/bias*
_output_shapes
:*
dtype0
Ж
conv2d_794/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_794/kernel

%conv2d_794/kernel/Read/ReadVariableOpReadVariableOpconv2d_794/kernel*&
_output_shapes
:*
dtype0
v
conv2d_794/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_794/bias
o
#conv2d_794/bias/Read/ReadVariableOpReadVariableOpconv2d_794/bias*
_output_shapes
:*
dtype0
Ж
conv2d_795/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_795/kernel

%conv2d_795/kernel/Read/ReadVariableOpReadVariableOpconv2d_795/kernel*&
_output_shapes
:*
dtype0
v
conv2d_795/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_795/bias
o
#conv2d_795/bias/Read/ReadVariableOpReadVariableOpconv2d_795/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_791/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_791/kernel/m
Н
,Adam/conv2d_791/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_791/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_791/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_791/bias/m
}
*Adam/conv2d_791/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_791/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_792/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_792/kernel/m
Н
,Adam/conv2d_792/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_792/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_792/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_792/bias/m
}
*Adam/conv2d_792/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_792/bias/m*
_output_shapes
:*
dtype0
К
Adam/dense_203/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_203/kernel/m
Г
+Adam/dense_203/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_203/kernel/m*
_output_shapes

:@@*
dtype0
В
Adam/dense_203/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_203/bias/m
{
)Adam/dense_203/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_203/bias/m*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_793/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_793/kernel/m
Н
,Adam/conv2d_793/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_793/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_793/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_793/bias/m
}
*Adam/conv2d_793/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_793/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_794/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_794/kernel/m
Н
,Adam/conv2d_794/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_794/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_794/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_794/bias/m
}
*Adam/conv2d_794/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_794/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_795/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_795/kernel/m
Н
,Adam/conv2d_795/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_795/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_795/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_795/bias/m
}
*Adam/conv2d_795/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_795/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_791/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_791/kernel/v
Н
,Adam/conv2d_791/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_791/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_791/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_791/bias/v
}
*Adam/conv2d_791/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_791/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_792/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_792/kernel/v
Н
,Adam/conv2d_792/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_792/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_792/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_792/bias/v
}
*Adam/conv2d_792/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_792/bias/v*
_output_shapes
:*
dtype0
К
Adam/dense_203/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_203/kernel/v
Г
+Adam/dense_203/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_203/kernel/v*
_output_shapes

:@@*
dtype0
В
Adam/dense_203/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_203/bias/v
{
)Adam/dense_203/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_203/bias/v*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_793/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_793/kernel/v
Н
,Adam/conv2d_793/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_793/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_793/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_793/bias/v
}
*Adam/conv2d_793/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_793/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_794/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_794/kernel/v
Н
,Adam/conv2d_794/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_794/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_794/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_794/bias/v
}
*Adam/conv2d_794/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_794/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_795/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_795/kernel/v
Н
,Adam/conv2d_795/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_795/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_795/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_795/bias/v
}
*Adam/conv2d_795/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_795/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ГP
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╛O
value┤OB▒O BкO
┼
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

layer-9
layer_with_weights-2
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-3
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-4
layer-21
layer_with_weights-5
layer-22
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api

#	keras_api

$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
R
+	variables
,trainable_variables
-regularization_losses
.	keras_api
h

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
R
5	variables
6trainable_variables
7regularization_losses
8	keras_api
R
9	variables
:trainable_variables
;regularization_losses
<	keras_api
h

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
R
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api

G	keras_api

H	keras_api

I	keras_api

J	keras_api
h

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api

Q	keras_api

R	keras_api

S	keras_api

T	keras_api
h

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
h

[kernel
\bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
░
aiter

bbeta_1

cbeta_2
	ddecay
elearning_rate%mн&mо/mп0m░=m▒>m▓Km│Lm┤Um╡Vm╢[m╖\m╕%v╣&v║/v╗0v╝=v╜>v╛Kv┐Lv└Uv┴Vv┬[v├\v─
V
%0
&1
/2
03
=4
>5
K6
L7
U8
V9
[10
\11
V
%0
&1
/2
03
=4
>5
K6
L7
U8
V9
[10
\11
 
н
fmetrics
	variables
glayer_regularization_losses
hlayer_metrics

ilayers
jnon_trainable_variables
trainable_variables
regularization_losses
 
 
 
 
 
н
kmetrics
	variables
llayer_regularization_losses
mlayer_metrics

nlayers
onon_trainable_variables
 trainable_variables
!regularization_losses
 
 
][
VARIABLE_VALUEconv2d_791/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_791/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
н
pmetrics
'	variables
qlayer_regularization_losses
rlayer_metrics

slayers
tnon_trainable_variables
(trainable_variables
)regularization_losses
 
 
 
н
umetrics
+	variables
vlayer_regularization_losses
wlayer_metrics

xlayers
ynon_trainable_variables
,trainable_variables
-regularization_losses
][
VARIABLE_VALUEconv2d_792/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_792/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01

/0
01
 
н
zmetrics
1	variables
{layer_regularization_losses
|layer_metrics

}layers
~non_trainable_variables
2trainable_variables
3regularization_losses
 
 
 
▒
metrics
5	variables
 Аlayer_regularization_losses
Бlayer_metrics
Вlayers
Гnon_trainable_variables
6trainable_variables
7regularization_losses
 
 
 
▓
Дmetrics
9	variables
 Еlayer_regularization_losses
Жlayer_metrics
Зlayers
Иnon_trainable_variables
:trainable_variables
;regularization_losses
\Z
VARIABLE_VALUEdense_203/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_203/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
▓
Йmetrics
?	variables
 Кlayer_regularization_losses
Лlayer_metrics
Мlayers
Нnon_trainable_variables
@trainable_variables
Aregularization_losses
 
 
 
▓
Оmetrics
C	variables
 Пlayer_regularization_losses
Рlayer_metrics
Сlayers
Тnon_trainable_variables
Dtrainable_variables
Eregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv2d_793/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_793/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1

K0
L1
 
▓
Уmetrics
M	variables
 Фlayer_regularization_losses
Хlayer_metrics
Цlayers
Чnon_trainable_variables
Ntrainable_variables
Oregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv2d_794/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_794/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
▓
Шmetrics
W	variables
 Щlayer_regularization_losses
Ъlayer_metrics
Ыlayers
Ьnon_trainable_variables
Xtrainable_variables
Yregularization_losses
][
VARIABLE_VALUEconv2d_795/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_795/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1

[0
\1
 
▓
Эmetrics
]	variables
 Юlayer_regularization_losses
Яlayer_metrics
аlayers
бnon_trainable_variables
^trainable_variables
_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

в0
г1
 
 
о
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

дtotal

еcount
ж	variables
з	keras_api
I

иtotal

йcount
к
_fn_kwargs
л	variables
м	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

д0
е1

ж	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

и0
й1

л	variables
А~
VARIABLE_VALUEAdam/conv2d_791/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_791/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_792/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_792/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_203/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_203/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_793/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_793/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_794/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_794/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_795/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_795/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_791/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_791/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_792/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_792/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_203/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_203/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_793/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_793/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_794/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_794/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_795/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_795/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
И
serving_default_inputPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
м
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_791/kernelconv2d_791/biasconv2d_792/kernelconv2d_792/biasdense_203/kerneldense_203/biasconv2d_793/kernelconv2d_793/biasconv2d_794/kernelconv2d_794/biasconv2d_795/kernelconv2d_795/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *.
f)R'
%__inference_signature_wrapper_9127919
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
с
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_791/kernel/Read/ReadVariableOp#conv2d_791/bias/Read/ReadVariableOp%conv2d_792/kernel/Read/ReadVariableOp#conv2d_792/bias/Read/ReadVariableOp$dense_203/kernel/Read/ReadVariableOp"dense_203/bias/Read/ReadVariableOp%conv2d_793/kernel/Read/ReadVariableOp#conv2d_793/bias/Read/ReadVariableOp%conv2d_794/kernel/Read/ReadVariableOp#conv2d_794/bias/Read/ReadVariableOp%conv2d_795/kernel/Read/ReadVariableOp#conv2d_795/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_791/kernel/m/Read/ReadVariableOp*Adam/conv2d_791/bias/m/Read/ReadVariableOp,Adam/conv2d_792/kernel/m/Read/ReadVariableOp*Adam/conv2d_792/bias/m/Read/ReadVariableOp+Adam/dense_203/kernel/m/Read/ReadVariableOp)Adam/dense_203/bias/m/Read/ReadVariableOp,Adam/conv2d_793/kernel/m/Read/ReadVariableOp*Adam/conv2d_793/bias/m/Read/ReadVariableOp,Adam/conv2d_794/kernel/m/Read/ReadVariableOp*Adam/conv2d_794/bias/m/Read/ReadVariableOp,Adam/conv2d_795/kernel/m/Read/ReadVariableOp*Adam/conv2d_795/bias/m/Read/ReadVariableOp,Adam/conv2d_791/kernel/v/Read/ReadVariableOp*Adam/conv2d_791/bias/v/Read/ReadVariableOp,Adam/conv2d_792/kernel/v/Read/ReadVariableOp*Adam/conv2d_792/bias/v/Read/ReadVariableOp+Adam/dense_203/kernel/v/Read/ReadVariableOp)Adam/dense_203/bias/v/Read/ReadVariableOp,Adam/conv2d_793/kernel/v/Read/ReadVariableOp*Adam/conv2d_793/bias/v/Read/ReadVariableOp,Adam/conv2d_794/kernel/v/Read/ReadVariableOp*Adam/conv2d_794/bias/v/Read/ReadVariableOp,Adam/conv2d_795/kernel/v/Read/ReadVariableOp*Adam/conv2d_795/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *)
f$R"
 __inference__traced_save_9128545
╪	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_791/kernelconv2d_791/biasconv2d_792/kernelconv2d_792/biasdense_203/kerneldense_203/biasconv2d_793/kernelconv2d_793/biasconv2d_794/kernelconv2d_794/biasconv2d_795/kernelconv2d_795/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_791/kernel/mAdam/conv2d_791/bias/mAdam/conv2d_792/kernel/mAdam/conv2d_792/bias/mAdam/dense_203/kernel/mAdam/dense_203/bias/mAdam/conv2d_793/kernel/mAdam/conv2d_793/bias/mAdam/conv2d_794/kernel/mAdam/conv2d_794/bias/mAdam/conv2d_795/kernel/mAdam/conv2d_795/bias/mAdam/conv2d_791/kernel/vAdam/conv2d_791/bias/vAdam/conv2d_792/kernel/vAdam/conv2d_792/bias/vAdam/dense_203/kernel/vAdam/dense_203/bias/vAdam/conv2d_793/kernel/vAdam/conv2d_793/bias/vAdam/conv2d_794/kernel/vAdam/conv2d_794/bias/vAdam/conv2d_795/kernel/vAdam/conv2d_795/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *,
f'R%
#__inference__traced_restore_9128690│Ї
л
А
G__inference_conv2d_791_layer_call_and_return_conditional_losses_9128203

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╖
А
G__inference_conv2d_795_layer_call_and_return_conditional_losses_9128378

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
№\
Ч
F__inference_model_203_layer_call_and_return_conditional_losses_9127817	
input,
conv2d_791_9127766: 
conv2d_791_9127768:,
conv2d_792_9127772: 
conv2d_792_9127774:#
dense_203_9127779:@@
dense_203_9127781:@,
conv2d_793_9127793: 
conv2d_793_9127795:,
conv2d_794_9127806: 
conv2d_794_9127808:,
conv2d_795_9127811: 
conv2d_795_9127813:
identityИв"conv2d_791/StatefulPartitionedCallв"conv2d_792/StatefulPartitionedCallв"conv2d_793/StatefulPartitionedCallв"conv2d_794/StatefulPartitionedCallв"conv2d_795/StatefulPartitionedCallв!dense_203/StatefulPartitionedCall╡
0tf.__operators__.getitem_402/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_402/strided_slice/stack╣
2tf.__operators__.getitem_402/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_402/strided_slice/stack_1╣
2tf.__operators__.getitem_402/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_402/strided_slice/stack_2Н
*tf.__operators__.getitem_402/strided_sliceStridedSliceinput9tf.__operators__.getitem_402/strided_slice/stack:output:0;tf.__operators__.getitem_402/strided_slice/stack_1:output:0;tf.__operators__.getitem_402/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_402/strided_slice│
$range_conversion_203/PartitionedCallPartitionedCall3tf.__operators__.getitem_402/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_91273172&
$range_conversion_203/PartitionedCall╡
0tf.__operators__.getitem_403/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_403/strided_slice/stack╣
2tf.__operators__.getitem_403/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_403/strided_slice/stack_1╣
2tf.__operators__.getitem_403/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_403/strided_slice/stack_2Н
*tf.__operators__.getitem_403/strided_sliceStridedSliceinput9tf.__operators__.getitem_403/strided_slice/stack:output:0;tf.__operators__.getitem_403/strided_slice/stack_1:output:0;tf.__operators__.getitem_403/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_403/strided_slicex
tf.concat_495/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_495/concat/axisГ
tf.concat_495/concatConcatV2-range_conversion_203/PartitionedCall:output:03tf.__operators__.getitem_403/strided_slice:output:0"tf.concat_495/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_495/concat┼
"conv2d_791/StatefulPartitionedCallStatefulPartitionedCalltf.concat_495/concat:output:0conv2d_791_9127766conv2d_791_9127768*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_791_layer_call_and_return_conditional_losses_91273362$
"conv2d_791/StatefulPartitionedCallо
%average_pooling2d_294/PartitionedCallPartitionedCall+conv2d_791/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_91273462'
%average_pooling2d_294/PartitionedCall╓
"conv2d_792/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_294/PartitionedCall:output:0conv2d_792_9127772conv2d_792_9127774*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_792_layer_call_and_return_conditional_losses_91273592$
"conv2d_792/StatefulPartitionedCallо
%average_pooling2d_295/PartitionedCallPartitionedCall+conv2d_792/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_91273692'
%average_pooling2d_295/PartitionedCallЛ
reshape_406/PartitionedCallPartitionedCall.average_pooling2d_295/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_406_layer_call_and_return_conditional_losses_91273832
reshape_406/PartitionedCall┐
!dense_203/StatefulPartitionedCallStatefulPartitionedCall$reshape_406/PartitionedCall:output:0dense_203_9127779dense_203_9127781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_dense_203_layer_call_and_return_conditional_losses_91273962#
!dense_203/StatefulPartitionedCallП
reshape_407/PartitionedCallPartitionedCall*dense_203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_407_layer_call_and_return_conditional_losses_91274162
reshape_407/PartitionedCallЭ
tf.reshape_588/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_588/Reshape/shape╩
tf.reshape_588/ReshapeReshape$reshape_407/PartitionedCall:output:0%tf.reshape_588/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_588/ReshapeЩ
tf.tile_294/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_294/Tile/multiples┤
tf.tile_294/TileTiletf.reshape_588/Reshape:output:0#tf.tile_294/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_294/TileХ
tf.reshape_589/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_589/Reshape/shape╖
tf.reshape_589/ReshapeReshapetf.tile_294/Tile:output:0%tf.reshape_589/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_589/Reshapex
tf.concat_496/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_496/concat/axisэ
tf.concat_496/concatConcatV2tf.reshape_589/Reshape:output:0+conv2d_792/StatefulPartitionedCall:output:0"tf.concat_496/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_496/concat┼
"conv2d_793/StatefulPartitionedCallStatefulPartitionedCalltf.concat_496/concat:output:0conv2d_793_9127793conv2d_793_9127795*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_793_layer_call_and_return_conditional_losses_91274372$
"conv2d_793/StatefulPartitionedCallЭ
tf.reshape_590/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_590/Reshape/shape╤
tf.reshape_590/ReshapeReshape+conv2d_793/StatefulPartitionedCall:output:0%tf.reshape_590/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_590/ReshapeЩ
tf.tile_295/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_295/Tile/multiples┤
tf.tile_295/TileTiletf.reshape_590/Reshape:output:0#tf.tile_295/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_295/TileХ
tf.reshape_591/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_591/Reshape/shape╖
tf.reshape_591/ReshapeReshapetf.tile_295/Tile:output:0%tf.reshape_591/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_591/Reshapex
tf.concat_497/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_497/concat/axisэ
tf.concat_497/concatConcatV2tf.reshape_591/Reshape:output:0+conv2d_791/StatefulPartitionedCall:output:0"tf.concat_497/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_497/concat┼
"conv2d_794/StatefulPartitionedCallStatefulPartitionedCalltf.concat_497/concat:output:0conv2d_794_9127806conv2d_794_9127808*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_794_layer_call_and_return_conditional_losses_91274622$
"conv2d_794/StatefulPartitionedCall╙
"conv2d_795/StatefulPartitionedCallStatefulPartitionedCall+conv2d_794/StatefulPartitionedCall:output:0conv2d_795_9127811conv2d_795_9127813*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_795_layer_call_and_return_conditional_losses_91274782$
"conv2d_795/StatefulPartitionedCallО
IdentityIdentity+conv2d_795/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_791/StatefulPartitionedCall#^conv2d_792/StatefulPartitionedCall#^conv2d_793/StatefulPartitionedCall#^conv2d_794/StatefulPartitionedCall#^conv2d_795/StatefulPartitionedCall"^dense_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_791/StatefulPartitionedCall"conv2d_791/StatefulPartitionedCall2H
"conv2d_792/StatefulPartitionedCall"conv2d_792/StatefulPartitionedCall2H
"conv2d_793/StatefulPartitionedCall"conv2d_793/StatefulPartitionedCall2H
"conv2d_794/StatefulPartitionedCall"conv2d_794/StatefulPartitionedCall2H
"conv2d_795/StatefulPartitionedCall"conv2d_795/StatefulPartitionedCall2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall:V R
/
_output_shapes
:         

_user_specified_nameinput
╥
n
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9128217

inputs
identity═
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ъ
S
7__inference_average_pooling2d_295_layer_call_fn_9128267

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_91272812
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┘
I
-__inference_reshape_406_layer_call_fn_9128289

inputs
identity╦
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
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_406_layer_call_and_return_conditional_losses_91273832
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ф
ў
F__inference_dense_203_layer_call_and_return_conditional_losses_9127396

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
╥
n
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9128257

inputs
identity═
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
л
А
G__inference_conv2d_791_layer_call_and_return_conditional_losses_9127336

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╝
╚
%__inference_signature_wrapper_9127919	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *+
f&R$
"__inference__wrapped_model_91272502
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         

_user_specified_nameinput
╥
n
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9127259

inputs
identity═
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╨П
¤	
F__inference_model_203_layer_call_and_return_conditional_losses_9128117

inputsC
)conv2d_791_conv2d_readvariableop_resource:8
*conv2d_791_biasadd_readvariableop_resource:C
)conv2d_792_conv2d_readvariableop_resource:8
*conv2d_792_biasadd_readvariableop_resource::
(dense_203_matmul_readvariableop_resource:@@7
)dense_203_biasadd_readvariableop_resource:@C
)conv2d_793_conv2d_readvariableop_resource:8
*conv2d_793_biasadd_readvariableop_resource:C
)conv2d_794_conv2d_readvariableop_resource:8
*conv2d_794_biasadd_readvariableop_resource:C
)conv2d_795_conv2d_readvariableop_resource:8
*conv2d_795_biasadd_readvariableop_resource:
identityИв!conv2d_791/BiasAdd/ReadVariableOpв conv2d_791/Conv2D/ReadVariableOpв!conv2d_792/BiasAdd/ReadVariableOpв conv2d_792/Conv2D/ReadVariableOpв!conv2d_793/BiasAdd/ReadVariableOpв conv2d_793/Conv2D/ReadVariableOpв!conv2d_794/BiasAdd/ReadVariableOpв conv2d_794/Conv2D/ReadVariableOpв!conv2d_795/BiasAdd/ReadVariableOpв conv2d_795/Conv2D/ReadVariableOpв dense_203/BiasAdd/ReadVariableOpвdense_203/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_402/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_402/strided_slice/stack╣
2tf.__operators__.getitem_402/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_402/strided_slice/stack_1╣
2tf.__operators__.getitem_402/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_402/strided_slice/stack_2О
*tf.__operators__.getitem_402/strided_sliceStridedSliceinputs9tf.__operators__.getitem_402/strided_slice/stack:output:0;tf.__operators__.getitem_402/strided_slice/stack_1:output:0;tf.__operators__.getitem_402/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_402/strided_slice}
range_conversion_203/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_203/sub/y╧
range_conversion_203/subSub3tf.__operators__.getitem_402/strided_slice:output:0#range_conversion_203/sub/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/subЕ
range_conversion_203/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_203/truediv/y╚
range_conversion_203/truedivRealDivrange_conversion_203/sub:z:0'range_conversion_203/truediv/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/truediv}
range_conversion_203/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_203/mul/y╝
range_conversion_203/mulMul range_conversion_203/truediv:z:0#range_conversion_203/mul/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/mul}
range_conversion_203/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_203/add/y║
range_conversion_203/addAddV2range_conversion_203/mul:z:0#range_conversion_203/add/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/add╡
0tf.__operators__.getitem_403/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_403/strided_slice/stack╣
2tf.__operators__.getitem_403/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_403/strided_slice/stack_1╣
2tf.__operators__.getitem_403/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_403/strided_slice/stack_2О
*tf.__operators__.getitem_403/strided_sliceStridedSliceinputs9tf.__operators__.getitem_403/strided_slice/stack:output:0;tf.__operators__.getitem_403/strided_slice/stack_1:output:0;tf.__operators__.getitem_403/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_403/strided_slicex
tf.concat_495/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_495/concat/axisЄ
tf.concat_495/concatConcatV2range_conversion_203/add:z:03tf.__operators__.getitem_403/strided_slice:output:0"tf.concat_495/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_495/concat╢
 conv2d_791/Conv2D/ReadVariableOpReadVariableOp)conv2d_791_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_791/Conv2D/ReadVariableOpЄ
conv2d_791/Conv2DConv2Dtf.concat_495/concat:output:0(conv2d_791/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_791/Conv2Dн
!conv2d_791/BiasAdd/ReadVariableOpReadVariableOp*conv2d_791_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_791/BiasAdd/ReadVariableOp╦
conv2d_791/BiasAddBiasAddconv2d_791/Conv2D:output:0)conv2d_791/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_791/BiasAddН
conv2d_791/SoftplusSoftplusconv2d_791/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_791/Softplus∙
average_pooling2d_294/AvgPoolAvgPool!conv2d_791/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_294/AvgPool╢
 conv2d_792/Conv2D/ReadVariableOpReadVariableOp)conv2d_792_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_792/Conv2D/ReadVariableOp√
conv2d_792/Conv2DConv2D&average_pooling2d_294/AvgPool:output:0(conv2d_792/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_792/Conv2Dн
!conv2d_792/BiasAdd/ReadVariableOpReadVariableOp*conv2d_792_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_792/BiasAdd/ReadVariableOp╦
conv2d_792/BiasAddBiasAddconv2d_792/Conv2D:output:0)conv2d_792/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_792/BiasAddН
conv2d_792/SoftplusSoftplusconv2d_792/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_792/Softplus∙
average_pooling2d_295/AvgPoolAvgPool!conv2d_792/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_295/AvgPool|
reshape_406/ShapeShape&average_pooling2d_295/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_406/ShapeМ
reshape_406/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_406/strided_slice/stackР
!reshape_406/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_406/strided_slice/stack_1Р
!reshape_406/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_406/strided_slice/stack_2к
reshape_406/strided_sliceStridedSlicereshape_406/Shape:output:0(reshape_406/strided_slice/stack:output:0*reshape_406/strided_slice/stack_1:output:0*reshape_406/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_406/strided_slice|
reshape_406/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_406/Reshape/shape/1╢
reshape_406/Reshape/shapePack"reshape_406/strided_slice:output:0$reshape_406/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_406/Reshape/shape│
reshape_406/ReshapeReshape&average_pooling2d_295/AvgPool:output:0"reshape_406/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_406/Reshapeл
dense_203/MatMul/ReadVariableOpReadVariableOp(dense_203_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_203/MatMul/ReadVariableOpз
dense_203/MatMulMatMulreshape_406/Reshape:output:0'dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_203/MatMulк
 dense_203/BiasAdd/ReadVariableOpReadVariableOp)dense_203_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_203/BiasAdd/ReadVariableOpй
dense_203/BiasAddBiasAdddense_203/MatMul:product:0(dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_203/BiasAddВ
dense_203/SoftplusSoftplusdense_203/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_203/Softplusv
reshape_407/ShapeShape dense_203/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_407/ShapeМ
reshape_407/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_407/strided_slice/stackР
!reshape_407/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_407/strided_slice/stack_1Р
!reshape_407/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_407/strided_slice/stack_2к
reshape_407/strided_sliceStridedSlicereshape_407/Shape:output:0(reshape_407/strided_slice/stack:output:0*reshape_407/strided_slice/stack_1:output:0*reshape_407/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_407/strided_slice|
reshape_407/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_407/Reshape/shape/1|
reshape_407/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_407/Reshape/shape/2|
reshape_407/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_407/Reshape/shape/3В
reshape_407/Reshape/shapePack"reshape_407/strided_slice:output:0$reshape_407/Reshape/shape/1:output:0$reshape_407/Reshape/shape/2:output:0$reshape_407/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_407/Reshape/shape╡
reshape_407/ReshapeReshape dense_203/Softplus:activations:0"reshape_407/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
reshape_407/ReshapeЭ
tf.reshape_588/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_588/Reshape/shape┬
tf.reshape_588/ReshapeReshapereshape_407/Reshape:output:0%tf.reshape_588/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_588/ReshapeЩ
tf.tile_294/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_294/Tile/multiples┤
tf.tile_294/TileTiletf.reshape_588/Reshape:output:0#tf.tile_294/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_294/TileХ
tf.reshape_589/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_589/Reshape/shape╖
tf.reshape_589/ReshapeReshapetf.tile_294/Tile:output:0%tf.reshape_589/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_589/Reshapex
tf.concat_496/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_496/concat/axisу
tf.concat_496/concatConcatV2tf.reshape_589/Reshape:output:0!conv2d_792/Softplus:activations:0"tf.concat_496/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_496/concat╢
 conv2d_793/Conv2D/ReadVariableOpReadVariableOp)conv2d_793_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_793/Conv2D/ReadVariableOpЄ
conv2d_793/Conv2DConv2Dtf.concat_496/concat:output:0(conv2d_793/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_793/Conv2Dн
!conv2d_793/BiasAdd/ReadVariableOpReadVariableOp*conv2d_793_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_793/BiasAdd/ReadVariableOp╦
conv2d_793/BiasAddBiasAddconv2d_793/Conv2D:output:0)conv2d_793/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_793/BiasAddН
conv2d_793/SoftplusSoftplusconv2d_793/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_793/SoftplusЭ
tf.reshape_590/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_590/Reshape/shape╟
tf.reshape_590/ReshapeReshape!conv2d_793/Softplus:activations:0%tf.reshape_590/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_590/ReshapeЩ
tf.tile_295/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_295/Tile/multiples┤
tf.tile_295/TileTiletf.reshape_590/Reshape:output:0#tf.tile_295/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_295/TileХ
tf.reshape_591/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_591/Reshape/shape╖
tf.reshape_591/ReshapeReshapetf.tile_295/Tile:output:0%tf.reshape_591/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_591/Reshapex
tf.concat_497/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_497/concat/axisу
tf.concat_497/concatConcatV2tf.reshape_591/Reshape:output:0!conv2d_791/Softplus:activations:0"tf.concat_497/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_497/concat╢
 conv2d_794/Conv2D/ReadVariableOpReadVariableOp)conv2d_794_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_794/Conv2D/ReadVariableOpЄ
conv2d_794/Conv2DConv2Dtf.concat_497/concat:output:0(conv2d_794/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_794/Conv2Dн
!conv2d_794/BiasAdd/ReadVariableOpReadVariableOp*conv2d_794_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_794/BiasAdd/ReadVariableOp╦
conv2d_794/BiasAddBiasAddconv2d_794/Conv2D:output:0)conv2d_794/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_794/BiasAddН
conv2d_794/SoftplusSoftplusconv2d_794/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_794/Softplus╢
 conv2d_795/Conv2D/ReadVariableOpReadVariableOp)conv2d_795_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_795/Conv2D/ReadVariableOpЎ
conv2d_795/Conv2DConv2D!conv2d_794/Softplus:activations:0(conv2d_795/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_795/Conv2Dн
!conv2d_795/BiasAdd/ReadVariableOpReadVariableOp*conv2d_795_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_795/BiasAdd/ReadVariableOp╦
conv2d_795/BiasAddBiasAddconv2d_795/Conv2D:output:0)conv2d_795/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_795/BiasAdd~
IdentityIdentityconv2d_795/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

IdentityЎ
NoOpNoOp"^conv2d_791/BiasAdd/ReadVariableOp!^conv2d_791/Conv2D/ReadVariableOp"^conv2d_792/BiasAdd/ReadVariableOp!^conv2d_792/Conv2D/ReadVariableOp"^conv2d_793/BiasAdd/ReadVariableOp!^conv2d_793/Conv2D/ReadVariableOp"^conv2d_794/BiasAdd/ReadVariableOp!^conv2d_794/Conv2D/ReadVariableOp"^conv2d_795/BiasAdd/ReadVariableOp!^conv2d_795/Conv2D/ReadVariableOp!^dense_203/BiasAdd/ReadVariableOp ^dense_203/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2F
!conv2d_791/BiasAdd/ReadVariableOp!conv2d_791/BiasAdd/ReadVariableOp2D
 conv2d_791/Conv2D/ReadVariableOp conv2d_791/Conv2D/ReadVariableOp2F
!conv2d_792/BiasAdd/ReadVariableOp!conv2d_792/BiasAdd/ReadVariableOp2D
 conv2d_792/Conv2D/ReadVariableOp conv2d_792/Conv2D/ReadVariableOp2F
!conv2d_793/BiasAdd/ReadVariableOp!conv2d_793/BiasAdd/ReadVariableOp2D
 conv2d_793/Conv2D/ReadVariableOp conv2d_793/Conv2D/ReadVariableOp2F
!conv2d_794/BiasAdd/ReadVariableOp!conv2d_794/BiasAdd/ReadVariableOp2D
 conv2d_794/Conv2D/ReadVariableOp conv2d_794/Conv2D/ReadVariableOp2F
!conv2d_795/BiasAdd/ReadVariableOp!conv2d_795/BiasAdd/ReadVariableOp2D
 conv2d_795/Conv2D/ReadVariableOp conv2d_795/Conv2D/ReadVariableOp2D
 dense_203/BiasAdd/ReadVariableOp dense_203/BiasAdd/ReadVariableOp2B
dense_203/MatMul/ReadVariableOpdense_203/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
л
А
G__inference_conv2d_792_layer_call_and_return_conditional_losses_9128243

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Н├
╡
#__inference__traced_restore_9128690
file_prefix<
"assignvariableop_conv2d_791_kernel:0
"assignvariableop_1_conv2d_791_bias:>
$assignvariableop_2_conv2d_792_kernel:0
"assignvariableop_3_conv2d_792_bias:5
#assignvariableop_4_dense_203_kernel:@@/
!assignvariableop_5_dense_203_bias:@>
$assignvariableop_6_conv2d_793_kernel:0
"assignvariableop_7_conv2d_793_bias:>
$assignvariableop_8_conv2d_794_kernel:0
"assignvariableop_9_conv2d_794_bias:?
%assignvariableop_10_conv2d_795_kernel:1
#assignvariableop_11_conv2d_795_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
,assignvariableop_21_adam_conv2d_791_kernel_m:8
*assignvariableop_22_adam_conv2d_791_bias_m:F
,assignvariableop_23_adam_conv2d_792_kernel_m:8
*assignvariableop_24_adam_conv2d_792_bias_m:=
+assignvariableop_25_adam_dense_203_kernel_m:@@7
)assignvariableop_26_adam_dense_203_bias_m:@F
,assignvariableop_27_adam_conv2d_793_kernel_m:8
*assignvariableop_28_adam_conv2d_793_bias_m:F
,assignvariableop_29_adam_conv2d_794_kernel_m:8
*assignvariableop_30_adam_conv2d_794_bias_m:F
,assignvariableop_31_adam_conv2d_795_kernel_m:8
*assignvariableop_32_adam_conv2d_795_bias_m:F
,assignvariableop_33_adam_conv2d_791_kernel_v:8
*assignvariableop_34_adam_conv2d_791_bias_v:F
,assignvariableop_35_adam_conv2d_792_kernel_v:8
*assignvariableop_36_adam_conv2d_792_bias_v:=
+assignvariableop_37_adam_dense_203_kernel_v:@@7
)assignvariableop_38_adam_dense_203_bias_v:@F
,assignvariableop_39_adam_conv2d_793_kernel_v:8
*assignvariableop_40_adam_conv2d_793_bias_v:F
,assignvariableop_41_adam_conv2d_794_kernel_v:8
*assignvariableop_42_adam_conv2d_794_bias_v:F
,assignvariableop_43_adam_conv2d_795_kernel_v:8
*assignvariableop_44_adam_conv2d_795_bias_v:
identity_46ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9└
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesъ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityб
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_791_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_791_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_792_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_792_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4и
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_203_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5ж
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_203_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_793_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_793_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8й
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv2d_794_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9з
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_794_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv2d_795_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_795_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12е
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13з
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14з
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15ж
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16о
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17б
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18б
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19г
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20г
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21┤
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_791_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22▓
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_791_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┤
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_792_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24▓
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_792_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25│
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_203_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26▒
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_203_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27┤
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_793_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28▓
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_793_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┤
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_794_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30▓
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_794_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31┤
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_795_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32▓
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_795_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33┤
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_791_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34▓
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_791_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35┤
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_792_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36▓
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_792_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37│
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_203_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38▒
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_203_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39┤
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv2d_793_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40▓
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_793_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41┤
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_conv2d_794_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42▓
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_794_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43┤
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_795_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44▓
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_795_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╝
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45f
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_46д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
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
х
n
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9127346

inputs
identity▓
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPooll
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
чи
╚
"__inference__wrapped_model_9127250	
inputM
3model_203_conv2d_791_conv2d_readvariableop_resource:B
4model_203_conv2d_791_biasadd_readvariableop_resource:M
3model_203_conv2d_792_conv2d_readvariableop_resource:B
4model_203_conv2d_792_biasadd_readvariableop_resource:D
2model_203_dense_203_matmul_readvariableop_resource:@@A
3model_203_dense_203_biasadd_readvariableop_resource:@M
3model_203_conv2d_793_conv2d_readvariableop_resource:B
4model_203_conv2d_793_biasadd_readvariableop_resource:M
3model_203_conv2d_794_conv2d_readvariableop_resource:B
4model_203_conv2d_794_biasadd_readvariableop_resource:M
3model_203_conv2d_795_conv2d_readvariableop_resource:B
4model_203_conv2d_795_biasadd_readvariableop_resource:
identityИв+model_203/conv2d_791/BiasAdd/ReadVariableOpв*model_203/conv2d_791/Conv2D/ReadVariableOpв+model_203/conv2d_792/BiasAdd/ReadVariableOpв*model_203/conv2d_792/Conv2D/ReadVariableOpв+model_203/conv2d_793/BiasAdd/ReadVariableOpв*model_203/conv2d_793/Conv2D/ReadVariableOpв+model_203/conv2d_794/BiasAdd/ReadVariableOpв*model_203/conv2d_794/Conv2D/ReadVariableOpв+model_203/conv2d_795/BiasAdd/ReadVariableOpв*model_203/conv2d_795/Conv2D/ReadVariableOpв*model_203/dense_203/BiasAdd/ReadVariableOpв)model_203/dense_203/MatMul/ReadVariableOp╔
:model_203/tf.__operators__.getitem_402/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_203/tf.__operators__.getitem_402/strided_slice/stack═
<model_203/tf.__operators__.getitem_402/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_203/tf.__operators__.getitem_402/strided_slice/stack_1═
<model_203/tf.__operators__.getitem_402/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_203/tf.__operators__.getitem_402/strided_slice/stack_2┐
4model_203/tf.__operators__.getitem_402/strided_sliceStridedSliceinputCmodel_203/tf.__operators__.getitem_402/strided_slice/stack:output:0Emodel_203/tf.__operators__.getitem_402/strided_slice/stack_1:output:0Emodel_203/tf.__operators__.getitem_402/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask26
4model_203/tf.__operators__.getitem_402/strided_sliceС
$model_203/range_conversion_203/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_203/range_conversion_203/sub/yў
"model_203/range_conversion_203/subSub=model_203/tf.__operators__.getitem_402/strided_slice:output:0-model_203/range_conversion_203/sub/y:output:0*
T0*/
_output_shapes
:         2$
"model_203/range_conversion_203/subЩ
(model_203/range_conversion_203/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_203/range_conversion_203/truediv/yЁ
&model_203/range_conversion_203/truedivRealDiv&model_203/range_conversion_203/sub:z:01model_203/range_conversion_203/truediv/y:output:0*
T0*/
_output_shapes
:         2(
&model_203/range_conversion_203/truedivС
$model_203/range_conversion_203/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_203/range_conversion_203/mul/yф
"model_203/range_conversion_203/mulMul*model_203/range_conversion_203/truediv:z:0-model_203/range_conversion_203/mul/y:output:0*
T0*/
_output_shapes
:         2$
"model_203/range_conversion_203/mulС
$model_203/range_conversion_203/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2&
$model_203/range_conversion_203/add/yт
"model_203/range_conversion_203/addAddV2&model_203/range_conversion_203/mul:z:0-model_203/range_conversion_203/add/y:output:0*
T0*/
_output_shapes
:         2$
"model_203/range_conversion_203/add╔
:model_203/tf.__operators__.getitem_403/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_203/tf.__operators__.getitem_403/strided_slice/stack═
<model_203/tf.__operators__.getitem_403/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_203/tf.__operators__.getitem_403/strided_slice/stack_1═
<model_203/tf.__operators__.getitem_403/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_203/tf.__operators__.getitem_403/strided_slice/stack_2┐
4model_203/tf.__operators__.getitem_403/strided_sliceStridedSliceinputCmodel_203/tf.__operators__.getitem_403/strided_slice/stack:output:0Emodel_203/tf.__operators__.getitem_403/strided_slice/stack_1:output:0Emodel_203/tf.__operators__.getitem_403/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask26
4model_203/tf.__operators__.getitem_403/strided_sliceМ
#model_203/tf.concat_495/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_203/tf.concat_495/concat/axisд
model_203/tf.concat_495/concatConcatV2&model_203/range_conversion_203/add:z:0=model_203/tf.__operators__.getitem_403/strided_slice:output:0,model_203/tf.concat_495/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2 
model_203/tf.concat_495/concat╘
*model_203/conv2d_791/Conv2D/ReadVariableOpReadVariableOp3model_203_conv2d_791_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_203/conv2d_791/Conv2D/ReadVariableOpЪ
model_203/conv2d_791/Conv2DConv2D'model_203/tf.concat_495/concat:output:02model_203/conv2d_791/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_203/conv2d_791/Conv2D╦
+model_203/conv2d_791/BiasAdd/ReadVariableOpReadVariableOp4model_203_conv2d_791_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_203/conv2d_791/BiasAdd/ReadVariableOpє
model_203/conv2d_791/BiasAddBiasAdd$model_203/conv2d_791/Conv2D:output:03model_203/conv2d_791/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_203/conv2d_791/BiasAddл
model_203/conv2d_791/SoftplusSoftplus%model_203/conv2d_791/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_203/conv2d_791/SoftplusЧ
'model_203/average_pooling2d_294/AvgPoolAvgPool+model_203/conv2d_791/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_203/average_pooling2d_294/AvgPool╘
*model_203/conv2d_792/Conv2D/ReadVariableOpReadVariableOp3model_203_conv2d_792_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_203/conv2d_792/Conv2D/ReadVariableOpг
model_203/conv2d_792/Conv2DConv2D0model_203/average_pooling2d_294/AvgPool:output:02model_203/conv2d_792/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_203/conv2d_792/Conv2D╦
+model_203/conv2d_792/BiasAdd/ReadVariableOpReadVariableOp4model_203_conv2d_792_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_203/conv2d_792/BiasAdd/ReadVariableOpє
model_203/conv2d_792/BiasAddBiasAdd$model_203/conv2d_792/Conv2D:output:03model_203/conv2d_792/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_203/conv2d_792/BiasAddл
model_203/conv2d_792/SoftplusSoftplus%model_203/conv2d_792/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_203/conv2d_792/SoftplusЧ
'model_203/average_pooling2d_295/AvgPoolAvgPool+model_203/conv2d_792/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_203/average_pooling2d_295/AvgPoolЪ
model_203/reshape_406/ShapeShape0model_203/average_pooling2d_295/AvgPool:output:0*
T0*
_output_shapes
:2
model_203/reshape_406/Shapeа
)model_203/reshape_406/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_203/reshape_406/strided_slice/stackд
+model_203/reshape_406/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_203/reshape_406/strided_slice/stack_1д
+model_203/reshape_406/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_203/reshape_406/strided_slice/stack_2ц
#model_203/reshape_406/strided_sliceStridedSlice$model_203/reshape_406/Shape:output:02model_203/reshape_406/strided_slice/stack:output:04model_203/reshape_406/strided_slice/stack_1:output:04model_203/reshape_406/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_203/reshape_406/strided_sliceР
%model_203/reshape_406/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_203/reshape_406/Reshape/shape/1▐
#model_203/reshape_406/Reshape/shapePack,model_203/reshape_406/strided_slice:output:0.model_203/reshape_406/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_203/reshape_406/Reshape/shape█
model_203/reshape_406/ReshapeReshape0model_203/average_pooling2d_295/AvgPool:output:0,model_203/reshape_406/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_203/reshape_406/Reshape╔
)model_203/dense_203/MatMul/ReadVariableOpReadVariableOp2model_203_dense_203_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_203/dense_203/MatMul/ReadVariableOp╧
model_203/dense_203/MatMulMatMul&model_203/reshape_406/Reshape:output:01model_203/dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_203/dense_203/MatMul╚
*model_203/dense_203/BiasAdd/ReadVariableOpReadVariableOp3model_203_dense_203_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_203/dense_203/BiasAdd/ReadVariableOp╤
model_203/dense_203/BiasAddBiasAdd$model_203/dense_203/MatMul:product:02model_203/dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_203/dense_203/BiasAddа
model_203/dense_203/SoftplusSoftplus$model_203/dense_203/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_203/dense_203/SoftplusФ
model_203/reshape_407/ShapeShape*model_203/dense_203/Softplus:activations:0*
T0*
_output_shapes
:2
model_203/reshape_407/Shapeа
)model_203/reshape_407/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_203/reshape_407/strided_slice/stackд
+model_203/reshape_407/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_203/reshape_407/strided_slice/stack_1д
+model_203/reshape_407/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_203/reshape_407/strided_slice/stack_2ц
#model_203/reshape_407/strided_sliceStridedSlice$model_203/reshape_407/Shape:output:02model_203/reshape_407/strided_slice/stack:output:04model_203/reshape_407/strided_slice/stack_1:output:04model_203/reshape_407/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_203/reshape_407/strided_sliceР
%model_203/reshape_407/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_203/reshape_407/Reshape/shape/1Р
%model_203/reshape_407/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_203/reshape_407/Reshape/shape/2Р
%model_203/reshape_407/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_203/reshape_407/Reshape/shape/3╛
#model_203/reshape_407/Reshape/shapePack,model_203/reshape_407/strided_slice:output:0.model_203/reshape_407/Reshape/shape/1:output:0.model_203/reshape_407/Reshape/shape/2:output:0.model_203/reshape_407/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_203/reshape_407/Reshape/shape▌
model_203/reshape_407/ReshapeReshape*model_203/dense_203/Softplus:activations:0,model_203/reshape_407/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
model_203/reshape_407/Reshape▒
&model_203/tf.reshape_588/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2(
&model_203/tf.reshape_588/Reshape/shapeъ
 model_203/tf.reshape_588/ReshapeReshape&model_203/reshape_407/Reshape:output:0/model_203/tf.reshape_588/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2"
 model_203/tf.reshape_588/Reshapeн
$model_203/tf.tile_294/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_203/tf.tile_294/Tile/multiples▄
model_203/tf.tile_294/TileTile)model_203/tf.reshape_588/Reshape:output:0-model_203/tf.tile_294/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
model_203/tf.tile_294/Tileй
&model_203/tf.reshape_589/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&model_203/tf.reshape_589/Reshape/shape▀
 model_203/tf.reshape_589/ReshapeReshape#model_203/tf.tile_294/Tile:output:0/model_203/tf.reshape_589/Reshape/shape:output:0*
T0*/
_output_shapes
:         2"
 model_203/tf.reshape_589/ReshapeМ
#model_203/tf.concat_496/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_203/tf.concat_496/concat/axisХ
model_203/tf.concat_496/concatConcatV2)model_203/tf.reshape_589/Reshape:output:0+model_203/conv2d_792/Softplus:activations:0,model_203/tf.concat_496/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2 
model_203/tf.concat_496/concat╘
*model_203/conv2d_793/Conv2D/ReadVariableOpReadVariableOp3model_203_conv2d_793_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_203/conv2d_793/Conv2D/ReadVariableOpЪ
model_203/conv2d_793/Conv2DConv2D'model_203/tf.concat_496/concat:output:02model_203/conv2d_793/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_203/conv2d_793/Conv2D╦
+model_203/conv2d_793/BiasAdd/ReadVariableOpReadVariableOp4model_203_conv2d_793_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_203/conv2d_793/BiasAdd/ReadVariableOpє
model_203/conv2d_793/BiasAddBiasAdd$model_203/conv2d_793/Conv2D:output:03model_203/conv2d_793/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_203/conv2d_793/BiasAddл
model_203/conv2d_793/SoftplusSoftplus%model_203/conv2d_793/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_203/conv2d_793/Softplus▒
&model_203/tf.reshape_590/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2(
&model_203/tf.reshape_590/Reshape/shapeя
 model_203/tf.reshape_590/ReshapeReshape+model_203/conv2d_793/Softplus:activations:0/model_203/tf.reshape_590/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2"
 model_203/tf.reshape_590/Reshapeн
$model_203/tf.tile_295/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_203/tf.tile_295/Tile/multiples▄
model_203/tf.tile_295/TileTile)model_203/tf.reshape_590/Reshape:output:0-model_203/tf.tile_295/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
model_203/tf.tile_295/Tileй
&model_203/tf.reshape_591/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&model_203/tf.reshape_591/Reshape/shape▀
 model_203/tf.reshape_591/ReshapeReshape#model_203/tf.tile_295/Tile:output:0/model_203/tf.reshape_591/Reshape/shape:output:0*
T0*/
_output_shapes
:         2"
 model_203/tf.reshape_591/ReshapeМ
#model_203/tf.concat_497/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_203/tf.concat_497/concat/axisХ
model_203/tf.concat_497/concatConcatV2)model_203/tf.reshape_591/Reshape:output:0+model_203/conv2d_791/Softplus:activations:0,model_203/tf.concat_497/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2 
model_203/tf.concat_497/concat╘
*model_203/conv2d_794/Conv2D/ReadVariableOpReadVariableOp3model_203_conv2d_794_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_203/conv2d_794/Conv2D/ReadVariableOpЪ
model_203/conv2d_794/Conv2DConv2D'model_203/tf.concat_497/concat:output:02model_203/conv2d_794/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_203/conv2d_794/Conv2D╦
+model_203/conv2d_794/BiasAdd/ReadVariableOpReadVariableOp4model_203_conv2d_794_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_203/conv2d_794/BiasAdd/ReadVariableOpє
model_203/conv2d_794/BiasAddBiasAdd$model_203/conv2d_794/Conv2D:output:03model_203/conv2d_794/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_203/conv2d_794/BiasAddл
model_203/conv2d_794/SoftplusSoftplus%model_203/conv2d_794/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_203/conv2d_794/Softplus╘
*model_203/conv2d_795/Conv2D/ReadVariableOpReadVariableOp3model_203_conv2d_795_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_203/conv2d_795/Conv2D/ReadVariableOpЮ
model_203/conv2d_795/Conv2DConv2D+model_203/conv2d_794/Softplus:activations:02model_203/conv2d_795/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_203/conv2d_795/Conv2D╦
+model_203/conv2d_795/BiasAdd/ReadVariableOpReadVariableOp4model_203_conv2d_795_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_203/conv2d_795/BiasAdd/ReadVariableOpє
model_203/conv2d_795/BiasAddBiasAdd$model_203/conv2d_795/Conv2D:output:03model_203/conv2d_795/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_203/conv2d_795/BiasAddИ
IdentityIdentity%model_203/conv2d_795/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityю
NoOpNoOp,^model_203/conv2d_791/BiasAdd/ReadVariableOp+^model_203/conv2d_791/Conv2D/ReadVariableOp,^model_203/conv2d_792/BiasAdd/ReadVariableOp+^model_203/conv2d_792/Conv2D/ReadVariableOp,^model_203/conv2d_793/BiasAdd/ReadVariableOp+^model_203/conv2d_793/Conv2D/ReadVariableOp,^model_203/conv2d_794/BiasAdd/ReadVariableOp+^model_203/conv2d_794/Conv2D/ReadVariableOp,^model_203/conv2d_795/BiasAdd/ReadVariableOp+^model_203/conv2d_795/Conv2D/ReadVariableOp+^model_203/dense_203/BiasAdd/ReadVariableOp*^model_203/dense_203/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2Z
+model_203/conv2d_791/BiasAdd/ReadVariableOp+model_203/conv2d_791/BiasAdd/ReadVariableOp2X
*model_203/conv2d_791/Conv2D/ReadVariableOp*model_203/conv2d_791/Conv2D/ReadVariableOp2Z
+model_203/conv2d_792/BiasAdd/ReadVariableOp+model_203/conv2d_792/BiasAdd/ReadVariableOp2X
*model_203/conv2d_792/Conv2D/ReadVariableOp*model_203/conv2d_792/Conv2D/ReadVariableOp2Z
+model_203/conv2d_793/BiasAdd/ReadVariableOp+model_203/conv2d_793/BiasAdd/ReadVariableOp2X
*model_203/conv2d_793/Conv2D/ReadVariableOp*model_203/conv2d_793/Conv2D/ReadVariableOp2Z
+model_203/conv2d_794/BiasAdd/ReadVariableOp+model_203/conv2d_794/BiasAdd/ReadVariableOp2X
*model_203/conv2d_794/Conv2D/ReadVariableOp*model_203/conv2d_794/Conv2D/ReadVariableOp2Z
+model_203/conv2d_795/BiasAdd/ReadVariableOp+model_203/conv2d_795/BiasAdd/ReadVariableOp2X
*model_203/conv2d_795/Conv2D/ReadVariableOp*model_203/conv2d_795/Conv2D/ReadVariableOp2X
*model_203/dense_203/BiasAdd/ReadVariableOp*model_203/dense_203/BiasAdd/ReadVariableOp2V
)model_203/dense_203/MatMul/ReadVariableOp)model_203/dense_203/MatMul/ReadVariableOp:V R
/
_output_shapes
:         

_user_specified_nameinput
ъ
S
7__inference_average_pooling2d_294_layer_call_fn_9128227

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_91272592
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
№\
Ч
F__inference_model_203_layer_call_and_return_conditional_losses_9127882	
input,
conv2d_791_9127831: 
conv2d_791_9127833:,
conv2d_792_9127837: 
conv2d_792_9127839:#
dense_203_9127844:@@
dense_203_9127846:@,
conv2d_793_9127858: 
conv2d_793_9127860:,
conv2d_794_9127871: 
conv2d_794_9127873:,
conv2d_795_9127876: 
conv2d_795_9127878:
identityИв"conv2d_791/StatefulPartitionedCallв"conv2d_792/StatefulPartitionedCallв"conv2d_793/StatefulPartitionedCallв"conv2d_794/StatefulPartitionedCallв"conv2d_795/StatefulPartitionedCallв!dense_203/StatefulPartitionedCall╡
0tf.__operators__.getitem_402/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_402/strided_slice/stack╣
2tf.__operators__.getitem_402/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_402/strided_slice/stack_1╣
2tf.__operators__.getitem_402/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_402/strided_slice/stack_2Н
*tf.__operators__.getitem_402/strided_sliceStridedSliceinput9tf.__operators__.getitem_402/strided_slice/stack:output:0;tf.__operators__.getitem_402/strided_slice/stack_1:output:0;tf.__operators__.getitem_402/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_402/strided_slice│
$range_conversion_203/PartitionedCallPartitionedCall3tf.__operators__.getitem_402/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_91273172&
$range_conversion_203/PartitionedCall╡
0tf.__operators__.getitem_403/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_403/strided_slice/stack╣
2tf.__operators__.getitem_403/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_403/strided_slice/stack_1╣
2tf.__operators__.getitem_403/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_403/strided_slice/stack_2Н
*tf.__operators__.getitem_403/strided_sliceStridedSliceinput9tf.__operators__.getitem_403/strided_slice/stack:output:0;tf.__operators__.getitem_403/strided_slice/stack_1:output:0;tf.__operators__.getitem_403/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_403/strided_slicex
tf.concat_495/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_495/concat/axisГ
tf.concat_495/concatConcatV2-range_conversion_203/PartitionedCall:output:03tf.__operators__.getitem_403/strided_slice:output:0"tf.concat_495/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_495/concat┼
"conv2d_791/StatefulPartitionedCallStatefulPartitionedCalltf.concat_495/concat:output:0conv2d_791_9127831conv2d_791_9127833*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_791_layer_call_and_return_conditional_losses_91273362$
"conv2d_791/StatefulPartitionedCallо
%average_pooling2d_294/PartitionedCallPartitionedCall+conv2d_791/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_91273462'
%average_pooling2d_294/PartitionedCall╓
"conv2d_792/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_294/PartitionedCall:output:0conv2d_792_9127837conv2d_792_9127839*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_792_layer_call_and_return_conditional_losses_91273592$
"conv2d_792/StatefulPartitionedCallо
%average_pooling2d_295/PartitionedCallPartitionedCall+conv2d_792/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_91273692'
%average_pooling2d_295/PartitionedCallЛ
reshape_406/PartitionedCallPartitionedCall.average_pooling2d_295/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_406_layer_call_and_return_conditional_losses_91273832
reshape_406/PartitionedCall┐
!dense_203/StatefulPartitionedCallStatefulPartitionedCall$reshape_406/PartitionedCall:output:0dense_203_9127844dense_203_9127846*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_dense_203_layer_call_and_return_conditional_losses_91273962#
!dense_203/StatefulPartitionedCallП
reshape_407/PartitionedCallPartitionedCall*dense_203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_407_layer_call_and_return_conditional_losses_91274162
reshape_407/PartitionedCallЭ
tf.reshape_588/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_588/Reshape/shape╩
tf.reshape_588/ReshapeReshape$reshape_407/PartitionedCall:output:0%tf.reshape_588/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_588/ReshapeЩ
tf.tile_294/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_294/Tile/multiples┤
tf.tile_294/TileTiletf.reshape_588/Reshape:output:0#tf.tile_294/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_294/TileХ
tf.reshape_589/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_589/Reshape/shape╖
tf.reshape_589/ReshapeReshapetf.tile_294/Tile:output:0%tf.reshape_589/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_589/Reshapex
tf.concat_496/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_496/concat/axisэ
tf.concat_496/concatConcatV2tf.reshape_589/Reshape:output:0+conv2d_792/StatefulPartitionedCall:output:0"tf.concat_496/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_496/concat┼
"conv2d_793/StatefulPartitionedCallStatefulPartitionedCalltf.concat_496/concat:output:0conv2d_793_9127858conv2d_793_9127860*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_793_layer_call_and_return_conditional_losses_91274372$
"conv2d_793/StatefulPartitionedCallЭ
tf.reshape_590/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_590/Reshape/shape╤
tf.reshape_590/ReshapeReshape+conv2d_793/StatefulPartitionedCall:output:0%tf.reshape_590/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_590/ReshapeЩ
tf.tile_295/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_295/Tile/multiples┤
tf.tile_295/TileTiletf.reshape_590/Reshape:output:0#tf.tile_295/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_295/TileХ
tf.reshape_591/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_591/Reshape/shape╖
tf.reshape_591/ReshapeReshapetf.tile_295/Tile:output:0%tf.reshape_591/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_591/Reshapex
tf.concat_497/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_497/concat/axisэ
tf.concat_497/concatConcatV2tf.reshape_591/Reshape:output:0+conv2d_791/StatefulPartitionedCall:output:0"tf.concat_497/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_497/concat┼
"conv2d_794/StatefulPartitionedCallStatefulPartitionedCalltf.concat_497/concat:output:0conv2d_794_9127871conv2d_794_9127873*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_794_layer_call_and_return_conditional_losses_91274622$
"conv2d_794/StatefulPartitionedCall╙
"conv2d_795/StatefulPartitionedCallStatefulPartitionedCall+conv2d_794/StatefulPartitionedCall:output:0conv2d_795_9127876conv2d_795_9127878*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_795_layer_call_and_return_conditional_losses_91274782$
"conv2d_795/StatefulPartitionedCallО
IdentityIdentity+conv2d_795/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_791/StatefulPartitionedCall#^conv2d_792/StatefulPartitionedCall#^conv2d_793/StatefulPartitionedCall#^conv2d_794/StatefulPartitionedCall#^conv2d_795/StatefulPartitionedCall"^dense_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_791/StatefulPartitionedCall"conv2d_791/StatefulPartitionedCall2H
"conv2d_792/StatefulPartitionedCall"conv2d_792/StatefulPartitionedCall2H
"conv2d_793/StatefulPartitionedCall"conv2d_793/StatefulPartitionedCall2H
"conv2d_794/StatefulPartitionedCall"conv2d_794/StatefulPartitionedCall2H
"conv2d_795/StatefulPartitionedCall"conv2d_795/StatefulPartitionedCall2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall:V R
/
_output_shapes
:         

_user_specified_nameinput
╗	
q
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_9128187

parameters
identityS
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sub/yg
subSub
parameterssub/y:output:0*
T0*/
_output_shapes
:         2
sub[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
	truediv/yt
truedivRealDivsub:z:0truediv/y:output:0*
T0*/
_output_shapes
:         2	
truedivS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/yh
mulMultruediv:z:0mul/y:output:0*
T0*/
_output_shapes
:         2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yf
addAddV2mul:z:0add/y:output:0*
T0*/
_output_shapes
:         2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :[ W
/
_output_shapes
:         
$
_user_specified_name
parameters
╗	
q
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_9127317

parameters
identityS
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sub/yg
subSub
parameterssub/y:output:0*
T0*/
_output_shapes
:         2
sub[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
	truediv/yt
truedivRealDivsub:z:0truediv/y:output:0*
T0*/
_output_shapes
:         2	
truedivS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/yh
mulMultruediv:z:0mul/y:output:0*
T0*/
_output_shapes
:         2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yf
addAddV2mul:z:0add/y:output:0*
T0*/
_output_shapes
:         2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :[ W
/
_output_shapes
:         
$
_user_specified_name
parameters
¤
S
7__inference_average_pooling2d_294_layer_call_fn_9128232

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_91273462
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
¤
S
7__inference_average_pooling2d_295_layer_call_fn_9128272

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_91273692
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
А]
Ш
F__inference_model_203_layer_call_and_return_conditional_losses_9127485

inputs,
conv2d_791_9127337: 
conv2d_791_9127339:,
conv2d_792_9127360: 
conv2d_792_9127362:#
dense_203_9127397:@@
dense_203_9127399:@,
conv2d_793_9127438: 
conv2d_793_9127440:,
conv2d_794_9127463: 
conv2d_794_9127465:,
conv2d_795_9127479: 
conv2d_795_9127481:
identityИв"conv2d_791/StatefulPartitionedCallв"conv2d_792/StatefulPartitionedCallв"conv2d_793/StatefulPartitionedCallв"conv2d_794/StatefulPartitionedCallв"conv2d_795/StatefulPartitionedCallв!dense_203/StatefulPartitionedCall╡
0tf.__operators__.getitem_402/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_402/strided_slice/stack╣
2tf.__operators__.getitem_402/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_402/strided_slice/stack_1╣
2tf.__operators__.getitem_402/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_402/strided_slice/stack_2О
*tf.__operators__.getitem_402/strided_sliceStridedSliceinputs9tf.__operators__.getitem_402/strided_slice/stack:output:0;tf.__operators__.getitem_402/strided_slice/stack_1:output:0;tf.__operators__.getitem_402/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_402/strided_slice│
$range_conversion_203/PartitionedCallPartitionedCall3tf.__operators__.getitem_402/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_91273172&
$range_conversion_203/PartitionedCall╡
0tf.__operators__.getitem_403/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_403/strided_slice/stack╣
2tf.__operators__.getitem_403/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_403/strided_slice/stack_1╣
2tf.__operators__.getitem_403/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_403/strided_slice/stack_2О
*tf.__operators__.getitem_403/strided_sliceStridedSliceinputs9tf.__operators__.getitem_403/strided_slice/stack:output:0;tf.__operators__.getitem_403/strided_slice/stack_1:output:0;tf.__operators__.getitem_403/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_403/strided_slicex
tf.concat_495/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_495/concat/axisГ
tf.concat_495/concatConcatV2-range_conversion_203/PartitionedCall:output:03tf.__operators__.getitem_403/strided_slice:output:0"tf.concat_495/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_495/concat┼
"conv2d_791/StatefulPartitionedCallStatefulPartitionedCalltf.concat_495/concat:output:0conv2d_791_9127337conv2d_791_9127339*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_791_layer_call_and_return_conditional_losses_91273362$
"conv2d_791/StatefulPartitionedCallо
%average_pooling2d_294/PartitionedCallPartitionedCall+conv2d_791/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_91273462'
%average_pooling2d_294/PartitionedCall╓
"conv2d_792/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_294/PartitionedCall:output:0conv2d_792_9127360conv2d_792_9127362*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_792_layer_call_and_return_conditional_losses_91273592$
"conv2d_792/StatefulPartitionedCallо
%average_pooling2d_295/PartitionedCallPartitionedCall+conv2d_792/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_91273692'
%average_pooling2d_295/PartitionedCallЛ
reshape_406/PartitionedCallPartitionedCall.average_pooling2d_295/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_406_layer_call_and_return_conditional_losses_91273832
reshape_406/PartitionedCall┐
!dense_203/StatefulPartitionedCallStatefulPartitionedCall$reshape_406/PartitionedCall:output:0dense_203_9127397dense_203_9127399*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_dense_203_layer_call_and_return_conditional_losses_91273962#
!dense_203/StatefulPartitionedCallП
reshape_407/PartitionedCallPartitionedCall*dense_203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_407_layer_call_and_return_conditional_losses_91274162
reshape_407/PartitionedCallЭ
tf.reshape_588/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_588/Reshape/shape╩
tf.reshape_588/ReshapeReshape$reshape_407/PartitionedCall:output:0%tf.reshape_588/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_588/ReshapeЩ
tf.tile_294/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_294/Tile/multiples┤
tf.tile_294/TileTiletf.reshape_588/Reshape:output:0#tf.tile_294/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_294/TileХ
tf.reshape_589/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_589/Reshape/shape╖
tf.reshape_589/ReshapeReshapetf.tile_294/Tile:output:0%tf.reshape_589/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_589/Reshapex
tf.concat_496/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_496/concat/axisэ
tf.concat_496/concatConcatV2tf.reshape_589/Reshape:output:0+conv2d_792/StatefulPartitionedCall:output:0"tf.concat_496/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_496/concat┼
"conv2d_793/StatefulPartitionedCallStatefulPartitionedCalltf.concat_496/concat:output:0conv2d_793_9127438conv2d_793_9127440*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_793_layer_call_and_return_conditional_losses_91274372$
"conv2d_793/StatefulPartitionedCallЭ
tf.reshape_590/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_590/Reshape/shape╤
tf.reshape_590/ReshapeReshape+conv2d_793/StatefulPartitionedCall:output:0%tf.reshape_590/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_590/ReshapeЩ
tf.tile_295/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_295/Tile/multiples┤
tf.tile_295/TileTiletf.reshape_590/Reshape:output:0#tf.tile_295/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_295/TileХ
tf.reshape_591/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_591/Reshape/shape╖
tf.reshape_591/ReshapeReshapetf.tile_295/Tile:output:0%tf.reshape_591/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_591/Reshapex
tf.concat_497/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_497/concat/axisэ
tf.concat_497/concatConcatV2tf.reshape_591/Reshape:output:0+conv2d_791/StatefulPartitionedCall:output:0"tf.concat_497/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_497/concat┼
"conv2d_794/StatefulPartitionedCallStatefulPartitionedCalltf.concat_497/concat:output:0conv2d_794_9127463conv2d_794_9127465*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_794_layer_call_and_return_conditional_losses_91274622$
"conv2d_794/StatefulPartitionedCall╙
"conv2d_795/StatefulPartitionedCallStatefulPartitionedCall+conv2d_794/StatefulPartitionedCall:output:0conv2d_795_9127479conv2d_795_9127481*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_795_layer_call_and_return_conditional_losses_91274782$
"conv2d_795/StatefulPartitionedCallО
IdentityIdentity+conv2d_795/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_791/StatefulPartitionedCall#^conv2d_792/StatefulPartitionedCall#^conv2d_793/StatefulPartitionedCall#^conv2d_794/StatefulPartitionedCall#^conv2d_795/StatefulPartitionedCall"^dense_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_791/StatefulPartitionedCall"conv2d_791/StatefulPartitionedCall2H
"conv2d_792/StatefulPartitionedCall"conv2d_792/StatefulPartitionedCall2H
"conv2d_793/StatefulPartitionedCall"conv2d_793/StatefulPartitionedCall2H
"conv2d_794/StatefulPartitionedCall"conv2d_794/StatefulPartitionedCall2H
"conv2d_795/StatefulPartitionedCall"conv2d_795/StatefulPartitionedCall2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
У
d
H__inference_reshape_406_layer_call_and_return_conditional_losses_9127383

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
У
d
H__inference_reshape_406_layer_call_and_return_conditional_losses_9128284

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
щ
╧
+__inference_model_203_layer_call_fn_9128175

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_model_203_layer_call_and_return_conditional_losses_91276962
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ц
╬
+__inference_model_203_layer_call_fn_9127752	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_model_203_layer_call_and_return_conditional_losses_91276962
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         

_user_specified_nameinput
┘
I
-__inference_reshape_407_layer_call_fn_9128328

inputs
identity╙
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_407_layer_call_and_return_conditional_losses_91274162
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
л
А
G__inference_conv2d_792_layer_call_and_return_conditional_losses_9127359

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
щ
╧
+__inference_model_203_layer_call_fn_9128146

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_model_203_layer_call_and_return_conditional_losses_91274852
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
е
б
,__inference_conv2d_793_layer_call_fn_9128348

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_793_layer_call_and_return_conditional_losses_91274372
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
А]
Ш
F__inference_model_203_layer_call_and_return_conditional_losses_9127696

inputs,
conv2d_791_9127645: 
conv2d_791_9127647:,
conv2d_792_9127651: 
conv2d_792_9127653:#
dense_203_9127658:@@
dense_203_9127660:@,
conv2d_793_9127672: 
conv2d_793_9127674:,
conv2d_794_9127685: 
conv2d_794_9127687:,
conv2d_795_9127690: 
conv2d_795_9127692:
identityИв"conv2d_791/StatefulPartitionedCallв"conv2d_792/StatefulPartitionedCallв"conv2d_793/StatefulPartitionedCallв"conv2d_794/StatefulPartitionedCallв"conv2d_795/StatefulPartitionedCallв!dense_203/StatefulPartitionedCall╡
0tf.__operators__.getitem_402/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_402/strided_slice/stack╣
2tf.__operators__.getitem_402/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_402/strided_slice/stack_1╣
2tf.__operators__.getitem_402/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_402/strided_slice/stack_2О
*tf.__operators__.getitem_402/strided_sliceStridedSliceinputs9tf.__operators__.getitem_402/strided_slice/stack:output:0;tf.__operators__.getitem_402/strided_slice/stack_1:output:0;tf.__operators__.getitem_402/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_402/strided_slice│
$range_conversion_203/PartitionedCallPartitionedCall3tf.__operators__.getitem_402/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_91273172&
$range_conversion_203/PartitionedCall╡
0tf.__operators__.getitem_403/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_403/strided_slice/stack╣
2tf.__operators__.getitem_403/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_403/strided_slice/stack_1╣
2tf.__operators__.getitem_403/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_403/strided_slice/stack_2О
*tf.__operators__.getitem_403/strided_sliceStridedSliceinputs9tf.__operators__.getitem_403/strided_slice/stack:output:0;tf.__operators__.getitem_403/strided_slice/stack_1:output:0;tf.__operators__.getitem_403/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_403/strided_slicex
tf.concat_495/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_495/concat/axisГ
tf.concat_495/concatConcatV2-range_conversion_203/PartitionedCall:output:03tf.__operators__.getitem_403/strided_slice:output:0"tf.concat_495/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_495/concat┼
"conv2d_791/StatefulPartitionedCallStatefulPartitionedCalltf.concat_495/concat:output:0conv2d_791_9127645conv2d_791_9127647*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_791_layer_call_and_return_conditional_losses_91273362$
"conv2d_791/StatefulPartitionedCallо
%average_pooling2d_294/PartitionedCallPartitionedCall+conv2d_791/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_91273462'
%average_pooling2d_294/PartitionedCall╓
"conv2d_792/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_294/PartitionedCall:output:0conv2d_792_9127651conv2d_792_9127653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_792_layer_call_and_return_conditional_losses_91273592$
"conv2d_792/StatefulPartitionedCallо
%average_pooling2d_295/PartitionedCallPartitionedCall+conv2d_792/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_91273692'
%average_pooling2d_295/PartitionedCallЛ
reshape_406/PartitionedCallPartitionedCall.average_pooling2d_295/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_406_layer_call_and_return_conditional_losses_91273832
reshape_406/PartitionedCall┐
!dense_203/StatefulPartitionedCallStatefulPartitionedCall$reshape_406/PartitionedCall:output:0dense_203_9127658dense_203_9127660*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_dense_203_layer_call_and_return_conditional_losses_91273962#
!dense_203/StatefulPartitionedCallП
reshape_407/PartitionedCallPartitionedCall*dense_203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_reshape_407_layer_call_and_return_conditional_losses_91274162
reshape_407/PartitionedCallЭ
tf.reshape_588/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_588/Reshape/shape╩
tf.reshape_588/ReshapeReshape$reshape_407/PartitionedCall:output:0%tf.reshape_588/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_588/ReshapeЩ
tf.tile_294/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_294/Tile/multiples┤
tf.tile_294/TileTiletf.reshape_588/Reshape:output:0#tf.tile_294/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_294/TileХ
tf.reshape_589/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_589/Reshape/shape╖
tf.reshape_589/ReshapeReshapetf.tile_294/Tile:output:0%tf.reshape_589/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_589/Reshapex
tf.concat_496/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_496/concat/axisэ
tf.concat_496/concatConcatV2tf.reshape_589/Reshape:output:0+conv2d_792/StatefulPartitionedCall:output:0"tf.concat_496/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_496/concat┼
"conv2d_793/StatefulPartitionedCallStatefulPartitionedCalltf.concat_496/concat:output:0conv2d_793_9127672conv2d_793_9127674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_793_layer_call_and_return_conditional_losses_91274372$
"conv2d_793/StatefulPartitionedCallЭ
tf.reshape_590/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_590/Reshape/shape╤
tf.reshape_590/ReshapeReshape+conv2d_793/StatefulPartitionedCall:output:0%tf.reshape_590/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_590/ReshapeЩ
tf.tile_295/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_295/Tile/multiples┤
tf.tile_295/TileTiletf.reshape_590/Reshape:output:0#tf.tile_295/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_295/TileХ
tf.reshape_591/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_591/Reshape/shape╖
tf.reshape_591/ReshapeReshapetf.tile_295/Tile:output:0%tf.reshape_591/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_591/Reshapex
tf.concat_497/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_497/concat/axisэ
tf.concat_497/concatConcatV2tf.reshape_591/Reshape:output:0+conv2d_791/StatefulPartitionedCall:output:0"tf.concat_497/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_497/concat┼
"conv2d_794/StatefulPartitionedCallStatefulPartitionedCalltf.concat_497/concat:output:0conv2d_794_9127685conv2d_794_9127687*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_794_layer_call_and_return_conditional_losses_91274622$
"conv2d_794/StatefulPartitionedCall╙
"conv2d_795/StatefulPartitionedCallStatefulPartitionedCall+conv2d_794/StatefulPartitionedCall:output:0conv2d_795_9127690conv2d_795_9127692*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_795_layer_call_and_return_conditional_losses_91274782$
"conv2d_795/StatefulPartitionedCallО
IdentityIdentity+conv2d_795/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_791/StatefulPartitionedCall#^conv2d_792/StatefulPartitionedCall#^conv2d_793/StatefulPartitionedCall#^conv2d_794/StatefulPartitionedCall#^conv2d_795/StatefulPartitionedCall"^dense_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_791/StatefulPartitionedCall"conv2d_791/StatefulPartitionedCall2H
"conv2d_792/StatefulPartitionedCall"conv2d_792/StatefulPartitionedCall2H
"conv2d_793/StatefulPartitionedCall"conv2d_793/StatefulPartitionedCall2H
"conv2d_794/StatefulPartitionedCall"conv2d_794/StatefulPartitionedCall2H
"conv2d_795/StatefulPartitionedCall"conv2d_795/StatefulPartitionedCall2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
З
V
6__inference_range_conversion_203_layer_call_fn_9128192

parameters
identityр
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_91273172
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :[ W
/
_output_shapes
:         
$
_user_specified_name
parameters
е
б
,__inference_conv2d_795_layer_call_fn_9128387

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_795_layer_call_and_return_conditional_losses_91274782
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
х
n
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9127369

inputs
identity▓
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPooll
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
л
А
G__inference_conv2d_793_layer_call_and_return_conditional_losses_9127437

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
У
d
H__inference_reshape_407_layer_call_and_return_conditional_losses_9128323

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
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ф
ў
F__inference_dense_203_layer_call_and_return_conditional_losses_9128300

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
╖
А
G__inference_conv2d_795_layer_call_and_return_conditional_losses_9127478

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
е
б
,__inference_conv2d_792_layer_call_fn_9128252

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_792_layer_call_and_return_conditional_losses_91273592
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
х
n
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9128262

inputs
identity▓
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPooll
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
е
б
,__inference_conv2d_794_layer_call_fn_9128368

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_794_layer_call_and_return_conditional_losses_91274622
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
е
б
,__inference_conv2d_791_layer_call_fn_9128212

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *P
fKRI
G__inference_conv2d_791_layer_call_and_return_conditional_losses_91273362
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
л
А
G__inference_conv2d_793_layer_call_and_return_conditional_losses_9128339

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
х
n
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9128222

inputs
identity▓
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPooll
IdentityIdentityAvgPool:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ц
╬
+__inference_model_203_layer_call_fn_9127512	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:@@
	unknown_4:@#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_model_203_layer_call_and_return_conditional_losses_91274852
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:         

_user_specified_nameinput
У
d
H__inference_reshape_407_layer_call_and_return_conditional_losses_9127416

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
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
л
А
G__inference_conv2d_794_layer_call_and_return_conditional_losses_9128359

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╥
n
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9127281

inputs
identity═
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
л
А
G__inference_conv2d_794_layer_call_and_return_conditional_losses_9127462

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp║
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЯ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:         2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
·
Ш
+__inference_dense_203_layer_call_fn_9128309

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall√
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
*2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_dense_203_layer_call_and_return_conditional_losses_91273962
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
ф_
я
 __inference__traced_save_9128545
file_prefix0
,savev2_conv2d_791_kernel_read_readvariableop.
*savev2_conv2d_791_bias_read_readvariableop0
,savev2_conv2d_792_kernel_read_readvariableop.
*savev2_conv2d_792_bias_read_readvariableop/
+savev2_dense_203_kernel_read_readvariableop-
)savev2_dense_203_bias_read_readvariableop0
,savev2_conv2d_793_kernel_read_readvariableop.
*savev2_conv2d_793_bias_read_readvariableop0
,savev2_conv2d_794_kernel_read_readvariableop.
*savev2_conv2d_794_bias_read_readvariableop0
,savev2_conv2d_795_kernel_read_readvariableop.
*savev2_conv2d_795_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_791_kernel_m_read_readvariableop5
1savev2_adam_conv2d_791_bias_m_read_readvariableop7
3savev2_adam_conv2d_792_kernel_m_read_readvariableop5
1savev2_adam_conv2d_792_bias_m_read_readvariableop6
2savev2_adam_dense_203_kernel_m_read_readvariableop4
0savev2_adam_dense_203_bias_m_read_readvariableop7
3savev2_adam_conv2d_793_kernel_m_read_readvariableop5
1savev2_adam_conv2d_793_bias_m_read_readvariableop7
3savev2_adam_conv2d_794_kernel_m_read_readvariableop5
1savev2_adam_conv2d_794_bias_m_read_readvariableop7
3savev2_adam_conv2d_795_kernel_m_read_readvariableop5
1savev2_adam_conv2d_795_bias_m_read_readvariableop7
3savev2_adam_conv2d_791_kernel_v_read_readvariableop5
1savev2_adam_conv2d_791_bias_v_read_readvariableop7
3savev2_adam_conv2d_792_kernel_v_read_readvariableop5
1savev2_adam_conv2d_792_bias_v_read_readvariableop6
2savev2_adam_dense_203_kernel_v_read_readvariableop4
0savev2_adam_dense_203_bias_v_read_readvariableop7
3savev2_adam_conv2d_793_kernel_v_read_readvariableop5
1savev2_adam_conv2d_793_bias_v_read_readvariableop7
3savev2_adam_conv2d_794_kernel_v_read_readvariableop5
1savev2_adam_conv2d_794_bias_v_read_readvariableop7
3savev2_adam_conv2d_795_kernel_v_read_readvariableop5
1savev2_adam_conv2d_795_bias_v_read_readvariableop
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
ShardedFilename║
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesф
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╡
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_791_kernel_read_readvariableop*savev2_conv2d_791_bias_read_readvariableop,savev2_conv2d_792_kernel_read_readvariableop*savev2_conv2d_792_bias_read_readvariableop+savev2_dense_203_kernel_read_readvariableop)savev2_dense_203_bias_read_readvariableop,savev2_conv2d_793_kernel_read_readvariableop*savev2_conv2d_793_bias_read_readvariableop,savev2_conv2d_794_kernel_read_readvariableop*savev2_conv2d_794_bias_read_readvariableop,savev2_conv2d_795_kernel_read_readvariableop*savev2_conv2d_795_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_791_kernel_m_read_readvariableop1savev2_adam_conv2d_791_bias_m_read_readvariableop3savev2_adam_conv2d_792_kernel_m_read_readvariableop1savev2_adam_conv2d_792_bias_m_read_readvariableop2savev2_adam_dense_203_kernel_m_read_readvariableop0savev2_adam_dense_203_bias_m_read_readvariableop3savev2_adam_conv2d_793_kernel_m_read_readvariableop1savev2_adam_conv2d_793_bias_m_read_readvariableop3savev2_adam_conv2d_794_kernel_m_read_readvariableop1savev2_adam_conv2d_794_bias_m_read_readvariableop3savev2_adam_conv2d_795_kernel_m_read_readvariableop1savev2_adam_conv2d_795_bias_m_read_readvariableop3savev2_adam_conv2d_791_kernel_v_read_readvariableop1savev2_adam_conv2d_791_bias_v_read_readvariableop3savev2_adam_conv2d_792_kernel_v_read_readvariableop1savev2_adam_conv2d_792_bias_v_read_readvariableop2savev2_adam_dense_203_kernel_v_read_readvariableop0savev2_adam_dense_203_bias_v_read_readvariableop3savev2_adam_conv2d_793_kernel_v_read_readvariableop1savev2_adam_conv2d_793_bias_v_read_readvariableop3savev2_adam_conv2d_794_kernel_v_read_readvariableop1savev2_adam_conv2d_794_bias_v_read_readvariableop3savev2_adam_conv2d_795_kernel_v_read_readvariableop1savev2_adam_conv2d_795_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
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

identity_1Identity_1:output:0*├
_input_shapes▒
о: :::::@@:@::::::: : : : : : : : : :::::@@:@:::::::::::@@:@::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::$& 

_output_shapes

:@@: '

_output_shapes
:@:,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
::.

_output_shapes
: 
╨П
¤	
F__inference_model_203_layer_call_and_return_conditional_losses_9128018

inputsC
)conv2d_791_conv2d_readvariableop_resource:8
*conv2d_791_biasadd_readvariableop_resource:C
)conv2d_792_conv2d_readvariableop_resource:8
*conv2d_792_biasadd_readvariableop_resource::
(dense_203_matmul_readvariableop_resource:@@7
)dense_203_biasadd_readvariableop_resource:@C
)conv2d_793_conv2d_readvariableop_resource:8
*conv2d_793_biasadd_readvariableop_resource:C
)conv2d_794_conv2d_readvariableop_resource:8
*conv2d_794_biasadd_readvariableop_resource:C
)conv2d_795_conv2d_readvariableop_resource:8
*conv2d_795_biasadd_readvariableop_resource:
identityИв!conv2d_791/BiasAdd/ReadVariableOpв conv2d_791/Conv2D/ReadVariableOpв!conv2d_792/BiasAdd/ReadVariableOpв conv2d_792/Conv2D/ReadVariableOpв!conv2d_793/BiasAdd/ReadVariableOpв conv2d_793/Conv2D/ReadVariableOpв!conv2d_794/BiasAdd/ReadVariableOpв conv2d_794/Conv2D/ReadVariableOpв!conv2d_795/BiasAdd/ReadVariableOpв conv2d_795/Conv2D/ReadVariableOpв dense_203/BiasAdd/ReadVariableOpвdense_203/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_402/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_402/strided_slice/stack╣
2tf.__operators__.getitem_402/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_402/strided_slice/stack_1╣
2tf.__operators__.getitem_402/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_402/strided_slice/stack_2О
*tf.__operators__.getitem_402/strided_sliceStridedSliceinputs9tf.__operators__.getitem_402/strided_slice/stack:output:0;tf.__operators__.getitem_402/strided_slice/stack_1:output:0;tf.__operators__.getitem_402/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_402/strided_slice}
range_conversion_203/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_203/sub/y╧
range_conversion_203/subSub3tf.__operators__.getitem_402/strided_slice:output:0#range_conversion_203/sub/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/subЕ
range_conversion_203/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_203/truediv/y╚
range_conversion_203/truedivRealDivrange_conversion_203/sub:z:0'range_conversion_203/truediv/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/truediv}
range_conversion_203/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_203/mul/y╝
range_conversion_203/mulMul range_conversion_203/truediv:z:0#range_conversion_203/mul/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/mul}
range_conversion_203/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_203/add/y║
range_conversion_203/addAddV2range_conversion_203/mul:z:0#range_conversion_203/add/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_203/add╡
0tf.__operators__.getitem_403/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_403/strided_slice/stack╣
2tf.__operators__.getitem_403/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_403/strided_slice/stack_1╣
2tf.__operators__.getitem_403/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_403/strided_slice/stack_2О
*tf.__operators__.getitem_403/strided_sliceStridedSliceinputs9tf.__operators__.getitem_403/strided_slice/stack:output:0;tf.__operators__.getitem_403/strided_slice/stack_1:output:0;tf.__operators__.getitem_403/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_403/strided_slicex
tf.concat_495/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_495/concat/axisЄ
tf.concat_495/concatConcatV2range_conversion_203/add:z:03tf.__operators__.getitem_403/strided_slice:output:0"tf.concat_495/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_495/concat╢
 conv2d_791/Conv2D/ReadVariableOpReadVariableOp)conv2d_791_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_791/Conv2D/ReadVariableOpЄ
conv2d_791/Conv2DConv2Dtf.concat_495/concat:output:0(conv2d_791/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_791/Conv2Dн
!conv2d_791/BiasAdd/ReadVariableOpReadVariableOp*conv2d_791_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_791/BiasAdd/ReadVariableOp╦
conv2d_791/BiasAddBiasAddconv2d_791/Conv2D:output:0)conv2d_791/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_791/BiasAddН
conv2d_791/SoftplusSoftplusconv2d_791/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_791/Softplus∙
average_pooling2d_294/AvgPoolAvgPool!conv2d_791/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_294/AvgPool╢
 conv2d_792/Conv2D/ReadVariableOpReadVariableOp)conv2d_792_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_792/Conv2D/ReadVariableOp√
conv2d_792/Conv2DConv2D&average_pooling2d_294/AvgPool:output:0(conv2d_792/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_792/Conv2Dн
!conv2d_792/BiasAdd/ReadVariableOpReadVariableOp*conv2d_792_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_792/BiasAdd/ReadVariableOp╦
conv2d_792/BiasAddBiasAddconv2d_792/Conv2D:output:0)conv2d_792/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_792/BiasAddН
conv2d_792/SoftplusSoftplusconv2d_792/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_792/Softplus∙
average_pooling2d_295/AvgPoolAvgPool!conv2d_792/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_295/AvgPool|
reshape_406/ShapeShape&average_pooling2d_295/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_406/ShapeМ
reshape_406/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_406/strided_slice/stackР
!reshape_406/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_406/strided_slice/stack_1Р
!reshape_406/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_406/strided_slice/stack_2к
reshape_406/strided_sliceStridedSlicereshape_406/Shape:output:0(reshape_406/strided_slice/stack:output:0*reshape_406/strided_slice/stack_1:output:0*reshape_406/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_406/strided_slice|
reshape_406/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_406/Reshape/shape/1╢
reshape_406/Reshape/shapePack"reshape_406/strided_slice:output:0$reshape_406/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_406/Reshape/shape│
reshape_406/ReshapeReshape&average_pooling2d_295/AvgPool:output:0"reshape_406/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_406/Reshapeл
dense_203/MatMul/ReadVariableOpReadVariableOp(dense_203_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_203/MatMul/ReadVariableOpз
dense_203/MatMulMatMulreshape_406/Reshape:output:0'dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_203/MatMulк
 dense_203/BiasAdd/ReadVariableOpReadVariableOp)dense_203_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_203/BiasAdd/ReadVariableOpй
dense_203/BiasAddBiasAdddense_203/MatMul:product:0(dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_203/BiasAddВ
dense_203/SoftplusSoftplusdense_203/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_203/Softplusv
reshape_407/ShapeShape dense_203/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_407/ShapeМ
reshape_407/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_407/strided_slice/stackР
!reshape_407/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_407/strided_slice/stack_1Р
!reshape_407/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_407/strided_slice/stack_2к
reshape_407/strided_sliceStridedSlicereshape_407/Shape:output:0(reshape_407/strided_slice/stack:output:0*reshape_407/strided_slice/stack_1:output:0*reshape_407/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_407/strided_slice|
reshape_407/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_407/Reshape/shape/1|
reshape_407/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_407/Reshape/shape/2|
reshape_407/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_407/Reshape/shape/3В
reshape_407/Reshape/shapePack"reshape_407/strided_slice:output:0$reshape_407/Reshape/shape/1:output:0$reshape_407/Reshape/shape/2:output:0$reshape_407/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_407/Reshape/shape╡
reshape_407/ReshapeReshape dense_203/Softplus:activations:0"reshape_407/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
reshape_407/ReshapeЭ
tf.reshape_588/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_588/Reshape/shape┬
tf.reshape_588/ReshapeReshapereshape_407/Reshape:output:0%tf.reshape_588/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_588/ReshapeЩ
tf.tile_294/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_294/Tile/multiples┤
tf.tile_294/TileTiletf.reshape_588/Reshape:output:0#tf.tile_294/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_294/TileХ
tf.reshape_589/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_589/Reshape/shape╖
tf.reshape_589/ReshapeReshapetf.tile_294/Tile:output:0%tf.reshape_589/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_589/Reshapex
tf.concat_496/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_496/concat/axisу
tf.concat_496/concatConcatV2tf.reshape_589/Reshape:output:0!conv2d_792/Softplus:activations:0"tf.concat_496/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_496/concat╢
 conv2d_793/Conv2D/ReadVariableOpReadVariableOp)conv2d_793_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_793/Conv2D/ReadVariableOpЄ
conv2d_793/Conv2DConv2Dtf.concat_496/concat:output:0(conv2d_793/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_793/Conv2Dн
!conv2d_793/BiasAdd/ReadVariableOpReadVariableOp*conv2d_793_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_793/BiasAdd/ReadVariableOp╦
conv2d_793/BiasAddBiasAddconv2d_793/Conv2D:output:0)conv2d_793/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_793/BiasAddН
conv2d_793/SoftplusSoftplusconv2d_793/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_793/SoftplusЭ
tf.reshape_590/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_590/Reshape/shape╟
tf.reshape_590/ReshapeReshape!conv2d_793/Softplus:activations:0%tf.reshape_590/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_590/ReshapeЩ
tf.tile_295/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_295/Tile/multiples┤
tf.tile_295/TileTiletf.reshape_590/Reshape:output:0#tf.tile_295/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_295/TileХ
tf.reshape_591/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_591/Reshape/shape╖
tf.reshape_591/ReshapeReshapetf.tile_295/Tile:output:0%tf.reshape_591/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_591/Reshapex
tf.concat_497/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_497/concat/axisу
tf.concat_497/concatConcatV2tf.reshape_591/Reshape:output:0!conv2d_791/Softplus:activations:0"tf.concat_497/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_497/concat╢
 conv2d_794/Conv2D/ReadVariableOpReadVariableOp)conv2d_794_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_794/Conv2D/ReadVariableOpЄ
conv2d_794/Conv2DConv2Dtf.concat_497/concat:output:0(conv2d_794/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_794/Conv2Dн
!conv2d_794/BiasAdd/ReadVariableOpReadVariableOp*conv2d_794_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_794/BiasAdd/ReadVariableOp╦
conv2d_794/BiasAddBiasAddconv2d_794/Conv2D:output:0)conv2d_794/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_794/BiasAddН
conv2d_794/SoftplusSoftplusconv2d_794/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_794/Softplus╢
 conv2d_795/Conv2D/ReadVariableOpReadVariableOp)conv2d_795_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_795/Conv2D/ReadVariableOpЎ
conv2d_795/Conv2DConv2D!conv2d_794/Softplus:activations:0(conv2d_795/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_795/Conv2Dн
!conv2d_795/BiasAdd/ReadVariableOpReadVariableOp*conv2d_795_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_795/BiasAdd/ReadVariableOp╦
conv2d_795/BiasAddBiasAddconv2d_795/Conv2D:output:0)conv2d_795/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_795/BiasAdd~
IdentityIdentityconv2d_795/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

IdentityЎ
NoOpNoOp"^conv2d_791/BiasAdd/ReadVariableOp!^conv2d_791/Conv2D/ReadVariableOp"^conv2d_792/BiasAdd/ReadVariableOp!^conv2d_792/Conv2D/ReadVariableOp"^conv2d_793/BiasAdd/ReadVariableOp!^conv2d_793/Conv2D/ReadVariableOp"^conv2d_794/BiasAdd/ReadVariableOp!^conv2d_794/Conv2D/ReadVariableOp"^conv2d_795/BiasAdd/ReadVariableOp!^conv2d_795/Conv2D/ReadVariableOp!^dense_203/BiasAdd/ReadVariableOp ^dense_203/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2F
!conv2d_791/BiasAdd/ReadVariableOp!conv2d_791/BiasAdd/ReadVariableOp2D
 conv2d_791/Conv2D/ReadVariableOp conv2d_791/Conv2D/ReadVariableOp2F
!conv2d_792/BiasAdd/ReadVariableOp!conv2d_792/BiasAdd/ReadVariableOp2D
 conv2d_792/Conv2D/ReadVariableOp conv2d_792/Conv2D/ReadVariableOp2F
!conv2d_793/BiasAdd/ReadVariableOp!conv2d_793/BiasAdd/ReadVariableOp2D
 conv2d_793/Conv2D/ReadVariableOp conv2d_793/Conv2D/ReadVariableOp2F
!conv2d_794/BiasAdd/ReadVariableOp!conv2d_794/BiasAdd/ReadVariableOp2D
 conv2d_794/Conv2D/ReadVariableOp conv2d_794/Conv2D/ReadVariableOp2F
!conv2d_795/BiasAdd/ReadVariableOp!conv2d_795/BiasAdd/ReadVariableOp2D
 conv2d_795/Conv2D/ReadVariableOp conv2d_795/Conv2D/ReadVariableOp2D
 dense_203/BiasAdd/ReadVariableOp dense_203/BiasAdd/ReadVariableOp2B
dense_203/MatMul/ReadVariableOpdense_203/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╣
serving_defaultе
?
input6
serving_default_input:0         F

conv2d_7958
StatefulPartitionedCall:0         tensorflow/serving/predict:╗╨
║
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

layer-9
layer_with_weights-2
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-3
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-4
layer-21
layer_with_weights-5
layer-22
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+┼&call_and_return_all_conditional_losses
╞__call__
╟_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
з
	variables
 trainable_variables
!regularization_losses
"	keras_api
+╚&call_and_return_all_conditional_losses
╔__call__"
_tf_keras_layer
(
#	keras_api"
_tf_keras_layer
(
$	keras_api"
_tf_keras_layer
╜

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+╩&call_and_return_all_conditional_losses
╦__call__"
_tf_keras_layer
з
+	variables
,trainable_variables
-regularization_losses
.	keras_api
+╠&call_and_return_all_conditional_losses
═__call__"
_tf_keras_layer
╜

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+╬&call_and_return_all_conditional_losses
╧__call__"
_tf_keras_layer
з
5	variables
6trainable_variables
7regularization_losses
8	keras_api
+╨&call_and_return_all_conditional_losses
╤__call__"
_tf_keras_layer
з
9	variables
:trainable_variables
;regularization_losses
<	keras_api
+╥&call_and_return_all_conditional_losses
╙__call__"
_tf_keras_layer
╜

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
+╘&call_and_return_all_conditional_losses
╒__call__"
_tf_keras_layer
з
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
+╓&call_and_return_all_conditional_losses
╫__call__"
_tf_keras_layer
(
G	keras_api"
_tf_keras_layer
(
H	keras_api"
_tf_keras_layer
(
I	keras_api"
_tf_keras_layer
(
J	keras_api"
_tf_keras_layer
╜

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
+╪&call_and_return_all_conditional_losses
┘__call__"
_tf_keras_layer
(
Q	keras_api"
_tf_keras_layer
(
R	keras_api"
_tf_keras_layer
(
S	keras_api"
_tf_keras_layer
(
T	keras_api"
_tf_keras_layer
╜

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
+┌&call_and_return_all_conditional_losses
█__call__"
_tf_keras_layer
╜

[kernel
\bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
+▄&call_and_return_all_conditional_losses
▌__call__"
_tf_keras_layer
├
aiter

bbeta_1

cbeta_2
	ddecay
elearning_rate%mн&mо/mп0m░=m▒>m▓Km│Lm┤Um╡Vm╢[m╖\m╕%v╣&v║/v╗0v╝=v╜>v╛Kv┐Lv└Uv┴Vv┬[v├\v─"
	optimizer
v
%0
&1
/2
03
=4
>5
K6
L7
U8
V9
[10
\11"
trackable_list_wrapper
v
%0
&1
/2
03
=4
>5
K6
L7
U8
V9
[10
\11"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
fmetrics
	variables
glayer_regularization_losses
hlayer_metrics

ilayers
jnon_trainable_variables
trainable_variables
regularization_losses
╞__call__
╟_default_save_signature
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
-
▐serving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
kmetrics
	variables
llayer_regularization_losses
mlayer_metrics

nlayers
onon_trainable_variables
 trainable_variables
!regularization_losses
╔__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_791/kernel
: 2conv2d_791/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
pmetrics
'	variables
qlayer_regularization_losses
rlayer_metrics

slayers
tnon_trainable_variables
(trainable_variables
)regularization_losses
╦__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
umetrics
+	variables
vlayer_regularization_losses
wlayer_metrics

xlayers
ynon_trainable_variables
,trainable_variables
-regularization_losses
═__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv2d_792/kernel
: 2conv2d_792/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
░
zmetrics
1	variables
{layer_regularization_losses
|layer_metrics

}layers
~non_trainable_variables
2trainable_variables
3regularization_losses
╧__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┤
metrics
5	variables
 Аlayer_regularization_losses
Бlayer_metrics
Вlayers
Гnon_trainable_variables
6trainable_variables
7regularization_losses
╤__call__
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
Дmetrics
9	variables
 Еlayer_regularization_losses
Жlayer_metrics
Зlayers
Иnon_trainable_variables
:trainable_variables
;regularization_losses
╙__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
$:"@@ 2dense_203/kernel
:@ 2dense_203/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Йmetrics
?	variables
 Кlayer_regularization_losses
Лlayer_metrics
Мlayers
Нnon_trainable_variables
@trainable_variables
Aregularization_losses
╒__call__
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
Оmetrics
C	variables
 Пlayer_regularization_losses
Рlayer_metrics
Сlayers
Тnon_trainable_variables
Dtrainable_variables
Eregularization_losses
╫__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_793/kernel
: 2conv2d_793/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Уmetrics
M	variables
 Фlayer_regularization_losses
Хlayer_metrics
Цlayers
Чnon_trainable_variables
Ntrainable_variables
Oregularization_losses
┘__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_794/kernel
: 2conv2d_794/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Шmetrics
W	variables
 Щlayer_regularization_losses
Ъlayer_metrics
Ыlayers
Ьnon_trainable_variables
Xtrainable_variables
Yregularization_losses
█__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv2d_795/kernel
: 2conv2d_795/bias
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Эmetrics
]	variables
 Юlayer_regularization_losses
Яlayer_metrics
аlayers
бnon_trainable_variables
^trainable_variables
_regularization_losses
▌__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
:	  (2	Adam/iter
:  (2Adam/beta_1
:  (2Adam/beta_2
:  (2
Adam/decay
:  (2Adam/learning_rate
0
в0
г1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╬
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
22"
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
R

дtotal

еcount
ж	variables
з	keras_api"
_tf_keras_metric
c

иtotal

йcount
к
_fn_kwargs
л	variables
м	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
д0
е1"
trackable_list_wrapper
.
ж	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
и0
й1"
trackable_list_wrapper
.
л	variables"
_generic_user_object
2:0 2Adam/conv2d_791/kernel/m
$:" 2Adam/conv2d_791/bias/m
2:0 2Adam/conv2d_792/kernel/m
$:" 2Adam/conv2d_792/bias/m
):'@@ 2Adam/dense_203/kernel/m
#:!@ 2Adam/dense_203/bias/m
2:0 2Adam/conv2d_793/kernel/m
$:" 2Adam/conv2d_793/bias/m
2:0 2Adam/conv2d_794/kernel/m
$:" 2Adam/conv2d_794/bias/m
2:0 2Adam/conv2d_795/kernel/m
$:" 2Adam/conv2d_795/bias/m
2:0 2Adam/conv2d_791/kernel/v
$:" 2Adam/conv2d_791/bias/v
2:0 2Adam/conv2d_792/kernel/v
$:" 2Adam/conv2d_792/bias/v
):'@@ 2Adam/dense_203/kernel/v
#:!@ 2Adam/dense_203/bias/v
2:0 2Adam/conv2d_793/kernel/v
$:" 2Adam/conv2d_793/bias/v
2:0 2Adam/conv2d_794/kernel/v
$:" 2Adam/conv2d_794/bias/v
2:0 2Adam/conv2d_795/kernel/v
$:" 2Adam/conv2d_795/bias/v
ц2у
F__inference_model_203_layer_call_and_return_conditional_losses_9128018
F__inference_model_203_layer_call_and_return_conditional_losses_9128117
F__inference_model_203_layer_call_and_return_conditional_losses_9127817
F__inference_model_203_layer_call_and_return_conditional_losses_9127882└
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
·2ў
+__inference_model_203_layer_call_fn_9127512
+__inference_model_203_layer_call_fn_9128146
+__inference_model_203_layer_call_fn_9128175
+__inference_model_203_layer_call_fn_9127752└
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
╦B╚
"__inference__wrapped_model_9127250input"Ш
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
 2№
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_9128187ж
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
ф2с
6__inference_range_conversion_203_layer_call_fn_9128192ж
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
ё2ю
G__inference_conv2d_791_layer_call_and_return_conditional_losses_9128203в
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
╓2╙
,__inference_conv2d_791_layer_call_fn_9128212в
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
╨2═
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9128217
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9128222в
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
Ъ2Ч
7__inference_average_pooling2d_294_layer_call_fn_9128227
7__inference_average_pooling2d_294_layer_call_fn_9128232в
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
ё2ю
G__inference_conv2d_792_layer_call_and_return_conditional_losses_9128243в
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
╓2╙
,__inference_conv2d_792_layer_call_fn_9128252в
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
╨2═
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9128257
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9128262в
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
Ъ2Ч
7__inference_average_pooling2d_295_layer_call_fn_9128267
7__inference_average_pooling2d_295_layer_call_fn_9128272в
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
H__inference_reshape_406_layer_call_and_return_conditional_losses_9128284в
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
-__inference_reshape_406_layer_call_fn_9128289в
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
F__inference_dense_203_layer_call_and_return_conditional_losses_9128300в
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
+__inference_dense_203_layer_call_fn_9128309в
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
H__inference_reshape_407_layer_call_and_return_conditional_losses_9128323в
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
-__inference_reshape_407_layer_call_fn_9128328в
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
ё2ю
G__inference_conv2d_793_layer_call_and_return_conditional_losses_9128339в
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
╓2╙
,__inference_conv2d_793_layer_call_fn_9128348в
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
ё2ю
G__inference_conv2d_794_layer_call_and_return_conditional_losses_9128359в
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
╓2╙
,__inference_conv2d_794_layer_call_fn_9128368в
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
ё2ю
G__inference_conv2d_795_layer_call_and_return_conditional_losses_9128378в
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
╓2╙
,__inference_conv2d_795_layer_call_fn_9128387в
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
╩B╟
%__inference_signature_wrapper_9127919input"Ф
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
 о
"__inference__wrapped_model_9127250З%&/0=>KLUV[\6в3
,в)
'К$
input         
к "?к<
:

conv2d_795,К)

conv2d_795         ї
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9128217ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╛
R__inference_average_pooling2d_294_layer_call_and_return_conditional_losses_9128222h7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ ═
7__inference_average_pooling2d_294_layer_call_fn_9128227СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Ц
7__inference_average_pooling2d_294_layer_call_fn_9128232[7в4
-в*
(К%
inputs         
к " К         ї
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9128257ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╛
R__inference_average_pooling2d_295_layer_call_and_return_conditional_losses_9128262h7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ ═
7__inference_average_pooling2d_295_layer_call_fn_9128267СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Ц
7__inference_average_pooling2d_295_layer_call_fn_9128272[7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_791_layer_call_and_return_conditional_losses_9128203l%&7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_791_layer_call_fn_9128212_%&7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_792_layer_call_and_return_conditional_losses_9128243l/07в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_792_layer_call_fn_9128252_/07в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_793_layer_call_and_return_conditional_losses_9128339lKL7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_793_layer_call_fn_9128348_KL7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_794_layer_call_and_return_conditional_losses_9128359lUV7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_794_layer_call_fn_9128368_UV7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_795_layer_call_and_return_conditional_losses_9128378l[\7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_795_layer_call_fn_9128387_[\7в4
-в*
(К%
inputs         
к " К         ж
F__inference_dense_203_layer_call_and_return_conditional_losses_9128300\=>/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_203_layer_call_fn_9128309O=>/в,
%в"
 К
inputs         @
к "К         @╟
F__inference_model_203_layer_call_and_return_conditional_losses_9127817}%&/0=>KLUV[\>в;
4в1
'К$
input         
p 

 
к "-в*
#К 
0         
Ъ ╟
F__inference_model_203_layer_call_and_return_conditional_losses_9127882}%&/0=>KLUV[\>в;
4в1
'К$
input         
p

 
к "-в*
#К 
0         
Ъ ╚
F__inference_model_203_layer_call_and_return_conditional_losses_9128018~%&/0=>KLUV[\?в<
5в2
(К%
inputs         
p 

 
к "-в*
#К 
0         
Ъ ╚
F__inference_model_203_layer_call_and_return_conditional_losses_9128117~%&/0=>KLUV[\?в<
5в2
(К%
inputs         
p

 
к "-в*
#К 
0         
Ъ Я
+__inference_model_203_layer_call_fn_9127512p%&/0=>KLUV[\>в;
4в1
'К$
input         
p 

 
к " К         Я
+__inference_model_203_layer_call_fn_9127752p%&/0=>KLUV[\>в;
4в1
'К$
input         
p

 
к " К         а
+__inference_model_203_layer_call_fn_9128146q%&/0=>KLUV[\?в<
5в2
(К%
inputs         
p 

 
к " К         а
+__inference_model_203_layer_call_fn_9128175q%&/0=>KLUV[\?в<
5в2
(К%
inputs         
p

 
к " К         ┴
Q__inference_range_conversion_203_layer_call_and_return_conditional_losses_9128187l;в8
1в.
,К)

parameters         
к "-в*
#К 
0         
Ъ Щ
6__inference_range_conversion_203_layer_call_fn_9128192_;в8
1в.
,К)

parameters         
к " К         м
H__inference_reshape_406_layer_call_and_return_conditional_losses_9128284`7в4
-в*
(К%
inputs         
к "%в"
К
0         @
Ъ Д
-__inference_reshape_406_layer_call_fn_9128289S7в4
-в*
(К%
inputs         
к "К         @м
H__inference_reshape_407_layer_call_and_return_conditional_losses_9128323`/в,
%в"
 К
inputs         @
к "-в*
#К 
0         
Ъ Д
-__inference_reshape_407_layer_call_fn_9128328S/в,
%в"
 К
inputs         @
к " К         ║
%__inference_signature_wrapper_9127919Р%&/0=>KLUV[\?в<
в 
5к2
0
input'К$
input         "?к<
:

conv2d_795,К)

conv2d_795         