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
conv2d_827/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_827/kernel

%conv2d_827/kernel/Read/ReadVariableOpReadVariableOpconv2d_827/kernel*&
_output_shapes
:*
dtype0
v
conv2d_827/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_827/bias
o
#conv2d_827/bias/Read/ReadVariableOpReadVariableOpconv2d_827/bias*
_output_shapes
:*
dtype0
Ж
conv2d_828/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_828/kernel

%conv2d_828/kernel/Read/ReadVariableOpReadVariableOpconv2d_828/kernel*&
_output_shapes
:*
dtype0
v
conv2d_828/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_828/bias
o
#conv2d_828/bias/Read/ReadVariableOpReadVariableOpconv2d_828/bias*
_output_shapes
:*
dtype0
|
dense_215/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_215/kernel
u
$dense_215/kernel/Read/ReadVariableOpReadVariableOpdense_215/kernel*
_output_shapes

:@@*
dtype0
t
dense_215/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_215/bias
m
"dense_215/bias/Read/ReadVariableOpReadVariableOpdense_215/bias*
_output_shapes
:@*
dtype0
Ж
conv2d_829/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_829/kernel

%conv2d_829/kernel/Read/ReadVariableOpReadVariableOpconv2d_829/kernel*&
_output_shapes
:*
dtype0
v
conv2d_829/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_829/bias
o
#conv2d_829/bias/Read/ReadVariableOpReadVariableOpconv2d_829/bias*
_output_shapes
:*
dtype0
Ж
conv2d_830/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_830/kernel

%conv2d_830/kernel/Read/ReadVariableOpReadVariableOpconv2d_830/kernel*&
_output_shapes
:*
dtype0
v
conv2d_830/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_830/bias
o
#conv2d_830/bias/Read/ReadVariableOpReadVariableOpconv2d_830/bias*
_output_shapes
:*
dtype0
Ж
conv2d_831/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_831/kernel

%conv2d_831/kernel/Read/ReadVariableOpReadVariableOpconv2d_831/kernel*&
_output_shapes
:*
dtype0
v
conv2d_831/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_831/bias
o
#conv2d_831/bias/Read/ReadVariableOpReadVariableOpconv2d_831/bias*
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
Adam/conv2d_827/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_827/kernel/m
Н
,Adam/conv2d_827/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_827/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_827/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_827/bias/m
}
*Adam/conv2d_827/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_827/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_828/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_828/kernel/m
Н
,Adam/conv2d_828/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_828/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_828/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_828/bias/m
}
*Adam/conv2d_828/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_828/bias/m*
_output_shapes
:*
dtype0
К
Adam/dense_215/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_215/kernel/m
Г
+Adam/dense_215/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_215/kernel/m*
_output_shapes

:@@*
dtype0
В
Adam/dense_215/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_215/bias/m
{
)Adam/dense_215/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_215/bias/m*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_829/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_829/kernel/m
Н
,Adam/conv2d_829/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_829/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_829/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_829/bias/m
}
*Adam/conv2d_829/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_829/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_830/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_830/kernel/m
Н
,Adam/conv2d_830/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_830/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_830/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_830/bias/m
}
*Adam/conv2d_830/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_830/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_831/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_831/kernel/m
Н
,Adam/conv2d_831/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_831/kernel/m*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_831/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_831/bias/m
}
*Adam/conv2d_831/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_831/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_827/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_827/kernel/v
Н
,Adam/conv2d_827/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_827/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_827/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_827/bias/v
}
*Adam/conv2d_827/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_827/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_828/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_828/kernel/v
Н
,Adam/conv2d_828/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_828/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_828/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_828/bias/v
}
*Adam/conv2d_828/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_828/bias/v*
_output_shapes
:*
dtype0
К
Adam/dense_215/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_215/kernel/v
Г
+Adam/dense_215/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_215/kernel/v*
_output_shapes

:@@*
dtype0
В
Adam/dense_215/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_215/bias/v
{
)Adam/dense_215/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_215/bias/v*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_829/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_829/kernel/v
Н
,Adam/conv2d_829/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_829/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_829/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_829/bias/v
}
*Adam/conv2d_829/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_829/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_830/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_830/kernel/v
Н
,Adam/conv2d_830/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_830/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_830/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_830/bias/v
}
*Adam/conv2d_830/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_830/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_831/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_831/kernel/v
Н
,Adam/conv2d_831/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_831/kernel/v*&
_output_shapes
:*
dtype0
Д
Adam/conv2d_831/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_831/bias/v
}
*Adam/conv2d_831/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_831/bias/v*
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
VARIABLE_VALUEconv2d_827/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_827/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_828/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_828/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_215/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_215/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_829/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_829/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_830/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_830/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_831/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_831/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_827/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_827/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_828/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_828/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_215/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_215/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_829/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_829/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_830/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_830/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_831/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_831/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_827/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_827/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_828/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_828/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_215/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_215/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_829/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_829/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_830/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_830/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_831/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_831/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
И
serving_default_inputPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
м
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_827/kernelconv2d_827/biasconv2d_828/kernelconv2d_828/biasdense_215/kerneldense_215/biasconv2d_829/kernelconv2d_829/biasconv2d_830/kernelconv2d_830/biasconv2d_831/kernelconv2d_831/bias*
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
%__inference_signature_wrapper_9707067
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
с
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_827/kernel/Read/ReadVariableOp#conv2d_827/bias/Read/ReadVariableOp%conv2d_828/kernel/Read/ReadVariableOp#conv2d_828/bias/Read/ReadVariableOp$dense_215/kernel/Read/ReadVariableOp"dense_215/bias/Read/ReadVariableOp%conv2d_829/kernel/Read/ReadVariableOp#conv2d_829/bias/Read/ReadVariableOp%conv2d_830/kernel/Read/ReadVariableOp#conv2d_830/bias/Read/ReadVariableOp%conv2d_831/kernel/Read/ReadVariableOp#conv2d_831/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_827/kernel/m/Read/ReadVariableOp*Adam/conv2d_827/bias/m/Read/ReadVariableOp,Adam/conv2d_828/kernel/m/Read/ReadVariableOp*Adam/conv2d_828/bias/m/Read/ReadVariableOp+Adam/dense_215/kernel/m/Read/ReadVariableOp)Adam/dense_215/bias/m/Read/ReadVariableOp,Adam/conv2d_829/kernel/m/Read/ReadVariableOp*Adam/conv2d_829/bias/m/Read/ReadVariableOp,Adam/conv2d_830/kernel/m/Read/ReadVariableOp*Adam/conv2d_830/bias/m/Read/ReadVariableOp,Adam/conv2d_831/kernel/m/Read/ReadVariableOp*Adam/conv2d_831/bias/m/Read/ReadVariableOp,Adam/conv2d_827/kernel/v/Read/ReadVariableOp*Adam/conv2d_827/bias/v/Read/ReadVariableOp,Adam/conv2d_828/kernel/v/Read/ReadVariableOp*Adam/conv2d_828/bias/v/Read/ReadVariableOp+Adam/dense_215/kernel/v/Read/ReadVariableOp)Adam/dense_215/bias/v/Read/ReadVariableOp,Adam/conv2d_829/kernel/v/Read/ReadVariableOp*Adam/conv2d_829/bias/v/Read/ReadVariableOp,Adam/conv2d_830/kernel/v/Read/ReadVariableOp*Adam/conv2d_830/bias/v/Read/ReadVariableOp,Adam/conv2d_831/kernel/v/Read/ReadVariableOp*Adam/conv2d_831/bias/v/Read/ReadVariableOpConst*:
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
 __inference__traced_save_9707693
╪	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_827/kernelconv2d_827/biasconv2d_828/kernelconv2d_828/biasdense_215/kerneldense_215/biasconv2d_829/kernelconv2d_829/biasconv2d_830/kernelconv2d_830/biasconv2d_831/kernelconv2d_831/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_827/kernel/mAdam/conv2d_827/bias/mAdam/conv2d_828/kernel/mAdam/conv2d_828/bias/mAdam/dense_215/kernel/mAdam/dense_215/bias/mAdam/conv2d_829/kernel/mAdam/conv2d_829/bias/mAdam/conv2d_830/kernel/mAdam/conv2d_830/bias/mAdam/conv2d_831/kernel/mAdam/conv2d_831/bias/mAdam/conv2d_827/kernel/vAdam/conv2d_827/bias/vAdam/conv2d_828/kernel/vAdam/conv2d_828/bias/vAdam/dense_215/kernel/vAdam/dense_215/bias/vAdam/conv2d_829/kernel/vAdam/conv2d_829/bias/vAdam/conv2d_830/kernel/vAdam/conv2d_830/bias/vAdam/conv2d_831/kernel/vAdam/conv2d_831/bias/v*9
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
#__inference__traced_restore_9707838│Ї
ц
╬
+__inference_model_215_layer_call_fn_9706900	
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
F__inference_model_215_layer_call_and_return_conditional_losses_97068442
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
А]
Ш
F__inference_model_215_layer_call_and_return_conditional_losses_9706844

