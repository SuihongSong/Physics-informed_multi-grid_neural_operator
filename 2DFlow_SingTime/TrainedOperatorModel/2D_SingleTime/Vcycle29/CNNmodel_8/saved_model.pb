Л
й
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
М
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

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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.22v2.6.1-9-gc2363d6d0258і


conv2d_917/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_917/kernel

%conv2d_917/kernel/Read/ReadVariableOpReadVariableOpconv2d_917/kernel*&
_output_shapes
:*
dtype0
v
conv2d_917/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_917/bias
o
#conv2d_917/bias/Read/ReadVariableOpReadVariableOpconv2d_917/bias*
_output_shapes
:*
dtype0
|
dense_239/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_239/kernel
u
$dense_239/kernel/Read/ReadVariableOpReadVariableOpdense_239/kernel*
_output_shapes

:@@*
dtype0
t
dense_239/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_239/bias
m
"dense_239/bias/Read/ReadVariableOpReadVariableOpdense_239/bias*
_output_shapes
:@*
dtype0

conv2d_918/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_918/kernel

%conv2d_918/kernel/Read/ReadVariableOpReadVariableOpconv2d_918/kernel*&
_output_shapes
:*
dtype0
v
conv2d_918/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_918/bias
o
#conv2d_918/bias/Read/ReadVariableOpReadVariableOpconv2d_918/bias*
_output_shapes
:*
dtype0

conv2d_919/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_919/kernel

%conv2d_919/kernel/Read/ReadVariableOpReadVariableOpconv2d_919/kernel*&
_output_shapes
:*
dtype0
v
conv2d_919/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_919/bias
o
#conv2d_919/bias/Read/ReadVariableOpReadVariableOpconv2d_919/bias*
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

Adam/conv2d_917/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_917/kernel/m

,Adam/conv2d_917/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_917/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_917/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_917/bias/m
}
*Adam/conv2d_917/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_917/bias/m*
_output_shapes
:*
dtype0

Adam/dense_239/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_239/kernel/m

+Adam/dense_239/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_239/kernel/m*
_output_shapes

:@@*
dtype0

Adam/dense_239/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_239/bias/m
{
)Adam/dense_239/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_239/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_918/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_918/kernel/m

,Adam/conv2d_918/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_918/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_918/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_918/bias/m
}
*Adam/conv2d_918/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_918/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_919/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_919/kernel/m

,Adam/conv2d_919/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_919/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_919/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_919/bias/m
}
*Adam/conv2d_919/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_919/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_917/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_917/kernel/v

,Adam/conv2d_917/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_917/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_917/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_917/bias/v
}
*Adam/conv2d_917/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_917/bias/v*
_output_shapes
:*
dtype0

Adam/dense_239/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_239/kernel/v

+Adam/dense_239/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_239/kernel/v*
_output_shapes

:@@*
dtype0

Adam/dense_239/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_239/bias/v
{
)Adam/dense_239/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_239/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_918/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_918/kernel/v

,Adam/conv2d_918/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_918/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_918/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_918/bias/v
}
*Adam/conv2d_918/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_918/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_919/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_919/kernel/v

,Adam/conv2d_919/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_919/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_919/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_919/bias/v
}
*Adam/conv2d_919/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_919/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*а9
valueЦ9BУ9 BМ9
Џ
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer-7
	layer_with_weights-1
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api

	keras_api

	keras_api
h

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
R
$	variables
%trainable_variables
&regularization_losses
'	keras_api
R
(	variables
)trainable_variables
*regularization_losses
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

6	keras_api

7	keras_api

8	keras_api

9	keras_api
h

:kernel
;bias
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
р
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratemm,m-m:m;m@mAmvv,v-v:v;v@vAv
8
0
1
,2
-3
:4
;5
@6
A7
8
0
1
,2
-3
:4
;5
@6
A7
 
­
Kmetrics
	variables
Llayer_regularization_losses
Mlayer_metrics

Nlayers
Onon_trainable_variables
trainable_variables
regularization_losses
 
 
 
 
 
­
Pmetrics
	variables
Qlayer_regularization_losses
Rlayer_metrics

