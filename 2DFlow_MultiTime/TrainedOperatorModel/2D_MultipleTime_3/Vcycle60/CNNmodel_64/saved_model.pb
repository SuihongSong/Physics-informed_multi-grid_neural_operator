��
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
�
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv3d_218/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_218/kernel
�
%conv3d_218/kernel/Read/ReadVariableOpReadVariableOpconv3d_218/kernel**
_output_shapes
: *
dtype0
v
conv3d_218/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_218/bias
o
#conv3d_218/bias/Read/ReadVariableOpReadVariableOpconv3d_218/bias*
_output_shapes
: *
dtype0
�
conv3d_219/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_219/kernel
�
%conv3d_219/kernel/Read/ReadVariableOpReadVariableOpconv3d_219/kernel**
_output_shapes
: *
dtype0
v
conv3d_219/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_219/bias
o
#conv3d_219/bias/Read/ReadVariableOpReadVariableOpconv3d_219/bias*
_output_shapes
:*
dtype0
�
conv3d_220/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_220/kernel
�
%conv3d_220/kernel/Read/ReadVariableOpReadVariableOpconv3d_220/kernel**
_output_shapes
:*
dtype0
v
conv3d_220/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_220/bias
o
#conv3d_220/bias/Read/ReadVariableOpReadVariableOpconv3d_220/bias*
_output_shapes
:*
dtype0
�
conv3d_221/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_221/kernel
�
%conv3d_221/kernel/Read/ReadVariableOpReadVariableOpconv3d_221/kernel**
_output_shapes
:*
dtype0
v
conv3d_221/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_221/bias
o
#conv3d_221/bias/Read/ReadVariableOpReadVariableOpconv3d_221/bias*
_output_shapes
:*
dtype0
z
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_42/kernel
s
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes

:@@*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes
:@*
dtype0
�
conv3d_222/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_222/kernel
�
%conv3d_222/kernel/Read/ReadVariableOpReadVariableOpconv3d_222/kernel**
_output_shapes
:*
dtype0
v
conv3d_222/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_222/bias
o
#conv3d_222/bias/Read/ReadVariableOpReadVariableOpconv3d_222/bias*
_output_shapes
:*
dtype0
�
conv3d_223/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_223/kernel
�
%conv3d_223/kernel/Read/ReadVariableOpReadVariableOpconv3d_223/kernel**
_output_shapes
:*
dtype0
v
conv3d_223/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_223/bias
o
#conv3d_223/bias/Read/ReadVariableOpReadVariableOpconv3d_223/bias*
_output_shapes
:*
dtype0
�
conv3d_224/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_224/kernel
�
%conv3d_224/kernel/Read/ReadVariableOpReadVariableOpconv3d_224/kernel**
_output_shapes
:*
dtype0
v
conv3d_224/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_224/bias
o
#conv3d_224/bias/Read/ReadVariableOpReadVariableOpconv3d_224/bias*
_output_shapes
:*
dtype0
�
conv3d_225/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_225/kernel
�
%conv3d_225/kernel/Read/ReadVariableOpReadVariableOpconv3d_225/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_225/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_225/bias
o
#conv3d_225/bias/Read/ReadVariableOpReadVariableOpconv3d_225/bias*
_output_shapes
: *
dtype0
�
conv3d_226/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_226/kernel
�
%conv3d_226/kernel/Read/ReadVariableOpReadVariableOpconv3d_226/kernel**
_output_shapes
: *
dtype0
v
conv3d_226/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_226/bias
o
#conv3d_226/bias/Read/ReadVariableOpReadVariableOpconv3d_226/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�H
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�H
value�HB�G B�G
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
�kernel
	�bias
�	variables
�regularization_losses
�trainable_variables
�	keras_api

�	keras_api

�	keras_api

�	keras_api

�	keras_api
n
�kernel
	�bias
�	variables
�regularization_losses
�trainable_variables
�	keras_api
n
�kernel
	�bias
�	variables
�regularization_losses
�trainable_variables
�	keras_api
 
