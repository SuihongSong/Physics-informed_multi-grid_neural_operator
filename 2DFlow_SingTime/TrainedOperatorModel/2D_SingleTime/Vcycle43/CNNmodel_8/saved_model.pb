��
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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258҇

�
conv2d_1159/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1159/kernel
�
&conv2d_1159/kernel/Read/ReadVariableOpReadVariableOpconv2d_1159/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1159/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1159/bias
q
$conv2d_1159/bias/Read/ReadVariableOpReadVariableOpconv2d_1159/bias*
_output_shapes
:*
dtype0
|
dense_293/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_293/kernel
u
$dense_293/kernel/Read/ReadVariableOpReadVariableOpdense_293/kernel*
_output_shapes

:@@*
dtype0
t
dense_293/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_293/bias
m
"dense_293/bias/Read/ReadVariableOpReadVariableOpdense_293/bias*
_output_shapes
:@*
dtype0
�
conv2d_1160/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1160/kernel
�
&conv2d_1160/kernel/Read/ReadVariableOpReadVariableOpconv2d_1160/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1160/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1160/bias
q
$conv2d_1160/bias/Read/ReadVariableOpReadVariableOpconv2d_1160/bias*
_output_shapes
:*
dtype0
�
conv2d_1161/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1161/kernel
�
&conv2d_1161/kernel/Read/ReadVariableOpReadVariableOpconv2d_1161/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1161/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1161/bias
q
$conv2d_1161/bias/Read/ReadVariableOpReadVariableOpconv2d_1161/bias*
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
Adam/conv2d_1159/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1159/kernel/m
�
-Adam/conv2d_1159/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1159/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1159/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1159/bias/m

+Adam/conv2d_1159/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1159/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_293/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_293/kernel/m
�
+Adam/dense_293/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_293/kernel/m*
_output_shapes

:@@*
dtype0
�
Adam/dense_293/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_293/bias/m
{
)Adam/dense_293/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_293/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_1160/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1160/kernel/m
�
-Adam/conv2d_1160/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1160/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1160/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1160/bias/m

+Adam/conv2d_1160/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1160/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_1161/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1161/kernel/m
�
-Adam/conv2d_1161/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1161/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1161/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1161/bias/m

+Adam/conv2d_1161/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1161/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_1159/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1159/kernel/v
�
-Adam/conv2d_1159/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1159/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1159/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1159/bias/v

+Adam/conv2d_1159/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1159/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_293/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_293/kernel/v
�
+Adam/dense_293/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_293/kernel/v*
_output_shapes

:@@*
dtype0
�
Adam/dense_293/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_293/bias/v
{
)Adam/dense_293/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_293/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_1160/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1160/kernel/v
�
-Adam/conv2d_1160/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1160/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1160/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1160/bias/v

+Adam/conv2d_1160/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1160/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_1161/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1161/kernel/v
�
-Adam/conv2d_1161/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1161/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_1161/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1161/bias/v