Slayers
Tnon_trainable_variables
trainable_variables
regularization_losses
 
 
][
VARIABLE_VALUEconv2d_917/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_917/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Umetrics
 	variables
Vlayer_regularization_losses
Wlayer_metrics

Xlayers
Ynon_trainable_variables
!trainable_variables
"regularization_losses
 
 
 
­
Zmetrics
$	variables
[layer_regularization_losses
\layer_metrics

]layers
^non_trainable_variables
%trainable_variables
&regularization_losses
 
 
 
­
_metrics
(	variables
`layer_regularization_losses
alayer_metrics

blayers
cnon_trainable_variables
)trainable_variables
*regularization_losses
\Z
VARIABLE_VALUEdense_239/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_239/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
­
dmetrics
.	variables
elayer_regularization_losses
flayer_metrics

glayers
hnon_trainable_variables
/trainable_variables
0regularization_losses
 
 
 
­
imetrics
2	variables
jlayer_regularization_losses
klayer_metrics

llayers
mnon_trainable_variables
3trainable_variables
4regularization_losses
 
 
 
 
][
VARIABLE_VALUEconv2d_918/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_918/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
­
nmetrics
<	variables
olayer_regularization_losses
player_metrics

qlayers
rnon_trainable_variables
=trainable_variables
>regularization_losses
][
VARIABLE_VALUEconv2d_919/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_919/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

@0
A1
 
­
smetrics
B	variables
tlayer_regularization_losses
ulayer_metrics

vlayers
wnon_trainable_variables
Ctrainable_variables
Dregularization_losses
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

x0
y1
 
 
v
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ztotal
	{count
|	variables
}	keras_api
G
	~total
	count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

z0
{1

|	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1

	variables
~
VARIABLE_VALUEAdam/conv2d_917/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_917/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_239/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_239/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_918/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_918/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_919/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_919/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_917/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_917/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_239/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_239/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_918/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_918/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_919/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_919/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ*
dtype0*$
shape:џџџџџџџџџ
н
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_917/kernelconv2d_917/biasdense_239/kerneldense_239/biasconv2d_918/kernelconv2d_918/biasconv2d_919/kernelconv2d_919/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 */
f*R(
&__inference_signature_wrapper_10826419
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ж
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_917/kernel/Read/ReadVariableOp#conv2d_917/bias/Read/ReadVariableOp$dense_239/kernel/Read/ReadVariableOp"dense_239/bias/Read/ReadVariableOp%conv2d_918/kernel/Read/ReadVariableOp#conv2d_918/bias/Read/ReadVariableOp%conv2d_919/kernel/Read/ReadVariableOp#conv2d_919/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_917/kernel/m/Read/ReadVariableOp*Adam/conv2d_917/bias/m/Read/ReadVariableOp+Adam/dense_239/kernel/m/Read/ReadVariableOp)Adam/dense_239/bias/m/Read/ReadVariableOp,Adam/conv2d_918/kernel/m/Read/ReadVariableOp*Adam/conv2d_918/bias/m/Read/ReadVariableOp,Adam/conv2d_919/kernel/m/Read/ReadVariableOp*Adam/conv2d_919/bias/m/Read/ReadVariableOp,Adam/conv2d_917/kernel/v/Read/ReadVariableOp*Adam/conv2d_917/bias/v/Read/ReadVariableOp+Adam/dense_239/kernel/v/Read/ReadVariableOp)Adam/dense_239/bias/v/Read/ReadVariableOp,Adam/conv2d_918/kernel/v/Read/ReadVariableOp*Adam/conv2d_918/bias/v/Read/ReadVariableOp,Adam/conv2d_919/kernel/v/Read/ReadVariableOp*Adam/conv2d_919/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU2*0,1J 8 **
f%R#
!__inference__traced_save_10826887
Н
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_917/kernelconv2d_917/biasdense_239/kerneldense_239/biasconv2d_918/kernelconv2d_918/biasconv2d_919/kernelconv2d_919/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_917/kernel/mAdam/conv2d_917/bias/mAdam/dense_239/kernel/mAdam/dense_239/bias/mAdam/conv2d_918/kernel/mAdam/conv2d_918/bias/mAdam/conv2d_919/kernel/mAdam/conv2d_919/bias/mAdam/conv2d_917/kernel/vAdam/conv2d_917/bias/vAdam/dense_239/kernel/vAdam/dense_239/bias/vAdam/conv2d_918/kernel/vAdam/conv2d_918/bias/vAdam/conv2d_919/kernel/vAdam/conv2d_919/bias/v*-
Tin&
$2"*
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
GPU2*0,1J 8 *-
f(R&
$__inference__traced_restore_10826996ью
г
o
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10825951

inputs
identityЭ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ъ
О
$__inference__traced_restore_10826996
file_prefix<
"assignvariableop_conv2d_917_kernel:0
"assignvariableop_1_conv2d_917_bias:5
#assignvariableop_2_dense_239_kernel:@@/
!assignvariableop_3_dense_239_bias:@>
$assignvariableop_4_conv2d_918_kernel:0
"assignvariableop_5_conv2d_918_bias:>
$assignvariableop_6_conv2d_919_kernel:0
"assignvariableop_7_conv2d_919_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: F
,assignvariableop_17_adam_conv2d_917_kernel_m:8
*assignvariableop_18_adam_conv2d_917_bias_m:=
+assignvariableop_19_adam_dense_239_kernel_m:@@7
)assignvariableop_20_adam_dense_239_bias_m:@F
,assignvariableop_21_adam_conv2d_918_kernel_m:8
*assignvariableop_22_adam_conv2d_918_bias_m:F
,assignvariableop_23_adam_conv2d_919_kernel_m:8
*assignvariableop_24_adam_conv2d_919_bias_m:F
,assignvariableop_25_adam_conv2d_917_kernel_v:8
*assignvariableop_26_adam_conv2d_917_bias_v:=
+assignvariableop_27_adam_dense_239_kernel_v:@@7
)assignvariableop_28_adam_dense_239_bias_v:@F
,assignvariableop_29_adam_conv2d_918_kernel_v:8
*assignvariableop_30_adam_conv2d_918_bias_v:F
,assignvariableop_31_adam_conv2d_919_kernel_v:8
*assignvariableop_32_adam_conv2d_919_bias_v:
identity_34ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ь
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*и
valueЮBЫ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesи
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЁ
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_917_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ї
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_917_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ј
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_239_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_239_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Љ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_918_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ї
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_918_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Љ
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_919_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ї
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_919_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8Ё
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ї
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11І
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ў
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ё
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ё
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ѓ
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ѓ
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Д
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_conv2d_917_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18В
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv2d_917_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Г
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_239_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Б
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_239_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Д
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_918_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22В
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_918_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Д
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_919_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24В
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_919_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Д
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_917_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26В
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_917_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Г
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_239_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Б
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_239_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Д
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_918_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30В
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_918_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Д
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_919_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32В
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_919_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpД
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33f
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_34
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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
Ў

в
,__inference_model_239_layer_call_fn_10826126	
input!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_239_layer_call_and_return_conditional_losses_108261072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
J
ь
!__inference__traced_save_10826887
file_prefix0
,savev2_conv2d_917_kernel_read_readvariableop.
*savev2_conv2d_917_bias_read_readvariableop/
+savev2_dense_239_kernel_read_readvariableop-
)savev2_dense_239_bias_read_readvariableop0
,savev2_conv2d_918_kernel_read_readvariableop.
*savev2_conv2d_918_bias_read_readvariableop0
,savev2_conv2d_919_kernel_read_readvariableop.
*savev2_conv2d_919_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_917_kernel_m_read_readvariableop5
1savev2_adam_conv2d_917_bias_m_read_readvariableop6
2savev2_adam_dense_239_kernel_m_read_readvariableop4
0savev2_adam_dense_239_bias_m_read_readvariableop7
3savev2_adam_conv2d_918_kernel_m_read_readvariableop5
1savev2_adam_conv2d_918_bias_m_read_readvariableop7
3savev2_adam_conv2d_919_kernel_m_read_readvariableop5
1savev2_adam_conv2d_919_bias_m_read_readvariableop7
3savev2_adam_conv2d_917_kernel_v_read_readvariableop5
1savev2_adam_conv2d_917_bias_v_read_readvariableop6
2savev2_adam_dense_239_kernel_v_read_readvariableop4
0savev2_adam_dense_239_bias_v_read_readvariableop7
3savev2_adam_conv2d_918_kernel_v_read_readvariableop5
1savev2_adam_conv2d_918_bias_v_read_readvariableop7
3savev2_adam_conv2d_919_kernel_v_read_readvariableop5
1savev2_adam_conv2d_919_bias_v_read_readvariableop
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
ShardedFilenameЦ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*и
valueЮBЫ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЬ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesе
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_917_kernel_read_readvariableop*savev2_conv2d_917_bias_read_readvariableop+savev2_dense_239_kernel_read_readvariableop)savev2_dense_239_bias_read_readvariableop,savev2_conv2d_918_kernel_read_readvariableop*savev2_conv2d_918_bias_read_readvariableop,savev2_conv2d_919_kernel_read_readvariableop*savev2_conv2d_919_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_917_kernel_m_read_readvariableop1savev2_adam_conv2d_917_bias_m_read_readvariableop2savev2_adam_dense_239_kernel_m_read_readvariableop0savev2_adam_dense_239_bias_m_read_readvariableop3savev2_adam_conv2d_918_kernel_m_read_readvariableop1savev2_adam_conv2d_918_bias_m_read_readvariableop3savev2_adam_conv2d_919_kernel_m_read_readvariableop1savev2_adam_conv2d_919_bias_m_read_readvariableop3savev2_adam_conv2d_917_kernel_v_read_readvariableop1savev2_adam_conv2d_917_bias_v_read_readvariableop2savev2_adam_dense_239_kernel_v_read_readvariableop0savev2_adam_dense_239_bias_v_read_readvariableop3savev2_adam_conv2d_918_kernel_v_read_readvariableop1savev2_adam_conv2d_918_bias_v_read_readvariableop3savev2_adam_conv2d_919_kernel_v_read_readvariableop1savev2_adam_conv2d_919_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
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

identity_1Identity_1:output:0*Г
_input_shapesЁ
: :::@@:@::::: : : : : : : : : :::@@:@:::::::@@:@::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::"

_output_shapes
: 
ь
T
8__inference_average_pooling2d_339_layer_call_fn_10826665

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *\
fWRU
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_108259512
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

э
#__inference__wrapped_model_10825942	
inputM
3model_239_conv2d_917_conv2d_readvariableop_resource:B
4model_239_conv2d_917_biasadd_readvariableop_resource:D
2model_239_dense_239_matmul_readvariableop_resource:@@A
3model_239_dense_239_biasadd_readvariableop_resource:@M
3model_239_conv2d_918_conv2d_readvariableop_resource:B
4model_239_conv2d_918_biasadd_readvariableop_resource:M
3model_239_conv2d_919_conv2d_readvariableop_resource:B
4model_239_conv2d_919_biasadd_readvariableop_resource:
identityЂ+model_239/conv2d_917/BiasAdd/ReadVariableOpЂ*model_239/conv2d_917/Conv2D/ReadVariableOpЂ+model_239/conv2d_918/BiasAdd/ReadVariableOpЂ*model_239/conv2d_918/Conv2D/ReadVariableOpЂ+model_239/conv2d_919/BiasAdd/ReadVariableOpЂ*model_239/conv2d_919/Conv2D/ReadVariableOpЂ*model_239/dense_239/BiasAdd/ReadVariableOpЂ)model_239/dense_239/MatMul/ReadVariableOpЩ
:model_239/tf.__operators__.getitem_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_239/tf.__operators__.getitem_474/strided_slice/stackЭ
<model_239/tf.__operators__.getitem_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_239/tf.__operators__.getitem_474/strided_slice/stack_1Э
<model_239/tf.__operators__.getitem_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_239/tf.__operators__.getitem_474/strided_slice/stack_2П
4model_239/tf.__operators__.getitem_474/strided_sliceStridedSliceinputCmodel_239/tf.__operators__.getitem_474/strided_slice/stack:output:0Emodel_239/tf.__operators__.getitem_474/strided_slice/stack_1:output:0Emodel_239/tf.__operators__.getitem_474/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask26
4model_239/tf.__operators__.getitem_474/strided_slice
$model_239/range_conversion_239/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_239/range_conversion_239/sub/yї
"model_239/range_conversion_239/subSub=model_239/tf.__operators__.getitem_474/strided_slice:output:0-model_239/range_conversion_239/sub/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2$
"model_239/range_conversion_239/sub
(model_239/range_conversion_239/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_239/range_conversion_239/truediv/y№
&model_239/range_conversion_239/truedivRealDiv&model_239/range_conversion_239/sub:z:01model_239/range_conversion_239/truediv/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2(
&model_239/range_conversion_239/truediv
$model_239/range_conversion_239/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_239/range_conversion_239/mul/yф
"model_239/range_conversion_239/mulMul*model_239/range_conversion_239/truediv:z:0-model_239/range_conversion_239/mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2$
"model_239/range_conversion_239/mul
$model_239/range_conversion_239/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2&
$model_239/range_conversion_239/add/yт
"model_239/range_conversion_239/addAddV2&model_239/range_conversion_239/mul:z:0-model_239/range_conversion_239/add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2$
"model_239/range_conversion_239/addЩ
:model_239/tf.__operators__.getitem_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_239/tf.__operators__.getitem_475/strided_slice/stackЭ
<model_239/tf.__operators__.getitem_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_239/tf.__operators__.getitem_475/strided_slice/stack_1Э
<model_239/tf.__operators__.getitem_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_239/tf.__operators__.getitem_475/strided_slice/stack_2П
4model_239/tf.__operators__.getitem_475/strided_sliceStridedSliceinputCmodel_239/tf.__operators__.getitem_475/strided_slice/stack:output:0Emodel_239/tf.__operators__.getitem_475/strided_slice/stack_1:output:0Emodel_239/tf.__operators__.getitem_475/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask26
4model_239/tf.__operators__.getitem_475/strided_slice
#model_239/tf.concat_576/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_239/tf.concat_576/concat/axisЄ
model_239/tf.concat_576/concatConcatV2&model_239/range_conversion_239/add:z:0=model_239/tf.__operators__.getitem_475/strided_slice:output:0,model_239/tf.concat_576/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2 
model_239/tf.concat_576/concatд
*model_239/conv2d_917/Conv2D/ReadVariableOpReadVariableOp3model_239_conv2d_917_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_239/conv2d_917/Conv2D/ReadVariableOp
model_239/conv2d_917/Conv2DConv2D'model_239/tf.concat_576/concat:output:02model_239/conv2d_917/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
model_239/conv2d_917/Conv2DЫ
+model_239/conv2d_917/BiasAdd/ReadVariableOpReadVariableOp4model_239_conv2d_917_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_239/conv2d_917/BiasAdd/ReadVariableOpѓ
model_239/conv2d_917/BiasAddBiasAdd$model_239/conv2d_917/Conv2D:output:03model_239/conv2d_917/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
model_239/conv2d_917/BiasAddЋ
model_239/conv2d_917/SoftplusSoftplus%model_239/conv2d_917/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
model_239/conv2d_917/Softplus
'model_239/average_pooling2d_339/AvgPoolAvgPool+model_239/conv2d_917/Softplus:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_239/average_pooling2d_339/AvgPool
model_239/reshape_478/ShapeShape0model_239/average_pooling2d_339/AvgPool:output:0*
T0*
_output_shapes
:2
model_239/reshape_478/Shape 
)model_239/reshape_478/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_239/reshape_478/strided_slice/stackЄ
+model_239/reshape_478/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_239/reshape_478/strided_slice/stack_1Є
+model_239/reshape_478/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_239/reshape_478/strided_slice/stack_2ц
#model_239/reshape_478/strided_sliceStridedSlice$model_239/reshape_478/Shape:output:02model_239/reshape_478/strided_slice/stack:output:04model_239/reshape_478/strided_slice/stack_1:output:04model_239/reshape_478/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_239/reshape_478/strided_slice
%model_239/reshape_478/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_239/reshape_478/Reshape/shape/1о
#model_239/reshape_478/Reshape/shapePack,model_239/reshape_478/strided_slice:output:0.model_239/reshape_478/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_239/reshape_478/Reshape/shapeл
model_239/reshape_478/ReshapeReshape0model_239/average_pooling2d_339/AvgPool:output:0,model_239/reshape_478/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_239/reshape_478/ReshapeЩ
)model_239/dense_239/MatMul/ReadVariableOpReadVariableOp2model_239_dense_239_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_239/dense_239/MatMul/ReadVariableOpЯ
model_239/dense_239/MatMulMatMul&model_239/reshape_478/Reshape:output:01model_239/dense_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_239/dense_239/MatMulШ
*model_239/dense_239/BiasAdd/ReadVariableOpReadVariableOp3model_239_dense_239_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_239/dense_239/BiasAdd/ReadVariableOpб
model_239/dense_239/BiasAddBiasAdd$model_239/dense_239/MatMul:product:02model_239/dense_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_239/dense_239/BiasAdd 
model_239/dense_239/SoftplusSoftplus$model_239/dense_239/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_239/dense_239/Softplus
model_239/reshape_479/ShapeShape*model_239/dense_239/Softplus:activations:0*
T0*
_output_shapes
:2
model_239/reshape_479/Shape 
)model_239/reshape_479/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_239/reshape_479/strided_slice/stackЄ
+model_239/reshape_479/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_239/reshape_479/strided_slice/stack_1Є
+model_239/reshape_479/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_239/reshape_479/strided_slice/stack_2ц
#model_239/reshape_479/strided_sliceStridedSlice$model_239/reshape_479/Shape:output:02model_239/reshape_479/strided_slice/stack:output:04model_239/reshape_479/strided_slice/stack_1:output:04model_239/reshape_479/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_239/reshape_479/strided_slice
%model_239/reshape_479/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_239/reshape_479/Reshape/shape/1
%model_239/reshape_479/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_239/reshape_479/Reshape/shape/2
%model_239/reshape_479/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_239/reshape_479/Reshape/shape/3О
#model_239/reshape_479/Reshape/shapePack,model_239/reshape_479/strided_slice:output:0.model_239/reshape_479/Reshape/shape/1:output:0.model_239/reshape_479/Reshape/shape/2:output:0.model_239/reshape_479/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_239/reshape_479/Reshape/shapeн
model_239/reshape_479/ReshapeReshape*model_239/dense_239/Softplus:activations:0,model_239/reshape_479/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
model_239/reshape_479/ReshapeБ
&model_239/tf.reshape_678/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""џџџџ               2(
&model_239/tf.reshape_678/Reshape/shapeъ
 model_239/tf.reshape_678/ReshapeReshape&model_239/reshape_479/Reshape:output:0/model_239/tf.reshape_678/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2"
 model_239/tf.reshape_678/Reshape­
$model_239/tf.tile_339/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_239/tf.tile_339/Tile/multiplesм
model_239/tf.tile_339/TileTile)model_239/tf.reshape_678/Reshape:output:0-model_239/tf.tile_339/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
model_239/tf.tile_339/TileЉ
&model_239/tf.reshape_679/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"џџџџ         2(
&model_239/tf.reshape_679/Reshape/shapeп
 model_239/tf.reshape_679/ReshapeReshape#model_239/tf.tile_339/Tile:output:0/model_239/tf.reshape_679/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2"
 model_239/tf.reshape_679/Reshape
#model_239/tf.concat_577/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_239/tf.concat_577/concat/axis
model_239/tf.concat_577/concatConcatV2)model_239/tf.reshape_679/Reshape:output:0+model_239/conv2d_917/Softplus:activations:0,model_239/tf.concat_577/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2 
model_239/tf.concat_577/concatд
*model_239/conv2d_918/Conv2D/ReadVariableOpReadVariableOp3model_239_conv2d_918_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_239/conv2d_918/Conv2D/ReadVariableOp
model_239/conv2d_918/Conv2DConv2D'model_239/tf.concat_577/concat:output:02model_239/conv2d_918/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
model_239/conv2d_918/Conv2DЫ
+model_239/conv2d_918/BiasAdd/ReadVariableOpReadVariableOp4model_239_conv2d_918_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_239/conv2d_918/BiasAdd/ReadVariableOpѓ
model_239/conv2d_918/BiasAddBiasAdd$model_239/conv2d_918/Conv2D:output:03model_239/conv2d_918/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
model_239/conv2d_918/BiasAddЋ
model_239/conv2d_918/SoftplusSoftplus%model_239/conv2d_918/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
model_239/conv2d_918/Softplusд
*model_239/conv2d_919/Conv2D/ReadVariableOpReadVariableOp3model_239_conv2d_919_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_239/conv2d_919/Conv2D/ReadVariableOp
model_239/conv2d_919/Conv2DConv2D+model_239/conv2d_918/Softplus:activations:02model_239/conv2d_919/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
model_239/conv2d_919/Conv2DЫ
+model_239/conv2d_919/BiasAdd/ReadVariableOpReadVariableOp4model_239_conv2d_919_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_239/conv2d_919/BiasAdd/ReadVariableOpѓ
model_239/conv2d_919/BiasAddBiasAdd$model_239/conv2d_919/Conv2D:output:03model_239/conv2d_919/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
model_239/conv2d_919/BiasAdd
IdentityIdentity%model_239/conv2d_919/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

IdentityИ
NoOpNoOp,^model_239/conv2d_917/BiasAdd/ReadVariableOp+^model_239/conv2d_917/Conv2D/ReadVariableOp,^model_239/conv2d_918/BiasAdd/ReadVariableOp+^model_239/conv2d_918/Conv2D/ReadVariableOp,^model_239/conv2d_919/BiasAdd/ReadVariableOp+^model_239/conv2d_919/Conv2D/ReadVariableOp+^model_239/dense_239/BiasAdd/ReadVariableOp*^model_239/dense_239/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 2Z
+model_239/conv2d_917/BiasAdd/ReadVariableOp+model_239/conv2d_917/BiasAdd/ReadVariableOp2X
*model_239/conv2d_917/Conv2D/ReadVariableOp*model_239/conv2d_917/Conv2D/ReadVariableOp2Z
+model_239/conv2d_918/BiasAdd/ReadVariableOp+model_239/conv2d_918/BiasAdd/ReadVariableOp2X
*model_239/conv2d_918/Conv2D/ReadVariableOp*model_239/conv2d_918/Conv2D/ReadVariableOp2Z
+model_239/conv2d_919/BiasAdd/ReadVariableOp+model_239/conv2d_919/BiasAdd/ReadVariableOp2X
*model_239/conv2d_919/Conv2D/ReadVariableOp*model_239/conv2d_919/Conv2D/ReadVariableOp2X
*model_239/dense_239/BiasAdd/ReadVariableOp*model_239/dense_239/BiasAdd/ReadVariableOp2V
)model_239/dense_239/MatMul/ReadVariableOp)model_239/dense_239/MatMul/ReadVariableOp:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput

e
I__inference_reshape_478_layer_call_and_return_conditional_losses_10826682

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
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ј
G__inference_dense_239_layer_call_and_return_conditional_losses_10826698

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
Ќ

H__inference_conv2d_918_layer_call_and_return_conditional_losses_10826737

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_reshape_478_layer_call_and_return_conditional_losses_10826030

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
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
№C
Ж
G__inference_model_239_layer_call_and_return_conditional_losses_10826390	
input-
conv2d_917_10826358:!
conv2d_917_10826360:$
dense_239_10826365:@@ 
dense_239_10826367:@-
conv2d_918_10826379:!
conv2d_918_10826381:-
conv2d_919_10826384:!
conv2d_919_10826386:
identityЂ"conv2d_917/StatefulPartitionedCallЂ"conv2d_918/StatefulPartitionedCallЂ"conv2d_919/StatefulPartitionedCallЂ!dense_239/StatefulPartitionedCallЕ
0tf.__operators__.getitem_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_474/strided_slice/stackЙ
2tf.__operators__.getitem_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_474/strided_slice/stack_1Й
2tf.__operators__.getitem_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_474/strided_slice/stack_2
*tf.__operators__.getitem_474/strided_sliceStridedSliceinput9tf.__operators__.getitem_474/strided_slice/stack:output:0;tf.__operators__.getitem_474/strided_slice/stack_1:output:0;tf.__operators__.getitem_474/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_474/strided_sliceД
$range_conversion_239/PartitionedCallPartitionedCall3tf.__operators__.getitem_474/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_108259872&
$range_conversion_239/PartitionedCallЕ
0tf.__operators__.getitem_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_475/strided_slice/stackЙ
2tf.__operators__.getitem_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_475/strided_slice/stack_1Й
2tf.__operators__.getitem_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_475/strided_slice/stack_2
*tf.__operators__.getitem_475/strided_sliceStridedSliceinput9tf.__operators__.getitem_475/strided_slice/stack:output:0;tf.__operators__.getitem_475/strided_slice/stack_1:output:0;tf.__operators__.getitem_475/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_475/strided_slicex
tf.concat_576/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_576/concat/axis
tf.concat_576/concatConcatV2-range_conversion_239/PartitionedCall:output:03tf.__operators__.getitem_475/strided_slice:output:0"tf.concat_576/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_576/concatШ
"conv2d_917/StatefulPartitionedCallStatefulPartitionedCalltf.concat_576/concat:output:0conv2d_917_10826358conv2d_917_10826360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_917_layer_call_and_return_conditional_losses_108260062$
"conv2d_917/StatefulPartitionedCallЏ
%average_pooling2d_339/PartitionedCallPartitionedCall+conv2d_917/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *\
fWRU
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_108260162'
%average_pooling2d_339/PartitionedCall
reshape_478/PartitionedCallPartitionedCall.average_pooling2d_339/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_478_layer_call_and_return_conditional_losses_108260302
reshape_478/PartitionedCallТ
!dense_239/StatefulPartitionedCallStatefulPartitionedCall$reshape_478/PartitionedCall:output:0dense_239_10826365dense_239_10826367*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_239_layer_call_and_return_conditional_losses_108260432#
!dense_239/StatefulPartitionedCall
reshape_479/PartitionedCallPartitionedCall*dense_239/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_479_layer_call_and_return_conditional_losses_108260632
reshape_479/PartitionedCall
tf.reshape_678/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""џџџџ               2
tf.reshape_678/Reshape/shapeЪ
tf.reshape_678/ReshapeReshape$reshape_479/PartitionedCall:output:0%tf.reshape_678/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.reshape_678/Reshape
tf.tile_339/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_339/Tile/multiplesД
tf.tile_339/TileTiletf.reshape_678/Reshape:output:0#tf.tile_339/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.tile_339/Tile
tf.reshape_679/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"џџџџ         2
tf.reshape_679/Reshape/shapeЗ
tf.reshape_679/ReshapeReshapetf.tile_339/Tile:output:0%tf.reshape_679/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.reshape_679/Reshapex
tf.concat_577/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_577/concat/axisэ
tf.concat_577/concatConcatV2tf.reshape_679/Reshape:output:0+conv2d_917/StatefulPartitionedCall:output:0"tf.concat_577/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_577/concatШ
"conv2d_918/StatefulPartitionedCallStatefulPartitionedCalltf.concat_577/concat:output:0conv2d_918_10826379conv2d_918_10826381*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_918_layer_call_and_return_conditional_losses_108260842$
"conv2d_918/StatefulPartitionedCallж
"conv2d_919/StatefulPartitionedCallStatefulPartitionedCall+conv2d_918/StatefulPartitionedCall:output:0conv2d_919_10826384conv2d_919_10826386*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_919_layer_call_and_return_conditional_losses_108261002$
"conv2d_919/StatefulPartitionedCall
IdentityIdentity+conv2d_919/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityс
NoOpNoOp#^conv2d_917/StatefulPartitionedCall#^conv2d_918/StatefulPartitionedCall#^conv2d_919/StatefulPartitionedCall"^dense_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 2H
"conv2d_917/StatefulPartitionedCall"conv2d_917/StatefulPartitionedCall2H
"conv2d_918/StatefulPartitionedCall"conv2d_918/StatefulPartitionedCall2H
"conv2d_919/StatefulPartitionedCall"conv2d_919/StatefulPartitionedCall2F
!dense_239/StatefulPartitionedCall!dense_239/StatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
И

H__inference_conv2d_919_layer_call_and_return_conditional_losses_10826756

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Їm
ђ
G__inference_model_239_layer_call_and_return_conditional_losses_10826495

inputsC
)conv2d_917_conv2d_readvariableop_resource:8
*conv2d_917_biasadd_readvariableop_resource::
(dense_239_matmul_readvariableop_resource:@@7
)dense_239_biasadd_readvariableop_resource:@C
)conv2d_918_conv2d_readvariableop_resource:8
*conv2d_918_biasadd_readvariableop_resource:C
)conv2d_919_conv2d_readvariableop_resource:8
*conv2d_919_biasadd_readvariableop_resource:
identityЂ!conv2d_917/BiasAdd/ReadVariableOpЂ conv2d_917/Conv2D/ReadVariableOpЂ!conv2d_918/BiasAdd/ReadVariableOpЂ conv2d_918/Conv2D/ReadVariableOpЂ!conv2d_919/BiasAdd/ReadVariableOpЂ conv2d_919/Conv2D/ReadVariableOpЂ dense_239/BiasAdd/ReadVariableOpЂdense_239/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_474/strided_slice/stackЙ
2tf.__operators__.getitem_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_474/strided_slice/stack_1Й
2tf.__operators__.getitem_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_474/strided_slice/stack_2
*tf.__operators__.getitem_474/strided_sliceStridedSliceinputs9tf.__operators__.getitem_474/strided_slice/stack:output:0;tf.__operators__.getitem_474/strided_slice/stack_1:output:0;tf.__operators__.getitem_474/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_474/strided_slice}
range_conversion_239/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_239/sub/yЯ
range_conversion_239/subSub3tf.__operators__.getitem_474/strided_slice:output:0#range_conversion_239/sub/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/sub
range_conversion_239/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_239/truediv/yШ
range_conversion_239/truedivRealDivrange_conversion_239/sub:z:0'range_conversion_239/truediv/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/truediv}
range_conversion_239/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_239/mul/yМ
range_conversion_239/mulMul range_conversion_239/truediv:z:0#range_conversion_239/mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/mul}
range_conversion_239/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_239/add/yК
range_conversion_239/addAddV2range_conversion_239/mul:z:0#range_conversion_239/add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/addЕ
0tf.__operators__.getitem_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_475/strided_slice/stackЙ
2tf.__operators__.getitem_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_475/strided_slice/stack_1Й
2tf.__operators__.getitem_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_475/strided_slice/stack_2
*tf.__operators__.getitem_475/strided_sliceStridedSliceinputs9tf.__operators__.getitem_475/strided_slice/stack:output:0;tf.__operators__.getitem_475/strided_slice/stack_1:output:0;tf.__operators__.getitem_475/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_475/strided_slicex
tf.concat_576/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_576/concat/axisђ
tf.concat_576/concatConcatV2range_conversion_239/add:z:03tf.__operators__.getitem_475/strided_slice:output:0"tf.concat_576/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_576/concatЖ
 conv2d_917/Conv2D/ReadVariableOpReadVariableOp)conv2d_917_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_917/Conv2D/ReadVariableOpђ
conv2d_917/Conv2DConv2Dtf.concat_576/concat:output:0(conv2d_917/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_917/Conv2D­
!conv2d_917/BiasAdd/ReadVariableOpReadVariableOp*conv2d_917_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_917/BiasAdd/ReadVariableOpЫ
conv2d_917/BiasAddBiasAddconv2d_917/Conv2D:output:0)conv2d_917/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_917/BiasAdd
conv2d_917/SoftplusSoftplusconv2d_917/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_917/Softplusљ
average_pooling2d_339/AvgPoolAvgPool!conv2d_917/Softplus:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_339/AvgPool|
reshape_478/ShapeShape&average_pooling2d_339/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_478/Shape
reshape_478/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_478/strided_slice/stack
!reshape_478/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_478/strided_slice/stack_1
!reshape_478/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_478/strided_slice/stack_2Њ
reshape_478/strided_sliceStridedSlicereshape_478/Shape:output:0(reshape_478/strided_slice/stack:output:0*reshape_478/strided_slice/stack_1:output:0*reshape_478/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_478/strided_slice|
reshape_478/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_478/Reshape/shape/1Ж
reshape_478/Reshape/shapePack"reshape_478/strided_slice:output:0$reshape_478/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_478/Reshape/shapeГ
reshape_478/ReshapeReshape&average_pooling2d_339/AvgPool:output:0"reshape_478/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_478/ReshapeЋ
dense_239/MatMul/ReadVariableOpReadVariableOp(dense_239_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_239/MatMul/ReadVariableOpЇ
dense_239/MatMulMatMulreshape_478/Reshape:output:0'dense_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_239/MatMulЊ
 dense_239/BiasAdd/ReadVariableOpReadVariableOp)dense_239_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_239/BiasAdd/ReadVariableOpЉ
dense_239/BiasAddBiasAdddense_239/MatMul:product:0(dense_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_239/BiasAdd
dense_239/SoftplusSoftplusdense_239/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_239/Softplusv
reshape_479/ShapeShape dense_239/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_479/Shape
reshape_479/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_479/strided_slice/stack
!reshape_479/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_479/strided_slice/stack_1
!reshape_479/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_479/strided_slice/stack_2Њ
reshape_479/strided_sliceStridedSlicereshape_479/Shape:output:0(reshape_479/strided_slice/stack:output:0*reshape_479/strided_slice/stack_1:output:0*reshape_479/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_479/strided_slice|
reshape_479/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_479/Reshape/shape/1|
reshape_479/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_479/Reshape/shape/2|
reshape_479/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_479/Reshape/shape/3
reshape_479/Reshape/shapePack"reshape_479/strided_slice:output:0$reshape_479/Reshape/shape/1:output:0$reshape_479/Reshape/shape/2:output:0$reshape_479/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_479/Reshape/shapeЕ
reshape_479/ReshapeReshape dense_239/Softplus:activations:0"reshape_479/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
reshape_479/Reshape
tf.reshape_678/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""џџџџ               2
tf.reshape_678/Reshape/shapeТ
tf.reshape_678/ReshapeReshapereshape_479/Reshape:output:0%tf.reshape_678/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.reshape_678/Reshape
tf.tile_339/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_339/Tile/multiplesД
tf.tile_339/TileTiletf.reshape_678/Reshape:output:0#tf.tile_339/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.tile_339/Tile
tf.reshape_679/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"џџџџ         2
tf.reshape_679/Reshape/shapeЗ
tf.reshape_679/ReshapeReshapetf.tile_339/Tile:output:0%tf.reshape_679/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.reshape_679/Reshapex
tf.concat_577/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_577/concat/axisу
tf.concat_577/concatConcatV2tf.reshape_679/Reshape:output:0!conv2d_917/Softplus:activations:0"tf.concat_577/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_577/concatЖ
 conv2d_918/Conv2D/ReadVariableOpReadVariableOp)conv2d_918_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_918/Conv2D/ReadVariableOpђ
conv2d_918/Conv2DConv2Dtf.concat_577/concat:output:0(conv2d_918/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_918/Conv2D­
!conv2d_918/BiasAdd/ReadVariableOpReadVariableOp*conv2d_918_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_918/BiasAdd/ReadVariableOpЫ
conv2d_918/BiasAddBiasAddconv2d_918/Conv2D:output:0)conv2d_918/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_918/BiasAdd
conv2d_918/SoftplusSoftplusconv2d_918/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_918/SoftplusЖ
 conv2d_919/Conv2D/ReadVariableOpReadVariableOp)conv2d_919_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_919/Conv2D/ReadVariableOpі
conv2d_919/Conv2DConv2D!conv2d_918/Softplus:activations:0(conv2d_919/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_919/Conv2D­
!conv2d_919/BiasAdd/ReadVariableOpReadVariableOp*conv2d_919_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_919/BiasAdd/ReadVariableOpЫ
conv2d_919/BiasAddBiasAddconv2d_919/Conv2D:output:0)conv2d_919/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_919/BiasAdd~
IdentityIdentityconv2d_919/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityш
NoOpNoOp"^conv2d_917/BiasAdd/ReadVariableOp!^conv2d_917/Conv2D/ReadVariableOp"^conv2d_918/BiasAdd/ReadVariableOp!^conv2d_918/Conv2D/ReadVariableOp"^conv2d_919/BiasAdd/ReadVariableOp!^conv2d_919/Conv2D/ReadVariableOp!^dense_239/BiasAdd/ReadVariableOp ^dense_239/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 2F
!conv2d_917/BiasAdd/ReadVariableOp!conv2d_917/BiasAdd/ReadVariableOp2D
 conv2d_917/Conv2D/ReadVariableOp conv2d_917/Conv2D/ReadVariableOp2F
!conv2d_918/BiasAdd/ReadVariableOp!conv2d_918/BiasAdd/ReadVariableOp2D
 conv2d_918/Conv2D/ReadVariableOp conv2d_918/Conv2D/ReadVariableOp2F
!conv2d_919/BiasAdd/ReadVariableOp!conv2d_919/BiasAdd/ReadVariableOp2D
 conv2d_919/Conv2D/ReadVariableOp conv2d_919/Conv2D/ReadVariableOp2D
 dense_239/BiasAdd/ReadVariableOp dense_239/BiasAdd/ReadVariableOp2B
dense_239/MatMul/ReadVariableOpdense_239/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ

H__inference_conv2d_917_layer_call_and_return_conditional_losses_10826641

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц
o
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10826016

inputs
identityВ
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_reshape_479_layer_call_and_return_conditional_losses_10826063

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
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ї
Ђ
-__inference_conv2d_919_layer_call_fn_10826765

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_919_layer_call_and_return_conditional_losses_108261002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б

г
,__inference_model_239_layer_call_fn_10826592

inputs!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_239_layer_call_and_return_conditional_losses_108261072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
№C
Ж
G__inference_model_239_layer_call_and_return_conditional_losses_10826344	
input-
conv2d_917_10826312:!
conv2d_917_10826314:$
dense_239_10826319:@@ 
dense_239_10826321:@-
conv2d_918_10826333:!
conv2d_918_10826335:-
conv2d_919_10826338:!
conv2d_919_10826340:
identityЂ"conv2d_917/StatefulPartitionedCallЂ"conv2d_918/StatefulPartitionedCallЂ"conv2d_919/StatefulPartitionedCallЂ!dense_239/StatefulPartitionedCallЕ
0tf.__operators__.getitem_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_474/strided_slice/stackЙ
2tf.__operators__.getitem_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_474/strided_slice/stack_1Й
2tf.__operators__.getitem_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_474/strided_slice/stack_2
*tf.__operators__.getitem_474/strided_sliceStridedSliceinput9tf.__operators__.getitem_474/strided_slice/stack:output:0;tf.__operators__.getitem_474/strided_slice/stack_1:output:0;tf.__operators__.getitem_474/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_474/strided_sliceД
$range_conversion_239/PartitionedCallPartitionedCall3tf.__operators__.getitem_474/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_108259872&
$range_conversion_239/PartitionedCallЕ
0tf.__operators__.getitem_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_475/strided_slice/stackЙ
2tf.__operators__.getitem_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_475/strided_slice/stack_1Й
2tf.__operators__.getitem_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_475/strided_slice/stack_2
*tf.__operators__.getitem_475/strided_sliceStridedSliceinput9tf.__operators__.getitem_475/strided_slice/stack:output:0;tf.__operators__.getitem_475/strided_slice/stack_1:output:0;tf.__operators__.getitem_475/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_475/strided_slicex
tf.concat_576/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_576/concat/axis
tf.concat_576/concatConcatV2-range_conversion_239/PartitionedCall:output:03tf.__operators__.getitem_475/strided_slice:output:0"tf.concat_576/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_576/concatШ
"conv2d_917/StatefulPartitionedCallStatefulPartitionedCalltf.concat_576/concat:output:0conv2d_917_10826312conv2d_917_10826314*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_917_layer_call_and_return_conditional_losses_108260062$
"conv2d_917/StatefulPartitionedCallЏ
%average_pooling2d_339/PartitionedCallPartitionedCall+conv2d_917/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *\
fWRU
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_108260162'
%average_pooling2d_339/PartitionedCall
reshape_478/PartitionedCallPartitionedCall.average_pooling2d_339/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_478_layer_call_and_return_conditional_losses_108260302
reshape_478/PartitionedCallТ
!dense_239/StatefulPartitionedCallStatefulPartitionedCall$reshape_478/PartitionedCall:output:0dense_239_10826319dense_239_10826321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_239_layer_call_and_return_conditional_losses_108260432#
!dense_239/StatefulPartitionedCall
reshape_479/PartitionedCallPartitionedCall*dense_239/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_479_layer_call_and_return_conditional_losses_108260632
reshape_479/PartitionedCall
tf.reshape_678/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""џџџџ               2
tf.reshape_678/Reshape/shapeЪ
tf.reshape_678/ReshapeReshape$reshape_479/PartitionedCall:output:0%tf.reshape_678/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.reshape_678/Reshape
tf.tile_339/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_339/Tile/multiplesД
tf.tile_339/TileTiletf.reshape_678/Reshape:output:0#tf.tile_339/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.tile_339/Tile
tf.reshape_679/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"џџџџ         2
tf.reshape_679/Reshape/shapeЗ
tf.reshape_679/ReshapeReshapetf.tile_339/Tile:output:0%tf.reshape_679/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.reshape_679/Reshapex
tf.concat_577/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_577/concat/axisэ
tf.concat_577/concatConcatV2tf.reshape_679/Reshape:output:0+conv2d_917/StatefulPartitionedCall:output:0"tf.concat_577/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_577/concatШ
"conv2d_918/StatefulPartitionedCallStatefulPartitionedCalltf.concat_577/concat:output:0conv2d_918_10826333conv2d_918_10826335*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_918_layer_call_and_return_conditional_losses_108260842$
"conv2d_918/StatefulPartitionedCallж
"conv2d_919/StatefulPartitionedCallStatefulPartitionedCall+conv2d_918/StatefulPartitionedCall:output:0conv2d_919_10826338conv2d_919_10826340*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_919_layer_call_and_return_conditional_losses_108261002$
"conv2d_919/StatefulPartitionedCall
IdentityIdentity+conv2d_919/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityс
NoOpNoOp#^conv2d_917/StatefulPartitionedCall#^conv2d_918/StatefulPartitionedCall#^conv2d_919/StatefulPartitionedCall"^dense_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 2H
"conv2d_917/StatefulPartitionedCall"conv2d_917/StatefulPartitionedCall2H
"conv2d_918/StatefulPartitionedCall"conv2d_918/StatefulPartitionedCall2H
"conv2d_919/StatefulPartitionedCall"conv2d_919/StatefulPartitionedCall2F
!dense_239/StatefulPartitionedCall!dense_239/StatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
Ї
Ђ
-__inference_conv2d_917_layer_call_fn_10826650

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_917_layer_call_and_return_conditional_losses_108260062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


Ь
&__inference_signature_wrapper_10826419	
input!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *,
f'R%
#__inference__wrapped_model_108259422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
џ
T
8__inference_average_pooling2d_339_layer_call_fn_10826670

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *\
fWRU
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_108260162
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_reshape_479_layer_call_and_return_conditional_losses_10826721

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
Reshape/shape/3К
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ќ

,__inference_dense_239_layer_call_fn_10826707

inputs
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallќ
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
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_239_layer_call_and_return_conditional_losses_108260432
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
Ќ

H__inference_conv2d_918_layer_call_and_return_conditional_losses_10826084

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
М	
r
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_10825987

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
:џџџџџџџџџ2
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
:џџџџџџџџџ2	
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
:џџџџџџџџџ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
add/yf
addAddV2mul:z:0add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:[ W
/
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
parameters
л
J
.__inference_reshape_479_layer_call_fn_10826726

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_479_layer_call_and_return_conditional_losses_108260632
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

ј
G__inference_dense_239_layer_call_and_return_conditional_losses_10826043

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

W
7__inference_range_conversion_239_layer_call_fn_10826630

parameters
identityс
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_108259872
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:[ W
/
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
parameters
Ї
Ђ
-__inference_conv2d_918_layer_call_fn_10826746

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_918_layer_call_and_return_conditional_losses_108260842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
л
J
.__inference_reshape_478_layer_call_fn_10826687

inputs
identityЬ
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
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_478_layer_call_and_return_conditional_losses_108260302
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў

в
,__inference_model_239_layer_call_fn_10826298	
input!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_239_layer_call_and_return_conditional_losses_108262582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
Б

г
,__inference_model_239_layer_call_fn_10826613

inputs!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_239_layer_call_and_return_conditional_losses_108262582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Їm
ђ
G__inference_model_239_layer_call_and_return_conditional_losses_10826571

inputsC
)conv2d_917_conv2d_readvariableop_resource:8
*conv2d_917_biasadd_readvariableop_resource::
(dense_239_matmul_readvariableop_resource:@@7
)dense_239_biasadd_readvariableop_resource:@C
)conv2d_918_conv2d_readvariableop_resource:8
*conv2d_918_biasadd_readvariableop_resource:C
)conv2d_919_conv2d_readvariableop_resource:8
*conv2d_919_biasadd_readvariableop_resource:
identityЂ!conv2d_917/BiasAdd/ReadVariableOpЂ conv2d_917/Conv2D/ReadVariableOpЂ!conv2d_918/BiasAdd/ReadVariableOpЂ conv2d_918/Conv2D/ReadVariableOpЂ!conv2d_919/BiasAdd/ReadVariableOpЂ conv2d_919/Conv2D/ReadVariableOpЂ dense_239/BiasAdd/ReadVariableOpЂdense_239/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_474/strided_slice/stackЙ
2tf.__operators__.getitem_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_474/strided_slice/stack_1Й
2tf.__operators__.getitem_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_474/strided_slice/stack_2
*tf.__operators__.getitem_474/strided_sliceStridedSliceinputs9tf.__operators__.getitem_474/strided_slice/stack:output:0;tf.__operators__.getitem_474/strided_slice/stack_1:output:0;tf.__operators__.getitem_474/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_474/strided_slice}
range_conversion_239/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_239/sub/yЯ
range_conversion_239/subSub3tf.__operators__.getitem_474/strided_slice:output:0#range_conversion_239/sub/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/sub
range_conversion_239/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_239/truediv/yШ
range_conversion_239/truedivRealDivrange_conversion_239/sub:z:0'range_conversion_239/truediv/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/truediv}
range_conversion_239/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_239/mul/yМ
range_conversion_239/mulMul range_conversion_239/truediv:z:0#range_conversion_239/mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/mul}
range_conversion_239/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_239/add/yК
range_conversion_239/addAddV2range_conversion_239/mul:z:0#range_conversion_239/add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_239/addЕ
0tf.__operators__.getitem_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_475/strided_slice/stackЙ
2tf.__operators__.getitem_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_475/strided_slice/stack_1Й
2tf.__operators__.getitem_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_475/strided_slice/stack_2
*tf.__operators__.getitem_475/strided_sliceStridedSliceinputs9tf.__operators__.getitem_475/strided_slice/stack:output:0;tf.__operators__.getitem_475/strided_slice/stack_1:output:0;tf.__operators__.getitem_475/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_475/strided_slicex
tf.concat_576/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_576/concat/axisђ
tf.concat_576/concatConcatV2range_conversion_239/add:z:03tf.__operators__.getitem_475/strided_slice:output:0"tf.concat_576/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_576/concatЖ
 conv2d_917/Conv2D/ReadVariableOpReadVariableOp)conv2d_917_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_917/Conv2D/ReadVariableOpђ
conv2d_917/Conv2DConv2Dtf.concat_576/concat:output:0(conv2d_917/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_917/Conv2D­
!conv2d_917/BiasAdd/ReadVariableOpReadVariableOp*conv2d_917_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_917/BiasAdd/ReadVariableOpЫ
conv2d_917/BiasAddBiasAddconv2d_917/Conv2D:output:0)conv2d_917/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_917/BiasAdd
conv2d_917/SoftplusSoftplusconv2d_917/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_917/Softplusљ
average_pooling2d_339/AvgPoolAvgPool!conv2d_917/Softplus:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_339/AvgPool|
reshape_478/ShapeShape&average_pooling2d_339/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_478/Shape
reshape_478/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_478/strided_slice/stack
!reshape_478/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_478/strided_slice/stack_1
!reshape_478/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_478/strided_slice/stack_2Њ
reshape_478/strided_sliceStridedSlicereshape_478/Shape:output:0(reshape_478/strided_slice/stack:output:0*reshape_478/strided_slice/stack_1:output:0*reshape_478/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_478/strided_slice|
reshape_478/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_478/Reshape/shape/1Ж
reshape_478/Reshape/shapePack"reshape_478/strided_slice:output:0$reshape_478/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_478/Reshape/shapeГ
reshape_478/ReshapeReshape&average_pooling2d_339/AvgPool:output:0"reshape_478/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_478/ReshapeЋ
dense_239/MatMul/ReadVariableOpReadVariableOp(dense_239_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_239/MatMul/ReadVariableOpЇ
dense_239/MatMulMatMulreshape_478/Reshape:output:0'dense_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_239/MatMulЊ
 dense_239/BiasAdd/ReadVariableOpReadVariableOp)dense_239_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_239/BiasAdd/ReadVariableOpЉ
dense_239/BiasAddBiasAdddense_239/MatMul:product:0(dense_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_239/BiasAdd
dense_239/SoftplusSoftplusdense_239/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_239/Softplusv
reshape_479/ShapeShape dense_239/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_479/Shape
reshape_479/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_479/strided_slice/stack
!reshape_479/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_479/strided_slice/stack_1
!reshape_479/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_479/strided_slice/stack_2Њ
reshape_479/strided_sliceStridedSlicereshape_479/Shape:output:0(reshape_479/strided_slice/stack:output:0*reshape_479/strided_slice/stack_1:output:0*reshape_479/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_479/strided_slice|
reshape_479/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_479/Reshape/shape/1|
reshape_479/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_479/Reshape/shape/2|
reshape_479/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_479/Reshape/shape/3
reshape_479/Reshape/shapePack"reshape_479/strided_slice:output:0$reshape_479/Reshape/shape/1:output:0$reshape_479/Reshape/shape/2:output:0$reshape_479/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_479/Reshape/shapeЕ
reshape_479/ReshapeReshape dense_239/Softplus:activations:0"reshape_479/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
reshape_479/Reshape
tf.reshape_678/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""џџџџ               2
tf.reshape_678/Reshape/shapeТ
tf.reshape_678/ReshapeReshapereshape_479/Reshape:output:0%tf.reshape_678/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.reshape_678/Reshape
tf.tile_339/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_339/Tile/multiplesД
tf.tile_339/TileTiletf.reshape_678/Reshape:output:0#tf.tile_339/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.tile_339/Tile
tf.reshape_679/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"џџџџ         2
tf.reshape_679/Reshape/shapeЗ
tf.reshape_679/ReshapeReshapetf.tile_339/Tile:output:0%tf.reshape_679/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.reshape_679/Reshapex
tf.concat_577/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_577/concat/axisу
tf.concat_577/concatConcatV2tf.reshape_679/Reshape:output:0!conv2d_917/Softplus:activations:0"tf.concat_577/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_577/concatЖ
 conv2d_918/Conv2D/ReadVariableOpReadVariableOp)conv2d_918_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_918/Conv2D/ReadVariableOpђ
conv2d_918/Conv2DConv2Dtf.concat_577/concat:output:0(conv2d_918/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_918/Conv2D­
!conv2d_918/BiasAdd/ReadVariableOpReadVariableOp*conv2d_918_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_918/BiasAdd/ReadVariableOpЫ
conv2d_918/BiasAddBiasAddconv2d_918/Conv2D:output:0)conv2d_918/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_918/BiasAdd
conv2d_918/SoftplusSoftplusconv2d_918/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_918/SoftplusЖ
 conv2d_919/Conv2D/ReadVariableOpReadVariableOp)conv2d_919_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_919/Conv2D/ReadVariableOpі
conv2d_919/Conv2DConv2D!conv2d_918/Softplus:activations:0(conv2d_919/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_919/Conv2D­
!conv2d_919/BiasAdd/ReadVariableOpReadVariableOp*conv2d_919_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_919/BiasAdd/ReadVariableOpЫ
conv2d_919/BiasAddBiasAddconv2d_919/Conv2D:output:0)conv2d_919/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_919/BiasAdd~
IdentityIdentityconv2d_919/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityш
NoOpNoOp"^conv2d_917/BiasAdd/ReadVariableOp!^conv2d_917/Conv2D/ReadVariableOp"^conv2d_918/BiasAdd/ReadVariableOp!^conv2d_918/Conv2D/ReadVariableOp"^conv2d_919/BiasAdd/ReadVariableOp!^conv2d_919/Conv2D/ReadVariableOp!^dense_239/BiasAdd/ReadVariableOp ^dense_239/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 2F
!conv2d_917/BiasAdd/ReadVariableOp!conv2d_917/BiasAdd/ReadVariableOp2D
 conv2d_917/Conv2D/ReadVariableOp conv2d_917/Conv2D/ReadVariableOp2F
!conv2d_918/BiasAdd/ReadVariableOp!conv2d_918/BiasAdd/ReadVariableOp2D
 conv2d_918/Conv2D/ReadVariableOp conv2d_918/Conv2D/ReadVariableOp2F
!conv2d_919/BiasAdd/ReadVariableOp!conv2d_919/BiasAdd/ReadVariableOp2D
 conv2d_919/Conv2D/ReadVariableOp conv2d_919/Conv2D/ReadVariableOp2D
 dense_239/BiasAdd/ReadVariableOp dense_239/BiasAdd/ReadVariableOp2B
dense_239/MatMul/ReadVariableOpdense_239/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
г
o
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10826655

inputs
identityЭ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
єC
З
G__inference_model_239_layer_call_and_return_conditional_losses_10826107

inputs-
conv2d_917_10826007:!
conv2d_917_10826009:$
dense_239_10826044:@@ 
dense_239_10826046:@-
conv2d_918_10826085:!
conv2d_918_10826087:-
conv2d_919_10826101:!
conv2d_919_10826103:
identityЂ"conv2d_917/StatefulPartitionedCallЂ"conv2d_918/StatefulPartitionedCallЂ"conv2d_919/StatefulPartitionedCallЂ!dense_239/StatefulPartitionedCallЕ
0tf.__operators__.getitem_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_474/strided_slice/stackЙ
2tf.__operators__.getitem_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_474/strided_slice/stack_1Й
2tf.__operators__.getitem_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_474/strided_slice/stack_2
*tf.__operators__.getitem_474/strided_sliceStridedSliceinputs9tf.__operators__.getitem_474/strided_slice/stack:output:0;tf.__operators__.getitem_474/strided_slice/stack_1:output:0;tf.__operators__.getitem_474/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_474/strided_sliceД
$range_conversion_239/PartitionedCallPartitionedCall3tf.__operators__.getitem_474/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_108259872&
$range_conversion_239/PartitionedCallЕ
0tf.__operators__.getitem_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_475/strided_slice/stackЙ
2tf.__operators__.getitem_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_475/strided_slice/stack_1Й
2tf.__operators__.getitem_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_475/strided_slice/stack_2
*tf.__operators__.getitem_475/strided_sliceStridedSliceinputs9tf.__operators__.getitem_475/strided_slice/stack:output:0;tf.__operators__.getitem_475/strided_slice/stack_1:output:0;tf.__operators__.getitem_475/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_475/strided_slicex
tf.concat_576/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_576/concat/axis
tf.concat_576/concatConcatV2-range_conversion_239/PartitionedCall:output:03tf.__operators__.getitem_475/strided_slice:output:0"tf.concat_576/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_576/concatШ
"conv2d_917/StatefulPartitionedCallStatefulPartitionedCalltf.concat_576/concat:output:0conv2d_917_10826007conv2d_917_10826009*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_917_layer_call_and_return_conditional_losses_108260062$
"conv2d_917/StatefulPartitionedCallЏ
%average_pooling2d_339/PartitionedCallPartitionedCall+conv2d_917/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *\
fWRU
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_108260162'
%average_pooling2d_339/PartitionedCall
reshape_478/PartitionedCallPartitionedCall.average_pooling2d_339/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_478_layer_call_and_return_conditional_losses_108260302
reshape_478/PartitionedCallТ
!dense_239/StatefulPartitionedCallStatefulPartitionedCall$reshape_478/PartitionedCall:output:0dense_239_10826044dense_239_10826046*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_239_layer_call_and_return_conditional_losses_108260432#
!dense_239/StatefulPartitionedCall
reshape_479/PartitionedCallPartitionedCall*dense_239/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_479_layer_call_and_return_conditional_losses_108260632
reshape_479/PartitionedCall
tf.reshape_678/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""џџџџ               2
tf.reshape_678/Reshape/shapeЪ
tf.reshape_678/ReshapeReshape$reshape_479/PartitionedCall:output:0%tf.reshape_678/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.reshape_678/Reshape
tf.tile_339/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_339/Tile/multiplesД
tf.tile_339/TileTiletf.reshape_678/Reshape:output:0#tf.tile_339/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.tile_339/Tile
tf.reshape_679/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"џџџџ         2
tf.reshape_679/Reshape/shapeЗ
tf.reshape_679/ReshapeReshapetf.tile_339/Tile:output:0%tf.reshape_679/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.reshape_679/Reshapex
tf.concat_577/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_577/concat/axisэ
tf.concat_577/concatConcatV2tf.reshape_679/Reshape:output:0+conv2d_917/StatefulPartitionedCall:output:0"tf.concat_577/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_577/concatШ
"conv2d_918/StatefulPartitionedCallStatefulPartitionedCalltf.concat_577/concat:output:0conv2d_918_10826085conv2d_918_10826087*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_918_layer_call_and_return_conditional_losses_108260842$
"conv2d_918/StatefulPartitionedCallж
"conv2d_919/StatefulPartitionedCallStatefulPartitionedCall+conv2d_918/StatefulPartitionedCall:output:0conv2d_919_10826101conv2d_919_10826103*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_919_layer_call_and_return_conditional_losses_108261002$
"conv2d_919/StatefulPartitionedCall
IdentityIdentity+conv2d_919/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityс
NoOpNoOp#^conv2d_917/StatefulPartitionedCall#^conv2d_918/StatefulPartitionedCall#^conv2d_919/StatefulPartitionedCall"^dense_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 2H
"conv2d_917/StatefulPartitionedCall"conv2d_917/StatefulPartitionedCall2H
"conv2d_918/StatefulPartitionedCall"conv2d_918/StatefulPartitionedCall2H
"conv2d_919/StatefulPartitionedCall"conv2d_919/StatefulPartitionedCall2F
!dense_239/StatefulPartitionedCall!dense_239/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ

H__inference_conv2d_917_layer_call_and_return_conditional_losses_10826006

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddl
SoftplusSoftplusBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Softplusy
IdentityIdentitySoftplus:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
єC
З
G__inference_model_239_layer_call_and_return_conditional_losses_10826258

inputs-
conv2d_917_10826226:!
conv2d_917_10826228:$
dense_239_10826233:@@ 
dense_239_10826235:@-
conv2d_918_10826247:!
conv2d_918_10826249:-
conv2d_919_10826252:!
conv2d_919_10826254:
identityЂ"conv2d_917/StatefulPartitionedCallЂ"conv2d_918/StatefulPartitionedCallЂ"conv2d_919/StatefulPartitionedCallЂ!dense_239/StatefulPartitionedCallЕ
0tf.__operators__.getitem_474/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_474/strided_slice/stackЙ
2tf.__operators__.getitem_474/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_474/strided_slice/stack_1Й
2tf.__operators__.getitem_474/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_474/strided_slice/stack_2
*tf.__operators__.getitem_474/strided_sliceStridedSliceinputs9tf.__operators__.getitem_474/strided_slice/stack:output:0;tf.__operators__.getitem_474/strided_slice/stack_1:output:0;tf.__operators__.getitem_474/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_474/strided_sliceД
$range_conversion_239/PartitionedCallPartitionedCall3tf.__operators__.getitem_474/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_108259872&
$range_conversion_239/PartitionedCallЕ
0tf.__operators__.getitem_475/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_475/strided_slice/stackЙ
2tf.__operators__.getitem_475/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_475/strided_slice/stack_1Й
2tf.__operators__.getitem_475/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_475/strided_slice/stack_2
*tf.__operators__.getitem_475/strided_sliceStridedSliceinputs9tf.__operators__.getitem_475/strided_slice/stack:output:0;tf.__operators__.getitem_475/strided_slice/stack_1:output:0;tf.__operators__.getitem_475/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_475/strided_slicex
tf.concat_576/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_576/concat/axis
tf.concat_576/concatConcatV2-range_conversion_239/PartitionedCall:output:03tf.__operators__.getitem_475/strided_slice:output:0"tf.concat_576/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_576/concatШ
"conv2d_917/StatefulPartitionedCallStatefulPartitionedCalltf.concat_576/concat:output:0conv2d_917_10826226conv2d_917_10826228*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_917_layer_call_and_return_conditional_losses_108260062$
"conv2d_917/StatefulPartitionedCallЏ
%average_pooling2d_339/PartitionedCallPartitionedCall+conv2d_917/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *\
fWRU
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_108260162'
%average_pooling2d_339/PartitionedCall
reshape_478/PartitionedCallPartitionedCall.average_pooling2d_339/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_478_layer_call_and_return_conditional_losses_108260302
reshape_478/PartitionedCallТ
!dense_239/StatefulPartitionedCallStatefulPartitionedCall$reshape_478/PartitionedCall:output:0dense_239_10826233dense_239_10826235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_239_layer_call_and_return_conditional_losses_108260432#
!dense_239/StatefulPartitionedCall
reshape_479/PartitionedCallPartitionedCall*dense_239/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_479_layer_call_and_return_conditional_losses_108260632
reshape_479/PartitionedCall
tf.reshape_678/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""џџџџ               2
tf.reshape_678/Reshape/shapeЪ
tf.reshape_678/ReshapeReshape$reshape_479/PartitionedCall:output:0%tf.reshape_678/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.reshape_678/Reshape
tf.tile_339/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_339/Tile/multiplesД
tf.tile_339/TileTiletf.reshape_678/Reshape:output:0#tf.tile_339/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!џџџџџџџџџ2
tf.tile_339/Tile
tf.reshape_679/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"џџџџ         2
tf.reshape_679/Reshape/shapeЗ
tf.reshape_679/ReshapeReshapetf.tile_339/Tile:output:0%tf.reshape_679/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.reshape_679/Reshapex
tf.concat_577/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_577/concat/axisэ
tf.concat_577/concatConcatV2tf.reshape_679/Reshape:output:0+conv2d_917/StatefulPartitionedCall:output:0"tf.concat_577/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_577/concatШ
"conv2d_918/StatefulPartitionedCallStatefulPartitionedCalltf.concat_577/concat:output:0conv2d_918_10826247conv2d_918_10826249*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_918_layer_call_and_return_conditional_losses_108260842$
"conv2d_918/StatefulPartitionedCallж
"conv2d_919/StatefulPartitionedCallStatefulPartitionedCall+conv2d_918/StatefulPartitionedCall:output:0conv2d_919_10826252conv2d_919_10826254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_conv2d_919_layer_call_and_return_conditional_losses_108261002$
"conv2d_919/StatefulPartitionedCall
IdentityIdentity+conv2d_919/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityс
NoOpNoOp#^conv2d_917/StatefulPartitionedCall#^conv2d_918/StatefulPartitionedCall#^conv2d_919/StatefulPartitionedCall"^dense_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџ: : : : : : : : 2H
"conv2d_917/StatefulPartitionedCall"conv2d_917/StatefulPartitionedCall2H
"conv2d_918/StatefulPartitionedCall"conv2d_918/StatefulPartitionedCall2H
"conv2d_919/StatefulPartitionedCall"conv2d_919/StatefulPartitionedCall2F
!dense_239/StatefulPartitionedCall!dense_239/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
М	
r
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_10826625

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
:џџџџџџџџџ2
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
:џџџџџџџџџ2	
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
:џџџџџџџџџ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
add/yf
addAddV2mul:z:0add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:[ W
/
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
parameters
И

H__inference_conv2d_919_layer_call_and_return_conditional_losses_10826100

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц
o
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10826660

inputs
identityВ
AvgPoolAvgPoolinputs*
T0*/
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultЅ
?
input6
serving_default_input:0џџџџџџџџџF

conv2d_9198
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Ѓ
Є
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer-6
layer-7
	layer_with_weights-1
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+&call_and_return_all_conditional_losses
__call__
_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
Ї
	variables
trainable_variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
Н

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
Ї
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
Ї
(	variables
)trainable_variables
*regularization_losses
+	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
Н

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
Ї
2	variables
3trainable_variables
4regularization_losses
5	keras_api
+ &call_and_return_all_conditional_losses
Ё__call__"
_tf_keras_layer
(
6	keras_api"
_tf_keras_layer
(
7	keras_api"
_tf_keras_layer
(
8	keras_api"
_tf_keras_layer
(
9	keras_api"
_tf_keras_layer
Н

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+Ђ&call_and_return_all_conditional_losses
Ѓ__call__"
_tf_keras_layer
Н

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
+Є&call_and_return_all_conditional_losses
Ѕ__call__"
_tf_keras_layer
ѓ
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratemm,m-m:m;m@mAmvv,v-v:v;v@vAv"
	optimizer
X
0
1
,2
-3
:4
;5
@6
A7"
trackable_list_wrapper
X
0
1
,2
-3
:4
;5
@6
A7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
Kmetrics
	variables
Llayer_regularization_losses
Mlayer_metrics

Nlayers
Onon_trainable_variables
trainable_variables
regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
Іserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Pmetrics
	variables
Qlayer_regularization_losses
Rlayer_metrics

Slayers
Tnon_trainable_variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_917/kernel
: 2conv2d_917/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
Umetrics
 	variables
Vlayer_regularization_losses
Wlayer_metrics

Xlayers
Ynon_trainable_variables
!trainable_variables
"regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Zmetrics
$	variables
[layer_regularization_losses
\layer_metrics

]layers
^non_trainable_variables
%trainable_variables
&regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
_metrics
(	variables
`layer_regularization_losses
alayer_metrics

blayers
cnon_trainable_variables
)trainable_variables
*regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
$:"@@ 2dense_239/kernel
:@ 2dense_239/bias
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
А
dmetrics
.	variables
elayer_regularization_losses
flayer_metrics

glayers
hnon_trainable_variables
/trainable_variables
0regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
imetrics
2	variables
jlayer_regularization_losses
klayer_metrics

llayers
mnon_trainable_variables
3trainable_variables
4regularization_losses
Ё__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
-:+ 2conv2d_918/kernel
: 2conv2d_918/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
nmetrics
<	variables
olayer_regularization_losses
player_metrics

qlayers
rnon_trainable_variables
=trainable_variables
>regularization_losses
Ѓ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv2d_919/kernel
: 2conv2d_919/bias
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
А
smetrics
B	variables
tlayer_regularization_losses
ulayer_metrics

vlayers
wnon_trainable_variables
Ctrainable_variables
Dregularization_losses
Ѕ__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
:	  (2	Adam/iter
:  (2Adam/beta_1
:  (2Adam/beta_2
:  (2
Adam/decay
:  (2Adam/learning_rate
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper

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
15"
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
N
	ztotal
	{count
|	variables
}	keras_api"
_tf_keras_metric
a
	~total
	count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
2:0 2Adam/conv2d_917/kernel/m
$:" 2Adam/conv2d_917/bias/m
):'@@ 2Adam/dense_239/kernel/m
#:!@ 2Adam/dense_239/bias/m
2:0 2Adam/conv2d_918/kernel/m
$:" 2Adam/conv2d_918/bias/m
2:0 2Adam/conv2d_919/kernel/m
$:" 2Adam/conv2d_919/bias/m
2:0 2Adam/conv2d_917/kernel/v
$:" 2Adam/conv2d_917/bias/v
):'@@ 2Adam/dense_239/kernel/v
#:!@ 2Adam/dense_239/bias/v
2:0 2Adam/conv2d_918/kernel/v
$:" 2Adam/conv2d_918/bias/v
2:0 2Adam/conv2d_919/kernel/v
$:" 2Adam/conv2d_919/bias/v
ъ2ч
G__inference_model_239_layer_call_and_return_conditional_losses_10826495
G__inference_model_239_layer_call_and_return_conditional_losses_10826571
G__inference_model_239_layer_call_and_return_conditional_losses_10826344
G__inference_model_239_layer_call_and_return_conditional_losses_10826390Р
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
ў2ћ
,__inference_model_239_layer_call_fn_10826126
,__inference_model_239_layer_call_fn_10826592
,__inference_model_239_layer_call_fn_10826613
,__inference_model_239_layer_call_fn_10826298Р
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
ЬBЩ
#__inference__wrapped_model_10825942input"
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
2§
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_10826625І
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
х2т
7__inference_range_conversion_239_layer_call_fn_10826630І
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
ђ2я
H__inference_conv2d_917_layer_call_and_return_conditional_losses_10826641Ђ
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
з2д
-__inference_conv2d_917_layer_call_fn_10826650Ђ
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
в2Я
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10826655
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10826660Ђ
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
2
8__inference_average_pooling2d_339_layer_call_fn_10826665
8__inference_average_pooling2d_339_layer_call_fn_10826670Ђ
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
ѓ2№
I__inference_reshape_478_layer_call_and_return_conditional_losses_10826682Ђ
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
и2е
.__inference_reshape_478_layer_call_fn_10826687Ђ
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
G__inference_dense_239_layer_call_and_return_conditional_losses_10826698Ђ
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
,__inference_dense_239_layer_call_fn_10826707Ђ
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
ѓ2№
I__inference_reshape_479_layer_call_and_return_conditional_losses_10826721Ђ
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
и2е
.__inference_reshape_479_layer_call_fn_10826726Ђ
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
ђ2я
H__inference_conv2d_918_layer_call_and_return_conditional_losses_10826737Ђ
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
з2д
-__inference_conv2d_918_layer_call_fn_10826746Ђ
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
ђ2я
H__inference_conv2d_919_layer_call_and_return_conditional_losses_10826756Ђ
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
з2д
-__inference_conv2d_919_layer_call_fn_10826765Ђ
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
ЫBШ
&__inference_signature_wrapper_10826419input"
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
 Ћ
#__inference__wrapped_model_10825942,-:;@A6Ђ3
,Ђ)
'$
inputџџџџџџџџџ
Њ "?Њ<
:

conv2d_919,)

conv2d_919џџџџџџџџџі
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10826655RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 П
S__inference_average_pooling2d_339_layer_call_and_return_conditional_losses_10826660h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 Ю
8__inference_average_pooling2d_339_layer_call_fn_10826665RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
8__inference_average_pooling2d_339_layer_call_fn_10826670[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџИ
H__inference_conv2d_917_layer_call_and_return_conditional_losses_10826641l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
-__inference_conv2d_917_layer_call_fn_10826650_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџИ
H__inference_conv2d_918_layer_call_and_return_conditional_losses_10826737l:;7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
-__inference_conv2d_918_layer_call_fn_10826746_:;7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџИ
H__inference_conv2d_919_layer_call_and_return_conditional_losses_10826756l@A7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
-__inference_conv2d_919_layer_call_fn_10826765_@A7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџЇ
G__inference_dense_239_layer_call_and_return_conditional_losses_10826698\,-/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 
,__inference_dense_239_layer_call_fn_10826707O,-/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@Ф
G__inference_model_239_layer_call_and_return_conditional_losses_10826344y,-:;@A>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Ф
G__inference_model_239_layer_call_and_return_conditional_losses_10826390y,-:;@A>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Х
G__inference_model_239_layer_call_and_return_conditional_losses_10826495z,-:;@A?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Х
G__inference_model_239_layer_call_and_return_conditional_losses_10826571z,-:;@A?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 
,__inference_model_239_layer_call_fn_10826126l,-:;@A>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p 

 
Њ " џџџџџџџџџ
,__inference_model_239_layer_call_fn_10826298l,-:;@A>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p

 
Њ " џџџџџџџџџ
,__inference_model_239_layer_call_fn_10826592m,-:;@A?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ " џџџџџџџџџ
,__inference_model_239_layer_call_fn_10826613m,-:;@A?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ " џџџџџџџџџТ
R__inference_range_conversion_239_layer_call_and_return_conditional_losses_10826625l;Ђ8
1Ђ.
,)

parametersџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
7__inference_range_conversion_239_layer_call_fn_10826630_;Ђ8
1Ђ.
,)

parametersџџџџџџџџџ
Њ " џџџџџџџџџ­
I__inference_reshape_478_layer_call_and_return_conditional_losses_10826682`7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 
.__inference_reshape_478_layer_call_fn_10826687S7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@­
I__inference_reshape_479_layer_call_and_return_conditional_losses_10826721`/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ
 
.__inference_reshape_479_layer_call_fn_10826726S/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ " џџџџџџџџџЗ
&__inference_signature_wrapper_10826419,-:;@A?Ђ<
Ђ 
5Њ2
0
input'$
inputџџџџџџџџџ"?Њ<
:

conv2d_919,)

conv2d_919џџџџџџџџџ