inputs,
conv2d_827_9706793: 
conv2d_827_9706795:,
conv2d_828_9706799: 
conv2d_828_9706801:#
dense_215_9706806:@@
dense_215_9706808:@,
conv2d_829_9706820: 
conv2d_829_9706822:,
conv2d_830_9706833: 
conv2d_830_9706835:,
conv2d_831_9706838: 
conv2d_831_9706840:
identityИв"conv2d_827/StatefulPartitionedCallв"conv2d_828/StatefulPartitionedCallв"conv2d_829/StatefulPartitionedCallв"conv2d_830/StatefulPartitionedCallв"conv2d_831/StatefulPartitionedCallв!dense_215/StatefulPartitionedCall╡
0tf.__operators__.getitem_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_426/strided_slice/stack╣
2tf.__operators__.getitem_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_426/strided_slice/stack_1╣
2tf.__operators__.getitem_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_426/strided_slice/stack_2О
*tf.__operators__.getitem_426/strided_sliceStridedSliceinputs9tf.__operators__.getitem_426/strided_slice/stack:output:0;tf.__operators__.getitem_426/strided_slice/stack_1:output:0;tf.__operators__.getitem_426/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_426/strided_slice│
$range_conversion_215/PartitionedCallPartitionedCall3tf.__operators__.getitem_426/strided_slice:output:0*
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
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_97064652&
$range_conversion_215/PartitionedCall╡
0tf.__operators__.getitem_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_427/strided_slice/stack╣
2tf.__operators__.getitem_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_427/strided_slice/stack_1╣
2tf.__operators__.getitem_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_427/strided_slice/stack_2О
*tf.__operators__.getitem_427/strided_sliceStridedSliceinputs9tf.__operators__.getitem_427/strided_slice/stack:output:0;tf.__operators__.getitem_427/strided_slice/stack_1:output:0;tf.__operators__.getitem_427/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_427/strided_slicex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisГ
tf.concat_519/concatConcatV2-range_conversion_215/PartitionedCall:output:03tf.__operators__.getitem_427/strided_slice:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_519/concat┼
"conv2d_827/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv2d_827_9706793conv2d_827_9706795*
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
G__inference_conv2d_827_layer_call_and_return_conditional_losses_97064842$
"conv2d_827/StatefulPartitionedCallо
%average_pooling2d_306/PartitionedCallPartitionedCall+conv2d_827/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_97064942'
%average_pooling2d_306/PartitionedCall╓
"conv2d_828/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_306/PartitionedCall:output:0conv2d_828_9706799conv2d_828_9706801*
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
G__inference_conv2d_828_layer_call_and_return_conditional_losses_97065072$
"conv2d_828/StatefulPartitionedCallо
%average_pooling2d_307/PartitionedCallPartitionedCall+conv2d_828/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_97065172'
%average_pooling2d_307/PartitionedCallЛ
reshape_430/PartitionedCallPartitionedCall.average_pooling2d_307/PartitionedCall:output:0*
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
H__inference_reshape_430_layer_call_and_return_conditional_losses_97065312
reshape_430/PartitionedCall┐
!dense_215/StatefulPartitionedCallStatefulPartitionedCall$reshape_430/PartitionedCall:output:0dense_215_9706806dense_215_9706808*
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
F__inference_dense_215_layer_call_and_return_conditional_losses_97065442#
!dense_215/StatefulPartitionedCallП
reshape_431/PartitionedCallPartitionedCall*dense_215/StatefulPartitionedCall:output:0*
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
H__inference_reshape_431_layer_call_and_return_conditional_losses_97065642
reshape_431/PartitionedCallЭ
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_612/Reshape/shape╩
tf.reshape_612/ReshapeReshape$reshape_431/PartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_612/ReshapeЩ
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_306/Tile/multiples┤
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_306/TileХ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_613/Reshape/shape╖
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_613/Reshapex
tf.concat_520/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_520/concat/axisэ
tf.concat_520/concatConcatV2tf.reshape_613/Reshape:output:0+conv2d_828/StatefulPartitionedCall:output:0"tf.concat_520/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_520/concat┼
"conv2d_829/StatefulPartitionedCallStatefulPartitionedCalltf.concat_520/concat:output:0conv2d_829_9706820conv2d_829_9706822*
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
G__inference_conv2d_829_layer_call_and_return_conditional_losses_97065852$
"conv2d_829/StatefulPartitionedCallЭ
tf.reshape_614/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_614/Reshape/shape╤
tf.reshape_614/ReshapeReshape+conv2d_829/StatefulPartitionedCall:output:0%tf.reshape_614/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_614/ReshapeЩ
tf.tile_307/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_307/Tile/multiples┤
tf.tile_307/TileTiletf.reshape_614/Reshape:output:0#tf.tile_307/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_307/TileХ
tf.reshape_615/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_615/Reshape/shape╖
tf.reshape_615/ReshapeReshapetf.tile_307/Tile:output:0%tf.reshape_615/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_615/Reshapex
tf.concat_521/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_521/concat/axisэ
tf.concat_521/concatConcatV2tf.reshape_615/Reshape:output:0+conv2d_827/StatefulPartitionedCall:output:0"tf.concat_521/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_521/concat┼
"conv2d_830/StatefulPartitionedCallStatefulPartitionedCalltf.concat_521/concat:output:0conv2d_830_9706833conv2d_830_9706835*
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
G__inference_conv2d_830_layer_call_and_return_conditional_losses_97066102$
"conv2d_830/StatefulPartitionedCall╙
"conv2d_831/StatefulPartitionedCallStatefulPartitionedCall+conv2d_830/StatefulPartitionedCall:output:0conv2d_831_9706838conv2d_831_9706840*
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
G__inference_conv2d_831_layer_call_and_return_conditional_losses_97066262$
"conv2d_831/StatefulPartitionedCallО
IdentityIdentity+conv2d_831/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_827/StatefulPartitionedCall#^conv2d_828/StatefulPartitionedCall#^conv2d_829/StatefulPartitionedCall#^conv2d_830/StatefulPartitionedCall#^conv2d_831/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_827/StatefulPartitionedCall"conv2d_827/StatefulPartitionedCall2H
"conv2d_828/StatefulPartitionedCall"conv2d_828/StatefulPartitionedCall2H
"conv2d_829/StatefulPartitionedCall"conv2d_829/StatefulPartitionedCall2H
"conv2d_830/StatefulPartitionedCall"conv2d_830/StatefulPartitionedCall2H
"conv2d_831/StatefulPartitionedCall"conv2d_831/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╥
n
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9707365

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
№\
Ч
F__inference_model_215_layer_call_and_return_conditional_losses_9706965	
input,
conv2d_827_9706914: 
conv2d_827_9706916:,
conv2d_828_9706920: 
conv2d_828_9706922:#
dense_215_9706927:@@
dense_215_9706929:@,
conv2d_829_9706941: 
conv2d_829_9706943:,
conv2d_830_9706954: 
conv2d_830_9706956:,
conv2d_831_9706959: 
conv2d_831_9706961:
identityИв"conv2d_827/StatefulPartitionedCallв"conv2d_828/StatefulPartitionedCallв"conv2d_829/StatefulPartitionedCallв"conv2d_830/StatefulPartitionedCallв"conv2d_831/StatefulPartitionedCallв!dense_215/StatefulPartitionedCall╡
0tf.__operators__.getitem_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_426/strided_slice/stack╣
2tf.__operators__.getitem_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_426/strided_slice/stack_1╣
2tf.__operators__.getitem_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_426/strided_slice/stack_2Н
*tf.__operators__.getitem_426/strided_sliceStridedSliceinput9tf.__operators__.getitem_426/strided_slice/stack:output:0;tf.__operators__.getitem_426/strided_slice/stack_1:output:0;tf.__operators__.getitem_426/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_426/strided_slice│
$range_conversion_215/PartitionedCallPartitionedCall3tf.__operators__.getitem_426/strided_slice:output:0*
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
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_97064652&
$range_conversion_215/PartitionedCall╡
0tf.__operators__.getitem_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_427/strided_slice/stack╣
2tf.__operators__.getitem_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_427/strided_slice/stack_1╣
2tf.__operators__.getitem_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_427/strided_slice/stack_2Н
*tf.__operators__.getitem_427/strided_sliceStridedSliceinput9tf.__operators__.getitem_427/strided_slice/stack:output:0;tf.__operators__.getitem_427/strided_slice/stack_1:output:0;tf.__operators__.getitem_427/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_427/strided_slicex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisГ
tf.concat_519/concatConcatV2-range_conversion_215/PartitionedCall:output:03tf.__operators__.getitem_427/strided_slice:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_519/concat┼
"conv2d_827/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv2d_827_9706914conv2d_827_9706916*
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
G__inference_conv2d_827_layer_call_and_return_conditional_losses_97064842$
"conv2d_827/StatefulPartitionedCallо
%average_pooling2d_306/PartitionedCallPartitionedCall+conv2d_827/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_97064942'
%average_pooling2d_306/PartitionedCall╓
"conv2d_828/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_306/PartitionedCall:output:0conv2d_828_9706920conv2d_828_9706922*
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
G__inference_conv2d_828_layer_call_and_return_conditional_losses_97065072$
"conv2d_828/StatefulPartitionedCallо
%average_pooling2d_307/PartitionedCallPartitionedCall+conv2d_828/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_97065172'
%average_pooling2d_307/PartitionedCallЛ
reshape_430/PartitionedCallPartitionedCall.average_pooling2d_307/PartitionedCall:output:0*
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
H__inference_reshape_430_layer_call_and_return_conditional_losses_97065312
reshape_430/PartitionedCall┐
!dense_215/StatefulPartitionedCallStatefulPartitionedCall$reshape_430/PartitionedCall:output:0dense_215_9706927dense_215_9706929*
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
F__inference_dense_215_layer_call_and_return_conditional_losses_97065442#
!dense_215/StatefulPartitionedCallП
reshape_431/PartitionedCallPartitionedCall*dense_215/StatefulPartitionedCall:output:0*
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
H__inference_reshape_431_layer_call_and_return_conditional_losses_97065642
reshape_431/PartitionedCallЭ
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_612/Reshape/shape╩
tf.reshape_612/ReshapeReshape$reshape_431/PartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_612/ReshapeЩ
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_306/Tile/multiples┤
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_306/TileХ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_613/Reshape/shape╖
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_613/Reshapex
tf.concat_520/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_520/concat/axisэ
tf.concat_520/concatConcatV2tf.reshape_613/Reshape:output:0+conv2d_828/StatefulPartitionedCall:output:0"tf.concat_520/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_520/concat┼
"conv2d_829/StatefulPartitionedCallStatefulPartitionedCalltf.concat_520/concat:output:0conv2d_829_9706941conv2d_829_9706943*
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
G__inference_conv2d_829_layer_call_and_return_conditional_losses_97065852$
"conv2d_829/StatefulPartitionedCallЭ
tf.reshape_614/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_614/Reshape/shape╤
tf.reshape_614/ReshapeReshape+conv2d_829/StatefulPartitionedCall:output:0%tf.reshape_614/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_614/ReshapeЩ
tf.tile_307/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_307/Tile/multiples┤
tf.tile_307/TileTiletf.reshape_614/Reshape:output:0#tf.tile_307/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_307/TileХ
tf.reshape_615/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_615/Reshape/shape╖
tf.reshape_615/ReshapeReshapetf.tile_307/Tile:output:0%tf.reshape_615/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_615/Reshapex
tf.concat_521/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_521/concat/axisэ
tf.concat_521/concatConcatV2tf.reshape_615/Reshape:output:0+conv2d_827/StatefulPartitionedCall:output:0"tf.concat_521/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_521/concat┼
"conv2d_830/StatefulPartitionedCallStatefulPartitionedCalltf.concat_521/concat:output:0conv2d_830_9706954conv2d_830_9706956*
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
G__inference_conv2d_830_layer_call_and_return_conditional_losses_97066102$
"conv2d_830/StatefulPartitionedCall╙
"conv2d_831/StatefulPartitionedCallStatefulPartitionedCall+conv2d_830/StatefulPartitionedCall:output:0conv2d_831_9706959conv2d_831_9706961*
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
G__inference_conv2d_831_layer_call_and_return_conditional_losses_97066262$
"conv2d_831/StatefulPartitionedCallО
IdentityIdentity+conv2d_831/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_827/StatefulPartitionedCall#^conv2d_828/StatefulPartitionedCall#^conv2d_829/StatefulPartitionedCall#^conv2d_830/StatefulPartitionedCall#^conv2d_831/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_827/StatefulPartitionedCall"conv2d_827/StatefulPartitionedCall2H
"conv2d_828/StatefulPartitionedCall"conv2d_828/StatefulPartitionedCall2H
"conv2d_829/StatefulPartitionedCall"conv2d_829/StatefulPartitionedCall2H
"conv2d_830/StatefulPartitionedCall"conv2d_830/StatefulPartitionedCall2H
"conv2d_831/StatefulPartitionedCall"conv2d_831/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall:V R
/
_output_shapes
:         