+Adam/conv2d_1161/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1161/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�9
value�9B�9 B�9
�
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
�
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratem�m�,m�-m�:m�;m�@m�Am�v�v�,v�-v�:v�;v�@v�Av�
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
�
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
�
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
^\
VARIABLE_VALUEconv2d_1159/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1159/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
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
�
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
�
_metrics
(	variables
`layer_regularization_losses
alayer_metrics

blayers
cnon_trainable_variables
)trainable_variables
*regularization_losses
\Z
VARIABLE_VALUEdense_293/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_293/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
�
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
�
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
^\
VARIABLE_VALUEconv2d_1160/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1160/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
�
nmetrics
<	variables
olayer_regularization_losses
player_metrics

qlayers
rnon_trainable_variables
=trainable_variables
>regularization_losses
^\
VARIABLE_VALUEconv2d_1161/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1161/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

@0
A1
 
�
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
�
_fn_kwargs
�	variables
�	keras_api
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
�	variables
�
VARIABLE_VALUEAdam/conv2d_1159/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1159/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_293/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_293/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1160/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1160/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1161/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1161/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1159/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1159/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_293/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_293/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1160/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1160/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/conv2d_1161/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1161/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_1159/kernelconv2d_1159/biasdense_293/kerneldense_293/biasconv2d_1160/kernelconv2d_1160/biasconv2d_1161/kernelconv2d_1161/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� */
f*R(
&__inference_signature_wrapper_13475397
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv2d_1159/kernel/Read/ReadVariableOp$conv2d_1159/bias/Read/ReadVariableOp$dense_293/kernel/Read/ReadVariableOp"dense_293/bias/Read/ReadVariableOp&conv2d_1160/kernel/Read/ReadVariableOp$conv2d_1160/bias/Read/ReadVariableOp&conv2d_1161/kernel/Read/ReadVariableOp$conv2d_1161/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv2d_1159/kernel/m/Read/ReadVariableOp+Adam/conv2d_1159/bias/m/Read/ReadVariableOp+Adam/dense_293/kernel/m/Read/ReadVariableOp)Adam/dense_293/bias/m/Read/ReadVariableOp-Adam/conv2d_1160/kernel/m/Read/ReadVariableOp+Adam/conv2d_1160/bias/m/Read/ReadVariableOp-Adam/conv2d_1161/kernel/m/Read/ReadVariableOp+Adam/conv2d_1161/bias/m/Read/ReadVariableOp-Adam/conv2d_1159/kernel/v/Read/ReadVariableOp+Adam/conv2d_1159/bias/v/Read/ReadVariableOp+Adam/dense_293/kernel/v/Read/ReadVariableOp)Adam/dense_293/bias/v/Read/ReadVariableOp-Adam/conv2d_1160/kernel/v/Read/ReadVariableOp+Adam/conv2d_1160/bias/v/Read/ReadVariableOp-Adam/conv2d_1161/kernel/v/Read/ReadVariableOp+Adam/conv2d_1161/bias/v/Read/ReadVariableOpConst*.
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
GPU2*0,1J 8� **
f%R#
!__inference__traced_save_13475865
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_1159/kernelconv2d_1159/biasdense_293/kerneldense_293/biasconv2d_1160/kernelconv2d_1160/biasconv2d_1161/kernelconv2d_1161/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_1159/kernel/mAdam/conv2d_1159/bias/mAdam/dense_293/kernel/mAdam/dense_293/bias/mAdam/conv2d_1160/kernel/mAdam/conv2d_1160/bias/mAdam/conv2d_1161/kernel/mAdam/conv2d_1161/bias/mAdam/conv2d_1159/kernel/vAdam/conv2d_1159/bias/vAdam/dense_293/kernel/vAdam/dense_293/bias/vAdam/conv2d_1160/kernel/vAdam/conv2d_1160/bias/vAdam/conv2d_1161/kernel/vAdam/conv2d_1161/bias/v*-
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
GPU2*0,1J 8� *-
f(R&
$__inference__traced_restore_13475974��
�
�
.__inference_conv2d_1160_layer_call_fn_13475724

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
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_134750622
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
�

�
&__inference_signature_wrapper_13475397	
input!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference__wrapped_model_134749202
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�

�
,__inference_model_293_layer_call_fn_13475276	
input!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_293_layer_call_and_return_conditional_losses_134752362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�D
�
G__inference_model_293_layer_call_and_return_conditional_losses_13475322	
input.
conv2d_1159_13475290:"
conv2d_1159_13475292:$
dense_293_13475297:@@ 
dense_293_13475299:@.
conv2d_1160_13475311:"
conv2d_1160_13475313:.
conv2d_1161_13475316:"
conv2d_1161_13475318:
identity��#conv2d_1159/StatefulPartitionedCall�#conv2d_1160/StatefulPartitionedCall�#conv2d_1161/StatefulPartitionedCall�!dense_293/StatefulPartitionedCall�
0tf.__operators__.getitem_582/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_582/strided_slice/stack�
2tf.__operators__.getitem_582/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_582/strided_slice/stack_1�
2tf.__operators__.getitem_582/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_582/strided_slice/stack_2�
*tf.__operators__.getitem_582/strided_sliceStridedSliceinput9tf.__operators__.getitem_582/strided_slice/stack:output:0;tf.__operators__.getitem_582/strided_slice/stack_1:output:0;tf.__operators__.getitem_582/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_582/strided_slice�
$range_conversion_293/PartitionedCallPartitionedCall3tf.__operators__.getitem_582/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_134749652&
$range_conversion_293/PartitionedCall�
0tf.__operators__.getitem_583/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_583/strided_slice/stack�
2tf.__operators__.getitem_583/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_583/strided_slice/stack_1�
2tf.__operators__.getitem_583/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_583/strided_slice/stack_2�
*tf.__operators__.getitem_583/strided_sliceStridedSliceinput9tf.__operators__.getitem_583/strided_slice/stack:output:0;tf.__operators__.getitem_583/strided_slice/stack_1:output:0;tf.__operators__.getitem_583/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_583/strided_slicex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axis�
tf.concat_724/concatConcatV2-range_conversion_293/PartitionedCall:output:03tf.__operators__.getitem_583/strided_slice:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_724/concat�
#conv2d_1159/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv2d_1159_13475290conv2d_1159_13475292*
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
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_134749842%
#conv2d_1159/StatefulPartitionedCall�
%average_pooling2d_433/PartitionedCallPartitionedCall,conv2d_1159/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_134749942'
%average_pooling2d_433/PartitionedCall�
reshape_586/PartitionedCallPartitionedCall.average_pooling2d_433/PartitionedCall:output:0*
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
I__inference_reshape_586_layer_call_and_return_conditional_losses_134750082
reshape_586/PartitionedCall�
!dense_293/StatefulPartitionedCallStatefulPartitionedCall$reshape_586/PartitionedCall:output:0dense_293_13475297dense_293_13475299*
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
G__inference_dense_293_layer_call_and_return_conditional_losses_134750212#
!dense_293/StatefulPartitionedCall�
reshape_587/PartitionedCallPartitionedCall*dense_293/StatefulPartitionedCall:output:0*
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
I__inference_reshape_587_layer_call_and_return_conditional_losses_134750412
reshape_587/PartitionedCall�
tf.reshape_866/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_866/Reshape/shape�
tf.reshape_866/ReshapeReshape$reshape_587/PartitionedCall:output:0%tf.reshape_866/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_866/Reshape�
tf.tile_433/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_433/Tile/multiples�
tf.tile_433/TileTiletf.reshape_866/Reshape:output:0#tf.tile_433/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_433/Tile�
tf.reshape_867/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_867/Reshape/shape�
tf.reshape_867/ReshapeReshapetf.tile_433/Tile:output:0%tf.reshape_867/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_867/Reshapex
tf.concat_725/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_725/concat/axis�
tf.concat_725/concatConcatV2tf.reshape_867/Reshape:output:0,conv2d_1159/StatefulPartitionedCall:output:0"tf.concat_725/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_725/concat�
#conv2d_1160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_725/concat:output:0conv2d_1160_13475311conv2d_1160_13475313*
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
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_134750622%
#conv2d_1160/StatefulPartitionedCall�
#conv2d_1161/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1160/StatefulPartitionedCall:output:0conv2d_1161_13475316conv2d_1161_13475318*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_134750782%
#conv2d_1161/StatefulPartitionedCall�
IdentityIdentity,conv2d_1161/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1159/StatefulPartitionedCall$^conv2d_1160/StatefulPartitionedCall$^conv2d_1161/StatefulPartitionedCall"^dense_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2J
#conv2d_1159/StatefulPartitionedCall#conv2d_1159/StatefulPartitionedCall2J
#conv2d_1160/StatefulPartitionedCall#conv2d_1160/StatefulPartitionedCall2J
#conv2d_1161/StatefulPartitionedCall#conv2d_1161/StatefulPartitionedCall2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
o
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13475633

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
�
T
8__inference_average_pooling2d_433_layer_call_fn_13475643

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
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_134749292
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
�

�
,__inference_model_293_layer_call_fn_13475570

inputs!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_293_layer_call_and_return_conditional_losses_134750852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_13475715

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
�
o
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13474994

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
�J
�
!__inference__traced_save_13475865
file_prefix1
-savev2_conv2d_1159_kernel_read_readvariableop/
+savev2_conv2d_1159_bias_read_readvariableop/
+savev2_dense_293_kernel_read_readvariableop-
)savev2_dense_293_bias_read_readvariableop1
-savev2_conv2d_1160_kernel_read_readvariableop/
+savev2_conv2d_1160_bias_read_readvariableop1
-savev2_conv2d_1161_kernel_read_readvariableop/
+savev2_conv2d_1161_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv2d_1159_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1159_bias_m_read_readvariableop6
2savev2_adam_dense_293_kernel_m_read_readvariableop4
0savev2_adam_dense_293_bias_m_read_readvariableop8
4savev2_adam_conv2d_1160_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1160_bias_m_read_readvariableop8
4savev2_adam_conv2d_1161_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1161_bias_m_read_readvariableop8
4savev2_adam_conv2d_1159_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1159_bias_v_read_readvariableop6
2savev2_adam_dense_293_kernel_v_read_readvariableop4
0savev2_adam_dense_293_bias_v_read_readvariableop8
4savev2_adam_conv2d_1160_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1160_bias_v_read_readvariableop8
4savev2_adam_conv2d_1161_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1161_bias_v_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv2d_1159_kernel_read_readvariableop+savev2_conv2d_1159_bias_read_readvariableop+savev2_dense_293_kernel_read_readvariableop)savev2_dense_293_bias_read_readvariableop-savev2_conv2d_1160_kernel_read_readvariableop+savev2_conv2d_1160_bias_read_readvariableop-savev2_conv2d_1161_kernel_read_readvariableop+savev2_conv2d_1161_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv2d_1159_kernel_m_read_readvariableop2savev2_adam_conv2d_1159_bias_m_read_readvariableop2savev2_adam_dense_293_kernel_m_read_readvariableop0savev2_adam_dense_293_bias_m_read_readvariableop4savev2_adam_conv2d_1160_kernel_m_read_readvariableop2savev2_adam_conv2d_1160_bias_m_read_readvariableop4savev2_adam_conv2d_1161_kernel_m_read_readvariableop2savev2_adam_conv2d_1161_bias_m_read_readvariableop4savev2_adam_conv2d_1159_kernel_v_read_readvariableop2savev2_adam_conv2d_1159_bias_v_read_readvariableop2savev2_adam_dense_293_kernel_v_read_readvariableop0savev2_adam_dense_293_bias_v_read_readvariableop4savev2_adam_conv2d_1160_kernel_v_read_readvariableop2savev2_adam_conv2d_1160_bias_v_read_readvariableop4savev2_adam_conv2d_1161_kernel_v_read_readvariableop2savev2_adam_conv2d_1161_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::@@:@::::: : : : : : : : : :::@@:@:::::::@@:@::::: 2(
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
�
o
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13475638

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
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_13475619

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
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
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_conv2d_1161_layer_call_fn_13475743

inputs!
unknown:
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
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_134750782
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
T
8__inference_average_pooling2d_433_layer_call_fn_13475648

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
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_134749942
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

�
,__inference_model_293_layer_call_fn_13475591

inputs!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_293_layer_call_and_return_conditional_losses_134752362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_13475062

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
.__inference_reshape_587_layer_call_fn_13475704

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
I__inference_reshape_587_layer_call_and_return_conditional_losses_134750412
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
��
�
$__inference__traced_restore_13475974
file_prefix=
#assignvariableop_conv2d_1159_kernel:1
#assignvariableop_1_conv2d_1159_bias:5
#assignvariableop_2_dense_293_kernel:@@/
!assignvariableop_3_dense_293_bias:@?
%assignvariableop_4_conv2d_1160_kernel:1
#assignvariableop_5_conv2d_1160_bias:?
%assignvariableop_6_conv2d_1161_kernel:1
#assignvariableop_7_conv2d_1161_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: G
-assignvariableop_17_adam_conv2d_1159_kernel_m:9
+assignvariableop_18_adam_conv2d_1159_bias_m:=
+assignvariableop_19_adam_dense_293_kernel_m:@@7
)assignvariableop_20_adam_dense_293_bias_m:@G
-assignvariableop_21_adam_conv2d_1160_kernel_m:9
+assignvariableop_22_adam_conv2d_1160_bias_m:G
-assignvariableop_23_adam_conv2d_1161_kernel_m:9
+assignvariableop_24_adam_conv2d_1161_bias_m:G
-assignvariableop_25_adam_conv2d_1159_kernel_v:9
+assignvariableop_26_adam_conv2d_1159_bias_v:=
+assignvariableop_27_adam_dense_293_kernel_v:@@7
)assignvariableop_28_adam_dense_293_bias_v:@G
-assignvariableop_29_adam_conv2d_1160_kernel_v:9
+assignvariableop_30_adam_conv2d_1160_bias_v:G
-assignvariableop_31_adam_conv2d_1161_kernel_v:9
+assignvariableop_32_adam_conv2d_1161_bias_v:
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp#assignvariableop_conv2d_1159_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv2d_1159_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_293_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_293_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_conv2d_1160_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_1160_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv2d_1161_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_1161_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_conv2d_1159_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_conv2d_1159_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_293_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_293_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_conv2d_1160_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_1160_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adam_conv2d_1161_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_1161_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_conv2d_1159_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_1159_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_293_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_293_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_conv2d_1160_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_1160_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp-assignvariableop_31_adam_conv2d_1161_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_1161_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33f
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_34�
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
�
�
,__inference_dense_293_layer_call_fn_13475685

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
G__inference_dense_293_layer_call_and_return_conditional_losses_134750212
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
�
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_13475078

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
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
:���������*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_conv2d_1159_layer_call_fn_13475628

inputs!
unknown:
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
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_134749842
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
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
o
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13474929

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
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_13474965

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�
e
I__inference_reshape_586_layer_call_and_return_conditional_losses_13475008

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
؀
�
#__inference__wrapped_model_13474920	
inputN
4model_293_conv2d_1159_conv2d_readvariableop_resource:C
5model_293_conv2d_1159_biasadd_readvariableop_resource:D
2model_293_dense_293_matmul_readvariableop_resource:@@A
3model_293_dense_293_biasadd_readvariableop_resource:@N
4model_293_conv2d_1160_conv2d_readvariableop_resource:C
5model_293_conv2d_1160_biasadd_readvariableop_resource:N
4model_293_conv2d_1161_conv2d_readvariableop_resource:C
5model_293_conv2d_1161_biasadd_readvariableop_resource:
identity��,model_293/conv2d_1159/BiasAdd/ReadVariableOp�+model_293/conv2d_1159/Conv2D/ReadVariableOp�,model_293/conv2d_1160/BiasAdd/ReadVariableOp�+model_293/conv2d_1160/Conv2D/ReadVariableOp�,model_293/conv2d_1161/BiasAdd/ReadVariableOp�+model_293/conv2d_1161/Conv2D/ReadVariableOp�*model_293/dense_293/BiasAdd/ReadVariableOp�)model_293/dense_293/MatMul/ReadVariableOp�
:model_293/tf.__operators__.getitem_582/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_293/tf.__operators__.getitem_582/strided_slice/stack�
<model_293/tf.__operators__.getitem_582/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_293/tf.__operators__.getitem_582/strided_slice/stack_1�
<model_293/tf.__operators__.getitem_582/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_293/tf.__operators__.getitem_582/strided_slice/stack_2�
4model_293/tf.__operators__.getitem_582/strided_sliceStridedSliceinputCmodel_293/tf.__operators__.getitem_582/strided_slice/stack:output:0Emodel_293/tf.__operators__.getitem_582/strided_slice/stack_1:output:0Emodel_293/tf.__operators__.getitem_582/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask26
4model_293/tf.__operators__.getitem_582/strided_slice�
$model_293/range_conversion_293/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_293/range_conversion_293/sub/y�
"model_293/range_conversion_293/subSub=model_293/tf.__operators__.getitem_582/strided_slice:output:0-model_293/range_conversion_293/sub/y:output:0*
T0*/
_output_shapes
:���������2$
"model_293/range_conversion_293/sub�
(model_293/range_conversion_293/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_293/range_conversion_293/truediv/y�
&model_293/range_conversion_293/truedivRealDiv&model_293/range_conversion_293/sub:z:01model_293/range_conversion_293/truediv/y:output:0*
T0*/
_output_shapes
:���������2(
&model_293/range_conversion_293/truediv�
$model_293/range_conversion_293/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_293/range_conversion_293/mul/y�
"model_293/range_conversion_293/mulMul*model_293/range_conversion_293/truediv:z:0-model_293/range_conversion_293/mul/y:output:0*
T0*/
_output_shapes
:���������2$
"model_293/range_conversion_293/mul�
$model_293/range_conversion_293/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2&
$model_293/range_conversion_293/add/y�
"model_293/range_conversion_293/addAddV2&model_293/range_conversion_293/mul:z:0-model_293/range_conversion_293/add/y:output:0*
T0*/
_output_shapes
:���������2$
"model_293/range_conversion_293/add�
:model_293/tf.__operators__.getitem_583/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_293/tf.__operators__.getitem_583/strided_slice/stack�
<model_293/tf.__operators__.getitem_583/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_293/tf.__operators__.getitem_583/strided_slice/stack_1�
<model_293/tf.__operators__.getitem_583/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_293/tf.__operators__.getitem_583/strided_slice/stack_2�
4model_293/tf.__operators__.getitem_583/strided_sliceStridedSliceinputCmodel_293/tf.__operators__.getitem_583/strided_slice/stack:output:0Emodel_293/tf.__operators__.getitem_583/strided_slice/stack_1:output:0Emodel_293/tf.__operators__.getitem_583/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask26
4model_293/tf.__operators__.getitem_583/strided_slice�
#model_293/tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_293/tf.concat_724/concat/axis�
model_293/tf.concat_724/concatConcatV2&model_293/range_conversion_293/add:z:0=model_293/tf.__operators__.getitem_583/strided_slice:output:0,model_293/tf.concat_724/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_293/tf.concat_724/concat�
+model_293/conv2d_1159/Conv2D/ReadVariableOpReadVariableOp4model_293_conv2d_1159_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_293/conv2d_1159/Conv2D/ReadVariableOp�
model_293/conv2d_1159/Conv2DConv2D'model_293/tf.concat_724/concat:output:03model_293/conv2d_1159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_293/conv2d_1159/Conv2D�
,model_293/conv2d_1159/BiasAdd/ReadVariableOpReadVariableOp5model_293_conv2d_1159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_293/conv2d_1159/BiasAdd/ReadVariableOp�
model_293/conv2d_1159/BiasAddBiasAdd%model_293/conv2d_1159/Conv2D:output:04model_293/conv2d_1159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_293/conv2d_1159/BiasAdd�
model_293/conv2d_1159/SoftplusSoftplus&model_293/conv2d_1159/BiasAdd:output:0*
T0*/
_output_shapes
:���������2 
model_293/conv2d_1159/Softplus�
'model_293/average_pooling2d_433/AvgPoolAvgPool,model_293/conv2d_1159/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2)
'model_293/average_pooling2d_433/AvgPool�
model_293/reshape_586/ShapeShape0model_293/average_pooling2d_433/AvgPool:output:0*
T0*
_output_shapes
:2
model_293/reshape_586/Shape�
)model_293/reshape_586/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_293/reshape_586/strided_slice/stack�
+model_293/reshape_586/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_293/reshape_586/strided_slice/stack_1�
+model_293/reshape_586/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_293/reshape_586/strided_slice/stack_2�
#model_293/reshape_586/strided_sliceStridedSlice$model_293/reshape_586/Shape:output:02model_293/reshape_586/strided_slice/stack:output:04model_293/reshape_586/strided_slice/stack_1:output:04model_293/reshape_586/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_293/reshape_586/strided_slice�
%model_293/reshape_586/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_293/reshape_586/Reshape/shape/1�
#model_293/reshape_586/Reshape/shapePack,model_293/reshape_586/strided_slice:output:0.model_293/reshape_586/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_293/reshape_586/Reshape/shape�
model_293/reshape_586/ReshapeReshape0model_293/average_pooling2d_433/AvgPool:output:0,model_293/reshape_586/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_293/reshape_586/Reshape�
)model_293/dense_293/MatMul/ReadVariableOpReadVariableOp2model_293_dense_293_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_293/dense_293/MatMul/ReadVariableOp�
model_293/dense_293/MatMulMatMul&model_293/reshape_586/Reshape:output:01model_293/dense_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_293/dense_293/MatMul�
*model_293/dense_293/BiasAdd/ReadVariableOpReadVariableOp3model_293_dense_293_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_293/dense_293/BiasAdd/ReadVariableOp�
model_293/dense_293/BiasAddBiasAdd$model_293/dense_293/MatMul:product:02model_293/dense_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_293/dense_293/BiasAdd�
model_293/dense_293/SoftplusSoftplus$model_293/dense_293/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_293/dense_293/Softplus�
model_293/reshape_587/ShapeShape*model_293/dense_293/Softplus:activations:0*
T0*
_output_shapes
:2
model_293/reshape_587/Shape�
)model_293/reshape_587/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_293/reshape_587/strided_slice/stack�
+model_293/reshape_587/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_293/reshape_587/strided_slice/stack_1�
+model_293/reshape_587/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_293/reshape_587/strided_slice/stack_2�
#model_293/reshape_587/strided_sliceStridedSlice$model_293/reshape_587/Shape:output:02model_293/reshape_587/strided_slice/stack:output:04model_293/reshape_587/strided_slice/stack_1:output:04model_293/reshape_587/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_293/reshape_587/strided_slice�
%model_293/reshape_587/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_293/reshape_587/Reshape/shape/1�
%model_293/reshape_587/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_293/reshape_587/Reshape/shape/2�
%model_293/reshape_587/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_293/reshape_587/Reshape/shape/3�
#model_293/reshape_587/Reshape/shapePack,model_293/reshape_587/strided_slice:output:0.model_293/reshape_587/Reshape/shape/1:output:0.model_293/reshape_587/Reshape/shape/2:output:0.model_293/reshape_587/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_293/reshape_587/Reshape/shape�
model_293/reshape_587/ReshapeReshape*model_293/dense_293/Softplus:activations:0,model_293/reshape_587/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
model_293/reshape_587/Reshape�
&model_293/tf.reshape_866/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2(
&model_293/tf.reshape_866/Reshape/shape�
 model_293/tf.reshape_866/ReshapeReshape&model_293/reshape_587/Reshape:output:0/model_293/tf.reshape_866/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2"
 model_293/tf.reshape_866/Reshape�
$model_293/tf.tile_433/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2&
$model_293/tf.tile_433/Tile/multiples�
model_293/tf.tile_433/TileTile)model_293/tf.reshape_866/Reshape:output:0-model_293/tf.tile_433/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
model_293/tf.tile_433/Tile�
&model_293/tf.reshape_867/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2(
&model_293/tf.reshape_867/Reshape/shape�
 model_293/tf.reshape_867/ReshapeReshape#model_293/tf.tile_433/Tile:output:0/model_293/tf.reshape_867/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2"
 model_293/tf.reshape_867/Reshape�
#model_293/tf.concat_725/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_293/tf.concat_725/concat/axis�
model_293/tf.concat_725/concatConcatV2)model_293/tf.reshape_867/Reshape:output:0,model_293/conv2d_1159/Softplus:activations:0,model_293/tf.concat_725/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_293/tf.concat_725/concat�
+model_293/conv2d_1160/Conv2D/ReadVariableOpReadVariableOp4model_293_conv2d_1160_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_293/conv2d_1160/Conv2D/ReadVariableOp�
model_293/conv2d_1160/Conv2DConv2D'model_293/tf.concat_725/concat:output:03model_293/conv2d_1160/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_293/conv2d_1160/Conv2D�
,model_293/conv2d_1160/BiasAdd/ReadVariableOpReadVariableOp5model_293_conv2d_1160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_293/conv2d_1160/BiasAdd/ReadVariableOp�
model_293/conv2d_1160/BiasAddBiasAdd%model_293/conv2d_1160/Conv2D:output:04model_293/conv2d_1160/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_293/conv2d_1160/BiasAdd�
model_293/conv2d_1160/SoftplusSoftplus&model_293/conv2d_1160/BiasAdd:output:0*
T0*/
_output_shapes
:���������2 
model_293/conv2d_1160/Softplus�
+model_293/conv2d_1161/Conv2D/ReadVariableOpReadVariableOp4model_293_conv2d_1161_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_293/conv2d_1161/Conv2D/ReadVariableOp�
model_293/conv2d_1161/Conv2DConv2D,model_293/conv2d_1160/Softplus:activations:03model_293/conv2d_1161/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_293/conv2d_1161/Conv2D�
,model_293/conv2d_1161/BiasAdd/ReadVariableOpReadVariableOp5model_293_conv2d_1161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_293/conv2d_1161/BiasAdd/ReadVariableOp�
model_293/conv2d_1161/BiasAddBiasAdd%model_293/conv2d_1161/Conv2D:output:04model_293/conv2d_1161/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_293/conv2d_1161/BiasAdd�
IdentityIdentity&model_293/conv2d_1161/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp-^model_293/conv2d_1159/BiasAdd/ReadVariableOp,^model_293/conv2d_1159/Conv2D/ReadVariableOp-^model_293/conv2d_1160/BiasAdd/ReadVariableOp,^model_293/conv2d_1160/Conv2D/ReadVariableOp-^model_293/conv2d_1161/BiasAdd/ReadVariableOp,^model_293/conv2d_1161/Conv2D/ReadVariableOp+^model_293/dense_293/BiasAdd/ReadVariableOp*^model_293/dense_293/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2\
,model_293/conv2d_1159/BiasAdd/ReadVariableOp,model_293/conv2d_1159/BiasAdd/ReadVariableOp2Z
+model_293/conv2d_1159/Conv2D/ReadVariableOp+model_293/conv2d_1159/Conv2D/ReadVariableOp2\
,model_293/conv2d_1160/BiasAdd/ReadVariableOp,model_293/conv2d_1160/BiasAdd/ReadVariableOp2Z
+model_293/conv2d_1160/Conv2D/ReadVariableOp+model_293/conv2d_1160/Conv2D/ReadVariableOp2\
,model_293/conv2d_1161/BiasAdd/ReadVariableOp,model_293/conv2d_1161/BiasAdd/ReadVariableOp2Z
+model_293/conv2d_1161/Conv2D/ReadVariableOp+model_293/conv2d_1161/Conv2D/ReadVariableOp2X
*model_293/dense_293/BiasAdd/ReadVariableOp*model_293/dense_293/BiasAdd/ReadVariableOp2V
)model_293/dense_293/MatMul/ReadVariableOp)model_293/dense_293/MatMul/ReadVariableOp:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
e
I__inference_reshape_586_layer_call_and_return_conditional_losses_13475660

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
�D
�
G__inference_model_293_layer_call_and_return_conditional_losses_13475085

inputs.
conv2d_1159_13474985:"
conv2d_1159_13474987:$
dense_293_13475022:@@ 
dense_293_13475024:@.
conv2d_1160_13475063:"
conv2d_1160_13475065:.
conv2d_1161_13475079:"
conv2d_1161_13475081:
identity��#conv2d_1159/StatefulPartitionedCall�#conv2d_1160/StatefulPartitionedCall�#conv2d_1161/StatefulPartitionedCall�!dense_293/StatefulPartitionedCall�
0tf.__operators__.getitem_582/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_582/strided_slice/stack�
2tf.__operators__.getitem_582/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_582/strided_slice/stack_1�
2tf.__operators__.getitem_582/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_582/strided_slice/stack_2�
*tf.__operators__.getitem_582/strided_sliceStridedSliceinputs9tf.__operators__.getitem_582/strided_slice/stack:output:0;tf.__operators__.getitem_582/strided_slice/stack_1:output:0;tf.__operators__.getitem_582/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_582/strided_slice�
$range_conversion_293/PartitionedCallPartitionedCall3tf.__operators__.getitem_582/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_134749652&
$range_conversion_293/PartitionedCall�
0tf.__operators__.getitem_583/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_583/strided_slice/stack�
2tf.__operators__.getitem_583/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_583/strided_slice/stack_1�
2tf.__operators__.getitem_583/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_583/strided_slice/stack_2�
*tf.__operators__.getitem_583/strided_sliceStridedSliceinputs9tf.__operators__.getitem_583/strided_slice/stack:output:0;tf.__operators__.getitem_583/strided_slice/stack_1:output:0;tf.__operators__.getitem_583/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_583/strided_slicex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axis�
tf.concat_724/concatConcatV2-range_conversion_293/PartitionedCall:output:03tf.__operators__.getitem_583/strided_slice:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_724/concat�
#conv2d_1159/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv2d_1159_13474985conv2d_1159_13474987*
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
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_134749842%
#conv2d_1159/StatefulPartitionedCall�
%average_pooling2d_433/PartitionedCallPartitionedCall,conv2d_1159/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_134749942'
%average_pooling2d_433/PartitionedCall�
reshape_586/PartitionedCallPartitionedCall.average_pooling2d_433/PartitionedCall:output:0*
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
I__inference_reshape_586_layer_call_and_return_conditional_losses_134750082
reshape_586/PartitionedCall�
!dense_293/StatefulPartitionedCallStatefulPartitionedCall$reshape_586/PartitionedCall:output:0dense_293_13475022dense_293_13475024*
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
G__inference_dense_293_layer_call_and_return_conditional_losses_134750212#
!dense_293/StatefulPartitionedCall�
reshape_587/PartitionedCallPartitionedCall*dense_293/StatefulPartitionedCall:output:0*
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
I__inference_reshape_587_layer_call_and_return_conditional_losses_134750412
reshape_587/PartitionedCall�
tf.reshape_866/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_866/Reshape/shape�
tf.reshape_866/ReshapeReshape$reshape_587/PartitionedCall:output:0%tf.reshape_866/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_866/Reshape�
tf.tile_433/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_433/Tile/multiples�
tf.tile_433/TileTiletf.reshape_866/Reshape:output:0#tf.tile_433/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_433/Tile�
tf.reshape_867/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_867/Reshape/shape�
tf.reshape_867/ReshapeReshapetf.tile_433/Tile:output:0%tf.reshape_867/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_867/Reshapex
tf.concat_725/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_725/concat/axis�
tf.concat_725/concatConcatV2tf.reshape_867/Reshape:output:0,conv2d_1159/StatefulPartitionedCall:output:0"tf.concat_725/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_725/concat�
#conv2d_1160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_725/concat:output:0conv2d_1160_13475063conv2d_1160_13475065*
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
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_134750622%
#conv2d_1160/StatefulPartitionedCall�
#conv2d_1161/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1160/StatefulPartitionedCall:output:0conv2d_1161_13475079conv2d_1161_13475081*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_134750782%
#conv2d_1161/StatefulPartitionedCall�
IdentityIdentity,conv2d_1161/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1159/StatefulPartitionedCall$^conv2d_1160/StatefulPartitionedCall$^conv2d_1161/StatefulPartitionedCall"^dense_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2J
#conv2d_1159/StatefulPartitionedCall#conv2d_1159/StatefulPartitionedCall2J
#conv2d_1160/StatefulPartitionedCall#conv2d_1160/StatefulPartitionedCall2J
#conv2d_1161/StatefulPartitionedCall#conv2d_1161/StatefulPartitionedCall2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�m
�
G__inference_model_293_layer_call_and_return_conditional_losses_13475549

inputsD
*conv2d_1159_conv2d_readvariableop_resource:9
+conv2d_1159_biasadd_readvariableop_resource::
(dense_293_matmul_readvariableop_resource:@@7
)dense_293_biasadd_readvariableop_resource:@D
*conv2d_1160_conv2d_readvariableop_resource:9
+conv2d_1160_biasadd_readvariableop_resource:D
*conv2d_1161_conv2d_readvariableop_resource:9
+conv2d_1161_biasadd_readvariableop_resource:
identity��"conv2d_1159/BiasAdd/ReadVariableOp�!conv2d_1159/Conv2D/ReadVariableOp�"conv2d_1160/BiasAdd/ReadVariableOp�!conv2d_1160/Conv2D/ReadVariableOp�"conv2d_1161/BiasAdd/ReadVariableOp�!conv2d_1161/Conv2D/ReadVariableOp� dense_293/BiasAdd/ReadVariableOp�dense_293/MatMul/ReadVariableOp�
0tf.__operators__.getitem_582/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_582/strided_slice/stack�
2tf.__operators__.getitem_582/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_582/strided_slice/stack_1�
2tf.__operators__.getitem_582/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_582/strided_slice/stack_2�
*tf.__operators__.getitem_582/strided_sliceStridedSliceinputs9tf.__operators__.getitem_582/strided_slice/stack:output:0;tf.__operators__.getitem_582/strided_slice/stack_1:output:0;tf.__operators__.getitem_582/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_582/strided_slice}
range_conversion_293/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_293/sub/y�
range_conversion_293/subSub3tf.__operators__.getitem_582/strided_slice:output:0#range_conversion_293/sub/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/sub�
range_conversion_293/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_293/truediv/y�
range_conversion_293/truedivRealDivrange_conversion_293/sub:z:0'range_conversion_293/truediv/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/truediv}
range_conversion_293/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_293/mul/y�
range_conversion_293/mulMul range_conversion_293/truediv:z:0#range_conversion_293/mul/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/mul}
range_conversion_293/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_293/add/y�
range_conversion_293/addAddV2range_conversion_293/mul:z:0#range_conversion_293/add/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/add�
0tf.__operators__.getitem_583/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_583/strided_slice/stack�
2tf.__operators__.getitem_583/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_583/strided_slice/stack_1�
2tf.__operators__.getitem_583/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_583/strided_slice/stack_2�
*tf.__operators__.getitem_583/strided_sliceStridedSliceinputs9tf.__operators__.getitem_583/strided_slice/stack:output:0;tf.__operators__.getitem_583/strided_slice/stack_1:output:0;tf.__operators__.getitem_583/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_583/strided_slicex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axis�
tf.concat_724/concatConcatV2range_conversion_293/add:z:03tf.__operators__.getitem_583/strided_slice:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_724/concat�
!conv2d_1159/Conv2D/ReadVariableOpReadVariableOp*conv2d_1159_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1159/Conv2D/ReadVariableOp�
conv2d_1159/Conv2DConv2Dtf.concat_724/concat:output:0)conv2d_1159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1159/Conv2D�
"conv2d_1159/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1159/BiasAdd/ReadVariableOp�
conv2d_1159/BiasAddBiasAddconv2d_1159/Conv2D:output:0*conv2d_1159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1159/BiasAdd�
conv2d_1159/SoftplusSoftplusconv2d_1159/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1159/Softplus�
average_pooling2d_433/AvgPoolAvgPool"conv2d_1159/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_433/AvgPool|
reshape_586/ShapeShape&average_pooling2d_433/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_586/Shape�
reshape_586/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_586/strided_slice/stack�
!reshape_586/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_586/strided_slice/stack_1�
!reshape_586/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_586/strided_slice/stack_2�
reshape_586/strided_sliceStridedSlicereshape_586/Shape:output:0(reshape_586/strided_slice/stack:output:0*reshape_586/strided_slice/stack_1:output:0*reshape_586/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_586/strided_slice|
reshape_586/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_586/Reshape/shape/1�
reshape_586/Reshape/shapePack"reshape_586/strided_slice:output:0$reshape_586/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_586/Reshape/shape�
reshape_586/ReshapeReshape&average_pooling2d_433/AvgPool:output:0"reshape_586/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_586/Reshape�
dense_293/MatMul/ReadVariableOpReadVariableOp(dense_293_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_293/MatMul/ReadVariableOp�
dense_293/MatMulMatMulreshape_586/Reshape:output:0'dense_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_293/MatMul�
 dense_293/BiasAdd/ReadVariableOpReadVariableOp)dense_293_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_293/BiasAdd/ReadVariableOp�
dense_293/BiasAddBiasAdddense_293/MatMul:product:0(dense_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_293/BiasAdd�
dense_293/SoftplusSoftplusdense_293/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_293/Softplusv
reshape_587/ShapeShape dense_293/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_587/Shape�
reshape_587/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_587/strided_slice/stack�
!reshape_587/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_587/strided_slice/stack_1�
!reshape_587/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_587/strided_slice/stack_2�
reshape_587/strided_sliceStridedSlicereshape_587/Shape:output:0(reshape_587/strided_slice/stack:output:0*reshape_587/strided_slice/stack_1:output:0*reshape_587/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_587/strided_slice|
reshape_587/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_587/Reshape/shape/1|
reshape_587/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_587/Reshape/shape/2|
reshape_587/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_587/Reshape/shape/3�
reshape_587/Reshape/shapePack"reshape_587/strided_slice:output:0$reshape_587/Reshape/shape/1:output:0$reshape_587/Reshape/shape/2:output:0$reshape_587/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_587/Reshape/shape�
reshape_587/ReshapeReshape dense_293/Softplus:activations:0"reshape_587/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_587/Reshape�
tf.reshape_866/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_866/Reshape/shape�
tf.reshape_866/ReshapeReshapereshape_587/Reshape:output:0%tf.reshape_866/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_866/Reshape�
tf.tile_433/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_433/Tile/multiples�
tf.tile_433/TileTiletf.reshape_866/Reshape:output:0#tf.tile_433/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_433/Tile�
tf.reshape_867/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_867/Reshape/shape�
tf.reshape_867/ReshapeReshapetf.tile_433/Tile:output:0%tf.reshape_867/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_867/Reshapex
tf.concat_725/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_725/concat/axis�
tf.concat_725/concatConcatV2tf.reshape_867/Reshape:output:0"conv2d_1159/Softplus:activations:0"tf.concat_725/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_725/concat�
!conv2d_1160/Conv2D/ReadVariableOpReadVariableOp*conv2d_1160_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1160/Conv2D/ReadVariableOp�
conv2d_1160/Conv2DConv2Dtf.concat_725/concat:output:0)conv2d_1160/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1160/Conv2D�
"conv2d_1160/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1160/BiasAdd/ReadVariableOp�
conv2d_1160/BiasAddBiasAddconv2d_1160/Conv2D:output:0*conv2d_1160/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1160/BiasAdd�
conv2d_1160/SoftplusSoftplusconv2d_1160/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1160/Softplus�
!conv2d_1161/Conv2D/ReadVariableOpReadVariableOp*conv2d_1161_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1161/Conv2D/ReadVariableOp�
conv2d_1161/Conv2DConv2D"conv2d_1160/Softplus:activations:0)conv2d_1161/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1161/Conv2D�
"conv2d_1161/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1161/BiasAdd/ReadVariableOp�
conv2d_1161/BiasAddBiasAddconv2d_1161/Conv2D:output:0*conv2d_1161/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1161/BiasAdd
IdentityIdentityconv2d_1161/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_1159/BiasAdd/ReadVariableOp"^conv2d_1159/Conv2D/ReadVariableOp#^conv2d_1160/BiasAdd/ReadVariableOp"^conv2d_1160/Conv2D/ReadVariableOp#^conv2d_1161/BiasAdd/ReadVariableOp"^conv2d_1161/Conv2D/ReadVariableOp!^dense_293/BiasAdd/ReadVariableOp ^dense_293/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2H
"conv2d_1159/BiasAdd/ReadVariableOp"conv2d_1159/BiasAdd/ReadVariableOp2F
!conv2d_1159/Conv2D/ReadVariableOp!conv2d_1159/Conv2D/ReadVariableOp2H
"conv2d_1160/BiasAdd/ReadVariableOp"conv2d_1160/BiasAdd/ReadVariableOp2F
!conv2d_1160/Conv2D/ReadVariableOp!conv2d_1160/Conv2D/ReadVariableOp2H
"conv2d_1161/BiasAdd/ReadVariableOp"conv2d_1161/BiasAdd/ReadVariableOp2F
!conv2d_1161/Conv2D/ReadVariableOp!conv2d_1161/Conv2D/ReadVariableOp2D
 dense_293/BiasAdd/ReadVariableOp dense_293/BiasAdd/ReadVariableOp2B
dense_293/MatMul/ReadVariableOpdense_293/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
,__inference_model_293_layer_call_fn_13475104	
input!
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_293_layer_call_and_return_conditional_losses_134750852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�D
�
G__inference_model_293_layer_call_and_return_conditional_losses_13475236

inputs.
conv2d_1159_13475204:"
conv2d_1159_13475206:$
dense_293_13475211:@@ 
dense_293_13475213:@.
conv2d_1160_13475225:"
conv2d_1160_13475227:.
conv2d_1161_13475230:"
conv2d_1161_13475232:
identity��#conv2d_1159/StatefulPartitionedCall�#conv2d_1160/StatefulPartitionedCall�#conv2d_1161/StatefulPartitionedCall�!dense_293/StatefulPartitionedCall�
0tf.__operators__.getitem_582/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_582/strided_slice/stack�
2tf.__operators__.getitem_582/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_582/strided_slice/stack_1�
2tf.__operators__.getitem_582/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_582/strided_slice/stack_2�
*tf.__operators__.getitem_582/strided_sliceStridedSliceinputs9tf.__operators__.getitem_582/strided_slice/stack:output:0;tf.__operators__.getitem_582/strided_slice/stack_1:output:0;tf.__operators__.getitem_582/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_582/strided_slice�
$range_conversion_293/PartitionedCallPartitionedCall3tf.__operators__.getitem_582/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_134749652&
$range_conversion_293/PartitionedCall�
0tf.__operators__.getitem_583/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_583/strided_slice/stack�
2tf.__operators__.getitem_583/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_583/strided_slice/stack_1�
2tf.__operators__.getitem_583/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_583/strided_slice/stack_2�
*tf.__operators__.getitem_583/strided_sliceStridedSliceinputs9tf.__operators__.getitem_583/strided_slice/stack:output:0;tf.__operators__.getitem_583/strided_slice/stack_1:output:0;tf.__operators__.getitem_583/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_583/strided_slicex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axis�
tf.concat_724/concatConcatV2-range_conversion_293/PartitionedCall:output:03tf.__operators__.getitem_583/strided_slice:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_724/concat�
#conv2d_1159/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv2d_1159_13475204conv2d_1159_13475206*
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
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_134749842%
#conv2d_1159/StatefulPartitionedCall�
%average_pooling2d_433/PartitionedCallPartitionedCall,conv2d_1159/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_134749942'
%average_pooling2d_433/PartitionedCall�
reshape_586/PartitionedCallPartitionedCall.average_pooling2d_433/PartitionedCall:output:0*
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
I__inference_reshape_586_layer_call_and_return_conditional_losses_134750082
reshape_586/PartitionedCall�
!dense_293/StatefulPartitionedCallStatefulPartitionedCall$reshape_586/PartitionedCall:output:0dense_293_13475211dense_293_13475213*
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
G__inference_dense_293_layer_call_and_return_conditional_losses_134750212#
!dense_293/StatefulPartitionedCall�
reshape_587/PartitionedCallPartitionedCall*dense_293/StatefulPartitionedCall:output:0*
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
I__inference_reshape_587_layer_call_and_return_conditional_losses_134750412
reshape_587/PartitionedCall�
tf.reshape_866/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_866/Reshape/shape�
tf.reshape_866/ReshapeReshape$reshape_587/PartitionedCall:output:0%tf.reshape_866/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_866/Reshape�
tf.tile_433/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_433/Tile/multiples�
tf.tile_433/TileTiletf.reshape_866/Reshape:output:0#tf.tile_433/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_433/Tile�
tf.reshape_867/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_867/Reshape/shape�
tf.reshape_867/ReshapeReshapetf.tile_433/Tile:output:0%tf.reshape_867/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_867/Reshapex
tf.concat_725/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_725/concat/axis�
tf.concat_725/concatConcatV2tf.reshape_867/Reshape:output:0,conv2d_1159/StatefulPartitionedCall:output:0"tf.concat_725/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_725/concat�
#conv2d_1160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_725/concat:output:0conv2d_1160_13475225conv2d_1160_13475227*
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
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_134750622%
#conv2d_1160/StatefulPartitionedCall�
#conv2d_1161/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1160/StatefulPartitionedCall:output:0conv2d_1161_13475230conv2d_1161_13475232*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_134750782%
#conv2d_1161/StatefulPartitionedCall�
IdentityIdentity,conv2d_1161/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1159/StatefulPartitionedCall$^conv2d_1160/StatefulPartitionedCall$^conv2d_1161/StatefulPartitionedCall"^dense_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2J
#conv2d_1159/StatefulPartitionedCall#conv2d_1159/StatefulPartitionedCall2J
#conv2d_1160/StatefulPartitionedCall#conv2d_1160/StatefulPartitionedCall2J
#conv2d_1161/StatefulPartitionedCall#conv2d_1161/StatefulPartitionedCall2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
r
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_13475603

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�
e
I__inference_reshape_587_layer_call_and_return_conditional_losses_13475699

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
�
G__inference_dense_293_layer_call_and_return_conditional_losses_13475676

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
�
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_13474984

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
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
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�m
�
G__inference_model_293_layer_call_and_return_conditional_losses_13475473

inputsD
*conv2d_1159_conv2d_readvariableop_resource:9
+conv2d_1159_biasadd_readvariableop_resource::
(dense_293_matmul_readvariableop_resource:@@7
)dense_293_biasadd_readvariableop_resource:@D
*conv2d_1160_conv2d_readvariableop_resource:9
+conv2d_1160_biasadd_readvariableop_resource:D
*conv2d_1161_conv2d_readvariableop_resource:9
+conv2d_1161_biasadd_readvariableop_resource:
identity��"conv2d_1159/BiasAdd/ReadVariableOp�!conv2d_1159/Conv2D/ReadVariableOp�"conv2d_1160/BiasAdd/ReadVariableOp�!conv2d_1160/Conv2D/ReadVariableOp�"conv2d_1161/BiasAdd/ReadVariableOp�!conv2d_1161/Conv2D/ReadVariableOp� dense_293/BiasAdd/ReadVariableOp�dense_293/MatMul/ReadVariableOp�
0tf.__operators__.getitem_582/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_582/strided_slice/stack�
2tf.__operators__.getitem_582/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_582/strided_slice/stack_1�
2tf.__operators__.getitem_582/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_582/strided_slice/stack_2�
*tf.__operators__.getitem_582/strided_sliceStridedSliceinputs9tf.__operators__.getitem_582/strided_slice/stack:output:0;tf.__operators__.getitem_582/strided_slice/stack_1:output:0;tf.__operators__.getitem_582/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_582/strided_slice}
range_conversion_293/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_293/sub/y�
range_conversion_293/subSub3tf.__operators__.getitem_582/strided_slice:output:0#range_conversion_293/sub/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/sub�
range_conversion_293/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_293/truediv/y�
range_conversion_293/truedivRealDivrange_conversion_293/sub:z:0'range_conversion_293/truediv/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/truediv}
range_conversion_293/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_293/mul/y�
range_conversion_293/mulMul range_conversion_293/truediv:z:0#range_conversion_293/mul/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/mul}
range_conversion_293/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_293/add/y�
range_conversion_293/addAddV2range_conversion_293/mul:z:0#range_conversion_293/add/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_293/add�
0tf.__operators__.getitem_583/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_583/strided_slice/stack�
2tf.__operators__.getitem_583/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_583/strided_slice/stack_1�
2tf.__operators__.getitem_583/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_583/strided_slice/stack_2�
*tf.__operators__.getitem_583/strided_sliceStridedSliceinputs9tf.__operators__.getitem_583/strided_slice/stack:output:0;tf.__operators__.getitem_583/strided_slice/stack_1:output:0;tf.__operators__.getitem_583/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_583/strided_slicex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axis�
tf.concat_724/concatConcatV2range_conversion_293/add:z:03tf.__operators__.getitem_583/strided_slice:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_724/concat�
!conv2d_1159/Conv2D/ReadVariableOpReadVariableOp*conv2d_1159_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1159/Conv2D/ReadVariableOp�
conv2d_1159/Conv2DConv2Dtf.concat_724/concat:output:0)conv2d_1159/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1159/Conv2D�
"conv2d_1159/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1159/BiasAdd/ReadVariableOp�
conv2d_1159/BiasAddBiasAddconv2d_1159/Conv2D:output:0*conv2d_1159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1159/BiasAdd�
conv2d_1159/SoftplusSoftplusconv2d_1159/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1159/Softplus�
average_pooling2d_433/AvgPoolAvgPool"conv2d_1159/Softplus:activations:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
ksize
*
paddingVALID*
strides
2
average_pooling2d_433/AvgPool|
reshape_586/ShapeShape&average_pooling2d_433/AvgPool:output:0*
T0*
_output_shapes
:2
reshape_586/Shape�
reshape_586/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_586/strided_slice/stack�
!reshape_586/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_586/strided_slice/stack_1�
!reshape_586/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_586/strided_slice/stack_2�
reshape_586/strided_sliceStridedSlicereshape_586/Shape:output:0(reshape_586/strided_slice/stack:output:0*reshape_586/strided_slice/stack_1:output:0*reshape_586/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_586/strided_slice|
reshape_586/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_586/Reshape/shape/1�
reshape_586/Reshape/shapePack"reshape_586/strided_slice:output:0$reshape_586/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_586/Reshape/shape�
reshape_586/ReshapeReshape&average_pooling2d_433/AvgPool:output:0"reshape_586/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_586/Reshape�
dense_293/MatMul/ReadVariableOpReadVariableOp(dense_293_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_293/MatMul/ReadVariableOp�
dense_293/MatMulMatMulreshape_586/Reshape:output:0'dense_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_293/MatMul�
 dense_293/BiasAdd/ReadVariableOpReadVariableOp)dense_293_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_293/BiasAdd/ReadVariableOp�
dense_293/BiasAddBiasAdddense_293/MatMul:product:0(dense_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_293/BiasAdd�
dense_293/SoftplusSoftplusdense_293/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_293/Softplusv
reshape_587/ShapeShape dense_293/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_587/Shape�
reshape_587/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_587/strided_slice/stack�
!reshape_587/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_587/strided_slice/stack_1�
!reshape_587/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_587/strided_slice/stack_2�
reshape_587/strided_sliceStridedSlicereshape_587/Shape:output:0(reshape_587/strided_slice/stack:output:0*reshape_587/strided_slice/stack_1:output:0*reshape_587/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_587/strided_slice|
reshape_587/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_587/Reshape/shape/1|
reshape_587/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_587/Reshape/shape/2|
reshape_587/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_587/Reshape/shape/3�
reshape_587/Reshape/shapePack"reshape_587/strided_slice:output:0$reshape_587/Reshape/shape/1:output:0$reshape_587/Reshape/shape/2:output:0$reshape_587/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_587/Reshape/shape�
reshape_587/ReshapeReshape dense_293/Softplus:activations:0"reshape_587/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_587/Reshape�
tf.reshape_866/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_866/Reshape/shape�
tf.reshape_866/ReshapeReshapereshape_587/Reshape:output:0%tf.reshape_866/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_866/Reshape�
tf.tile_433/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_433/Tile/multiples�
tf.tile_433/TileTiletf.reshape_866/Reshape:output:0#tf.tile_433/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_433/Tile�
tf.reshape_867/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_867/Reshape/shape�
tf.reshape_867/ReshapeReshapetf.tile_433/Tile:output:0%tf.reshape_867/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_867/Reshapex
tf.concat_725/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_725/concat/axis�
tf.concat_725/concatConcatV2tf.reshape_867/Reshape:output:0"conv2d_1159/Softplus:activations:0"tf.concat_725/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_725/concat�
!conv2d_1160/Conv2D/ReadVariableOpReadVariableOp*conv2d_1160_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1160/Conv2D/ReadVariableOp�
conv2d_1160/Conv2DConv2Dtf.concat_725/concat:output:0)conv2d_1160/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1160/Conv2D�
"conv2d_1160/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1160/BiasAdd/ReadVariableOp�
conv2d_1160/BiasAddBiasAddconv2d_1160/Conv2D:output:0*conv2d_1160/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1160/BiasAdd�
conv2d_1160/SoftplusSoftplusconv2d_1160/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1160/Softplus�
!conv2d_1161/Conv2D/ReadVariableOpReadVariableOp*conv2d_1161_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1161/Conv2D/ReadVariableOp�
conv2d_1161/Conv2DConv2D"conv2d_1160/Softplus:activations:0)conv2d_1161/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1161/Conv2D�
"conv2d_1161/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1161/BiasAdd/ReadVariableOp�
conv2d_1161/BiasAddBiasAddconv2d_1161/Conv2D:output:0*conv2d_1161/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_1161/BiasAdd
IdentityIdentityconv2d_1161/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_1159/BiasAdd/ReadVariableOp"^conv2d_1159/Conv2D/ReadVariableOp#^conv2d_1160/BiasAdd/ReadVariableOp"^conv2d_1160/Conv2D/ReadVariableOp#^conv2d_1161/BiasAdd/ReadVariableOp"^conv2d_1161/Conv2D/ReadVariableOp!^dense_293/BiasAdd/ReadVariableOp ^dense_293/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2H
"conv2d_1159/BiasAdd/ReadVariableOp"conv2d_1159/BiasAdd/ReadVariableOp2F
!conv2d_1159/Conv2D/ReadVariableOp!conv2d_1159/Conv2D/ReadVariableOp2H
"conv2d_1160/BiasAdd/ReadVariableOp"conv2d_1160/BiasAdd/ReadVariableOp2F
!conv2d_1160/Conv2D/ReadVariableOp!conv2d_1160/Conv2D/ReadVariableOp2H
"conv2d_1161/BiasAdd/ReadVariableOp"conv2d_1161/BiasAdd/ReadVariableOp2F
!conv2d_1161/Conv2D/ReadVariableOp!conv2d_1161/Conv2D/ReadVariableOp2D
 dense_293/BiasAdd/ReadVariableOp dense_293/BiasAdd/ReadVariableOp2B
dense_293/MatMul/ReadVariableOpdense_293/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_dense_293_layer_call_and_return_conditional_losses_13475021

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
�D
�
G__inference_model_293_layer_call_and_return_conditional_losses_13475368	
input.
conv2d_1159_13475336:"
conv2d_1159_13475338:$
dense_293_13475343:@@ 
dense_293_13475345:@.
conv2d_1160_13475357:"
conv2d_1160_13475359:.
conv2d_1161_13475362:"
conv2d_1161_13475364:
identity��#conv2d_1159/StatefulPartitionedCall�#conv2d_1160/StatefulPartitionedCall�#conv2d_1161/StatefulPartitionedCall�!dense_293/StatefulPartitionedCall�
0tf.__operators__.getitem_582/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_582/strided_slice/stack�
2tf.__operators__.getitem_582/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_582/strided_slice/stack_1�
2tf.__operators__.getitem_582/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_582/strided_slice/stack_2�
*tf.__operators__.getitem_582/strided_sliceStridedSliceinput9tf.__operators__.getitem_582/strided_slice/stack:output:0;tf.__operators__.getitem_582/strided_slice/stack_1:output:0;tf.__operators__.getitem_582/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_582/strided_slice�
$range_conversion_293/PartitionedCallPartitionedCall3tf.__operators__.getitem_582/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_134749652&
$range_conversion_293/PartitionedCall�
0tf.__operators__.getitem_583/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_583/strided_slice/stack�
2tf.__operators__.getitem_583/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_583/strided_slice/stack_1�
2tf.__operators__.getitem_583/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_583/strided_slice/stack_2�
*tf.__operators__.getitem_583/strided_sliceStridedSliceinput9tf.__operators__.getitem_583/strided_slice/stack:output:0;tf.__operators__.getitem_583/strided_slice/stack_1:output:0;tf.__operators__.getitem_583/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_583/strided_slicex
tf.concat_724/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_724/concat/axis�
tf.concat_724/concatConcatV2-range_conversion_293/PartitionedCall:output:03tf.__operators__.getitem_583/strided_slice:output:0"tf.concat_724/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_724/concat�
#conv2d_1159/StatefulPartitionedCallStatefulPartitionedCalltf.concat_724/concat:output:0conv2d_1159_13475336conv2d_1159_13475338*
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
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_134749842%
#conv2d_1159/StatefulPartitionedCall�
%average_pooling2d_433/PartitionedCallPartitionedCall,conv2d_1159/StatefulPartitionedCall:output:0*
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
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_134749942'
%average_pooling2d_433/PartitionedCall�
reshape_586/PartitionedCallPartitionedCall.average_pooling2d_433/PartitionedCall:output:0*
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
I__inference_reshape_586_layer_call_and_return_conditional_losses_134750082
reshape_586/PartitionedCall�
!dense_293/StatefulPartitionedCallStatefulPartitionedCall$reshape_586/PartitionedCall:output:0dense_293_13475343dense_293_13475345*
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
G__inference_dense_293_layer_call_and_return_conditional_losses_134750212#
!dense_293/StatefulPartitionedCall�
reshape_587/PartitionedCallPartitionedCall*dense_293/StatefulPartitionedCall:output:0*
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
I__inference_reshape_587_layer_call_and_return_conditional_losses_134750412
reshape_587/PartitionedCall�
tf.reshape_866/Reshape/shapeConst*
_output_shapes
:*
dtype0*-
value$B""����               2
tf.reshape_866/Reshape/shape�
tf.reshape_866/ReshapeReshape$reshape_587/PartitionedCall:output:0%tf.reshape_866/Reshape/shape:output:0*
T0*7
_output_shapes%
#:!���������2
tf.reshape_866/Reshape�
tf.tile_433/Tile/multiplesConst*
_output_shapes
:*
dtype0*-
value$B""                  2
tf.tile_433/Tile/multiples�
tf.tile_433/TileTiletf.reshape_866/Reshape:output:0#tf.tile_433/Tile/multiples:output:0*
T0*7
_output_shapes%
#:!���������2
tf.tile_433/Tile�
tf.reshape_867/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
tf.reshape_867/Reshape/shape�
tf.reshape_867/ReshapeReshapetf.tile_433/Tile:output:0%tf.reshape_867/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
tf.reshape_867/Reshapex
tf.concat_725/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_725/concat/axis�
tf.concat_725/concatConcatV2tf.reshape_867/Reshape:output:0,conv2d_1159/StatefulPartitionedCall:output:0"tf.concat_725/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_725/concat�
#conv2d_1160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_725/concat:output:0conv2d_1160_13475357conv2d_1160_13475359*
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
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_134750622%
#conv2d_1160/StatefulPartitionedCall�
#conv2d_1161/StatefulPartitionedCallStatefulPartitionedCall,conv2d_1160/StatefulPartitionedCall:output:0conv2d_1161_13475362conv2d_1161_13475364*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_134750782%
#conv2d_1161/StatefulPartitionedCall�
IdentityIdentity,conv2d_1161/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp$^conv2d_1159/StatefulPartitionedCall$^conv2d_1160/StatefulPartitionedCall$^conv2d_1161/StatefulPartitionedCall"^dense_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2J
#conv2d_1159/StatefulPartitionedCall#conv2d_1159/StatefulPartitionedCall2J
#conv2d_1160/StatefulPartitionedCall#conv2d_1160/StatefulPartitionedCall2J
#conv2d_1161/StatefulPartitionedCall#conv2d_1161/StatefulPartitionedCall2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
�
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_13475734

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
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
:���������*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_587_layer_call_and_return_conditional_losses_13475041

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
W
7__inference_range_conversion_293_layer_call_fn_13475608

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
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_134749652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�
J
.__inference_reshape_586_layer_call_fn_13475665

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
I__inference_reshape_586_layer_call_and_return_conditional_losses_134750082
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
serving_default_input:0���������G
conv2d_11618
StatefulPartitionedCall:0���������tensorflow/serving/predict:ŝ
�
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
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
�

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
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
�

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
Fiter

Gbeta_1

Hbeta_2
	Idecay
Jlearning_ratem�m�,m�-m�:m�;m�@m�Am�v�v�,v�-v�:v�;v�@v�Av�"
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
�
Kmetrics
	variables
Llayer_regularization_losses
Mlayer_metrics

Nlayers
Onon_trainable_variables
trainable_variables
regularization_losses
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
Pmetrics
	variables
Qlayer_regularization_losses
Rlayer_metrics

Slayers
Tnon_trainable_variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.:, 2conv2d_1159/kernel
 : 2conv2d_1159/bias
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
�
Umetrics
 	variables
Vlayer_regularization_losses
Wlayer_metrics

Xlayers
Ynon_trainable_variables
!trainable_variables
"regularization_losses
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
Zmetrics
$	variables
[layer_regularization_losses
\layer_metrics

]layers
^non_trainable_variables
%trainable_variables
&regularization_losses
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
_metrics
(	variables
`layer_regularization_losses
alayer_metrics

blayers
cnon_trainable_variables
)trainable_variables
*regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
$:"@@ 2dense_293/kernel
:@ 2dense_293/bias
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
dmetrics
.	variables
elayer_regularization_losses
flayer_metrics

