��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
�
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
�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv2d_1079/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1079/kernel
�
&conv2d_1079/kernel/Read/ReadVariableOpReadVariableOpconv2d_1079/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1079/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1079/bias
q
$conv2d_1079/bias/Read/ReadVariableOpReadVariableOpconv2d_1079/bias*
_output_shapes
:*
dtype0
�
conv2d_1080/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1080/kernel
�
&conv2d_1080/kernel/Read/ReadVariableOpReadVariableOpconv2d_1080/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1080/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1080/bias
q
$conv2d_1080/bias/Read/ReadVariableOpReadVariableOpconv2d_1080/bias*
_output_shapes
:*
dtype0
|
dense_277/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_277/kernel
u
$dense_277/kernel/Read/ReadVariableOpReadVariableOpdense_277/kernel*
_output_shapes

:@@*
dtype0
t
dense_277/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_277/bias
m
"dense_277/bias/Read/ReadVariableOpReadVariableOpdense_277/bias*
_output_shapes
:@*
dtype0
�
conv2d_1081/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1081/kernel
�
&conv2d_1081/kernel/Read/ReadVariableOpReadVariableOpconv2d_1081/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1081/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1081/bias
q
$conv2d_1081/bias/Read/ReadVariableOpReadVariableOpconv2d_1081/bias*
_output_shapes
:*
dtype0
�
conv2d_1082/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1082/kernel
�
&conv2d_1082/kernel/Read/ReadVariableOpReadVariableOpconv2d_1082/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1082/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1082/bias
q
$conv2d_1082/bias/Read/ReadVariableOpReadVariableOpconv2d_1082/bias*
_output_shapes
:*
dtype0
�
conv2d_1083/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1083/kernel
�
&conv2d_1083/kernel/Read/ReadVariableOpReadVariableOpconv2d_1083/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1083/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1083/bias
q
$conv2d_1083/bias/Read/ReadVariableOpReadVariableOpconv2d_1083/bias*
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
�
Adam/conv2d_1079/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1079/kernel/m
�
-Adam/conv2d_1079/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1079/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1079/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1079/bias/m

+Adam/conv2d_1079/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1079/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_1080/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1080/kernel/m
�
-Adam/conv2d_1080/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1080/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1080/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1080/bias/m

+Adam/conv2d_1080/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1080/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_277/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_277/kernel/m
�
+Adam/dense_277/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_277/kernel/m*
_output_shapes

:@@*
dtype0
�
Adam/dense_277/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_277/bias/m
{
)Adam/dense_277/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_277/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_1081/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1081/kernel/m
�
-Adam/conv2d_1081/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1081/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1081/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1081/bias/m

+Adam/conv2d_1081/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1081/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_1082/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1082/kernel/m
�
-Adam/conv2d_1082/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1082/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1082/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1082/bias/m

+Adam/conv2d_1082/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1082/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_1083/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1083/kernel/m
�
-Adam/conv2d_1083/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1083/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1083/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1083/bias/m

+Adam/conv2d_1083/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1083/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_1079/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1079/kernel/v
�
-Adam/conv2d_1079/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1079/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1079/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1079/bias/v

+Adam/conv2d_1079/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1079/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_1080/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1080/kernel/v
�
-Adam/conv2d_1080/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1080/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1080/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1080/bias/v

+Adam/conv2d_1080/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1080/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_277/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_277/kernel/v
�
+Adam/dense_277/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_277/kernel/v*
_output_shapes

:@@*
dtype0
�
Adam/dense_277/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_277/bias/v
{
)Adam/dense_277/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_277/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_1081/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1081/kernel/v
�
-Adam/conv2d_1081/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1081/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1081/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1081/bias/v

+Adam/conv2d_1081/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1081/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_1082/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1082/kernel/v
�
-Adam/conv2d_1082/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1082/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1082/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1082/bias/v

+Adam/conv2d_1082/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1082/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_1083/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1083/kernel/v
�
-Adam/conv2d_1083/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1083/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1083/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1083/bias/v

+Adam/conv2d_1083/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1083/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�P
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�O
value�OB�O B�O
�
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
�
aiter

bbeta_1

cbeta_2
	ddecay