_user_specified_nameinput
л
А
G__inference_conv2d_827_layer_call_and_return_conditional_losses_9707351

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
╗	
q
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_9706465

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
х
n
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9707410

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
Ф
ў
F__inference_dense_215_layer_call_and_return_conditional_losses_9707448

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
№\
Ч
F__inference_model_215_layer_call_and_return_conditional_losses_9707030	
input,
conv2d_827_9706979: 
conv2d_827_9706981:,
conv2d_828_9706985: 
conv2d_828_9706987:#
dense_215_9706992:@@
dense_215_9706994:@,
conv2d_829_9707006: 
conv2d_829_9707008:,
conv2d_830_9707019: 
conv2d_830_9707021:,
conv2d_831_9707024: 
conv2d_831_9707026:
identityИв"conv2d_827/StatefulPartitionedCallв"conv2d_828/StatefulPartitionedCallв"conv2d_829/StatefulPartitionedCallв"conv2d_830/StatefulPartitionedCallв"conv2d_831/StatefulPartitionedCallв!dense_215/StatefulPartitionedCall╡
0tf.__operators__.getitem_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_426/strided_slice/stack╣
2tf.__operators__.getitem_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_426/strided_slice/stack_1╣
2tf.__operators__.getitem_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_426/strided_slice/stack_2Н
*tf.__operators__.getitem_426/strided_sliceStridedSliceinput9tf.__operators__.getitem_426/strided_slice/stack:output:0;tf.__operators__.getitem_426/strided_slice/stack_1:output:0;tf.__operators__.getitem_426/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_426/strided_slice│
$range_conversion_215/PartitionedCallPartitionedCall3tf.__operators__.getitem_426/strided_slice:output:0*
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
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_97064652&
$range_conversion_215/PartitionedCall╡
0tf.__operators__.getitem_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_427/strided_slice/stack╣
2tf.__operators__.getitem_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_427/strided_slice/stack_1╣
2tf.__operators__.getitem_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_427/strided_slice/stack_2Н
*tf.__operators__.getitem_427/strided_sliceStridedSliceinput9tf.__operators__.getitem_427/strided_slice/stack:output:0;tf.__operators__.getitem_427/strided_slice/stack_1:output:0;tf.__operators__.getitem_427/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_427/strided_slicex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisГ
tf.concat_519/concatConcatV2-range_conversion_215/PartitionedCall:output:03tf.__operators__.getitem_427/strided_slice:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_519/concat┼
"conv2d_827/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv2d_827_9706979conv2d_827_9706981*
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
G__inference_conv2d_827_layer_call_and_return_conditional_losses_97064842$
"conv2d_827/StatefulPartitionedCallо
%average_pooling2d_306/PartitionedCallPartitionedCall+conv2d_827/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_97064942'
%average_pooling2d_306/PartitionedCall╓
"conv2d_828/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_306/PartitionedCall:output:0conv2d_828_9706985conv2d_828_9706987*
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
G__inference_conv2d_828_layer_call_and_return_conditional_losses_97065072$
"conv2d_828/StatefulPartitionedCallо
%average_pooling2d_307/PartitionedCallPartitionedCall+conv2d_828/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_97065172'
%average_pooling2d_307/PartitionedCallЛ
reshape_430/PartitionedCallPartitionedCall.average_pooling2d_307/PartitionedCall:output:0*
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
H__inference_reshape_430_layer_call_and_return_conditional_losses_97065312
reshape_430/PartitionedCall┐
!dense_215/StatefulPartitionedCallStatefulPartitionedCall$reshape_430/PartitionedCall:output:0dense_215_9706992dense_215_9706994*
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
F__inference_dense_215_layer_call_and_return_conditional_losses_97065442#
!dense_215/StatefulPartitionedCallП
reshape_431/PartitionedCallPartitionedCall*dense_215/StatefulPartitionedCall:output:0*
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
H__inference_reshape_431_layer_call_and_return_conditional_losses_97065642
reshape_431/PartitionedCallЭ
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_612/Reshape/shape╩
tf.reshape_612/ReshapeReshape$reshape_431/PartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_612/ReshapeЩ
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_306/Tile/multiples┤
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_306/TileХ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_613/Reshape/shape╖
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_613/Reshapex
tf.concat_520/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_520/concat/axisэ
tf.concat_520/concatConcatV2tf.reshape_613/Reshape:output:0+conv2d_828/StatefulPartitionedCall:output:0"tf.concat_520/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_520/concat┼
"conv2d_829/StatefulPartitionedCallStatefulPartitionedCalltf.concat_520/concat:output:0conv2d_829_9707006conv2d_829_9707008*
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
G__inference_conv2d_829_layer_call_and_return_conditional_losses_97065852$
"conv2d_829/StatefulPartitionedCallЭ
tf.reshape_614/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_614/Reshape/shape╤
tf.reshape_614/ReshapeReshape+conv2d_829/StatefulPartitionedCall:output:0%tf.reshape_614/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_614/ReshapeЩ
tf.tile_307/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_307/Tile/multiples┤
tf.tile_307/TileTiletf.reshape_614/Reshape:output:0#tf.tile_307/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_307/TileХ
tf.reshape_615/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_615/Reshape/shape╖
tf.reshape_615/ReshapeReshapetf.tile_307/Tile:output:0%tf.reshape_615/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_615/Reshapex
tf.concat_521/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_521/concat/axisэ
tf.concat_521/concatConcatV2tf.reshape_615/Reshape:output:0+conv2d_827/StatefulPartitionedCall:output:0"tf.concat_521/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_521/concat┼
"conv2d_830/StatefulPartitionedCallStatefulPartitionedCalltf.concat_521/concat:output:0conv2d_830_9707019conv2d_830_9707021*
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
G__inference_conv2d_830_layer_call_and_return_conditional_losses_97066102$
"conv2d_830/StatefulPartitionedCall╙
"conv2d_831/StatefulPartitionedCallStatefulPartitionedCall+conv2d_830/StatefulPartitionedCall:output:0conv2d_831_9707024conv2d_831_9707026*
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
G__inference_conv2d_831_layer_call_and_return_conditional_losses_97066262$
"conv2d_831/StatefulPartitionedCallО
IdentityIdentity+conv2d_831/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_827/StatefulPartitionedCall#^conv2d_828/StatefulPartitionedCall#^conv2d_829/StatefulPartitionedCall#^conv2d_830/StatefulPartitionedCall#^conv2d_831/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_827/StatefulPartitionedCall"conv2d_827/StatefulPartitionedCall2H
"conv2d_828/StatefulPartitionedCall"conv2d_828/StatefulPartitionedCall2H
"conv2d_829/StatefulPartitionedCall"conv2d_829/StatefulPartitionedCall2H
"conv2d_830/StatefulPartitionedCall"conv2d_830/StatefulPartitionedCall2H
"conv2d_831/StatefulPartitionedCall"conv2d_831/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall:V R
/
_output_shapes
:         

_user_specified_nameinput
щ
╧
+__inference_model_215_layer_call_fn_9707294

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
F__inference_model_215_layer_call_and_return_conditional_losses_97066332
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
╥
n
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9706407

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
х
n
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9706517

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
Ф
ў
F__inference_dense_215_layer_call_and_return_conditional_losses_9706544

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
·
Ш
+__inference_dense_215_layer_call_fn_9707457

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
F__inference_dense_215_layer_call_and_return_conditional_losses_97065442
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
┘
I
-__inference_reshape_430_layer_call_fn_9707437

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
H__inference_reshape_430_layer_call_and_return_conditional_losses_97065312
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
╗	
q
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_9707335

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
е
б
,__inference_conv2d_827_layer_call_fn_9707360

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
G__inference_conv2d_827_layer_call_and_return_conditional_losses_97064842
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
З
V
6__inference_range_conversion_215_layer_call_fn_9707340

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
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_97064652
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
┘
I
-__inference_reshape_431_layer_call_fn_9707476

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
H__inference_reshape_431_layer_call_and_return_conditional_losses_97065642
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
е
б
,__inference_conv2d_831_layer_call_fn_9707535

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
G__inference_conv2d_831_layer_call_and_return_conditional_losses_97066262
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
е
б
,__inference_conv2d_828_layer_call_fn_9707400

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
G__inference_conv2d_828_layer_call_and_return_conditional_losses_97065072
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
л
А
G__inference_conv2d_828_layer_call_and_return_conditional_losses_9707391

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
л
А
G__inference_conv2d_829_layer_call_and_return_conditional_losses_9706585

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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9707370

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
е
б
,__inference_conv2d_829_layer_call_fn_9707496

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
G__inference_conv2d_829_layer_call_and_return_conditional_losses_97065852
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
л
А
G__inference_conv2d_830_layer_call_and_return_conditional_losses_9706610

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
¤
S
7__inference_average_pooling2d_307_layer_call_fn_9707420

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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_97065172
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
л
А
G__inference_conv2d_827_layer_call_and_return_conditional_losses_9706484

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
¤
S
7__inference_average_pooling2d_306_layer_call_fn_9707380

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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_97064942
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
л
А
G__inference_conv2d_828_layer_call_and_return_conditional_losses_9706507

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
╨П
¤	
F__inference_model_215_layer_call_and_return_conditional_losses_9707166

inputsC
)conv2d_827_conv2d_readvariableop_resource:8
*conv2d_827_biasadd_readvariableop_resource:C
)conv2d_828_conv2d_readvariableop_resource:8
*conv2d_828_biasadd_readvariableop_resource::
(dense_215_matmul_readvariableop_resource:@@7
)dense_215_biasadd_readvariableop_resource:@C
)conv2d_829_conv2d_readvariableop_resource:8
*conv2d_829_biasadd_readvariableop_resource:C
)conv2d_830_conv2d_readvariableop_resource:8
*conv2d_830_biasadd_readvariableop_resource:C
)conv2d_831_conv2d_readvariableop_resource:8
*conv2d_831_biasadd_readvariableop_resource:
identityИв!conv2d_827/BiasAdd/ReadVariableOpв conv2d_827/Conv2D/ReadVariableOpв!conv2d_828/BiasAdd/ReadVariableOpв conv2d_828/Conv2D/ReadVariableOpв!conv2d_829/BiasAdd/ReadVariableOpв conv2d_829/Conv2D/ReadVariableOpв!conv2d_830/BiasAdd/ReadVariableOpв conv2d_830/Conv2D/ReadVariableOpв!conv2d_831/BiasAdd/ReadVariableOpв conv2d_831/Conv2D/ReadVariableOpв dense_215/BiasAdd/ReadVariableOpвdense_215/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_426/strided_slice/stack╣
2tf.__operators__.getitem_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_426/strided_slice/stack_1╣
2tf.__operators__.getitem_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_426/strided_slice/stack_2О
*tf.__operators__.getitem_426/strided_sliceStridedSliceinputs9tf.__operators__.getitem_426/strided_slice/stack:output:0;tf.__operators__.getitem_426/strided_slice/stack_1:output:0;tf.__operators__.getitem_426/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_426/strided_slice}
range_conversion_215/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_215/sub/y╧
range_conversion_215/subSub3tf.__operators__.getitem_426/strided_slice:output:0#range_conversion_215/sub/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/subЕ
range_conversion_215/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_215/truediv/y╚
range_conversion_215/truedivRealDivrange_conversion_215/sub:z:0'range_conversion_215/truediv/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/truediv}
range_conversion_215/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_215/mul/y╝
range_conversion_215/mulMul range_conversion_215/truediv:z:0#range_conversion_215/mul/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/mul}
range_conversion_215/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_215/add/y║
range_conversion_215/addAddV2range_conversion_215/mul:z:0#range_conversion_215/add/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/add╡
0tf.__operators__.getitem_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_427/strided_slice/stack╣
2tf.__operators__.getitem_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_427/strided_slice/stack_1╣
2tf.__operators__.getitem_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_427/strided_slice/stack_2О
*tf.__operators__.getitem_427/strided_sliceStridedSliceinputs9tf.__operators__.getitem_427/strided_slice/stack:output:0;tf.__operators__.getitem_427/strided_slice/stack_1:output:0;tf.__operators__.getitem_427/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_427/strided_slicex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisЄ
tf.concat_519/concatConcatV2range_conversion_215/add:z:03tf.__operators__.getitem_427/strided_slice:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_519/concat╢
 conv2d_827/Conv2D/ReadVariableOpReadVariableOp)conv2d_827_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_827/Conv2D/ReadVariableOpЄ
conv2d_827/Conv2DConv2Dtf.concat_519/concat:output:0(conv2d_827/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_827/Conv2Dн
!conv2d_827/BiasAdd/ReadVariableOpReadVariableOp*conv2d_827_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_827/BiasAdd/ReadVariableOp╦
conv2d_827/BiasAddBiasAddconv2d_827/Conv2D:output:0)conv2d_827/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_827/BiasAddН
conv2d_827/SoftplusSoftplusconv2d_827/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_827/Softplus∙
average_pooling2d_306/AvgPoolAvgPool!conv2d_827/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_306/AvgPool╢
 conv2d_828/Conv2D/ReadVariableOpReadVariableOp)conv2d_828_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_828/Conv2D/ReadVariableOp√