glayers
hnon_trainable_variables
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
imetrics
2	variables
jlayer_regularization_losses
klayer_metrics

llayers
mnon_trainable_variables
3trainable_variables
4regularization_losses
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
.:, 2conv2d_1160/kernel
 : 2conv2d_1160/bias
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
�
nmetrics
<	variables
olayer_regularization_losses
player_metrics

qlayers
rnon_trainable_variables
=trainable_variables
>regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.:, 2conv2d_1161/kernel
 : 2conv2d_1161/bias
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
smetrics
B	variables
tlayer_regularization_losses
ulayer_metrics

vlayers
wnon_trainable_variables
Ctrainable_variables
Dregularization_losses
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
.
x0
y1"
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
�
_fn_kwargs
�	variables
�	keras_api"
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
�	variables"
_generic_user_object
3:1 2Adam/conv2d_1159/kernel/m
%:# 2Adam/conv2d_1159/bias/m
):'@@ 2Adam/dense_293/kernel/m
#:!@ 2Adam/dense_293/bias/m
3:1 2Adam/conv2d_1160/kernel/m
%:# 2Adam/conv2d_1160/bias/m
3:1 2Adam/conv2d_1161/kernel/m
%:# 2Adam/conv2d_1161/bias/m
3:1 2Adam/conv2d_1159/kernel/v
%:# 2Adam/conv2d_1159/bias/v
):'@@ 2Adam/dense_293/kernel/v
#:!@ 2Adam/dense_293/bias/v
3:1 2Adam/conv2d_1160/kernel/v
%:# 2Adam/conv2d_1160/bias/v
3:1 2Adam/conv2d_1161/kernel/v
%:# 2Adam/conv2d_1161/bias/v
�2�
G__inference_model_293_layer_call_and_return_conditional_losses_13475473
G__inference_model_293_layer_call_and_return_conditional_losses_13475549
G__inference_model_293_layer_call_and_return_conditional_losses_13475322
G__inference_model_293_layer_call_and_return_conditional_losses_13475368�
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
,__inference_model_293_layer_call_fn_13475104
,__inference_model_293_layer_call_fn_13475570
,__inference_model_293_layer_call_fn_13475591
,__inference_model_293_layer_call_fn_13475276�
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
#__inference__wrapped_model_13474920input"�
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
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_13475603�
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
7__inference_range_conversion_293_layer_call_fn_13475608�
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
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_13475619�
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
.__inference_conv2d_1159_layer_call_fn_13475628�
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
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13475633
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13475638�
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
8__inference_average_pooling2d_433_layer_call_fn_13475643
8__inference_average_pooling2d_433_layer_call_fn_13475648�
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
I__inference_reshape_586_layer_call_and_return_conditional_losses_13475660�
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
.__inference_reshape_586_layer_call_fn_13475665�
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
G__inference_dense_293_layer_call_and_return_conditional_losses_13475676�
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
,__inference_dense_293_layer_call_fn_13475685�
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
I__inference_reshape_587_layer_call_and_return_conditional_losses_13475699�
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
.__inference_reshape_587_layer_call_fn_13475704�
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
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_13475715�
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
.__inference_conv2d_1160_layer_call_fn_13475724�
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
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_13475734�
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
.__inference_conv2d_1161_layer_call_fn_13475743�
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
&__inference_signature_wrapper_13475397input"�
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
#__inference__wrapped_model_13474920�,-:;@A6�3
,�)
'�$
input���������
� "A�>
<
conv2d_1161-�*
conv2d_1161����������
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13475633�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
S__inference_average_pooling2d_433_layer_call_and_return_conditional_losses_13475638h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
8__inference_average_pooling2d_433_layer_call_fn_13475643�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
8__inference_average_pooling2d_433_layer_call_fn_13475648[7�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1159_layer_call_and_return_conditional_losses_13475619l7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1159_layer_call_fn_13475628_7�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1160_layer_call_and_return_conditional_losses_13475715l:;7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1160_layer_call_fn_13475724_:;7�4
-�*
(�%
inputs���������
� " �����������
I__inference_conv2d_1161_layer_call_and_return_conditional_losses_13475734l@A7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_conv2d_1161_layer_call_fn_13475743_@A7�4
-�*
(�%
inputs���������
� " �����������
G__inference_dense_293_layer_call_and_return_conditional_losses_13475676\,-/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� 
,__inference_dense_293_layer_call_fn_13475685O,-/�,
%�"
 �
inputs���������@
� "����������@�
G__inference_model_293_layer_call_and_return_conditional_losses_13475322y,-:;@A>�;
4�1
'�$
input���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_model_293_layer_call_and_return_conditional_losses_13475368y,-:;@A>�;
4�1
'�$
input���������
p

 
� "-�*
#� 
0���������
� �
G__inference_model_293_layer_call_and_return_conditional_losses_13475473z,-:;@A?�<
5�2
(�%
inputs���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_model_293_layer_call_and_return_conditional_losses_13475549z,-:;@A?�<
5�2
(�%
inputs���������
p

 
� "-�*
#� 
0���������
� �
,__inference_model_293_layer_call_fn_13475104l,-:;@A>�;
4�1
'�$
input���������
p 

 
� " �����������
,__inference_model_293_layer_call_fn_13475276l,-:;@A>�;
4�1
'�$
input���������
p

 
� " �����������
,__inference_model_293_layer_call_fn_13475570m,-:;@A?�<
5�2
(�%
inputs���������
p 

 
� " �����������
,__inference_model_293_layer_call_fn_13475591m,-:;@A?�<
5�2
(�%
inputs���������
p

 
� " �����������
R__inference_range_conversion_293_layer_call_and_return_conditional_losses_13475603l;�8
1�.
,�)

parameters���������
� "-�*
#� 
0���������
� �
7__inference_range_conversion_293_layer_call_fn_13475608_;�8
1�.
,�)

parameters���������
� " �����������
I__inference_reshape_586_layer_call_and_return_conditional_losses_13475660`7�4
-�*
(�%
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_586_layer_call_fn_13475665S7�4
-�*
(�%
inputs���������
� "����������@�
I__inference_reshape_587_layer_call_and_return_conditional_losses_13475699`/�,
%�"
 �
inputs���������@
� "-�*
#� 
0���������
� �
.__inference_reshape_587_layer_call_fn_13475704S/�,
%�"
 �
inputs���������@
� " �����������
&__inference_signature_wrapper_13475397�,-:;@A?�<
� 
5�2
0
input'�$
input���������"A�>
<
conv2d_1161-�*
conv2d_1161���������