elearning_rate%m�&m�/m�0m�=m�>m�Km�Lm�Um�Vm�[m�\m�%v�&v�/v�0v�=v�>v�Kv�Lv�Uv�Vv�[v�\v�
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
�
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
�
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
^\
VARIABLE_VALUEconv2d_1079/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1079/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
�
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
�
umetrics
+	variables
vlayer_regularization_losses
wlayer_metrics

xlayers
ynon_trainable_variables
,trainable_variables
-regularization_losses
^\
VARIABLE_VALUEconv2d_1080/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1080/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01

/0
01
 
�
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
�
metrics
5	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
6trainable_variables
7regularization_losses
 
 
 
�
�metrics
9	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
:trainable_variables
;regularization_losses
\Z
VARIABLE_VALUEdense_277/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_277/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
�
�metrics
?	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
@trainable_variables
Aregularization_losses
 
 
 
�
�metrics
C	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Dtrainable_variables
Eregularization_losses
 
 
 
 
^\
VARIABLE_VALUEconv2d_1081/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1081/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1

K0
L1
 
�
�metrics
M	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Ntrainable_variables
Oregularization_losses
 
 
 
 
^\
VARIABLE_VALUEconv2d_1082/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1082/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
�
�metrics
W	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Xtrainable_variables
Yregularization_losses
^\
VARIABLE_VALUEconv2d_1083/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1083/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1

[0
\1
 
�
�metrics
]	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
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
�0
�1
 
 
�
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

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
�
VARIABLE_VALUEAdam/conv2d_1079/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1079/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1080/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1080/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_277/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_277/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1081/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1081/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1082/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1082/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1083/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1083/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1079/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1079/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1080/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1080/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_277/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_277/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1081/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1081/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1082/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1082/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1083/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1083/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_1079/kernelconv2d_1079/biasconv2d_1080/kernelconv2d_1080/biasdense_277/kerneldense_277/biasconv2d_1081/kernelconv2d_1081/biasconv2d_1082/kernelconv2d_1082/biasconv2d_1083/kernelconv2d_1083/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� */
f*R(
&__inference_signature_wrapper_12733510
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv2d_1079/kernel/Read/ReadVariableOp$conv2d_1079/bias/Read/ReadVariableOp&conv2d_1080/kernel/Read/ReadVariableOp$conv2d_1080/bias/Read/ReadVariableOp$dense_277/kernel/Read/ReadVariableOp"dense_277/bias/Read/ReadVariableOp&conv2d_1081/kernel/Read/ReadVariableOp$conv2d_1081/bias/Read/ReadVariableOp&conv2d_1082/kernel/Read/ReadVariableOp$conv2d_1082/bias/Read/ReadVariableOp&conv2d_1083/kernel/Read/ReadVariableOp$conv2d_1083/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv2d_1079/kernel/m/Read/ReadVariableOp+Adam/conv2d_1079/bias/m/Read/ReadVariableOp-Adam/conv2d_1080/kernel/m/Read/ReadVariableOp+Adam/conv2d_1080/bias/m/Read/ReadVariableOp+Adam/dense_277/kernel/m/Read/ReadVariableOp)Adam/dense_277/bias/m/Read/ReadVariableOp-Adam/conv2d_1081/kernel/m/Read/ReadVariableOp+Adam/conv2d_1081/bias/m/Read/ReadVariableOp-Adam/conv2d_1082/kernel/m/Read/ReadVariableOp+Adam/conv2d_1082/bias/m/Read/ReadVariableOp-Adam/conv2d_1083/kernel/m/Read/ReadVariableOp+Adam/conv2d_1083/bias/m/Read/ReadVariableOp-Adam/conv2d_1079/kernel/v/Read/ReadVariableOp+Adam/conv2d_1079/bias/v/Read/ReadVariableOp-Adam/conv2d_1080/kernel/v/Read/ReadVariableOp+Adam/conv2d_1080/bias/v/Read/ReadVariableOp+Adam/dense_277/kernel/v/Read/ReadVariableOp)Adam/dense_277/bias/v/Read/ReadVariableOp-Adam/conv2d_1081/kernel/v/Read/ReadVariableOp+Adam/conv2d_1081/bias/v/Read/ReadVariableOp-Adam/conv2d_1082/kernel/v/Read/ReadVariableOp+Adam/conv2d_1082/bias/v/Read/ReadVariableOp-Adam/conv2d_1083/kernel/v/Read/ReadVariableOp+Adam/conv2d_1083/bias/v/Read/ReadVariableOpConst*:
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
GPU2*0,1J 8� **
f%R#
!__inference__traced_save_12734136
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_1079/kernelconv2d_1079/biasconv2d_1080/kernelconv2d_1080/biasdense_277/kerneldense_277/biasconv2d_1081/kernelconv2d_1081/biasconv2d_1082/kernelconv2d_1082/biasconv2d_1083/kernelconv2d_1083/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_1079/kernel/mAdam/conv2d_1079/bias/mAdam/conv2d_1080/kernel/mAdam/conv2d_1080/bias/mAdam/dense_277/kernel/mAdam/dense_277/bias/mAdam/conv2d_1081/kernel/mAdam/conv2d_1081/bias/mAdam/conv2d_1082/kernel/mAdam/conv2d_1082/bias/mAdam/conv2d_1083/kernel/mAdam/conv2d_1083/bias/mAdam/conv2d_1079/kernel/vAdam/conv2d_1079/bias/vAdam/conv2d_1080/kernel/vAdam/conv2d_1080/bias/vAdam/dense_277/kernel/vAdam/dense_277/bias/vAdam/conv2d_1081/kernel/vAdam/conv2d_1081/bias/vAdam/conv2d_1082/kernel/vAdam/conv2d_1082/bias/vAdam/conv2d_1083/kernel/vAdam/conv2d_1083/bias/v*9
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
GPU2*0,1J 8� *-
f(R&
$__inference__traced_restore_12734281��
�
�
,__inference_model_277_layer_call_fn_12733766

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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_277_layer_call_and_return_conditional_losses_127332872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_model_277_layer_call_fn_12733343	
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_277_layer_call_and_return_conditional_losses_127332872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
�
.__inference_conv2d_1082_layer_call_fn_12733959

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_127330532
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_12733053

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_model_277_layer_call_fn_12733737

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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_277_layer_call_and_return_conditional_losses_127330762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_dense_277_layer_call_and_return_conditional_losses_12733891

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
,__inference_dense_277_layer_call_fn_12733900

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_277_layer_call_and_return_conditional_losses_127329872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12732960

inputs
identity�
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:���������*
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
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_model_277_layer_call_fn_12733103	
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_277_layer_call_and_return_conditional_losses_127330762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
�
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_12733969

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_12733069

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_12732927

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
$__inference__traced_restore_12734281
file_prefix=
#assignvariableop_conv2d_1079_kernel:1
#assignvariableop_1_conv2d_1079_bias:?
%assignvariableop_2_conv2d_1080_kernel:1
#assignvariableop_3_conv2d_1080_bias:5
#assignvariableop_4_dense_277_kernel:@@/
!assignvariableop_5_dense_277_bias:@?
%assignvariableop_6_conv2d_1081_kernel:1
#assignvariableop_7_conv2d_1081_bias:?
%assignvariableop_8_conv2d_1082_kernel:1
#assignvariableop_9_conv2d_1082_bias:@
&assignvariableop_10_conv2d_1083_kernel:2
$assignvariableop_11_conv2d_1083_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: G
-assignvariableop_21_adam_conv2d_1079_kernel_m:9
+assignvariableop_22_adam_conv2d_1079_bias_m:G
-assignvariableop_23_adam_conv2d_1080_kernel_m:9
+assignvariableop_24_adam_conv2d_1080_bias_m:=
+assignvariableop_25_adam_dense_277_kernel_m:@@7
)assignvariableop_26_adam_dense_277_bias_m:@G
-assignvariableop_27_adam_conv2d_1081_kernel_m:9
+assignvariableop_28_adam_conv2d_1081_bias_m:G
-assignvariableop_29_adam_conv2d_1082_kernel_m:9
+assignvariableop_30_adam_conv2d_1082_bias_m:G
-assignvariableop_31_adam_conv2d_1083_kernel_m:9
+assignvariableop_32_adam_conv2d_1083_bias_m:G
-assignvariableop_33_adam_conv2d_1079_kernel_v:9
+assignvariableop_34_adam_conv2d_1079_bias_v:G
-assignvariableop_35_adam_conv2d_1080_kernel_v:9
+assignvariableop_36_adam_conv2d_1080_bias_v:=
+assignvariableop_37_adam_dense_277_kernel_v:@@7
)assignvariableop_38_adam_dense_277_bias_v:@G
-assignvariableop_39_adam_conv2d_1081_kernel_v:9
+assignvariableop_40_adam_conv2d_1081_bias_v:G
-assignvariableop_41_adam_conv2d_1082_kernel_v:9
+assignvariableop_42_adam_conv2d_1082_bias_v:G
-assignvariableop_43_adam_conv2d_1083_kernel_v:9
+assignvariableop_44_adam_conv2d_1083_bias_v:
identity_46��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*�
value�B�.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp#assignvariableop_conv2d_1079_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv2d_1079_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv2d_1080_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv2d_1080_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_277_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_277_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv2d_1081_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_1081_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_conv2d_1082_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp#assignvariableop_9_conv2d_1082_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_conv2d_1083_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp$assignvariableop_11_conv2d_1083_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_conv2d_1079_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_1079_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adam_conv2d_1080_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_1080_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_277_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_277_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_conv2d_1081_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_1081_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_conv2d_1082_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_1082_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp-assignvariableop_31_adam_conv2d_1083_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_1083_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adam_conv2d_1079_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_1079_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adam_conv2d_1080_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_1080_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_277_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_277_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adam_conv2d_1081_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_conv2d_1081_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_conv2d_1082_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_1082_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp-assignvariableop_43_adam_conv2d_1083_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_conv2d_1083_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45f
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_46�
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
�
�
G__inference_dense_277_layer_call_and_return_conditional_losses_12732987

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_reshape_554_layer_call_and_return_conditional_losses_12732974

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
strided_slice/stack_2�
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
Reshape/shape/1�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
r
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_12732908

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
:���������2
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
:���������2	
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
:���������2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
add/yf
addAddV2mul:z:0add/y:output:0*
T0*/
_output_shapes
:���������2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�
e
I__inference_reshape_555_layer_call_and_return_conditional_losses_12733914

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
strided_slice/stack_2�
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
Reshape/shape/3�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_401_layer_call_fn_12733818

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_127328502
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�]
�
G__inference_model_277_layer_call_and_return_conditional_losses_12733408	
input.
conv2d_1079_12733357:"
conv2d_1079_12733359:.
conv2d_1080_12733363:"
conv2d_1080_12733365:$
dense_277_12733370:@@ 
dense_277_12733372:@.
conv2d_1081_12733384:"
conv2d_1081_12733386:.
conv2d_1082_12733397:"
conv2d_1082_12733399:.
conv2d_1083_12733402:"
conv2d_1083_12733404:
identity��#conv2d_1079/StatefulPartitionedCall�#conv2d_1080/StatefulPartitionedCall�#conv2d_1081/StatefulPartitionedCall�#conv2d_1082/StatefulPartitionedCall�#conv2d_1083/StatefulPartitionedCall�!dense_277/StatefulPartitionedCall�
0tf.__operators__.getitem_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_550/strided_slice/stack�
2tf.__operators__.getitem_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_550/strided_slice/stack_1�
2tf.__operators__.getitem_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_550/strided_slice/stack_2�
*tf.__operators__.getitem_550/strided_sliceStridedSliceinput9tf.__operators__.getitem_550/strided_slice/stack:output:0;tf.__operators__.getitem_550/strided_slice/stack_1:output:0;tf.__operators__.getitem_550/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_550/strided_slice�
$range_conversion_277/PartitionedCallPartitionedCall3tf.__operators__.getitem_550/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_127329082&
$range_conversion_277/PartitionedCall�
0tf.__operators__.getitem_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_551/strided_slice/stack�
2tf.__operators__.getitem_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_551/strided_slice/stack_1�
2tf.__operators__.getitem_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_551/strided_slice/stack_2�
*tf.__operators__.getitem_551/strided_sliceStridedSliceinput9tf.__operators__.getitem_551/strided_slice/stack:output:0;tf.__operators__.getitem_551/strided_slice/stack_1:output:0;tf.__operators__.getitem_551/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_551/strided_slicex
tf.concat_676/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_676/concat/axis�
tf.concat_676/concatConcatV2-range_conversion_277/PartitionedCall:output:03tf.__operators__.getitem_551/strided_slice:output:0"tf.concat_676/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_676/concat�
#conv2d_1079/StatefulPartitionedCallStatefulPartitionedCalltf.concat_676/concat:output:0conv2d_1079_12733357conv2d_1079_12733359*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_127329272%
#conv2d_1079/StatefulPartitionedCall�
%average_pooling2d_401/PartitionedCallPartitionedCall,conv2d_1079/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_127329372'
%average_pooling2d_401/PartitionedCall�
#conv2d_1080/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_401/PartitionedCall:output:0conv2d_1080_12733363conv2d_1080_12733365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_127329502%
#conv2d_1080/StatefulPartitionedCall�
%average_pooling2d_402/PartitionedCallPartitionedCall,conv2d_1080/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_127329602'
%average_pooling2d_402/PartitionedCall�
reshape_554/PartitionedCallPartitionedCall.average_pooling2d_402/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_554_layer_call_and_return_conditional_losses_127329742
reshape_554/PartitionedCall�
!dense_277/StatefulPartitionedCallStatefulPartitionedCall$reshape_554/PartitionedCall:output:0dense_277_12733370dense_277_12733372*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_277_layer_call_and_return_conditional_losses_127329872#
!dense_277/StatefulPartitionedCall�
reshape_555/PartitionedCallPartitionedCall*dense_277/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_555_layer_call_and_return_conditional_losses_127330072
reshape_555/PartitionedCall�
tf.reshape_802/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_802/Reshape/shape�
tf.reshape_802/ReshapeReshape$reshape_555/PartitionedCall:output:0%tf.reshape_802/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_802/Reshape�
tf.tile_401/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_401/Tile/multiples�
tf.tile_401/TileTiletf.reshape_802/Reshape:output:0#tf.tile_401/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_401/Tile�
tf.reshape_803/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_803/Reshape/shape�
tf.reshape_803/ReshapeReshapetf.tile_401/Tile:output:0%tf.reshape_803/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_803/Reshapex
tf.concat_677/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_677/concat/axis�
tf.concat_677/concatConcatV2tf.reshape_803/Reshape:output:0,conv2d_1080/StatefulPartitionedCall:output:0"tf.concat_677/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_677/concat�
#conv2d_1081/StatefulPartitionedCallStatefulPartitionedCalltf.concat_677/concat:output:0conv2d_1081_12733384conv2d_1081_12733386*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_127330282%
#conv2d_1081/StatefulPartitionedCall�
tf.reshape_804/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_804/Reshape/shape�
tf.reshape_804/ReshapeReshape,conv2d_1081/StatefulPartitionedCall:output:0%tf.reshape_804/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_804/Reshape�
tf.tile_402/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_402/Tile/multiples�
tf.tile_402/TileTiletf.reshape_804/Reshape:output:0#tf.tile_402/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_402/Tile�
tf.reshape_805/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_805/Reshape/shape�
tf.reshape_805/ReshapeReshapetf.tile_402/Tile:output:0%tf.reshape_805/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_805/Reshapex
tf.concat_678/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_678/concat/axis�
tf.concat_678/concatConcatV2tf.reshape_805/Reshape:output:0,conv2d_1079/StatefulPartitionedCall:output:0"tf.concat_678/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_678/concat�
#conv2d_1082/StatefulPartitionedCallStatefulPartitionedCalltf.concat_678/concat:output:0conv2d_1082_12733397conv2d_1082_12733399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_127330532%
#conv2d_1082/StatefulPartitionedCall�
#conv2d_1083/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1082/StatefulPartitionedCall:output:0conv2d_1083_12733402conv2d_1083_12733404*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_127330692%
#conv2d_1083/StatefulPartitionedCall�
IdentityIdentity,conv2d_1083/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1079/StatefulPartitionedCall$^conv2d_1080/StatefulPartitionedCall$^conv2d_1081/StatefulPartitionedCall$^conv2d_1082/StatefulPartitionedCall$^conv2d_1083/StatefulPartitionedCall"^dense_277/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2J
#conv2d_1079/StatefulPartitionedCall#conv2d_1079/StatefulPartitionedCall2J
#conv2d_1080/StatefulPartitionedCall#conv2d_1080/StatefulPartitionedCall2J
#conv2d_1081/StatefulPartitionedCall#conv2d_1081/StatefulPartitionedCall2J
#conv2d_1082/StatefulPartitionedCall#conv2d_1082/StatefulPartitionedCall2J
#conv2d_1083/StatefulPartitionedCall#conv2d_1083/StatefulPartitionedCall2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
�
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_12733028

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
J
.__inference_reshape_555_layer_call_fn_12733919

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_555_layer_call_and_return_conditional_losses_127330072
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_reshape_554_layer_call_and_return_conditional_losses_12733875

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
strided_slice/stack_2�
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
Reshape/shape/1�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�]
�
G__inference_model_277_layer_call_and_return_conditional_losses_12733473	
input.
conv2d_1079_12733422:"
conv2d_1079_12733424:.
conv2d_1080_12733428:"
conv2d_1080_12733430:$
dense_277_12733435:@@ 
dense_277_12733437:@.
conv2d_1081_12733449:"
conv2d_1081_12733451:.
conv2d_1082_12733462:"
conv2d_1082_12733464:.
conv2d_1083_12733467:"
conv2d_1083_12733469:
identity��#conv2d_1079/StatefulPartitionedCall�#conv2d_1080/StatefulPartitionedCall�#conv2d_1081/StatefulPartitionedCall�#conv2d_1082/StatefulPartitionedCall�#conv2d_1083/StatefulPartitionedCall�!dense_277/StatefulPartitionedCall�
0tf.__operators__.getitem_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_550/strided_slice/stack�
2tf.__operators__.getitem_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_550/strided_slice/stack_1�
2tf.__operators__.getitem_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_550/strided_slice/stack_2�
*tf.__operators__.getitem_550/strided_sliceStridedSliceinput9tf.__operators__.getitem_550/strided_slice/stack:output:0;tf.__operators__.getitem_550/strided_slice/stack_1:output:0;tf.__operators__.getitem_550/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_550/strided_slice�
$range_conversion_277/PartitionedCallPartitionedCall3tf.__operators__.getitem_550/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_127329082&
$range_conversion_277/PartitionedCall�
0tf.__operators__.getitem_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_551/strided_slice/stack�
2tf.__operators__.getitem_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_551/strided_slice/stack_1�
2tf.__operators__.getitem_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_551/strided_slice/stack_2�
*tf.__operators__.getitem_551/strided_sliceStridedSliceinput9tf.__operators__.getitem_551/strided_slice/stack:output:0;tf.__operators__.getitem_551/strided_slice/stack_1:output:0;tf.__operators__.getitem_551/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_551/strided_slicex
tf.concat_676/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_676/concat/axis�
tf.concat_676/concatConcatV2-range_conversion_277/PartitionedCall:output:03tf.__operators__.getitem_551/strided_slice:output:0"tf.concat_676/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_676/concat�
#conv2d_1079/StatefulPartitionedCallStatefulPartitionedCalltf.concat_676/concat:output:0conv2d_1079_12733422conv2d_1079_12733424*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_127329272%
#conv2d_1079/StatefulPartitionedCall�
%average_pooling2d_401/PartitionedCallPartitionedCall,conv2d_1079/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_127329372'
%average_pooling2d_401/PartitionedCall�
#conv2d_1080/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_401/PartitionedCall:output:0conv2d_1080_12733428conv2d_1080_12733430*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_127329502%
#conv2d_1080/StatefulPartitionedCall�
%average_pooling2d_402/PartitionedCallPartitionedCall,conv2d_1080/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_127329602'
%average_pooling2d_402/PartitionedCall�
reshape_554/PartitionedCallPartitionedCall.average_pooling2d_402/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_554_layer_call_and_return_conditional_losses_127329742
reshape_554/PartitionedCall�
!dense_277/StatefulPartitionedCallStatefulPartitionedCall$reshape_554/PartitionedCall:output:0dense_277_12733435dense_277_12733437*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_277_layer_call_and_return_conditional_losses_127329872#
!dense_277/StatefulPartitionedCall�
reshape_555/PartitionedCallPartitionedCall*dense_277/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_555_layer_call_and_return_conditional_losses_127330072
reshape_555/PartitionedCall�
tf.reshape_802/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_802/Reshape/shape�
tf.reshape_802/ReshapeReshape$reshape_555/PartitionedCall:output:0%tf.reshape_802/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_802/Reshape�
tf.tile_401/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_401/Tile/multiples�
tf.tile_401/TileTiletf.reshape_802/Reshape:output:0#tf.tile_401/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_401/Tile�
tf.reshape_803/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_803/Reshape/shape�
tf.reshape_803/ReshapeReshapetf.tile_401/Tile:output:0%tf.reshape_803/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_803/Reshapex
tf.concat_677/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_677/concat/axis�
tf.concat_677/concatConcatV2tf.reshape_803/Reshape:output:0,conv2d_1080/StatefulPartitionedCall:output:0"tf.concat_677/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_677/concat�
#conv2d_1081/StatefulPartitionedCallStatefulPartitionedCalltf.concat_677/concat:output:0conv2d_1081_12733449conv2d_1081_12733451*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_127330282%
#conv2d_1081/StatefulPartitionedCall�
tf.reshape_804/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_804/Reshape/shape�
tf.reshape_804/ReshapeReshape,conv2d_1081/StatefulPartitionedCall:output:0%tf.reshape_804/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_804/Reshape�
tf.tile_402/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_402/Tile/multiples�
tf.tile_402/TileTiletf.reshape_804/Reshape:output:0#tf.tile_402/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_402/Tile�
tf.reshape_805/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_805/Reshape/shape�
tf.reshape_805/ReshapeReshapetf.tile_402/Tile:output:0%tf.reshape_805/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_805/Reshapex
tf.concat_678/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_678/concat/axis�
tf.concat_678/concatConcatV2tf.reshape_805/Reshape:output:0,conv2d_1079/StatefulPartitionedCall:output:0"tf.concat_678/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_678/concat�
#conv2d_1082/StatefulPartitionedCallStatefulPartitionedCalltf.concat_678/concat:output:0conv2d_1082_12733462conv2d_1082_12733464*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_127330532%
#conv2d_1082/StatefulPartitionedCall�
#conv2d_1083/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1082/StatefulPartitionedCall:output:0conv2d_1083_12733467conv2d_1083_12733469*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_127330692%
#conv2d_1083/StatefulPartitionedCall�
IdentityIdentity,conv2d_1083/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1079/StatefulPartitionedCall$^conv2d_1080/StatefulPartitionedCall$^conv2d_1081/StatefulPartitionedCall$^conv2d_1082/StatefulPartitionedCall$^conv2d_1083/StatefulPartitionedCall"^dense_277/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2J
#conv2d_1079/StatefulPartitionedCall#conv2d_1079/StatefulPartitionedCall2J
#conv2d_1080/StatefulPartitionedCall#conv2d_1080/StatefulPartitionedCall2J
#conv2d_1081/StatefulPartitionedCall#conv2d_1081/StatefulPartitionedCall2J
#conv2d_1082/StatefulPartitionedCall#conv2d_1082/StatefulPartitionedCall2J
#conv2d_1083/StatefulPartitionedCall#conv2d_1083/StatefulPartitionedCall2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
�
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_12733794

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
J
.__inference_reshape_554_layer_call_fn_12733880

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_554_layer_call_and_return_conditional_losses_127329742
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_12733930

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�`
�
!__inference__traced_save_12734136
file_prefix1
-savev2_conv2d_1079_kernel_read_readvariableop/
+savev2_conv2d_1079_bias_read_readvariableop1
-savev2_conv2d_1080_kernel_read_readvariableop/
+savev2_conv2d_1080_bias_read_readvariableop/
+savev2_dense_277_kernel_read_readvariableop-
)savev2_dense_277_bias_read_readvariableop1
-savev2_conv2d_1081_kernel_read_readvariableop/
+savev2_conv2d_1081_bias_read_readvariableop1
-savev2_conv2d_1082_kernel_read_readvariableop/
+savev2_conv2d_1082_bias_read_readvariableop1
-savev2_conv2d_1083_kernel_read_readvariableop/
+savev2_conv2d_1083_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv2d_1079_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1079_bias_m_read_readvariableop8
4savev2_adam_conv2d_1080_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1080_bias_m_read_readvariableop6
2savev2_adam_dense_277_kernel_m_read_readvariableop4
0savev2_adam_dense_277_bias_m_read_readvariableop8
4savev2_adam_conv2d_1081_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1081_bias_m_read_readvariableop8
4savev2_adam_conv2d_1082_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1082_bias_m_read_readvariableop8
4savev2_adam_conv2d_1083_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1083_bias_m_read_readvariableop8
4savev2_adam_conv2d_1079_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1079_bias_v_read_readvariableop8
4savev2_adam_conv2d_1080_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1080_bias_v_read_readvariableop6
2savev2_adam_dense_277_kernel_v_read_readvariableop4
0savev2_adam_dense_277_bias_v_read_readvariableop8
4savev2_adam_conv2d_1081_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1081_bias_v_read_readvariableop8
4savev2_adam_conv2d_1082_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1082_bias_v_read_readvariableop8
4savev2_adam_conv2d_1083_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1083_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*�
value�B�.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv2d_1079_kernel_read_readvariableop+savev2_conv2d_1079_bias_read_readvariableop-savev2_conv2d_1080_kernel_read_readvariableop+savev2_conv2d_1080_bias_read_readvariableop+savev2_dense_277_kernel_read_readvariableop)savev2_dense_277_bias_read_readvariableop-savev2_conv2d_1081_kernel_read_readvariableop+savev2_conv2d_1081_bias_read_readvariableop-savev2_conv2d_1082_kernel_read_readvariableop+savev2_conv2d_1082_bias_read_readvariableop-savev2_conv2d_1083_kernel_read_readvariableop+savev2_conv2d_1083_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv2d_1079_kernel_m_read_readvariableop2savev2_adam_conv2d_1079_bias_m_read_readvariableop4savev2_adam_conv2d_1080_kernel_m_read_readvariableop2savev2_adam_conv2d_1080_bias_m_read_readvariableop2savev2_adam_dense_277_kernel_m_read_readvariableop0savev2_adam_dense_277_bias_m_read_readvariableop4savev2_adam_conv2d_1081_kernel_m_read_readvariableop2savev2_adam_conv2d_1081_bias_m_read_readvariableop4savev2_adam_conv2d_1082_kernel_m_read_readvariableop2savev2_adam_conv2d_1082_bias_m_read_readvariableop4savev2_adam_conv2d_1083_kernel_m_read_readvariableop2savev2_adam_conv2d_1083_bias_m_read_readvariableop4savev2_adam_conv2d_1079_kernel_v_read_readvariableop2savev2_adam_conv2d_1079_bias_v_read_readvariableop4savev2_adam_conv2d_1080_kernel_v_read_readvariableop2savev2_adam_conv2d_1080_bias_v_read_readvariableop2savev2_adam_dense_277_kernel_v_read_readvariableop0savev2_adam_dense_277_bias_v_read_readvariableop4savev2_adam_conv2d_1081_kernel_v_read_readvariableop2savev2_adam_conv2d_1081_bias_v_read_readvariableop4savev2_adam_conv2d_1082_kernel_v_read_readvariableop2savev2_adam_conv2d_1082_bias_v_read_readvariableop4savev2_adam_conv2d_1083_kernel_v_read_readvariableop2savev2_adam_conv2d_1083_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::@@:@::::::: : : : : : : : : :::::@@:@:::::::::::@@:@::::::: 2(
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
�
o
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12733853

inputs
identity�
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:���������*
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
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_12733950

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
W
7__inference_range_conversion_277_layer_call_fn_12733783

parameters
identity�
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_127329082
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�
o
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12732937

inputs
identity�
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:���������*
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
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12732850

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPool�
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
r
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_12733778

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
:���������2
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
:���������2	
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
:���������2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
add/yf
addAddV2mul:z:0add/y:output:0*
T0*/
_output_shapes
:���������2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�
�
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_12733834

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_conv2d_1080_layer_call_fn_12733843

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_127329502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_conv2d_1081_layer_call_fn_12733939

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_127330282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12733808

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPool�
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
#__inference__wrapped_model_12732841	
inputN
4model_277_conv2d_1079_conv2d_readvariableop_resource:C
5model_277_conv2d_1079_biasadd_readvariableop_resource:N
4model_277_conv2d_1080_conv2d_readvariableop_resource:C
5model_277_conv2d_1080_biasadd_readvariableop_resource:D
2model_277_dense_277_matmul_readvariableop_resource:@@A
3model_277_dense_277_biasadd_readvariableop_resource:@N
4model_277_conv2d_1081_conv2d_readvariableop_resource:C
5model_277_conv2d_1081_biasadd_readvariableop_resource:N
4model_277_conv2d_1082_conv2d_readvariableop_resource:C
5model_277_conv2d_1082_biasadd_readvariableop_resource:N
4model_277_conv2d_1083_conv2d_readvariableop_resource:C
5model_277_conv2d_1083_biasadd_readvariableop_resource:
identity��,model_277/conv2d_1079/BiasAdd/ReadVariableOp�+model_277/conv2d_1079/Conv2D/ReadVariableOp�,model_277/conv2d_1080/BiasAdd/ReadVariableOp�+model_277/conv2d_1080/Conv2D/ReadVariableOp�,model_277/conv2d_1081/BiasAdd/ReadVariableOp�+model_277/conv2d_1081/Conv2D/ReadVariableOp�,model_277/conv2d_1082/BiasAdd/ReadVariableOp�+model_277/conv2d_1082/Conv2D/ReadVariableOp�,model_277/conv2d_1083/BiasAdd/ReadVariableOp�+model_277/conv2d_1083/Conv2D/ReadVariableOp�*model_277/dense_277/BiasAdd/ReadVariableOp�)model_277/dense_277/MatMul/ReadVariableOp�
:model_277/tf.__operators__.getitem_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_277/tf.__operators__.getitem_550/strided_slice/stack�
<model_277/tf.__operators__.getitem_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_277/tf.__operators__.getitem_550/strided_slice/stack_1�
<model_277/tf.__operators__.getitem_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_277/tf.__operators__.getitem_550/strided_slice/stack_2�
4model_277/tf.__operators__.getitem_550/strided_sliceStridedSliceinputCmodel_277/tf.__operators__.getitem_550/strided_slice/stack:output:0Emodel_277/tf.__operators__.getitem_550/strided_slice/stack_1:output:0Emodel_277/tf.__operators__.getitem_550/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask26
4model_277/tf.__operators__.getitem_550/strided_slice�
$model_277/range_conversion_277/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_277/range_conversion_277/sub/y�
"model_277/range_conversion_277/subSub=model_277/tf.__operators__.getitem_550/strided_slice:output:0-model_277/range_conversion_277/sub/y:output:0*
T0*/
_output_shapes
:���������2$
"model_277/range_conversion_277/sub�
(model_277/range_conversion_277/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_277/range_conversion_277/truediv/y�
&model_277/range_conversion_277/truedivRealDiv&model_277/range_conversion_277/sub:z:01model_277/range_conversion_277/truediv/y:output:0*
T0*/
_output_shapes
:���������2(
&model_277/range_conversion_277/truediv�
$model_277/range_conversion_277/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_277/range_conversion_277/mul/y�
"model_277/range_conversion_277/mulMul*model_277/range_conversion_277/truediv:z:0-model_277/range_conversion_277/mul/y:output:0*
T0*/
_output_shapes
:���������2$
"model_277/range_conversion_277/mul�
$model_277/range_conversion_277/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2&
$model_277/range_conversion_277/add/y�
"model_277/range_conversion_277/addAddV2&model_277/range_conversion_277/mul:z:0-model_277/range_conversion_277/add/y:output:0*
T0*/
_output_shapes
:���������2$
"model_277/range_conversion_277/add�
:model_277/tf.__operators__.getitem_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_277/tf.__operators__.getitem_551/strided_slice/stack�
<model_277/tf.__operators__.getitem_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_277/tf.__operators__.getitem_551/strided_slice/stack_1�
<model_277/tf.__operators__.getitem_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_277/tf.__operators__.getitem_551/strided_slice/stack_2�
4model_277/tf.__operators__.getitem_551/strided_sliceStridedSliceinputCmodel_277/tf.__operators__.getitem_551/strided_slice/stack:output:0Emodel_277/tf.__operators__.getitem_551/strided_slice/stack_1:output:0Emodel_277/tf.__operators__.getitem_551/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask26
4model_277/tf.__operators__.getitem_551/strided_slice�
#model_277/tf.concat_676/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_277/tf.concat_676/concat/axis�
model_277/tf.concat_676/concatConcatV2&model_277/range_conversion_277/add:z:0=model_277/tf.__operators__.getitem_551/strided_slice:output:0,model_277/tf.concat_676/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_277/tf.concat_676/concat�
+model_277/conv2d_1079/Conv2D/ReadVariableOpReadVariableOp4model_277_conv2d_1079_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_277/conv2d_1079/Conv2D/ReadVariableOp�
model_277/conv2d_1079/Conv2DConv2D'model_277/tf.concat_676/concat:output:03model_277/conv2d_1079/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_277/conv2d_1079/Conv2D�
,model_277/conv2d_1079/BiasAdd/ReadVariableOpReadVariableOp5model_277_conv2d_1079_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_277/conv2d_1079/BiasAdd/ReadVariableOp�
model_277/conv2d_1079/BiasAddBiasAdd%model_277/conv2d_1079/Conv2D:output:04model_277/conv2d_1079/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_277/conv2d_1079/BiasAdd�
model_277/conv2d_1079/SoftplusSoftplus&model_277/conv2d_1079/BiasAdd:output:0*
T0*/
_output_shapes
:���������2 
model_277/conv2d_1079/Softplus�
'model_277/average_pooling2d_401/AvgPoolAvgPool,model_277/conv2d_1079/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_277/average_pooling2d_401/AvgPool�
+model_277/conv2d_1080/Conv2D/ReadVariableOpReadVariableOp4model_277_conv2d_1080_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_277/conv2d_1080/Conv2D/ReadVariableOp�
model_277/conv2d_1080/Conv2DConv2D0model_277/average_pooling2d_401/AvgPool:output:03model_277/conv2d_1080/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_277/conv2d_1080/Conv2D�
,model_277/conv2d_1080/BiasAdd/ReadVariableOpReadVariableOp5model_277_conv2d_1080_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_277/conv2d_1080/BiasAdd/ReadVariableOp�
model_277/conv2d_1080/BiasAddBiasAdd%model_277/conv2d_1080/Conv2D:output:04model_277/conv2d_1080/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_277/conv2d_1080/BiasAdd�
model_277/conv2d_1080/SoftplusSoftplus&model_277/conv2d_1080/BiasAdd:output:0*
T0*/
_output_shapes
:���������2 
model_277/conv2d_1080/Softplus�
'model_277/average_pooling2d_402/AvgPoolAvgPool,model_277/conv2d_1080/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_277/average_pooling2d_402/AvgPool�
model_277/reshape_554/ShapeShape0model_277/average_pooling2d_402/AvgPool:output:0*
T0*
_output_shapes
:2
model_277/reshape_554/Shape�
)model_277/reshape_554/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_277/reshape_554/strided_slice/stack�
+model_277/reshape_554/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_277/reshape_554/strided_slice/stack_1�
+model_277/reshape_554/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_277/reshape_554/strided_slice/stack_2�
#model_277/reshape_554/strided_sliceStridedSlice$model_277/reshape_554/Shape:output:02model_277/reshape_554/strided_slice/stack:output:04model_277/reshape_554/strided_slice/stack_1:output:04model_277/reshape_554/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_277/reshape_554/strided_slice�
%model_277/reshape_554/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_277/reshape_554/Reshape/shape/1�
#model_277/reshape_554/Reshape/shapePack,model_277/reshape_554/strided_slice:output:0.model_277/reshape_554/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_277/reshape_554/Reshape/shape�
model_277/reshape_554/ReshapeReshape0model_277/average_pooling2d_402/AvgPool:output:0,model_277/reshape_554/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_277/reshape_554/Reshape�
)model_277/dense_277/MatMul/ReadVariableOpReadVariableOp2model_277_dense_277_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_277/dense_277/MatMul/ReadVariableOp�
model_277/dense_277/MatMulMatMul&model_277/reshape_554/Reshape:output:01model_277/dense_277/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_277/dense_277/MatMul�
*model_277/dense_277/BiasAdd/ReadVariableOpReadVariableOp3model_277_dense_277_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_277/dense_277/BiasAdd/ReadVariableOp�
model_277/dense_277/BiasAddBiasAdd$model_277/dense_277/MatMul:product:02model_277/dense_277/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_277/dense_277/BiasAdd�
model_277/dense_277/SoftplusSoftplus$model_277/dense_277/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_277/dense_277/Softplus�
model_277/reshape_555/ShapeShape*model_277/dense_277/Softplus:activations:0*
T0*
_output_shapes
:2
model_277/reshape_555/Shape�
)model_277/reshape_555/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_277/reshape_555/strided_slice/stack�
+model_277/reshape_555/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_277/reshape_555/strided_slice/stack_1�
+model_277/reshape_555/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_277/reshape_555/strided_slice/stack_2�
#model_277/reshape_555/strided_sliceStridedSlice$model_277/reshape_555/Shape:output:02model_277/reshape_555/strided_slice/stack:output:04model_277/reshape_555/strided_slice/stack_1:output:04model_277/reshape_555/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_277/reshape_555/strided_slice�
%model_277/reshape_555/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_277/reshape_555/Reshape/shape/1�
%model_277/reshape_555/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_277/reshape_555/Reshape/shape/2�
%model_277/reshape_555/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_277/reshape_555/Reshape/shape/3�
#model_277/reshape_555/Reshape/shapePack,model_277/reshape_555/strided_slice:output:0.model_277/reshape_555/Reshape/shape/1:output:0.model_277/reshape_555/Reshape/shape/2:output:0.model_277/reshape_555/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_277/reshape_555/Reshape/shape�
model_277/reshape_555/ReshapeReshape*model_277/dense_277/Softplus:activations:0,model_277/reshape_555/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
model_277/reshape_555/Reshape�
&model_277/tf.reshape_802/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2(
&model_277/tf.reshape_802/Reshape/shape�
 model_277/tf.reshape_802/ReshapeReshape&model_277/reshape_555/Reshape:output:0/model_277/tf.reshape_802/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2"
 model_277/tf.reshape_802/Reshape�
$model_277/tf.tile_401/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_277/tf.tile_401/Tile/multiples�
model_277/tf.tile_401/TileTile)model_277/tf.reshape_802/Reshape:output:0-model_277/tf.tile_401/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
model_277/tf.tile_401/Tile�
&model_277/tf.reshape_803/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2(
&model_277/tf.reshape_803/Reshape/shape�
 model_277/tf.reshape_803/ReshapeReshape#model_277/tf.tile_401/Tile:output:0/model_277/tf.reshape_803/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2"
 model_277/tf.reshape_803/Reshape�
#model_277/tf.concat_677/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_277/tf.concat_677/concat/axis�
model_277/tf.concat_677/concatConcatV2)model_277/tf.reshape_803/Reshape:output:0,model_277/conv2d_1080/Softplus:activations:0,model_277/tf.concat_677/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_277/tf.concat_677/concat�
+model_277/conv2d_1081/Conv2D/ReadVariableOpReadVariableOp4model_277_conv2d_1081_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_277/conv2d_1081/Conv2D/ReadVariableOp�
model_277/conv2d_1081/Conv2DConv2D'model_277/tf.concat_677/concat:output:03model_277/conv2d_1081/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_277/conv2d_1081/Conv2D�
,model_277/conv2d_1081/BiasAdd/ReadVariableOpReadVariableOp5model_277_conv2d_1081_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_277/conv2d_1081/BiasAdd/ReadVariableOp�
model_277/conv2d_1081/BiasAddBiasAdd%model_277/conv2d_1081/Conv2D:output:04model_277/conv2d_1081/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_277/conv2d_1081/BiasAdd�
model_277/conv2d_1081/SoftplusSoftplus&model_277/conv2d_1081/BiasAdd:output:0*
T0*/
_output_shapes
:���������2 
model_277/conv2d_1081/Softplus�
&model_277/tf.reshape_804/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2(
&model_277/tf.reshape_804/Reshape/shape�
 model_277/tf.reshape_804/ReshapeReshape,model_277/conv2d_1081/Softplus:activations:0/model_277/tf.reshape_804/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2"
 model_277/tf.reshape_804/Reshape�
$model_277/tf.tile_402/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_277/tf.tile_402/Tile/multiples�
model_277/tf.tile_402/TileTile)model_277/tf.reshape_804/Reshape:output:0-model_277/tf.tile_402/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
model_277/tf.tile_402/Tile�
&model_277/tf.reshape_805/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2(
&model_277/tf.reshape_805/Reshape/shape�
 model_277/tf.reshape_805/ReshapeReshape#model_277/tf.tile_402/Tile:output:0/model_277/tf.reshape_805/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2"
 model_277/tf.reshape_805/Reshape�
#model_277/tf.concat_678/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_277/tf.concat_678/concat/axis�
model_277/tf.concat_678/concatConcatV2)model_277/tf.reshape_805/Reshape:output:0,model_277/conv2d_1079/Softplus:activations:0,model_277/tf.concat_678/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_277/tf.concat_678/concat�
+model_277/conv2d_1082/Conv2D/ReadVariableOpReadVariableOp4model_277_conv2d_1082_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_277/conv2d_1082/Conv2D/ReadVariableOp�
model_277/conv2d_1082/Conv2DConv2D'model_277/tf.concat_678/concat:output:03model_277/conv2d_1082/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_277/conv2d_1082/Conv2D�
,model_277/conv2d_1082/BiasAdd/ReadVariableOpReadVariableOp5model_277_conv2d_1082_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_277/conv2d_1082/BiasAdd/ReadVariableOp�
model_277/conv2d_1082/BiasAddBiasAdd%model_277/conv2d_1082/Conv2D:output:04model_277/conv2d_1082/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_277/conv2d_1082/BiasAdd�
model_277/conv2d_1082/SoftplusSoftplus&model_277/conv2d_1082/BiasAdd:output:0*
T0*/
_output_shapes
:���������2 
model_277/conv2d_1082/Softplus�
+model_277/conv2d_1083/Conv2D/ReadVariableOpReadVariableOp4model_277_conv2d_1083_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_277/conv2d_1083/Conv2D/ReadVariableOp�
model_277/conv2d_1083/Conv2DConv2D,model_277/conv2d_1082/Softplus:activations:03model_277/conv2d_1083/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_277/conv2d_1083/Conv2D�
,model_277/conv2d_1083/BiasAdd/ReadVariableOpReadVariableOp5model_277_conv2d_1083_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_277/conv2d_1083/BiasAdd/ReadVariableOp�
model_277/conv2d_1083/BiasAddBiasAdd%model_277/conv2d_1083/Conv2D:output:04model_277/conv2d_1083/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_277/conv2d_1083/BiasAdd�
IdentityIdentity&model_277/conv2d_1083/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp-^model_277/conv2d_1079/BiasAdd/ReadVariableOp,^model_277/conv2d_1079/Conv2D/ReadVariableOp-^model_277/conv2d_1080/BiasAdd/ReadVariableOp,^model_277/conv2d_1080/Conv2D/ReadVariableOp-^model_277/conv2d_1081/BiasAdd/ReadVariableOp,^model_277/conv2d_1081/Conv2D/ReadVariableOp-^model_277/conv2d_1082/BiasAdd/ReadVariableOp,^model_277/conv2d_1082/Conv2D/ReadVariableOp-^model_277/conv2d_1083/BiasAdd/ReadVariableOp,^model_277/conv2d_1083/Conv2D/ReadVariableOp+^model_277/dense_277/BiasAdd/ReadVariableOp*^model_277/dense_277/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2\
,model_277/conv2d_1079/BiasAdd/ReadVariableOp,model_277/conv2d_1079/BiasAdd/ReadVariableOp2Z
+model_277/conv2d_1079/Conv2D/ReadVariableOp+model_277/conv2d_1079/Conv2D/ReadVariableOp2\
,model_277/conv2d_1080/BiasAdd/ReadVariableOp,model_277/conv2d_1080/BiasAdd/ReadVariableOp2Z
+model_277/conv2d_1080/Conv2D/ReadVariableOp+model_277/conv2d_1080/Conv2D/ReadVariableOp2\
,model_277/conv2d_1081/BiasAdd/ReadVariableOp,model_277/conv2d_1081/BiasAdd/ReadVariableOp2Z
+model_277/conv2d_1081/Conv2D/ReadVariableOp+model_277/conv2d_1081/Conv2D/ReadVariableOp2\
,model_277/conv2d_1082/BiasAdd/ReadVariableOp,model_277/conv2d_1082/BiasAdd/ReadVariableOp2Z
+model_277/conv2d_1082/Conv2D/ReadVariableOp+model_277/conv2d_1082/Conv2D/ReadVariableOp2\
,model_277/conv2d_1083/BiasAdd/ReadVariableOp,model_277/conv2d_1083/BiasAdd/ReadVariableOp2Z
+model_277/conv2d_1083/Conv2D/ReadVariableOp+model_277/conv2d_1083/Conv2D/ReadVariableOp2X
*model_277/dense_277/BiasAdd/ReadVariableOp*model_277/dense_277/BiasAdd/ReadVariableOp2V
)model_277/dense_277/MatMul/ReadVariableOp)model_277/dense_277/MatMul/ReadVariableOp:V R
/
_output_shapes
:���������

_user_specified_nameinput
�]
�
G__inference_model_277_layer_call_and_return_conditional_losses_12733287

inputs.
conv2d_1079_12733236:"
conv2d_1079_12733238:.
conv2d_1080_12733242:"
conv2d_1080_12733244:$
dense_277_12733249:@@ 
dense_277_12733251:@.
conv2d_1081_12733263:"
conv2d_1081_12733265:.
conv2d_1082_12733276:"
conv2d_1082_12733278:.
conv2d_1083_12733281:"
conv2d_1083_12733283:
identity��#conv2d_1079/StatefulPartitionedCall�#conv2d_1080/StatefulPartitionedCall�#conv2d_1081/StatefulPartitionedCall�#conv2d_1082/StatefulPartitionedCall�#conv2d_1083/StatefulPartitionedCall�!dense_277/StatefulPartitionedCall�
0tf.__operators__.getitem_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_550/strided_slice/stack�
2tf.__operators__.getitem_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_550/strided_slice/stack_1�
2tf.__operators__.getitem_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_550/strided_slice/stack_2�
*tf.__operators__.getitem_550/strided_sliceStridedSliceinputs9tf.__operators__.getitem_550/strided_slice/stack:output:0;tf.__operators__.getitem_550/strided_slice/stack_1:output:0;tf.__operators__.getitem_550/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_550/strided_slice�
$range_conversion_277/PartitionedCallPartitionedCall3tf.__operators__.getitem_550/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_127329082&
$range_conversion_277/PartitionedCall�
0tf.__operators__.getitem_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_551/strided_slice/stack�
2tf.__operators__.getitem_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_551/strided_slice/stack_1�
2tf.__operators__.getitem_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_551/strided_slice/stack_2�
*tf.__operators__.getitem_551/strided_sliceStridedSliceinputs9tf.__operators__.getitem_551/strided_slice/stack:output:0;tf.__operators__.getitem_551/strided_slice/stack_1:output:0;tf.__operators__.getitem_551/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_551/strided_slicex
tf.concat_676/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_676/concat/axis�
tf.concat_676/concatConcatV2-range_conversion_277/PartitionedCall:output:03tf.__operators__.getitem_551/strided_slice:output:0"tf.concat_676/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_676/concat�
#conv2d_1079/StatefulPartitionedCallStatefulPartitionedCalltf.concat_676/concat:output:0conv2d_1079_12733236conv2d_1079_12733238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_127329272%
#conv2d_1079/StatefulPartitionedCall�
%average_pooling2d_401/PartitionedCallPartitionedCall,conv2d_1079/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_127329372'
%average_pooling2d_401/PartitionedCall�
#conv2d_1080/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_401/PartitionedCall:output:0conv2d_1080_12733242conv2d_1080_12733244*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_127329502%
#conv2d_1080/StatefulPartitionedCall�
%average_pooling2d_402/PartitionedCallPartitionedCall,conv2d_1080/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_127329602'
%average_pooling2d_402/PartitionedCall�
reshape_554/PartitionedCallPartitionedCall.average_pooling2d_402/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_554_layer_call_and_return_conditional_losses_127329742
reshape_554/PartitionedCall�
!dense_277/StatefulPartitionedCallStatefulPartitionedCall$reshape_554/PartitionedCall:output:0dense_277_12733249dense_277_12733251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_277_layer_call_and_return_conditional_losses_127329872#
!dense_277/StatefulPartitionedCall�
reshape_555/PartitionedCallPartitionedCall*dense_277/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_555_layer_call_and_return_conditional_losses_127330072
reshape_555/PartitionedCall�
tf.reshape_802/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_802/Reshape/shape�
tf.reshape_802/ReshapeReshape$reshape_555/PartitionedCall:output:0%tf.reshape_802/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_802/Reshape�
tf.tile_401/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_401/Tile/multiples�
tf.tile_401/TileTiletf.reshape_802/Reshape:output:0#tf.tile_401/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_401/Tile�
tf.reshape_803/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_803/Reshape/shape�
tf.reshape_803/ReshapeReshapetf.tile_401/Tile:output:0%tf.reshape_803/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_803/Reshapex
tf.concat_677/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_677/concat/axis�
tf.concat_677/concatConcatV2tf.reshape_803/Reshape:output:0,conv2d_1080/StatefulPartitionedCall:output:0"tf.concat_677/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_677/concat�
#conv2d_1081/StatefulPartitionedCallStatefulPartitionedCalltf.concat_677/concat:output:0conv2d_1081_12733263conv2d_1081_12733265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_127330282%
#conv2d_1081/StatefulPartitionedCall�
tf.reshape_804/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_804/Reshape/shape�
tf.reshape_804/ReshapeReshape,conv2d_1081/StatefulPartitionedCall:output:0%tf.reshape_804/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_804/Reshape�
tf.tile_402/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_402/Tile/multiples�
tf.tile_402/TileTiletf.reshape_804/Reshape:output:0#tf.tile_402/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_402/Tile�
tf.reshape_805/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_805/Reshape/shape�
tf.reshape_805/ReshapeReshapetf.tile_402/Tile:output:0%tf.reshape_805/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_805/Reshapex
tf.concat_678/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_678/concat/axis�
tf.concat_678/concatConcatV2tf.reshape_805/Reshape:output:0,conv2d_1079/StatefulPartitionedCall:output:0"tf.concat_678/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_678/concat�
#conv2d_1082/StatefulPartitionedCallStatefulPartitionedCalltf.concat_678/concat:output:0conv2d_1082_12733276conv2d_1082_12733278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_127330532%
#conv2d_1082/StatefulPartitionedCall�
#conv2d_1083/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1082/StatefulPartitionedCall:output:0conv2d_1083_12733281conv2d_1083_12733283*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_127330692%
#conv2d_1083/StatefulPartitionedCall�
IdentityIdentity,conv2d_1083/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1079/StatefulPartitionedCall$^conv2d_1080/StatefulPartitionedCall$^conv2d_1081/StatefulPartitionedCall$^conv2d_1082/StatefulPartitionedCall$^conv2d_1083/StatefulPartitionedCall"^dense_277/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2J
#conv2d_1079/StatefulPartitionedCall#conv2d_1079/StatefulPartitionedCall2J
#conv2d_1080/StatefulPartitionedCall#conv2d_1080/StatefulPartitionedCall2J
#conv2d_1081/StatefulPartitionedCall#conv2d_1081/StatefulPartitionedCall2J
#conv2d_1082/StatefulPartitionedCall#conv2d_1082/StatefulPartitionedCall2J
#conv2d_1083/StatefulPartitionedCall#conv2d_1083/StatefulPartitionedCall2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_conv2d_1083_layer_call_fn_12733978

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_127330692
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_12732950

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_402_layer_call_fn_12733858

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_127328722
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�]
�
G__inference_model_277_layer_call_and_return_conditional_losses_12733076

inputs.
conv2d_1079_12732928:"
conv2d_1079_12732930:.
conv2d_1080_12732951:"
conv2d_1080_12732953:$
dense_277_12732988:@@ 
dense_277_12732990:@.
conv2d_1081_12733029:"
conv2d_1081_12733031:.
conv2d_1082_12733054:"
conv2d_1082_12733056:.
conv2d_1083_12733070:"
conv2d_1083_12733072:
identity��#conv2d_1079/StatefulPartitionedCall�#conv2d_1080/StatefulPartitionedCall�#conv2d_1081/StatefulPartitionedCall�#conv2d_1082/StatefulPartitionedCall�#conv2d_1083/StatefulPartitionedCall�!dense_277/StatefulPartitionedCall�
0tf.__operators__.getitem_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_550/strided_slice/stack�
2tf.__operators__.getitem_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_550/strided_slice/stack_1�
2tf.__operators__.getitem_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_550/strided_slice/stack_2�
*tf.__operators__.getitem_550/strided_sliceStridedSliceinputs9tf.__operators__.getitem_550/strided_slice/stack:output:0;tf.__operators__.getitem_550/strided_slice/stack_1:output:0;tf.__operators__.getitem_550/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_550/strided_slice�
$range_conversion_277/PartitionedCallPartitionedCall3tf.__operators__.getitem_550/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_127329082&
$range_conversion_277/PartitionedCall�
0tf.__operators__.getitem_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_551/strided_slice/stack�
2tf.__operators__.getitem_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_551/strided_slice/stack_1�
2tf.__operators__.getitem_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_551/strided_slice/stack_2�
*tf.__operators__.getitem_551/strided_sliceStridedSliceinputs9tf.__operators__.getitem_551/strided_slice/stack:output:0;tf.__operators__.getitem_551/strided_slice/stack_1:output:0;tf.__operators__.getitem_551/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_551/strided_slicex
tf.concat_676/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_676/concat/axis�
tf.concat_676/concatConcatV2-range_conversion_277/PartitionedCall:output:03tf.__operators__.getitem_551/strided_slice:output:0"tf.concat_676/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_676/concat�
#conv2d_1079/StatefulPartitionedCallStatefulPartitionedCalltf.concat_676/concat:output:0conv2d_1079_12732928conv2d_1079_12732930*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_127329272%
#conv2d_1079/StatefulPartitionedCall�
%average_pooling2d_401/PartitionedCallPartitionedCall,conv2d_1079/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_127329372'
%average_pooling2d_401/PartitionedCall�
#conv2d_1080/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_401/PartitionedCall:output:0conv2d_1080_12732951conv2d_1080_12732953*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_127329502%
#conv2d_1080/StatefulPartitionedCall�
%average_pooling2d_402/PartitionedCallPartitionedCall,conv2d_1080/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_127329602'
%average_pooling2d_402/PartitionedCall�
reshape_554/PartitionedCallPartitionedCall.average_pooling2d_402/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_554_layer_call_and_return_conditional_losses_127329742
reshape_554/PartitionedCall�
!dense_277/StatefulPartitionedCallStatefulPartitionedCall$reshape_554/PartitionedCall:output:0dense_277_12732988dense_277_12732990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_277_layer_call_and_return_conditional_losses_127329872#
!dense_277/StatefulPartitionedCall�
reshape_555/PartitionedCallPartitionedCall*dense_277/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_555_layer_call_and_return_conditional_losses_127330072
reshape_555/PartitionedCall�
tf.reshape_802/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_802/Reshape/shape�
tf.reshape_802/ReshapeReshape$reshape_555/PartitionedCall:output:0%tf.reshape_802/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_802/Reshape�
tf.tile_401/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_401/Tile/multiples�
tf.tile_401/TileTiletf.reshape_802/Reshape:output:0#tf.tile_401/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_401/Tile�
tf.reshape_803/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_803/Reshape/shape�
tf.reshape_803/ReshapeReshapetf.tile_401/Tile:output:0%tf.reshape_803/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_803/Reshapex
tf.concat_677/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_677/concat/axis�
tf.concat_677/concatConcatV2tf.reshape_803/Reshape:output:0,conv2d_1080/StatefulPartitionedCall:output:0"tf.concat_677/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_677/concat�
#conv2d_1081/StatefulPartitionedCallStatefulPartitionedCalltf.concat_677/concat:output:0conv2d_1081_12733029conv2d_1081_12733031*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_127330282%
#conv2d_1081/StatefulPartitionedCall�
tf.reshape_804/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_804/Reshape/shape�
tf.reshape_804/ReshapeReshape,conv2d_1081/StatefulPartitionedCall:output:0%tf.reshape_804/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_804/Reshape�
tf.tile_402/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_402/Tile/multiples�
tf.tile_402/TileTiletf.reshape_804/Reshape:output:0#tf.tile_402/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_402/Tile�
tf.reshape_805/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_805/Reshape/shape�
tf.reshape_805/ReshapeReshapetf.tile_402/Tile:output:0%tf.reshape_805/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_805/Reshapex
tf.concat_678/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_678/concat/axis�
tf.concat_678/concatConcatV2tf.reshape_805/Reshape:output:0,conv2d_1079/StatefulPartitionedCall:output:0"tf.concat_678/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_678/concat�
#conv2d_1082/StatefulPartitionedCallStatefulPartitionedCalltf.concat_678/concat:output:0conv2d_1082_12733054conv2d_1082_12733056*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_127330532%
#conv2d_1082/StatefulPartitionedCall�
#conv2d_1083/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1082/StatefulPartitionedCall:output:0conv2d_1083_12733070conv2d_1083_12733072*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_127330692%
#conv2d_1083/StatefulPartitionedCall�
IdentityIdentity,conv2d_1083/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1079/StatefulPartitionedCall$^conv2d_1080/StatefulPartitionedCall$^conv2d_1081/StatefulPartitionedCall$^conv2d_1082/StatefulPartitionedCall$^conv2d_1083/StatefulPartitionedCall"^dense_277/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2J
#conv2d_1079/StatefulPartitionedCall#conv2d_1079/StatefulPartitionedCall2J
#conv2d_1080/StatefulPartitionedCall#conv2d_1080/StatefulPartitionedCall2J
#conv2d_1081/StatefulPartitionedCall#conv2d_1081/StatefulPartitionedCall2J
#conv2d_1082/StatefulPartitionedCall#conv2d_1082/StatefulPartitionedCall2J
#conv2d_1083/StatefulPartitionedCall#conv2d_1083/StatefulPartitionedCall2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12732872

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPool�
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_401_layer_call_fn_12733823

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_127329372
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
א
�

G__inference_model_277_layer_call_and_return_conditional_losses_12733708

inputsD
*conv2d_1079_conv2d_readvariableop_resource:9
+conv2d_1079_biasadd_readvariableop_resource:D
*conv2d_1080_conv2d_readvariableop_resource:9
+conv2d_1080_biasadd_readvariableop_resource::
(dense_277_matmul_readvariableop_resource:@@7
)dense_277_biasadd_readvariableop_resource:@D
*conv2d_1081_conv2d_readvariableop_resource:9
+conv2d_1081_biasadd_readvariableop_resource:D
*conv2d_1082_conv2d_readvariableop_resource:9
+conv2d_1082_biasadd_readvariableop_resource:D
*conv2d_1083_conv2d_readvariableop_resource:9
+conv2d_1083_biasadd_readvariableop_resource:
identity��"conv2d_1079/BiasAdd/ReadVariableOp�!conv2d_1079/Conv2D/ReadVariableOp�"conv2d_1080/BiasAdd/ReadVariableOp�!conv2d_1080/Conv2D/ReadVariableOp�"conv2d_1081/BiasAdd/ReadVariableOp�!conv2d_1081/Conv2D/ReadVariableOp�"conv2d_1082/BiasAdd/ReadVariableOp�!conv2d_1082/Conv2D/ReadVariableOp�"conv2d_1083/BiasAdd/ReadVariableOp�!conv2d_1083/Conv2D/ReadVariableOp� dense_277/BiasAdd/ReadVariableOp�dense_277/MatMul/ReadVariableOp�
0tf.__operators__.getitem_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_550/strided_slice/stack�
2tf.__operators__.getitem_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_550/strided_slice/stack_1�
2tf.__operators__.getitem_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_550/strided_slice/stack_2�
*tf.__operators__.getitem_550/strided_sliceStridedSliceinputs9tf.__operators__.getitem_550/strided_slice/stack:output:0;tf.__operators__.getitem_550/strided_slice/stack_1:output:0;tf.__operators__.getitem_550/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_550/strided_slice}
range_conversion_277/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_277/sub/y�
range_conversion_277/subSub3tf.__operators__.getitem_550/strided_slice:output:0#range_conversion_277/sub/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/sub�
range_conversion_277/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_277/truediv/y�
range_conversion_277/truedivRealDivrange_conversion_277/sub:z:0'range_conversion_277/truediv/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/truediv}
range_conversion_277/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_277/mul/y�
range_conversion_277/mulMul range_conversion_277/truediv:z:0#range_conversion_277/mul/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/mul}
range_conversion_277/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_277/add/y�
range_conversion_277/addAddV2range_conversion_277/mul:z:0#range_conversion_277/add/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/add�
0tf.__operators__.getitem_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_551/strided_slice/stack�
2tf.__operators__.getitem_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_551/strided_slice/stack_1�
2tf.__operators__.getitem_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_551/strided_slice/stack_2�
*tf.__operators__.getitem_551/strided_sliceStridedSliceinputs9tf.__operators__.getitem_551/strided_slice/stack:output:0;tf.__operators__.getitem_551/strided_slice/stack_1:output:0;tf.__operators__.getitem_551/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_551/strided_slicex
tf.concat_676/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_676/concat/axis�
tf.concat_676/concatConcatV2range_conversion_277/add:z:03tf.__operators__.getitem_551/strided_slice:output:0"tf.concat_676/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_676/concat�
!conv2d_1079/Conv2D/ReadVariableOpReadVariableOp*conv2d_1079_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1079/Conv2D/ReadVariableOp�
conv2d_1079/Conv2DConv2Dtf.concat_676/concat:output:0)conv2d_1079/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1079/Conv2D�
"conv2d_1079/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1079_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1079/BiasAdd/ReadVariableOp�
conv2d_1079/BiasAddBiasAddconv2d_1079/Conv2D:output:0*conv2d_1079/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1079/BiasAdd�
conv2d_1079/SoftplusSoftplusconv2d_1079/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1079/Softplus�
average_pooling2d_401/AvgPoolAvgPool"conv2d_1079/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_401/AvgPool�
!conv2d_1080/Conv2D/ReadVariableOpReadVariableOp*conv2d_1080_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1080/Conv2D/ReadVariableOp�
conv2d_1080/Conv2DConv2D&average_pooling2d_401/AvgPool:output:0)conv2d_1080/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1080/Conv2D�
"conv2d_1080/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1080_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1080/BiasAdd/ReadVariableOp�
conv2d_1080/BiasAddBiasAddconv2d_1080/Conv2D:output:0*conv2d_1080/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1080/BiasAdd�
conv2d_1080/SoftplusSoftplusconv2d_1080/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1080/Softplus�
average_pooling2d_402/AvgPoolAvgPool"conv2d_1080/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_402/AvgPool|
reshape_554/ShapeShape&average_pooling2d_402/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_554/Shape�
reshape_554/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_554/strided_slice/stack�
!reshape_554/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_554/strided_slice/stack_1�
!reshape_554/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_554/strided_slice/stack_2�
reshape_554/strided_sliceStridedSlicereshape_554/Shape:output:0(reshape_554/strided_slice/stack:output:0*reshape_554/strided_slice/stack_1:output:0*reshape_554/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_554/strided_slice|
reshape_554/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_554/Reshape/shape/1�
reshape_554/Reshape/shapePack"reshape_554/strided_slice:output:0$reshape_554/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_554/Reshape/shape�
reshape_554/ReshapeReshape&average_pooling2d_402/AvgPool:output:0"reshape_554/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_554/Reshape�
dense_277/MatMul/ReadVariableOpReadVariableOp(dense_277_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_277/MatMul/ReadVariableOp�
dense_277/MatMulMatMulreshape_554/Reshape:output:0'dense_277/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_277/MatMul�
 dense_277/BiasAdd/ReadVariableOpReadVariableOp)dense_277_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_277/BiasAdd/ReadVariableOp�
dense_277/BiasAddBiasAdddense_277/MatMul:product:0(dense_277/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_277/BiasAdd�
dense_277/SoftplusSoftplusdense_277/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_277/Softplusv
reshape_555/ShapeShape dense_277/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_555/Shape�
reshape_555/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_555/strided_slice/stack�
!reshape_555/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_555/strided_slice/stack_1�
!reshape_555/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_555/strided_slice/stack_2�
reshape_555/strided_sliceStridedSlicereshape_555/Shape:output:0(reshape_555/strided_slice/stack:output:0*reshape_555/strided_slice/stack_1:output:0*reshape_555/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_555/strided_slice|
reshape_555/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_555/Reshape/shape/1|
reshape_555/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_555/Reshape/shape/2|
reshape_555/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_555/Reshape/shape/3�
reshape_555/Reshape/shapePack"reshape_555/strided_slice:output:0$reshape_555/Reshape/shape/1:output:0$reshape_555/Reshape/shape/2:output:0$reshape_555/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_555/Reshape/shape�
reshape_555/ReshapeReshape dense_277/Softplus:activations:0"reshape_555/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_555/Reshape�
tf.reshape_802/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_802/Reshape/shape�
tf.reshape_802/ReshapeReshapereshape_555/Reshape:output:0%tf.reshape_802/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_802/Reshape�
tf.tile_401/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_401/Tile/multiples�
tf.tile_401/TileTiletf.reshape_802/Reshape:output:0#tf.tile_401/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_401/Tile�
tf.reshape_803/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_803/Reshape/shape�
tf.reshape_803/ReshapeReshapetf.tile_401/Tile:output:0%tf.reshape_803/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_803/Reshapex
tf.concat_677/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_677/concat/axis�
tf.concat_677/concatConcatV2tf.reshape_803/Reshape:output:0"conv2d_1080/Softplus:activations:0"tf.concat_677/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_677/concat�
!conv2d_1081/Conv2D/ReadVariableOpReadVariableOp*conv2d_1081_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1081/Conv2D/ReadVariableOp�
conv2d_1081/Conv2DConv2Dtf.concat_677/concat:output:0)conv2d_1081/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1081/Conv2D�
"conv2d_1081/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1081_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1081/BiasAdd/ReadVariableOp�
conv2d_1081/BiasAddBiasAddconv2d_1081/Conv2D:output:0*conv2d_1081/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1081/BiasAdd�
conv2d_1081/SoftplusSoftplusconv2d_1081/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1081/Softplus�
tf.reshape_804/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_804/Reshape/shape�
tf.reshape_804/ReshapeReshape"conv2d_1081/Softplus:activations:0%tf.reshape_804/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_804/Reshape�
tf.tile_402/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_402/Tile/multiples�
tf.tile_402/TileTiletf.reshape_804/Reshape:output:0#tf.tile_402/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_402/Tile�
tf.reshape_805/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_805/Reshape/shape�
tf.reshape_805/ReshapeReshapetf.tile_402/Tile:output:0%tf.reshape_805/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_805/Reshapex
tf.concat_678/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_678/concat/axis�
tf.concat_678/concatConcatV2tf.reshape_805/Reshape:output:0"conv2d_1079/Softplus:activations:0"tf.concat_678/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_678/concat�
!conv2d_1082/Conv2D/ReadVariableOpReadVariableOp*conv2d_1082_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1082/Conv2D/ReadVariableOp�
conv2d_1082/Conv2DConv2Dtf.concat_678/concat:output:0)conv2d_1082/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1082/Conv2D�
"conv2d_1082/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1082_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1082/BiasAdd/ReadVariableOp�
conv2d_1082/BiasAddBiasAddconv2d_1082/Conv2D:output:0*conv2d_1082/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1082/BiasAdd�
conv2d_1082/SoftplusSoftplusconv2d_1082/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1082/Softplus�
!conv2d_1083/Conv2D/ReadVariableOpReadVariableOp*conv2d_1083_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1083/Conv2D/ReadVariableOp�
conv2d_1083/Conv2DConv2D"conv2d_1082/Softplus:activations:0)conv2d_1083/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1083/Conv2D�
"conv2d_1083/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1083_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1083/BiasAdd/ReadVariableOp�
conv2d_1083/BiasAddBiasAddconv2d_1083/Conv2D:output:0*conv2d_1083/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1083/BiasAdd
IdentityIdentityconv2d_1083/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_1079/BiasAdd/ReadVariableOp"^conv2d_1079/Conv2D/ReadVariableOp#^conv2d_1080/BiasAdd/ReadVariableOp"^conv2d_1080/Conv2D/ReadVariableOp#^conv2d_1081/BiasAdd/ReadVariableOp"^conv2d_1081/Conv2D/ReadVariableOp#^conv2d_1082/BiasAdd/ReadVariableOp"^conv2d_1082/Conv2D/ReadVariableOp#^conv2d_1083/BiasAdd/ReadVariableOp"^conv2d_1083/Conv2D/ReadVariableOp!^dense_277/BiasAdd/ReadVariableOp ^dense_277/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2H
"conv2d_1079/BiasAdd/ReadVariableOp"conv2d_1079/BiasAdd/ReadVariableOp2F
!conv2d_1079/Conv2D/ReadVariableOp!conv2d_1079/Conv2D/ReadVariableOp2H
"conv2d_1080/BiasAdd/ReadVariableOp"conv2d_1080/BiasAdd/ReadVariableOp2F
!conv2d_1080/Conv2D/ReadVariableOp!conv2d_1080/Conv2D/ReadVariableOp2H
"conv2d_1081/BiasAdd/ReadVariableOp"conv2d_1081/BiasAdd/ReadVariableOp2F
!conv2d_1081/Conv2D/ReadVariableOp!conv2d_1081/Conv2D/ReadVariableOp2H
"conv2d_1082/BiasAdd/ReadVariableOp"conv2d_1082/BiasAdd/ReadVariableOp2F
!conv2d_1082/Conv2D/ReadVariableOp!conv2d_1082/Conv2D/ReadVariableOp2H
"conv2d_1083/BiasAdd/ReadVariableOp"conv2d_1083/BiasAdd/ReadVariableOp2F
!conv2d_1083/Conv2D/ReadVariableOp!conv2d_1083/Conv2D/ReadVariableOp2D
 dense_277/BiasAdd/ReadVariableOp dense_277/BiasAdd/ReadVariableOp2B
dense_277/MatMul/ReadVariableOpdense_277/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
א
�

G__inference_model_277_layer_call_and_return_conditional_losses_12733609

inputsD
*conv2d_1079_conv2d_readvariableop_resource:9
+conv2d_1079_biasadd_readvariableop_resource:D
*conv2d_1080_conv2d_readvariableop_resource:9
+conv2d_1080_biasadd_readvariableop_resource::
(dense_277_matmul_readvariableop_resource:@@7
)dense_277_biasadd_readvariableop_resource:@D
*conv2d_1081_conv2d_readvariableop_resource:9
+conv2d_1081_biasadd_readvariableop_resource:D
*conv2d_1082_conv2d_readvariableop_resource:9
+conv2d_1082_biasadd_readvariableop_resource:D
*conv2d_1083_conv2d_readvariableop_resource:9
+conv2d_1083_biasadd_readvariableop_resource:
identity��"conv2d_1079/BiasAdd/ReadVariableOp�!conv2d_1079/Conv2D/ReadVariableOp�"conv2d_1080/BiasAdd/ReadVariableOp�!conv2d_1080/Conv2D/ReadVariableOp�"conv2d_1081/BiasAdd/ReadVariableOp�!conv2d_1081/Conv2D/ReadVariableOp�"conv2d_1082/BiasAdd/ReadVariableOp�!conv2d_1082/Conv2D/ReadVariableOp�"conv2d_1083/BiasAdd/ReadVariableOp�!conv2d_1083/Conv2D/ReadVariableOp� dense_277/BiasAdd/ReadVariableOp�dense_277/MatMul/ReadVariableOp�
0tf.__operators__.getitem_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_550/strided_slice/stack�
2tf.__operators__.getitem_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_550/strided_slice/stack_1�
2tf.__operators__.getitem_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_550/strided_slice/stack_2�
*tf.__operators__.getitem_550/strided_sliceStridedSliceinputs9tf.__operators__.getitem_550/strided_slice/stack:output:0;tf.__operators__.getitem_550/strided_slice/stack_1:output:0;tf.__operators__.getitem_550/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_550/strided_slice}
range_conversion_277/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_277/sub/y�
range_conversion_277/subSub3tf.__operators__.getitem_550/strided_slice:output:0#range_conversion_277/sub/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/sub�
range_conversion_277/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_277/truediv/y�
range_conversion_277/truedivRealDivrange_conversion_277/sub:z:0'range_conversion_277/truediv/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/truediv}
range_conversion_277/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_277/mul/y�
range_conversion_277/mulMul range_conversion_277/truediv:z:0#range_conversion_277/mul/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/mul}
range_conversion_277/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_277/add/y�
range_conversion_277/addAddV2range_conversion_277/mul:z:0#range_conversion_277/add/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_277/add�
0tf.__operators__.getitem_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_551/strided_slice/stack�
2tf.__operators__.getitem_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_551/strided_slice/stack_1�
2tf.__operators__.getitem_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_551/strided_slice/stack_2�
*tf.__operators__.getitem_551/strided_sliceStridedSliceinputs9tf.__operators__.getitem_551/strided_slice/stack:output:0;tf.__operators__.getitem_551/strided_slice/stack_1:output:0;tf.__operators__.getitem_551/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_551/strided_slicex
tf.concat_676/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_676/concat/axis�
tf.concat_676/concatConcatV2range_conversion_277/add:z:03tf.__operators__.getitem_551/strided_slice:output:0"tf.concat_676/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_676/concat�
!conv2d_1079/Conv2D/ReadVariableOpReadVariableOp*conv2d_1079_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1079/Conv2D/ReadVariableOp�
conv2d_1079/Conv2DConv2Dtf.concat_676/concat:output:0)conv2d_1079/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1079/Conv2D�
"conv2d_1079/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1079_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1079/BiasAdd/ReadVariableOp�
conv2d_1079/BiasAddBiasAddconv2d_1079/Conv2D:output:0*conv2d_1079/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1079/BiasAdd�
conv2d_1079/SoftplusSoftplusconv2d_1079/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1079/Softplus�
average_pooling2d_401/AvgPoolAvgPool"conv2d_1079/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_401/AvgPool�
!conv2d_1080/Conv2D/ReadVariableOpReadVariableOp*conv2d_1080_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1080/Conv2D/ReadVariableOp�
conv2d_1080/Conv2DConv2D&average_pooling2d_401/AvgPool:output:0)conv2d_1080/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1080/Conv2D�
"conv2d_1080/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1080_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1080/BiasAdd/ReadVariableOp�
conv2d_1080/BiasAddBiasAddconv2d_1080/Conv2D:output:0*conv2d_1080/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1080/BiasAdd�
conv2d_1080/SoftplusSoftplusconv2d_1080/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1080/Softplus�
average_pooling2d_402/AvgPoolAvgPool"conv2d_1080/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_402/AvgPool|
reshape_554/ShapeShape&average_pooling2d_402/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_554/Shape�
reshape_554/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_554/strided_slice/stack�
!reshape_554/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_554/strided_slice/stack_1�
!reshape_554/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_554/strided_slice/stack_2�
reshape_554/strided_sliceStridedSlicereshape_554/Shape:output:0(reshape_554/strided_slice/stack:output:0*reshape_554/strided_slice/stack_1:output:0*reshape_554/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_554/strided_slice|
reshape_554/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_554/Reshape/shape/1�
reshape_554/Reshape/shapePack"reshape_554/strided_slice:output:0$reshape_554/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_554/Reshape/shape�
reshape_554/ReshapeReshape&average_pooling2d_402/AvgPool:output:0"reshape_554/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_554/Reshape�
dense_277/MatMul/ReadVariableOpReadVariableOp(dense_277_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_277/MatMul/ReadVariableOp�
dense_277/MatMulMatMulreshape_554/Reshape:output:0'dense_277/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_277/MatMul�
 dense_277/BiasAdd/ReadVariableOpReadVariableOp)dense_277_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_277/BiasAdd/ReadVariableOp�
dense_277/BiasAddBiasAdddense_277/MatMul:product:0(dense_277/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_277/BiasAdd�
dense_277/SoftplusSoftplusdense_277/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_277/Softplusv
reshape_555/ShapeShape dense_277/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_555/Shape�
reshape_555/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_555/strided_slice/stack�
!reshape_555/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_555/strided_slice/stack_1�
!reshape_555/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_555/strided_slice/stack_2�
reshape_555/strided_sliceStridedSlicereshape_555/Shape:output:0(reshape_555/strided_slice/stack:output:0*reshape_555/strided_slice/stack_1:output:0*reshape_555/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_555/strided_slice|
reshape_555/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_555/Reshape/shape/1|
reshape_555/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_555/Reshape/shape/2|
reshape_555/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_555/Reshape/shape/3�
reshape_555/Reshape/shapePack"reshape_555/strided_slice:output:0$reshape_555/Reshape/shape/1:output:0$reshape_555/Reshape/shape/2:output:0$reshape_555/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_555/Reshape/shape�
reshape_555/ReshapeReshape dense_277/Softplus:activations:0"reshape_555/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_555/Reshape�
tf.reshape_802/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_802/Reshape/shape�
tf.reshape_802/ReshapeReshapereshape_555/Reshape:output:0%tf.reshape_802/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_802/Reshape�
tf.tile_401/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_401/Tile/multiples�
tf.tile_401/TileTiletf.reshape_802/Reshape:output:0#tf.tile_401/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_401/Tile�
tf.reshape_803/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_803/Reshape/shape�
tf.reshape_803/ReshapeReshapetf.tile_401/Tile:output:0%tf.reshape_803/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_803/Reshapex
tf.concat_677/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_677/concat/axis�
tf.concat_677/concatConcatV2tf.reshape_803/Reshape:output:0"conv2d_1080/Softplus:activations:0"tf.concat_677/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_677/concat�
!conv2d_1081/Conv2D/ReadVariableOpReadVariableOp*conv2d_1081_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1081/Conv2D/ReadVariableOp�
conv2d_1081/Conv2DConv2Dtf.concat_677/concat:output:0)conv2d_1081/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1081/Conv2D�
"conv2d_1081/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1081_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1081/BiasAdd/ReadVariableOp�
conv2d_1081/BiasAddBiasAddconv2d_1081/Conv2D:output:0*conv2d_1081/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1081/BiasAdd�
conv2d_1081/SoftplusSoftplusconv2d_1081/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1081/Softplus�
tf.reshape_804/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_804/Reshape/shape�
tf.reshape_804/ReshapeReshape"conv2d_1081/Softplus:activations:0%tf.reshape_804/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_804/Reshape�
tf.tile_402/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_402/Tile/multiples�
tf.tile_402/TileTiletf.reshape_804/Reshape:output:0#tf.tile_402/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_402/Tile�
tf.reshape_805/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_805/Reshape/shape�
tf.reshape_805/ReshapeReshapetf.tile_402/Tile:output:0%tf.reshape_805/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_805/Reshapex
tf.concat_678/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_678/concat/axis�
tf.concat_678/concatConcatV2tf.reshape_805/Reshape:output:0"conv2d_1079/Softplus:activations:0"tf.concat_678/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_678/concat�
!conv2d_1082/Conv2D/ReadVariableOpReadVariableOp*conv2d_1082_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1082/Conv2D/ReadVariableOp�
conv2d_1082/Conv2DConv2Dtf.concat_678/concat:output:0)conv2d_1082/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1082/Conv2D�
"conv2d_1082/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1082_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1082/BiasAdd/ReadVariableOp�
conv2d_1082/BiasAddBiasAddconv2d_1082/Conv2D:output:0*conv2d_1082/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1082/BiasAdd�
conv2d_1082/SoftplusSoftplusconv2d_1082/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1082/Softplus�
!conv2d_1083/Conv2D/ReadVariableOpReadVariableOp*conv2d_1083_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1083/Conv2D/ReadVariableOp�
conv2d_1083/Conv2DConv2D"conv2d_1082/Softplus:activations:0)conv2d_1083/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1083/Conv2D�
"conv2d_1083/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1083_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1083/BiasAdd/ReadVariableOp�
conv2d_1083/BiasAddBiasAddconv2d_1083/Conv2D:output:0*conv2d_1083/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1083/BiasAdd
IdentityIdentityconv2d_1083/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_1079/BiasAdd/ReadVariableOp"^conv2d_1079/Conv2D/ReadVariableOp#^conv2d_1080/BiasAdd/ReadVariableOp"^conv2d_1080/Conv2D/ReadVariableOp#^conv2d_1081/BiasAdd/ReadVariableOp"^conv2d_1081/Conv2D/ReadVariableOp#^conv2d_1082/BiasAdd/ReadVariableOp"^conv2d_1082/Conv2D/ReadVariableOp#^conv2d_1083/BiasAdd/ReadVariableOp"^conv2d_1083/Conv2D/ReadVariableOp!^dense_277/BiasAdd/ReadVariableOp ^dense_277/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2H
"conv2d_1079/BiasAdd/ReadVariableOp"conv2d_1079/BiasAdd/ReadVariableOp2F
!conv2d_1079/Conv2D/ReadVariableOp!conv2d_1079/Conv2D/ReadVariableOp2H
"conv2d_1080/BiasAdd/ReadVariableOp"conv2d_1080/BiasAdd/ReadVariableOp2F
!conv2d_1080/Conv2D/ReadVariableOp!conv2d_1080/Conv2D/ReadVariableOp2H
"conv2d_1081/BiasAdd/ReadVariableOp"conv2d_1081/BiasAdd/ReadVariableOp2F
!conv2d_1081/Conv2D/ReadVariableOp!conv2d_1081/Conv2D/ReadVariableOp2H
"conv2d_1082/BiasAdd/ReadVariableOp"conv2d_1082/BiasAdd/ReadVariableOp2F
!conv2d_1082/Conv2D/ReadVariableOp!conv2d_1082/Conv2D/ReadVariableOp2H
"conv2d_1083/BiasAdd/ReadVariableOp"conv2d_1083/BiasAdd/ReadVariableOp2F
!conv2d_1083/Conv2D/ReadVariableOp!conv2d_1083/Conv2D/ReadVariableOp2D
 dense_277/BiasAdd/ReadVariableOp dense_277/BiasAdd/ReadVariableOp2B
dense_277/MatMul/ReadVariableOpdense_277/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_555_layer_call_and_return_conditional_losses_12733007

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
strided_slice/stack_2�
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
Reshape/shape/3�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12733848

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPool�
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
.__inference_conv2d_1079_layer_call_fn_12733803

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_127329272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_402_layer_call_fn_12733863

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_127329602
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_12733510	
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference__wrapped_model_127328412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
o
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12733813

inputs
identity�
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:���������*
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
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input6
serving_default_input:0���������G
conv2d_10838
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
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
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
(
#	keras_api"
_tf_keras_layer
(
$	keras_api"
_tf_keras_layer
�

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
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
�

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
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
�

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

[kernel
\bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
aiter

bbeta_1

cbeta_2
	ddecay
elearning_rate%m�&m�/m�0m�=m�>m�Km�Lm�Um�Vm�[m�\m�%v�&v�/v�0v�=v�>v�Kv�Lv�Uv�Vv�[v�\v�"
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
�
fmetrics
	variables
glayer_regularization_losses
hlayer_metrics

ilayers
jnon_trainable_variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
kmetrics
	variables
llayer_regularization_losses
mlayer_metrics

nlayers
onon_trainable_variables
 trainable_variables
!regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.:, 2conv2d_1079/kernel
 : 2conv2d_1079/bias
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
�
pmetrics
'	variables
qlayer_regularization_losses
rlayer_metrics

slayers
tnon_trainable_variables
(trainable_variables
)regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
umetrics
+	variables
vlayer_regularization_losses
wlayer_metrics

xlayers
ynon_trainable_variables
,trainable_variables
-regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.:, 2conv2d_1080/kernel
 : 2conv2d_1080/bias
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
�
zmetrics
1	variables
{layer_regularization_losses
|layer_metrics

}layers
~non_trainable_variables
2trainable_variables
3regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
metrics
5	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
6trainable_variables
7regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
9	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
:trainable_variables
;regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
$:"@@ 2dense_277/kernel
:@ 2dense_277/bias
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
�
�metrics
?	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
@trainable_variables
Aregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
C	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Dtrainable_variables
Eregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.:, 2conv2d_1081/kernel
 : 2conv2d_1081/bias
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
�
�metrics
M	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Ntrainable_variables
Oregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.:, 2conv2d_1082/kernel
 : 2conv2d_1082/bias
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
�
�metrics
W	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Xtrainable_variables
Yregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.:, 2conv2d_1083/kernel
 : 2conv2d_1083/bias
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
�
�metrics
]	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
^trainable_variables
_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	  (2	Adam/iter
:  (2Adam/beta_1
:  (2Adam/beta_2
:  (2
Adam/decay
:  (2Adam/learning_rate
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
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

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
3:1 2Adam/conv2d_1079/kernel/m
%:# 2Adam/conv2d_1079/bias/m
3:1 2Adam/conv2d_1080/kernel/m
%:# 2Adam/conv2d_1080/bias/m
):'@@ 2Adam/dense_277/kernel/m
#:!@ 2Adam/dense_277/bias/m
3:1 2Adam/conv2d_1081/kernel/m
%:# 2Adam/conv2d_1081/bias/m
3:1 2Adam/conv2d_1082/kernel/m
%:# 2Adam/conv2d_1082/bias/m
3:1 2Adam/conv2d_1083/kernel/m
%:# 2Adam/conv2d_1083/bias/m
3:1 2Adam/conv2d_1079/kernel/v
%:# 2Adam/conv2d_1079/bias/v
3:1 2Adam/conv2d_1080/kernel/v
%:# 2Adam/conv2d_1080/bias/v
):'@@ 2Adam/dense_277/kernel/v
#:!@ 2Adam/dense_277/bias/v
3:1 2Adam/conv2d_1081/kernel/v
%:# 2Adam/conv2d_1081/bias/v
3:1 2Adam/conv2d_1082/kernel/v
%:# 2Adam/conv2d_1082/bias/v
3:1 2Adam/conv2d_1083/kernel/v
%:# 2Adam/conv2d_1083/bias/v
�2�
G__inference_model_277_layer_call_and_return_conditional_losses_12733609
G__inference_model_277_layer_call_and_return_conditional_losses_12733708
G__inference_model_277_layer_call_and_return_conditional_losses_12733408
G__inference_model_277_layer_call_and_return_conditional_losses_12733473�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_model_277_layer_call_fn_12733103
,__inference_model_277_layer_call_fn_12733737
,__inference_model_277_layer_call_fn_12733766
,__inference_model_277_layer_call_fn_12733343�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference__wrapped_model_12732841input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_12733778�
���
FullArgSpec!
args�
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
7__inference_range_conversion_277_layer_call_fn_12733783�
���
FullArgSpec!
args�
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_12733794�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_conv2d_1079_layer_call_fn_12733803�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12733808
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12733813�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
8__inference_average_pooling2d_401_layer_call_fn_12733818
8__inference_average_pooling2d_401_layer_call_fn_12733823�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_12733834�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_conv2d_1080_layer_call_fn_12733843�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12733848
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12733853�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
8__inference_average_pooling2d_402_layer_call_fn_12733858
8__inference_average_pooling2d_402_layer_call_fn_12733863�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_reshape_554_layer_call_and_return_conditional_losses_12733875�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_reshape_554_layer_call_fn_12733880�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_dense_277_layer_call_and_return_conditional_losses_12733891�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_dense_277_layer_call_fn_12733900�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_reshape_555_layer_call_and_return_conditional_losses_12733914�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_reshape_555_layer_call_fn_12733919�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_12733930�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_conv2d_1081_layer_call_fn_12733939�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_12733950�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_conv2d_1082_layer_call_fn_12733959�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_12733969�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_conv2d_1083_layer_call_fn_12733978�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_12733510input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
#__inference__wrapped_model_12732841�%&/0=>KLUV[\6�3
,�)
'�$
input���������
� "A�>
<
conv2d_1083-�*
conv2d_1083����������
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12733808�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
S__inference_average_pooling2d_401_layer_call_and_return_conditional_losses_12733813h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
8__inference_average_pooling2d_401_layer_call_fn_12733818�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
8__inference_average_pooling2d_401_layer_call_fn_12733823[7�4
-�*
(�%
inputs���������
� " �����������
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12733848�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
S__inference_average_pooling2d_402_layer_call_and_return_conditional_losses_12733853h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
8__inference_average_pooling2d_402_layer_call_fn_12733858�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
8__inference_average_pooling2d_402_layer_call_fn_12733863[7�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1079_layer_call_and_return_conditional_losses_12733794l%&7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1079_layer_call_fn_12733803_%&7�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1080_layer_call_and_return_conditional_losses_12733834l/07�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1080_layer_call_fn_12733843_/07�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1081_layer_call_and_return_conditional_losses_12733930lKL7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1081_layer_call_fn_12733939_KL7�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1082_layer_call_and_return_conditional_losses_12733950lUV7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1082_layer_call_fn_12733959_UV7�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1083_layer_call_and_return_conditional_losses_12733969l[\7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1083_layer_call_fn_12733978_[\7�4
-�*
(�%
inputs���������
� " �����������
G__inference_dense_277_layer_call_and_return_conditional_losses_12733891\=>/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� 
,__inference_dense_277_layer_call_fn_12733900O=>/�,
%�"
 �
inputs���������@
� "����������@�
G__inference_model_277_layer_call_and_return_conditional_losses_12733408}%&/0=>KLUV[\>�;
4�1
'�$
input���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_model_277_layer_call_and_return_conditional_losses_12733473}%&/0=>KLUV[\>�;
4�1
'�$
input���������
p

 
� "-�*
#� 
0���������
� �
G__inference_model_277_layer_call_and_return_conditional_losses_12733609~%&/0=>KLUV[\?�<
5�2
(�%
inputs���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_model_277_layer_call_and_return_conditional_losses_12733708~%&/0=>KLUV[\?�<
5�2
(�%
inputs���������
p

 
� "-�*
#� 
0���������
� �
,__inference_model_277_layer_call_fn_12733103p%&/0=>KLUV[\>�;
4�1
'�$
input���������
p 

 
� " �����������
,__inference_model_277_layer_call_fn_12733343p%&/0=>KLUV[\>�;
4�1
'�$
input���������
p

 
� " �����������
,__inference_model_277_layer_call_fn_12733737q%&/0=>KLUV[\?�<
5�2
(�%
inputs���������
p 

 
� " �����������
,__inference_model_277_layer_call_fn_12733766q%&/0=>KLUV[\?�<
5�2
(�%
inputs���������
p

 
� " �����������
R__inference_range_conversion_277_layer_call_and_return_conditional_losses_12733778l;�8
1�.
,�)

parameters���������
� "-�*
#� 
0���������
� �
7__inference_range_conversion_277_layer_call_fn_12733783_;�8
1�.
,�)

parameters���������
� " �����������
I__inference_reshape_554_layer_call_and_return_conditional_losses_12733875`7�4
-�*
(�%
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_554_layer_call_fn_12733880S7�4
-�*
(�%
inputs���������
� "����������@�
I__inference_reshape_555_layer_call_and_return_conditional_losses_12733914`/�,
%�"
 �
inputs���������@
� "-�*
#� 
0���������
� �
.__inference_reshape_555_layer_call_fn_12733919S/�,
%�"
 �
inputs���������@
� " �����������
&__inference_signature_wrapper_12733510�%&/0=>KLUV[\?�<
� 
5�2
0
input'�$
input���������"A�>
<
conv2d_1083-�*
conv2d_1083���������