conv2d_828/Conv2DConv2D&average_pooling2d_306/AvgPool:output:0(conv2d_828/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_828/Conv2Dн
!conv2d_828/BiasAdd/ReadVariableOpReadVariableOp*conv2d_828_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_828/BiasAdd/ReadVariableOp╦
conv2d_828/BiasAddBiasAddconv2d_828/Conv2D:output:0)conv2d_828/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_828/BiasAddН
conv2d_828/SoftplusSoftplusconv2d_828/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_828/Softplus∙
average_pooling2d_307/AvgPoolAvgPool!conv2d_828/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_307/AvgPool|
reshape_430/ShapeShape&average_pooling2d_307/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_430/ShapeМ
reshape_430/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_430/strided_slice/stackР
!reshape_430/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_430/strided_slice/stack_1Р
!reshape_430/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_430/strided_slice/stack_2к
reshape_430/strided_sliceStridedSlicereshape_430/Shape:output:0(reshape_430/strided_slice/stack:output:0*reshape_430/strided_slice/stack_1:output:0*reshape_430/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_430/strided_slice|
reshape_430/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_430/Reshape/shape/1╢
reshape_430/Reshape/shapePack"reshape_430/strided_slice:output:0$reshape_430/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_430/Reshape/shape│
reshape_430/ReshapeReshape&average_pooling2d_307/AvgPool:output:0"reshape_430/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_430/Reshapeл
dense_215/MatMul/ReadVariableOpReadVariableOp(dense_215_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_215/MatMul/ReadVariableOpз
dense_215/MatMulMatMulreshape_430/Reshape:output:0'dense_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_215/MatMulк
 dense_215/BiasAdd/ReadVariableOpReadVariableOp)dense_215_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_215/BiasAdd/ReadVariableOpй
dense_215/BiasAddBiasAdddense_215/MatMul:product:0(dense_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_215/BiasAddВ
dense_215/SoftplusSoftplusdense_215/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_215/Softplusv
reshape_431/ShapeShape dense_215/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_431/ShapeМ
reshape_431/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_431/strided_slice/stackР
!reshape_431/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_431/strided_slice/stack_1Р
!reshape_431/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_431/strided_slice/stack_2к
reshape_431/strided_sliceStridedSlicereshape_431/Shape:output:0(reshape_431/strided_slice/stack:output:0*reshape_431/strided_slice/stack_1:output:0*reshape_431/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_431/strided_slice|
reshape_431/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_431/Reshape/shape/1|
reshape_431/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_431/Reshape/shape/2|
reshape_431/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_431/Reshape/shape/3В
reshape_431/Reshape/shapePack"reshape_431/strided_slice:output:0$reshape_431/Reshape/shape/1:output:0$reshape_431/Reshape/shape/2:output:0$reshape_431/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_431/Reshape/shape╡
reshape_431/ReshapeReshape dense_215/Softplus:activations:0"reshape_431/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
reshape_431/ReshapeЭ
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_612/Reshape/shape┬
tf.reshape_612/ReshapeReshapereshape_431/Reshape:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_612/ReshapeЩ
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_306/Tile/multiples┤
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_306/TileХ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_613/Reshape/shape╖
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_613/Reshapex
tf.concat_520/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_520/concat/axisу
tf.concat_520/concatConcatV2tf.reshape_613/Reshape:output:0!conv2d_828/Softplus:activations:0"tf.concat_520/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_520/concat╢
 conv2d_829/Conv2D/ReadVariableOpReadVariableOp)conv2d_829_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_829/Conv2D/ReadVariableOpЄ
conv2d_829/Conv2DConv2Dtf.concat_520/concat:output:0(conv2d_829/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_829/Conv2Dн
!conv2d_829/BiasAdd/ReadVariableOpReadVariableOp*conv2d_829_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_829/BiasAdd/ReadVariableOp╦
conv2d_829/BiasAddBiasAddconv2d_829/Conv2D:output:0)conv2d_829/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_829/BiasAddН
conv2d_829/SoftplusSoftplusconv2d_829/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_829/SoftplusЭ
tf.reshape_614/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_614/Reshape/shape╟
tf.reshape_614/ReshapeReshape!conv2d_829/Softplus:activations:0%tf.reshape_614/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_614/ReshapeЩ
tf.tile_307/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_307/Tile/multiples┤
tf.tile_307/TileTiletf.reshape_614/Reshape:output:0#tf.tile_307/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_307/TileХ
tf.reshape_615/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_615/Reshape/shape╖
tf.reshape_615/ReshapeReshapetf.tile_307/Tile:output:0%tf.reshape_615/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_615/Reshapex
tf.concat_521/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_521/concat/axisу
tf.concat_521/concatConcatV2tf.reshape_615/Reshape:output:0!conv2d_827/Softplus:activations:0"tf.concat_521/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_521/concat╢
 conv2d_830/Conv2D/ReadVariableOpReadVariableOp)conv2d_830_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_830/Conv2D/ReadVariableOpЄ
conv2d_830/Conv2DConv2Dtf.concat_521/concat:output:0(conv2d_830/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_830/Conv2Dн
!conv2d_830/BiasAdd/ReadVariableOpReadVariableOp*conv2d_830_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_830/BiasAdd/ReadVariableOp╦
conv2d_830/BiasAddBiasAddconv2d_830/Conv2D:output:0)conv2d_830/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_830/BiasAddН
conv2d_830/SoftplusSoftplusconv2d_830/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_830/Softplus╢
 conv2d_831/Conv2D/ReadVariableOpReadVariableOp)conv2d_831_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_831/Conv2D/ReadVariableOpЎ
conv2d_831/Conv2DConv2D!conv2d_830/Softplus:activations:0(conv2d_831/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_831/Conv2Dн
!conv2d_831/BiasAdd/ReadVariableOpReadVariableOp*conv2d_831_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_831/BiasAdd/ReadVariableOp╦
conv2d_831/BiasAddBiasAddconv2d_831/Conv2D:output:0)conv2d_831/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_831/BiasAdd~
IdentityIdentityconv2d_831/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

IdentityЎ
NoOpNoOp"^conv2d_827/BiasAdd/ReadVariableOp!^conv2d_827/Conv2D/ReadVariableOp"^conv2d_828/BiasAdd/ReadVariableOp!^conv2d_828/Conv2D/ReadVariableOp"^conv2d_829/BiasAdd/ReadVariableOp!^conv2d_829/Conv2D/ReadVariableOp"^conv2d_830/BiasAdd/ReadVariableOp!^conv2d_830/Conv2D/ReadVariableOp"^conv2d_831/BiasAdd/ReadVariableOp!^conv2d_831/Conv2D/ReadVariableOp!^dense_215/BiasAdd/ReadVariableOp ^dense_215/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2F
!conv2d_827/BiasAdd/ReadVariableOp!conv2d_827/BiasAdd/ReadVariableOp2D
 conv2d_827/Conv2D/ReadVariableOp conv2d_827/Conv2D/ReadVariableOp2F
!conv2d_828/BiasAdd/ReadVariableOp!conv2d_828/BiasAdd/ReadVariableOp2D
 conv2d_828/Conv2D/ReadVariableOp conv2d_828/Conv2D/ReadVariableOp2F
!conv2d_829/BiasAdd/ReadVariableOp!conv2d_829/BiasAdd/ReadVariableOp2D
 conv2d_829/Conv2D/ReadVariableOp conv2d_829/Conv2D/ReadVariableOp2F
!conv2d_830/BiasAdd/ReadVariableOp!conv2d_830/BiasAdd/ReadVariableOp2D
 conv2d_830/Conv2D/ReadVariableOp conv2d_830/Conv2D/ReadVariableOp2F
!conv2d_831/BiasAdd/ReadVariableOp!conv2d_831/BiasAdd/ReadVariableOp2D
 conv2d_831/Conv2D/ReadVariableOp conv2d_831/Conv2D/ReadVariableOp2D
 dense_215/BiasAdd/ReadVariableOp dense_215/BiasAdd/ReadVariableOp2B