�
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
�14
�15
�16
�17
�18
�19
�
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
�14
�15
�16
�17
�18
�19
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layer_metrics
&regularization_losses
�layers
'	variables
(trainable_variables
 
 
 
 
 
�
�non_trainable_variables
,	variables
�metrics
 �layer_regularization_losses
�layer_metrics
-regularization_losses
�layers
.trainable_variables
 
 
][
VARIABLE_VALUEconv3d_218/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_218/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
�
�non_trainable_variables
4	variables
�metrics
 �layer_regularization_losses
�layer_metrics
5regularization_losses
�layers
6trainable_variables
 
 
 
�
�non_trainable_variables
8	variables
�metrics
 �layer_regularization_losses
�layer_metrics
9regularization_losses
�layers
:trainable_variables
][
VARIABLE_VALUEconv3d_219/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_219/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
�
�non_trainable_variables
>	variables
�metrics
 �layer_regularization_losses
�layer_metrics
?regularization_losses
�layers
@trainable_variables
 
 
 
�
�non_trainable_variables
B	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Cregularization_losses
�layers
Dtrainable_variables
][
VARIABLE_VALUEconv3d_220/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_220/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1
 

F0
G1
�
�non_trainable_variables
H	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Iregularization_losses
�layers
Jtrainable_variables
 
 
 
�
�non_trainable_variables
L	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Mregularization_losses
�layers
Ntrainable_variables
][
VARIABLE_VALUEconv3d_221/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_221/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1
 

P0
Q1
�
�non_trainable_variables
R	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Sregularization_losses
�layers
Ttrainable_variables
 
 
 
�
�non_trainable_variables
V	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Wregularization_losses
�layers
Xtrainable_variables
 
 
 
�
�non_trainable_variables
Z	variables
�metrics
 �layer_regularization_losses
�layer_metrics
[regularization_losses
�layers
\trainable_variables
[Y
VARIABLE_VALUEdense_42/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_42/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

^0
_1
 

^0
_1
�
�non_trainable_variables
`	variables
�metrics
 �layer_regularization_losses
�layer_metrics
aregularization_losses
�layers
btrainable_variables
 
 
 
�
�non_trainable_variables
d	variables
�metrics
 �layer_regularization_losses
�layer_metrics
eregularization_losses
�layers
ftrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_222/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_222/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

l0
m1
 

l0
m1
�
�non_trainable_variables
n	variables
�metrics
 �layer_regularization_losses
�layer_metrics
oregularization_losses
�layers
ptrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_223/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_223/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

v0
w1
 

v0
w1
�
�non_trainable_variables
x	variables
�metrics
 �layer_regularization_losses
�layer_metrics
yregularization_losses
�layers
ztrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_224/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_224/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 

�0
�1
�
�non_trainable_variables
�	variables
�metrics
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�layers
�trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_225/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_225/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 

�0
�1
�
�non_trainable_variables
�	variables
�metrics
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�layers
�trainable_variables
][
VARIABLE_VALUEconv3d_226/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_226/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 

�0
�1
�
�non_trainable_variables
�	variables
�metrics
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�layers
�trainable_variables
 
 
 
 
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
�
serving_default_inputPlaceholder*3
_output_shapes!
:���������@@*
dtype0*(
shape:���������@@
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_218/kernelconv3d_218/biasconv3d_219/kernelconv3d_219/biasconv3d_220/kernelconv3d_220/biasconv3d_221/kernelconv3d_221/biasdense_42/kerneldense_42/biasconv3d_222/kernelconv3d_222/biasconv3d_223/kernelconv3d_223/biasconv3d_224/kernelconv3d_224/biasconv3d_225/kernelconv3d_225/biasconv3d_226/kernelconv3d_226/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� */
f*R(
&__inference_signature_wrapper_13056408
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_218/kernel/Read/ReadVariableOp#conv3d_218/bias/Read/ReadVariableOp%conv3d_219/kernel/Read/ReadVariableOp#conv3d_219/bias/Read/ReadVariableOp%conv3d_220/kernel/Read/ReadVariableOp#conv3d_220/bias/Read/ReadVariableOp%conv3d_221/kernel/Read/ReadVariableOp#conv3d_221/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp%conv3d_222/kernel/Read/ReadVariableOp#conv3d_222/bias/Read/ReadVariableOp%conv3d_223/kernel/Read/ReadVariableOp#conv3d_223/bias/Read/ReadVariableOp%conv3d_224/kernel/Read/ReadVariableOp#conv3d_224/bias/Read/ReadVariableOp%conv3d_225/kernel/Read/ReadVariableOp#conv3d_225/bias/Read/ReadVariableOp%conv3d_226/kernel/Read/ReadVariableOp#conv3d_226/bias/Read/ReadVariableOpConst*!
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
GPU2 *0,1,2,3J 8� **
f%R#
!__inference__traced_save_13057270
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_218/kernelconv3d_218/biasconv3d_219/kernelconv3d_219/biasconv3d_220/kernelconv3d_220/biasconv3d_221/kernelconv3d_221/biasdense_42/kerneldense_42/biasconv3d_222/kernelconv3d_222/biasconv3d_223/kernelconv3d_223/biasconv3d_224/kernelconv3d_224/biasconv3d_225/kernelconv3d_225/biasconv3d_226/kernelconv3d_226/bias* 
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
GPU2 *0,1,2,3J 8� *-
f(R&
$__inference__traced_restore_13057340��
�
�
-__inference_conv3d_220_layer_call_fn_13056944

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_220_layer_call_and_return_conditional_losses_130555282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_model_42_layer_call_fn_13056155	
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
identity��StatefulPartitionedCall�
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
:���������@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_42_layer_call_and_return_conditional_losses_130560672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�
S
7__inference_average_pooling3d_89_layer_call_fn_13056912

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_130553552
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
S
7__inference_average_pooling3d_90_layer_call_fn_13056960

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_130553852
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_226_layer_call_and_return_conditional_losses_13055729

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:��������� @@
 
_user_specified_nameinputs
�
I
-__inference_reshape_85_layer_call_fn_13057073

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_85_layer_call_and_return_conditional_losses_130556172
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

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
H__inference_conv3d_222_layer_call_and_return_conditional_losses_13055638

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
n
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13057031

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�

F__inference_model_42_layer_call_and_return_conditional_losses_13056258	
input1
conv3d_218_13056169: !
conv3d_218_13056171: 1
conv3d_219_13056175: !
conv3d_219_13056177:1
conv3d_220_13056181:!
conv3d_220_13056183:1
conv3d_221_13056187:!
conv3d_221_13056189:#
dense_42_13056194:@@
dense_42_13056196:@1
conv3d_222_13056208:!
conv3d_222_13056210:1
conv3d_223_13056221:!
conv3d_223_13056223:1
conv3d_224_13056234:!
conv3d_224_13056236:1
conv3d_225_13056247:0 !
conv3d_225_13056249: 1
conv3d_226_13056252: !
conv3d_226_13056254:
identity��"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall�"conv3d_222/StatefulPartitionedCall�"conv3d_223/StatefulPartitionedCall�"conv3d_224/StatefulPartitionedCall�"conv3d_225/StatefulPartitionedCall�"conv3d_226/StatefulPartitionedCall� dense_42/StatefulPartitionedCall�
0tf.__operators__.getitem_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_420/strided_slice/stack�
2tf.__operators__.getitem_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_420/strided_slice/stack_1�
2tf.__operators__.getitem_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_420/strided_slice/stack_2�
*tf.__operators__.getitem_420/strided_sliceStridedSliceinput9tf.__operators__.getitem_420/strided_slice/stack:output:0;tf.__operators__.getitem_420/strided_slice/stack_1:output:0;tf.__operators__.getitem_420/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_420/strided_slice�
#range_conversion_42/PartitionedCallPartitionedCall3tf.__operators__.getitem_420/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_130554552%
#range_conversion_42/PartitionedCall�
0tf.__operators__.getitem_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_421/strided_slice/stack�
2tf.__operators__.getitem_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_421/strided_slice/stack_1�
2tf.__operators__.getitem_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_421/strided_slice/stack_2�
*tf.__operators__.getitem_421/strided_sliceStridedSliceinput9tf.__operators__.getitem_421/strided_slice/stack:output:0;tf.__operators__.getitem_421/strided_slice/stack_1:output:0;tf.__operators__.getitem_421/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_421/strided_slicex
tf.concat_560/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_560/concat/axis�
tf.concat_560/concatConcatV2,range_conversion_42/PartitionedCall:output:03tf.__operators__.getitem_421/strided_slice:output:0"tf.concat_560/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_560/concat�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCalltf.concat_560/concat:output:0conv3d_218_13056169conv3d_218_13056171*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_218_layer_call_and_return_conditional_losses_130554742$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_130554882&
$average_pooling3d_88/PartitionedCall�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_219_13056175conv3d_219_13056177*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_219_layer_call_and_return_conditional_losses_130555012$
"conv3d_219/StatefulPartitionedCall�
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_130555152&
$average_pooling3d_89/PartitionedCall�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_220_13056181conv3d_220_13056183*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_220_layer_call_and_return_conditional_losses_130555282$
"conv3d_220/StatefulPartitionedCall�
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_130555422&
$average_pooling3d_90/PartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_221_13056187conv3d_221_13056189*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_221_layer_call_and_return_conditional_losses_130555552$
"conv3d_221/StatefulPartitionedCall�
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_130555692&
$average_pooling3d_91/PartitionedCall�
reshape_84/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_84_layer_call_and_return_conditional_losses_130555832
reshape_84/PartitionedCall�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#reshape_84/PartitionedCall:output:0dense_42_13056194dense_42_13056196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_42_layer_call_and_return_conditional_losses_130555962"
 dense_42/StatefulPartitionedCall�
reshape_85/PartitionedCallPartitionedCall)dense_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_85_layer_call_and_return_conditional_losses_130556172
reshape_85/PartitionedCall�
tf.reshape_700/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_700/Reshape/shape�
tf.reshape_700/ReshapeReshape#reshape_85/PartitionedCall:output:0%tf.reshape_700/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_700/Reshape�
tf.tile_350/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_350/Tile/multiples�
tf.tile_350/TileTiletf.reshape_700/Reshape:output:0#tf.tile_350/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_350/Tile�
tf.reshape_701/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_701/Reshape/shape�
tf.reshape_701/ReshapeReshapetf.tile_350/Tile:output:0%tf.reshape_701/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_701/Reshapex
tf.concat_561/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_561/concat/axis�
tf.concat_561/concatConcatV2tf.reshape_701/Reshape:output:0+conv3d_221/StatefulPartitionedCall:output:0"tf.concat_561/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_561/concat�
"conv3d_222/StatefulPartitionedCallStatefulPartitionedCalltf.concat_561/concat:output:0conv3d_222_13056208conv3d_222_13056210*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_222_layer_call_and_return_conditional_losses_130556382$
"conv3d_222/StatefulPartitionedCall�
tf.reshape_702/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_702/Reshape/shape�
tf.reshape_702/ReshapeReshape+conv3d_222/StatefulPartitionedCall:output:0%tf.reshape_702/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_702/Reshape�
tf.tile_351/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_351/Tile/multiples�
tf.tile_351/TileTiletf.reshape_702/Reshape:output:0#tf.tile_351/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_351/Tile�
tf.reshape_703/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_703/Reshape/shape�
tf.reshape_703/ReshapeReshapetf.tile_351/Tile:output:0%tf.reshape_703/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_703/Reshapex
tf.concat_562/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_562/concat/axis�
tf.concat_562/concatConcatV2tf.reshape_703/Reshape:output:0+conv3d_220/StatefulPartitionedCall:output:0"tf.concat_562/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_562/concat�
"conv3d_223/StatefulPartitionedCallStatefulPartitionedCalltf.concat_562/concat:output:0conv3d_223_13056221conv3d_223_13056223*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_223_layer_call_and_return_conditional_losses_130556632$
"conv3d_223/StatefulPartitionedCall�
tf.reshape_704/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_704/Reshape/shape�
tf.reshape_704/ReshapeReshape+conv3d_223/StatefulPartitionedCall:output:0%tf.reshape_704/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_704/Reshape�
tf.tile_352/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_352/Tile/multiples�
tf.tile_352/TileTiletf.reshape_704/Reshape:output:0#tf.tile_352/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_352/Tile�
tf.reshape_705/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_705/Reshape/shape�
tf.reshape_705/ReshapeReshapetf.tile_352/Tile:output:0%tf.reshape_705/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_705/Reshapex
tf.concat_563/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_563/concat/axis�
tf.concat_563/concatConcatV2tf.reshape_705/Reshape:output:0+conv3d_219/StatefulPartitionedCall:output:0"tf.concat_563/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_563/concat�
"conv3d_224/StatefulPartitionedCallStatefulPartitionedCalltf.concat_563/concat:output:0conv3d_224_13056234conv3d_224_13056236*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_224_layer_call_and_return_conditional_losses_130556882$
"conv3d_224/StatefulPartitionedCall�
tf.reshape_706/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_706/Reshape/shape�
tf.reshape_706/ReshapeReshape+conv3d_224/StatefulPartitionedCall:output:0%tf.reshape_706/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_706/Reshape�
tf.tile_353/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_353/Tile/multiples�
tf.tile_353/TileTiletf.reshape_706/Reshape:output:0#tf.tile_353/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_353/Tile�
tf.reshape_707/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_707/Reshape/shape�
tf.reshape_707/ReshapeReshapetf.tile_353/Tile:output:0%tf.reshape_707/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_707/Reshapex
tf.concat_564/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_564/concat/axis�
tf.concat_564/concatConcatV2tf.reshape_707/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_564/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_564/concat�
"conv3d_225/StatefulPartitionedCallStatefulPartitionedCalltf.concat_564/concat:output:0conv3d_225_13056247conv3d_225_13056249*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_225_layer_call_and_return_conditional_losses_130557132$
"conv3d_225/StatefulPartitionedCall�
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCall+conv3d_225/StatefulPartitionedCall:output:0conv3d_226_13056252conv3d_226_13056254*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_130557292$
"conv3d_226/StatefulPartitionedCall�
IdentityIdentity+conv3d_226/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall#^conv3d_222/StatefulPartitionedCall#^conv3d_223/StatefulPartitionedCall#^conv3d_224/StatefulPartitionedCall#^conv3d_225/StatefulPartitionedCall#^conv3d_226/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2H
"conv3d_222/StatefulPartitionedCall"conv3d_222/StatefulPartitionedCall2H
"conv3d_223/StatefulPartitionedCall"conv3d_223/StatefulPartitionedCall2H
"conv3d_224/StatefulPartitionedCall"conv3d_224/StatefulPartitionedCall2H
"conv3d_225/StatefulPartitionedCall"conv3d_225/StatefulPartitionedCall2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�

n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13056878

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�

n
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13055355

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�

n
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13056926

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_226_layer_call_fn_13057177

inputs%
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_130557292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:��������� @@
 
_user_specified_nameinputs
�
�
H__inference_conv3d_220_layer_call_and_return_conditional_losses_13056955

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_222_layer_call_and_return_conditional_losses_13057108

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
F__inference_dense_42_layer_call_and_return_conditional_losses_13057068

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
H__inference_conv3d_226_layer_call_and_return_conditional_losses_13057187

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:��������� @@
 
_user_specified_nameinputs
�
S
7__inference_average_pooling3d_88_layer_call_fn_13056864

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_130553252
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_222_layer_call_fn_13057097

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_222_layer_call_and_return_conditional_losses_130556382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
q
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_13056839

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
:���������@@2
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
:���������@@2	
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
:���������@@2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:���������@@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@:_ [
3
_output_shapes!
:���������@@
$
_user_specified_name
parameters
��
�
#__inference__wrapped_model_13055312	
inputP
2model_42_conv3d_218_conv3d_readvariableop_resource: A
3model_42_conv3d_218_biasadd_readvariableop_resource: P
2model_42_conv3d_219_conv3d_readvariableop_resource: A
3model_42_conv3d_219_biasadd_readvariableop_resource:P
2model_42_conv3d_220_conv3d_readvariableop_resource:A
3model_42_conv3d_220_biasadd_readvariableop_resource:P
2model_42_conv3d_221_conv3d_readvariableop_resource:A
3model_42_conv3d_221_biasadd_readvariableop_resource:B
0model_42_dense_42_matmul_readvariableop_resource:@@?
1model_42_dense_42_biasadd_readvariableop_resource:@P
2model_42_conv3d_222_conv3d_readvariableop_resource:A
3model_42_conv3d_222_biasadd_readvariableop_resource:P
2model_42_conv3d_223_conv3d_readvariableop_resource:A
3model_42_conv3d_223_biasadd_readvariableop_resource:P
2model_42_conv3d_224_conv3d_readvariableop_resource:A
3model_42_conv3d_224_biasadd_readvariableop_resource:P
2model_42_conv3d_225_conv3d_readvariableop_resource:0 A
3model_42_conv3d_225_biasadd_readvariableop_resource: P
2model_42_conv3d_226_conv3d_readvariableop_resource: A
3model_42_conv3d_226_biasadd_readvariableop_resource:
identity��*model_42/conv3d_218/BiasAdd/ReadVariableOp�)model_42/conv3d_218/Conv3D/ReadVariableOp�*model_42/conv3d_219/BiasAdd/ReadVariableOp�)model_42/conv3d_219/Conv3D/ReadVariableOp�*model_42/conv3d_220/BiasAdd/ReadVariableOp�)model_42/conv3d_220/Conv3D/ReadVariableOp�*model_42/conv3d_221/BiasAdd/ReadVariableOp�)model_42/conv3d_221/Conv3D/ReadVariableOp�*model_42/conv3d_222/BiasAdd/ReadVariableOp�)model_42/conv3d_222/Conv3D/ReadVariableOp�*model_42/conv3d_223/BiasAdd/ReadVariableOp�)model_42/conv3d_223/Conv3D/ReadVariableOp�*model_42/conv3d_224/BiasAdd/ReadVariableOp�)model_42/conv3d_224/Conv3D/ReadVariableOp�*model_42/conv3d_225/BiasAdd/ReadVariableOp�)model_42/conv3d_225/Conv3D/ReadVariableOp�*model_42/conv3d_226/BiasAdd/ReadVariableOp�)model_42/conv3d_226/Conv3D/ReadVariableOp�(model_42/dense_42/BiasAdd/ReadVariableOp�'model_42/dense_42/MatMul/ReadVariableOp�
9model_42/tf.__operators__.getitem_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_42/tf.__operators__.getitem_420/strided_slice/stack�
;model_42/tf.__operators__.getitem_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_42/tf.__operators__.getitem_420/strided_slice/stack_1�
;model_42/tf.__operators__.getitem_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_42/tf.__operators__.getitem_420/strided_slice/stack_2�
3model_42/tf.__operators__.getitem_420/strided_sliceStridedSliceinputBmodel_42/tf.__operators__.getitem_420/strided_slice/stack:output:0Dmodel_42/tf.__operators__.getitem_420/strided_slice/stack_1:output:0Dmodel_42/tf.__operators__.getitem_420/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask25
3model_42/tf.__operators__.getitem_420/strided_slice�
"model_42/range_conversion_42/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_42/range_conversion_42/sub/y�
 model_42/range_conversion_42/subSub<model_42/tf.__operators__.getitem_420/strided_slice:output:0+model_42/range_conversion_42/sub/y:output:0*
T0*3
_output_shapes!
:���������@@2"
 model_42/range_conversion_42/sub�
&model_42/range_conversion_42/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_42/range_conversion_42/truediv/y�
$model_42/range_conversion_42/truedivRealDiv$model_42/range_conversion_42/sub:z:0/model_42/range_conversion_42/truediv/y:output:0*
T0*3
_output_shapes!
:���������@@2&
$model_42/range_conversion_42/truediv�
"model_42/range_conversion_42/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_42/range_conversion_42/mul/y�
 model_42/range_conversion_42/mulMul(model_42/range_conversion_42/truediv:z:0+model_42/range_conversion_42/mul/y:output:0*
T0*3
_output_shapes!
:���������@@2"
 model_42/range_conversion_42/mul�
"model_42/range_conversion_42/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_42/range_conversion_42/add/y�
 model_42/range_conversion_42/addAddV2$model_42/range_conversion_42/mul:z:0+model_42/range_conversion_42/add/y:output:0*
T0*3
_output_shapes!
:���������@@2"
 model_42/range_conversion_42/add�
9model_42/tf.__operators__.getitem_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_42/tf.__operators__.getitem_421/strided_slice/stack�
;model_42/tf.__operators__.getitem_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_42/tf.__operators__.getitem_421/strided_slice/stack_1�
;model_42/tf.__operators__.getitem_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_42/tf.__operators__.getitem_421/strided_slice/stack_2�
3model_42/tf.__operators__.getitem_421/strided_sliceStridedSliceinputBmodel_42/tf.__operators__.getitem_421/strided_slice/stack:output:0Dmodel_42/tf.__operators__.getitem_421/strided_slice/stack_1:output:0Dmodel_42/tf.__operators__.getitem_421/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask25
3model_42/tf.__operators__.getitem_421/strided_slice�
"model_42/tf.concat_560/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_42/tf.concat_560/concat/axis�
model_42/tf.concat_560/concatConcatV2$model_42/range_conversion_42/add:z:0<model_42/tf.__operators__.getitem_421/strided_slice:output:0+model_42/tf.concat_560/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
model_42/tf.concat_560/concat�
)model_42/conv3d_218/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_218_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_42/conv3d_218/Conv3D/ReadVariableOp�
model_42/conv3d_218/Conv3DConv3D&model_42/tf.concat_560/concat:output:01model_42/conv3d_218/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_218/Conv3D�
*model_42/conv3d_218/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_218_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_42/conv3d_218/BiasAdd/ReadVariableOp�
model_42/conv3d_218/BiasAddBiasAdd#model_42/conv3d_218/Conv3D:output:02model_42/conv3d_218/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
model_42/conv3d_218/BiasAdd�
model_42/conv3d_218/SoftplusSoftplus$model_42/conv3d_218/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
model_42/conv3d_218/Softplus�
,model_42/average_pooling3d_88/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_42/average_pooling3d_88/transpose/perm�
'model_42/average_pooling3d_88/transpose	Transpose*model_42/conv3d_218/Softplus:activations:05model_42/average_pooling3d_88/transpose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2)
'model_42/average_pooling3d_88/transpose�
'model_42/average_pooling3d_88/AvgPool3D	AvgPool3D+model_42/average_pooling3d_88/transpose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2)
'model_42/average_pooling3d_88/AvgPool3D�
.model_42/average_pooling3d_88/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_42/average_pooling3d_88/transpose_1/perm�
)model_42/average_pooling3d_88/transpose_1	Transpose0model_42/average_pooling3d_88/AvgPool3D:output:07model_42/average_pooling3d_88/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2+
)model_42/average_pooling3d_88/transpose_1�
)model_42/conv3d_219/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_219_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_42/conv3d_219/Conv3D/ReadVariableOp�
model_42/conv3d_219/Conv3DConv3D-model_42/average_pooling3d_88/transpose_1:y:01model_42/conv3d_219/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_219/Conv3D�
*model_42/conv3d_219/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_42/conv3d_219/BiasAdd/ReadVariableOp�
model_42/conv3d_219/BiasAddBiasAdd#model_42/conv3d_219/Conv3D:output:02model_42/conv3d_219/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_42/conv3d_219/BiasAdd�
model_42/conv3d_219/SoftplusSoftplus$model_42/conv3d_219/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_42/conv3d_219/Softplus�
,model_42/average_pooling3d_89/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_42/average_pooling3d_89/transpose/perm�
'model_42/average_pooling3d_89/transpose	Transpose*model_42/conv3d_219/Softplus:activations:05model_42/average_pooling3d_89/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2)
'model_42/average_pooling3d_89/transpose�
'model_42/average_pooling3d_89/AvgPool3D	AvgPool3D+model_42/average_pooling3d_89/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_42/average_pooling3d_89/AvgPool3D�
.model_42/average_pooling3d_89/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_42/average_pooling3d_89/transpose_1/perm�
)model_42/average_pooling3d_89/transpose_1	Transpose0model_42/average_pooling3d_89/AvgPool3D:output:07model_42/average_pooling3d_89/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_42/average_pooling3d_89/transpose_1�
)model_42/conv3d_220/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_220_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_42/conv3d_220/Conv3D/ReadVariableOp�
model_42/conv3d_220/Conv3DConv3D-model_42/average_pooling3d_89/transpose_1:y:01model_42/conv3d_220/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_220/Conv3D�
*model_42/conv3d_220/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_42/conv3d_220/BiasAdd/ReadVariableOp�
model_42/conv3d_220/BiasAddBiasAdd#model_42/conv3d_220/Conv3D:output:02model_42/conv3d_220/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_42/conv3d_220/BiasAdd�
model_42/conv3d_220/SoftplusSoftplus$model_42/conv3d_220/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_42/conv3d_220/Softplus�
,model_42/average_pooling3d_90/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_42/average_pooling3d_90/transpose/perm�
'model_42/average_pooling3d_90/transpose	Transpose*model_42/conv3d_220/Softplus:activations:05model_42/average_pooling3d_90/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_42/average_pooling3d_90/transpose�
'model_42/average_pooling3d_90/AvgPool3D	AvgPool3D+model_42/average_pooling3d_90/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_42/average_pooling3d_90/AvgPool3D�
.model_42/average_pooling3d_90/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_42/average_pooling3d_90/transpose_1/perm�
)model_42/average_pooling3d_90/transpose_1	Transpose0model_42/average_pooling3d_90/AvgPool3D:output:07model_42/average_pooling3d_90/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_42/average_pooling3d_90/transpose_1�
)model_42/conv3d_221/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_221_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_42/conv3d_221/Conv3D/ReadVariableOp�
model_42/conv3d_221/Conv3DConv3D-model_42/average_pooling3d_90/transpose_1:y:01model_42/conv3d_221/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_221/Conv3D�
*model_42/conv3d_221/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_42/conv3d_221/BiasAdd/ReadVariableOp�
model_42/conv3d_221/BiasAddBiasAdd#model_42/conv3d_221/Conv3D:output:02model_42/conv3d_221/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_42/conv3d_221/BiasAdd�
model_42/conv3d_221/SoftplusSoftplus$model_42/conv3d_221/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_42/conv3d_221/Softplus�
,model_42/average_pooling3d_91/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_42/average_pooling3d_91/transpose/perm�
'model_42/average_pooling3d_91/transpose	Transpose*model_42/conv3d_221/Softplus:activations:05model_42/average_pooling3d_91/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_42/average_pooling3d_91/transpose�
'model_42/average_pooling3d_91/AvgPool3D	AvgPool3D+model_42/average_pooling3d_91/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_42/average_pooling3d_91/AvgPool3D�
.model_42/average_pooling3d_91/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_42/average_pooling3d_91/transpose_1/perm�
)model_42/average_pooling3d_91/transpose_1	Transpose0model_42/average_pooling3d_91/AvgPool3D:output:07model_42/average_pooling3d_91/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_42/average_pooling3d_91/transpose_1�
model_42/reshape_84/ShapeShape-model_42/average_pooling3d_91/transpose_1:y:0*
T0*
_output_shapes
:2
model_42/reshape_84/Shape�
'model_42/reshape_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_42/reshape_84/strided_slice/stack�
)model_42/reshape_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_42/reshape_84/strided_slice/stack_1�
)model_42/reshape_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_42/reshape_84/strided_slice/stack_2�
!model_42/reshape_84/strided_sliceStridedSlice"model_42/reshape_84/Shape:output:00model_42/reshape_84/strided_slice/stack:output:02model_42/reshape_84/strided_slice/stack_1:output:02model_42/reshape_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_42/reshape_84/strided_slice�
#model_42/reshape_84/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_42/reshape_84/Reshape/shape/1�
!model_42/reshape_84/Reshape/shapePack*model_42/reshape_84/strided_slice:output:0,model_42/reshape_84/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_42/reshape_84/Reshape/shape�
model_42/reshape_84/ReshapeReshape-model_42/average_pooling3d_91/transpose_1:y:0*model_42/reshape_84/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_42/reshape_84/Reshape�
'model_42/dense_42/MatMul/ReadVariableOpReadVariableOp0model_42_dense_42_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_42/dense_42/MatMul/ReadVariableOp�
model_42/dense_42/MatMulMatMul$model_42/reshape_84/Reshape:output:0/model_42/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_42/dense_42/MatMul�
(model_42/dense_42/BiasAdd/ReadVariableOpReadVariableOp1model_42_dense_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_42/dense_42/BiasAdd/ReadVariableOp�
model_42/dense_42/BiasAddBiasAdd"model_42/dense_42/MatMul:product:00model_42/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_42/dense_42/BiasAdd�
model_42/dense_42/SoftplusSoftplus"model_42/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_42/dense_42/Softplus�
model_42/reshape_85/ShapeShape(model_42/dense_42/Softplus:activations:0*
T0*
_output_shapes
:2
model_42/reshape_85/Shape�
'model_42/reshape_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_42/reshape_85/strided_slice/stack�
)model_42/reshape_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_42/reshape_85/strided_slice/stack_1�
)model_42/reshape_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_42/reshape_85/strided_slice/stack_2�
!model_42/reshape_85/strided_sliceStridedSlice"model_42/reshape_85/Shape:output:00model_42/reshape_85/strided_slice/stack:output:02model_42/reshape_85/strided_slice/stack_1:output:02model_42/reshape_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_42/reshape_85/strided_slice�
#model_42/reshape_85/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_42/reshape_85/Reshape/shape/1�
#model_42/reshape_85/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_42/reshape_85/Reshape/shape/2�
#model_42/reshape_85/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_42/reshape_85/Reshape/shape/3�
#model_42/reshape_85/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_42/reshape_85/Reshape/shape/4�
!model_42/reshape_85/Reshape/shapePack*model_42/reshape_85/strided_slice:output:0,model_42/reshape_85/Reshape/shape/1:output:0,model_42/reshape_85/Reshape/shape/2:output:0,model_42/reshape_85/Reshape/shape/3:output:0,model_42/reshape_85/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_42/reshape_85/Reshape/shape�
model_42/reshape_85/ReshapeReshape(model_42/dense_42/Softplus:activations:0*model_42/reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_42/reshape_85/Reshape�
%model_42/tf.reshape_700/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_42/tf.reshape_700/Reshape/shape�
model_42/tf.reshape_700/ReshapeReshape$model_42/reshape_85/Reshape:output:0.model_42/tf.reshape_700/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_42/tf.reshape_700/Reshape�
#model_42/tf.tile_350/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_42/tf.tile_350/Tile/multiples�
model_42/tf.tile_350/TileTile(model_42/tf.reshape_700/Reshape:output:0,model_42/tf.tile_350/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_42/tf.tile_350/Tile�
%model_42/tf.reshape_701/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_42/tf.reshape_701/Reshape/shape�
model_42/tf.reshape_701/ReshapeReshape"model_42/tf.tile_350/Tile:output:0.model_42/tf.reshape_701/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_42/tf.reshape_701/Reshape�
"model_42/tf.concat_561/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_42/tf.concat_561/concat/axis�
model_42/tf.concat_561/concatConcatV2(model_42/tf.reshape_701/Reshape:output:0*model_42/conv3d_221/Softplus:activations:0+model_42/tf.concat_561/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_42/tf.concat_561/concat�
)model_42/conv3d_222/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_222_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_42/conv3d_222/Conv3D/ReadVariableOp�
model_42/conv3d_222/Conv3DConv3D&model_42/tf.concat_561/concat:output:01model_42/conv3d_222/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_222/Conv3D�
*model_42/conv3d_222/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_42/conv3d_222/BiasAdd/ReadVariableOp�
model_42/conv3d_222/BiasAddBiasAdd#model_42/conv3d_222/Conv3D:output:02model_42/conv3d_222/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_42/conv3d_222/BiasAdd�
model_42/conv3d_222/SoftplusSoftplus$model_42/conv3d_222/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_42/conv3d_222/Softplus�
%model_42/tf.reshape_702/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_42/tf.reshape_702/Reshape/shape�
model_42/tf.reshape_702/ReshapeReshape*model_42/conv3d_222/Softplus:activations:0.model_42/tf.reshape_702/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_42/tf.reshape_702/Reshape�
#model_42/tf.tile_351/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_42/tf.tile_351/Tile/multiples�
model_42/tf.tile_351/TileTile(model_42/tf.reshape_702/Reshape:output:0,model_42/tf.tile_351/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_42/tf.tile_351/Tile�
%model_42/tf.reshape_703/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_42/tf.reshape_703/Reshape/shape�
model_42/tf.reshape_703/ReshapeReshape"model_42/tf.tile_351/Tile:output:0.model_42/tf.reshape_703/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_42/tf.reshape_703/Reshape�
"model_42/tf.concat_562/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_42/tf.concat_562/concat/axis�
model_42/tf.concat_562/concatConcatV2(model_42/tf.reshape_703/Reshape:output:0*model_42/conv3d_220/Softplus:activations:0+model_42/tf.concat_562/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_42/tf.concat_562/concat�
)model_42/conv3d_223/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_223_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_42/conv3d_223/Conv3D/ReadVariableOp�
model_42/conv3d_223/Conv3DConv3D&model_42/tf.concat_562/concat:output:01model_42/conv3d_223/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_223/Conv3D�
*model_42/conv3d_223/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_223_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_42/conv3d_223/BiasAdd/ReadVariableOp�
model_42/conv3d_223/BiasAddBiasAdd#model_42/conv3d_223/Conv3D:output:02model_42/conv3d_223/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_42/conv3d_223/BiasAdd�
model_42/conv3d_223/SoftplusSoftplus$model_42/conv3d_223/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_42/conv3d_223/Softplus�
%model_42/tf.reshape_704/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_42/tf.reshape_704/Reshape/shape�
model_42/tf.reshape_704/ReshapeReshape*model_42/conv3d_223/Softplus:activations:0.model_42/tf.reshape_704/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_42/tf.reshape_704/Reshape�
#model_42/tf.tile_352/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_42/tf.tile_352/Tile/multiples�
model_42/tf.tile_352/TileTile(model_42/tf.reshape_704/Reshape:output:0,model_42/tf.tile_352/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_42/tf.tile_352/Tile�
%model_42/tf.reshape_705/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2'
%model_42/tf.reshape_705/Reshape/shape�
model_42/tf.reshape_705/ReshapeReshape"model_42/tf.tile_352/Tile:output:0.model_42/tf.reshape_705/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2!
model_42/tf.reshape_705/Reshape�
"model_42/tf.concat_563/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_42/tf.concat_563/concat/axis�
model_42/tf.concat_563/concatConcatV2(model_42/tf.reshape_705/Reshape:output:0*model_42/conv3d_219/Softplus:activations:0+model_42/tf.concat_563/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_42/tf.concat_563/concat�
)model_42/conv3d_224/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_224_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_42/conv3d_224/Conv3D/ReadVariableOp�
model_42/conv3d_224/Conv3DConv3D&model_42/tf.concat_563/concat:output:01model_42/conv3d_224/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_224/Conv3D�
*model_42/conv3d_224/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_224_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_42/conv3d_224/BiasAdd/ReadVariableOp�
model_42/conv3d_224/BiasAddBiasAdd#model_42/conv3d_224/Conv3D:output:02model_42/conv3d_224/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_42/conv3d_224/BiasAdd�
model_42/conv3d_224/SoftplusSoftplus$model_42/conv3d_224/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_42/conv3d_224/Softplus�
%model_42/tf.reshape_706/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2'
%model_42/tf.reshape_706/Reshape/shape�
model_42/tf.reshape_706/ReshapeReshape*model_42/conv3d_224/Softplus:activations:0.model_42/tf.reshape_706/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2!
model_42/tf.reshape_706/Reshape�
#model_42/tf.tile_353/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_42/tf.tile_353/Tile/multiples�
model_42/tf.tile_353/TileTile(model_42/tf.reshape_706/Reshape:output:0,model_42/tf.tile_353/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
model_42/tf.tile_353/Tile�
%model_42/tf.reshape_707/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2'
%model_42/tf.reshape_707/Reshape/shape�
model_42/tf.reshape_707/ReshapeReshape"model_42/tf.tile_353/Tile:output:0.model_42/tf.reshape_707/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2!
model_42/tf.reshape_707/Reshape�
"model_42/tf.concat_564/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_42/tf.concat_564/concat/axis�
model_42/tf.concat_564/concatConcatV2(model_42/tf.reshape_707/Reshape:output:0*model_42/conv3d_218/Softplus:activations:0+model_42/tf.concat_564/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
model_42/tf.concat_564/concat�
)model_42/conv3d_225/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_225_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_42/conv3d_225/Conv3D/ReadVariableOp�
model_42/conv3d_225/Conv3DConv3D&model_42/tf.concat_564/concat:output:01model_42/conv3d_225/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_225/Conv3D�
*model_42/conv3d_225/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_225_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_42/conv3d_225/BiasAdd/ReadVariableOp�
model_42/conv3d_225/BiasAddBiasAdd#model_42/conv3d_225/Conv3D:output:02model_42/conv3d_225/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
model_42/conv3d_225/BiasAdd�
model_42/conv3d_225/SoftplusSoftplus$model_42/conv3d_225/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
model_42/conv3d_225/Softplus�
)model_42/conv3d_226/Conv3D/ReadVariableOpReadVariableOp2model_42_conv3d_226_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_42/conv3d_226/Conv3D/ReadVariableOp�
model_42/conv3d_226/Conv3DConv3D*model_42/conv3d_225/Softplus:activations:01model_42/conv3d_226/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_42/conv3d_226/Conv3D�
*model_42/conv3d_226/BiasAdd/ReadVariableOpReadVariableOp3model_42_conv3d_226_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_42/conv3d_226/BiasAdd/ReadVariableOp�
model_42/conv3d_226/BiasAddBiasAdd#model_42/conv3d_226/Conv3D:output:02model_42/conv3d_226/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2
model_42/conv3d_226/BiasAdd�
IdentityIdentity$model_42/conv3d_226/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp+^model_42/conv3d_218/BiasAdd/ReadVariableOp*^model_42/conv3d_218/Conv3D/ReadVariableOp+^model_42/conv3d_219/BiasAdd/ReadVariableOp*^model_42/conv3d_219/Conv3D/ReadVariableOp+^model_42/conv3d_220/BiasAdd/ReadVariableOp*^model_42/conv3d_220/Conv3D/ReadVariableOp+^model_42/conv3d_221/BiasAdd/ReadVariableOp*^model_42/conv3d_221/Conv3D/ReadVariableOp+^model_42/conv3d_222/BiasAdd/ReadVariableOp*^model_42/conv3d_222/Conv3D/ReadVariableOp+^model_42/conv3d_223/BiasAdd/ReadVariableOp*^model_42/conv3d_223/Conv3D/ReadVariableOp+^model_42/conv3d_224/BiasAdd/ReadVariableOp*^model_42/conv3d_224/Conv3D/ReadVariableOp+^model_42/conv3d_225/BiasAdd/ReadVariableOp*^model_42/conv3d_225/Conv3D/ReadVariableOp+^model_42/conv3d_226/BiasAdd/ReadVariableOp*^model_42/conv3d_226/Conv3D/ReadVariableOp)^model_42/dense_42/BiasAdd/ReadVariableOp(^model_42/dense_42/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2X
*model_42/conv3d_218/BiasAdd/ReadVariableOp*model_42/conv3d_218/BiasAdd/ReadVariableOp2V
)model_42/conv3d_218/Conv3D/ReadVariableOp)model_42/conv3d_218/Conv3D/ReadVariableOp2X
*model_42/conv3d_219/BiasAdd/ReadVariableOp*model_42/conv3d_219/BiasAdd/ReadVariableOp2V
)model_42/conv3d_219/Conv3D/ReadVariableOp)model_42/conv3d_219/Conv3D/ReadVariableOp2X
*model_42/conv3d_220/BiasAdd/ReadVariableOp*model_42/conv3d_220/BiasAdd/ReadVariableOp2V
)model_42/conv3d_220/Conv3D/ReadVariableOp)model_42/conv3d_220/Conv3D/ReadVariableOp2X
*model_42/conv3d_221/BiasAdd/ReadVariableOp*model_42/conv3d_221/BiasAdd/ReadVariableOp2V
)model_42/conv3d_221/Conv3D/ReadVariableOp)model_42/conv3d_221/Conv3D/ReadVariableOp2X
*model_42/conv3d_222/BiasAdd/ReadVariableOp*model_42/conv3d_222/BiasAdd/ReadVariableOp2V
)model_42/conv3d_222/Conv3D/ReadVariableOp)model_42/conv3d_222/Conv3D/ReadVariableOp2X
*model_42/conv3d_223/BiasAdd/ReadVariableOp*model_42/conv3d_223/BiasAdd/ReadVariableOp2V
)model_42/conv3d_223/Conv3D/ReadVariableOp)model_42/conv3d_223/Conv3D/ReadVariableOp2X
*model_42/conv3d_224/BiasAdd/ReadVariableOp*model_42/conv3d_224/BiasAdd/ReadVariableOp2V
)model_42/conv3d_224/Conv3D/ReadVariableOp)model_42/conv3d_224/Conv3D/ReadVariableOp2X
*model_42/conv3d_225/BiasAdd/ReadVariableOp*model_42/conv3d_225/BiasAdd/ReadVariableOp2V
)model_42/conv3d_225/Conv3D/ReadVariableOp)model_42/conv3d_225/Conv3D/ReadVariableOp2X
*model_42/conv3d_226/BiasAdd/ReadVariableOp*model_42/conv3d_226/BiasAdd/ReadVariableOp2V
)model_42/conv3d_226/Conv3D/ReadVariableOp)model_42/conv3d_226/Conv3D/ReadVariableOp2T
(model_42/dense_42/BiasAdd/ReadVariableOp(model_42/dense_42/BiasAdd/ReadVariableOp2R
'model_42/dense_42/MatMul/ReadVariableOp'model_42/dense_42/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�
�
H__inference_conv3d_221_layer_call_and_return_conditional_losses_13057003

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
q
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_13055455

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
:���������@@2
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
:���������@@2	
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
:���������@@2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:���������@@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@:_ [
3
_output_shapes!
:���������@@
$
_user_specified_name
parameters
�
S
7__inference_average_pooling3d_91_layer_call_fn_13057013

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_130555692
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�3
�
!__inference__traced_save_13057270
file_prefix0
,savev2_conv3d_218_kernel_read_readvariableop.
*savev2_conv3d_218_bias_read_readvariableop0
,savev2_conv3d_219_kernel_read_readvariableop.
*savev2_conv3d_219_bias_read_readvariableop0
,savev2_conv3d_220_kernel_read_readvariableop.
*savev2_conv3d_220_bias_read_readvariableop0
,savev2_conv3d_221_kernel_read_readvariableop.
*savev2_conv3d_221_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop0
,savev2_conv3d_222_kernel_read_readvariableop.
*savev2_conv3d_222_bias_read_readvariableop0
,savev2_conv3d_223_kernel_read_readvariableop.
*savev2_conv3d_223_bias_read_readvariableop0
,savev2_conv3d_224_kernel_read_readvariableop.
*savev2_conv3d_224_bias_read_readvariableop0
,savev2_conv3d_225_kernel_read_readvariableop.
*savev2_conv3d_225_bias_read_readvariableop0
,savev2_conv3d_226_kernel_read_readvariableop.
*savev2_conv3d_226_bias_read_readvariableop
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
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_218_kernel_read_readvariableop*savev2_conv3d_218_bias_read_readvariableop,savev2_conv3d_219_kernel_read_readvariableop*savev2_conv3d_219_bias_read_readvariableop,savev2_conv3d_220_kernel_read_readvariableop*savev2_conv3d_220_bias_read_readvariableop,savev2_conv3d_221_kernel_read_readvariableop*savev2_conv3d_221_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop,savev2_conv3d_222_kernel_read_readvariableop*savev2_conv3d_222_bias_read_readvariableop,savev2_conv3d_223_kernel_read_readvariableop*savev2_conv3d_223_bias_read_readvariableop,savev2_conv3d_224_kernel_read_readvariableop*savev2_conv3d_224_bias_read_readvariableop,savev2_conv3d_225_kernel_read_readvariableop*savev2_conv3d_225_bias_read_readvariableop,savev2_conv3d_226_kernel_read_readvariableop*savev2_conv3d_226_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
22
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
�: : : : ::::::@@:@:::::::0 : : :: 2(
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
�
�
-__inference_conv3d_221_layer_call_fn_13056992

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_221_layer_call_and_return_conditional_losses_130555552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_223_layer_call_fn_13057117

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_223_layer_call_and_return_conditional_losses_130556632
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
��
�
F__inference_model_42_layer_call_and_return_conditional_losses_13056822

inputsG
)conv3d_218_conv3d_readvariableop_resource: 8
*conv3d_218_biasadd_readvariableop_resource: G
)conv3d_219_conv3d_readvariableop_resource: 8
*conv3d_219_biasadd_readvariableop_resource:G
)conv3d_220_conv3d_readvariableop_resource:8
*conv3d_220_biasadd_readvariableop_resource:G
)conv3d_221_conv3d_readvariableop_resource:8
*conv3d_221_biasadd_readvariableop_resource:9
'dense_42_matmul_readvariableop_resource:@@6
(dense_42_biasadd_readvariableop_resource:@G
)conv3d_222_conv3d_readvariableop_resource:8
*conv3d_222_biasadd_readvariableop_resource:G
)conv3d_223_conv3d_readvariableop_resource:8
*conv3d_223_biasadd_readvariableop_resource:G
)conv3d_224_conv3d_readvariableop_resource:8
*conv3d_224_biasadd_readvariableop_resource:G
)conv3d_225_conv3d_readvariableop_resource:0 8
*conv3d_225_biasadd_readvariableop_resource: G
)conv3d_226_conv3d_readvariableop_resource: 8
*conv3d_226_biasadd_readvariableop_resource:
identity��!conv3d_218/BiasAdd/ReadVariableOp� conv3d_218/Conv3D/ReadVariableOp�!conv3d_219/BiasAdd/ReadVariableOp� conv3d_219/Conv3D/ReadVariableOp�!conv3d_220/BiasAdd/ReadVariableOp� conv3d_220/Conv3D/ReadVariableOp�!conv3d_221/BiasAdd/ReadVariableOp� conv3d_221/Conv3D/ReadVariableOp�!conv3d_222/BiasAdd/ReadVariableOp� conv3d_222/Conv3D/ReadVariableOp�!conv3d_223/BiasAdd/ReadVariableOp� conv3d_223/Conv3D/ReadVariableOp�!conv3d_224/BiasAdd/ReadVariableOp� conv3d_224/Conv3D/ReadVariableOp�!conv3d_225/BiasAdd/ReadVariableOp� conv3d_225/Conv3D/ReadVariableOp�!conv3d_226/BiasAdd/ReadVariableOp� conv3d_226/Conv3D/ReadVariableOp�dense_42/BiasAdd/ReadVariableOp�dense_42/MatMul/ReadVariableOp�
0tf.__operators__.getitem_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_420/strided_slice/stack�
2tf.__operators__.getitem_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_420/strided_slice/stack_1�
2tf.__operators__.getitem_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_420/strided_slice/stack_2�
*tf.__operators__.getitem_420/strided_sliceStridedSliceinputs9tf.__operators__.getitem_420/strided_slice/stack:output:0;tf.__operators__.getitem_420/strided_slice/stack_1:output:0;tf.__operators__.getitem_420/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_420/strided_slice{
range_conversion_42/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_42/sub/y�
range_conversion_42/subSub3tf.__operators__.getitem_420/strided_slice:output:0"range_conversion_42/sub/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/sub�
range_conversion_42/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_42/truediv/y�
range_conversion_42/truedivRealDivrange_conversion_42/sub:z:0&range_conversion_42/truediv/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/truediv{
range_conversion_42/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_42/mul/y�
range_conversion_42/mulMulrange_conversion_42/truediv:z:0"range_conversion_42/mul/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/mul{
range_conversion_42/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_42/add/y�
range_conversion_42/addAddV2range_conversion_42/mul:z:0"range_conversion_42/add/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/add�
0tf.__operators__.getitem_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_421/strided_slice/stack�
2tf.__operators__.getitem_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_421/strided_slice/stack_1�
2tf.__operators__.getitem_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_421/strided_slice/stack_2�
*tf.__operators__.getitem_421/strided_sliceStridedSliceinputs9tf.__operators__.getitem_421/strided_slice/stack:output:0;tf.__operators__.getitem_421/strided_slice/stack_1:output:0;tf.__operators__.getitem_421/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_421/strided_slicex
tf.concat_560/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_560/concat/axis�
tf.concat_560/concatConcatV2range_conversion_42/add:z:03tf.__operators__.getitem_421/strided_slice:output:0"tf.concat_560/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_560/concat�
 conv3d_218/Conv3D/ReadVariableOpReadVariableOp)conv3d_218_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_218/Conv3D/ReadVariableOp�
conv3d_218/Conv3DConv3Dtf.concat_560/concat:output:0(conv3d_218/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_218/Conv3D�
!conv3d_218/BiasAdd/ReadVariableOpReadVariableOp*conv3d_218_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_218/BiasAdd/ReadVariableOp�
conv3d_218/BiasAddBiasAddconv3d_218/Conv3D:output:0)conv3d_218/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_218/BiasAdd�
conv3d_218/SoftplusSoftplusconv3d_218/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_218/Softplus�
#average_pooling3d_88/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_88/transpose/perm�
average_pooling3d_88/transpose	Transpose!conv3d_218/Softplus:activations:0,average_pooling3d_88/transpose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2 
average_pooling3d_88/transpose�
average_pooling3d_88/AvgPool3D	AvgPool3D"average_pooling3d_88/transpose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_88/AvgPool3D�
%average_pooling3d_88/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_88/transpose_1/perm�
 average_pooling3d_88/transpose_1	Transpose'average_pooling3d_88/AvgPool3D:output:0.average_pooling3d_88/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2"
 average_pooling3d_88/transpose_1�
 conv3d_219/Conv3D/ReadVariableOpReadVariableOp)conv3d_219_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_219/Conv3D/ReadVariableOp�
conv3d_219/Conv3DConv3D$average_pooling3d_88/transpose_1:y:0(conv3d_219/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_219/Conv3D�
!conv3d_219/BiasAdd/ReadVariableOpReadVariableOp*conv3d_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_219/BiasAdd/ReadVariableOp�
conv3d_219/BiasAddBiasAddconv3d_219/Conv3D:output:0)conv3d_219/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_219/BiasAdd�
conv3d_219/SoftplusSoftplusconv3d_219/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_219/Softplus�
#average_pooling3d_89/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_89/transpose/perm�
average_pooling3d_89/transpose	Transpose!conv3d_219/Softplus:activations:0,average_pooling3d_89/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_89/transpose�
average_pooling3d_89/AvgPool3D	AvgPool3D"average_pooling3d_89/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_89/AvgPool3D�
%average_pooling3d_89/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_89/transpose_1/perm�
 average_pooling3d_89/transpose_1	Transpose'average_pooling3d_89/AvgPool3D:output:0.average_pooling3d_89/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_89/transpose_1�
 conv3d_220/Conv3D/ReadVariableOpReadVariableOp)conv3d_220_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_220/Conv3D/ReadVariableOp�
conv3d_220/Conv3DConv3D$average_pooling3d_89/transpose_1:y:0(conv3d_220/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_220/Conv3D�
!conv3d_220/BiasAdd/ReadVariableOpReadVariableOp*conv3d_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_220/BiasAdd/ReadVariableOp�
conv3d_220/BiasAddBiasAddconv3d_220/Conv3D:output:0)conv3d_220/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_220/BiasAdd�
conv3d_220/SoftplusSoftplusconv3d_220/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_220/Softplus�
#average_pooling3d_90/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_90/transpose/perm�
average_pooling3d_90/transpose	Transpose!conv3d_220/Softplus:activations:0,average_pooling3d_90/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_90/transpose�
average_pooling3d_90/AvgPool3D	AvgPool3D"average_pooling3d_90/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_90/AvgPool3D�
%average_pooling3d_90/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_90/transpose_1/perm�
 average_pooling3d_90/transpose_1	Transpose'average_pooling3d_90/AvgPool3D:output:0.average_pooling3d_90/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_90/transpose_1�
 conv3d_221/Conv3D/ReadVariableOpReadVariableOp)conv3d_221_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_221/Conv3D/ReadVariableOp�
conv3d_221/Conv3DConv3D$average_pooling3d_90/transpose_1:y:0(conv3d_221/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_221/Conv3D�
!conv3d_221/BiasAdd/ReadVariableOpReadVariableOp*conv3d_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_221/BiasAdd/ReadVariableOp�
conv3d_221/BiasAddBiasAddconv3d_221/Conv3D:output:0)conv3d_221/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_221/BiasAdd�
conv3d_221/SoftplusSoftplusconv3d_221/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_221/Softplus�
#average_pooling3d_91/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_91/transpose/perm�
average_pooling3d_91/transpose	Transpose!conv3d_221/Softplus:activations:0,average_pooling3d_91/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_91/transpose�
average_pooling3d_91/AvgPool3D	AvgPool3D"average_pooling3d_91/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_91/AvgPool3D�
%average_pooling3d_91/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_91/transpose_1/perm�
 average_pooling3d_91/transpose_1	Transpose'average_pooling3d_91/AvgPool3D:output:0.average_pooling3d_91/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_91/transpose_1x
reshape_84/ShapeShape$average_pooling3d_91/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_84/Shape�
reshape_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_84/strided_slice/stack�
 reshape_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_84/strided_slice/stack_1�
 reshape_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_84/strided_slice/stack_2�
reshape_84/strided_sliceStridedSlicereshape_84/Shape:output:0'reshape_84/strided_slice/stack:output:0)reshape_84/strided_slice/stack_1:output:0)reshape_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_84/strided_slicez
reshape_84/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_84/Reshape/shape/1�
reshape_84/Reshape/shapePack!reshape_84/strided_slice:output:0#reshape_84/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_84/Reshape/shape�
reshape_84/ReshapeReshape$average_pooling3d_91/transpose_1:y:0!reshape_84/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_84/Reshape�
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_42/MatMul/ReadVariableOp�
dense_42/MatMulMatMulreshape_84/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_42/MatMul�
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_42/BiasAdd/ReadVariableOp�
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_42/BiasAdd
dense_42/SoftplusSoftplusdense_42/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_42/Softpluss
reshape_85/ShapeShapedense_42/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_85/Shape�
reshape_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_85/strided_slice/stack�
 reshape_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_85/strided_slice/stack_1�
 reshape_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_85/strided_slice/stack_2�
reshape_85/strided_sliceStridedSlicereshape_85/Shape:output:0'reshape_85/strided_slice/stack:output:0)reshape_85/strided_slice/stack_1:output:0)reshape_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_85/strided_slicez
reshape_85/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/1z
reshape_85/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/2z
reshape_85/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/3z
reshape_85/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/4�
reshape_85/Reshape/shapePack!reshape_85/strided_slice:output:0#reshape_85/Reshape/shape/1:output:0#reshape_85/Reshape/shape/2:output:0#reshape_85/Reshape/shape/3:output:0#reshape_85/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_85/Reshape/shape�
reshape_85/ReshapeReshapedense_42/Softplus:activations:0!reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_85/Reshape�
tf.reshape_700/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_700/Reshape/shape�
tf.reshape_700/ReshapeReshapereshape_85/Reshape:output:0%tf.reshape_700/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_700/Reshape�
tf.tile_350/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_350/Tile/multiples�
tf.tile_350/TileTiletf.reshape_700/Reshape:output:0#tf.tile_350/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_350/Tile�
tf.reshape_701/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_701/Reshape/shape�
tf.reshape_701/ReshapeReshapetf.tile_350/Tile:output:0%tf.reshape_701/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_701/Reshapex
tf.concat_561/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_561/concat/axis�
tf.concat_561/concatConcatV2tf.reshape_701/Reshape:output:0!conv3d_221/Softplus:activations:0"tf.concat_561/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_561/concat�
 conv3d_222/Conv3D/ReadVariableOpReadVariableOp)conv3d_222_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_222/Conv3D/ReadVariableOp�
conv3d_222/Conv3DConv3Dtf.concat_561/concat:output:0(conv3d_222/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_222/Conv3D�
!conv3d_222/BiasAdd/ReadVariableOpReadVariableOp*conv3d_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_222/BiasAdd/ReadVariableOp�
conv3d_222/BiasAddBiasAddconv3d_222/Conv3D:output:0)conv3d_222/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_222/BiasAdd�
conv3d_222/SoftplusSoftplusconv3d_222/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_222/Softplus�
tf.reshape_702/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_702/Reshape/shape�
tf.reshape_702/ReshapeReshape!conv3d_222/Softplus:activations:0%tf.reshape_702/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_702/Reshape�
tf.tile_351/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_351/Tile/multiples�
tf.tile_351/TileTiletf.reshape_702/Reshape:output:0#tf.tile_351/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_351/Tile�
tf.reshape_703/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_703/Reshape/shape�
tf.reshape_703/ReshapeReshapetf.tile_351/Tile:output:0%tf.reshape_703/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_703/Reshapex
tf.concat_562/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_562/concat/axis�
tf.concat_562/concatConcatV2tf.reshape_703/Reshape:output:0!conv3d_220/Softplus:activations:0"tf.concat_562/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_562/concat�
 conv3d_223/Conv3D/ReadVariableOpReadVariableOp)conv3d_223_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_223/Conv3D/ReadVariableOp�
conv3d_223/Conv3DConv3Dtf.concat_562/concat:output:0(conv3d_223/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_223/Conv3D�
!conv3d_223/BiasAdd/ReadVariableOpReadVariableOp*conv3d_223_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_223/BiasAdd/ReadVariableOp�
conv3d_223/BiasAddBiasAddconv3d_223/Conv3D:output:0)conv3d_223/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_223/BiasAdd�
conv3d_223/SoftplusSoftplusconv3d_223/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_223/Softplus�
tf.reshape_704/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_704/Reshape/shape�
tf.reshape_704/ReshapeReshape!conv3d_223/Softplus:activations:0%tf.reshape_704/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_704/Reshape�
tf.tile_352/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_352/Tile/multiples�
tf.tile_352/TileTiletf.reshape_704/Reshape:output:0#tf.tile_352/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_352/Tile�
tf.reshape_705/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_705/Reshape/shape�
tf.reshape_705/ReshapeReshapetf.tile_352/Tile:output:0%tf.reshape_705/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_705/Reshapex
tf.concat_563/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_563/concat/axis�
tf.concat_563/concatConcatV2tf.reshape_705/Reshape:output:0!conv3d_219/Softplus:activations:0"tf.concat_563/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_563/concat�
 conv3d_224/Conv3D/ReadVariableOpReadVariableOp)conv3d_224_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_224/Conv3D/ReadVariableOp�
conv3d_224/Conv3DConv3Dtf.concat_563/concat:output:0(conv3d_224/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_224/Conv3D�
!conv3d_224/BiasAdd/ReadVariableOpReadVariableOp*conv3d_224_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_224/BiasAdd/ReadVariableOp�
conv3d_224/BiasAddBiasAddconv3d_224/Conv3D:output:0)conv3d_224/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_224/BiasAdd�
conv3d_224/SoftplusSoftplusconv3d_224/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_224/Softplus�
tf.reshape_706/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_706/Reshape/shape�
tf.reshape_706/ReshapeReshape!conv3d_224/Softplus:activations:0%tf.reshape_706/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_706/Reshape�
tf.tile_353/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_353/Tile/multiples�
tf.tile_353/TileTiletf.reshape_706/Reshape:output:0#tf.tile_353/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_353/Tile�
tf.reshape_707/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_707/Reshape/shape�
tf.reshape_707/ReshapeReshapetf.tile_353/Tile:output:0%tf.reshape_707/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_707/Reshapex
tf.concat_564/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_564/concat/axis�
tf.concat_564/concatConcatV2tf.reshape_707/Reshape:output:0!conv3d_218/Softplus:activations:0"tf.concat_564/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_564/concat�
 conv3d_225/Conv3D/ReadVariableOpReadVariableOp)conv3d_225_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_225/Conv3D/ReadVariableOp�
conv3d_225/Conv3DConv3Dtf.concat_564/concat:output:0(conv3d_225/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_225/Conv3D�
!conv3d_225/BiasAdd/ReadVariableOpReadVariableOp*conv3d_225_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_225/BiasAdd/ReadVariableOp�
conv3d_225/BiasAddBiasAddconv3d_225/Conv3D:output:0)conv3d_225/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_225/BiasAdd�
conv3d_225/SoftplusSoftplusconv3d_225/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_225/Softplus�
 conv3d_226/Conv3D/ReadVariableOpReadVariableOp)conv3d_226_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_226/Conv3D/ReadVariableOp�
conv3d_226/Conv3DConv3D!conv3d_225/Softplus:activations:0(conv3d_226/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_226/Conv3D�
!conv3d_226/BiasAdd/ReadVariableOpReadVariableOp*conv3d_226_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_226/BiasAdd/ReadVariableOp�
conv3d_226/BiasAddBiasAddconv3d_226/Conv3D:output:0)conv3d_226/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2
conv3d_226/BiasAdd�
IdentityIdentityconv3d_226/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp"^conv3d_218/BiasAdd/ReadVariableOp!^conv3d_218/Conv3D/ReadVariableOp"^conv3d_219/BiasAdd/ReadVariableOp!^conv3d_219/Conv3D/ReadVariableOp"^conv3d_220/BiasAdd/ReadVariableOp!^conv3d_220/Conv3D/ReadVariableOp"^conv3d_221/BiasAdd/ReadVariableOp!^conv3d_221/Conv3D/ReadVariableOp"^conv3d_222/BiasAdd/ReadVariableOp!^conv3d_222/Conv3D/ReadVariableOp"^conv3d_223/BiasAdd/ReadVariableOp!^conv3d_223/Conv3D/ReadVariableOp"^conv3d_224/BiasAdd/ReadVariableOp!^conv3d_224/Conv3D/ReadVariableOp"^conv3d_225/BiasAdd/ReadVariableOp!^conv3d_225/Conv3D/ReadVariableOp"^conv3d_226/BiasAdd/ReadVariableOp!^conv3d_226/Conv3D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_218/BiasAdd/ReadVariableOp!conv3d_218/BiasAdd/ReadVariableOp2D
 conv3d_218/Conv3D/ReadVariableOp conv3d_218/Conv3D/ReadVariableOp2F
!conv3d_219/BiasAdd/ReadVariableOp!conv3d_219/BiasAdd/ReadVariableOp2D
 conv3d_219/Conv3D/ReadVariableOp conv3d_219/Conv3D/ReadVariableOp2F
!conv3d_220/BiasAdd/ReadVariableOp!conv3d_220/BiasAdd/ReadVariableOp2D
 conv3d_220/Conv3D/ReadVariableOp conv3d_220/Conv3D/ReadVariableOp2F
!conv3d_221/BiasAdd/ReadVariableOp!conv3d_221/BiasAdd/ReadVariableOp2D
 conv3d_221/Conv3D/ReadVariableOp conv3d_221/Conv3D/ReadVariableOp2F
!conv3d_222/BiasAdd/ReadVariableOp!conv3d_222/BiasAdd/ReadVariableOp2D
 conv3d_222/Conv3D/ReadVariableOp conv3d_222/Conv3D/ReadVariableOp2F
!conv3d_223/BiasAdd/ReadVariableOp!conv3d_223/BiasAdd/ReadVariableOp2D
 conv3d_223/Conv3D/ReadVariableOp conv3d_223/Conv3D/ReadVariableOp2F
!conv3d_224/BiasAdd/ReadVariableOp!conv3d_224/BiasAdd/ReadVariableOp2D
 conv3d_224/Conv3D/ReadVariableOp conv3d_224/Conv3D/ReadVariableOp2F
!conv3d_225/BiasAdd/ReadVariableOp!conv3d_225/BiasAdd/ReadVariableOp2D
 conv3d_225/Conv3D/ReadVariableOp conv3d_225/Conv3D/ReadVariableOp2F
!conv3d_226/BiasAdd/ReadVariableOp!conv3d_226/BiasAdd/ReadVariableOp2D
 conv3d_226/Conv3D/ReadVariableOp conv3d_226/Conv3D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�

n
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13056974

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�

n
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13055415

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�

F__inference_model_42_layer_call_and_return_conditional_losses_13055736

inputs1
conv3d_218_13055475: !
conv3d_218_13055477: 1
conv3d_219_13055502: !
conv3d_219_13055504:1
conv3d_220_13055529:!
conv3d_220_13055531:1
conv3d_221_13055556:!
conv3d_221_13055558:#
dense_42_13055597:@@
dense_42_13055599:@1
conv3d_222_13055639:!
conv3d_222_13055641:1
conv3d_223_13055664:!
conv3d_223_13055666:1
conv3d_224_13055689:!
conv3d_224_13055691:1
conv3d_225_13055714:0 !
conv3d_225_13055716: 1
conv3d_226_13055730: !
conv3d_226_13055732:
identity��"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall�"conv3d_222/StatefulPartitionedCall�"conv3d_223/StatefulPartitionedCall�"conv3d_224/StatefulPartitionedCall�"conv3d_225/StatefulPartitionedCall�"conv3d_226/StatefulPartitionedCall� dense_42/StatefulPartitionedCall�
0tf.__operators__.getitem_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_420/strided_slice/stack�
2tf.__operators__.getitem_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_420/strided_slice/stack_1�
2tf.__operators__.getitem_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_420/strided_slice/stack_2�
*tf.__operators__.getitem_420/strided_sliceStridedSliceinputs9tf.__operators__.getitem_420/strided_slice/stack:output:0;tf.__operators__.getitem_420/strided_slice/stack_1:output:0;tf.__operators__.getitem_420/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_420/strided_slice�
#range_conversion_42/PartitionedCallPartitionedCall3tf.__operators__.getitem_420/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_130554552%
#range_conversion_42/PartitionedCall�
0tf.__operators__.getitem_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_421/strided_slice/stack�
2tf.__operators__.getitem_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_421/strided_slice/stack_1�
2tf.__operators__.getitem_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_421/strided_slice/stack_2�
*tf.__operators__.getitem_421/strided_sliceStridedSliceinputs9tf.__operators__.getitem_421/strided_slice/stack:output:0;tf.__operators__.getitem_421/strided_slice/stack_1:output:0;tf.__operators__.getitem_421/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_421/strided_slicex
tf.concat_560/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_560/concat/axis�
tf.concat_560/concatConcatV2,range_conversion_42/PartitionedCall:output:03tf.__operators__.getitem_421/strided_slice:output:0"tf.concat_560/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_560/concat�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCalltf.concat_560/concat:output:0conv3d_218_13055475conv3d_218_13055477*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_218_layer_call_and_return_conditional_losses_130554742$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_130554882&
$average_pooling3d_88/PartitionedCall�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_219_13055502conv3d_219_13055504*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_219_layer_call_and_return_conditional_losses_130555012$
"conv3d_219/StatefulPartitionedCall�
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_130555152&
$average_pooling3d_89/PartitionedCall�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_220_13055529conv3d_220_13055531*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_220_layer_call_and_return_conditional_losses_130555282$
"conv3d_220/StatefulPartitionedCall�
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_130555422&
$average_pooling3d_90/PartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_221_13055556conv3d_221_13055558*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_221_layer_call_and_return_conditional_losses_130555552$
"conv3d_221/StatefulPartitionedCall�
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_130555692&
$average_pooling3d_91/PartitionedCall�
reshape_84/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_84_layer_call_and_return_conditional_losses_130555832
reshape_84/PartitionedCall�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#reshape_84/PartitionedCall:output:0dense_42_13055597dense_42_13055599*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_42_layer_call_and_return_conditional_losses_130555962"
 dense_42/StatefulPartitionedCall�
reshape_85/PartitionedCallPartitionedCall)dense_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_85_layer_call_and_return_conditional_losses_130556172
reshape_85/PartitionedCall�
tf.reshape_700/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_700/Reshape/shape�
tf.reshape_700/ReshapeReshape#reshape_85/PartitionedCall:output:0%tf.reshape_700/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_700/Reshape�
tf.tile_350/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_350/Tile/multiples�
tf.tile_350/TileTiletf.reshape_700/Reshape:output:0#tf.tile_350/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_350/Tile�
tf.reshape_701/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_701/Reshape/shape�
tf.reshape_701/ReshapeReshapetf.tile_350/Tile:output:0%tf.reshape_701/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_701/Reshapex
tf.concat_561/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_561/concat/axis�
tf.concat_561/concatConcatV2tf.reshape_701/Reshape:output:0+conv3d_221/StatefulPartitionedCall:output:0"tf.concat_561/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_561/concat�
"conv3d_222/StatefulPartitionedCallStatefulPartitionedCalltf.concat_561/concat:output:0conv3d_222_13055639conv3d_222_13055641*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_222_layer_call_and_return_conditional_losses_130556382$
"conv3d_222/StatefulPartitionedCall�
tf.reshape_702/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_702/Reshape/shape�
tf.reshape_702/ReshapeReshape+conv3d_222/StatefulPartitionedCall:output:0%tf.reshape_702/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_702/Reshape�
tf.tile_351/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_351/Tile/multiples�
tf.tile_351/TileTiletf.reshape_702/Reshape:output:0#tf.tile_351/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_351/Tile�
tf.reshape_703/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_703/Reshape/shape�
tf.reshape_703/ReshapeReshapetf.tile_351/Tile:output:0%tf.reshape_703/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_703/Reshapex
tf.concat_562/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_562/concat/axis�
tf.concat_562/concatConcatV2tf.reshape_703/Reshape:output:0+conv3d_220/StatefulPartitionedCall:output:0"tf.concat_562/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_562/concat�
"conv3d_223/StatefulPartitionedCallStatefulPartitionedCalltf.concat_562/concat:output:0conv3d_223_13055664conv3d_223_13055666*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_223_layer_call_and_return_conditional_losses_130556632$
"conv3d_223/StatefulPartitionedCall�
tf.reshape_704/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_704/Reshape/shape�
tf.reshape_704/ReshapeReshape+conv3d_223/StatefulPartitionedCall:output:0%tf.reshape_704/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_704/Reshape�
tf.tile_352/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_352/Tile/multiples�
tf.tile_352/TileTiletf.reshape_704/Reshape:output:0#tf.tile_352/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_352/Tile�
tf.reshape_705/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_705/Reshape/shape�
tf.reshape_705/ReshapeReshapetf.tile_352/Tile:output:0%tf.reshape_705/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_705/Reshapex
tf.concat_563/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_563/concat/axis�
tf.concat_563/concatConcatV2tf.reshape_705/Reshape:output:0+conv3d_219/StatefulPartitionedCall:output:0"tf.concat_563/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_563/concat�
"conv3d_224/StatefulPartitionedCallStatefulPartitionedCalltf.concat_563/concat:output:0conv3d_224_13055689conv3d_224_13055691*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_224_layer_call_and_return_conditional_losses_130556882$
"conv3d_224/StatefulPartitionedCall�
tf.reshape_706/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_706/Reshape/shape�
tf.reshape_706/ReshapeReshape+conv3d_224/StatefulPartitionedCall:output:0%tf.reshape_706/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_706/Reshape�
tf.tile_353/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_353/Tile/multiples�
tf.tile_353/TileTiletf.reshape_706/Reshape:output:0#tf.tile_353/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_353/Tile�
tf.reshape_707/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_707/Reshape/shape�
tf.reshape_707/ReshapeReshapetf.tile_353/Tile:output:0%tf.reshape_707/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_707/Reshapex
tf.concat_564/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_564/concat/axis�
tf.concat_564/concatConcatV2tf.reshape_707/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_564/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_564/concat�
"conv3d_225/StatefulPartitionedCallStatefulPartitionedCalltf.concat_564/concat:output:0conv3d_225_13055714conv3d_225_13055716*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_225_layer_call_and_return_conditional_losses_130557132$
"conv3d_225/StatefulPartitionedCall�
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCall+conv3d_225/StatefulPartitionedCall:output:0conv3d_226_13055730conv3d_226_13055732*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_130557292$
"conv3d_226/StatefulPartitionedCall�
IdentityIdentity+conv3d_226/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall#^conv3d_222/StatefulPartitionedCall#^conv3d_223/StatefulPartitionedCall#^conv3d_224/StatefulPartitionedCall#^conv3d_225/StatefulPartitionedCall#^conv3d_226/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2H
"conv3d_222/StatefulPartitionedCall"conv3d_222/StatefulPartitionedCall2H
"conv3d_223/StatefulPartitionedCall"conv3d_223/StatefulPartitionedCall2H
"conv3d_224/StatefulPartitionedCall"conv3d_224/StatefulPartitionedCall2H
"conv3d_225/StatefulPartitionedCall"conv3d_225/StatefulPartitionedCall2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�	
n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13055488

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� @@:[ W
3
_output_shapes!
:��������� @@
 
_user_specified_nameinputs
�
�
F__inference_dense_42_layer_call_and_return_conditional_losses_13055596

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
n
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13056983

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_224_layer_call_fn_13057137

inputs%
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_224_layer_call_and_return_conditional_losses_130556882
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
+__inference_model_42_layer_call_fn_13056498

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
identity��StatefulPartitionedCall�
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
:���������@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_42_layer_call_and_return_conditional_losses_130560672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�

n
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13057022

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
-__inference_conv3d_219_layer_call_fn_13056896

inputs%
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_219_layer_call_and_return_conditional_losses_130555012
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������   
 
_user_specified_nameinputs
�
�
H__inference_conv3d_223_layer_call_and_return_conditional_losses_13055663

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_219_layer_call_and_return_conditional_losses_13055501

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������   
 
_user_specified_nameinputs
�
�

F__inference_model_42_layer_call_and_return_conditional_losses_13056067

inputs1
conv3d_218_13055978: !
conv3d_218_13055980: 1
conv3d_219_13055984: !
conv3d_219_13055986:1
conv3d_220_13055990:!
conv3d_220_13055992:1
conv3d_221_13055996:!
conv3d_221_13055998:#
dense_42_13056003:@@
dense_42_13056005:@1
conv3d_222_13056017:!
conv3d_222_13056019:1
conv3d_223_13056030:!
conv3d_223_13056032:1
conv3d_224_13056043:!
conv3d_224_13056045:1
conv3d_225_13056056:0 !
conv3d_225_13056058: 1
conv3d_226_13056061: !
conv3d_226_13056063:
identity��"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall�"conv3d_222/StatefulPartitionedCall�"conv3d_223/StatefulPartitionedCall�"conv3d_224/StatefulPartitionedCall�"conv3d_225/StatefulPartitionedCall�"conv3d_226/StatefulPartitionedCall� dense_42/StatefulPartitionedCall�
0tf.__operators__.getitem_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_420/strided_slice/stack�
2tf.__operators__.getitem_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_420/strided_slice/stack_1�
2tf.__operators__.getitem_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_420/strided_slice/stack_2�
*tf.__operators__.getitem_420/strided_sliceStridedSliceinputs9tf.__operators__.getitem_420/strided_slice/stack:output:0;tf.__operators__.getitem_420/strided_slice/stack_1:output:0;tf.__operators__.getitem_420/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_420/strided_slice�
#range_conversion_42/PartitionedCallPartitionedCall3tf.__operators__.getitem_420/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_130554552%
#range_conversion_42/PartitionedCall�
0tf.__operators__.getitem_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_421/strided_slice/stack�
2tf.__operators__.getitem_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_421/strided_slice/stack_1�
2tf.__operators__.getitem_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_421/strided_slice/stack_2�
*tf.__operators__.getitem_421/strided_sliceStridedSliceinputs9tf.__operators__.getitem_421/strided_slice/stack:output:0;tf.__operators__.getitem_421/strided_slice/stack_1:output:0;tf.__operators__.getitem_421/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_421/strided_slicex
tf.concat_560/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_560/concat/axis�
tf.concat_560/concatConcatV2,range_conversion_42/PartitionedCall:output:03tf.__operators__.getitem_421/strided_slice:output:0"tf.concat_560/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_560/concat�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCalltf.concat_560/concat:output:0conv3d_218_13055978conv3d_218_13055980*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_218_layer_call_and_return_conditional_losses_130554742$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_130554882&
$average_pooling3d_88/PartitionedCall�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_219_13055984conv3d_219_13055986*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_219_layer_call_and_return_conditional_losses_130555012$
"conv3d_219/StatefulPartitionedCall�
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_130555152&
$average_pooling3d_89/PartitionedCall�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_220_13055990conv3d_220_13055992*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_220_layer_call_and_return_conditional_losses_130555282$
"conv3d_220/StatefulPartitionedCall�
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_130555422&
$average_pooling3d_90/PartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_221_13055996conv3d_221_13055998*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_221_layer_call_and_return_conditional_losses_130555552$
"conv3d_221/StatefulPartitionedCall�
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_130555692&
$average_pooling3d_91/PartitionedCall�
reshape_84/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_84_layer_call_and_return_conditional_losses_130555832
reshape_84/PartitionedCall�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#reshape_84/PartitionedCall:output:0dense_42_13056003dense_42_13056005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_42_layer_call_and_return_conditional_losses_130555962"
 dense_42/StatefulPartitionedCall�
reshape_85/PartitionedCallPartitionedCall)dense_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_85_layer_call_and_return_conditional_losses_130556172
reshape_85/PartitionedCall�
tf.reshape_700/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_700/Reshape/shape�
tf.reshape_700/ReshapeReshape#reshape_85/PartitionedCall:output:0%tf.reshape_700/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_700/Reshape�
tf.tile_350/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_350/Tile/multiples�
tf.tile_350/TileTiletf.reshape_700/Reshape:output:0#tf.tile_350/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_350/Tile�
tf.reshape_701/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_701/Reshape/shape�
tf.reshape_701/ReshapeReshapetf.tile_350/Tile:output:0%tf.reshape_701/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_701/Reshapex
tf.concat_561/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_561/concat/axis�
tf.concat_561/concatConcatV2tf.reshape_701/Reshape:output:0+conv3d_221/StatefulPartitionedCall:output:0"tf.concat_561/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_561/concat�
"conv3d_222/StatefulPartitionedCallStatefulPartitionedCalltf.concat_561/concat:output:0conv3d_222_13056017conv3d_222_13056019*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_222_layer_call_and_return_conditional_losses_130556382$
"conv3d_222/StatefulPartitionedCall�
tf.reshape_702/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_702/Reshape/shape�
tf.reshape_702/ReshapeReshape+conv3d_222/StatefulPartitionedCall:output:0%tf.reshape_702/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_702/Reshape�
tf.tile_351/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_351/Tile/multiples�
tf.tile_351/TileTiletf.reshape_702/Reshape:output:0#tf.tile_351/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_351/Tile�
tf.reshape_703/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_703/Reshape/shape�
tf.reshape_703/ReshapeReshapetf.tile_351/Tile:output:0%tf.reshape_703/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_703/Reshapex
tf.concat_562/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_562/concat/axis�
tf.concat_562/concatConcatV2tf.reshape_703/Reshape:output:0+conv3d_220/StatefulPartitionedCall:output:0"tf.concat_562/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_562/concat�
"conv3d_223/StatefulPartitionedCallStatefulPartitionedCalltf.concat_562/concat:output:0conv3d_223_13056030conv3d_223_13056032*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_223_layer_call_and_return_conditional_losses_130556632$
"conv3d_223/StatefulPartitionedCall�
tf.reshape_704/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_704/Reshape/shape�
tf.reshape_704/ReshapeReshape+conv3d_223/StatefulPartitionedCall:output:0%tf.reshape_704/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_704/Reshape�
tf.tile_352/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_352/Tile/multiples�
tf.tile_352/TileTiletf.reshape_704/Reshape:output:0#tf.tile_352/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_352/Tile�
tf.reshape_705/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_705/Reshape/shape�
tf.reshape_705/ReshapeReshapetf.tile_352/Tile:output:0%tf.reshape_705/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_705/Reshapex
tf.concat_563/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_563/concat/axis�
tf.concat_563/concatConcatV2tf.reshape_705/Reshape:output:0+conv3d_219/StatefulPartitionedCall:output:0"tf.concat_563/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_563/concat�
"conv3d_224/StatefulPartitionedCallStatefulPartitionedCalltf.concat_563/concat:output:0conv3d_224_13056043conv3d_224_13056045*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_224_layer_call_and_return_conditional_losses_130556882$
"conv3d_224/StatefulPartitionedCall�
tf.reshape_706/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_706/Reshape/shape�
tf.reshape_706/ReshapeReshape+conv3d_224/StatefulPartitionedCall:output:0%tf.reshape_706/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_706/Reshape�
tf.tile_353/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_353/Tile/multiples�
tf.tile_353/TileTiletf.reshape_706/Reshape:output:0#tf.tile_353/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_353/Tile�
tf.reshape_707/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_707/Reshape/shape�
tf.reshape_707/ReshapeReshapetf.tile_353/Tile:output:0%tf.reshape_707/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_707/Reshapex
tf.concat_564/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_564/concat/axis�
tf.concat_564/concatConcatV2tf.reshape_707/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_564/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_564/concat�
"conv3d_225/StatefulPartitionedCallStatefulPartitionedCalltf.concat_564/concat:output:0conv3d_225_13056056conv3d_225_13056058*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_225_layer_call_and_return_conditional_losses_130557132$
"conv3d_225/StatefulPartitionedCall�
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCall+conv3d_225/StatefulPartitionedCall:output:0conv3d_226_13056061conv3d_226_13056063*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_130557292$
"conv3d_226/StatefulPartitionedCall�
IdentityIdentity+conv3d_226/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall#^conv3d_222/StatefulPartitionedCall#^conv3d_223/StatefulPartitionedCall#^conv3d_224/StatefulPartitionedCall#^conv3d_225/StatefulPartitionedCall#^conv3d_226/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2H
"conv3d_222/StatefulPartitionedCall"conv3d_222/StatefulPartitionedCall2H
"conv3d_223/StatefulPartitionedCall"conv3d_223/StatefulPartitionedCall2H
"conv3d_224/StatefulPartitionedCall"conv3d_224/StatefulPartitionedCall2H
"conv3d_225/StatefulPartitionedCall"conv3d_225/StatefulPartitionedCall2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
�
H__inference_conv3d_224_layer_call_and_return_conditional_losses_13055688

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�	
n
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13055542

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_218_layer_call_and_return_conditional_losses_13056859

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:��������� @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
�
-__inference_conv3d_218_layer_call_fn_13056848

inputs%
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_218_layer_call_and_return_conditional_losses_130554742
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:��������� @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
�
H__inference_conv3d_219_layer_call_and_return_conditional_losses_13056907

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������   
 
_user_specified_nameinputs
�
�
H__inference_conv3d_223_layer_call_and_return_conditional_losses_13057128

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
V
6__inference_range_conversion_42_layer_call_fn_13056827

parameters
identity�
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_130554552
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@:_ [
3
_output_shapes!
:���������@@
$
_user_specified_name
parameters
�
d
H__inference_reshape_85_layer_call_and_return_conditional_losses_13057088

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
Reshape/shape/4�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:���������2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
S
7__inference_average_pooling3d_91_layer_call_fn_13057008

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A���������������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_130554152
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_225_layer_call_and_return_conditional_losses_13057168

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:��������� @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������0@@
 
_user_specified_nameinputs
�
d
H__inference_reshape_84_layer_call_and_return_conditional_losses_13057048

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
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_224_layer_call_and_return_conditional_losses_13057148

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
S
7__inference_average_pooling3d_88_layer_call_fn_13056869

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_130554882
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� @@:[ W
3
_output_shapes!
:��������� @@
 
_user_specified_nameinputs
�	
n
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13055515

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������  2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  :[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�

n
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13055385

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs
�X
�
$__inference__traced_restore_13057340
file_prefix@
"assignvariableop_conv3d_218_kernel: 0
"assignvariableop_1_conv3d_218_bias: B
$assignvariableop_2_conv3d_219_kernel: 0
"assignvariableop_3_conv3d_219_bias:B
$assignvariableop_4_conv3d_220_kernel:0
"assignvariableop_5_conv3d_220_bias:B
$assignvariableop_6_conv3d_221_kernel:0
"assignvariableop_7_conv3d_221_bias:4
"assignvariableop_8_dense_42_kernel:@@.
 assignvariableop_9_dense_42_bias:@C
%assignvariableop_10_conv3d_222_kernel:1
#assignvariableop_11_conv3d_222_bias:C
%assignvariableop_12_conv3d_223_kernel:1
#assignvariableop_13_conv3d_223_bias:C
%assignvariableop_14_conv3d_224_kernel:1
#assignvariableop_15_conv3d_224_bias:C
%assignvariableop_16_conv3d_225_kernel:0 1
#assignvariableop_17_conv3d_225_bias: C
%assignvariableop_18_conv3d_226_kernel: 1
#assignvariableop_19_conv3d_226_bias:
identity_21��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
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

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_218_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_218_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_219_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_219_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_220_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_220_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_221_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_221_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_42_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_42_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_222_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_222_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_223_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_223_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_224_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_224_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_225_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_225_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_226_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_226_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20f
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_21�
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
�	
n
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13055569

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
H__inference_conv3d_220_layer_call_and_return_conditional_losses_13055528

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
d
H__inference_reshape_84_layer_call_and_return_conditional_losses_13055583

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
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_model_42_layer_call_fn_13055779	
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
identity��StatefulPartitionedCall�
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
:���������@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_42_layer_call_and_return_conditional_losses_130557362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�
S
7__inference_average_pooling3d_89_layer_call_fn_13056917

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_130555152
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  :[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
S
7__inference_average_pooling3d_90_layer_call_fn_13056965

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_130555422
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
n
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13056935

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������  2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  :[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
+__inference_model_42_layer_call_fn_13056453

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
identity��StatefulPartitionedCall�
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
:���������@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_42_layer_call_and_return_conditional_losses_130557362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
�
H__inference_conv3d_225_layer_call_and_return_conditional_losses_13055713

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:��������� @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������0@@
 
_user_specified_nameinputs
�
�
-__inference_conv3d_225_layer_call_fn_13057157

inputs%
unknown:0 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_225_layer_call_and_return_conditional_losses_130557132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:��������� @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������0@@
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_13056408	
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
identity��StatefulPartitionedCall�
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
:���������@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__wrapped_model_130553122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�
�
H__inference_conv3d_221_layer_call_and_return_conditional_losses_13055555

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:���������2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_42_layer_call_fn_13057057

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
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
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_42_layer_call_and_return_conditional_losses_130555962
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
�
I
-__inference_reshape_84_layer_call_fn_13057036

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
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_84_layer_call_and_return_conditional_losses_130555832
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
d
H__inference_reshape_85_layer_call_and_return_conditional_losses_13055617

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
Reshape/shape/4�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:���������2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�

F__inference_model_42_layer_call_and_return_conditional_losses_13056361	
input1
conv3d_218_13056272: !
conv3d_218_13056274: 1
conv3d_219_13056278: !
conv3d_219_13056280:1
conv3d_220_13056284:!
conv3d_220_13056286:1
conv3d_221_13056290:!
conv3d_221_13056292:#
dense_42_13056297:@@
dense_42_13056299:@1
conv3d_222_13056311:!
conv3d_222_13056313:1
conv3d_223_13056324:!
conv3d_223_13056326:1
conv3d_224_13056337:!
conv3d_224_13056339:1
conv3d_225_13056350:0 !
conv3d_225_13056352: 1
conv3d_226_13056355: !
conv3d_226_13056357:
identity��"conv3d_218/StatefulPartitionedCall�"conv3d_219/StatefulPartitionedCall�"conv3d_220/StatefulPartitionedCall�"conv3d_221/StatefulPartitionedCall�"conv3d_222/StatefulPartitionedCall�"conv3d_223/StatefulPartitionedCall�"conv3d_224/StatefulPartitionedCall�"conv3d_225/StatefulPartitionedCall�"conv3d_226/StatefulPartitionedCall� dense_42/StatefulPartitionedCall�
0tf.__operators__.getitem_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_420/strided_slice/stack�
2tf.__operators__.getitem_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_420/strided_slice/stack_1�
2tf.__operators__.getitem_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_420/strided_slice/stack_2�
*tf.__operators__.getitem_420/strided_sliceStridedSliceinput9tf.__operators__.getitem_420/strided_slice/stack:output:0;tf.__operators__.getitem_420/strided_slice/stack_1:output:0;tf.__operators__.getitem_420/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_420/strided_slice�
#range_conversion_42/PartitionedCallPartitionedCall3tf.__operators__.getitem_420/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_130554552%
#range_conversion_42/PartitionedCall�
0tf.__operators__.getitem_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_421/strided_slice/stack�
2tf.__operators__.getitem_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_421/strided_slice/stack_1�
2tf.__operators__.getitem_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_421/strided_slice/stack_2�
*tf.__operators__.getitem_421/strided_sliceStridedSliceinput9tf.__operators__.getitem_421/strided_slice/stack:output:0;tf.__operators__.getitem_421/strided_slice/stack_1:output:0;tf.__operators__.getitem_421/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_421/strided_slicex
tf.concat_560/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_560/concat/axis�
tf.concat_560/concatConcatV2,range_conversion_42/PartitionedCall:output:03tf.__operators__.getitem_421/strided_slice:output:0"tf.concat_560/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_560/concat�
"conv3d_218/StatefulPartitionedCallStatefulPartitionedCalltf.concat_560/concat:output:0conv3d_218_13056272conv3d_218_13056274*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_218_layer_call_and_return_conditional_losses_130554742$
"conv3d_218/StatefulPartitionedCall�
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_130554882&
$average_pooling3d_88/PartitionedCall�
"conv3d_219/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_219_13056278conv3d_219_13056280*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_219_layer_call_and_return_conditional_losses_130555012$
"conv3d_219/StatefulPartitionedCall�
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_130555152&
$average_pooling3d_89/PartitionedCall�
"conv3d_220/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_220_13056284conv3d_220_13056286*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_220_layer_call_and_return_conditional_losses_130555282$
"conv3d_220/StatefulPartitionedCall�
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_220/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_130555422&
$average_pooling3d_90/PartitionedCall�
"conv3d_221/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_221_13056290conv3d_221_13056292*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_221_layer_call_and_return_conditional_losses_130555552$
"conv3d_221/StatefulPartitionedCall�
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_221/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *[
fVRT
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_130555692&
$average_pooling3d_91/PartitionedCall�
reshape_84/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_84_layer_call_and_return_conditional_losses_130555832
reshape_84/PartitionedCall�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#reshape_84/PartitionedCall:output:0dense_42_13056297dense_42_13056299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_dense_42_layer_call_and_return_conditional_losses_130555962"
 dense_42/StatefulPartitionedCall�
reshape_85/PartitionedCallPartitionedCall)dense_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_reshape_85_layer_call_and_return_conditional_losses_130556172
reshape_85/PartitionedCall�
tf.reshape_700/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_700/Reshape/shape�
tf.reshape_700/ReshapeReshape#reshape_85/PartitionedCall:output:0%tf.reshape_700/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_700/Reshape�
tf.tile_350/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_350/Tile/multiples�
tf.tile_350/TileTiletf.reshape_700/Reshape:output:0#tf.tile_350/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_350/Tile�
tf.reshape_701/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_701/Reshape/shape�
tf.reshape_701/ReshapeReshapetf.tile_350/Tile:output:0%tf.reshape_701/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_701/Reshapex
tf.concat_561/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_561/concat/axis�
tf.concat_561/concatConcatV2tf.reshape_701/Reshape:output:0+conv3d_221/StatefulPartitionedCall:output:0"tf.concat_561/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_561/concat�
"conv3d_222/StatefulPartitionedCallStatefulPartitionedCalltf.concat_561/concat:output:0conv3d_222_13056311conv3d_222_13056313*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_222_layer_call_and_return_conditional_losses_130556382$
"conv3d_222/StatefulPartitionedCall�
tf.reshape_702/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_702/Reshape/shape�
tf.reshape_702/ReshapeReshape+conv3d_222/StatefulPartitionedCall:output:0%tf.reshape_702/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_702/Reshape�
tf.tile_351/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_351/Tile/multiples�
tf.tile_351/TileTiletf.reshape_702/Reshape:output:0#tf.tile_351/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_351/Tile�
tf.reshape_703/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_703/Reshape/shape�
tf.reshape_703/ReshapeReshapetf.tile_351/Tile:output:0%tf.reshape_703/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_703/Reshapex
tf.concat_562/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_562/concat/axis�
tf.concat_562/concatConcatV2tf.reshape_703/Reshape:output:0+conv3d_220/StatefulPartitionedCall:output:0"tf.concat_562/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_562/concat�
"conv3d_223/StatefulPartitionedCallStatefulPartitionedCalltf.concat_562/concat:output:0conv3d_223_13056324conv3d_223_13056326*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_223_layer_call_and_return_conditional_losses_130556632$
"conv3d_223/StatefulPartitionedCall�
tf.reshape_704/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_704/Reshape/shape�
tf.reshape_704/ReshapeReshape+conv3d_223/StatefulPartitionedCall:output:0%tf.reshape_704/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_704/Reshape�
tf.tile_352/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_352/Tile/multiples�
tf.tile_352/TileTiletf.reshape_704/Reshape:output:0#tf.tile_352/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_352/Tile�
tf.reshape_705/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_705/Reshape/shape�
tf.reshape_705/ReshapeReshapetf.tile_352/Tile:output:0%tf.reshape_705/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_705/Reshapex
tf.concat_563/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_563/concat/axis�
tf.concat_563/concatConcatV2tf.reshape_705/Reshape:output:0+conv3d_219/StatefulPartitionedCall:output:0"tf.concat_563/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_563/concat�
"conv3d_224/StatefulPartitionedCallStatefulPartitionedCalltf.concat_563/concat:output:0conv3d_224_13056337conv3d_224_13056339*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_224_layer_call_and_return_conditional_losses_130556882$
"conv3d_224/StatefulPartitionedCall�
tf.reshape_706/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_706/Reshape/shape�
tf.reshape_706/ReshapeReshape+conv3d_224/StatefulPartitionedCall:output:0%tf.reshape_706/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_706/Reshape�
tf.tile_353/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_353/Tile/multiples�
tf.tile_353/TileTiletf.reshape_706/Reshape:output:0#tf.tile_353/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_353/Tile�
tf.reshape_707/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_707/Reshape/shape�
tf.reshape_707/ReshapeReshapetf.tile_353/Tile:output:0%tf.reshape_707/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_707/Reshapex
tf.concat_564/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_564/concat/axis�
tf.concat_564/concatConcatV2tf.reshape_707/Reshape:output:0+conv3d_218/StatefulPartitionedCall:output:0"tf.concat_564/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_564/concat�
"conv3d_225/StatefulPartitionedCallStatefulPartitionedCalltf.concat_564/concat:output:0conv3d_225_13056350conv3d_225_13056352*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:��������� @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_225_layer_call_and_return_conditional_losses_130557132$
"conv3d_225/StatefulPartitionedCall�
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCall+conv3d_225/StatefulPartitionedCall:output:0conv3d_226_13056355conv3d_226_13056357*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_130557292$
"conv3d_226/StatefulPartitionedCall�
IdentityIdentity+conv3d_226/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp#^conv3d_218/StatefulPartitionedCall#^conv3d_219/StatefulPartitionedCall#^conv3d_220/StatefulPartitionedCall#^conv3d_221/StatefulPartitionedCall#^conv3d_222/StatefulPartitionedCall#^conv3d_223/StatefulPartitionedCall#^conv3d_224/StatefulPartitionedCall#^conv3d_225/StatefulPartitionedCall#^conv3d_226/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_218/StatefulPartitionedCall"conv3d_218/StatefulPartitionedCall2H
"conv3d_219/StatefulPartitionedCall"conv3d_219/StatefulPartitionedCall2H
"conv3d_220/StatefulPartitionedCall"conv3d_220/StatefulPartitionedCall2H
"conv3d_221/StatefulPartitionedCall"conv3d_221/StatefulPartitionedCall2H
"conv3d_222/StatefulPartitionedCall"conv3d_222/StatefulPartitionedCall2H
"conv3d_223/StatefulPartitionedCall"conv3d_223/StatefulPartitionedCall2H
"conv3d_224/StatefulPartitionedCall"conv3d_224/StatefulPartitionedCall2H
"conv3d_225/StatefulPartitionedCall"conv3d_225/StatefulPartitionedCall2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
��
�
F__inference_model_42_layer_call_and_return_conditional_losses_13056660

inputsG
)conv3d_218_conv3d_readvariableop_resource: 8
*conv3d_218_biasadd_readvariableop_resource: G
)conv3d_219_conv3d_readvariableop_resource: 8
*conv3d_219_biasadd_readvariableop_resource:G
)conv3d_220_conv3d_readvariableop_resource:8
*conv3d_220_biasadd_readvariableop_resource:G
)conv3d_221_conv3d_readvariableop_resource:8
*conv3d_221_biasadd_readvariableop_resource:9
'dense_42_matmul_readvariableop_resource:@@6
(dense_42_biasadd_readvariableop_resource:@G
)conv3d_222_conv3d_readvariableop_resource:8
*conv3d_222_biasadd_readvariableop_resource:G
)conv3d_223_conv3d_readvariableop_resource:8
*conv3d_223_biasadd_readvariableop_resource:G
)conv3d_224_conv3d_readvariableop_resource:8
*conv3d_224_biasadd_readvariableop_resource:G
)conv3d_225_conv3d_readvariableop_resource:0 8
*conv3d_225_biasadd_readvariableop_resource: G
)conv3d_226_conv3d_readvariableop_resource: 8
*conv3d_226_biasadd_readvariableop_resource:
identity��!conv3d_218/BiasAdd/ReadVariableOp� conv3d_218/Conv3D/ReadVariableOp�!conv3d_219/BiasAdd/ReadVariableOp� conv3d_219/Conv3D/ReadVariableOp�!conv3d_220/BiasAdd/ReadVariableOp� conv3d_220/Conv3D/ReadVariableOp�!conv3d_221/BiasAdd/ReadVariableOp� conv3d_221/Conv3D/ReadVariableOp�!conv3d_222/BiasAdd/ReadVariableOp� conv3d_222/Conv3D/ReadVariableOp�!conv3d_223/BiasAdd/ReadVariableOp� conv3d_223/Conv3D/ReadVariableOp�!conv3d_224/BiasAdd/ReadVariableOp� conv3d_224/Conv3D/ReadVariableOp�!conv3d_225/BiasAdd/ReadVariableOp� conv3d_225/Conv3D/ReadVariableOp�!conv3d_226/BiasAdd/ReadVariableOp� conv3d_226/Conv3D/ReadVariableOp�dense_42/BiasAdd/ReadVariableOp�dense_42/MatMul/ReadVariableOp�
0tf.__operators__.getitem_420/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_420/strided_slice/stack�
2tf.__operators__.getitem_420/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_420/strided_slice/stack_1�
2tf.__operators__.getitem_420/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_420/strided_slice/stack_2�
*tf.__operators__.getitem_420/strided_sliceStridedSliceinputs9tf.__operators__.getitem_420/strided_slice/stack:output:0;tf.__operators__.getitem_420/strided_slice/stack_1:output:0;tf.__operators__.getitem_420/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_420/strided_slice{
range_conversion_42/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_42/sub/y�
range_conversion_42/subSub3tf.__operators__.getitem_420/strided_slice:output:0"range_conversion_42/sub/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/sub�
range_conversion_42/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_42/truediv/y�
range_conversion_42/truedivRealDivrange_conversion_42/sub:z:0&range_conversion_42/truediv/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/truediv{
range_conversion_42/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_42/mul/y�
range_conversion_42/mulMulrange_conversion_42/truediv:z:0"range_conversion_42/mul/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/mul{
range_conversion_42/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_42/add/y�
range_conversion_42/addAddV2range_conversion_42/mul:z:0"range_conversion_42/add/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_42/add�
0tf.__operators__.getitem_421/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_421/strided_slice/stack�
2tf.__operators__.getitem_421/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_421/strided_slice/stack_1�
2tf.__operators__.getitem_421/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_421/strided_slice/stack_2�
*tf.__operators__.getitem_421/strided_sliceStridedSliceinputs9tf.__operators__.getitem_421/strided_slice/stack:output:0;tf.__operators__.getitem_421/strided_slice/stack_1:output:0;tf.__operators__.getitem_421/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_421/strided_slicex
tf.concat_560/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_560/concat/axis�
tf.concat_560/concatConcatV2range_conversion_42/add:z:03tf.__operators__.getitem_421/strided_slice:output:0"tf.concat_560/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_560/concat�
 conv3d_218/Conv3D/ReadVariableOpReadVariableOp)conv3d_218_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_218/Conv3D/ReadVariableOp�
conv3d_218/Conv3DConv3Dtf.concat_560/concat:output:0(conv3d_218/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_218/Conv3D�
!conv3d_218/BiasAdd/ReadVariableOpReadVariableOp*conv3d_218_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_218/BiasAdd/ReadVariableOp�
conv3d_218/BiasAddBiasAddconv3d_218/Conv3D:output:0)conv3d_218/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_218/BiasAdd�
conv3d_218/SoftplusSoftplusconv3d_218/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_218/Softplus�
#average_pooling3d_88/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_88/transpose/perm�
average_pooling3d_88/transpose	Transpose!conv3d_218/Softplus:activations:0,average_pooling3d_88/transpose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2 
average_pooling3d_88/transpose�
average_pooling3d_88/AvgPool3D	AvgPool3D"average_pooling3d_88/transpose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_88/AvgPool3D�
%average_pooling3d_88/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_88/transpose_1/perm�
 average_pooling3d_88/transpose_1	Transpose'average_pooling3d_88/AvgPool3D:output:0.average_pooling3d_88/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2"
 average_pooling3d_88/transpose_1�
 conv3d_219/Conv3D/ReadVariableOpReadVariableOp)conv3d_219_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_219/Conv3D/ReadVariableOp�
conv3d_219/Conv3DConv3D$average_pooling3d_88/transpose_1:y:0(conv3d_219/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_219/Conv3D�
!conv3d_219/BiasAdd/ReadVariableOpReadVariableOp*conv3d_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_219/BiasAdd/ReadVariableOp�
conv3d_219/BiasAddBiasAddconv3d_219/Conv3D:output:0)conv3d_219/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_219/BiasAdd�
conv3d_219/SoftplusSoftplusconv3d_219/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_219/Softplus�
#average_pooling3d_89/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_89/transpose/perm�
average_pooling3d_89/transpose	Transpose!conv3d_219/Softplus:activations:0,average_pooling3d_89/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_89/transpose�
average_pooling3d_89/AvgPool3D	AvgPool3D"average_pooling3d_89/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_89/AvgPool3D�
%average_pooling3d_89/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_89/transpose_1/perm�
 average_pooling3d_89/transpose_1	Transpose'average_pooling3d_89/AvgPool3D:output:0.average_pooling3d_89/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_89/transpose_1�
 conv3d_220/Conv3D/ReadVariableOpReadVariableOp)conv3d_220_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_220/Conv3D/ReadVariableOp�
conv3d_220/Conv3DConv3D$average_pooling3d_89/transpose_1:y:0(conv3d_220/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_220/Conv3D�
!conv3d_220/BiasAdd/ReadVariableOpReadVariableOp*conv3d_220_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_220/BiasAdd/ReadVariableOp�
conv3d_220/BiasAddBiasAddconv3d_220/Conv3D:output:0)conv3d_220/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_220/BiasAdd�
conv3d_220/SoftplusSoftplusconv3d_220/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_220/Softplus�
#average_pooling3d_90/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_90/transpose/perm�
average_pooling3d_90/transpose	Transpose!conv3d_220/Softplus:activations:0,average_pooling3d_90/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_90/transpose�
average_pooling3d_90/AvgPool3D	AvgPool3D"average_pooling3d_90/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_90/AvgPool3D�
%average_pooling3d_90/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_90/transpose_1/perm�
 average_pooling3d_90/transpose_1	Transpose'average_pooling3d_90/AvgPool3D:output:0.average_pooling3d_90/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_90/transpose_1�
 conv3d_221/Conv3D/ReadVariableOpReadVariableOp)conv3d_221_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_221/Conv3D/ReadVariableOp�
conv3d_221/Conv3DConv3D$average_pooling3d_90/transpose_1:y:0(conv3d_221/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_221/Conv3D�
!conv3d_221/BiasAdd/ReadVariableOpReadVariableOp*conv3d_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_221/BiasAdd/ReadVariableOp�
conv3d_221/BiasAddBiasAddconv3d_221/Conv3D:output:0)conv3d_221/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_221/BiasAdd�
conv3d_221/SoftplusSoftplusconv3d_221/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_221/Softplus�
#average_pooling3d_91/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_91/transpose/perm�
average_pooling3d_91/transpose	Transpose!conv3d_221/Softplus:activations:0,average_pooling3d_91/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_91/transpose�
average_pooling3d_91/AvgPool3D	AvgPool3D"average_pooling3d_91/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_91/AvgPool3D�
%average_pooling3d_91/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_91/transpose_1/perm�
 average_pooling3d_91/transpose_1	Transpose'average_pooling3d_91/AvgPool3D:output:0.average_pooling3d_91/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_91/transpose_1x
reshape_84/ShapeShape$average_pooling3d_91/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_84/Shape�
reshape_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_84/strided_slice/stack�
 reshape_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_84/strided_slice/stack_1�
 reshape_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_84/strided_slice/stack_2�
reshape_84/strided_sliceStridedSlicereshape_84/Shape:output:0'reshape_84/strided_slice/stack:output:0)reshape_84/strided_slice/stack_1:output:0)reshape_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_84/strided_slicez
reshape_84/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_84/Reshape/shape/1�
reshape_84/Reshape/shapePack!reshape_84/strided_slice:output:0#reshape_84/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_84/Reshape/shape�
reshape_84/ReshapeReshape$average_pooling3d_91/transpose_1:y:0!reshape_84/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_84/Reshape�
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_42/MatMul/ReadVariableOp�
dense_42/MatMulMatMulreshape_84/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_42/MatMul�
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_42/BiasAdd/ReadVariableOp�
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_42/BiasAdd
dense_42/SoftplusSoftplusdense_42/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_42/Softpluss
reshape_85/ShapeShapedense_42/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_85/Shape�
reshape_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_85/strided_slice/stack�
 reshape_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_85/strided_slice/stack_1�
 reshape_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_85/strided_slice/stack_2�
reshape_85/strided_sliceStridedSlicereshape_85/Shape:output:0'reshape_85/strided_slice/stack:output:0)reshape_85/strided_slice/stack_1:output:0)reshape_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_85/strided_slicez
reshape_85/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/1z
reshape_85/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/2z
reshape_85/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/3z
reshape_85/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_85/Reshape/shape/4�
reshape_85/Reshape/shapePack!reshape_85/strided_slice:output:0#reshape_85/Reshape/shape/1:output:0#reshape_85/Reshape/shape/2:output:0#reshape_85/Reshape/shape/3:output:0#reshape_85/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_85/Reshape/shape�
reshape_85/ReshapeReshapedense_42/Softplus:activations:0!reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_85/Reshape�
tf.reshape_700/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_700/Reshape/shape�
tf.reshape_700/ReshapeReshapereshape_85/Reshape:output:0%tf.reshape_700/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_700/Reshape�
tf.tile_350/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_350/Tile/multiples�
tf.tile_350/TileTiletf.reshape_700/Reshape:output:0#tf.tile_350/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_350/Tile�
tf.reshape_701/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_701/Reshape/shape�
tf.reshape_701/ReshapeReshapetf.tile_350/Tile:output:0%tf.reshape_701/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_701/Reshapex
tf.concat_561/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_561/concat/axis�
tf.concat_561/concatConcatV2tf.reshape_701/Reshape:output:0!conv3d_221/Softplus:activations:0"tf.concat_561/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_561/concat�
 conv3d_222/Conv3D/ReadVariableOpReadVariableOp)conv3d_222_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_222/Conv3D/ReadVariableOp�
conv3d_222/Conv3DConv3Dtf.concat_561/concat:output:0(conv3d_222/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_222/Conv3D�
!conv3d_222/BiasAdd/ReadVariableOpReadVariableOp*conv3d_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_222/BiasAdd/ReadVariableOp�
conv3d_222/BiasAddBiasAddconv3d_222/Conv3D:output:0)conv3d_222/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_222/BiasAdd�
conv3d_222/SoftplusSoftplusconv3d_222/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_222/Softplus�
tf.reshape_702/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_702/Reshape/shape�
tf.reshape_702/ReshapeReshape!conv3d_222/Softplus:activations:0%tf.reshape_702/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_702/Reshape�
tf.tile_351/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_351/Tile/multiples�
tf.tile_351/TileTiletf.reshape_702/Reshape:output:0#tf.tile_351/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_351/Tile�
tf.reshape_703/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_703/Reshape/shape�
tf.reshape_703/ReshapeReshapetf.tile_351/Tile:output:0%tf.reshape_703/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_703/Reshapex
tf.concat_562/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_562/concat/axis�
tf.concat_562/concatConcatV2tf.reshape_703/Reshape:output:0!conv3d_220/Softplus:activations:0"tf.concat_562/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_562/concat�
 conv3d_223/Conv3D/ReadVariableOpReadVariableOp)conv3d_223_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_223/Conv3D/ReadVariableOp�
conv3d_223/Conv3DConv3Dtf.concat_562/concat:output:0(conv3d_223/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_223/Conv3D�
!conv3d_223/BiasAdd/ReadVariableOpReadVariableOp*conv3d_223_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_223/BiasAdd/ReadVariableOp�
conv3d_223/BiasAddBiasAddconv3d_223/Conv3D:output:0)conv3d_223/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_223/BiasAdd�
conv3d_223/SoftplusSoftplusconv3d_223/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_223/Softplus�
tf.reshape_704/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_704/Reshape/shape�
tf.reshape_704/ReshapeReshape!conv3d_223/Softplus:activations:0%tf.reshape_704/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_704/Reshape�
tf.tile_352/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_352/Tile/multiples�
tf.tile_352/TileTiletf.reshape_704/Reshape:output:0#tf.tile_352/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_352/Tile�
tf.reshape_705/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_705/Reshape/shape�
tf.reshape_705/ReshapeReshapetf.tile_352/Tile:output:0%tf.reshape_705/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_705/Reshapex
tf.concat_563/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_563/concat/axis�
tf.concat_563/concatConcatV2tf.reshape_705/Reshape:output:0!conv3d_219/Softplus:activations:0"tf.concat_563/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_563/concat�
 conv3d_224/Conv3D/ReadVariableOpReadVariableOp)conv3d_224_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_224/Conv3D/ReadVariableOp�
conv3d_224/Conv3DConv3Dtf.concat_563/concat:output:0(conv3d_224/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_224/Conv3D�
!conv3d_224/BiasAdd/ReadVariableOpReadVariableOp*conv3d_224_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_224/BiasAdd/ReadVariableOp�
conv3d_224/BiasAddBiasAddconv3d_224/Conv3D:output:0)conv3d_224/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_224/BiasAdd�
conv3d_224/SoftplusSoftplusconv3d_224/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_224/Softplus�
tf.reshape_706/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_706/Reshape/shape�
tf.reshape_706/ReshapeReshape!conv3d_224/Softplus:activations:0%tf.reshape_706/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_706/Reshape�
tf.tile_353/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_353/Tile/multiples�
tf.tile_353/TileTiletf.reshape_706/Reshape:output:0#tf.tile_353/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_353/Tile�
tf.reshape_707/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_707/Reshape/shape�
tf.reshape_707/ReshapeReshapetf.tile_353/Tile:output:0%tf.reshape_707/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_707/Reshapex
tf.concat_564/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_564/concat/axis�
tf.concat_564/concatConcatV2tf.reshape_707/Reshape:output:0!conv3d_218/Softplus:activations:0"tf.concat_564/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_564/concat�
 conv3d_225/Conv3D/ReadVariableOpReadVariableOp)conv3d_225_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_225/Conv3D/ReadVariableOp�
conv3d_225/Conv3DConv3Dtf.concat_564/concat:output:0(conv3d_225/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_225/Conv3D�
!conv3d_225/BiasAdd/ReadVariableOpReadVariableOp*conv3d_225_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_225/BiasAdd/ReadVariableOp�
conv3d_225/BiasAddBiasAddconv3d_225/Conv3D:output:0)conv3d_225/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_225/BiasAdd�
conv3d_225/SoftplusSoftplusconv3d_225/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_225/Softplus�
 conv3d_226/Conv3D/ReadVariableOpReadVariableOp)conv3d_226_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_226/Conv3D/ReadVariableOp�
conv3d_226/Conv3DConv3D!conv3d_225/Softplus:activations:0(conv3d_226/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_226/Conv3D�
!conv3d_226/BiasAdd/ReadVariableOpReadVariableOp*conv3d_226_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_226/BiasAdd/ReadVariableOp�
conv3d_226/BiasAddBiasAddconv3d_226/Conv3D:output:0)conv3d_226/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2
conv3d_226/BiasAdd�
IdentityIdentityconv3d_226/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp"^conv3d_218/BiasAdd/ReadVariableOp!^conv3d_218/Conv3D/ReadVariableOp"^conv3d_219/BiasAdd/ReadVariableOp!^conv3d_219/Conv3D/ReadVariableOp"^conv3d_220/BiasAdd/ReadVariableOp!^conv3d_220/Conv3D/ReadVariableOp"^conv3d_221/BiasAdd/ReadVariableOp!^conv3d_221/Conv3D/ReadVariableOp"^conv3d_222/BiasAdd/ReadVariableOp!^conv3d_222/Conv3D/ReadVariableOp"^conv3d_223/BiasAdd/ReadVariableOp!^conv3d_223/Conv3D/ReadVariableOp"^conv3d_224/BiasAdd/ReadVariableOp!^conv3d_224/Conv3D/ReadVariableOp"^conv3d_225/BiasAdd/ReadVariableOp!^conv3d_225/Conv3D/ReadVariableOp"^conv3d_226/BiasAdd/ReadVariableOp!^conv3d_226/Conv3D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_218/BiasAdd/ReadVariableOp!conv3d_218/BiasAdd/ReadVariableOp2D
 conv3d_218/Conv3D/ReadVariableOp conv3d_218/Conv3D/ReadVariableOp2F
!conv3d_219/BiasAdd/ReadVariableOp!conv3d_219/BiasAdd/ReadVariableOp2D
 conv3d_219/Conv3D/ReadVariableOp conv3d_219/Conv3D/ReadVariableOp2F
!conv3d_220/BiasAdd/ReadVariableOp!conv3d_220/BiasAdd/ReadVariableOp2D
 conv3d_220/Conv3D/ReadVariableOp conv3d_220/Conv3D/ReadVariableOp2F
!conv3d_221/BiasAdd/ReadVariableOp!conv3d_221/BiasAdd/ReadVariableOp2D
 conv3d_221/Conv3D/ReadVariableOp conv3d_221/Conv3D/ReadVariableOp2F
!conv3d_222/BiasAdd/ReadVariableOp!conv3d_222/BiasAdd/ReadVariableOp2D
 conv3d_222/Conv3D/ReadVariableOp conv3d_222/Conv3D/ReadVariableOp2F
!conv3d_223/BiasAdd/ReadVariableOp!conv3d_223/BiasAdd/ReadVariableOp2D
 conv3d_223/Conv3D/ReadVariableOp conv3d_223/Conv3D/ReadVariableOp2F
!conv3d_224/BiasAdd/ReadVariableOp!conv3d_224/BiasAdd/ReadVariableOp2D
 conv3d_224/Conv3D/ReadVariableOp conv3d_224/Conv3D/ReadVariableOp2F
!conv3d_225/BiasAdd/ReadVariableOp!conv3d_225/BiasAdd/ReadVariableOp2D
 conv3d_225/Conv3D/ReadVariableOp conv3d_225/Conv3D/ReadVariableOp2F
!conv3d_226/BiasAdd/ReadVariableOp!conv3d_226/BiasAdd/ReadVariableOp2D
 conv3d_226/Conv3D/ReadVariableOp conv3d_226/Conv3D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
�
H__inference_conv3d_218_layer_call_and_return_conditional_losses_13055474

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:��������� @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�	
n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13056887

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:���������   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� @@:[ W
3
_output_shapes!
:��������� @@
 
_user_specified_nameinputs
�

n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13055325

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
	transpose�
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D�
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm�
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A���������������������������������������������2
transpose_1�
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A���������������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A���������������������������������������������: {
W
_output_shapesE
C:A���������������������������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input:
serving_default_input:0���������@@J

conv3d_226<
StatefulPartitionedCall:0���������@@tensorflow/serving/predict:��
�
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
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
+	keras_api"
_tf_keras_layer
�
,	variables
-regularization_losses
.trainable_variables
/	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
0	keras_api"
_tf_keras_layer
(
1	keras_api"
_tf_keras_layer
�

2kernel
3bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8	variables
9regularization_losses
:trainable_variables
;	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Fkernel
Gbias
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Pkernel
Qbias
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

^kernel
_bias
`	variables
aregularization_losses
btrainable_variables
c	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�

lkernel
mbias
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�
�kernel
	�bias
�	variables
�regularization_losses
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�regularization_losses
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�regularization_losses
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
�
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
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
�
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
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layer_metrics
&regularization_losses
�layers
'	variables
(trainable_variables
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
�non_trainable_variables
,	variables
�metrics
 �layer_regularization_losses
�layer_metrics
-regularization_losses
�layers
.trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/  2conv3d_218/kernel
:  2conv3d_218/bias
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
�
�non_trainable_variables
4	variables
�metrics
 �layer_regularization_losses
�layer_metrics
5regularization_losses
�layers
6trainable_variables
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
�non_trainable_variables
8	variables
�metrics
 �layer_regularization_losses
�layer_metrics
9regularization_losses
�layers
:trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_219/kernel
: 2conv3d_219/bias
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
�
�non_trainable_variables
>	variables
�metrics
 �layer_regularization_losses
�layer_metrics
?regularization_losses
�layers
@trainable_variables
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
�non_trainable_variables
B	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Cregularization_losses
�layers
Dtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_220/kernel
: 2conv3d_220/bias
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
�
�non_trainable_variables
H	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Iregularization_losses
�layers
Jtrainable_variables
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
�non_trainable_variables
L	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Mregularization_losses
�layers
Ntrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_221/kernel
: 2conv3d_221/bias
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
�
�non_trainable_variables
R	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Sregularization_losses
�layers
Ttrainable_variables
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
�non_trainable_variables
V	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Wregularization_losses
�layers
Xtrainable_variables
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
�non_trainable_variables
Z	variables
�metrics
 �layer_regularization_losses
�layer_metrics
[regularization_losses
�layers
\trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_42/kernel
:@ 2dense_42/bias
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
�
�non_trainable_variables
`	variables
�metrics
 �layer_regularization_losses
�layer_metrics
aregularization_losses
�layers
btrainable_variables
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
�non_trainable_variables
d	variables
�metrics
 �layer_regularization_losses
�layer_metrics
eregularization_losses
�layers
ftrainable_variables
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
1:/ 2conv3d_222/kernel
: 2conv3d_222/bias
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
�
�non_trainable_variables
n	variables
�metrics
 �layer_regularization_losses
�layer_metrics
oregularization_losses
�layers
ptrainable_variables
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
1:/ 2conv3d_223/kernel
: 2conv3d_223/bias
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
�
�non_trainable_variables
x	variables
�metrics
 �layer_regularization_losses
�layer_metrics
yregularization_losses
�layers
ztrainable_variables
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
1:/ 2conv3d_224/kernel
: 2conv3d_224/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�	variables
�metrics
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�layers
�trainable_variables
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
1:/0  2conv3d_225/kernel
:  2conv3d_225/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�	variables
�metrics
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�layers
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_226/kernel
: 2conv3d_226/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�	variables
�metrics
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�layers
�trainable_variables
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
�2�
+__inference_model_42_layer_call_fn_13055779
+__inference_model_42_layer_call_fn_13056453
+__inference_model_42_layer_call_fn_13056498
+__inference_model_42_layer_call_fn_13056155�
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
#__inference__wrapped_model_13055312input"�
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
�2�
F__inference_model_42_layer_call_and_return_conditional_losses_13056660
F__inference_model_42_layer_call_and_return_conditional_losses_13056822
F__inference_model_42_layer_call_and_return_conditional_losses_13056258
F__inference_model_42_layer_call_and_return_conditional_losses_13056361�
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
�2�
6__inference_range_conversion_42_layer_call_fn_13056827�
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
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_13056839�
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
-__inference_conv3d_218_layer_call_fn_13056848�
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
H__inference_conv3d_218_layer_call_and_return_conditional_losses_13056859�
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
7__inference_average_pooling3d_88_layer_call_fn_13056864
7__inference_average_pooling3d_88_layer_call_fn_13056869�
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
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13056878
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13056887�
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
-__inference_conv3d_219_layer_call_fn_13056896�
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
H__inference_conv3d_219_layer_call_and_return_conditional_losses_13056907�
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
7__inference_average_pooling3d_89_layer_call_fn_13056912
7__inference_average_pooling3d_89_layer_call_fn_13056917�
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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13056926
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13056935�
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
-__inference_conv3d_220_layer_call_fn_13056944�
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
H__inference_conv3d_220_layer_call_and_return_conditional_losses_13056955�
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
7__inference_average_pooling3d_90_layer_call_fn_13056960
7__inference_average_pooling3d_90_layer_call_fn_13056965�
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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13056974
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13056983�
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
-__inference_conv3d_221_layer_call_fn_13056992�
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
H__inference_conv3d_221_layer_call_and_return_conditional_losses_13057003�
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
7__inference_average_pooling3d_91_layer_call_fn_13057008
7__inference_average_pooling3d_91_layer_call_fn_13057013�
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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13057022
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13057031�
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
-__inference_reshape_84_layer_call_fn_13057036�
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
H__inference_reshape_84_layer_call_and_return_conditional_losses_13057048�
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
+__inference_dense_42_layer_call_fn_13057057�
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
F__inference_dense_42_layer_call_and_return_conditional_losses_13057068�
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
-__inference_reshape_85_layer_call_fn_13057073�
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
H__inference_reshape_85_layer_call_and_return_conditional_losses_13057088�
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
-__inference_conv3d_222_layer_call_fn_13057097�
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
H__inference_conv3d_222_layer_call_and_return_conditional_losses_13057108�
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
-__inference_conv3d_223_layer_call_fn_13057117�
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
H__inference_conv3d_223_layer_call_and_return_conditional_losses_13057128�
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
-__inference_conv3d_224_layer_call_fn_13057137�
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
H__inference_conv3d_224_layer_call_and_return_conditional_losses_13057148�
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
-__inference_conv3d_225_layer_call_fn_13057157�
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
H__inference_conv3d_225_layer_call_and_return_conditional_losses_13057168�
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
-__inference_conv3d_226_layer_call_fn_13057177�
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
H__inference_conv3d_226_layer_call_and_return_conditional_losses_13057187�
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
&__inference_signature_wrapper_13056408input"�
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
#__inference__wrapped_model_13055312�23<=FGPQ^_lmvw������:�7
0�-
+�(
input���������@@
� "C�@
>

conv3d_2260�-

conv3d_226���������@@�
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13056878�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_13056887p;�8
1�.
,�)
inputs��������� @@
� "1�.
'�$
0���������   
� �
7__inference_average_pooling3d_88_layer_call_fn_13056864�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_88_layer_call_fn_13056869c;�8
1�.
,�)
inputs��������� @@
� "$�!���������   �
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13056926�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_13056935p;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_89_layer_call_fn_13056912�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_89_layer_call_fn_13056917c;�8
1�.
,�)
inputs���������  
� "$�!����������
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13056974�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_13056983p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_90_layer_call_fn_13056960�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_90_layer_call_fn_13056965c;�8
1�.
,�)
inputs���������
� "$�!����������
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13057022�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_13057031p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_91_layer_call_fn_13057008�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_91_layer_call_fn_13057013c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_218_layer_call_and_return_conditional_losses_13056859t23;�8
1�.
,�)
inputs���������@@
� "1�.
'�$
0��������� @@
� �
-__inference_conv3d_218_layer_call_fn_13056848g23;�8
1�.
,�)
inputs���������@@
� "$�!��������� @@�
H__inference_conv3d_219_layer_call_and_return_conditional_losses_13056907t<=;�8
1�.
,�)
inputs���������   
� "1�.
'�$
0���������  
� �
-__inference_conv3d_219_layer_call_fn_13056896g<=;�8
1�.
,�)
inputs���������   
� "$�!���������  �
H__inference_conv3d_220_layer_call_and_return_conditional_losses_13056955tFG;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_220_layer_call_fn_13056944gFG;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_221_layer_call_and_return_conditional_losses_13057003tPQ;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_221_layer_call_fn_13056992gPQ;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_222_layer_call_and_return_conditional_losses_13057108tlm;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_222_layer_call_fn_13057097glm;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_223_layer_call_and_return_conditional_losses_13057128tvw;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_223_layer_call_fn_13057117gvw;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_224_layer_call_and_return_conditional_losses_13057148v��;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
-__inference_conv3d_224_layer_call_fn_13057137i��;�8
1�.
,�)
inputs���������  
� "$�!���������  �
H__inference_conv3d_225_layer_call_and_return_conditional_losses_13057168v��;�8
1�.
,�)
inputs���������0@@
� "1�.
'�$
0��������� @@
� �
-__inference_conv3d_225_layer_call_fn_13057157i��;�8
1�.
,�)
inputs���������0@@
� "$�!��������� @@�
H__inference_conv3d_226_layer_call_and_return_conditional_losses_13057187v��;�8
1�.
,�)
inputs��������� @@
� "1�.
'�$
0���������@@
� �
-__inference_conv3d_226_layer_call_fn_13057177i��;�8
1�.
,�)
inputs��������� @@
� "$�!���������@@�
F__inference_dense_42_layer_call_and_return_conditional_losses_13057068\^_/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_42_layer_call_fn_13057057O^_/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_42_layer_call_and_return_conditional_losses_13056258�23<=FGPQ^_lmvw������B�?
8�5
+�(
input���������@@
p 

 
� "1�.
'�$
0���������@@
� �
F__inference_model_42_layer_call_and_return_conditional_losses_13056361�23<=FGPQ^_lmvw������B�?
8�5
+�(
input���������@@
p

 
� "1�.
'�$
0���������@@
� �
F__inference_model_42_layer_call_and_return_conditional_losses_13056660�23<=FGPQ^_lmvw������C�@
9�6
,�)
inputs���������@@
p 

 
� "1�.
'�$
0���������@@
� �
F__inference_model_42_layer_call_and_return_conditional_losses_13056822�23<=FGPQ^_lmvw������C�@
9�6
,�)
inputs���������@@
p

 
� "1�.
'�$
0���������@@
� �
+__inference_model_42_layer_call_fn_13055779�23<=FGPQ^_lmvw������B�?
8�5
+�(
input���������@@
p 

 
� "$�!���������@@�
+__inference_model_42_layer_call_fn_13056155�23<=FGPQ^_lmvw������B�?
8�5
+�(
input���������@@
p

 
� "$�!���������@@�
+__inference_model_42_layer_call_fn_13056453�23<=FGPQ^_lmvw������C�@
9�6
,�)
inputs���������@@
p 

 
� "$�!���������@@�
+__inference_model_42_layer_call_fn_13056498�23<=FGPQ^_lmvw������C�@
9�6
,�)
inputs���������@@
p

 
� "$�!���������@@�
Q__inference_range_conversion_42_layer_call_and_return_conditional_losses_13056839t?�<
5�2
0�-

parameters���������@@
� "1�.
'�$
0���������@@
� �
6__inference_range_conversion_42_layer_call_fn_13056827g?�<
5�2
0�-

parameters���������@@
� "$�!���������@@�
H__inference_reshape_84_layer_call_and_return_conditional_losses_13057048d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
-__inference_reshape_84_layer_call_fn_13057036W;�8
1�.
,�)
inputs���������
� "����������@�
H__inference_reshape_85_layer_call_and_return_conditional_losses_13057088d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
-__inference_reshape_85_layer_call_fn_13057073W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_13056408�23<=FGPQ^_lmvw������C�@
� 
9�6
4
input+�(
input���������@@"C�@
>

conv3d_2260�-

conv3d_226���������@@