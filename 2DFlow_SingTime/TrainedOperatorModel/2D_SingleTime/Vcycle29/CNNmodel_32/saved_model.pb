��
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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv2d_905/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_905/kernel

%conv2d_905/kernel/Read/ReadVariableOpReadVariableOpconv2d_905/kernel*&
_output_shapes
:*
dtype0
v
conv2d_905/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_905/bias
o
#conv2d_905/bias/Read/ReadVariableOpReadVariableOpconv2d_905/bias*
_output_shapes
:*
dtype0
�
conv2d_906/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_906/kernel

%conv2d_906/kernel/Read/ReadVariableOpReadVariableOpconv2d_906/kernel*&
_output_shapes
:*
dtype0
v
conv2d_906/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_906/bias
o
#conv2d_906/bias/Read/ReadVariableOpReadVariableOpconv2d_906/bias*
_output_shapes
:*
dtype0
�
conv2d_907/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_907/kernel

%conv2d_907/kernel/Read/ReadVariableOpReadVariableOpconv2d_907/kernel*&
_output_shapes
:*
dtype0
v
conv2d_907/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_907/bias
o
#conv2d_907/bias/Read/ReadVariableOpReadVariableOpconv2d_907/bias*
_output_shapes
:*
dtype0
|
dense_237/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_237/kernel
u
$dense_237/kernel/Read/ReadVariableOpReadVariableOpdense_237/kernel*
_output_shapes

:@@*
dtype0
t
dense_237/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_237/bias
m
"dense_237/bias/Read/ReadVariableOpReadVariableOpdense_237/bias*
_output_shapes
:@*
dtype0
�
conv2d_908/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_908/kernel

%conv2d_908/kernel/Read/ReadVariableOpReadVariableOpconv2d_908/kernel*&
_output_shapes
:*
dtype0
v
conv2d_908/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_908/bias
o
#conv2d_908/bias/Read/ReadVariableOpReadVariableOpconv2d_908/bias*
_output_shapes
:*
dtype0
�
conv2d_909/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_909/kernel

%conv2d_909/kernel/Read/ReadVariableOpReadVariableOpconv2d_909/kernel*&
_output_shapes
:*
dtype0
v
conv2d_909/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_909/bias
o
#conv2d_909/bias/Read/ReadVariableOpReadVariableOpconv2d_909/bias*
_output_shapes
:*
dtype0
�
conv2d_910/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_910/kernel

%conv2d_910/kernel/Read/ReadVariableOpReadVariableOpconv2d_910/kernel*&
_output_shapes
:*
dtype0
v
conv2d_910/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_910/bias
o
#conv2d_910/bias/Read/ReadVariableOpReadVariableOpconv2d_910/bias*
_output_shapes
:*
dtype0
�
conv2d_911/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_911/kernel

%conv2d_911/kernel/Read/ReadVariableOpReadVariableOpconv2d_911/kernel*&
_output_shapes
:*
dtype0
v
conv2d_911/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_911/bias
o
#conv2d_911/bias/Read/ReadVariableOpReadVariableOpconv2d_911/bias*
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
Adam/conv2d_905/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_905/kernel/m
�
,Adam/conv2d_905/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_905/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_905/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_905/bias/m
}
*Adam/conv2d_905/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_905/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_906/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_906/kernel/m
�
,Adam/conv2d_906/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_906/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_906/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_906/bias/m
}
*Adam/conv2d_906/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_906/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_907/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_907/kernel/m
�
,Adam/conv2d_907/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_907/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_907/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_907/bias/m
}
*Adam/conv2d_907/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_907/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_237/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_237/kernel/m
�
+Adam/dense_237/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_237/kernel/m*
_output_shapes

:@@*
dtype0
�
Adam/dense_237/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_237/bias/m
{
)Adam/dense_237/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_237/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_908/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_908/kernel/m
�
,Adam/conv2d_908/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_908/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_908/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_908/bias/m
}
*Adam/conv2d_908/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_908/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_909/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_909/kernel/m
�
,Adam/conv2d_909/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_909/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_909/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_909/bias/m
}
*Adam/conv2d_909/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_909/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_910/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_910/kernel/m
�
,Adam/conv2d_910/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_910/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_910/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_910/bias/m
}
*Adam/conv2d_910/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_910/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_911/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_911/kernel/m
�
,Adam/conv2d_911/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_911/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_911/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_911/bias/m
}
*Adam/conv2d_911/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_911/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_905/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_905/kernel/v
�
,Adam/conv2d_905/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_905/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_905/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_905/bias/v
}
*Adam/conv2d_905/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_905/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_906/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_906/kernel/v
�
,Adam/conv2d_906/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_906/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_906/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_906/bias/v
}
*Adam/conv2d_906/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_906/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_907/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_907/kernel/v
�
,Adam/conv2d_907/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_907/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_907/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_907/bias/v
}
*Adam/conv2d_907/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_907/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_237/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_237/kernel/v
�
+Adam/dense_237/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_237/kernel/v*
_output_shapes

:@@*
dtype0
�
Adam/dense_237/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_237/bias/v
{
)Adam/dense_237/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_237/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_908/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_908/kernel/v
�
,Adam/conv2d_908/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_908/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_908/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_908/bias/v
}
*Adam/conv2d_908/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_908/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_909/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_909/kernel/v
�
,Adam/conv2d_909/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_909/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_909/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_909/bias/v
}
*Adam/conv2d_909/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_909/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_910/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_910/kernel/v
�
,Adam/conv2d_910/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_910/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_910/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_910/bias/v
}
*Adam/conv2d_910/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_910/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_911/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_911/kernel/v
�
,Adam/conv2d_911/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_911/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_911/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_911/bias/v
}
*Adam/conv2d_911/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_911/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�e
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�e
value�eB�e B�e
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
	optimizer
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$
signatures
 

%	keras_api
R
&	variables
'trainable_variables
(regularization_losses
)	keras_api

*	keras_api

+	keras_api
h

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
R
2	variables
3trainable_variables
4regularization_losses
5	keras_api
h

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
R
<	variables
=trainable_variables
>regularization_losses
?	keras_api
h

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
R
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
R
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
h

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
R
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api

X	keras_api

Y	keras_api

Z	keras_api

[	keras_api
h

\kernel
]bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api

b	keras_api

c	keras_api

d	keras_api

e	keras_api
h

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api

l	keras_api

m	keras_api

n	keras_api

o	keras_api
h

pkernel
qbias
r	variables
strainable_variables
tregularization_losses
u	keras_api
h

vkernel
wbias
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
�
|iter

}beta_1

~beta_2
	decay
�learning_rate,m�-m�6m�7m�@m�Am�Nm�Om�\m�]m�fm�gm�pm�qm�vm�wm�,v�-v�6v�7v�@v�Av�Nv�Ov�\v�]v�fv�gv�pv�qv�vv�wv�
v
,0
-1
62
73
@4
A5
N6
O7
\8
]9
f10
g11
p12
q13
v14
w15
v
,0
-1
62
73
@4
A5
N6
O7
\8
]9
f10
g11
p12
q13
v14
w15
 
�
�metrics
 	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
!trainable_variables
"regularization_losses
 
 
 
 
 
�
�metrics
&	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
'trainable_variables
(regularization_losses
 
 
][
VARIABLE_VALUEconv2d_905/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_905/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
�
�metrics
.	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
/trainable_variables
0regularization_losses
 
 
 
�
�metrics
2	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
3trainable_variables
4regularization_losses
][
VARIABLE_VALUEconv2d_906/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_906/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71

60
71
 
�
�metrics
8	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
9trainable_variables
:regularization_losses
 
 
 
�
�metrics
<	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
=trainable_variables
>regularization_losses
][
VARIABLE_VALUEconv2d_907/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_907/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

@0
A1
 
�
�metrics
B	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Ctrainable_variables
Dregularization_losses
 
 
 
�
�metrics
F	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Gtrainable_variables
Hregularization_losses
 
 
 
�
�metrics
J	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Ktrainable_variables
Lregularization_losses
\Z
VARIABLE_VALUEdense_237/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_237/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

N0
O1
 
�
�metrics
P	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Qtrainable_variables
Rregularization_losses
 
 
 
�
�metrics
T	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Utrainable_variables
Vregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv2d_908/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_908/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

\0
]1

\0
]1
 