dense_215/MatMul/ReadVariableOpdense_215/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ъ
S
7__inference_average_pooling2d_306_layer_call_fn_9707375

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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_97064072
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
Н├
╡
#__inference__traced_restore_9707838
file_prefix<
"assignvariableop_conv2d_827_kernel:0
"assignvariableop_1_conv2d_827_bias:>
$assignvariableop_2_conv2d_828_kernel:0
"assignvariableop_3_conv2d_828_bias:5
#assignvariableop_4_dense_215_kernel:@@/
!assignvariableop_5_dense_215_bias:@>
$assignvariableop_6_conv2d_829_kernel:0
"assignvariableop_7_conv2d_829_bias:>
$assignvariableop_8_conv2d_830_kernel:0
"assignvariableop_9_conv2d_830_bias:?
%assignvariableop_10_conv2d_831_kernel:1
#assignvariableop_11_conv2d_831_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
,assignvariableop_21_adam_conv2d_827_kernel_m:8
*assignvariableop_22_adam_conv2d_827_bias_m:F
,assignvariableop_23_adam_conv2d_828_kernel_m:8
*assignvariableop_24_adam_conv2d_828_bias_m:=
+assignvariableop_25_adam_dense_215_kernel_m:@@7
)assignvariableop_26_adam_dense_215_bias_m:@F
,assignvariableop_27_adam_conv2d_829_kernel_m:8
*assignvariableop_28_adam_conv2d_829_bias_m:F
,assignvariableop_29_adam_conv2d_830_kernel_m:8
*assignvariableop_30_adam_conv2d_830_bias_m:F
,assignvariableop_31_adam_conv2d_831_kernel_m:8
*assignvariableop_32_adam_conv2d_831_bias_m:F
,assignvariableop_33_adam_conv2d_827_kernel_v:8
*assignvariableop_34_adam_conv2d_827_bias_v:F
,assignvariableop_35_adam_conv2d_828_kernel_v:8
*assignvariableop_36_adam_conv2d_828_bias_v:=
+assignvariableop_37_adam_dense_215_kernel_v:@@7
)assignvariableop_38_adam_dense_215_bias_v:@F
,assignvariableop_39_adam_conv2d_829_kernel_v:8
*assignvariableop_40_adam_conv2d_829_bias_v:F
,assignvariableop_41_adam_conv2d_830_kernel_v:8
*assignvariableop_42_adam_conv2d_830_bias_v:F
,assignvariableop_43_adam_conv2d_831_kernel_v:8
*assignvariableop_44_adam_conv2d_831_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_827_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_827_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_828_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_828_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4и
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_215_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5ж
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_215_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6й
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_829_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7з
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_829_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8й
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv2d_830_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9з
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_830_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10н
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv2d_831_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11л
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_831_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_827_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22▓
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_827_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┤
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_828_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24▓
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_828_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25│
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_215_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26▒
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_215_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27┤
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_829_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28▓
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_829_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┤
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_830_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30▓
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_830_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31┤
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_831_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32▓
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_831_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33┤
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_827_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34▓
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_827_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35┤
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_828_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36▓
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_828_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37│
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_215_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38▒
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_215_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39┤
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv2d_829_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40▓
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_829_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41┤
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_conv2d_830_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42▓
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_830_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43┤
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_831_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44▓
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_831_bias_vIdentity_44:output:0"/device:CPU:0*
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
чи
╚
"__inference__wrapped_model_9706398	
inputM
3model_215_conv2d_827_conv2d_readvariableop_resource:B
4model_215_conv2d_827_biasadd_readvariableop_resource:M
3model_215_conv2d_828_conv2d_readvariableop_resource:B
4model_215_conv2d_828_biasadd_readvariableop_resource:D
2model_215_dense_215_matmul_readvariableop_resource:@@A
3model_215_dense_215_biasadd_readvariableop_resource:@M
3model_215_conv2d_829_conv2d_readvariableop_resource:B
4model_215_conv2d_829_biasadd_readvariableop_resource:M
3model_215_conv2d_830_conv2d_readvariableop_resource:B
4model_215_conv2d_830_biasadd_readvariableop_resource:M
3model_215_conv2d_831_conv2d_readvariableop_resource:B
4model_215_conv2d_831_biasadd_readvariableop_resource:
identityИв+model_215/conv2d_827/BiasAdd/ReadVariableOpв*model_215/conv2d_827/Conv2D/ReadVariableOpв+model_215/conv2d_828/BiasAdd/ReadVariableOpв*model_215/conv2d_828/Conv2D/ReadVariableOpв+model_215/conv2d_829/BiasAdd/ReadVariableOpв*model_215/conv2d_829/Conv2D/ReadVariableOpв+model_215/conv2d_830/BiasAdd/ReadVariableOpв*model_215/conv2d_830/Conv2D/ReadVariableOpв+model_215/conv2d_831/BiasAdd/ReadVariableOpв*model_215/conv2d_831/Conv2D/ReadVariableOpв*model_215/dense_215/BiasAdd/ReadVariableOpв)model_215/dense_215/MatMul/ReadVariableOp╔
:model_215/tf.__operators__.getitem_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_215/tf.__operators__.getitem_426/strided_slice/stack═
<model_215/tf.__operators__.getitem_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_215/tf.__operators__.getitem_426/strided_slice/stack_1═
<model_215/tf.__operators__.getitem_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_215/tf.__operators__.getitem_426/strided_slice/stack_2┐
4model_215/tf.__operators__.getitem_426/strided_sliceStridedSliceinputCmodel_215/tf.__operators__.getitem_426/strided_slice/stack:output:0Emodel_215/tf.__operators__.getitem_426/strided_slice/stack_1:output:0Emodel_215/tf.__operators__.getitem_426/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask26
4model_215/tf.__operators__.getitem_426/strided_sliceС
$model_215/range_conversion_215/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_215/range_conversion_215/sub/yў
"model_215/range_conversion_215/subSub=model_215/tf.__operators__.getitem_426/strided_slice:output:0-model_215/range_conversion_215/sub/y:output:0*
T0*/
_output_shapes
:         2$
"model_215/range_conversion_215/subЩ
(model_215/range_conversion_215/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_215/range_conversion_215/truediv/yЁ
&model_215/range_conversion_215/truedivRealDiv&model_215/range_conversion_215/sub:z:01model_215/range_conversion_215/truediv/y:output:0*
T0*/
_output_shapes
:         2(
&model_215/range_conversion_215/truedivС
$model_215/range_conversion_215/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_215/range_conversion_215/mul/yф
"model_215/range_conversion_215/mulMul*model_215/range_conversion_215/truediv:z:0-model_215/range_conversion_215/mul/y:output:0*
T0*/
_output_shapes
:         2$
"model_215/range_conversion_215/mulС
$model_215/range_conversion_215/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2&
$model_215/range_conversion_215/add/yт
"model_215/range_conversion_215/addAddV2&model_215/range_conversion_215/mul:z:0-model_215/range_conversion_215/add/y:output:0*
T0*/
_output_shapes
:         2$
"model_215/range_conversion_215/add╔
:model_215/tf.__operators__.getitem_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_215/tf.__operators__.getitem_427/strided_slice/stack═
<model_215/tf.__operators__.getitem_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_215/tf.__operators__.getitem_427/strided_slice/stack_1═
<model_215/tf.__operators__.getitem_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_215/tf.__operators__.getitem_427/strided_slice/stack_2┐
4model_215/tf.__operators__.getitem_427/strided_sliceStridedSliceinputCmodel_215/tf.__operators__.getitem_427/strided_slice/stack:output:0Emodel_215/tf.__operators__.getitem_427/strided_slice/stack_1:output:0Emodel_215/tf.__operators__.getitem_427/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask26
4model_215/tf.__operators__.getitem_427/strided_sliceМ
#model_215/tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_215/tf.concat_519/concat/axisд
model_215/tf.concat_519/concatConcatV2&model_215/range_conversion_215/add:z:0=model_215/tf.__operators__.getitem_427/strided_slice:output:0,model_215/tf.concat_519/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2 
model_215/tf.concat_519/concat╘
*model_215/conv2d_827/Conv2D/ReadVariableOpReadVariableOp3model_215_conv2d_827_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_215/conv2d_827/Conv2D/ReadVariableOpЪ
model_215/conv2d_827/Conv2DConv2D'model_215/tf.concat_519/concat:output:02model_215/conv2d_827/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_215/conv2d_827/Conv2D╦
+model_215/conv2d_827/BiasAdd/ReadVariableOpReadVariableOp4model_215_conv2d_827_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_215/conv2d_827/BiasAdd/ReadVariableOpє
model_215/conv2d_827/BiasAddBiasAdd$model_215/conv2d_827/Conv2D:output:03model_215/conv2d_827/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_215/conv2d_827/BiasAddл
model_215/conv2d_827/SoftplusSoftplus%model_215/conv2d_827/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_215/conv2d_827/SoftplusЧ
'model_215/average_pooling2d_306/AvgPoolAvgPool+model_215/conv2d_827/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_215/average_pooling2d_306/AvgPool╘
*model_215/conv2d_828/Conv2D/ReadVariableOpReadVariableOp3model_215_conv2d_828_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_215/conv2d_828/Conv2D/ReadVariableOpг
model_215/conv2d_828/Conv2DConv2D0model_215/average_pooling2d_306/AvgPool:output:02model_215/conv2d_828/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_215/conv2d_828/Conv2D╦
+model_215/conv2d_828/BiasAdd/ReadVariableOpReadVariableOp4model_215_conv2d_828_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_215/conv2d_828/BiasAdd/ReadVariableOpє
model_215/conv2d_828/BiasAddBiasAdd$model_215/conv2d_828/Conv2D:output:03model_215/conv2d_828/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_215/conv2d_828/BiasAddл
model_215/conv2d_828/SoftplusSoftplus%model_215/conv2d_828/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_215/conv2d_828/SoftplusЧ
'model_215/average_pooling2d_307/AvgPoolAvgPool+model_215/conv2d_828/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_215/average_pooling2d_307/AvgPoolЪ
model_215/reshape_430/ShapeShape0model_215/average_pooling2d_307/AvgPool:output:0*
T0*
_output_shapes
:2
model_215/reshape_430/Shapeа
)model_215/reshape_430/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_215/reshape_430/strided_slice/stackд
+model_215/reshape_430/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_215/reshape_430/strided_slice/stack_1д
+model_215/reshape_430/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_215/reshape_430/strided_slice/stack_2ц
#model_215/reshape_430/strided_sliceStridedSlice$model_215/reshape_430/Shape:output:02model_215/reshape_430/strided_slice/stack:output:04model_215/reshape_430/strided_slice/stack_1:output:04model_215/reshape_430/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_215/reshape_430/strided_sliceР
%model_215/reshape_430/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_215/reshape_430/Reshape/shape/1▐
#model_215/reshape_430/Reshape/shapePack,model_215/reshape_430/strided_slice:output:0.model_215/reshape_430/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_215/reshape_430/Reshape/shape█
model_215/reshape_430/ReshapeReshape0model_215/average_pooling2d_307/AvgPool:output:0,model_215/reshape_430/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_215/reshape_430/Reshape╔
)model_215/dense_215/MatMul/ReadVariableOpReadVariableOp2model_215_dense_215_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_215/dense_215/MatMul/ReadVariableOp╧
model_215/dense_215/MatMulMatMul&model_215/reshape_430/Reshape:output:01model_215/dense_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_215/dense_215/MatMul╚
*model_215/dense_215/BiasAdd/ReadVariableOpReadVariableOp3model_215_dense_215_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_215/dense_215/BiasAdd/ReadVariableOp╤
model_215/dense_215/BiasAddBiasAdd$model_215/dense_215/MatMul:product:02model_215/dense_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_215/dense_215/BiasAddа
model_215/dense_215/SoftplusSoftplus$model_215/dense_215/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_215/dense_215/SoftplusФ
model_215/reshape_431/ShapeShape*model_215/dense_215/Softplus:activations:0*
T0*
_output_shapes
:2
model_215/reshape_431/Shapeа
)model_215/reshape_431/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_215/reshape_431/strided_slice/stackд
+model_215/reshape_431/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_215/reshape_431/strided_slice/stack_1д
+model_215/reshape_431/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_215/reshape_431/strided_slice/stack_2ц
#model_215/reshape_431/strided_sliceStridedSlice$model_215/reshape_431/Shape:output:02model_215/reshape_431/strided_slice/stack:output:04model_215/reshape_431/strided_slice/stack_1:output:04model_215/reshape_431/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_215/reshape_431/strided_sliceР
%model_215/reshape_431/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_215/reshape_431/Reshape/shape/1Р
%model_215/reshape_431/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_215/reshape_431/Reshape/shape/2Р
%model_215/reshape_431/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_215/reshape_431/Reshape/shape/3╛
#model_215/reshape_431/Reshape/shapePack,model_215/reshape_431/strided_slice:output:0.model_215/reshape_431/Reshape/shape/1:output:0.model_215/reshape_431/Reshape/shape/2:output:0.model_215/reshape_431/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_215/reshape_431/Reshape/shape▌
model_215/reshape_431/ReshapeReshape*model_215/dense_215/Softplus:activations:0,model_215/reshape_431/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
model_215/reshape_431/Reshape▒
&model_215/tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2(
&model_215/tf.reshape_612/Reshape/shapeъ
 model_215/tf.reshape_612/ReshapeReshape&model_215/reshape_431/Reshape:output:0/model_215/tf.reshape_612/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2"
 model_215/tf.reshape_612/Reshapeн
$model_215/tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_215/tf.tile_306/Tile/multiples▄
model_215/tf.tile_306/TileTile)model_215/tf.reshape_612/Reshape:output:0-model_215/tf.tile_306/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
model_215/tf.tile_306/Tileй
&model_215/tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&model_215/tf.reshape_613/Reshape/shape▀
 model_215/tf.reshape_613/ReshapeReshape#model_215/tf.tile_306/Tile:output:0/model_215/tf.reshape_613/Reshape/shape:output:0*
T0*/
_output_shapes
:         2"
 model_215/tf.reshape_613/ReshapeМ
#model_215/tf.concat_520/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_215/tf.concat_520/concat/axisХ
model_215/tf.concat_520/concatConcatV2)model_215/tf.reshape_613/Reshape:output:0+model_215/conv2d_828/Softplus:activations:0,model_215/tf.concat_520/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2 
model_215/tf.concat_520/concat╘
*model_215/conv2d_829/Conv2D/ReadVariableOpReadVariableOp3model_215_conv2d_829_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_215/conv2d_829/Conv2D/ReadVariableOpЪ
model_215/conv2d_829/Conv2DConv2D'model_215/tf.concat_520/concat:output:02model_215/conv2d_829/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_215/conv2d_829/Conv2D╦
+model_215/conv2d_829/BiasAdd/ReadVariableOpReadVariableOp4model_215_conv2d_829_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_215/conv2d_829/BiasAdd/ReadVariableOpє
model_215/conv2d_829/BiasAddBiasAdd$model_215/conv2d_829/Conv2D:output:03model_215/conv2d_829/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_215/conv2d_829/BiasAddл
model_215/conv2d_829/SoftplusSoftplus%model_215/conv2d_829/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_215/conv2d_829/Softplus▒
&model_215/tf.reshape_614/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2(
&model_215/tf.reshape_614/Reshape/shapeя
 model_215/tf.reshape_614/ReshapeReshape+model_215/conv2d_829/Softplus:activations:0/model_215/tf.reshape_614/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2"
 model_215/tf.reshape_614/Reshapeн
$model_215/tf.tile_307/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_215/tf.tile_307/Tile/multiples▄
model_215/tf.tile_307/TileTile)model_215/tf.reshape_614/Reshape:output:0-model_215/tf.tile_307/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
model_215/tf.tile_307/Tileй
&model_215/tf.reshape_615/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&model_215/tf.reshape_615/Reshape/shape▀
 model_215/tf.reshape_615/ReshapeReshape#model_215/tf.tile_307/Tile:output:0/model_215/tf.reshape_615/Reshape/shape:output:0*
T0*/
_output_shapes
:         2"
 model_215/tf.reshape_615/ReshapeМ
#model_215/tf.concat_521/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_215/tf.concat_521/concat/axisХ
model_215/tf.concat_521/concatConcatV2)model_215/tf.reshape_615/Reshape:output:0+model_215/conv2d_827/Softplus:activations:0,model_215/tf.concat_521/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2 
model_215/tf.concat_521/concat╘
*model_215/conv2d_830/Conv2D/ReadVariableOpReadVariableOp3model_215_conv2d_830_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_215/conv2d_830/Conv2D/ReadVariableOpЪ
model_215/conv2d_830/Conv2DConv2D'model_215/tf.concat_521/concat:output:02model_215/conv2d_830/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_215/conv2d_830/Conv2D╦
+model_215/conv2d_830/BiasAdd/ReadVariableOpReadVariableOp4model_215_conv2d_830_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_215/conv2d_830/BiasAdd/ReadVariableOpє
model_215/conv2d_830/BiasAddBiasAdd$model_215/conv2d_830/Conv2D:output:03model_215/conv2d_830/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_215/conv2d_830/BiasAddл
model_215/conv2d_830/SoftplusSoftplus%model_215/conv2d_830/BiasAdd:output:0*
T0*/
_output_shapes
:         2
model_215/conv2d_830/Softplus╘
*model_215/conv2d_831/Conv2D/ReadVariableOpReadVariableOp3model_215_conv2d_831_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_215/conv2d_831/Conv2D/ReadVariableOpЮ
model_215/conv2d_831/Conv2DConv2D+model_215/conv2d_830/Softplus:activations:02model_215/conv2d_831/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
model_215/conv2d_831/Conv2D╦
+model_215/conv2d_831/BiasAdd/ReadVariableOpReadVariableOp4model_215_conv2d_831_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_215/conv2d_831/BiasAdd/ReadVariableOpє
model_215/conv2d_831/BiasAddBiasAdd$model_215/conv2d_831/Conv2D:output:03model_215/conv2d_831/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
model_215/conv2d_831/BiasAddИ
IdentityIdentity%model_215/conv2d_831/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityю
NoOpNoOp,^model_215/conv2d_827/BiasAdd/ReadVariableOp+^model_215/conv2d_827/Conv2D/ReadVariableOp,^model_215/conv2d_828/BiasAdd/ReadVariableOp+^model_215/conv2d_828/Conv2D/ReadVariableOp,^model_215/conv2d_829/BiasAdd/ReadVariableOp+^model_215/conv2d_829/Conv2D/ReadVariableOp,^model_215/conv2d_830/BiasAdd/ReadVariableOp+^model_215/conv2d_830/Conv2D/ReadVariableOp,^model_215/conv2d_831/BiasAdd/ReadVariableOp+^model_215/conv2d_831/Conv2D/ReadVariableOp+^model_215/dense_215/BiasAdd/ReadVariableOp*^model_215/dense_215/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2Z
+model_215/conv2d_827/BiasAdd/ReadVariableOp+model_215/conv2d_827/BiasAdd/ReadVariableOp2X
*model_215/conv2d_827/Conv2D/ReadVariableOp*model_215/conv2d_827/Conv2D/ReadVariableOp2Z
+model_215/conv2d_828/BiasAdd/ReadVariableOp+model_215/conv2d_828/BiasAdd/ReadVariableOp2X
*model_215/conv2d_828/Conv2D/ReadVariableOp*model_215/conv2d_828/Conv2D/ReadVariableOp2Z
+model_215/conv2d_829/BiasAdd/ReadVariableOp+model_215/conv2d_829/BiasAdd/ReadVariableOp2X
*model_215/conv2d_829/Conv2D/ReadVariableOp*model_215/conv2d_829/Conv2D/ReadVariableOp2Z
+model_215/conv2d_830/BiasAdd/ReadVariableOp+model_215/conv2d_830/BiasAdd/ReadVariableOp2X
*model_215/conv2d_830/Conv2D/ReadVariableOp*model_215/conv2d_830/Conv2D/ReadVariableOp2Z
+model_215/conv2d_831/BiasAdd/ReadVariableOp+model_215/conv2d_831/BiasAdd/ReadVariableOp2X
*model_215/conv2d_831/Conv2D/ReadVariableOp*model_215/conv2d_831/Conv2D/ReadVariableOp2X
*model_215/dense_215/BiasAdd/ReadVariableOp*model_215/dense_215/BiasAdd/ReadVariableOp2V
)model_215/dense_215/MatMul/ReadVariableOp)model_215/dense_215/MatMul/ReadVariableOp:V R
/
_output_shapes
:         

_user_specified_nameinput
л
А
G__inference_conv2d_829_layer_call_and_return_conditional_losses_9707487

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
H__inference_reshape_431_layer_call_and_return_conditional_losses_9707471

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
╝
╚
%__inference_signature_wrapper_9707067	
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
"__inference__wrapped_model_97063982
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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9706429

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
G__inference_conv2d_830_layer_call_and_return_conditional_losses_9707507

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
╖
А
G__inference_conv2d_831_layer_call_and_return_conditional_losses_9706626

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
╨П
¤	
F__inference_model_215_layer_call_and_return_conditional_losses_9707265

inputsC
)conv2d_827_conv2d_readvariableop_resource:8
*conv2d_827_biasadd_readvariableop_resource:C
)conv2d_828_conv2d_readvariableop_resource:8
*conv2d_828_biasadd_readvariableop_resource::
(dense_215_matmul_readvariableop_resource:@@7
)dense_215_biasadd_readvariableop_resource:@C
)conv2d_829_conv2d_readvariableop_resource:8
*conv2d_829_biasadd_readvariableop_resource:C
)conv2d_830_conv2d_readvariableop_resource:8
*conv2d_830_biasadd_readvariableop_resource:C
)conv2d_831_conv2d_readvariableop_resource:8
*conv2d_831_biasadd_readvariableop_resource:
identityИв!conv2d_827/BiasAdd/ReadVariableOpв conv2d_827/Conv2D/ReadVariableOpв!conv2d_828/BiasAdd/ReadVariableOpв conv2d_828/Conv2D/ReadVariableOpв!conv2d_829/BiasAdd/ReadVariableOpв conv2d_829/Conv2D/ReadVariableOpв!conv2d_830/BiasAdd/ReadVariableOpв conv2d_830/Conv2D/ReadVariableOpв!conv2d_831/BiasAdd/ReadVariableOpв conv2d_831/Conv2D/ReadVariableOpв dense_215/BiasAdd/ReadVariableOpвdense_215/MatMul/ReadVariableOp╡
0tf.__operators__.getitem_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_426/strided_slice/stack╣
2tf.__operators__.getitem_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_426/strided_slice/stack_1╣
2tf.__operators__.getitem_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_426/strided_slice/stack_2О
*tf.__operators__.getitem_426/strided_sliceStridedSliceinputs9tf.__operators__.getitem_426/strided_slice/stack:output:0;tf.__operators__.getitem_426/strided_slice/stack_1:output:0;tf.__operators__.getitem_426/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_426/strided_slice}
range_conversion_215/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_215/sub/y╧
range_conversion_215/subSub3tf.__operators__.getitem_426/strided_slice:output:0#range_conversion_215/sub/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/subЕ
range_conversion_215/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_215/truediv/y╚
range_conversion_215/truedivRealDivrange_conversion_215/sub:z:0'range_conversion_215/truediv/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/truediv}
range_conversion_215/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_215/mul/y╝
range_conversion_215/mulMul range_conversion_215/truediv:z:0#range_conversion_215/mul/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/mul}
range_conversion_215/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_215/add/y║
range_conversion_215/addAddV2range_conversion_215/mul:z:0#range_conversion_215/add/y:output:0*
T0*/
_output_shapes
:         2
range_conversion_215/add╡
0tf.__operators__.getitem_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_427/strided_slice/stack╣
2tf.__operators__.getitem_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_427/strided_slice/stack_1╣
2tf.__operators__.getitem_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_427/strided_slice/stack_2О
*tf.__operators__.getitem_427/strided_sliceStridedSliceinputs9tf.__operators__.getitem_427/strided_slice/stack:output:0;tf.__operators__.getitem_427/strided_slice/stack_1:output:0;tf.__operators__.getitem_427/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_427/strided_slicex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisЄ
tf.concat_519/concatConcatV2range_conversion_215/add:z:03tf.__operators__.getitem_427/strided_slice:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_519/concat╢
 conv2d_827/Conv2D/ReadVariableOpReadVariableOp)conv2d_827_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_827/Conv2D/ReadVariableOpЄ
conv2d_827/Conv2DConv2Dtf.concat_519/concat:output:0(conv2d_827/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_827/Conv2Dн
!conv2d_827/BiasAdd/ReadVariableOpReadVariableOp*conv2d_827_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_827/BiasAdd/ReadVariableOp╦
conv2d_827/BiasAddBiasAddconv2d_827/Conv2D:output:0)conv2d_827/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_827/BiasAddН
conv2d_827/SoftplusSoftplusconv2d_827/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_827/Softplus∙
average_pooling2d_306/AvgPoolAvgPool!conv2d_827/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_306/AvgPool╢
 conv2d_828/Conv2D/ReadVariableOpReadVariableOp)conv2d_828_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_828/Conv2D/ReadVariableOp√
conv2d_828/Conv2DConv2D&average_pooling2d_306/AvgPool:output:0(conv2d_828/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_828/Conv2Dн
!conv2d_828/BiasAdd/ReadVariableOpReadVariableOp*conv2d_828_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_828/BiasAdd/ReadVariableOp╦
conv2d_828/BiasAddBiasAddconv2d_828/Conv2D:output:0)conv2d_828/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_828/BiasAddН
conv2d_828/SoftplusSoftplusconv2d_828/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_828/Softplus∙
average_pooling2d_307/AvgPoolAvgPool!conv2d_828/Softplus:activations:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_307/AvgPool|
reshape_430/ShapeShape&average_pooling2d_307/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_430/ShapeМ
reshape_430/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_430/strided_slice/stackР
!reshape_430/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_430/strided_slice/stack_1Р
!reshape_430/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_430/strided_slice/stack_2к
reshape_430/strided_sliceStridedSlicereshape_430/Shape:output:0(reshape_430/strided_slice/stack:output:0*reshape_430/strided_slice/stack_1:output:0*reshape_430/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_430/strided_slice|
reshape_430/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_430/Reshape/shape/1╢
reshape_430/Reshape/shapePack"reshape_430/strided_slice:output:0$reshape_430/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_430/Reshape/shape│
reshape_430/ReshapeReshape&average_pooling2d_307/AvgPool:output:0"reshape_430/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_430/Reshapeл
dense_215/MatMul/ReadVariableOpReadVariableOp(dense_215_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_215/MatMul/ReadVariableOpз
dense_215/MatMulMatMulreshape_430/Reshape:output:0'dense_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_215/MatMulк
 dense_215/BiasAdd/ReadVariableOpReadVariableOp)dense_215_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_215/BiasAdd/ReadVariableOpй
dense_215/BiasAddBiasAdddense_215/MatMul:product:0(dense_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_215/BiasAddВ
dense_215/SoftplusSoftplusdense_215/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_215/Softplusv
reshape_431/ShapeShape dense_215/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_431/ShapeМ
reshape_431/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_431/strided_slice/stackР
!reshape_431/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_431/strided_slice/stack_1Р
!reshape_431/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_431/strided_slice/stack_2к
reshape_431/strided_sliceStridedSlicereshape_431/Shape:output:0(reshape_431/strided_slice/stack:output:0*reshape_431/strided_slice/stack_1:output:0*reshape_431/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_431/strided_slice|
reshape_431/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_431/Reshape/shape/1|
reshape_431/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_431/Reshape/shape/2|
reshape_431/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_431/Reshape/shape/3В
reshape_431/Reshape/shapePack"reshape_431/strided_slice:output:0$reshape_431/Reshape/shape/1:output:0$reshape_431/Reshape/shape/2:output:0$reshape_431/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_431/Reshape/shape╡
reshape_431/ReshapeReshape dense_215/Softplus:activations:0"reshape_431/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
reshape_431/ReshapeЭ
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_612/Reshape/shape┬
tf.reshape_612/ReshapeReshapereshape_431/Reshape:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_612/ReshapeЩ
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_306/Tile/multiples┤
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_306/TileХ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_613/Reshape/shape╖
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_613/Reshapex
tf.concat_520/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_520/concat/axisу
tf.concat_520/concatConcatV2tf.reshape_613/Reshape:output:0!conv2d_828/Softplus:activations:0"tf.concat_520/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_520/concat╢
 conv2d_829/Conv2D/ReadVariableOpReadVariableOp)conv2d_829_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_829/Conv2D/ReadVariableOpЄ
conv2d_829/Conv2DConv2Dtf.concat_520/concat:output:0(conv2d_829/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_829/Conv2Dн
!conv2d_829/BiasAdd/ReadVariableOpReadVariableOp*conv2d_829_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_829/BiasAdd/ReadVariableOp╦
conv2d_829/BiasAddBiasAddconv2d_829/Conv2D:output:0)conv2d_829/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_829/BiasAddН
conv2d_829/SoftplusSoftplusconv2d_829/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_829/SoftplusЭ
tf.reshape_614/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_614/Reshape/shape╟
tf.reshape_614/ReshapeReshape!conv2d_829/Softplus:activations:0%tf.reshape_614/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_614/ReshapeЩ
tf.tile_307/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_307/Tile/multiples┤
tf.tile_307/TileTiletf.reshape_614/Reshape:output:0#tf.tile_307/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_307/TileХ
tf.reshape_615/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_615/Reshape/shape╖
tf.reshape_615/ReshapeReshapetf.tile_307/Tile:output:0%tf.reshape_615/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_615/Reshapex
tf.concat_521/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_521/concat/axisу
tf.concat_521/concatConcatV2tf.reshape_615/Reshape:output:0!conv2d_827/Softplus:activations:0"tf.concat_521/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_521/concat╢
 conv2d_830/Conv2D/ReadVariableOpReadVariableOp)conv2d_830_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_830/Conv2D/ReadVariableOpЄ
conv2d_830/Conv2DConv2Dtf.concat_521/concat:output:0(conv2d_830/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_830/Conv2Dн
!conv2d_830/BiasAdd/ReadVariableOpReadVariableOp*conv2d_830_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_830/BiasAdd/ReadVariableOp╦
conv2d_830/BiasAddBiasAddconv2d_830/Conv2D:output:0)conv2d_830/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_830/BiasAddН
conv2d_830/SoftplusSoftplusconv2d_830/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_830/Softplus╢
 conv2d_831/Conv2D/ReadVariableOpReadVariableOp)conv2d_831_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_831/Conv2D/ReadVariableOpЎ