�
�metrics
^	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
_trainable_variables
`regularization_losses
 
 
 
 
][
VARIABLE_VALUEconv2d_909/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_909/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

f0
g1

f0
g1
 
�
�metrics
h	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
itrainable_variables
jregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv2d_910/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_910/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

p0
q1

p0
q1
 
�
�metrics
r	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
strainable_variables
tregularization_losses
][
VARIABLE_VALUEconv2d_911/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_911/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

v0
w1

v0
w1
 
�
�metrics
x	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
ytrainable_variables
zregularization_losses
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
�~
VARIABLE_VALUEAdam/conv2d_905/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_905/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_906/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_906/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_907/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_907/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_237/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_237/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_908/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_908/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_909/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_909/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_910/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_910/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_911/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_911/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_905/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_905/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_906/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_906/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_907/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_907/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_237/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_237/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_908/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_908/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_909/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_909/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_910/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_910/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_911/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_911/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_inputPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_905/kernelconv2d_905/biasconv2d_906/kernelconv2d_906/biasconv2d_907/kernelconv2d_907/biasdense_237/kerneldense_237/biasconv2d_908/kernelconv2d_908/biasconv2d_909/kernelconv2d_909/biasconv2d_910/kernelconv2d_910/biasconv2d_911/kernelconv2d_911/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� */
f*R(
&__inference_signature_wrapper_10822904
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_905/kernel/Read/ReadVariableOp#conv2d_905/bias/Read/ReadVariableOp%conv2d_906/kernel/Read/ReadVariableOp#conv2d_906/bias/Read/ReadVariableOp%conv2d_907/kernel/Read/ReadVariableOp#conv2d_907/bias/Read/ReadVariableOp$dense_237/kernel/Read/ReadVariableOp"dense_237/bias/Read/ReadVariableOp%conv2d_908/kernel/Read/ReadVariableOp#conv2d_908/bias/Read/ReadVariableOp%conv2d_909/kernel/Read/ReadVariableOp#conv2d_909/bias/Read/ReadVariableOp%conv2d_910/kernel/Read/ReadVariableOp#conv2d_910/bias/Read/ReadVariableOp%conv2d_911/kernel/Read/ReadVariableOp#conv2d_911/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_905/kernel/m/Read/ReadVariableOp*Adam/conv2d_905/bias/m/Read/ReadVariableOp,Adam/conv2d_906/kernel/m/Read/ReadVariableOp*Adam/conv2d_906/bias/m/Read/ReadVariableOp,Adam/conv2d_907/kernel/m/Read/ReadVariableOp*Adam/conv2d_907/bias/m/Read/ReadVariableOp+Adam/dense_237/kernel/m/Read/ReadVariableOp)Adam/dense_237/bias/m/Read/ReadVariableOp,Adam/conv2d_908/kernel/m/Read/ReadVariableOp*Adam/conv2d_908/bias/m/Read/ReadVariableOp,Adam/conv2d_909/kernel/m/Read/ReadVariableOp*Adam/conv2d_909/bias/m/Read/ReadVariableOp,Adam/conv2d_910/kernel/m/Read/ReadVariableOp*Adam/conv2d_910/bias/m/Read/ReadVariableOp,Adam/conv2d_911/kernel/m/Read/ReadVariableOp*Adam/conv2d_911/bias/m/Read/ReadVariableOp,Adam/conv2d_905/kernel/v/Read/ReadVariableOp*Adam/conv2d_905/bias/v/Read/ReadVariableOp,Adam/conv2d_906/kernel/v/Read/ReadVariableOp*Adam/conv2d_906/bias/v/Read/ReadVariableOp,Adam/conv2d_907/kernel/v/Read/ReadVariableOp*Adam/conv2d_907/bias/v/Read/ReadVariableOp+Adam/dense_237/kernel/v/Read/ReadVariableOp)Adam/dense_237/bias/v/Read/ReadVariableOp,Adam/conv2d_908/kernel/v/Read/ReadVariableOp*Adam/conv2d_908/bias/v/Read/ReadVariableOp,Adam/conv2d_909/kernel/v/Read/ReadVariableOp*Adam/conv2d_909/bias/v/Read/ReadVariableOp,Adam/conv2d_910/kernel/v/Read/ReadVariableOp*Adam/conv2d_910/bias/v/Read/ReadVariableOp,Adam/conv2d_911/kernel/v/Read/ReadVariableOp*Adam/conv2d_911/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
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
!__inference__traced_save_10823688
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_905/kernelconv2d_905/biasconv2d_906/kernelconv2d_906/biasconv2d_907/kernelconv2d_907/biasdense_237/kerneldense_237/biasconv2d_908/kernelconv2d_908/biasconv2d_909/kernelconv2d_909/biasconv2d_910/kernelconv2d_910/biasconv2d_911/kernelconv2d_911/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_905/kernel/mAdam/conv2d_905/bias/mAdam/conv2d_906/kernel/mAdam/conv2d_906/bias/mAdam/conv2d_907/kernel/mAdam/conv2d_907/bias/mAdam/dense_237/kernel/mAdam/dense_237/bias/mAdam/conv2d_908/kernel/mAdam/conv2d_908/bias/mAdam/conv2d_909/kernel/mAdam/conv2d_909/bias/mAdam/conv2d_910/kernel/mAdam/conv2d_910/bias/mAdam/conv2d_911/kernel/mAdam/conv2d_911/bias/mAdam/conv2d_905/kernel/vAdam/conv2d_905/bias/vAdam/conv2d_906/kernel/vAdam/conv2d_906/bias/vAdam/conv2d_907/kernel/vAdam/conv2d_907/bias/vAdam/dense_237/kernel/vAdam/dense_237/bias/vAdam/conv2d_908/kernel/vAdam/conv2d_908/bias/vAdam/conv2d_909/kernel/vAdam/conv2d_909/bias/vAdam/conv2d_910/kernel/vAdam/conv2d_910/bias/vAdam/conv2d_911/kernel/vAdam/conv2d_911/bias/v*E
Tin>
<2:*
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
$__inference__traced_restore_10823869��
�
�
H__inference_conv2d_908_layer_call_and_return_conditional_losses_10822275

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
-__inference_conv2d_909_layer_call_fn_10823455

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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_909_layer_call_and_return_conditional_losses_108223002
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
H__inference_conv2d_910_layer_call_and_return_conditional_losses_10823466

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������  2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
e
I__inference_reshape_475_layer_call_and_return_conditional_losses_10823410

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
�
o
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10823349

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
�
,__inference_model_237_layer_call_fn_10822383	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
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
 */
_output_shapes
:���������  *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_237_layer_call_and_return_conditional_losses_108223482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
�
H__inference_conv2d_908_layer_call_and_return_conditional_losses_10823426

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
�
e
I__inference_reshape_475_layer_call_and_return_conditional_losses_10822254

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
�
�
H__inference_conv2d_907_layer_call_and_return_conditional_losses_10823330

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
�
�
H__inference_conv2d_907_layer_call_and_return_conditional_losses_10822197

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
.__inference_reshape_474_layer_call_fn_10823376

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
I__inference_reshape_474_layer_call_and_return_conditional_losses_108222212
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
�
,__inference_model_237_layer_call_fn_10823185

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
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
 */
_output_shapes
:���������  *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_237_layer_call_and_return_conditional_losses_108223482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
,__inference_model_237_layer_call_fn_10822691	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
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
 */
_output_shapes
:���������  *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_237_layer_call_and_return_conditional_losses_108226192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
o
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10822207

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
��
�$
$__inference__traced_restore_10823869
file_prefix<
"assignvariableop_conv2d_905_kernel:0
"assignvariableop_1_conv2d_905_bias:>
$assignvariableop_2_conv2d_906_kernel:0
"assignvariableop_3_conv2d_906_bias:>
$assignvariableop_4_conv2d_907_kernel:0
"assignvariableop_5_conv2d_907_bias:5
#assignvariableop_6_dense_237_kernel:@@/
!assignvariableop_7_dense_237_bias:@>
$assignvariableop_8_conv2d_908_kernel:0
"assignvariableop_9_conv2d_908_bias:?
%assignvariableop_10_conv2d_909_kernel:1
#assignvariableop_11_conv2d_909_bias:?
%assignvariableop_12_conv2d_910_kernel:1
#assignvariableop_13_conv2d_910_bias:?
%assignvariableop_14_conv2d_911_kernel:1
#assignvariableop_15_conv2d_911_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: F
,assignvariableop_25_adam_conv2d_905_kernel_m:8
*assignvariableop_26_adam_conv2d_905_bias_m:F
,assignvariableop_27_adam_conv2d_906_kernel_m:8
*assignvariableop_28_adam_conv2d_906_bias_m:F
,assignvariableop_29_adam_conv2d_907_kernel_m:8
*assignvariableop_30_adam_conv2d_907_bias_m:=
+assignvariableop_31_adam_dense_237_kernel_m:@@7
)assignvariableop_32_adam_dense_237_bias_m:@F
,assignvariableop_33_adam_conv2d_908_kernel_m:8
*assignvariableop_34_adam_conv2d_908_bias_m:F
,assignvariableop_35_adam_conv2d_909_kernel_m:8
*assignvariableop_36_adam_conv2d_909_bias_m:F
,assignvariableop_37_adam_conv2d_910_kernel_m:8
*assignvariableop_38_adam_conv2d_910_bias_m:F
,assignvariableop_39_adam_conv2d_911_kernel_m:8
*assignvariableop_40_adam_conv2d_911_bias_m:F
,assignvariableop_41_adam_conv2d_905_kernel_v:8
*assignvariableop_42_adam_conv2d_905_bias_v:F
,assignvariableop_43_adam_conv2d_906_kernel_v:8
*assignvariableop_44_adam_conv2d_906_bias_v:F
,assignvariableop_45_adam_conv2d_907_kernel_v:8
*assignvariableop_46_adam_conv2d_907_bias_v:=
+assignvariableop_47_adam_dense_237_kernel_v:@@7
)assignvariableop_48_adam_dense_237_bias_v:@F
,assignvariableop_49_adam_conv2d_908_kernel_v:8
*assignvariableop_50_adam_conv2d_908_bias_v:F
,assignvariableop_51_adam_conv2d_909_kernel_v:8
*assignvariableop_52_adam_conv2d_909_bias_v:F
,assignvariableop_53_adam_conv2d_910_kernel_v:8
*assignvariableop_54_adam_conv2d_910_bias_v:F
,assignvariableop_55_adam_conv2d_911_kernel_v:8
*assignvariableop_56_adam_conv2d_911_bias_v:
identity_58��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9� 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value�B�:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_905_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_905_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_906_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_906_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_907_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_907_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_237_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_237_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv2d_908_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_908_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv2d_909_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_909_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_910_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_910_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv2d_911_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv2d_911_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_905_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_905_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_906_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_906_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_907_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_907_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_237_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_237_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_908_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_908_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_909_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_909_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_910_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_910_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv2d_911_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_911_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_conv2d_905_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_905_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_906_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_906_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adam_conv2d_907_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_conv2d_907_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_dense_237_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_237_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_conv2d_908_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_conv2d_908_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_conv2d_909_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_conv2d_909_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp,assignvariableop_53_adam_conv2d_910_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_conv2d_910_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55�
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_conv2d_911_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56�
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_conv2d_911_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57f
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_58�

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_58Identity_58:output:0*�
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
o
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10822161

inputs
identity�
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:���������*
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
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_conv2d_906_layer_call_and_return_conditional_losses_10822174

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
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
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10823309

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
�
o
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10822184

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
�
�
H__inference_conv2d_911_layer_call_and_return_conditional_losses_10822341

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
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
:���������  *
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_conv2d_906_layer_call_and_return_conditional_losses_10823290

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
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
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_dense_237_layer_call_and_return_conditional_losses_10823387

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
�
o
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10823264

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
�
H__inference_conv2d_909_layer_call_and_return_conditional_losses_10822300

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
�
J
.__inference_reshape_475_layer_call_fn_10823415

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
I__inference_reshape_475_layer_call_and_return_conditional_losses_108222542
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
�
�
-__inference_conv2d_910_layer_call_fn_10823475

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_910_layer_call_and_return_conditional_losses_108223252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_conv2d_905_layer_call_and_return_conditional_losses_10823250

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������  2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
��
�
G__inference_model_237_layer_call_and_return_conditional_losses_10823148

inputsC
)conv2d_905_conv2d_readvariableop_resource:8
*conv2d_905_biasadd_readvariableop_resource:C
)conv2d_906_conv2d_readvariableop_resource:8
*conv2d_906_biasadd_readvariableop_resource:C
)conv2d_907_conv2d_readvariableop_resource:8
*conv2d_907_biasadd_readvariableop_resource::
(dense_237_matmul_readvariableop_resource:@@7
)dense_237_biasadd_readvariableop_resource:@C
)conv2d_908_conv2d_readvariableop_resource:8
*conv2d_908_biasadd_readvariableop_resource:C
)conv2d_909_conv2d_readvariableop_resource:8
*conv2d_909_biasadd_readvariableop_resource:C
)conv2d_910_conv2d_readvariableop_resource:8
*conv2d_910_biasadd_readvariableop_resource:C
)conv2d_911_conv2d_readvariableop_resource:8
*conv2d_911_biasadd_readvariableop_resource:
identity��!conv2d_905/BiasAdd/ReadVariableOp� conv2d_905/Conv2D/ReadVariableOp�!conv2d_906/BiasAdd/ReadVariableOp� conv2d_906/Conv2D/ReadVariableOp�!conv2d_907/BiasAdd/ReadVariableOp� conv2d_907/Conv2D/ReadVariableOp�!conv2d_908/BiasAdd/ReadVariableOp� conv2d_908/Conv2D/ReadVariableOp�!conv2d_909/BiasAdd/ReadVariableOp� conv2d_909/Conv2D/ReadVariableOp�!conv2d_910/BiasAdd/ReadVariableOp� conv2d_910/Conv2D/ReadVariableOp�!conv2d_911/BiasAdd/ReadVariableOp� conv2d_911/Conv2D/ReadVariableOp� dense_237/BiasAdd/ReadVariableOp�dense_237/MatMul/ReadVariableOp�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice}
range_conversion_237/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_237/sub/y�
range_conversion_237/subSub3tf.__operators__.getitem_470/strided_slice:output:0#range_conversion_237/sub/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/sub�
range_conversion_237/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_237/truediv/y�
range_conversion_237/truedivRealDivrange_conversion_237/sub:z:0'range_conversion_237/truediv/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/truediv}
range_conversion_237/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_237/mul/y�
range_conversion_237/mulMul range_conversion_237/truediv:z:0#range_conversion_237/mul/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/mul}
range_conversion_237/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_237/add/y�
range_conversion_237/addAddV2range_conversion_237/mul:z:0#range_conversion_237/add/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/add�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_569/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_569/concat/axis�
tf.concat_569/concatConcatV2range_conversion_237/add:z:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_569/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_569/concat�
 conv2d_905/Conv2D/ReadVariableOpReadVariableOp)conv2d_905_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_905/Conv2D/ReadVariableOp�
conv2d_905/Conv2DConv2Dtf.concat_569/concat:output:0(conv2d_905/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_905/Conv2D�
!conv2d_905/BiasAdd/ReadVariableOpReadVariableOp*conv2d_905_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_905/BiasAdd/ReadVariableOp�
conv2d_905/BiasAddBiasAddconv2d_905/Conv2D:output:0)conv2d_905/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
conv2d_905/BiasAdd�
conv2d_905/SoftplusSoftplusconv2d_905/BiasAdd:output:0*
T0*/
_output_shapes
:���������  2
conv2d_905/Softplus�
average_pooling2d_334/AvgPoolAvgPool!conv2d_905/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_334/AvgPool�
 conv2d_906/Conv2D/ReadVariableOpReadVariableOp)conv2d_906_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_906/Conv2D/ReadVariableOp�
conv2d_906/Conv2DConv2D&average_pooling2d_334/AvgPool:output:0(conv2d_906/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_906/Conv2D�
!conv2d_906/BiasAdd/ReadVariableOpReadVariableOp*conv2d_906_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_906/BiasAdd/ReadVariableOp�
conv2d_906/BiasAddBiasAddconv2d_906/Conv2D:output:0)conv2d_906/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_906/BiasAdd�
conv2d_906/SoftplusSoftplusconv2d_906/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_906/Softplus�
average_pooling2d_335/AvgPoolAvgPool!conv2d_906/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_335/AvgPool�
 conv2d_907/Conv2D/ReadVariableOpReadVariableOp)conv2d_907_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_907/Conv2D/ReadVariableOp�
conv2d_907/Conv2DConv2D&average_pooling2d_335/AvgPool:output:0(conv2d_907/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_907/Conv2D�
!conv2d_907/BiasAdd/ReadVariableOpReadVariableOp*conv2d_907_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_907/BiasAdd/ReadVariableOp�
conv2d_907/BiasAddBiasAddconv2d_907/Conv2D:output:0)conv2d_907/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_907/BiasAdd�
conv2d_907/SoftplusSoftplusconv2d_907/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_907/Softplus�
average_pooling2d_336/AvgPoolAvgPool!conv2d_907/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_336/AvgPool|
reshape_474/ShapeShape&average_pooling2d_336/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_474/Shape�
reshape_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_474/strided_slice/stack�
!reshape_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_474/strided_slice/stack_1�
!reshape_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_474/strided_slice/stack_2�
reshape_474/strided_sliceStridedSlicereshape_474/Shape:output:0(reshape_474/strided_slice/stack:output:0*reshape_474/strided_slice/stack_1:output:0*reshape_474/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_474/strided_slice|
reshape_474/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_474/Reshape/shape/1�
reshape_474/Reshape/shapePack"reshape_474/strided_slice:output:0$reshape_474/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_474/Reshape/shape�
reshape_474/ReshapeReshape&average_pooling2d_336/AvgPool:output:0"reshape_474/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_474/Reshape�
dense_237/MatMul/ReadVariableOpReadVariableOp(dense_237_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_237/MatMul/ReadVariableOp�
dense_237/MatMulMatMulreshape_474/Reshape:output:0'dense_237/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_237/MatMul�
 dense_237/BiasAdd/ReadVariableOpReadVariableOp)dense_237_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_237/BiasAdd/ReadVariableOp�
dense_237/BiasAddBiasAdddense_237/MatMul:product:0(dense_237/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_237/BiasAdd�
dense_237/SoftplusSoftplusdense_237/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_237/Softplusv
reshape_475/ShapeShape dense_237/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_475/Shape�
reshape_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_475/strided_slice/stack�
!reshape_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_475/strided_slice/stack_1�
!reshape_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_475/strided_slice/stack_2�
reshape_475/strided_sliceStridedSlicereshape_475/Shape:output:0(reshape_475/strided_slice/stack:output:0*reshape_475/strided_slice/stack_1:output:0*reshape_475/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_475/strided_slice|
reshape_475/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_475/Reshape/shape/1|
reshape_475/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_475/Reshape/shape/2|
reshape_475/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_475/Reshape/shape/3�
reshape_475/Reshape/shapePack"reshape_475/strided_slice:output:0$reshape_475/Reshape/shape/1:output:0$reshape_475/Reshape/shape/2:output:0$reshape_475/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_475/Reshape/shape�
reshape_475/ReshapeReshape dense_237/Softplus:activations:0"reshape_475/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_475/Reshape�
tf.reshape_668/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_668/Reshape/shape�
tf.reshape_668/ReshapeReshapereshape_475/Reshape:output:0%tf.reshape_668/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_668/Reshape�
tf.tile_334/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_334/Tile/multiples�
tf.tile_334/TileTiletf.reshape_668/Reshape:output:0#tf.tile_334/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_334/Tile�
tf.reshape_669/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_669/Reshape/shape�
tf.reshape_669/ReshapeReshapetf.tile_334/Tile:output:0%tf.reshape_669/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_669/Reshapex
tf.concat_570/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_570/concat/axis�
tf.concat_570/concatConcatV2tf.reshape_669/Reshape:output:0!conv2d_907/Softplus:activations:0"tf.concat_570/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_570/concat�
 conv2d_908/Conv2D/ReadVariableOpReadVariableOp)conv2d_908_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_908/Conv2D/ReadVariableOp�
conv2d_908/Conv2DConv2Dtf.concat_570/concat:output:0(conv2d_908/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_908/Conv2D�
!conv2d_908/BiasAdd/ReadVariableOpReadVariableOp*conv2d_908_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_908/BiasAdd/ReadVariableOp�
conv2d_908/BiasAddBiasAddconv2d_908/Conv2D:output:0)conv2d_908/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_908/BiasAdd�
conv2d_908/SoftplusSoftplusconv2d_908/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_908/Softplus�
tf.reshape_670/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_670/Reshape/shape�
tf.reshape_670/ReshapeReshape!conv2d_908/Softplus:activations:0%tf.reshape_670/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_670/Reshape�
tf.tile_335/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_335/Tile/multiples�
tf.tile_335/TileTiletf.reshape_670/Reshape:output:0#tf.tile_335/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_335/Tile�
tf.reshape_671/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_671/Reshape/shape�
tf.reshape_671/ReshapeReshapetf.tile_335/Tile:output:0%tf.reshape_671/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_671/Reshapex
tf.concat_571/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_571/concat/axis�
tf.concat_571/concatConcatV2tf.reshape_671/Reshape:output:0!conv2d_906/Softplus:activations:0"tf.concat_571/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_571/concat�
 conv2d_909/Conv2D/ReadVariableOpReadVariableOp)conv2d_909_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_909/Conv2D/ReadVariableOp�
conv2d_909/Conv2DConv2Dtf.concat_571/concat:output:0(conv2d_909/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_909/Conv2D�
!conv2d_909/BiasAdd/ReadVariableOpReadVariableOp*conv2d_909_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_909/BiasAdd/ReadVariableOp�
conv2d_909/BiasAddBiasAddconv2d_909/Conv2D:output:0)conv2d_909/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_909/BiasAdd�
conv2d_909/SoftplusSoftplusconv2d_909/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_909/Softplus�
tf.reshape_672/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_672/Reshape/shape�
tf.reshape_672/ReshapeReshape!conv2d_909/Softplus:activations:0%tf.reshape_672/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_672/Reshape�
tf.tile_336/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_336/Tile/multiples�
tf.tile_336/TileTiletf.reshape_672/Reshape:output:0#tf.tile_336/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_336/Tile�
tf.reshape_673/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����           2
tf.reshape_673/Reshape/shape�
tf.reshape_673/ReshapeReshapetf.tile_336/Tile:output:0%tf.reshape_673/Reshape/shape:output:0*
T0*/
_output_shapes
:���������  2
tf.reshape_673/Reshapex
tf.concat_572/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_572/concat/axis�
tf.concat_572/concatConcatV2tf.reshape_673/Reshape:output:0!conv2d_905/Softplus:activations:0"tf.concat_572/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_572/concat�
 conv2d_910/Conv2D/ReadVariableOpReadVariableOp)conv2d_910_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_910/Conv2D/ReadVariableOp�
conv2d_910/Conv2DConv2Dtf.concat_572/concat:output:0(conv2d_910/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_910/Conv2D�
!conv2d_910/BiasAdd/ReadVariableOpReadVariableOp*conv2d_910_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_910/BiasAdd/ReadVariableOp�
conv2d_910/BiasAddBiasAddconv2d_910/Conv2D:output:0)conv2d_910/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
conv2d_910/BiasAdd�
conv2d_910/SoftplusSoftplusconv2d_910/BiasAdd:output:0*
T0*/
_output_shapes
:���������  2
conv2d_910/Softplus�
 conv2d_911/Conv2D/ReadVariableOpReadVariableOp)conv2d_911_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_911/Conv2D/ReadVariableOp�
conv2d_911/Conv2DConv2D!conv2d_910/Softplus:activations:0(conv2d_911/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_911/Conv2D�
!conv2d_911/BiasAdd/ReadVariableOpReadVariableOp*conv2d_911_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_911/BiasAdd/ReadVariableOp�
conv2d_911/BiasAddBiasAddconv2d_911/Conv2D:output:0)conv2d_911/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
conv2d_911/BiasAdd~
IdentityIdentityconv2d_911/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity�
NoOpNoOp"^conv2d_905/BiasAdd/ReadVariableOp!^conv2d_905/Conv2D/ReadVariableOp"^conv2d_906/BiasAdd/ReadVariableOp!^conv2d_906/Conv2D/ReadVariableOp"^conv2d_907/BiasAdd/ReadVariableOp!^conv2d_907/Conv2D/ReadVariableOp"^conv2d_908/BiasAdd/ReadVariableOp!^conv2d_908/Conv2D/ReadVariableOp"^conv2d_909/BiasAdd/ReadVariableOp!^conv2d_909/Conv2D/ReadVariableOp"^conv2d_910/BiasAdd/ReadVariableOp!^conv2d_910/Conv2D/ReadVariableOp"^conv2d_911/BiasAdd/ReadVariableOp!^conv2d_911/Conv2D/ReadVariableOp!^dense_237/BiasAdd/ReadVariableOp ^dense_237/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2F
!conv2d_905/BiasAdd/ReadVariableOp!conv2d_905/BiasAdd/ReadVariableOp2D
 conv2d_905/Conv2D/ReadVariableOp conv2d_905/Conv2D/ReadVariableOp2F
!conv2d_906/BiasAdd/ReadVariableOp!conv2d_906/BiasAdd/ReadVariableOp2D
 conv2d_906/Conv2D/ReadVariableOp conv2d_906/Conv2D/ReadVariableOp2F
!conv2d_907/BiasAdd/ReadVariableOp!conv2d_907/BiasAdd/ReadVariableOp2D
 conv2d_907/Conv2D/ReadVariableOp conv2d_907/Conv2D/ReadVariableOp2F
!conv2d_908/BiasAdd/ReadVariableOp!conv2d_908/BiasAdd/ReadVariableOp2D
 conv2d_908/Conv2D/ReadVariableOp conv2d_908/Conv2D/ReadVariableOp2F
!conv2d_909/BiasAdd/ReadVariableOp!conv2d_909/BiasAdd/ReadVariableOp2D
 conv2d_909/Conv2D/ReadVariableOp conv2d_909/Conv2D/ReadVariableOp2F
!conv2d_910/BiasAdd/ReadVariableOp!conv2d_910/BiasAdd/ReadVariableOp2D
 conv2d_910/Conv2D/ReadVariableOp conv2d_910/Conv2D/ReadVariableOp2F
!conv2d_911/BiasAdd/ReadVariableOp!conv2d_911/BiasAdd/ReadVariableOp2D
 conv2d_911/Conv2D/ReadVariableOp conv2d_911/Conv2D/ReadVariableOp2D
 dense_237/BiasAdd/ReadVariableOp dense_237/BiasAdd/ReadVariableOp2B
dense_237/MatMul/ReadVariableOpdense_237/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10823344

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
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_10822132

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
:���������  2
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
:���������  2	
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
:���������  2
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
:���������  2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :[ W
/
_output_shapes
:���������  
$
_user_specified_name
parameters
�v
�
G__inference_model_237_layer_call_and_return_conditional_losses_10822619

inputs-
conv2d_905_10822549:!
conv2d_905_10822551:-
conv2d_906_10822555:!
conv2d_906_10822557:-
conv2d_907_10822561:!
conv2d_907_10822563:$
dense_237_10822568:@@ 
dense_237_10822570:@-
conv2d_908_10822582:!
conv2d_908_10822584:-
conv2d_909_10822595:!
conv2d_909_10822597:-
conv2d_910_10822608:!
conv2d_910_10822610:-
conv2d_911_10822613:!
conv2d_911_10822615:
identity��"conv2d_905/StatefulPartitionedCall�"conv2d_906/StatefulPartitionedCall�"conv2d_907/StatefulPartitionedCall�"conv2d_908/StatefulPartitionedCall�"conv2d_909/StatefulPartitionedCall�"conv2d_910/StatefulPartitionedCall�"conv2d_911/StatefulPartitionedCall�!dense_237/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
$range_conversion_237/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_108221322&
$range_conversion_237/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_569/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_569/concat/axis�
tf.concat_569/concatConcatV2-range_conversion_237/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_569/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_569/concat�
"conv2d_905/StatefulPartitionedCallStatefulPartitionedCalltf.concat_569/concat:output:0conv2d_905_10822549conv2d_905_10822551*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_905_layer_call_and_return_conditional_losses_108221512$
"conv2d_905/StatefulPartitionedCall�
%average_pooling2d_334/PartitionedCallPartitionedCall+conv2d_905/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_108221612'
%average_pooling2d_334/PartitionedCall�
"conv2d_906/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_334/PartitionedCall:output:0conv2d_906_10822555conv2d_906_10822557*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_906_layer_call_and_return_conditional_losses_108221742$
"conv2d_906/StatefulPartitionedCall�
%average_pooling2d_335/PartitionedCallPartitionedCall+conv2d_906/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_108221842'
%average_pooling2d_335/PartitionedCall�
"conv2d_907/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_335/PartitionedCall:output:0conv2d_907_10822561conv2d_907_10822563*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_907_layer_call_and_return_conditional_losses_108221972$
"conv2d_907/StatefulPartitionedCall�
%average_pooling2d_336/PartitionedCallPartitionedCall+conv2d_907/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_108222072'
%average_pooling2d_336/PartitionedCall�
reshape_474/PartitionedCallPartitionedCall.average_pooling2d_336/PartitionedCall:output:0*
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
I__inference_reshape_474_layer_call_and_return_conditional_losses_108222212
reshape_474/PartitionedCall�
!dense_237/StatefulPartitionedCallStatefulPartitionedCall$reshape_474/PartitionedCall:output:0dense_237_10822568dense_237_10822570*
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
G__inference_dense_237_layer_call_and_return_conditional_losses_108222342#
!dense_237/StatefulPartitionedCall�
reshape_475/PartitionedCallPartitionedCall*dense_237/StatefulPartitionedCall:output:0*
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
I__inference_reshape_475_layer_call_and_return_conditional_losses_108222542
reshape_475/PartitionedCall�
tf.reshape_668/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_668/Reshape/shape�
tf.reshape_668/ReshapeReshape$reshape_475/PartitionedCall:output:0%tf.reshape_668/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_668/Reshape�
tf.tile_334/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_334/Tile/multiples�
tf.tile_334/TileTiletf.reshape_668/Reshape:output:0#tf.tile_334/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_334/Tile�
tf.reshape_669/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_669/Reshape/shape�
tf.reshape_669/ReshapeReshapetf.tile_334/Tile:output:0%tf.reshape_669/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_669/Reshapex
tf.concat_570/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_570/concat/axis�
tf.concat_570/concatConcatV2tf.reshape_669/Reshape:output:0+conv2d_907/StatefulPartitionedCall:output:0"tf.concat_570/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_570/concat�
"conv2d_908/StatefulPartitionedCallStatefulPartitionedCalltf.concat_570/concat:output:0conv2d_908_10822582conv2d_908_10822584*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_908_layer_call_and_return_conditional_losses_108222752$
"conv2d_908/StatefulPartitionedCall�
tf.reshape_670/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_670/Reshape/shape�
tf.reshape_670/ReshapeReshape+conv2d_908/StatefulPartitionedCall:output:0%tf.reshape_670/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_670/Reshape�
tf.tile_335/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_335/Tile/multiples�
tf.tile_335/TileTiletf.reshape_670/Reshape:output:0#tf.tile_335/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_335/Tile�
tf.reshape_671/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_671/Reshape/shape�
tf.reshape_671/ReshapeReshapetf.tile_335/Tile:output:0%tf.reshape_671/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_671/Reshapex
tf.concat_571/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_571/concat/axis�
tf.concat_571/concatConcatV2tf.reshape_671/Reshape:output:0+conv2d_906/StatefulPartitionedCall:output:0"tf.concat_571/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_571/concat�
"conv2d_909/StatefulPartitionedCallStatefulPartitionedCalltf.concat_571/concat:output:0conv2d_909_10822595conv2d_909_10822597*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_909_layer_call_and_return_conditional_losses_108223002$
"conv2d_909/StatefulPartitionedCall�
tf.reshape_672/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_672/Reshape/shape�
tf.reshape_672/ReshapeReshape+conv2d_909/StatefulPartitionedCall:output:0%tf.reshape_672/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_672/Reshape�
tf.tile_336/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_336/Tile/multiples�
tf.tile_336/TileTiletf.reshape_672/Reshape:output:0#tf.tile_336/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_336/Tile�
tf.reshape_673/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����           2
tf.reshape_673/Reshape/shape�
tf.reshape_673/ReshapeReshapetf.tile_336/Tile:output:0%tf.reshape_673/Reshape/shape:output:0*
T0*/
_output_shapes
:���������  2
tf.reshape_673/Reshapex
tf.concat_572/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_572/concat/axis�
tf.concat_572/concatConcatV2tf.reshape_673/Reshape:output:0+conv2d_905/StatefulPartitionedCall:output:0"tf.concat_572/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_572/concat�
"conv2d_910/StatefulPartitionedCallStatefulPartitionedCalltf.concat_572/concat:output:0conv2d_910_10822608conv2d_910_10822610*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_910_layer_call_and_return_conditional_losses_108223252$
"conv2d_910/StatefulPartitionedCall�
"conv2d_911/StatefulPartitionedCallStatefulPartitionedCall+conv2d_910/StatefulPartitionedCall:output:0conv2d_911_10822613conv2d_911_10822615*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_911_layer_call_and_return_conditional_losses_108223412$
"conv2d_911/StatefulPartitionedCall�
IdentityIdentity+conv2d_911/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity�
NoOpNoOp#^conv2d_905/StatefulPartitionedCall#^conv2d_906/StatefulPartitionedCall#^conv2d_907/StatefulPartitionedCall#^conv2d_908/StatefulPartitionedCall#^conv2d_909/StatefulPartitionedCall#^conv2d_910/StatefulPartitionedCall#^conv2d_911/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2H
"conv2d_905/StatefulPartitionedCall"conv2d_905/StatefulPartitionedCall2H
"conv2d_906/StatefulPartitionedCall"conv2d_906/StatefulPartitionedCall2H
"conv2d_907/StatefulPartitionedCall"conv2d_907/StatefulPartitionedCall2H
"conv2d_908/StatefulPartitionedCall"conv2d_908/StatefulPartitionedCall2H
"conv2d_909/StatefulPartitionedCall"conv2d_909/StatefulPartitionedCall2H
"conv2d_910/StatefulPartitionedCall"conv2d_910/StatefulPartitionedCall2H
"conv2d_911/StatefulPartitionedCall"conv2d_911/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
r
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_10823234

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
:���������  2
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
:���������  2	
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
:���������  2
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
:���������  2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :[ W
/
_output_shapes
:���������  
$
_user_specified_name
parameters
�
�
H__inference_conv2d_911_layer_call_and_return_conditional_losses_10823485

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
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
:���������  *
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
-__inference_conv2d_905_layer_call_fn_10823259

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_905_layer_call_and_return_conditional_losses_108221512
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_335_layer_call_fn_10823314

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
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_108220742
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
��
�
G__inference_model_237_layer_call_and_return_conditional_losses_10823026

inputsC
)conv2d_905_conv2d_readvariableop_resource:8
*conv2d_905_biasadd_readvariableop_resource:C
)conv2d_906_conv2d_readvariableop_resource:8
*conv2d_906_biasadd_readvariableop_resource:C
)conv2d_907_conv2d_readvariableop_resource:8
*conv2d_907_biasadd_readvariableop_resource::
(dense_237_matmul_readvariableop_resource:@@7
)dense_237_biasadd_readvariableop_resource:@C
)conv2d_908_conv2d_readvariableop_resource:8
*conv2d_908_biasadd_readvariableop_resource:C
)conv2d_909_conv2d_readvariableop_resource:8
*conv2d_909_biasadd_readvariableop_resource:C
)conv2d_910_conv2d_readvariableop_resource:8
*conv2d_910_biasadd_readvariableop_resource:C
)conv2d_911_conv2d_readvariableop_resource:8
*conv2d_911_biasadd_readvariableop_resource:
identity��!conv2d_905/BiasAdd/ReadVariableOp� conv2d_905/Conv2D/ReadVariableOp�!conv2d_906/BiasAdd/ReadVariableOp� conv2d_906/Conv2D/ReadVariableOp�!conv2d_907/BiasAdd/ReadVariableOp� conv2d_907/Conv2D/ReadVariableOp�!conv2d_908/BiasAdd/ReadVariableOp� conv2d_908/Conv2D/ReadVariableOp�!conv2d_909/BiasAdd/ReadVariableOp� conv2d_909/Conv2D/ReadVariableOp�!conv2d_910/BiasAdd/ReadVariableOp� conv2d_910/Conv2D/ReadVariableOp�!conv2d_911/BiasAdd/ReadVariableOp� conv2d_911/Conv2D/ReadVariableOp� dense_237/BiasAdd/ReadVariableOp�dense_237/MatMul/ReadVariableOp�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice}
range_conversion_237/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_237/sub/y�
range_conversion_237/subSub3tf.__operators__.getitem_470/strided_slice:output:0#range_conversion_237/sub/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/sub�
range_conversion_237/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_237/truediv/y�
range_conversion_237/truedivRealDivrange_conversion_237/sub:z:0'range_conversion_237/truediv/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/truediv}
range_conversion_237/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_237/mul/y�
range_conversion_237/mulMul range_conversion_237/truediv:z:0#range_conversion_237/mul/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/mul}
range_conversion_237/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_237/add/y�
range_conversion_237/addAddV2range_conversion_237/mul:z:0#range_conversion_237/add/y:output:0*
T0*/
_output_shapes
:���������  2
range_conversion_237/add�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_569/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_569/concat/axis�
tf.concat_569/concatConcatV2range_conversion_237/add:z:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_569/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_569/concat�
 conv2d_905/Conv2D/ReadVariableOpReadVariableOp)conv2d_905_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_905/Conv2D/ReadVariableOp�
conv2d_905/Conv2DConv2Dtf.concat_569/concat:output:0(conv2d_905/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_905/Conv2D�
!conv2d_905/BiasAdd/ReadVariableOpReadVariableOp*conv2d_905_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_905/BiasAdd/ReadVariableOp�
conv2d_905/BiasAddBiasAddconv2d_905/Conv2D:output:0)conv2d_905/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
conv2d_905/BiasAdd�
conv2d_905/SoftplusSoftplusconv2d_905/BiasAdd:output:0*
T0*/
_output_shapes
:���������  2
conv2d_905/Softplus�
average_pooling2d_334/AvgPoolAvgPool!conv2d_905/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_334/AvgPool�
 conv2d_906/Conv2D/ReadVariableOpReadVariableOp)conv2d_906_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_906/Conv2D/ReadVariableOp�
conv2d_906/Conv2DConv2D&average_pooling2d_334/AvgPool:output:0(conv2d_906/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_906/Conv2D�
!conv2d_906/BiasAdd/ReadVariableOpReadVariableOp*conv2d_906_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_906/BiasAdd/ReadVariableOp�
conv2d_906/BiasAddBiasAddconv2d_906/Conv2D:output:0)conv2d_906/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_906/BiasAdd�
conv2d_906/SoftplusSoftplusconv2d_906/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_906/Softplus�
average_pooling2d_335/AvgPoolAvgPool!conv2d_906/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_335/AvgPool�
 conv2d_907/Conv2D/ReadVariableOpReadVariableOp)conv2d_907_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_907/Conv2D/ReadVariableOp�
conv2d_907/Conv2DConv2D&average_pooling2d_335/AvgPool:output:0(conv2d_907/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_907/Conv2D�
!conv2d_907/BiasAdd/ReadVariableOpReadVariableOp*conv2d_907_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_907/BiasAdd/ReadVariableOp�
conv2d_907/BiasAddBiasAddconv2d_907/Conv2D:output:0)conv2d_907/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_907/BiasAdd�
conv2d_907/SoftplusSoftplusconv2d_907/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_907/Softplus�
average_pooling2d_336/AvgPoolAvgPool!conv2d_907/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_336/AvgPool|
reshape_474/ShapeShape&average_pooling2d_336/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_474/Shape�
reshape_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_474/strided_slice/stack�
!reshape_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_474/strided_slice/stack_1�
!reshape_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_474/strided_slice/stack_2�
reshape_474/strided_sliceStridedSlicereshape_474/Shape:output:0(reshape_474/strided_slice/stack:output:0*reshape_474/strided_slice/stack_1:output:0*reshape_474/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_474/strided_slice|
reshape_474/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_474/Reshape/shape/1�
reshape_474/Reshape/shapePack"reshape_474/strided_slice:output:0$reshape_474/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_474/Reshape/shape�
reshape_474/ReshapeReshape&average_pooling2d_336/AvgPool:output:0"reshape_474/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_474/Reshape�
dense_237/MatMul/ReadVariableOpReadVariableOp(dense_237_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_237/MatMul/ReadVariableOp�
dense_237/MatMulMatMulreshape_474/Reshape:output:0'dense_237/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_237/MatMul�
 dense_237/BiasAdd/ReadVariableOpReadVariableOp)dense_237_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_237/BiasAdd/ReadVariableOp�
dense_237/BiasAddBiasAdddense_237/MatMul:product:0(dense_237/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_237/BiasAdd�
dense_237/SoftplusSoftplusdense_237/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_237/Softplusv
reshape_475/ShapeShape dense_237/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_475/Shape�
reshape_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_475/strided_slice/stack�
!reshape_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_475/strided_slice/stack_1�
!reshape_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_475/strided_slice/stack_2�
reshape_475/strided_sliceStridedSlicereshape_475/Shape:output:0(reshape_475/strided_slice/stack:output:0*reshape_475/strided_slice/stack_1:output:0*reshape_475/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_475/strided_slice|
reshape_475/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_475/Reshape/shape/1|
reshape_475/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_475/Reshape/shape/2|
reshape_475/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_475/Reshape/shape/3�
reshape_475/Reshape/shapePack"reshape_475/strided_slice:output:0$reshape_475/Reshape/shape/1:output:0$reshape_475/Reshape/shape/2:output:0$reshape_475/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_475/Reshape/shape�
reshape_475/ReshapeReshape dense_237/Softplus:activations:0"reshape_475/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_475/Reshape�
tf.reshape_668/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_668/Reshape/shape�
tf.reshape_668/ReshapeReshapereshape_475/Reshape:output:0%tf.reshape_668/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_668/Reshape�
tf.tile_334/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_334/Tile/multiples�
tf.tile_334/TileTiletf.reshape_668/Reshape:output:0#tf.tile_334/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_334/Tile�
tf.reshape_669/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_669/Reshape/shape�
tf.reshape_669/ReshapeReshapetf.tile_334/Tile:output:0%tf.reshape_669/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_669/Reshapex
tf.concat_570/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_570/concat/axis�
tf.concat_570/concatConcatV2tf.reshape_669/Reshape:output:0!conv2d_907/Softplus:activations:0"tf.concat_570/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_570/concat�
 conv2d_908/Conv2D/ReadVariableOpReadVariableOp)conv2d_908_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_908/Conv2D/ReadVariableOp�
conv2d_908/Conv2DConv2Dtf.concat_570/concat:output:0(conv2d_908/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_908/Conv2D�
!conv2d_908/BiasAdd/ReadVariableOpReadVariableOp*conv2d_908_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_908/BiasAdd/ReadVariableOp�
conv2d_908/BiasAddBiasAddconv2d_908/Conv2D:output:0)conv2d_908/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_908/BiasAdd�
conv2d_908/SoftplusSoftplusconv2d_908/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_908/Softplus�
tf.reshape_670/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_670/Reshape/shape�
tf.reshape_670/ReshapeReshape!conv2d_908/Softplus:activations:0%tf.reshape_670/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_670/Reshape�
tf.tile_335/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_335/Tile/multiples�
tf.tile_335/TileTiletf.reshape_670/Reshape:output:0#tf.tile_335/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_335/Tile�
tf.reshape_671/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_671/Reshape/shape�
tf.reshape_671/ReshapeReshapetf.tile_335/Tile:output:0%tf.reshape_671/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_671/Reshapex
tf.concat_571/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_571/concat/axis�
tf.concat_571/concatConcatV2tf.reshape_671/Reshape:output:0!conv2d_906/Softplus:activations:0"tf.concat_571/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_571/concat�
 conv2d_909/Conv2D/ReadVariableOpReadVariableOp)conv2d_909_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_909/Conv2D/ReadVariableOp�
conv2d_909/Conv2DConv2Dtf.concat_571/concat:output:0(conv2d_909/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_909/Conv2D�
!conv2d_909/BiasAdd/ReadVariableOpReadVariableOp*conv2d_909_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_909/BiasAdd/ReadVariableOp�
conv2d_909/BiasAddBiasAddconv2d_909/Conv2D:output:0)conv2d_909/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_909/BiasAdd�
conv2d_909/SoftplusSoftplusconv2d_909/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_909/Softplus�
tf.reshape_672/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_672/Reshape/shape�
tf.reshape_672/ReshapeReshape!conv2d_909/Softplus:activations:0%tf.reshape_672/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_672/Reshape�
tf.tile_336/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_336/Tile/multiples�
tf.tile_336/TileTiletf.reshape_672/Reshape:output:0#tf.tile_336/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_336/Tile�
tf.reshape_673/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����           2
tf.reshape_673/Reshape/shape�
tf.reshape_673/ReshapeReshapetf.tile_336/Tile:output:0%tf.reshape_673/Reshape/shape:output:0*
T0*/
_output_shapes
:���������  2
tf.reshape_673/Reshapex
tf.concat_572/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_572/concat/axis�
tf.concat_572/concatConcatV2tf.reshape_673/Reshape:output:0!conv2d_905/Softplus:activations:0"tf.concat_572/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_572/concat�
 conv2d_910/Conv2D/ReadVariableOpReadVariableOp)conv2d_910_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_910/Conv2D/ReadVariableOp�
conv2d_910/Conv2DConv2Dtf.concat_572/concat:output:0(conv2d_910/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_910/Conv2D�
!conv2d_910/BiasAdd/ReadVariableOpReadVariableOp*conv2d_910_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_910/BiasAdd/ReadVariableOp�
conv2d_910/BiasAddBiasAddconv2d_910/Conv2D:output:0)conv2d_910/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
conv2d_910/BiasAdd�
conv2d_910/SoftplusSoftplusconv2d_910/BiasAdd:output:0*
T0*/
_output_shapes
:���������  2
conv2d_910/Softplus�
 conv2d_911/Conv2D/ReadVariableOpReadVariableOp)conv2d_911_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_911/Conv2D/ReadVariableOp�
conv2d_911/Conv2DConv2D!conv2d_910/Softplus:activations:0(conv2d_911/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
conv2d_911/Conv2D�
!conv2d_911/BiasAdd/ReadVariableOpReadVariableOp*conv2d_911_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_911/BiasAdd/ReadVariableOp�
conv2d_911/BiasAddBiasAddconv2d_911/Conv2D:output:0)conv2d_911/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
conv2d_911/BiasAdd~
IdentityIdentityconv2d_911/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity�
NoOpNoOp"^conv2d_905/BiasAdd/ReadVariableOp!^conv2d_905/Conv2D/ReadVariableOp"^conv2d_906/BiasAdd/ReadVariableOp!^conv2d_906/Conv2D/ReadVariableOp"^conv2d_907/BiasAdd/ReadVariableOp!^conv2d_907/Conv2D/ReadVariableOp"^conv2d_908/BiasAdd/ReadVariableOp!^conv2d_908/Conv2D/ReadVariableOp"^conv2d_909/BiasAdd/ReadVariableOp!^conv2d_909/Conv2D/ReadVariableOp"^conv2d_910/BiasAdd/ReadVariableOp!^conv2d_910/Conv2D/ReadVariableOp"^conv2d_911/BiasAdd/ReadVariableOp!^conv2d_911/Conv2D/ReadVariableOp!^dense_237/BiasAdd/ReadVariableOp ^dense_237/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2F
!conv2d_905/BiasAdd/ReadVariableOp!conv2d_905/BiasAdd/ReadVariableOp2D
 conv2d_905/Conv2D/ReadVariableOp conv2d_905/Conv2D/ReadVariableOp2F
!conv2d_906/BiasAdd/ReadVariableOp!conv2d_906/BiasAdd/ReadVariableOp2D
 conv2d_906/Conv2D/ReadVariableOp conv2d_906/Conv2D/ReadVariableOp2F
!conv2d_907/BiasAdd/ReadVariableOp!conv2d_907/BiasAdd/ReadVariableOp2D
 conv2d_907/Conv2D/ReadVariableOp conv2d_907/Conv2D/ReadVariableOp2F
!conv2d_908/BiasAdd/ReadVariableOp!conv2d_908/BiasAdd/ReadVariableOp2D
 conv2d_908/Conv2D/ReadVariableOp conv2d_908/Conv2D/ReadVariableOp2F
!conv2d_909/BiasAdd/ReadVariableOp!conv2d_909/BiasAdd/ReadVariableOp2D
 conv2d_909/Conv2D/ReadVariableOp conv2d_909/Conv2D/ReadVariableOp2F
!conv2d_910/BiasAdd/ReadVariableOp!conv2d_910/BiasAdd/ReadVariableOp2D
 conv2d_910/Conv2D/ReadVariableOp conv2d_910/Conv2D/ReadVariableOp2F
!conv2d_911/BiasAdd/ReadVariableOp!conv2d_911/BiasAdd/ReadVariableOp2D
 conv2d_911/Conv2D/ReadVariableOp conv2d_911/Conv2D/ReadVariableOp2D
 dense_237/BiasAdd/ReadVariableOp dense_237/BiasAdd/ReadVariableOp2B
dense_237/MatMul/ReadVariableOpdense_237/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_conv2d_905_layer_call_and_return_conditional_losses_10822151

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������  2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�u
�
!__inference__traced_save_10823688
file_prefix0
,savev2_conv2d_905_kernel_read_readvariableop.
*savev2_conv2d_905_bias_read_readvariableop0
,savev2_conv2d_906_kernel_read_readvariableop.
*savev2_conv2d_906_bias_read_readvariableop0
,savev2_conv2d_907_kernel_read_readvariableop.
*savev2_conv2d_907_bias_read_readvariableop/
+savev2_dense_237_kernel_read_readvariableop-
)savev2_dense_237_bias_read_readvariableop0
,savev2_conv2d_908_kernel_read_readvariableop.
*savev2_conv2d_908_bias_read_readvariableop0
,savev2_conv2d_909_kernel_read_readvariableop.
*savev2_conv2d_909_bias_read_readvariableop0
,savev2_conv2d_910_kernel_read_readvariableop.
*savev2_conv2d_910_bias_read_readvariableop0
,savev2_conv2d_911_kernel_read_readvariableop.
*savev2_conv2d_911_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_905_kernel_m_read_readvariableop5
1savev2_adam_conv2d_905_bias_m_read_readvariableop7
3savev2_adam_conv2d_906_kernel_m_read_readvariableop5
1savev2_adam_conv2d_906_bias_m_read_readvariableop7
3savev2_adam_conv2d_907_kernel_m_read_readvariableop5
1savev2_adam_conv2d_907_bias_m_read_readvariableop6
2savev2_adam_dense_237_kernel_m_read_readvariableop4
0savev2_adam_dense_237_bias_m_read_readvariableop7
3savev2_adam_conv2d_908_kernel_m_read_readvariableop5
1savev2_adam_conv2d_908_bias_m_read_readvariableop7
3savev2_adam_conv2d_909_kernel_m_read_readvariableop5
1savev2_adam_conv2d_909_bias_m_read_readvariableop7
3savev2_adam_conv2d_910_kernel_m_read_readvariableop5
1savev2_adam_conv2d_910_bias_m_read_readvariableop7
3savev2_adam_conv2d_911_kernel_m_read_readvariableop5
1savev2_adam_conv2d_911_bias_m_read_readvariableop7
3savev2_adam_conv2d_905_kernel_v_read_readvariableop5
1savev2_adam_conv2d_905_bias_v_read_readvariableop7
3savev2_adam_conv2d_906_kernel_v_read_readvariableop5
1savev2_adam_conv2d_906_bias_v_read_readvariableop7
3savev2_adam_conv2d_907_kernel_v_read_readvariableop5
1savev2_adam_conv2d_907_bias_v_read_readvariableop6
2savev2_adam_dense_237_kernel_v_read_readvariableop4
0savev2_adam_dense_237_bias_v_read_readvariableop7
3savev2_adam_conv2d_908_kernel_v_read_readvariableop5
1savev2_adam_conv2d_908_bias_v_read_readvariableop7
3savev2_adam_conv2d_909_kernel_v_read_readvariableop5
1savev2_adam_conv2d_909_bias_v_read_readvariableop7
3savev2_adam_conv2d_910_kernel_v_read_readvariableop5
1savev2_adam_conv2d_910_bias_v_read_readvariableop7
3savev2_adam_conv2d_911_kernel_v_read_readvariableop5
1savev2_adam_conv2d_911_bias_v_read_readvariableop
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
ShardedFilename� 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value�B�:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_905_kernel_read_readvariableop*savev2_conv2d_905_bias_read_readvariableop,savev2_conv2d_906_kernel_read_readvariableop*savev2_conv2d_906_bias_read_readvariableop,savev2_conv2d_907_kernel_read_readvariableop*savev2_conv2d_907_bias_read_readvariableop+savev2_dense_237_kernel_read_readvariableop)savev2_dense_237_bias_read_readvariableop,savev2_conv2d_908_kernel_read_readvariableop*savev2_conv2d_908_bias_read_readvariableop,savev2_conv2d_909_kernel_read_readvariableop*savev2_conv2d_909_bias_read_readvariableop,savev2_conv2d_910_kernel_read_readvariableop*savev2_conv2d_910_bias_read_readvariableop,savev2_conv2d_911_kernel_read_readvariableop*savev2_conv2d_911_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_905_kernel_m_read_readvariableop1savev2_adam_conv2d_905_bias_m_read_readvariableop3savev2_adam_conv2d_906_kernel_m_read_readvariableop1savev2_adam_conv2d_906_bias_m_read_readvariableop3savev2_adam_conv2d_907_kernel_m_read_readvariableop1savev2_adam_conv2d_907_bias_m_read_readvariableop2savev2_adam_dense_237_kernel_m_read_readvariableop0savev2_adam_dense_237_bias_m_read_readvariableop3savev2_adam_conv2d_908_kernel_m_read_readvariableop1savev2_adam_conv2d_908_bias_m_read_readvariableop3savev2_adam_conv2d_909_kernel_m_read_readvariableop1savev2_adam_conv2d_909_bias_m_read_readvariableop3savev2_adam_conv2d_910_kernel_m_read_readvariableop1savev2_adam_conv2d_910_bias_m_read_readvariableop3savev2_adam_conv2d_911_kernel_m_read_readvariableop1savev2_adam_conv2d_911_bias_m_read_readvariableop3savev2_adam_conv2d_905_kernel_v_read_readvariableop1savev2_adam_conv2d_905_bias_v_read_readvariableop3savev2_adam_conv2d_906_kernel_v_read_readvariableop1savev2_adam_conv2d_906_bias_v_read_readvariableop3savev2_adam_conv2d_907_kernel_v_read_readvariableop1savev2_adam_conv2d_907_bias_v_read_readvariableop2savev2_adam_dense_237_kernel_v_read_readvariableop0savev2_adam_dense_237_bias_v_read_readvariableop3savev2_adam_conv2d_908_kernel_v_read_readvariableop1savev2_adam_conv2d_908_bias_v_read_readvariableop3savev2_adam_conv2d_909_kernel_v_read_readvariableop1savev2_adam_conv2d_909_bias_v_read_readvariableop3savev2_adam_conv2d_910_kernel_v_read_readvariableop1savev2_adam_conv2d_910_bias_v_read_readvariableop3savev2_adam_conv2d_911_kernel_v_read_readvariableop1savev2_adam_conv2d_911_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::@@:@::::::::: : : : : : : : : :::::::@@:@:::::::::::::::@@:@::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$  

_output_shapes

:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
::$0 

_output_shapes

:@@: 1

_output_shapes
:@:,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
:: 9

_output_shapes
:::

_output_shapes
: 
�v
�
G__inference_model_237_layer_call_and_return_conditional_losses_10822859	
input-
conv2d_905_10822789:!
conv2d_905_10822791:-
conv2d_906_10822795:!
conv2d_906_10822797:-
conv2d_907_10822801:!
conv2d_907_10822803:$
dense_237_10822808:@@ 
dense_237_10822810:@-
conv2d_908_10822822:!
conv2d_908_10822824:-
conv2d_909_10822835:!
conv2d_909_10822837:-
conv2d_910_10822848:!
conv2d_910_10822850:-
conv2d_911_10822853:!
conv2d_911_10822855:
identity��"conv2d_905/StatefulPartitionedCall�"conv2d_906/StatefulPartitionedCall�"conv2d_907/StatefulPartitionedCall�"conv2d_908/StatefulPartitionedCall�"conv2d_909/StatefulPartitionedCall�"conv2d_910/StatefulPartitionedCall�"conv2d_911/StatefulPartitionedCall�!dense_237/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinput9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
$range_conversion_237/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_108221322&
$range_conversion_237/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinput9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_569/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_569/concat/axis�
tf.concat_569/concatConcatV2-range_conversion_237/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_569/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_569/concat�
"conv2d_905/StatefulPartitionedCallStatefulPartitionedCalltf.concat_569/concat:output:0conv2d_905_10822789conv2d_905_10822791*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_905_layer_call_and_return_conditional_losses_108221512$
"conv2d_905/StatefulPartitionedCall�
%average_pooling2d_334/PartitionedCallPartitionedCall+conv2d_905/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_108221612'
%average_pooling2d_334/PartitionedCall�
"conv2d_906/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_334/PartitionedCall:output:0conv2d_906_10822795conv2d_906_10822797*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_906_layer_call_and_return_conditional_losses_108221742$
"conv2d_906/StatefulPartitionedCall�
%average_pooling2d_335/PartitionedCallPartitionedCall+conv2d_906/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_108221842'
%average_pooling2d_335/PartitionedCall�
"conv2d_907/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_335/PartitionedCall:output:0conv2d_907_10822801conv2d_907_10822803*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_907_layer_call_and_return_conditional_losses_108221972$
"conv2d_907/StatefulPartitionedCall�
%average_pooling2d_336/PartitionedCallPartitionedCall+conv2d_907/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_108222072'
%average_pooling2d_336/PartitionedCall�
reshape_474/PartitionedCallPartitionedCall.average_pooling2d_336/PartitionedCall:output:0*
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
I__inference_reshape_474_layer_call_and_return_conditional_losses_108222212
reshape_474/PartitionedCall�
!dense_237/StatefulPartitionedCallStatefulPartitionedCall$reshape_474/PartitionedCall:output:0dense_237_10822808dense_237_10822810*
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
G__inference_dense_237_layer_call_and_return_conditional_losses_108222342#
!dense_237/StatefulPartitionedCall�
reshape_475/PartitionedCallPartitionedCall*dense_237/StatefulPartitionedCall:output:0*
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
I__inference_reshape_475_layer_call_and_return_conditional_losses_108222542
reshape_475/PartitionedCall�
tf.reshape_668/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_668/Reshape/shape�
tf.reshape_668/ReshapeReshape$reshape_475/PartitionedCall:output:0%tf.reshape_668/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_668/Reshape�
tf.tile_334/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_334/Tile/multiples�
tf.tile_334/TileTiletf.reshape_668/Reshape:output:0#tf.tile_334/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_334/Tile�
tf.reshape_669/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_669/Reshape/shape�
tf.reshape_669/ReshapeReshapetf.tile_334/Tile:output:0%tf.reshape_669/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_669/Reshapex
tf.concat_570/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_570/concat/axis�
tf.concat_570/concatConcatV2tf.reshape_669/Reshape:output:0+conv2d_907/StatefulPartitionedCall:output:0"tf.concat_570/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_570/concat�
"conv2d_908/StatefulPartitionedCallStatefulPartitionedCalltf.concat_570/concat:output:0conv2d_908_10822822conv2d_908_10822824*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_908_layer_call_and_return_conditional_losses_108222752$
"conv2d_908/StatefulPartitionedCall�
tf.reshape_670/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_670/Reshape/shape�
tf.reshape_670/ReshapeReshape+conv2d_908/StatefulPartitionedCall:output:0%tf.reshape_670/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_670/Reshape�
tf.tile_335/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_335/Tile/multiples�
tf.tile_335/TileTiletf.reshape_670/Reshape:output:0#tf.tile_335/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_335/Tile�
tf.reshape_671/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_671/Reshape/shape�
tf.reshape_671/ReshapeReshapetf.tile_335/Tile:output:0%tf.reshape_671/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_671/Reshapex
tf.concat_571/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_571/concat/axis�
tf.concat_571/concatConcatV2tf.reshape_671/Reshape:output:0+conv2d_906/StatefulPartitionedCall:output:0"tf.concat_571/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_571/concat�
"conv2d_909/StatefulPartitionedCallStatefulPartitionedCalltf.concat_571/concat:output:0conv2d_909_10822835conv2d_909_10822837*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_909_layer_call_and_return_conditional_losses_108223002$
"conv2d_909/StatefulPartitionedCall�
tf.reshape_672/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_672/Reshape/shape�
tf.reshape_672/ReshapeReshape+conv2d_909/StatefulPartitionedCall:output:0%tf.reshape_672/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_672/Reshape�
tf.tile_336/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_336/Tile/multiples�
tf.tile_336/TileTiletf.reshape_672/Reshape:output:0#tf.tile_336/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_336/Tile�
tf.reshape_673/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����           2
tf.reshape_673/Reshape/shape�
tf.reshape_673/ReshapeReshapetf.tile_336/Tile:output:0%tf.reshape_673/Reshape/shape:output:0*
T0*/
_output_shapes
:���������  2
tf.reshape_673/Reshapex
tf.concat_572/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_572/concat/axis�
tf.concat_572/concatConcatV2tf.reshape_673/Reshape:output:0+conv2d_905/StatefulPartitionedCall:output:0"tf.concat_572/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_572/concat�
"conv2d_910/StatefulPartitionedCallStatefulPartitionedCalltf.concat_572/concat:output:0conv2d_910_10822848conv2d_910_10822850*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_910_layer_call_and_return_conditional_losses_108223252$
"conv2d_910/StatefulPartitionedCall�
"conv2d_911/StatefulPartitionedCallStatefulPartitionedCall+conv2d_910/StatefulPartitionedCall:output:0conv2d_911_10822853conv2d_911_10822855*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_911_layer_call_and_return_conditional_losses_108223412$
"conv2d_911/StatefulPartitionedCall�
IdentityIdentity+conv2d_911/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity�
NoOpNoOp#^conv2d_905/StatefulPartitionedCall#^conv2d_906/StatefulPartitionedCall#^conv2d_907/StatefulPartitionedCall#^conv2d_908/StatefulPartitionedCall#^conv2d_909/StatefulPartitionedCall#^conv2d_910/StatefulPartitionedCall#^conv2d_911/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2H
"conv2d_905/StatefulPartitionedCall"conv2d_905/StatefulPartitionedCall2H
"conv2d_906/StatefulPartitionedCall"conv2d_906/StatefulPartitionedCall2H
"conv2d_907/StatefulPartitionedCall"conv2d_907/StatefulPartitionedCall2H
"conv2d_908/StatefulPartitionedCall"conv2d_908/StatefulPartitionedCall2H
"conv2d_909/StatefulPartitionedCall"conv2d_909/StatefulPartitionedCall2H
"conv2d_910/StatefulPartitionedCall"conv2d_910/StatefulPartitionedCall2H
"conv2d_911/StatefulPartitionedCall"conv2d_911/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�v
�
G__inference_model_237_layer_call_and_return_conditional_losses_10822775	
input-
conv2d_905_10822705:!
conv2d_905_10822707:-
conv2d_906_10822711:!
conv2d_906_10822713:-
conv2d_907_10822717:!
conv2d_907_10822719:$
dense_237_10822724:@@ 
dense_237_10822726:@-
conv2d_908_10822738:!
conv2d_908_10822740:-
conv2d_909_10822751:!
conv2d_909_10822753:-
conv2d_910_10822764:!
conv2d_910_10822766:-
conv2d_911_10822769:!
conv2d_911_10822771:
identity��"conv2d_905/StatefulPartitionedCall�"conv2d_906/StatefulPartitionedCall�"conv2d_907/StatefulPartitionedCall�"conv2d_908/StatefulPartitionedCall�"conv2d_909/StatefulPartitionedCall�"conv2d_910/StatefulPartitionedCall�"conv2d_911/StatefulPartitionedCall�!dense_237/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinput9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
$range_conversion_237/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_108221322&
$range_conversion_237/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinput9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_569/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_569/concat/axis�
tf.concat_569/concatConcatV2-range_conversion_237/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_569/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_569/concat�
"conv2d_905/StatefulPartitionedCallStatefulPartitionedCalltf.concat_569/concat:output:0conv2d_905_10822705conv2d_905_10822707*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_905_layer_call_and_return_conditional_losses_108221512$
"conv2d_905/StatefulPartitionedCall�
%average_pooling2d_334/PartitionedCallPartitionedCall+conv2d_905/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_108221612'
%average_pooling2d_334/PartitionedCall�
"conv2d_906/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_334/PartitionedCall:output:0conv2d_906_10822711conv2d_906_10822713*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_906_layer_call_and_return_conditional_losses_108221742$
"conv2d_906/StatefulPartitionedCall�
%average_pooling2d_335/PartitionedCallPartitionedCall+conv2d_906/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_108221842'
%average_pooling2d_335/PartitionedCall�
"conv2d_907/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_335/PartitionedCall:output:0conv2d_907_10822717conv2d_907_10822719*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_907_layer_call_and_return_conditional_losses_108221972$
"conv2d_907/StatefulPartitionedCall�
%average_pooling2d_336/PartitionedCallPartitionedCall+conv2d_907/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_108222072'
%average_pooling2d_336/PartitionedCall�
reshape_474/PartitionedCallPartitionedCall.average_pooling2d_336/PartitionedCall:output:0*
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
I__inference_reshape_474_layer_call_and_return_conditional_losses_108222212
reshape_474/PartitionedCall�
!dense_237/StatefulPartitionedCallStatefulPartitionedCall$reshape_474/PartitionedCall:output:0dense_237_10822724dense_237_10822726*
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
G__inference_dense_237_layer_call_and_return_conditional_losses_108222342#
!dense_237/StatefulPartitionedCall�
reshape_475/PartitionedCallPartitionedCall*dense_237/StatefulPartitionedCall:output:0*
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
I__inference_reshape_475_layer_call_and_return_conditional_losses_108222542
reshape_475/PartitionedCall�
tf.reshape_668/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_668/Reshape/shape�
tf.reshape_668/ReshapeReshape$reshape_475/PartitionedCall:output:0%tf.reshape_668/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_668/Reshape�
tf.tile_334/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_334/Tile/multiples�
tf.tile_334/TileTiletf.reshape_668/Reshape:output:0#tf.tile_334/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_334/Tile�
tf.reshape_669/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_669/Reshape/shape�
tf.reshape_669/ReshapeReshapetf.tile_334/Tile:output:0%tf.reshape_669/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_669/Reshapex
tf.concat_570/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_570/concat/axis�
tf.concat_570/concatConcatV2tf.reshape_669/Reshape:output:0+conv2d_907/StatefulPartitionedCall:output:0"tf.concat_570/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_570/concat�
"conv2d_908/StatefulPartitionedCallStatefulPartitionedCalltf.concat_570/concat:output:0conv2d_908_10822738conv2d_908_10822740*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_908_layer_call_and_return_conditional_losses_108222752$
"conv2d_908/StatefulPartitionedCall�
tf.reshape_670/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_670/Reshape/shape�
tf.reshape_670/ReshapeReshape+conv2d_908/StatefulPartitionedCall:output:0%tf.reshape_670/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_670/Reshape�
tf.tile_335/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_335/Tile/multiples�
tf.tile_335/TileTiletf.reshape_670/Reshape:output:0#tf.tile_335/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_335/Tile�
tf.reshape_671/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_671/Reshape/shape�
tf.reshape_671/ReshapeReshapetf.tile_335/Tile:output:0%tf.reshape_671/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_671/Reshapex
tf.concat_571/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_571/concat/axis�
tf.concat_571/concatConcatV2tf.reshape_671/Reshape:output:0+conv2d_906/StatefulPartitionedCall:output:0"tf.concat_571/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_571/concat�
"conv2d_909/StatefulPartitionedCallStatefulPartitionedCalltf.concat_571/concat:output:0conv2d_909_10822751conv2d_909_10822753*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_909_layer_call_and_return_conditional_losses_108223002$
"conv2d_909/StatefulPartitionedCall�
tf.reshape_672/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_672/Reshape/shape�
tf.reshape_672/ReshapeReshape+conv2d_909/StatefulPartitionedCall:output:0%tf.reshape_672/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_672/Reshape�
tf.tile_336/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_336/Tile/multiples�
tf.tile_336/TileTiletf.reshape_672/Reshape:output:0#tf.tile_336/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_336/Tile�
tf.reshape_673/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����           2
tf.reshape_673/Reshape/shape�
tf.reshape_673/ReshapeReshapetf.tile_336/Tile:output:0%tf.reshape_673/Reshape/shape:output:0*
T0*/
_output_shapes
:���������  2
tf.reshape_673/Reshapex
tf.concat_572/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_572/concat/axis�
tf.concat_572/concatConcatV2tf.reshape_673/Reshape:output:0+conv2d_905/StatefulPartitionedCall:output:0"tf.concat_572/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_572/concat�
"conv2d_910/StatefulPartitionedCallStatefulPartitionedCalltf.concat_572/concat:output:0conv2d_910_10822764conv2d_910_10822766*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_910_layer_call_and_return_conditional_losses_108223252$
"conv2d_910/StatefulPartitionedCall�
"conv2d_911/StatefulPartitionedCallStatefulPartitionedCall+conv2d_910/StatefulPartitionedCall:output:0conv2d_911_10822769conv2d_911_10822771*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_911_layer_call_and_return_conditional_losses_108223412$
"conv2d_911/StatefulPartitionedCall�
IdentityIdentity+conv2d_911/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity�
NoOpNoOp#^conv2d_905/StatefulPartitionedCall#^conv2d_906/StatefulPartitionedCall#^conv2d_907/StatefulPartitionedCall#^conv2d_908/StatefulPartitionedCall#^conv2d_909/StatefulPartitionedCall#^conv2d_910/StatefulPartitionedCall#^conv2d_911/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2H
"conv2d_905/StatefulPartitionedCall"conv2d_905/StatefulPartitionedCall2H
"conv2d_906/StatefulPartitionedCall"conv2d_906/StatefulPartitionedCall2H
"conv2d_907/StatefulPartitionedCall"conv2d_907/StatefulPartitionedCall2H
"conv2d_908/StatefulPartitionedCall"conv2d_908/StatefulPartitionedCall2H
"conv2d_909/StatefulPartitionedCall"conv2d_909/StatefulPartitionedCall2H
"conv2d_910/StatefulPartitionedCall"conv2d_910/StatefulPartitionedCall2H
"conv2d_911/StatefulPartitionedCall"conv2d_911/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
o
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10822074

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
�
�
,__inference_dense_237_layer_call_fn_10823396

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
G__inference_dense_237_layer_call_and_return_conditional_losses_108222342
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
�
�
&__inference_signature_wrapper_10822904	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
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
 */
_output_shapes
:���������  *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference__wrapped_model_108220432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
o
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10823304

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
�
H__inference_conv2d_909_layer_call_and_return_conditional_losses_10823446

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
�
�
-__inference_conv2d_907_layer_call_fn_10823339

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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_907_layer_call_and_return_conditional_losses_108221972
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
T
8__inference_average_pooling2d_335_layer_call_fn_10823319

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
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_108221842
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
�
�
-__inference_conv2d_906_layer_call_fn_10823299

inputs!
unknown:
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_906_layer_call_and_return_conditional_losses_108221742
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
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_474_layer_call_and_return_conditional_losses_10823371

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
e
I__inference_reshape_474_layer_call_and_return_conditional_losses_10822221

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
�
o
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10822052

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
-__inference_conv2d_911_layer_call_fn_10823494

inputs!
unknown:
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
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_911_layer_call_and_return_conditional_losses_108223412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_336_layer_call_fn_10823359

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
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_108222072
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
�
�
-__inference_conv2d_908_layer_call_fn_10823435

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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_908_layer_call_and_return_conditional_losses_108222752
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
T
8__inference_average_pooling2d_334_layer_call_fn_10823279

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
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_108221612
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
G__inference_dense_237_layer_call_and_return_conditional_losses_10822234

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
�
W
7__inference_range_conversion_237_layer_call_fn_10823239

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
:���������  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_108221322
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :[ W
/
_output_shapes
:���������  
$
_user_specified_name
parameters
�
�
H__inference_conv2d_910_layer_call_and_return_conditional_losses_10822325

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:���������  2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_336_layer_call_fn_10823354

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
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_108220962
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
��
�
#__inference__wrapped_model_10822043	
inputM
3model_237_conv2d_905_conv2d_readvariableop_resource:B
4model_237_conv2d_905_biasadd_readvariableop_resource:M
3model_237_conv2d_906_conv2d_readvariableop_resource:B
4model_237_conv2d_906_biasadd_readvariableop_resource:M
3model_237_conv2d_907_conv2d_readvariableop_resource:B
4model_237_conv2d_907_biasadd_readvariableop_resource:D
2model_237_dense_237_matmul_readvariableop_resource:@@A
3model_237_dense_237_biasadd_readvariableop_resource:@M
3model_237_conv2d_908_conv2d_readvariableop_resource:B
4model_237_conv2d_908_biasadd_readvariableop_resource:M
3model_237_conv2d_909_conv2d_readvariableop_resource:B
4model_237_conv2d_909_biasadd_readvariableop_resource:M
3model_237_conv2d_910_conv2d_readvariableop_resource:B
4model_237_conv2d_910_biasadd_readvariableop_resource:M
3model_237_conv2d_911_conv2d_readvariableop_resource:B
4model_237_conv2d_911_biasadd_readvariableop_resource:
identity��+model_237/conv2d_905/BiasAdd/ReadVariableOp�*model_237/conv2d_905/Conv2D/ReadVariableOp�+model_237/conv2d_906/BiasAdd/ReadVariableOp�*model_237/conv2d_906/Conv2D/ReadVariableOp�+model_237/conv2d_907/BiasAdd/ReadVariableOp�*model_237/conv2d_907/Conv2D/ReadVariableOp�+model_237/conv2d_908/BiasAdd/ReadVariableOp�*model_237/conv2d_908/Conv2D/ReadVariableOp�+model_237/conv2d_909/BiasAdd/ReadVariableOp�*model_237/conv2d_909/Conv2D/ReadVariableOp�+model_237/conv2d_910/BiasAdd/ReadVariableOp�*model_237/conv2d_910/Conv2D/ReadVariableOp�+model_237/conv2d_911/BiasAdd/ReadVariableOp�*model_237/conv2d_911/Conv2D/ReadVariableOp�*model_237/dense_237/BiasAdd/ReadVariableOp�)model_237/dense_237/MatMul/ReadVariableOp�
:model_237/tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_237/tf.__operators__.getitem_470/strided_slice/stack�
<model_237/tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_237/tf.__operators__.getitem_470/strided_slice/stack_1�
<model_237/tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_237/tf.__operators__.getitem_470/strided_slice/stack_2�
4model_237/tf.__operators__.getitem_470/strided_sliceStridedSliceinputCmodel_237/tf.__operators__.getitem_470/strided_slice/stack:output:0Emodel_237/tf.__operators__.getitem_470/strided_slice/stack_1:output:0Emodel_237/tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask26
4model_237/tf.__operators__.getitem_470/strided_slice�
$model_237/range_conversion_237/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_237/range_conversion_237/sub/y�
"model_237/range_conversion_237/subSub=model_237/tf.__operators__.getitem_470/strided_slice:output:0-model_237/range_conversion_237/sub/y:output:0*
T0*/
_output_shapes
:���������  2$
"model_237/range_conversion_237/sub�
(model_237/range_conversion_237/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_237/range_conversion_237/truediv/y�
&model_237/range_conversion_237/truedivRealDiv&model_237/range_conversion_237/sub:z:01model_237/range_conversion_237/truediv/y:output:0*
T0*/
_output_shapes
:���������  2(
&model_237/range_conversion_237/truediv�
$model_237/range_conversion_237/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_237/range_conversion_237/mul/y�
"model_237/range_conversion_237/mulMul*model_237/range_conversion_237/truediv:z:0-model_237/range_conversion_237/mul/y:output:0*
T0*/
_output_shapes
:���������  2$
"model_237/range_conversion_237/mul�
$model_237/range_conversion_237/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2&
$model_237/range_conversion_237/add/y�
"model_237/range_conversion_237/addAddV2&model_237/range_conversion_237/mul:z:0-model_237/range_conversion_237/add/y:output:0*
T0*/
_output_shapes
:���������  2$
"model_237/range_conversion_237/add�
:model_237/tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_237/tf.__operators__.getitem_471/strided_slice/stack�
<model_237/tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_237/tf.__operators__.getitem_471/strided_slice/stack_1�
<model_237/tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_237/tf.__operators__.getitem_471/strided_slice/stack_2�
4model_237/tf.__operators__.getitem_471/strided_sliceStridedSliceinputCmodel_237/tf.__operators__.getitem_471/strided_slice/stack:output:0Emodel_237/tf.__operators__.getitem_471/strided_slice/stack_1:output:0Emodel_237/tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask26
4model_237/tf.__operators__.getitem_471/strided_slice�
#model_237/tf.concat_569/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_237/tf.concat_569/concat/axis�
model_237/tf.concat_569/concatConcatV2&model_237/range_conversion_237/add:z:0=model_237/tf.__operators__.getitem_471/strided_slice:output:0,model_237/tf.concat_569/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2 
model_237/tf.concat_569/concat�
*model_237/conv2d_905/Conv2D/ReadVariableOpReadVariableOp3model_237_conv2d_905_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_237/conv2d_905/Conv2D/ReadVariableOp�
model_237/conv2d_905/Conv2DConv2D'model_237/tf.concat_569/concat:output:02model_237/conv2d_905/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
model_237/conv2d_905/Conv2D�
+model_237/conv2d_905/BiasAdd/ReadVariableOpReadVariableOp4model_237_conv2d_905_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_237/conv2d_905/BiasAdd/ReadVariableOp�
model_237/conv2d_905/BiasAddBiasAdd$model_237/conv2d_905/Conv2D:output:03model_237/conv2d_905/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
model_237/conv2d_905/BiasAdd�
model_237/conv2d_905/SoftplusSoftplus%model_237/conv2d_905/BiasAdd:output:0*
T0*/
_output_shapes
:���������  2
model_237/conv2d_905/Softplus�
'model_237/average_pooling2d_334/AvgPoolAvgPool+model_237/conv2d_905/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_237/average_pooling2d_334/AvgPool�
*model_237/conv2d_906/Conv2D/ReadVariableOpReadVariableOp3model_237_conv2d_906_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_237/conv2d_906/Conv2D/ReadVariableOp�
model_237/conv2d_906/Conv2DConv2D0model_237/average_pooling2d_334/AvgPool:output:02model_237/conv2d_906/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_237/conv2d_906/Conv2D�
+model_237/conv2d_906/BiasAdd/ReadVariableOpReadVariableOp4model_237_conv2d_906_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_237/conv2d_906/BiasAdd/ReadVariableOp�
model_237/conv2d_906/BiasAddBiasAdd$model_237/conv2d_906/Conv2D:output:03model_237/conv2d_906/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_237/conv2d_906/BiasAdd�
model_237/conv2d_906/SoftplusSoftplus%model_237/conv2d_906/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
model_237/conv2d_906/Softplus�
'model_237/average_pooling2d_335/AvgPoolAvgPool+model_237/conv2d_906/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_237/average_pooling2d_335/AvgPool�
*model_237/conv2d_907/Conv2D/ReadVariableOpReadVariableOp3model_237_conv2d_907_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_237/conv2d_907/Conv2D/ReadVariableOp�
model_237/conv2d_907/Conv2DConv2D0model_237/average_pooling2d_335/AvgPool:output:02model_237/conv2d_907/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_237/conv2d_907/Conv2D�
+model_237/conv2d_907/BiasAdd/ReadVariableOpReadVariableOp4model_237_conv2d_907_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_237/conv2d_907/BiasAdd/ReadVariableOp�
model_237/conv2d_907/BiasAddBiasAdd$model_237/conv2d_907/Conv2D:output:03model_237/conv2d_907/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_237/conv2d_907/BiasAdd�
model_237/conv2d_907/SoftplusSoftplus%model_237/conv2d_907/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
model_237/conv2d_907/Softplus�
'model_237/average_pooling2d_336/AvgPoolAvgPool+model_237/conv2d_907/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_237/average_pooling2d_336/AvgPool�
model_237/reshape_474/ShapeShape0model_237/average_pooling2d_336/AvgPool:output:0*
T0*
_output_shapes
:2
model_237/reshape_474/Shape�
)model_237/reshape_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_237/reshape_474/strided_slice/stack�
+model_237/reshape_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_237/reshape_474/strided_slice/stack_1�
+model_237/reshape_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_237/reshape_474/strided_slice/stack_2�
#model_237/reshape_474/strided_sliceStridedSlice$model_237/reshape_474/Shape:output:02model_237/reshape_474/strided_slice/stack:output:04model_237/reshape_474/strided_slice/stack_1:output:04model_237/reshape_474/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_237/reshape_474/strided_slice�
%model_237/reshape_474/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_237/reshape_474/Reshape/shape/1�
#model_237/reshape_474/Reshape/shapePack,model_237/reshape_474/strided_slice:output:0.model_237/reshape_474/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_237/reshape_474/Reshape/shape�
model_237/reshape_474/ReshapeReshape0model_237/average_pooling2d_336/AvgPool:output:0,model_237/reshape_474/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_237/reshape_474/Reshape�
)model_237/dense_237/MatMul/ReadVariableOpReadVariableOp2model_237_dense_237_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_237/dense_237/MatMul/ReadVariableOp�
model_237/dense_237/MatMulMatMul&model_237/reshape_474/Reshape:output:01model_237/dense_237/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_237/dense_237/MatMul�
*model_237/dense_237/BiasAdd/ReadVariableOpReadVariableOp3model_237_dense_237_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_237/dense_237/BiasAdd/ReadVariableOp�
model_237/dense_237/BiasAddBiasAdd$model_237/dense_237/MatMul:product:02model_237/dense_237/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_237/dense_237/BiasAdd�
model_237/dense_237/SoftplusSoftplus$model_237/dense_237/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_237/dense_237/Softplus�
model_237/reshape_475/ShapeShape*model_237/dense_237/Softplus:activations:0*
T0*
_output_shapes
:2
model_237/reshape_475/Shape�
)model_237/reshape_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_237/reshape_475/strided_slice/stack�
+model_237/reshape_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_237/reshape_475/strided_slice/stack_1�
+model_237/reshape_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_237/reshape_475/strided_slice/stack_2�
#model_237/reshape_475/strided_sliceStridedSlice$model_237/reshape_475/Shape:output:02model_237/reshape_475/strided_slice/stack:output:04model_237/reshape_475/strided_slice/stack_1:output:04model_237/reshape_475/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_237/reshape_475/strided_slice�
%model_237/reshape_475/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_237/reshape_475/Reshape/shape/1�
%model_237/reshape_475/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_237/reshape_475/Reshape/shape/2�
%model_237/reshape_475/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_237/reshape_475/Reshape/shape/3�
#model_237/reshape_475/Reshape/shapePack,model_237/reshape_475/strided_slice:output:0.model_237/reshape_475/Reshape/shape/1:output:0.model_237/reshape_475/Reshape/shape/2:output:0.model_237/reshape_475/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_237/reshape_475/Reshape/shape�
model_237/reshape_475/ReshapeReshape*model_237/dense_237/Softplus:activations:0,model_237/reshape_475/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
model_237/reshape_475/Reshape�
&model_237/tf.reshape_668/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2(
&model_237/tf.reshape_668/Reshape/shape�
 model_237/tf.reshape_668/ReshapeReshape&model_237/reshape_475/Reshape:output:0/model_237/tf.reshape_668/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2"
 model_237/tf.reshape_668/Reshape�
$model_237/tf.tile_334/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_237/tf.tile_334/Tile/multiples�
model_237/tf.tile_334/TileTile)model_237/tf.reshape_668/Reshape:output:0-model_237/tf.tile_334/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
model_237/tf.tile_334/Tile�
&model_237/tf.reshape_669/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2(
&model_237/tf.reshape_669/Reshape/shape�
 model_237/tf.reshape_669/ReshapeReshape#model_237/tf.tile_334/Tile:output:0/model_237/tf.reshape_669/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2"
 model_237/tf.reshape_669/Reshape�
#model_237/tf.concat_570/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_237/tf.concat_570/concat/axis�
model_237/tf.concat_570/concatConcatV2)model_237/tf.reshape_669/Reshape:output:0+model_237/conv2d_907/Softplus:activations:0,model_237/tf.concat_570/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_237/tf.concat_570/concat�
*model_237/conv2d_908/Conv2D/ReadVariableOpReadVariableOp3model_237_conv2d_908_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_237/conv2d_908/Conv2D/ReadVariableOp�
model_237/conv2d_908/Conv2DConv2D'model_237/tf.concat_570/concat:output:02model_237/conv2d_908/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_237/conv2d_908/Conv2D�
+model_237/conv2d_908/BiasAdd/ReadVariableOpReadVariableOp4model_237_conv2d_908_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_237/conv2d_908/BiasAdd/ReadVariableOp�
model_237/conv2d_908/BiasAddBiasAdd$model_237/conv2d_908/Conv2D:output:03model_237/conv2d_908/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_237/conv2d_908/BiasAdd�
model_237/conv2d_908/SoftplusSoftplus%model_237/conv2d_908/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
model_237/conv2d_908/Softplus�
&model_237/tf.reshape_670/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2(
&model_237/tf.reshape_670/Reshape/shape�
 model_237/tf.reshape_670/ReshapeReshape+model_237/conv2d_908/Softplus:activations:0/model_237/tf.reshape_670/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2"
 model_237/tf.reshape_670/Reshape�
$model_237/tf.tile_335/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_237/tf.tile_335/Tile/multiples�
model_237/tf.tile_335/TileTile)model_237/tf.reshape_670/Reshape:output:0-model_237/tf.tile_335/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
model_237/tf.tile_335/Tile�
&model_237/tf.reshape_671/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2(
&model_237/tf.reshape_671/Reshape/shape�
 model_237/tf.reshape_671/ReshapeReshape#model_237/tf.tile_335/Tile:output:0/model_237/tf.reshape_671/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2"
 model_237/tf.reshape_671/Reshape�
#model_237/tf.concat_571/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_237/tf.concat_571/concat/axis�
model_237/tf.concat_571/concatConcatV2)model_237/tf.reshape_671/Reshape:output:0+model_237/conv2d_906/Softplus:activations:0,model_237/tf.concat_571/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_237/tf.concat_571/concat�
*model_237/conv2d_909/Conv2D/ReadVariableOpReadVariableOp3model_237_conv2d_909_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_237/conv2d_909/Conv2D/ReadVariableOp�
model_237/conv2d_909/Conv2DConv2D'model_237/tf.concat_571/concat:output:02model_237/conv2d_909/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_237/conv2d_909/Conv2D�
+model_237/conv2d_909/BiasAdd/ReadVariableOpReadVariableOp4model_237_conv2d_909_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_237/conv2d_909/BiasAdd/ReadVariableOp�
model_237/conv2d_909/BiasAddBiasAdd$model_237/conv2d_909/Conv2D:output:03model_237/conv2d_909/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_237/conv2d_909/BiasAdd�
model_237/conv2d_909/SoftplusSoftplus%model_237/conv2d_909/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
model_237/conv2d_909/Softplus�
&model_237/tf.reshape_672/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2(
&model_237/tf.reshape_672/Reshape/shape�
 model_237/tf.reshape_672/ReshapeReshape+model_237/conv2d_909/Softplus:activations:0/model_237/tf.reshape_672/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2"
 model_237/tf.reshape_672/Reshape�
$model_237/tf.tile_336/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_237/tf.tile_336/Tile/multiples�
model_237/tf.tile_336/TileTile)model_237/tf.reshape_672/Reshape:output:0-model_237/tf.tile_336/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
model_237/tf.tile_336/Tile�
&model_237/tf.reshape_673/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����           2(
&model_237/tf.reshape_673/Reshape/shape�
 model_237/tf.reshape_673/ReshapeReshape#model_237/tf.tile_336/Tile:output:0/model_237/tf.reshape_673/Reshape/shape:output:0*
T0*/
_output_shapes
:���������  2"
 model_237/tf.reshape_673/Reshape�
#model_237/tf.concat_572/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_237/tf.concat_572/concat/axis�
model_237/tf.concat_572/concatConcatV2)model_237/tf.reshape_673/Reshape:output:0+model_237/conv2d_905/Softplus:activations:0,model_237/tf.concat_572/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2 
model_237/tf.concat_572/concat�
*model_237/conv2d_910/Conv2D/ReadVariableOpReadVariableOp3model_237_conv2d_910_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_237/conv2d_910/Conv2D/ReadVariableOp�
model_237/conv2d_910/Conv2DConv2D'model_237/tf.concat_572/concat:output:02model_237/conv2d_910/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
model_237/conv2d_910/Conv2D�
+model_237/conv2d_910/BiasAdd/ReadVariableOpReadVariableOp4model_237_conv2d_910_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_237/conv2d_910/BiasAdd/ReadVariableOp�
model_237/conv2d_910/BiasAddBiasAdd$model_237/conv2d_910/Conv2D:output:03model_237/conv2d_910/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
model_237/conv2d_910/BiasAdd�
model_237/conv2d_910/SoftplusSoftplus%model_237/conv2d_910/BiasAdd:output:0*
T0*/
_output_shapes
:���������  2
model_237/conv2d_910/Softplus�
*model_237/conv2d_911/Conv2D/ReadVariableOpReadVariableOp3model_237_conv2d_911_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_237/conv2d_911/Conv2D/ReadVariableOp�
model_237/conv2d_911/Conv2DConv2D+model_237/conv2d_910/Softplus:activations:02model_237/conv2d_911/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW*
paddingSAME*
strides
2
model_237/conv2d_911/Conv2D�
+model_237/conv2d_911/BiasAdd/ReadVariableOpReadVariableOp4model_237_conv2d_911_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_237/conv2d_911/BiasAdd/ReadVariableOp�
model_237/conv2d_911/BiasAddBiasAdd$model_237/conv2d_911/Conv2D:output:03model_237/conv2d_911/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
data_formatNCHW2
model_237/conv2d_911/BiasAdd�
IdentityIdentity%model_237/conv2d_911/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity�
NoOpNoOp,^model_237/conv2d_905/BiasAdd/ReadVariableOp+^model_237/conv2d_905/Conv2D/ReadVariableOp,^model_237/conv2d_906/BiasAdd/ReadVariableOp+^model_237/conv2d_906/Conv2D/ReadVariableOp,^model_237/conv2d_907/BiasAdd/ReadVariableOp+^model_237/conv2d_907/Conv2D/ReadVariableOp,^model_237/conv2d_908/BiasAdd/ReadVariableOp+^model_237/conv2d_908/Conv2D/ReadVariableOp,^model_237/conv2d_909/BiasAdd/ReadVariableOp+^model_237/conv2d_909/Conv2D/ReadVariableOp,^model_237/conv2d_910/BiasAdd/ReadVariableOp+^model_237/conv2d_910/Conv2D/ReadVariableOp,^model_237/conv2d_911/BiasAdd/ReadVariableOp+^model_237/conv2d_911/Conv2D/ReadVariableOp+^model_237/dense_237/BiasAdd/ReadVariableOp*^model_237/dense_237/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2Z
+model_237/conv2d_905/BiasAdd/ReadVariableOp+model_237/conv2d_905/BiasAdd/ReadVariableOp2X
*model_237/conv2d_905/Conv2D/ReadVariableOp*model_237/conv2d_905/Conv2D/ReadVariableOp2Z
+model_237/conv2d_906/BiasAdd/ReadVariableOp+model_237/conv2d_906/BiasAdd/ReadVariableOp2X
*model_237/conv2d_906/Conv2D/ReadVariableOp*model_237/conv2d_906/Conv2D/ReadVariableOp2Z
+model_237/conv2d_907/BiasAdd/ReadVariableOp+model_237/conv2d_907/BiasAdd/ReadVariableOp2X
*model_237/conv2d_907/Conv2D/ReadVariableOp*model_237/conv2d_907/Conv2D/ReadVariableOp2Z
+model_237/conv2d_908/BiasAdd/ReadVariableOp+model_237/conv2d_908/BiasAdd/ReadVariableOp2X
*model_237/conv2d_908/Conv2D/ReadVariableOp*model_237/conv2d_908/Conv2D/ReadVariableOp2Z
+model_237/conv2d_909/BiasAdd/ReadVariableOp+model_237/conv2d_909/BiasAdd/ReadVariableOp2X
*model_237/conv2d_909/Conv2D/ReadVariableOp*model_237/conv2d_909/Conv2D/ReadVariableOp2Z
+model_237/conv2d_910/BiasAdd/ReadVariableOp+model_237/conv2d_910/BiasAdd/ReadVariableOp2X
*model_237/conv2d_910/Conv2D/ReadVariableOp*model_237/conv2d_910/Conv2D/ReadVariableOp2Z
+model_237/conv2d_911/BiasAdd/ReadVariableOp+model_237/conv2d_911/BiasAdd/ReadVariableOp2X
*model_237/conv2d_911/Conv2D/ReadVariableOp*model_237/conv2d_911/Conv2D/ReadVariableOp2X
*model_237/dense_237/BiasAdd/ReadVariableOp*model_237/dense_237/BiasAdd/ReadVariableOp2V
)model_237/dense_237/MatMul/ReadVariableOp)model_237/dense_237/MatMul/ReadVariableOp:V R
/
_output_shapes
:���������  

_user_specified_nameinput
�
�
,__inference_model_237_layer_call_fn_10823222

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:@@
	unknown_6:@#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
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
 */
_output_shapes
:���������  *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_237_layer_call_and_return_conditional_losses_108226192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10823269

inputs
identity�
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:���������*
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
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_334_layer_call_fn_10823274

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
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_108220522
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
�v
�
G__inference_model_237_layer_call_and_return_conditional_losses_10822348

inputs-
conv2d_905_10822152:!
conv2d_905_10822154:-
conv2d_906_10822175:!
conv2d_906_10822177:-
conv2d_907_10822198:!
conv2d_907_10822200:$
dense_237_10822235:@@ 
dense_237_10822237:@-
conv2d_908_10822276:!
conv2d_908_10822278:-
conv2d_909_10822301:!
conv2d_909_10822303:-
conv2d_910_10822326:!
conv2d_910_10822328:-
conv2d_911_10822342:!
conv2d_911_10822344:
identity��"conv2d_905/StatefulPartitionedCall�"conv2d_906/StatefulPartitionedCall�"conv2d_907/StatefulPartitionedCall�"conv2d_908/StatefulPartitionedCall�"conv2d_909/StatefulPartitionedCall�"conv2d_910/StatefulPartitionedCall�"conv2d_911/StatefulPartitionedCall�!dense_237/StatefulPartitionedCall�
0tf.__operators__.getitem_470/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_470/strided_slice/stack�
2tf.__operators__.getitem_470/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_470/strided_slice/stack_1�
2tf.__operators__.getitem_470/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_470/strided_slice/stack_2�
*tf.__operators__.getitem_470/strided_sliceStridedSliceinputs9tf.__operators__.getitem_470/strided_slice/stack:output:0;tf.__operators__.getitem_470/strided_slice/stack_1:output:0;tf.__operators__.getitem_470/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_470/strided_slice�
$range_conversion_237/PartitionedCallPartitionedCall3tf.__operators__.getitem_470/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_108221322&
$range_conversion_237/PartitionedCall�
0tf.__operators__.getitem_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_471/strided_slice/stack�
2tf.__operators__.getitem_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_471/strided_slice/stack_1�
2tf.__operators__.getitem_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_471/strided_slice/stack_2�
*tf.__operators__.getitem_471/strided_sliceStridedSliceinputs9tf.__operators__.getitem_471/strided_slice/stack:output:0;tf.__operators__.getitem_471/strided_slice/stack_1:output:0;tf.__operators__.getitem_471/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_471/strided_slicex
tf.concat_569/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_569/concat/axis�
tf.concat_569/concatConcatV2-range_conversion_237/PartitionedCall:output:03tf.__operators__.getitem_471/strided_slice:output:0"tf.concat_569/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_569/concat�
"conv2d_905/StatefulPartitionedCallStatefulPartitionedCalltf.concat_569/concat:output:0conv2d_905_10822152conv2d_905_10822154*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_905_layer_call_and_return_conditional_losses_108221512$
"conv2d_905/StatefulPartitionedCall�
%average_pooling2d_334/PartitionedCallPartitionedCall+conv2d_905/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *\
fWRU
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_108221612'
%average_pooling2d_334/PartitionedCall�
"conv2d_906/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_334/PartitionedCall:output:0conv2d_906_10822175conv2d_906_10822177*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_906_layer_call_and_return_conditional_losses_108221742$
"conv2d_906/StatefulPartitionedCall�
%average_pooling2d_335/PartitionedCallPartitionedCall+conv2d_906/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_108221842'
%average_pooling2d_335/PartitionedCall�
"conv2d_907/StatefulPartitionedCallStatefulPartitionedCall.average_pooling2d_335/PartitionedCall:output:0conv2d_907_10822198conv2d_907_10822200*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_907_layer_call_and_return_conditional_losses_108221972$
"conv2d_907/StatefulPartitionedCall�
%average_pooling2d_336/PartitionedCallPartitionedCall+conv2d_907/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_108222072'
%average_pooling2d_336/PartitionedCall�
reshape_474/PartitionedCallPartitionedCall.average_pooling2d_336/PartitionedCall:output:0*
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
I__inference_reshape_474_layer_call_and_return_conditional_losses_108222212
reshape_474/PartitionedCall�
!dense_237/StatefulPartitionedCallStatefulPartitionedCall$reshape_474/PartitionedCall:output:0dense_237_10822235dense_237_10822237*
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
G__inference_dense_237_layer_call_and_return_conditional_losses_108222342#
!dense_237/StatefulPartitionedCall�
reshape_475/PartitionedCallPartitionedCall*dense_237/StatefulPartitionedCall:output:0*
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
I__inference_reshape_475_layer_call_and_return_conditional_losses_108222542
reshape_475/PartitionedCall�
tf.reshape_668/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_668/Reshape/shape�
tf.reshape_668/ReshapeReshape$reshape_475/PartitionedCall:output:0%tf.reshape_668/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_668/Reshape�
tf.tile_334/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_334/Tile/multiples�
tf.tile_334/TileTiletf.reshape_668/Reshape:output:0#tf.tile_334/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_334/Tile�
tf.reshape_669/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_669/Reshape/shape�
tf.reshape_669/ReshapeReshapetf.tile_334/Tile:output:0%tf.reshape_669/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_669/Reshapex
tf.concat_570/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_570/concat/axis�
tf.concat_570/concatConcatV2tf.reshape_669/Reshape:output:0+conv2d_907/StatefulPartitionedCall:output:0"tf.concat_570/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_570/concat�
"conv2d_908/StatefulPartitionedCallStatefulPartitionedCalltf.concat_570/concat:output:0conv2d_908_10822276conv2d_908_10822278*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_908_layer_call_and_return_conditional_losses_108222752$
"conv2d_908/StatefulPartitionedCall�
tf.reshape_670/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_670/Reshape/shape�
tf.reshape_670/ReshapeReshape+conv2d_908/StatefulPartitionedCall:output:0%tf.reshape_670/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_670/Reshape�
tf.tile_335/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_335/Tile/multiples�
tf.tile_335/TileTiletf.reshape_670/Reshape:output:0#tf.tile_335/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_335/Tile�
tf.reshape_671/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_671/Reshape/shape�
tf.reshape_671/ReshapeReshapetf.tile_335/Tile:output:0%tf.reshape_671/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_671/Reshapex
tf.concat_571/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_571/concat/axis�
tf.concat_571/concatConcatV2tf.reshape_671/Reshape:output:0+conv2d_906/StatefulPartitionedCall:output:0"tf.concat_571/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_571/concat�
"conv2d_909/StatefulPartitionedCallStatefulPartitionedCalltf.concat_571/concat:output:0conv2d_909_10822301conv2d_909_10822303*
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
GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_909_layer_call_and_return_conditional_losses_108223002$
"conv2d_909/StatefulPartitionedCall�
tf.reshape_672/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_672/Reshape/shape�
tf.reshape_672/ReshapeReshape+conv2d_909/StatefulPartitionedCall:output:0%tf.reshape_672/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_672/Reshape�
tf.tile_336/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_336/Tile/multiples�
tf.tile_336/TileTiletf.reshape_672/Reshape:output:0#tf.tile_336/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_336/Tile�
tf.reshape_673/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����           2
tf.reshape_673/Reshape/shape�
tf.reshape_673/ReshapeReshapetf.tile_336/Tile:output:0%tf.reshape_673/Reshape/shape:output:0*
T0*/
_output_shapes
:���������  2
tf.reshape_673/Reshapex
tf.concat_572/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_572/concat/axis�
tf.concat_572/concatConcatV2tf.reshape_673/Reshape:output:0+conv2d_905/StatefulPartitionedCall:output:0"tf.concat_572/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������  2
tf.concat_572/concat�
"conv2d_910/StatefulPartitionedCallStatefulPartitionedCalltf.concat_572/concat:output:0conv2d_910_10822326conv2d_910_10822328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_910_layer_call_and_return_conditional_losses_108223252$
"conv2d_910/StatefulPartitionedCall�
"conv2d_911/StatefulPartitionedCallStatefulPartitionedCall+conv2d_910/StatefulPartitionedCall:output:0conv2d_911_10822342conv2d_911_10822344*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_911_layer_call_and_return_conditional_losses_108223412$
"conv2d_911/StatefulPartitionedCall�
IdentityIdentity+conv2d_911/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  2

Identity�
NoOpNoOp#^conv2d_905/StatefulPartitionedCall#^conv2d_906/StatefulPartitionedCall#^conv2d_907/StatefulPartitionedCall#^conv2d_908/StatefulPartitionedCall#^conv2d_909/StatefulPartitionedCall#^conv2d_910/StatefulPartitionedCall#^conv2d_911/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2H
"conv2d_905/StatefulPartitionedCall"conv2d_905/StatefulPartitionedCall2H
"conv2d_906/StatefulPartitionedCall"conv2d_906/StatefulPartitionedCall2H
"conv2d_907/StatefulPartitionedCall"conv2d_907/StatefulPartitionedCall2H
"conv2d_908/StatefulPartitionedCall"conv2d_908/StatefulPartitionedCall2H
"conv2d_909/StatefulPartitionedCall"conv2d_909/StatefulPartitionedCall2H
"conv2d_910/StatefulPartitionedCall"conv2d_910/StatefulPartitionedCall2H
"conv2d_911/StatefulPartitionedCall"conv2d_911/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10822096

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
serving_default_input:0���������  F

conv2d_9118
StatefulPartitionedCall:0���������  tensorflow/serving/predict:�
�
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
	optimizer
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$
signatures
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
%	keras_api"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
(
+	keras_api"
_tf_keras_layer
�

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
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
(
[	keras_api"
_tf_keras_layer
�

\kernel
]bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
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
(
e	keras_api"
_tf_keras_layer
�

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
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
(
o	keras_api"
_tf_keras_layer
�

pkernel
qbias
r	variables
strainable_variables
tregularization_losses
u	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

vkernel
wbias
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
|iter

}beta_1

~beta_2
	decay
�learning_rate,m�-m�6m�7m�@m�Am�Nm�Om�\m�]m�fm�gm�pm�qm�vm�wm�,v�-v�6v�7v�@v�Av�Nv�Ov�\v�]v�fv�gv�pv�qv�vv�wv�"
	optimizer
�
,0
-1
62
73
@4
A5
N6
O7
\8
]9
f10
g11
p12
q13
v14
w15"
trackable_list_wrapper
�
,0
-1
62
73
@4
A5
N6
O7
\8
]9
f10
g11
p12
q13
v14
w15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
 	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
!trainable_variables
"regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
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
�metrics
&	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
'trainable_variables
(regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_905/kernel
: 2conv2d_905/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
.	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
/trainable_variables
0regularization_losses
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
2	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
3trainable_variables
4regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv2d_906/kernel
: 2conv2d_906/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
8	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
9trainable_variables
:regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
<	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
=trainable_variables
>regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv2d_907/kernel
: 2conv2d_907/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
B	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Ctrainable_variables
Dregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
F	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Gtrainable_variables
Hregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
J	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Ktrainable_variables
Lregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
$:"@@ 2dense_237/kernel
:@ 2dense_237/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
P	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Qtrainable_variables
Rregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
T	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
Utrainable_variables
Vregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_908/kernel
: 2conv2d_908/bias
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
^	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
_trainable_variables
`regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_909/kernel
: 2conv2d_909/bias
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
h	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
itrainable_variables
jregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_910/kernel
: 2conv2d_910/bias
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
r	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
strainable_variables
tregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv2d_911/kernel
: 2conv2d_911/bias
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
x	variables
 �layer_regularization_losses