conv2d_831/Conv2DConv2D!conv2d_830/Softplus:activations:0(conv2d_831/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_831/Conv2Dн
!conv2d_831/BiasAdd/ReadVariableOpReadVariableOp*conv2d_831_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_831/BiasAdd/ReadVariableOp╦
conv2d_831/BiasAddBiasAddconv2d_831/Conv2D:output:0)conv2d_831/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
data_formatNCHW2
conv2d_831/BiasAdd~
IdentityIdentityconv2d_831/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         2

IdentityЎ
NoOpNoOp"^conv2d_827/BiasAdd/ReadVariableOp!^conv2d_827/Conv2D/ReadVariableOp"^conv2d_828/BiasAdd/ReadVariableOp!^conv2d_828/Conv2D/ReadVariableOp"^conv2d_829/BiasAdd/ReadVariableOp!^conv2d_829/Conv2D/ReadVariableOp"^conv2d_830/BiasAdd/ReadVariableOp!^conv2d_830/Conv2D/ReadVariableOp"^conv2d_831/BiasAdd/ReadVariableOp!^conv2d_831/Conv2D/ReadVariableOp!^dense_215/BiasAdd/ReadVariableOp ^dense_215/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2F
!conv2d_827/BiasAdd/ReadVariableOp!conv2d_827/BiasAdd/ReadVariableOp2D
 conv2d_827/Conv2D/ReadVariableOp conv2d_827/Conv2D/ReadVariableOp2F
!conv2d_828/BiasAdd/ReadVariableOp!conv2d_828/BiasAdd/ReadVariableOp2D
 conv2d_828/Conv2D/ReadVariableOp conv2d_828/Conv2D/ReadVariableOp2F
!conv2d_829/BiasAdd/ReadVariableOp!conv2d_829/BiasAdd/ReadVariableOp2D
 conv2d_829/Conv2D/ReadVariableOp conv2d_829/Conv2D/ReadVariableOp2F
!conv2d_830/BiasAdd/ReadVariableOp!conv2d_830/BiasAdd/ReadVariableOp2D
 conv2d_830/Conv2D/ReadVariableOp conv2d_830/Conv2D/ReadVariableOp2F
!conv2d_831/BiasAdd/ReadVariableOp!conv2d_831/BiasAdd/ReadVariableOp2D
 conv2d_831/Conv2D/ReadVariableOp conv2d_831/Conv2D/ReadVariableOp2D
 dense_215/BiasAdd/ReadVariableOp dense_215/BiasAdd/ReadVariableOp2B
dense_215/MatMul/ReadVariableOpdense_215/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╖
А
G__inference_conv2d_831_layer_call_and_return_conditional_losses_9707526

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
х
n
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9706494

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
щ
╧
+__inference_model_215_layer_call_fn_9707323

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
F__inference_model_215_layer_call_and_return_conditional_losses_97068442
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
У
d
H__inference_reshape_431_layer_call_and_return_conditional_losses_9706564

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
А]
Ш
F__inference_model_215_layer_call_and_return_conditional_losses_9706633

inputs,
conv2d_827_9706485: 
conv2d_827_9706487:,
conv2d_828_9706508: 
conv2d_828_9706510:#
dense_215_9706545:@@
dense_215_9706547:@,
conv2d_829_9706586: 
conv2d_829_9706588:,
conv2d_830_9706611: 
conv2d_830_9706613:,
conv2d_831_9706627: 
conv2d_831_9706629:
identityИв"conv2d_827/StatefulPartitionedCallв"conv2d_828/StatefulPartitionedCallв"conv2d_829/StatefulPartitionedCallв"conv2d_830/StatefulPartitionedCallв"conv2d_831/StatefulPartitionedCallв!dense_215/StatefulPartitionedCall╡
0tf.__operators__.getitem_426/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_426/strided_slice/stack╣
2tf.__operators__.getitem_426/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_426/strided_slice/stack_1╣
2tf.__operators__.getitem_426/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_426/strided_slice/stack_2О
*tf.__operators__.getitem_426/strided_sliceStridedSliceinputs9tf.__operators__.getitem_426/strided_slice/stack:output:0;tf.__operators__.getitem_426/strided_slice/stack_1:output:0;tf.__operators__.getitem_426/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_426/strided_slice│
$range_conversion_215/PartitionedCallPartitionedCall3tf.__operators__.getitem_426/strided_slice:output:0*
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
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_97064652&
$range_conversion_215/PartitionedCall╡
0tf.__operators__.getitem_427/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_427/strided_slice/stack╣
2tf.__operators__.getitem_427/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_427/strided_slice/stack_1╣
2tf.__operators__.getitem_427/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_427/strided_slice/stack_2О
*tf.__operators__.getitem_427/strided_sliceStridedSliceinputs9tf.__operators__.getitem_427/strided_slice/stack:output:0;tf.__operators__.getitem_427/strided_slice/stack_1:output:0;tf.__operators__.getitem_427/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         *

begin_mask*
end_mask2,
*tf.__operators__.getitem_427/strided_slicex
tf.concat_519/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_519/concat/axisГ
tf.concat_519/concatConcatV2-range_conversion_215/PartitionedCall:output:03tf.__operators__.getitem_427/strided_slice:output:0"tf.concat_519/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_519/concat┼
"conv2d_827/StatefulPartitionedCallStatefulPartitionedCalltf.concat_519/concat:output:0conv2d_827_9706485conv2d_827_9706487*
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
G__inference_conv2d_827_layer_call_and_return_conditional_losses_97064842$
"conv2d_827/StatefulPartitionedCallо
%average_pooling2d_306/PartitionedCallPartitionedCall+conv2d_827/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_97064942'
%average_pooling2d_306/PartitionedCall╓
"conv2d_828/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_306/PartitionedCall:output:0conv2d_828_9706508conv2d_828_9706510*
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
G__inference_conv2d_828_layer_call_and_return_conditional_losses_97065072$
"conv2d_828/StatefulPartitionedCallо
%average_pooling2d_307/PartitionedCallPartitionedCall+conv2d_828/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_97065172'
%average_pooling2d_307/PartitionedCallЛ
reshape_430/PartitionedCallPartitionedCall.average_pooling2d_307/PartitionedCall:output:0*
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
H__inference_reshape_430_layer_call_and_return_conditional_losses_97065312
reshape_430/PartitionedCall┐
!dense_215/StatefulPartitionedCallStatefulPartitionedCall$reshape_430/PartitionedCall:output:0dense_215_9706545dense_215_9706547*
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
F__inference_dense_215_layer_call_and_return_conditional_losses_97065442#
!dense_215/StatefulPartitionedCallП
reshape_431/PartitionedCallPartitionedCall*dense_215/StatefulPartitionedCall:output:0*
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
H__inference_reshape_431_layer_call_and_return_conditional_losses_97065642
reshape_431/PartitionedCallЭ
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_612/Reshape/shape╩
tf.reshape_612/ReshapeReshape$reshape_431/PartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_612/ReshapeЩ
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_306/Tile/multiples┤
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_306/TileХ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_613/Reshape/shape╖
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_613/Reshapex
tf.concat_520/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_520/concat/axisэ
tf.concat_520/concatConcatV2tf.reshape_613/Reshape:output:0+conv2d_828/StatefulPartitionedCall:output:0"tf.concat_520/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_520/concat┼
"conv2d_829/StatefulPartitionedCallStatefulPartitionedCalltf.concat_520/concat:output:0conv2d_829_9706586conv2d_829_9706588*
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
G__inference_conv2d_829_layer_call_and_return_conditional_losses_97065852$
"conv2d_829/StatefulPartitionedCallЭ
tf.reshape_614/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""                   2
tf.reshape_614/Reshape/shape╤
tf.reshape_614/ReshapeReshape+conv2d_829/StatefulPartitionedCall:output:0%tf.reshape_614/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!         2
tf.reshape_614/ReshapeЩ
tf.tile_307/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_307/Tile/multiples┤
tf.tile_307/TileTiletf.reshape_614/Reshape:output:0#tf.tile_307/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!         2
tf.tile_307/TileХ
tf.reshape_615/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
tf.reshape_615/Reshape/shape╖
tf.reshape_615/ReshapeReshapetf.tile_307/Tile:output:0%tf.reshape_615/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
tf.reshape_615/Reshapex
tf.concat_521/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_521/concat/axisэ
tf.concat_521/concatConcatV2tf.reshape_615/Reshape:output:0+conv2d_827/StatefulPartitionedCall:output:0"tf.concat_521/concat/axis:output:0*
N*
T0*/
_output_shapes
:         2
tf.concat_521/concat┼
"conv2d_830/StatefulPartitionedCallStatefulPartitionedCalltf.concat_521/concat:output:0conv2d_830_9706611conv2d_830_9706613*
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
G__inference_conv2d_830_layer_call_and_return_conditional_losses_97066102$
"conv2d_830/StatefulPartitionedCall╙
"conv2d_831/StatefulPartitionedCallStatefulPartitionedCall+conv2d_830/StatefulPartitionedCall:output:0conv2d_831_9706627conv2d_831_9706629*
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
G__inference_conv2d_831_layer_call_and_return_conditional_losses_97066262$
"conv2d_831/StatefulPartitionedCallО
IdentityIdentity+conv2d_831/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityл
NoOpNoOp#^conv2d_827/StatefulPartitionedCall#^conv2d_828/StatefulPartitionedCall#^conv2d_829/StatefulPartitionedCall#^conv2d_830/StatefulPartitionedCall#^conv2d_831/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         : : : : : : : : : : : : 2H
"conv2d_827/StatefulPartitionedCall"conv2d_827/StatefulPartitionedCall2H
"conv2d_828/StatefulPartitionedCall"conv2d_828/StatefulPartitionedCall2H
"conv2d_829/StatefulPartitionedCall"conv2d_829/StatefulPartitionedCall2H
"conv2d_830/StatefulPartitionedCall"conv2d_830/StatefulPartitionedCall2H
"conv2d_831/StatefulPartitionedCall"conv2d_831/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ъ
S
7__inference_average_pooling2d_307_layer_call_fn_9707415

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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_97064292
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
е
б
,__inference_conv2d_830_layer_call_fn_9707516

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
G__inference_conv2d_830_layer_call_and_return_conditional_losses_97066102
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
У
d
H__inference_reshape_430_layer_call_and_return_conditional_losses_9706531

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
ц
╬
+__inference_model_215_layer_call_fn_9706660	
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
F__inference_model_215_layer_call_and_return_conditional_losses_97066332
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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9707405

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
ф_
я
 __inference__traced_save_9707693
file_prefix0
,savev2_conv2d_827_kernel_read_readvariableop.
*savev2_conv2d_827_bias_read_readvariableop0
,savev2_conv2d_828_kernel_read_readvariableop.
*savev2_conv2d_828_bias_read_readvariableop/
+savev2_dense_215_kernel_read_readvariableop-
)savev2_dense_215_bias_read_readvariableop0
,savev2_conv2d_829_kernel_read_readvariableop.
*savev2_conv2d_829_bias_read_readvariableop0
,savev2_conv2d_830_kernel_read_readvariableop.
*savev2_conv2d_830_bias_read_readvariableop0
,savev2_conv2d_831_kernel_read_readvariableop.
*savev2_conv2d_831_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_827_kernel_m_read_readvariableop5
1savev2_adam_conv2d_827_bias_m_read_readvariableop7
3savev2_adam_conv2d_828_kernel_m_read_readvariableop5
1savev2_adam_conv2d_828_bias_m_read_readvariableop6
2savev2_adam_dense_215_kernel_m_read_readvariableop4
0savev2_adam_dense_215_bias_m_read_readvariableop7
3savev2_adam_conv2d_829_kernel_m_read_readvariableop5
1savev2_adam_conv2d_829_bias_m_read_readvariableop7
3savev2_adam_conv2d_830_kernel_m_read_readvariableop5
1savev2_adam_conv2d_830_bias_m_read_readvariableop7
3savev2_adam_conv2d_831_kernel_m_read_readvariableop5
1savev2_adam_conv2d_831_bias_m_read_readvariableop7
3savev2_adam_conv2d_827_kernel_v_read_readvariableop5
1savev2_adam_conv2d_827_bias_v_read_readvariableop7
3savev2_adam_conv2d_828_kernel_v_read_readvariableop5
1savev2_adam_conv2d_828_bias_v_read_readvariableop6
2savev2_adam_dense_215_kernel_v_read_readvariableop4
0savev2_adam_dense_215_bias_v_read_readvariableop7
3savev2_adam_conv2d_829_kernel_v_read_readvariableop5
1savev2_adam_conv2d_829_bias_v_read_readvariableop7
3savev2_adam_conv2d_830_kernel_v_read_readvariableop5
1savev2_adam_conv2d_830_bias_v_read_readvariableop7
3savev2_adam_conv2d_831_kernel_v_read_readvariableop5
1savev2_adam_conv2d_831_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_827_kernel_read_readvariableop*savev2_conv2d_827_bias_read_readvariableop,savev2_conv2d_828_kernel_read_readvariableop*savev2_conv2d_828_bias_read_readvariableop+savev2_dense_215_kernel_read_readvariableop)savev2_dense_215_bias_read_readvariableop,savev2_conv2d_829_kernel_read_readvariableop*savev2_conv2d_829_bias_read_readvariableop,savev2_conv2d_830_kernel_read_readvariableop*savev2_conv2d_830_bias_read_readvariableop,savev2_conv2d_831_kernel_read_readvariableop*savev2_conv2d_831_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_827_kernel_m_read_readvariableop1savev2_adam_conv2d_827_bias_m_read_readvariableop3savev2_adam_conv2d_828_kernel_m_read_readvariableop1savev2_adam_conv2d_828_bias_m_read_readvariableop2savev2_adam_dense_215_kernel_m_read_readvariableop0savev2_adam_dense_215_bias_m_read_readvariableop3savev2_adam_conv2d_829_kernel_m_read_readvariableop1savev2_adam_conv2d_829_bias_m_read_readvariableop3savev2_adam_conv2d_830_kernel_m_read_readvariableop1savev2_adam_conv2d_830_bias_m_read_readvariableop3savev2_adam_conv2d_831_kernel_m_read_readvariableop1savev2_adam_conv2d_831_bias_m_read_readvariableop3savev2_adam_conv2d_827_kernel_v_read_readvariableop1savev2_adam_conv2d_827_bias_v_read_readvariableop3savev2_adam_conv2d_828_kernel_v_read_readvariableop1savev2_adam_conv2d_828_bias_v_read_readvariableop2savev2_adam_dense_215_kernel_v_read_readvariableop0savev2_adam_dense_215_bias_v_read_readvariableop3savev2_adam_conv2d_829_kernel_v_read_readvariableop1savev2_adam_conv2d_829_bias_v_read_readvariableop3savev2_adam_conv2d_830_kernel_v_read_readvariableop1savev2_adam_conv2d_830_bias_v_read_readvariableop3savev2_adam_conv2d_831_kernel_v_read_readvariableop1savev2_adam_conv2d_831_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
У
d
H__inference_reshape_430_layer_call_and_return_conditional_losses_9707432

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

conv2d_8318
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
-:+ 2conv2d_827/kernel
: 2conv2d_827/bias
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
-:+ 2conv2d_828/kernel
: 2conv2d_828/bias
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
$:"@@ 2dense_215/kernel
:@ 2dense_215/bias
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
-:+ 2conv2d_829/kernel
: 2conv2d_829/bias
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
-:+ 2conv2d_830/kernel
: 2conv2d_830/bias
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
-:+ 2conv2d_831/kernel
: 2conv2d_831/bias
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
2:0 2Adam/conv2d_827/kernel/m
$:" 2Adam/conv2d_827/bias/m
2:0 2Adam/conv2d_828/kernel/m
$:" 2Adam/conv2d_828/bias/m
):'@@ 2Adam/dense_215/kernel/m
#:!@ 2Adam/dense_215/bias/m
2:0 2Adam/conv2d_829/kernel/m
$:" 2Adam/conv2d_829/bias/m
2:0 2Adam/conv2d_830/kernel/m
$:" 2Adam/conv2d_830/bias/m
2:0 2Adam/conv2d_831/kernel/m
$:" 2Adam/conv2d_831/bias/m
2:0 2Adam/conv2d_827/kernel/v
$:" 2Adam/conv2d_827/bias/v
2:0 2Adam/conv2d_828/kernel/v
$:" 2Adam/conv2d_828/bias/v
):'@@ 2Adam/dense_215/kernel/v
#:!@ 2Adam/dense_215/bias/v
2:0 2Adam/conv2d_829/kernel/v
$:" 2Adam/conv2d_829/bias/v
2:0 2Adam/conv2d_830/kernel/v
$:" 2Adam/conv2d_830/bias/v
2:0 2Adam/conv2d_831/kernel/v
$:" 2Adam/conv2d_831/bias/v
ц2у
F__inference_model_215_layer_call_and_return_conditional_losses_9707166
F__inference_model_215_layer_call_and_return_conditional_losses_9707265
F__inference_model_215_layer_call_and_return_conditional_losses_9706965
F__inference_model_215_layer_call_and_return_conditional_losses_9707030└
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
+__inference_model_215_layer_call_fn_9706660
+__inference_model_215_layer_call_fn_9707294
+__inference_model_215_layer_call_fn_9707323
+__inference_model_215_layer_call_fn_9706900└
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
"__inference__wrapped_model_9706398input"Ш
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
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_9707335ж
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
6__inference_range_conversion_215_layer_call_fn_9707340ж
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
G__inference_conv2d_827_layer_call_and_return_conditional_losses_9707351в
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
,__inference_conv2d_827_layer_call_fn_9707360в
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
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9707365
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9707370в
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
7__inference_average_pooling2d_306_layer_call_fn_9707375
7__inference_average_pooling2d_306_layer_call_fn_9707380в
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
G__inference_conv2d_828_layer_call_and_return_conditional_losses_9707391в
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
,__inference_conv2d_828_layer_call_fn_9707400в
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
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9707405
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9707410в
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
7__inference_average_pooling2d_307_layer_call_fn_9707415
7__inference_average_pooling2d_307_layer_call_fn_9707420в
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
H__inference_reshape_430_layer_call_and_return_conditional_losses_9707432в
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
-__inference_reshape_430_layer_call_fn_9707437в
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
F__inference_dense_215_layer_call_and_return_conditional_losses_9707448в
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
+__inference_dense_215_layer_call_fn_9707457в
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
H__inference_reshape_431_layer_call_and_return_conditional_losses_9707471в
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
-__inference_reshape_431_layer_call_fn_9707476в
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
G__inference_conv2d_829_layer_call_and_return_conditional_losses_9707487в
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
,__inference_conv2d_829_layer_call_fn_9707496в
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
G__inference_conv2d_830_layer_call_and_return_conditional_losses_9707507в
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
,__inference_conv2d_830_layer_call_fn_9707516в
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
G__inference_conv2d_831_layer_call_and_return_conditional_losses_9707526в
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
,__inference_conv2d_831_layer_call_fn_9707535в
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
%__inference_signature_wrapper_9707067input"Ф
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
"__inference__wrapped_model_9706398З%&/0=>KLUV[\6в3
,в)
'К$
input         
к "?к<
:

conv2d_831,К)

conv2d_831         ї
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9707365ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╛
R__inference_average_pooling2d_306_layer_call_and_return_conditional_losses_9707370h7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ ═
7__inference_average_pooling2d_306_layer_call_fn_9707375СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Ц
7__inference_average_pooling2d_306_layer_call_fn_9707380[7в4
-в*
(К%
inputs         
к " К         ї
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9707405ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╛
R__inference_average_pooling2d_307_layer_call_and_return_conditional_losses_9707410h7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ ═
7__inference_average_pooling2d_307_layer_call_fn_9707415СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Ц
7__inference_average_pooling2d_307_layer_call_fn_9707420[7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_827_layer_call_and_return_conditional_losses_9707351l%&7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_827_layer_call_fn_9707360_%&7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_828_layer_call_and_return_conditional_losses_9707391l/07в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_828_layer_call_fn_9707400_/07в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_829_layer_call_and_return_conditional_losses_9707487lKL7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_829_layer_call_fn_9707496_KL7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_830_layer_call_and_return_conditional_losses_9707507lUV7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_830_layer_call_fn_9707516_UV7в4
-в*
(К%
inputs         
к " К         ╖
G__inference_conv2d_831_layer_call_and_return_conditional_losses_9707526l[\7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_conv2d_831_layer_call_fn_9707535_[\7в4
-в*
(К%
inputs         
к " К         ж
F__inference_dense_215_layer_call_and_return_conditional_losses_9707448\=>/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ ~
+__inference_dense_215_layer_call_fn_9707457O=>/в,
%в"
 К
inputs         @
к "К         @╟
F__inference_model_215_layer_call_and_return_conditional_losses_9706965}%&/0=>KLUV[\>в;
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
F__inference_model_215_layer_call_and_return_conditional_losses_9707030}%&/0=>KLUV[\>в;
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
F__inference_model_215_layer_call_and_return_conditional_losses_9707166~%&/0=>KLUV[\?в<
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
F__inference_model_215_layer_call_and_return_conditional_losses_9707265~%&/0=>KLUV[\?в<
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
+__inference_model_215_layer_call_fn_9706660p%&/0=>KLUV[\>в;
4в1
'К$
input         
p 

 
к " К         Я
+__inference_model_215_layer_call_fn_9706900p%&/0=>KLUV[\>в;
4в1
'К$
input         
p

 
к " К         а
+__inference_model_215_layer_call_fn_9707294q%&/0=>KLUV[\?в<
5в2
(К%
inputs         
p 

 
к " К         а
+__inference_model_215_layer_call_fn_9707323q%&/0=>KLUV[\?в<
5в2
(К%
inputs         
p

 
к " К         ┴
Q__inference_range_conversion_215_layer_call_and_return_conditional_losses_9707335l;в8
1в.
,К)

parameters         
к "-в*
#К 
0         
Ъ Щ
6__inference_range_conversion_215_layer_call_fn_9707340_;в8
1в.
,К)

parameters         
к " К         м
H__inference_reshape_430_layer_call_and_return_conditional_losses_9707432`7в4
-в*
(К%
inputs         
к "%в"
К
0         @
Ъ Д
-__inference_reshape_430_layer_call_fn_9707437S7в4
-в*
(К%
inputs         
к "К         @м
H__inference_reshape_431_layer_call_and_return_conditional_losses_9707471`/в,
%в"
 К
inputs         @
к "-в*
#К 
0         
Ъ Д
-__inference_reshape_431_layer_call_fn_9707476S/в,
%в"
 К
inputs         @
к " К         ║
%__inference_signature_wrapper_9707067Р%&/0=>KLUV[\?в<
в 
5к2
0
input'К$
input         "?к<
:

conv2d_831,К)

conv2d_831         