�layer_metrics
�layers
�non_trainable_variables
ytrainable_variables
zregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
�
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
2:0 2Adam/conv2d_905/kernel/m
$:" 2Adam/conv2d_905/bias/m
2:0 2Adam/conv2d_906/kernel/m
$:" 2Adam/conv2d_906/bias/m
2:0 2Adam/conv2d_907/kernel/m
$:" 2Adam/conv2d_907/bias/m
):'@@ 2Adam/dense_237/kernel/m
#:!@ 2Adam/dense_237/bias/m
2:0 2Adam/conv2d_908/kernel/m
$:" 2Adam/conv2d_908/bias/m
2:0 2Adam/conv2d_909/kernel/m
$:" 2Adam/conv2d_909/bias/m
2:0 2Adam/conv2d_910/kernel/m
$:" 2Adam/conv2d_910/bias/m
2:0 2Adam/conv2d_911/kernel/m
$:" 2Adam/conv2d_911/bias/m
2:0 2Adam/conv2d_905/kernel/v
$:" 2Adam/conv2d_905/bias/v
2:0 2Adam/conv2d_906/kernel/v
$:" 2Adam/conv2d_906/bias/v
2:0 2Adam/conv2d_907/kernel/v
$:" 2Adam/conv2d_907/bias/v
):'@@ 2Adam/dense_237/kernel/v
#:!@ 2Adam/dense_237/bias/v
2:0 2Adam/conv2d_908/kernel/v
$:" 2Adam/conv2d_908/bias/v
2:0 2Adam/conv2d_909/kernel/v
$:" 2Adam/conv2d_909/bias/v
2:0 2Adam/conv2d_910/kernel/v
$:" 2Adam/conv2d_910/bias/v
2:0 2Adam/conv2d_911/kernel/v
$:" 2Adam/conv2d_911/bias/v
�2�
G__inference_model_237_layer_call_and_return_conditional_losses_10823026
G__inference_model_237_layer_call_and_return_conditional_losses_10823148
G__inference_model_237_layer_call_and_return_conditional_losses_10822775
G__inference_model_237_layer_call_and_return_conditional_losses_10822859�
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
,__inference_model_237_layer_call_fn_10822383
,__inference_model_237_layer_call_fn_10823185
,__inference_model_237_layer_call_fn_10823222
,__inference_model_237_layer_call_fn_10822691�
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
#__inference__wrapped_model_10822043input"�
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
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_10823234�
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
7__inference_range_conversion_237_layer_call_fn_10823239�
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
H__inference_conv2d_905_layer_call_and_return_conditional_losses_10823250�
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
-__inference_conv2d_905_layer_call_fn_10823259�
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
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10823264
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10823269�
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
8__inference_average_pooling2d_334_layer_call_fn_10823274
8__inference_average_pooling2d_334_layer_call_fn_10823279�
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
H__inference_conv2d_906_layer_call_and_return_conditional_losses_10823290�
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
-__inference_conv2d_906_layer_call_fn_10823299�
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
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10823304
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10823309�
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
8__inference_average_pooling2d_335_layer_call_fn_10823314
8__inference_average_pooling2d_335_layer_call_fn_10823319�
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
H__inference_conv2d_907_layer_call_and_return_conditional_losses_10823330�
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
-__inference_conv2d_907_layer_call_fn_10823339�
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
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10823344
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10823349�
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
8__inference_average_pooling2d_336_layer_call_fn_10823354
8__inference_average_pooling2d_336_layer_call_fn_10823359�
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
I__inference_reshape_474_layer_call_and_return_conditional_losses_10823371�
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
.__inference_reshape_474_layer_call_fn_10823376�
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
G__inference_dense_237_layer_call_and_return_conditional_losses_10823387�
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
,__inference_dense_237_layer_call_fn_10823396�
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
I__inference_reshape_475_layer_call_and_return_conditional_losses_10823410�
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
.__inference_reshape_475_layer_call_fn_10823415�
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
H__inference_conv2d_908_layer_call_and_return_conditional_losses_10823426�
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
-__inference_conv2d_908_layer_call_fn_10823435�
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
H__inference_conv2d_909_layer_call_and_return_conditional_losses_10823446�
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
-__inference_conv2d_909_layer_call_fn_10823455�
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
H__inference_conv2d_910_layer_call_and_return_conditional_losses_10823466�
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
-__inference_conv2d_910_layer_call_fn_10823475�
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
H__inference_conv2d_911_layer_call_and_return_conditional_losses_10823485�
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
-__inference_conv2d_911_layer_call_fn_10823494�
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
&__inference_signature_wrapper_10822904input"�
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
#__inference__wrapped_model_10822043�,-67@ANO\]fgpqvw6�3
,�)
'�$
input���������  
� "?�<
:

conv2d_911,�)

conv2d_911���������  �
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10823264�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
S__inference_average_pooling2d_334_layer_call_and_return_conditional_losses_10823269h7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������
� �
8__inference_average_pooling2d_334_layer_call_fn_10823274�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
8__inference_average_pooling2d_334_layer_call_fn_10823279[7�4
-�*
(�%
inputs���������  
� " �����������
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10823304�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
S__inference_average_pooling2d_335_layer_call_and_return_conditional_losses_10823309h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
8__inference_average_pooling2d_335_layer_call_fn_10823314�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
8__inference_average_pooling2d_335_layer_call_fn_10823319[7�4
-�*
(�%
inputs���������
� " �����������
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10823344�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
S__inference_average_pooling2d_336_layer_call_and_return_conditional_losses_10823349h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
8__inference_average_pooling2d_336_layer_call_fn_10823354�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
8__inference_average_pooling2d_336_layer_call_fn_10823359[7�4
-�*
(�%
inputs���������
� " �����������
H__inference_conv2d_905_layer_call_and_return_conditional_losses_10823250l,-7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������  
� �
-__inference_conv2d_905_layer_call_fn_10823259_,-7�4
-�*
(�%
inputs���������  
� " ����������  �
H__inference_conv2d_906_layer_call_and_return_conditional_losses_10823290l677�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
-__inference_conv2d_906_layer_call_fn_10823299_677�4
-�*
(�%
inputs���������
� " �����������
H__inference_conv2d_907_layer_call_and_return_conditional_losses_10823330l@A7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
-__inference_conv2d_907_layer_call_fn_10823339_@A7�4
-�*
(�%
inputs���������
� " �����������
H__inference_conv2d_908_layer_call_and_return_conditional_losses_10823426l\]7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
-__inference_conv2d_908_layer_call_fn_10823435_\]7�4
-�*
(�%
inputs���������
� " �����������
H__inference_conv2d_909_layer_call_and_return_conditional_losses_10823446lfg7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
-__inference_conv2d_909_layer_call_fn_10823455_fg7�4
-�*
(�%
inputs���������
� " �����������
H__inference_conv2d_910_layer_call_and_return_conditional_losses_10823466lpq7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������  
� �
-__inference_conv2d_910_layer_call_fn_10823475_pq7�4
-�*
(�%
inputs���������  
� " ����������  �
H__inference_conv2d_911_layer_call_and_return_conditional_losses_10823485lvw7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������  
� �
-__inference_conv2d_911_layer_call_fn_10823494_vw7�4
-�*
(�%
inputs���������  
� " ����������  �
G__inference_dense_237_layer_call_and_return_conditional_losses_10823387\NO/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� 
,__inference_dense_237_layer_call_fn_10823396ONO/�,
%�"
 �
inputs���������@
� "����������@�
G__inference_model_237_layer_call_and_return_conditional_losses_10822775�,-67@ANO\]fgpqvw>�;
4�1
'�$
input���������  
p 

 
� "-�*
#� 
0���������  
� �
G__inference_model_237_layer_call_and_return_conditional_losses_10822859�,-67@ANO\]fgpqvw>�;
4�1
'�$
input���������  
p

 
� "-�*
#� 
0���������  
� �
G__inference_model_237_layer_call_and_return_conditional_losses_10823026�,-67@ANO\]fgpqvw?�<
5�2
(�%
inputs���������  
p 

 
� "-�*
#� 
0���������  
� �
G__inference_model_237_layer_call_and_return_conditional_losses_10823148�,-67@ANO\]fgpqvw?�<
5�2
(�%
inputs���������  
p

 
� "-�*
#� 
0���������  
� �
,__inference_model_237_layer_call_fn_10822383t,-67@ANO\]fgpqvw>�;
4�1
'�$
input���������  
p 

 
� " ����������  �
,__inference_model_237_layer_call_fn_10822691t,-67@ANO\]fgpqvw>�;
4�1
'�$
input���������  
p

 
� " ����������  �
,__inference_model_237_layer_call_fn_10823185u,-67@ANO\]fgpqvw?�<
5�2
(�%
inputs���������  
p 

 
� " ����������  �
,__inference_model_237_layer_call_fn_10823222u,-67@ANO\]fgpqvw?�<
5�2
(�%
inputs���������  
p

 
� " ����������  �
R__inference_range_conversion_237_layer_call_and_return_conditional_losses_10823234l;�8
1�.
,�)

parameters���������  
� "-�*
#� 
0���������  
� �
7__inference_range_conversion_237_layer_call_fn_10823239_;�8
1�.
,�)

parameters���������  
� " ����������  �
I__inference_reshape_474_layer_call_and_return_conditional_losses_10823371`7�4
-�*
(�%
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_474_layer_call_fn_10823376S7�4
-�*
(�%
inputs���������
� "����������@�
I__inference_reshape_475_layer_call_and_return_conditional_losses_10823410`/�,
%�"
 �
inputs���������@
� "-�*
#� 
0���������
� �
.__inference_reshape_475_layer_call_fn_10823415S/�,
%�"
 �
inputs���������@
� " �����������
&__inference_signature_wrapper_10822904�,-67@ANO\]fgpqvw?�<
� 
5�2
0
input'�$
input���������  "?�<
:

conv2d_911,�)

conv2d_911���������  