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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258ٌ
�
conv3d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv3d_50/kernel
�
$conv3d_50/kernel/Read/ReadVariableOpReadVariableOpconv3d_50/kernel**
_output_shapes
: *
dtype0
t
conv3d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_50/bias
m
"conv3d_50/bias/Read/ReadVariableOpReadVariableOpconv3d_50/bias*
_output_shapes
: *
dtype0
�
conv3d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv3d_51/kernel
�
$conv3d_51/kernel/Read/ReadVariableOpReadVariableOpconv3d_51/kernel**
_output_shapes
: *
dtype0
t
conv3d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_51/bias
m
"conv3d_51/bias/Read/ReadVariableOpReadVariableOpconv3d_51/bias*
_output_shapes
:*
dtype0
�
conv3d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_52/kernel
�
$conv3d_52/kernel/Read/ReadVariableOpReadVariableOpconv3d_52/kernel**
_output_shapes
:*
dtype0
t
conv3d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_52/bias
m
"conv3d_52/bias/Read/ReadVariableOpReadVariableOpconv3d_52/bias*
_output_shapes
:*
dtype0
�
conv3d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_53/kernel
�
$conv3d_53/kernel/Read/ReadVariableOpReadVariableOpconv3d_53/kernel**
_output_shapes
:*
dtype0
t
conv3d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_53/bias
m
"conv3d_53/bias/Read/ReadVariableOpReadVariableOpconv3d_53/bias*
_output_shapes
:*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:@@*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:@*
dtype0
�
conv3d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_54/kernel
�
$conv3d_54/kernel/Read/ReadVariableOpReadVariableOpconv3d_54/kernel**
_output_shapes
:*
dtype0
t
conv3d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_54/bias
m
"conv3d_54/bias/Read/ReadVariableOpReadVariableOpconv3d_54/bias*
_output_shapes
:*
dtype0
�
conv3d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_55/kernel
�
$conv3d_55/kernel/Read/ReadVariableOpReadVariableOpconv3d_55/kernel**
_output_shapes
:*
dtype0
t
conv3d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_55/bias
m
"conv3d_55/bias/Read/ReadVariableOpReadVariableOpconv3d_55/bias*
_output_shapes
:*
dtype0
�
conv3d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_56/kernel
�
$conv3d_56/kernel/Read/ReadVariableOpReadVariableOpconv3d_56/kernel**
_output_shapes
:*
dtype0
t
conv3d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_56/bias
m
"conv3d_56/bias/Read/ReadVariableOpReadVariableOpconv3d_56/bias*
_output_shapes
:*
dtype0
�
conv3d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *!
shared_nameconv3d_57/kernel
�
$conv3d_57/kernel/Read/ReadVariableOpReadVariableOpconv3d_57/kernel**
_output_shapes
:0 *
dtype0
t
conv3d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_57/bias
m
"conv3d_57/bias/Read/ReadVariableOpReadVariableOpconv3d_57/bias*
_output_shapes
: *
dtype0
�
conv3d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv3d_58/kernel
�
$conv3d_58/kernel/Read/ReadVariableOpReadVariableOpconv3d_58/kernel**
_output_shapes
: *
dtype0
t
conv3d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_58/bias
m
"conv3d_58/bias/Read/ReadVariableOpReadVariableOpconv3d_58/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�H
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�G
value�GB�G B�G
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
\Z
VARIABLE_VALUEconv3d_50/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_50/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_51/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_51/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_52/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_52/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_53/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_53/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_54/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_54/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_55/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_55/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_56/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_56/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_57/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_57/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv3d_58/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_58/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_50/kernelconv3d_50/biasconv3d_51/kernelconv3d_51/biasconv3d_52/kernelconv3d_52/biasconv3d_53/kernelconv3d_53/biasdense_10/kerneldense_10/biasconv3d_54/kernelconv3d_54/biasconv3d_55/kernelconv3d_55/biasconv3d_56/kernelconv3d_56/biasconv3d_57/kernelconv3d_57/biasconv3d_58/kernelconv3d_58/bias* 
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
GPU2 *0,1,2,3J 8� *.
f)R'
%__inference_signature_wrapper_5553180
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_50/kernel/Read/ReadVariableOp"conv3d_50/bias/Read/ReadVariableOp$conv3d_51/kernel/Read/ReadVariableOp"conv3d_51/bias/Read/ReadVariableOp$conv3d_52/kernel/Read/ReadVariableOp"conv3d_52/bias/Read/ReadVariableOp$conv3d_53/kernel/Read/ReadVariableOp"conv3d_53/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp$conv3d_54/kernel/Read/ReadVariableOp"conv3d_54/bias/Read/ReadVariableOp$conv3d_55/kernel/Read/ReadVariableOp"conv3d_55/bias/Read/ReadVariableOp$conv3d_56/kernel/Read/ReadVariableOp"conv3d_56/bias/Read/ReadVariableOp$conv3d_57/kernel/Read/ReadVariableOp"conv3d_57/bias/Read/ReadVariableOp$conv3d_58/kernel/Read/ReadVariableOp"conv3d_58/bias/Read/ReadVariableOpConst*!
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
GPU2 *0,1,2,3J 8� *)
f$R"
 __inference__traced_save_5554042
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_50/kernelconv3d_50/biasconv3d_51/kernelconv3d_51/biasconv3d_52/kernelconv3d_52/biasconv3d_53/kernelconv3d_53/biasdense_10/kerneldense_10/biasconv3d_54/kernelconv3d_54/biasconv3d_55/kernelconv3d_55/biasconv3d_56/kernelconv3d_56/biasconv3d_57/kernelconv3d_57/biasconv3d_58/kernelconv3d_58/bias* 
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
GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__traced_restore_5554112Ĉ
�	
m
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5553707

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
*__inference_model_10_layer_call_fn_5552551	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_55525082
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
�
�
+__inference_conv3d_51_layer_call_fn_5553668

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_51_layer_call_and_return_conditional_losses_55522732
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
F__inference_conv3d_55_layer_call_and_return_conditional_losses_5552435

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
�
R
6__inference_average_pooling3d_22_layer_call_fn_5553732

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_55521572
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
+__inference_conv3d_56_layer_call_fn_5553909

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_56_layer_call_and_return_conditional_losses_55524602
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
�

m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5553746

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
�
F__inference_conv3d_56_layer_call_and_return_conditional_losses_5553920

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
�
R
6__inference_average_pooling3d_20_layer_call_fn_5553636

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_55520972
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
�
�
*__inference_model_10_layer_call_fn_5553225

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
identity��StatefulPartitionedCall�
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_55525082
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
c
G__inference_reshape_20_layer_call_and_return_conditional_losses_5552355

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
�
�
+__inference_conv3d_54_layer_call_fn_5553869

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_54_layer_call_and_return_conditional_losses_55524102
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
m
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5553803

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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_5552273

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
�
�
+__inference_conv3d_52_layer_call_fn_5553716

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_52_layer_call_and_return_conditional_losses_55523002
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
��
�
E__inference_model_10_layer_call_and_return_conditional_losses_5553594

inputsF
(conv3d_50_conv3d_readvariableop_resource: 7
)conv3d_50_biasadd_readvariableop_resource: F
(conv3d_51_conv3d_readvariableop_resource: 7
)conv3d_51_biasadd_readvariableop_resource:F
(conv3d_52_conv3d_readvariableop_resource:7
)conv3d_52_biasadd_readvariableop_resource:F
(conv3d_53_conv3d_readvariableop_resource:7
)conv3d_53_biasadd_readvariableop_resource:9
'dense_10_matmul_readvariableop_resource:@@6
(dense_10_biasadd_readvariableop_resource:@F
(conv3d_54_conv3d_readvariableop_resource:7
)conv3d_54_biasadd_readvariableop_resource:F
(conv3d_55_conv3d_readvariableop_resource:7
)conv3d_55_biasadd_readvariableop_resource:F
(conv3d_56_conv3d_readvariableop_resource:7
)conv3d_56_biasadd_readvariableop_resource:F
(conv3d_57_conv3d_readvariableop_resource:0 7
)conv3d_57_biasadd_readvariableop_resource: F
(conv3d_58_conv3d_readvariableop_resource: 7
)conv3d_58_biasadd_readvariableop_resource:
identity�� conv3d_50/BiasAdd/ReadVariableOp�conv3d_50/Conv3D/ReadVariableOp� conv3d_51/BiasAdd/ReadVariableOp�conv3d_51/Conv3D/ReadVariableOp� conv3d_52/BiasAdd/ReadVariableOp�conv3d_52/Conv3D/ReadVariableOp� conv3d_53/BiasAdd/ReadVariableOp�conv3d_53/Conv3D/ReadVariableOp� conv3d_54/BiasAdd/ReadVariableOp�conv3d_54/Conv3D/ReadVariableOp� conv3d_55/BiasAdd/ReadVariableOp�conv3d_55/Conv3D/ReadVariableOp� conv3d_56/BiasAdd/ReadVariableOp�conv3d_56/Conv3D/ReadVariableOp� conv3d_57/BiasAdd/ReadVariableOp�conv3d_57/Conv3D/ReadVariableOp� conv3d_58/BiasAdd/ReadVariableOp�conv3d_58/Conv3D/ReadVariableOp�dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�
0tf.__operators__.getitem_356/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_356/strided_slice/stack�
2tf.__operators__.getitem_356/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_356/strided_slice/stack_1�
2tf.__operators__.getitem_356/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_356/strided_slice/stack_2�
*tf.__operators__.getitem_356/strided_sliceStridedSliceinputs9tf.__operators__.getitem_356/strided_slice/stack:output:0;tf.__operators__.getitem_356/strided_slice/stack_1:output:0;tf.__operators__.getitem_356/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_356/strided_slice{
range_conversion_10/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_10/sub/y�
range_conversion_10/subSub3tf.__operators__.getitem_356/strided_slice:output:0"range_conversion_10/sub/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/sub�
range_conversion_10/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_10/truediv/y�
range_conversion_10/truedivRealDivrange_conversion_10/sub:z:0&range_conversion_10/truediv/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/truediv{
range_conversion_10/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_10/mul/y�
range_conversion_10/mulMulrange_conversion_10/truediv:z:0"range_conversion_10/mul/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/mul{
range_conversion_10/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_10/add/y�
range_conversion_10/addAddV2range_conversion_10/mul:z:0"range_conversion_10/add/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/add�
0tf.__operators__.getitem_357/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_357/strided_slice/stack�
2tf.__operators__.getitem_357/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_357/strided_slice/stack_1�
2tf.__operators__.getitem_357/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_357/strided_slice/stack_2�
*tf.__operators__.getitem_357/strided_sliceStridedSliceinputs9tf.__operators__.getitem_357/strided_slice/stack:output:0;tf.__operators__.getitem_357/strided_slice/stack_1:output:0;tf.__operators__.getitem_357/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_357/strided_slicex
tf.concat_460/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_460/concat/axis�
tf.concat_460/concatConcatV2range_conversion_10/add:z:03tf.__operators__.getitem_357/strided_slice:output:0"tf.concat_460/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_460/concat�
conv3d_50/Conv3D/ReadVariableOpReadVariableOp(conv3d_50_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02!
conv3d_50/Conv3D/ReadVariableOp�
conv3d_50/Conv3DConv3Dtf.concat_460/concat:output:0'conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_50/Conv3D�
 conv3d_50/BiasAdd/ReadVariableOpReadVariableOp)conv3d_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv3d_50/BiasAdd/ReadVariableOp�
conv3d_50/BiasAddBiasAddconv3d_50/Conv3D:output:0(conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_50/BiasAdd�
conv3d_50/SoftplusSoftplusconv3d_50/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_50/Softplus�
#average_pooling3d_20/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_20/transpose/perm�
average_pooling3d_20/transpose	Transpose conv3d_50/Softplus:activations:0,average_pooling3d_20/transpose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2 
average_pooling3d_20/transpose�
average_pooling3d_20/AvgPool3D	AvgPool3D"average_pooling3d_20/transpose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_20/AvgPool3D�
%average_pooling3d_20/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_20/transpose_1/perm�
 average_pooling3d_20/transpose_1	Transpose'average_pooling3d_20/AvgPool3D:output:0.average_pooling3d_20/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2"
 average_pooling3d_20/transpose_1�
conv3d_51/Conv3D/ReadVariableOpReadVariableOp(conv3d_51_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02!
conv3d_51/Conv3D/ReadVariableOp�
conv3d_51/Conv3DConv3D$average_pooling3d_20/transpose_1:y:0'conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_51/Conv3D�
 conv3d_51/BiasAdd/ReadVariableOpReadVariableOp)conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_51/BiasAdd/ReadVariableOp�
conv3d_51/BiasAddBiasAddconv3d_51/Conv3D:output:0(conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_51/BiasAdd�
conv3d_51/SoftplusSoftplusconv3d_51/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_51/Softplus�
#average_pooling3d_21/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_21/transpose/perm�
average_pooling3d_21/transpose	Transpose conv3d_51/Softplus:activations:0,average_pooling3d_21/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_21/transpose�
average_pooling3d_21/AvgPool3D	AvgPool3D"average_pooling3d_21/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_21/AvgPool3D�
%average_pooling3d_21/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_21/transpose_1/perm�
 average_pooling3d_21/transpose_1	Transpose'average_pooling3d_21/AvgPool3D:output:0.average_pooling3d_21/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_21/transpose_1�
conv3d_52/Conv3D/ReadVariableOpReadVariableOp(conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_52/Conv3D/ReadVariableOp�
conv3d_52/Conv3DConv3D$average_pooling3d_21/transpose_1:y:0'conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_52/Conv3D�
 conv3d_52/BiasAdd/ReadVariableOpReadVariableOp)conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_52/BiasAdd/ReadVariableOp�
conv3d_52/BiasAddBiasAddconv3d_52/Conv3D:output:0(conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_52/BiasAdd�
conv3d_52/SoftplusSoftplusconv3d_52/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_52/Softplus�
#average_pooling3d_22/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_22/transpose/perm�
average_pooling3d_22/transpose	Transpose conv3d_52/Softplus:activations:0,average_pooling3d_22/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_22/transpose�
average_pooling3d_22/AvgPool3D	AvgPool3D"average_pooling3d_22/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_22/AvgPool3D�
%average_pooling3d_22/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_22/transpose_1/perm�
 average_pooling3d_22/transpose_1	Transpose'average_pooling3d_22/AvgPool3D:output:0.average_pooling3d_22/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_22/transpose_1�
conv3d_53/Conv3D/ReadVariableOpReadVariableOp(conv3d_53_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_53/Conv3D/ReadVariableOp�
conv3d_53/Conv3DConv3D$average_pooling3d_22/transpose_1:y:0'conv3d_53/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_53/Conv3D�
 conv3d_53/BiasAdd/ReadVariableOpReadVariableOp)conv3d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_53/BiasAdd/ReadVariableOp�
conv3d_53/BiasAddBiasAddconv3d_53/Conv3D:output:0(conv3d_53/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_53/BiasAdd�
conv3d_53/SoftplusSoftplusconv3d_53/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_53/Softplus�
#average_pooling3d_23/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_23/transpose/perm�
average_pooling3d_23/transpose	Transpose conv3d_53/Softplus:activations:0,average_pooling3d_23/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_23/transpose�
average_pooling3d_23/AvgPool3D	AvgPool3D"average_pooling3d_23/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_23/AvgPool3D�
%average_pooling3d_23/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_23/transpose_1/perm�
 average_pooling3d_23/transpose_1	Transpose'average_pooling3d_23/AvgPool3D:output:0.average_pooling3d_23/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_23/transpose_1x
reshape_20/ShapeShape$average_pooling3d_23/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_20/Shape�
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack�
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1�
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2�
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_20/Reshape/shape/1�
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape�
reshape_20/ReshapeReshape$average_pooling3d_23/transpose_1:y:0!reshape_20/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_20/Reshape�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_10/MatMul/ReadVariableOp�
dense_10/MatMulMatMulreshape_20/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_10/MatMul�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_10/BiasAdd/ReadVariableOp�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_10/BiasAdd
dense_10/SoftplusSoftplusdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_10/Softpluss
reshape_21/ShapeShapedense_10/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_21/Shape�
reshape_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_21/strided_slice/stack�
 reshape_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_1�
 reshape_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_2�
reshape_21/strided_sliceStridedSlicereshape_21/Shape:output:0'reshape_21/strided_slice/stack:output:0)reshape_21/strided_slice/stack_1:output:0)reshape_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_21/strided_slicez
reshape_21/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/1z
reshape_21/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/2z
reshape_21/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/3z
reshape_21/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/4�
reshape_21/Reshape/shapePack!reshape_21/strided_slice:output:0#reshape_21/Reshape/shape/1:output:0#reshape_21/Reshape/shape/2:output:0#reshape_21/Reshape/shape/3:output:0#reshape_21/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_21/Reshape/shape�
reshape_21/ReshapeReshapedense_10/Softplus:activations:0!reshape_21/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_21/Reshape�
tf.reshape_564/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_564/Reshape/shape�
tf.reshape_564/ReshapeReshapereshape_21/Reshape:output:0%tf.reshape_564/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_564/Reshape�
tf.tile_282/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_282/Tile/multiples�
tf.tile_282/TileTiletf.reshape_564/Reshape:output:0#tf.tile_282/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_282/Tile�
tf.reshape_565/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_565/Reshape/shape�
tf.reshape_565/ReshapeReshapetf.tile_282/Tile:output:0%tf.reshape_565/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_565/Reshapex
tf.concat_461/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_461/concat/axis�
tf.concat_461/concatConcatV2tf.reshape_565/Reshape:output:0 conv3d_53/Softplus:activations:0"tf.concat_461/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_461/concat�
conv3d_54/Conv3D/ReadVariableOpReadVariableOp(conv3d_54_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_54/Conv3D/ReadVariableOp�
conv3d_54/Conv3DConv3Dtf.concat_461/concat:output:0'conv3d_54/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_54/Conv3D�
 conv3d_54/BiasAdd/ReadVariableOpReadVariableOp)conv3d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_54/BiasAdd/ReadVariableOp�
conv3d_54/BiasAddBiasAddconv3d_54/Conv3D:output:0(conv3d_54/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_54/BiasAdd�
conv3d_54/SoftplusSoftplusconv3d_54/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_54/Softplus�
tf.reshape_566/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_566/Reshape/shape�
tf.reshape_566/ReshapeReshape conv3d_54/Softplus:activations:0%tf.reshape_566/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_566/Reshape�
tf.tile_283/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_283/Tile/multiples�
tf.tile_283/TileTiletf.reshape_566/Reshape:output:0#tf.tile_283/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_283/Tile�
tf.reshape_567/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_567/Reshape/shape�
tf.reshape_567/ReshapeReshapetf.tile_283/Tile:output:0%tf.reshape_567/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_567/Reshapex
tf.concat_462/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_462/concat/axis�
tf.concat_462/concatConcatV2tf.reshape_567/Reshape:output:0 conv3d_52/Softplus:activations:0"tf.concat_462/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_462/concat�
conv3d_55/Conv3D/ReadVariableOpReadVariableOp(conv3d_55_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_55/Conv3D/ReadVariableOp�
conv3d_55/Conv3DConv3Dtf.concat_462/concat:output:0'conv3d_55/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_55/Conv3D�
 conv3d_55/BiasAdd/ReadVariableOpReadVariableOp)conv3d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_55/BiasAdd/ReadVariableOp�
conv3d_55/BiasAddBiasAddconv3d_55/Conv3D:output:0(conv3d_55/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_55/BiasAdd�
conv3d_55/SoftplusSoftplusconv3d_55/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_55/Softplus�
tf.reshape_568/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_568/Reshape/shape�
tf.reshape_568/ReshapeReshape conv3d_55/Softplus:activations:0%tf.reshape_568/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_568/Reshape�
tf.tile_284/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_284/Tile/multiples�
tf.tile_284/TileTiletf.reshape_568/Reshape:output:0#tf.tile_284/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_284/Tile�
tf.reshape_569/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_569/Reshape/shape�
tf.reshape_569/ReshapeReshapetf.tile_284/Tile:output:0%tf.reshape_569/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_569/Reshapex
tf.concat_463/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_463/concat/axis�
tf.concat_463/concatConcatV2tf.reshape_569/Reshape:output:0 conv3d_51/Softplus:activations:0"tf.concat_463/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_463/concat�
conv3d_56/Conv3D/ReadVariableOpReadVariableOp(conv3d_56_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_56/Conv3D/ReadVariableOp�
conv3d_56/Conv3DConv3Dtf.concat_463/concat:output:0'conv3d_56/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_56/Conv3D�
 conv3d_56/BiasAdd/ReadVariableOpReadVariableOp)conv3d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_56/BiasAdd/ReadVariableOp�
conv3d_56/BiasAddBiasAddconv3d_56/Conv3D:output:0(conv3d_56/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_56/BiasAdd�
conv3d_56/SoftplusSoftplusconv3d_56/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_56/Softplus�
tf.reshape_570/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_570/Reshape/shape�
tf.reshape_570/ReshapeReshape conv3d_56/Softplus:activations:0%tf.reshape_570/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_570/Reshape�
tf.tile_285/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_285/Tile/multiples�
tf.tile_285/TileTiletf.reshape_570/Reshape:output:0#tf.tile_285/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_285/Tile�
tf.reshape_571/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_571/Reshape/shape�
tf.reshape_571/ReshapeReshapetf.tile_285/Tile:output:0%tf.reshape_571/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_571/Reshapex
tf.concat_464/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_464/concat/axis�
tf.concat_464/concatConcatV2tf.reshape_571/Reshape:output:0 conv3d_50/Softplus:activations:0"tf.concat_464/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_464/concat�
conv3d_57/Conv3D/ReadVariableOpReadVariableOp(conv3d_57_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02!
conv3d_57/Conv3D/ReadVariableOp�
conv3d_57/Conv3DConv3Dtf.concat_464/concat:output:0'conv3d_57/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_57/Conv3D�
 conv3d_57/BiasAdd/ReadVariableOpReadVariableOp)conv3d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv3d_57/BiasAdd/ReadVariableOp�
conv3d_57/BiasAddBiasAddconv3d_57/Conv3D:output:0(conv3d_57/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_57/BiasAdd�
conv3d_57/SoftplusSoftplusconv3d_57/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_57/Softplus�
conv3d_58/Conv3D/ReadVariableOpReadVariableOp(conv3d_58_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02!
conv3d_58/Conv3D/ReadVariableOp�
conv3d_58/Conv3DConv3D conv3d_57/Softplus:activations:0'conv3d_58/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_58/Conv3D�
 conv3d_58/BiasAdd/ReadVariableOpReadVariableOp)conv3d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_58/BiasAdd/ReadVariableOp�
conv3d_58/BiasAddBiasAddconv3d_58/Conv3D:output:0(conv3d_58/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2
conv3d_58/BiasAdd�
IdentityIdentityconv3d_58/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp!^conv3d_50/BiasAdd/ReadVariableOp ^conv3d_50/Conv3D/ReadVariableOp!^conv3d_51/BiasAdd/ReadVariableOp ^conv3d_51/Conv3D/ReadVariableOp!^conv3d_52/BiasAdd/ReadVariableOp ^conv3d_52/Conv3D/ReadVariableOp!^conv3d_53/BiasAdd/ReadVariableOp ^conv3d_53/Conv3D/ReadVariableOp!^conv3d_54/BiasAdd/ReadVariableOp ^conv3d_54/Conv3D/ReadVariableOp!^conv3d_55/BiasAdd/ReadVariableOp ^conv3d_55/Conv3D/ReadVariableOp!^conv3d_56/BiasAdd/ReadVariableOp ^conv3d_56/Conv3D/ReadVariableOp!^conv3d_57/BiasAdd/ReadVariableOp ^conv3d_57/Conv3D/ReadVariableOp!^conv3d_58/BiasAdd/ReadVariableOp ^conv3d_58/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2D
 conv3d_50/BiasAdd/ReadVariableOp conv3d_50/BiasAdd/ReadVariableOp2B
conv3d_50/Conv3D/ReadVariableOpconv3d_50/Conv3D/ReadVariableOp2D
 conv3d_51/BiasAdd/ReadVariableOp conv3d_51/BiasAdd/ReadVariableOp2B
conv3d_51/Conv3D/ReadVariableOpconv3d_51/Conv3D/ReadVariableOp2D
 conv3d_52/BiasAdd/ReadVariableOp conv3d_52/BiasAdd/ReadVariableOp2B
conv3d_52/Conv3D/ReadVariableOpconv3d_52/Conv3D/ReadVariableOp2D
 conv3d_53/BiasAdd/ReadVariableOp conv3d_53/BiasAdd/ReadVariableOp2B
conv3d_53/Conv3D/ReadVariableOpconv3d_53/Conv3D/ReadVariableOp2D
 conv3d_54/BiasAdd/ReadVariableOp conv3d_54/BiasAdd/ReadVariableOp2B
conv3d_54/Conv3D/ReadVariableOpconv3d_54/Conv3D/ReadVariableOp2D
 conv3d_55/BiasAdd/ReadVariableOp conv3d_55/BiasAdd/ReadVariableOp2B
conv3d_55/Conv3D/ReadVariableOpconv3d_55/Conv3D/ReadVariableOp2D
 conv3d_56/BiasAdd/ReadVariableOp conv3d_56/BiasAdd/ReadVariableOp2B
conv3d_56/Conv3D/ReadVariableOpconv3d_56/Conv3D/ReadVariableOp2D
 conv3d_57/BiasAdd/ReadVariableOp conv3d_57/BiasAdd/ReadVariableOp2B
conv3d_57/Conv3D/ReadVariableOpconv3d_57/Conv3D/ReadVariableOp2D
 conv3d_58/BiasAdd/ReadVariableOp conv3d_58/BiasAdd/ReadVariableOp2B
conv3d_58/Conv3D/ReadVariableOpconv3d_58/Conv3D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
�
+__inference_conv3d_57_layer_call_fn_5553929

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_57_layer_call_and_return_conditional_losses_55524852
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
�
�
F__inference_conv3d_57_layer_call_and_return_conditional_losses_5552485

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
�
H
,__inference_reshape_21_layer_call_fn_5553845

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_21_layer_call_and_return_conditional_losses_55523892
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

m
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5552097

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
�
F__inference_conv3d_53_layer_call_and_return_conditional_losses_5552327

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
E__inference_dense_10_layer_call_and_return_conditional_losses_5552368

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
��
�
"__inference__wrapped_model_5552084	
inputO
1model_10_conv3d_50_conv3d_readvariableop_resource: @
2model_10_conv3d_50_biasadd_readvariableop_resource: O
1model_10_conv3d_51_conv3d_readvariableop_resource: @
2model_10_conv3d_51_biasadd_readvariableop_resource:O
1model_10_conv3d_52_conv3d_readvariableop_resource:@
2model_10_conv3d_52_biasadd_readvariableop_resource:O
1model_10_conv3d_53_conv3d_readvariableop_resource:@
2model_10_conv3d_53_biasadd_readvariableop_resource:B
0model_10_dense_10_matmul_readvariableop_resource:@@?
1model_10_dense_10_biasadd_readvariableop_resource:@O
1model_10_conv3d_54_conv3d_readvariableop_resource:@
2model_10_conv3d_54_biasadd_readvariableop_resource:O
1model_10_conv3d_55_conv3d_readvariableop_resource:@
2model_10_conv3d_55_biasadd_readvariableop_resource:O
1model_10_conv3d_56_conv3d_readvariableop_resource:@
2model_10_conv3d_56_biasadd_readvariableop_resource:O
1model_10_conv3d_57_conv3d_readvariableop_resource:0 @
2model_10_conv3d_57_biasadd_readvariableop_resource: O
1model_10_conv3d_58_conv3d_readvariableop_resource: @
2model_10_conv3d_58_biasadd_readvariableop_resource:
identity��)model_10/conv3d_50/BiasAdd/ReadVariableOp�(model_10/conv3d_50/Conv3D/ReadVariableOp�)model_10/conv3d_51/BiasAdd/ReadVariableOp�(model_10/conv3d_51/Conv3D/ReadVariableOp�)model_10/conv3d_52/BiasAdd/ReadVariableOp�(model_10/conv3d_52/Conv3D/ReadVariableOp�)model_10/conv3d_53/BiasAdd/ReadVariableOp�(model_10/conv3d_53/Conv3D/ReadVariableOp�)model_10/conv3d_54/BiasAdd/ReadVariableOp�(model_10/conv3d_54/Conv3D/ReadVariableOp�)model_10/conv3d_55/BiasAdd/ReadVariableOp�(model_10/conv3d_55/Conv3D/ReadVariableOp�)model_10/conv3d_56/BiasAdd/ReadVariableOp�(model_10/conv3d_56/Conv3D/ReadVariableOp�)model_10/conv3d_57/BiasAdd/ReadVariableOp�(model_10/conv3d_57/Conv3D/ReadVariableOp�)model_10/conv3d_58/BiasAdd/ReadVariableOp�(model_10/conv3d_58/Conv3D/ReadVariableOp�(model_10/dense_10/BiasAdd/ReadVariableOp�'model_10/dense_10/MatMul/ReadVariableOp�
9model_10/tf.__operators__.getitem_356/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_10/tf.__operators__.getitem_356/strided_slice/stack�
;model_10/tf.__operators__.getitem_356/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_10/tf.__operators__.getitem_356/strided_slice/stack_1�
;model_10/tf.__operators__.getitem_356/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_10/tf.__operators__.getitem_356/strided_slice/stack_2�
3model_10/tf.__operators__.getitem_356/strided_sliceStridedSliceinputBmodel_10/tf.__operators__.getitem_356/strided_slice/stack:output:0Dmodel_10/tf.__operators__.getitem_356/strided_slice/stack_1:output:0Dmodel_10/tf.__operators__.getitem_356/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask25
3model_10/tf.__operators__.getitem_356/strided_slice�
"model_10/range_conversion_10/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_10/range_conversion_10/sub/y�
 model_10/range_conversion_10/subSub<model_10/tf.__operators__.getitem_356/strided_slice:output:0+model_10/range_conversion_10/sub/y:output:0*
T0*3
_output_shapes!
:���������@@2"
 model_10/range_conversion_10/sub�
&model_10/range_conversion_10/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_10/range_conversion_10/truediv/y�
$model_10/range_conversion_10/truedivRealDiv$model_10/range_conversion_10/sub:z:0/model_10/range_conversion_10/truediv/y:output:0*
T0*3
_output_shapes!
:���������@@2&
$model_10/range_conversion_10/truediv�
"model_10/range_conversion_10/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_10/range_conversion_10/mul/y�
 model_10/range_conversion_10/mulMul(model_10/range_conversion_10/truediv:z:0+model_10/range_conversion_10/mul/y:output:0*
T0*3
_output_shapes!
:���������@@2"
 model_10/range_conversion_10/mul�
"model_10/range_conversion_10/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_10/range_conversion_10/add/y�
 model_10/range_conversion_10/addAddV2$model_10/range_conversion_10/mul:z:0+model_10/range_conversion_10/add/y:output:0*
T0*3
_output_shapes!
:���������@@2"
 model_10/range_conversion_10/add�
9model_10/tf.__operators__.getitem_357/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_10/tf.__operators__.getitem_357/strided_slice/stack�
;model_10/tf.__operators__.getitem_357/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_10/tf.__operators__.getitem_357/strided_slice/stack_1�
;model_10/tf.__operators__.getitem_357/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_10/tf.__operators__.getitem_357/strided_slice/stack_2�
3model_10/tf.__operators__.getitem_357/strided_sliceStridedSliceinputBmodel_10/tf.__operators__.getitem_357/strided_slice/stack:output:0Dmodel_10/tf.__operators__.getitem_357/strided_slice/stack_1:output:0Dmodel_10/tf.__operators__.getitem_357/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask25
3model_10/tf.__operators__.getitem_357/strided_slice�
"model_10/tf.concat_460/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_10/tf.concat_460/concat/axis�
model_10/tf.concat_460/concatConcatV2$model_10/range_conversion_10/add:z:0<model_10/tf.__operators__.getitem_357/strided_slice:output:0+model_10/tf.concat_460/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
model_10/tf.concat_460/concat�
(model_10/conv3d_50/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_50_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02*
(model_10/conv3d_50/Conv3D/ReadVariableOp�
model_10/conv3d_50/Conv3DConv3D&model_10/tf.concat_460/concat:output:00model_10/conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_50/Conv3D�
)model_10/conv3d_50/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_10/conv3d_50/BiasAdd/ReadVariableOp�
model_10/conv3d_50/BiasAddBiasAdd"model_10/conv3d_50/Conv3D:output:01model_10/conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
model_10/conv3d_50/BiasAdd�
model_10/conv3d_50/SoftplusSoftplus#model_10/conv3d_50/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
model_10/conv3d_50/Softplus�
,model_10/average_pooling3d_20/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_10/average_pooling3d_20/transpose/perm�
'model_10/average_pooling3d_20/transpose	Transpose)model_10/conv3d_50/Softplus:activations:05model_10/average_pooling3d_20/transpose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2)
'model_10/average_pooling3d_20/transpose�
'model_10/average_pooling3d_20/AvgPool3D	AvgPool3D+model_10/average_pooling3d_20/transpose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2)
'model_10/average_pooling3d_20/AvgPool3D�
.model_10/average_pooling3d_20/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_10/average_pooling3d_20/transpose_1/perm�
)model_10/average_pooling3d_20/transpose_1	Transpose0model_10/average_pooling3d_20/AvgPool3D:output:07model_10/average_pooling3d_20/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2+
)model_10/average_pooling3d_20/transpose_1�
(model_10/conv3d_51/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_51_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02*
(model_10/conv3d_51/Conv3D/ReadVariableOp�
model_10/conv3d_51/Conv3DConv3D-model_10/average_pooling3d_20/transpose_1:y:00model_10/conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_51/Conv3D�
)model_10/conv3d_51/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_10/conv3d_51/BiasAdd/ReadVariableOp�
model_10/conv3d_51/BiasAddBiasAdd"model_10/conv3d_51/Conv3D:output:01model_10/conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_10/conv3d_51/BiasAdd�
model_10/conv3d_51/SoftplusSoftplus#model_10/conv3d_51/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_10/conv3d_51/Softplus�
,model_10/average_pooling3d_21/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_10/average_pooling3d_21/transpose/perm�
'model_10/average_pooling3d_21/transpose	Transpose)model_10/conv3d_51/Softplus:activations:05model_10/average_pooling3d_21/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2)
'model_10/average_pooling3d_21/transpose�
'model_10/average_pooling3d_21/AvgPool3D	AvgPool3D+model_10/average_pooling3d_21/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_10/average_pooling3d_21/AvgPool3D�
.model_10/average_pooling3d_21/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_10/average_pooling3d_21/transpose_1/perm�
)model_10/average_pooling3d_21/transpose_1	Transpose0model_10/average_pooling3d_21/AvgPool3D:output:07model_10/average_pooling3d_21/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_10/average_pooling3d_21/transpose_1�
(model_10/conv3d_52/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_10/conv3d_52/Conv3D/ReadVariableOp�
model_10/conv3d_52/Conv3DConv3D-model_10/average_pooling3d_21/transpose_1:y:00model_10/conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_52/Conv3D�
)model_10/conv3d_52/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_10/conv3d_52/BiasAdd/ReadVariableOp�
model_10/conv3d_52/BiasAddBiasAdd"model_10/conv3d_52/Conv3D:output:01model_10/conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_10/conv3d_52/BiasAdd�
model_10/conv3d_52/SoftplusSoftplus#model_10/conv3d_52/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_10/conv3d_52/Softplus�
,model_10/average_pooling3d_22/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_10/average_pooling3d_22/transpose/perm�
'model_10/average_pooling3d_22/transpose	Transpose)model_10/conv3d_52/Softplus:activations:05model_10/average_pooling3d_22/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_10/average_pooling3d_22/transpose�
'model_10/average_pooling3d_22/AvgPool3D	AvgPool3D+model_10/average_pooling3d_22/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_10/average_pooling3d_22/AvgPool3D�
.model_10/average_pooling3d_22/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_10/average_pooling3d_22/transpose_1/perm�
)model_10/average_pooling3d_22/transpose_1	Transpose0model_10/average_pooling3d_22/AvgPool3D:output:07model_10/average_pooling3d_22/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_10/average_pooling3d_22/transpose_1�
(model_10/conv3d_53/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_53_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_10/conv3d_53/Conv3D/ReadVariableOp�
model_10/conv3d_53/Conv3DConv3D-model_10/average_pooling3d_22/transpose_1:y:00model_10/conv3d_53/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_53/Conv3D�
)model_10/conv3d_53/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_10/conv3d_53/BiasAdd/ReadVariableOp�
model_10/conv3d_53/BiasAddBiasAdd"model_10/conv3d_53/Conv3D:output:01model_10/conv3d_53/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_10/conv3d_53/BiasAdd�
model_10/conv3d_53/SoftplusSoftplus#model_10/conv3d_53/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_10/conv3d_53/Softplus�
,model_10/average_pooling3d_23/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_10/average_pooling3d_23/transpose/perm�
'model_10/average_pooling3d_23/transpose	Transpose)model_10/conv3d_53/Softplus:activations:05model_10/average_pooling3d_23/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_10/average_pooling3d_23/transpose�
'model_10/average_pooling3d_23/AvgPool3D	AvgPool3D+model_10/average_pooling3d_23/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_10/average_pooling3d_23/AvgPool3D�
.model_10/average_pooling3d_23/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_10/average_pooling3d_23/transpose_1/perm�
)model_10/average_pooling3d_23/transpose_1	Transpose0model_10/average_pooling3d_23/AvgPool3D:output:07model_10/average_pooling3d_23/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_10/average_pooling3d_23/transpose_1�
model_10/reshape_20/ShapeShape-model_10/average_pooling3d_23/transpose_1:y:0*
T0*
_output_shapes
:2
model_10/reshape_20/Shape�
'model_10/reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_10/reshape_20/strided_slice/stack�
)model_10/reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_20/strided_slice/stack_1�
)model_10/reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_20/strided_slice/stack_2�
!model_10/reshape_20/strided_sliceStridedSlice"model_10/reshape_20/Shape:output:00model_10/reshape_20/strided_slice/stack:output:02model_10/reshape_20/strided_slice/stack_1:output:02model_10/reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_10/reshape_20/strided_slice�
#model_10/reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_10/reshape_20/Reshape/shape/1�
!model_10/reshape_20/Reshape/shapePack*model_10/reshape_20/strided_slice:output:0,model_10/reshape_20/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_10/reshape_20/Reshape/shape�
model_10/reshape_20/ReshapeReshape-model_10/average_pooling3d_23/transpose_1:y:0*model_10/reshape_20/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_10/reshape_20/Reshape�
'model_10/dense_10/MatMul/ReadVariableOpReadVariableOp0model_10_dense_10_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_10/dense_10/MatMul/ReadVariableOp�
model_10/dense_10/MatMulMatMul$model_10/reshape_20/Reshape:output:0/model_10/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_10/dense_10/MatMul�
(model_10/dense_10/BiasAdd/ReadVariableOpReadVariableOp1model_10_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_10/dense_10/BiasAdd/ReadVariableOp�
model_10/dense_10/BiasAddBiasAdd"model_10/dense_10/MatMul:product:00model_10/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_10/dense_10/BiasAdd�
model_10/dense_10/SoftplusSoftplus"model_10/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_10/dense_10/Softplus�
model_10/reshape_21/ShapeShape(model_10/dense_10/Softplus:activations:0*
T0*
_output_shapes
:2
model_10/reshape_21/Shape�
'model_10/reshape_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_10/reshape_21/strided_slice/stack�
)model_10/reshape_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_21/strided_slice/stack_1�
)model_10/reshape_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_21/strided_slice/stack_2�
!model_10/reshape_21/strided_sliceStridedSlice"model_10/reshape_21/Shape:output:00model_10/reshape_21/strided_slice/stack:output:02model_10/reshape_21/strided_slice/stack_1:output:02model_10/reshape_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_10/reshape_21/strided_slice�
#model_10/reshape_21/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_10/reshape_21/Reshape/shape/1�
#model_10/reshape_21/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_10/reshape_21/Reshape/shape/2�
#model_10/reshape_21/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_10/reshape_21/Reshape/shape/3�
#model_10/reshape_21/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_10/reshape_21/Reshape/shape/4�
!model_10/reshape_21/Reshape/shapePack*model_10/reshape_21/strided_slice:output:0,model_10/reshape_21/Reshape/shape/1:output:0,model_10/reshape_21/Reshape/shape/2:output:0,model_10/reshape_21/Reshape/shape/3:output:0,model_10/reshape_21/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_10/reshape_21/Reshape/shape�
model_10/reshape_21/ReshapeReshape(model_10/dense_10/Softplus:activations:0*model_10/reshape_21/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_10/reshape_21/Reshape�
%model_10/tf.reshape_564/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_10/tf.reshape_564/Reshape/shape�
model_10/tf.reshape_564/ReshapeReshape$model_10/reshape_21/Reshape:output:0.model_10/tf.reshape_564/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_10/tf.reshape_564/Reshape�
#model_10/tf.tile_282/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_10/tf.tile_282/Tile/multiples�
model_10/tf.tile_282/TileTile(model_10/tf.reshape_564/Reshape:output:0,model_10/tf.tile_282/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_10/tf.tile_282/Tile�
%model_10/tf.reshape_565/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_10/tf.reshape_565/Reshape/shape�
model_10/tf.reshape_565/ReshapeReshape"model_10/tf.tile_282/Tile:output:0.model_10/tf.reshape_565/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_10/tf.reshape_565/Reshape�
"model_10/tf.concat_461/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_10/tf.concat_461/concat/axis�
model_10/tf.concat_461/concatConcatV2(model_10/tf.reshape_565/Reshape:output:0)model_10/conv3d_53/Softplus:activations:0+model_10/tf.concat_461/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_10/tf.concat_461/concat�
(model_10/conv3d_54/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_54_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_10/conv3d_54/Conv3D/ReadVariableOp�
model_10/conv3d_54/Conv3DConv3D&model_10/tf.concat_461/concat:output:00model_10/conv3d_54/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_54/Conv3D�
)model_10/conv3d_54/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_10/conv3d_54/BiasAdd/ReadVariableOp�
model_10/conv3d_54/BiasAddBiasAdd"model_10/conv3d_54/Conv3D:output:01model_10/conv3d_54/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_10/conv3d_54/BiasAdd�
model_10/conv3d_54/SoftplusSoftplus#model_10/conv3d_54/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_10/conv3d_54/Softplus�
%model_10/tf.reshape_566/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_10/tf.reshape_566/Reshape/shape�
model_10/tf.reshape_566/ReshapeReshape)model_10/conv3d_54/Softplus:activations:0.model_10/tf.reshape_566/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_10/tf.reshape_566/Reshape�
#model_10/tf.tile_283/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_10/tf.tile_283/Tile/multiples�
model_10/tf.tile_283/TileTile(model_10/tf.reshape_566/Reshape:output:0,model_10/tf.tile_283/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_10/tf.tile_283/Tile�
%model_10/tf.reshape_567/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_10/tf.reshape_567/Reshape/shape�
model_10/tf.reshape_567/ReshapeReshape"model_10/tf.tile_283/Tile:output:0.model_10/tf.reshape_567/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_10/tf.reshape_567/Reshape�
"model_10/tf.concat_462/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_10/tf.concat_462/concat/axis�
model_10/tf.concat_462/concatConcatV2(model_10/tf.reshape_567/Reshape:output:0)model_10/conv3d_52/Softplus:activations:0+model_10/tf.concat_462/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_10/tf.concat_462/concat�
(model_10/conv3d_55/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_55_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_10/conv3d_55/Conv3D/ReadVariableOp�
model_10/conv3d_55/Conv3DConv3D&model_10/tf.concat_462/concat:output:00model_10/conv3d_55/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_55/Conv3D�
)model_10/conv3d_55/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_10/conv3d_55/BiasAdd/ReadVariableOp�
model_10/conv3d_55/BiasAddBiasAdd"model_10/conv3d_55/Conv3D:output:01model_10/conv3d_55/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_10/conv3d_55/BiasAdd�
model_10/conv3d_55/SoftplusSoftplus#model_10/conv3d_55/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_10/conv3d_55/Softplus�
%model_10/tf.reshape_568/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_10/tf.reshape_568/Reshape/shape�
model_10/tf.reshape_568/ReshapeReshape)model_10/conv3d_55/Softplus:activations:0.model_10/tf.reshape_568/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_10/tf.reshape_568/Reshape�
#model_10/tf.tile_284/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_10/tf.tile_284/Tile/multiples�
model_10/tf.tile_284/TileTile(model_10/tf.reshape_568/Reshape:output:0,model_10/tf.tile_284/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_10/tf.tile_284/Tile�
%model_10/tf.reshape_569/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2'
%model_10/tf.reshape_569/Reshape/shape�
model_10/tf.reshape_569/ReshapeReshape"model_10/tf.tile_284/Tile:output:0.model_10/tf.reshape_569/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2!
model_10/tf.reshape_569/Reshape�
"model_10/tf.concat_463/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_10/tf.concat_463/concat/axis�
model_10/tf.concat_463/concatConcatV2(model_10/tf.reshape_569/Reshape:output:0)model_10/conv3d_51/Softplus:activations:0+model_10/tf.concat_463/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_10/tf.concat_463/concat�
(model_10/conv3d_56/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_56_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_10/conv3d_56/Conv3D/ReadVariableOp�
model_10/conv3d_56/Conv3DConv3D&model_10/tf.concat_463/concat:output:00model_10/conv3d_56/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_56/Conv3D�
)model_10/conv3d_56/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_10/conv3d_56/BiasAdd/ReadVariableOp�
model_10/conv3d_56/BiasAddBiasAdd"model_10/conv3d_56/Conv3D:output:01model_10/conv3d_56/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_10/conv3d_56/BiasAdd�
model_10/conv3d_56/SoftplusSoftplus#model_10/conv3d_56/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_10/conv3d_56/Softplus�
%model_10/tf.reshape_570/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2'
%model_10/tf.reshape_570/Reshape/shape�
model_10/tf.reshape_570/ReshapeReshape)model_10/conv3d_56/Softplus:activations:0.model_10/tf.reshape_570/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2!
model_10/tf.reshape_570/Reshape�
#model_10/tf.tile_285/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_10/tf.tile_285/Tile/multiples�
model_10/tf.tile_285/TileTile(model_10/tf.reshape_570/Reshape:output:0,model_10/tf.tile_285/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
model_10/tf.tile_285/Tile�
%model_10/tf.reshape_571/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2'
%model_10/tf.reshape_571/Reshape/shape�
model_10/tf.reshape_571/ReshapeReshape"model_10/tf.tile_285/Tile:output:0.model_10/tf.reshape_571/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2!
model_10/tf.reshape_571/Reshape�
"model_10/tf.concat_464/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_10/tf.concat_464/concat/axis�
model_10/tf.concat_464/concatConcatV2(model_10/tf.reshape_571/Reshape:output:0)model_10/conv3d_50/Softplus:activations:0+model_10/tf.concat_464/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
model_10/tf.concat_464/concat�
(model_10/conv3d_57/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_57_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02*
(model_10/conv3d_57/Conv3D/ReadVariableOp�
model_10/conv3d_57/Conv3DConv3D&model_10/tf.concat_464/concat:output:00model_10/conv3d_57/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_57/Conv3D�
)model_10/conv3d_57/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_10/conv3d_57/BiasAdd/ReadVariableOp�
model_10/conv3d_57/BiasAddBiasAdd"model_10/conv3d_57/Conv3D:output:01model_10/conv3d_57/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
model_10/conv3d_57/BiasAdd�
model_10/conv3d_57/SoftplusSoftplus#model_10/conv3d_57/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
model_10/conv3d_57/Softplus�
(model_10/conv3d_58/Conv3D/ReadVariableOpReadVariableOp1model_10_conv3d_58_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02*
(model_10/conv3d_58/Conv3D/ReadVariableOp�
model_10/conv3d_58/Conv3DConv3D)model_10/conv3d_57/Softplus:activations:00model_10/conv3d_58/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_10/conv3d_58/Conv3D�
)model_10/conv3d_58/BiasAdd/ReadVariableOpReadVariableOp2model_10_conv3d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_10/conv3d_58/BiasAdd/ReadVariableOp�
model_10/conv3d_58/BiasAddBiasAdd"model_10/conv3d_58/Conv3D:output:01model_10/conv3d_58/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2
model_10/conv3d_58/BiasAdd�
IdentityIdentity#model_10/conv3d_58/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp*^model_10/conv3d_50/BiasAdd/ReadVariableOp)^model_10/conv3d_50/Conv3D/ReadVariableOp*^model_10/conv3d_51/BiasAdd/ReadVariableOp)^model_10/conv3d_51/Conv3D/ReadVariableOp*^model_10/conv3d_52/BiasAdd/ReadVariableOp)^model_10/conv3d_52/Conv3D/ReadVariableOp*^model_10/conv3d_53/BiasAdd/ReadVariableOp)^model_10/conv3d_53/Conv3D/ReadVariableOp*^model_10/conv3d_54/BiasAdd/ReadVariableOp)^model_10/conv3d_54/Conv3D/ReadVariableOp*^model_10/conv3d_55/BiasAdd/ReadVariableOp)^model_10/conv3d_55/Conv3D/ReadVariableOp*^model_10/conv3d_56/BiasAdd/ReadVariableOp)^model_10/conv3d_56/Conv3D/ReadVariableOp*^model_10/conv3d_57/BiasAdd/ReadVariableOp)^model_10/conv3d_57/Conv3D/ReadVariableOp*^model_10/conv3d_58/BiasAdd/ReadVariableOp)^model_10/conv3d_58/Conv3D/ReadVariableOp)^model_10/dense_10/BiasAdd/ReadVariableOp(^model_10/dense_10/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2V
)model_10/conv3d_50/BiasAdd/ReadVariableOp)model_10/conv3d_50/BiasAdd/ReadVariableOp2T
(model_10/conv3d_50/Conv3D/ReadVariableOp(model_10/conv3d_50/Conv3D/ReadVariableOp2V
)model_10/conv3d_51/BiasAdd/ReadVariableOp)model_10/conv3d_51/BiasAdd/ReadVariableOp2T
(model_10/conv3d_51/Conv3D/ReadVariableOp(model_10/conv3d_51/Conv3D/ReadVariableOp2V
)model_10/conv3d_52/BiasAdd/ReadVariableOp)model_10/conv3d_52/BiasAdd/ReadVariableOp2T
(model_10/conv3d_52/Conv3D/ReadVariableOp(model_10/conv3d_52/Conv3D/ReadVariableOp2V
)model_10/conv3d_53/BiasAdd/ReadVariableOp)model_10/conv3d_53/BiasAdd/ReadVariableOp2T
(model_10/conv3d_53/Conv3D/ReadVariableOp(model_10/conv3d_53/Conv3D/ReadVariableOp2V
)model_10/conv3d_54/BiasAdd/ReadVariableOp)model_10/conv3d_54/BiasAdd/ReadVariableOp2T
(model_10/conv3d_54/Conv3D/ReadVariableOp(model_10/conv3d_54/Conv3D/ReadVariableOp2V
)model_10/conv3d_55/BiasAdd/ReadVariableOp)model_10/conv3d_55/BiasAdd/ReadVariableOp2T
(model_10/conv3d_55/Conv3D/ReadVariableOp(model_10/conv3d_55/Conv3D/ReadVariableOp2V
)model_10/conv3d_56/BiasAdd/ReadVariableOp)model_10/conv3d_56/BiasAdd/ReadVariableOp2T
(model_10/conv3d_56/Conv3D/ReadVariableOp(model_10/conv3d_56/Conv3D/ReadVariableOp2V
)model_10/conv3d_57/BiasAdd/ReadVariableOp)model_10/conv3d_57/BiasAdd/ReadVariableOp2T
(model_10/conv3d_57/Conv3D/ReadVariableOp(model_10/conv3d_57/Conv3D/ReadVariableOp2V
)model_10/conv3d_58/BiasAdd/ReadVariableOp)model_10/conv3d_58/BiasAdd/ReadVariableOp2T
(model_10/conv3d_58/Conv3D/ReadVariableOp(model_10/conv3d_58/Conv3D/ReadVariableOp2T
(model_10/dense_10/BiasAdd/ReadVariableOp(model_10/dense_10/BiasAdd/ReadVariableOp2R
'model_10/dense_10/MatMul/ReadVariableOp'model_10/dense_10/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�	
m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5553755

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
F__inference_conv3d_53_layer_call_and_return_conditional_losses_5553775

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
�
�
*__inference_dense_10_layer_call_fn_5553829

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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_55523682
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
�
c
G__inference_reshape_21_layer_call_and_return_conditional_losses_5553860

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
�
�
F__inference_conv3d_58_layer_call_and_return_conditional_losses_5553959

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
�
�
F__inference_conv3d_52_layer_call_and_return_conditional_losses_5553727

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
m
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5552341

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
�
R
6__inference_average_pooling3d_23_layer_call_fn_5553780

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_55521872
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

m
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5553650

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

m
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5552127

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
�
F__inference_conv3d_54_layer_call_and_return_conditional_losses_5552410

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
�
R
6__inference_average_pooling3d_21_layer_call_fn_5553684

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_55521272
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
�
R
6__inference_average_pooling3d_20_layer_call_fn_5553641

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_55522602
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
m
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5552260

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
�
F__inference_conv3d_51_layer_call_and_return_conditional_losses_5553679

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
�
�
+__inference_conv3d_53_layer_call_fn_5553764

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_53_layer_call_and_return_conditional_losses_55523272
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
+__inference_conv3d_50_layer_call_fn_5553620

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_50_layer_call_and_return_conditional_losses_55522462
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
F__inference_conv3d_54_layer_call_and_return_conditional_losses_5553880

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
�
�
%__inference_signature_wrapper_5553180	
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
GPU2 *0,1,2,3J 8� *+
f&R$
"__inference__wrapped_model_55520842
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
U
5__inference_range_conversion_10_layer_call_fn_5553599

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_55522272
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
�	
m
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5553659

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
p
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_5552227

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
�
�
F__inference_conv3d_50_layer_call_and_return_conditional_losses_5552246

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
��
�	
E__inference_model_10_layer_call_and_return_conditional_losses_5553030	
input/
conv3d_50_5552941: 
conv3d_50_5552943: /
conv3d_51_5552947: 
conv3d_51_5552949:/
conv3d_52_5552953:
conv3d_52_5552955:/
conv3d_53_5552959:
conv3d_53_5552961:"
dense_10_5552966:@@
dense_10_5552968:@/
conv3d_54_5552980:
conv3d_54_5552982:/
conv3d_55_5552993:
conv3d_55_5552995:/
conv3d_56_5553006:
conv3d_56_5553008:/
conv3d_57_5553019:0 
conv3d_57_5553021: /
conv3d_58_5553024: 
conv3d_58_5553026:
identity��!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�!conv3d_54/StatefulPartitionedCall�!conv3d_55/StatefulPartitionedCall�!conv3d_56/StatefulPartitionedCall�!conv3d_57/StatefulPartitionedCall�!conv3d_58/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
0tf.__operators__.getitem_356/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_356/strided_slice/stack�
2tf.__operators__.getitem_356/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_356/strided_slice/stack_1�
2tf.__operators__.getitem_356/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_356/strided_slice/stack_2�
*tf.__operators__.getitem_356/strided_sliceStridedSliceinput9tf.__operators__.getitem_356/strided_slice/stack:output:0;tf.__operators__.getitem_356/strided_slice/stack_1:output:0;tf.__operators__.getitem_356/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_356/strided_slice�
#range_conversion_10/PartitionedCallPartitionedCall3tf.__operators__.getitem_356/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_55522272%
#range_conversion_10/PartitionedCall�
0tf.__operators__.getitem_357/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_357/strided_slice/stack�
2tf.__operators__.getitem_357/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_357/strided_slice/stack_1�
2tf.__operators__.getitem_357/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_357/strided_slice/stack_2�
*tf.__operators__.getitem_357/strided_sliceStridedSliceinput9tf.__operators__.getitem_357/strided_slice/stack:output:0;tf.__operators__.getitem_357/strided_slice/stack_1:output:0;tf.__operators__.getitem_357/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_357/strided_slicex
tf.concat_460/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_460/concat/axis�
tf.concat_460/concatConcatV2,range_conversion_10/PartitionedCall:output:03tf.__operators__.getitem_357/strided_slice:output:0"tf.concat_460/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_460/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_460/concat:output:0conv3d_50_5552941conv3d_50_5552943*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_50_layer_call_and_return_conditional_losses_55522462#
!conv3d_50/StatefulPartitionedCall�
$average_pooling3d_20/PartitionedCallPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_55522602&
$average_pooling3d_20/PartitionedCall�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_20/PartitionedCall:output:0conv3d_51_5552947conv3d_51_5552949*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_51_layer_call_and_return_conditional_losses_55522732#
!conv3d_51/StatefulPartitionedCall�
$average_pooling3d_21/PartitionedCallPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_55522872&
$average_pooling3d_21/PartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_21/PartitionedCall:output:0conv3d_52_5552953conv3d_52_5552955*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_52_layer_call_and_return_conditional_losses_55523002#
!conv3d_52/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_55523142&
$average_pooling3d_22/PartitionedCall�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_22/PartitionedCall:output:0conv3d_53_5552959conv3d_53_5552961*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_53_layer_call_and_return_conditional_losses_55523272#
!conv3d_53/StatefulPartitionedCall�
$average_pooling3d_23/PartitionedCallPartitionedCall*conv3d_53/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_55523412&
$average_pooling3d_23/PartitionedCall�
reshape_20/PartitionedCallPartitionedCall-average_pooling3d_23/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_20_layer_call_and_return_conditional_losses_55523552
reshape_20/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_10_5552966dense_10_5552968*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_55523682"
 dense_10/StatefulPartitionedCall�
reshape_21/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_21_layer_call_and_return_conditional_losses_55523892
reshape_21/PartitionedCall�
tf.reshape_564/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_564/Reshape/shape�
tf.reshape_564/ReshapeReshape#reshape_21/PartitionedCall:output:0%tf.reshape_564/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_564/Reshape�
tf.tile_282/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_282/Tile/multiples�
tf.tile_282/TileTiletf.reshape_564/Reshape:output:0#tf.tile_282/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_282/Tile�
tf.reshape_565/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_565/Reshape/shape�
tf.reshape_565/ReshapeReshapetf.tile_282/Tile:output:0%tf.reshape_565/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_565/Reshapex
tf.concat_461/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_461/concat/axis�
tf.concat_461/concatConcatV2tf.reshape_565/Reshape:output:0*conv3d_53/StatefulPartitionedCall:output:0"tf.concat_461/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_461/concat�
!conv3d_54/StatefulPartitionedCallStatefulPartitionedCalltf.concat_461/concat:output:0conv3d_54_5552980conv3d_54_5552982*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_54_layer_call_and_return_conditional_losses_55524102#
!conv3d_54/StatefulPartitionedCall�
tf.reshape_566/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_566/Reshape/shape�
tf.reshape_566/ReshapeReshape*conv3d_54/StatefulPartitionedCall:output:0%tf.reshape_566/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_566/Reshape�
tf.tile_283/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_283/Tile/multiples�
tf.tile_283/TileTiletf.reshape_566/Reshape:output:0#tf.tile_283/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_283/Tile�
tf.reshape_567/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_567/Reshape/shape�
tf.reshape_567/ReshapeReshapetf.tile_283/Tile:output:0%tf.reshape_567/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_567/Reshapex
tf.concat_462/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_462/concat/axis�
tf.concat_462/concatConcatV2tf.reshape_567/Reshape:output:0*conv3d_52/StatefulPartitionedCall:output:0"tf.concat_462/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_462/concat�
!conv3d_55/StatefulPartitionedCallStatefulPartitionedCalltf.concat_462/concat:output:0conv3d_55_5552993conv3d_55_5552995*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_55_layer_call_and_return_conditional_losses_55524352#
!conv3d_55/StatefulPartitionedCall�
tf.reshape_568/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_568/Reshape/shape�
tf.reshape_568/ReshapeReshape*conv3d_55/StatefulPartitionedCall:output:0%tf.reshape_568/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_568/Reshape�
tf.tile_284/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_284/Tile/multiples�
tf.tile_284/TileTiletf.reshape_568/Reshape:output:0#tf.tile_284/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_284/Tile�
tf.reshape_569/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_569/Reshape/shape�
tf.reshape_569/ReshapeReshapetf.tile_284/Tile:output:0%tf.reshape_569/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_569/Reshapex
tf.concat_463/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_463/concat/axis�
tf.concat_463/concatConcatV2tf.reshape_569/Reshape:output:0*conv3d_51/StatefulPartitionedCall:output:0"tf.concat_463/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_463/concat�
!conv3d_56/StatefulPartitionedCallStatefulPartitionedCalltf.concat_463/concat:output:0conv3d_56_5553006conv3d_56_5553008*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_56_layer_call_and_return_conditional_losses_55524602#
!conv3d_56/StatefulPartitionedCall�
tf.reshape_570/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_570/Reshape/shape�
tf.reshape_570/ReshapeReshape*conv3d_56/StatefulPartitionedCall:output:0%tf.reshape_570/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_570/Reshape�
tf.tile_285/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_285/Tile/multiples�
tf.tile_285/TileTiletf.reshape_570/Reshape:output:0#tf.tile_285/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_285/Tile�
tf.reshape_571/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_571/Reshape/shape�
tf.reshape_571/ReshapeReshapetf.tile_285/Tile:output:0%tf.reshape_571/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_571/Reshapex
tf.concat_464/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_464/concat/axis�
tf.concat_464/concatConcatV2tf.reshape_571/Reshape:output:0*conv3d_50/StatefulPartitionedCall:output:0"tf.concat_464/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_464/concat�
!conv3d_57/StatefulPartitionedCallStatefulPartitionedCalltf.concat_464/concat:output:0conv3d_57_5553019conv3d_57_5553021*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_57_layer_call_and_return_conditional_losses_55524852#
!conv3d_57/StatefulPartitionedCall�
!conv3d_58/StatefulPartitionedCallStatefulPartitionedCall*conv3d_57/StatefulPartitionedCall:output:0conv3d_58_5553024conv3d_58_5553026*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_58_layer_call_and_return_conditional_losses_55525012#
!conv3d_58/StatefulPartitionedCall�
IdentityIdentity*conv3d_58/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall"^conv3d_54/StatefulPartitionedCall"^conv3d_55/StatefulPartitionedCall"^conv3d_56/StatefulPartitionedCall"^conv3d_57/StatefulPartitionedCall"^conv3d_58/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2F
!conv3d_54/StatefulPartitionedCall!conv3d_54/StatefulPartitionedCall2F
!conv3d_55/StatefulPartitionedCall!conv3d_55/StatefulPartitionedCall2F
!conv3d_56/StatefulPartitionedCall!conv3d_56/StatefulPartitionedCall2F
!conv3d_57/StatefulPartitionedCall!conv3d_57/StatefulPartitionedCall2F
!conv3d_58/StatefulPartitionedCall!conv3d_58/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�
�
F__inference_conv3d_57_layer_call_and_return_conditional_losses_5553940

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
��
�	
E__inference_model_10_layer_call_and_return_conditional_losses_5553133	
input/
conv3d_50_5553044: 
conv3d_50_5553046: /
conv3d_51_5553050: 
conv3d_51_5553052:/
conv3d_52_5553056:
conv3d_52_5553058:/
conv3d_53_5553062:
conv3d_53_5553064:"
dense_10_5553069:@@
dense_10_5553071:@/
conv3d_54_5553083:
conv3d_54_5553085:/
conv3d_55_5553096:
conv3d_55_5553098:/
conv3d_56_5553109:
conv3d_56_5553111:/
conv3d_57_5553122:0 
conv3d_57_5553124: /
conv3d_58_5553127: 
conv3d_58_5553129:
identity��!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�!conv3d_54/StatefulPartitionedCall�!conv3d_55/StatefulPartitionedCall�!conv3d_56/StatefulPartitionedCall�!conv3d_57/StatefulPartitionedCall�!conv3d_58/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
0tf.__operators__.getitem_356/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_356/strided_slice/stack�
2tf.__operators__.getitem_356/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_356/strided_slice/stack_1�
2tf.__operators__.getitem_356/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_356/strided_slice/stack_2�
*tf.__operators__.getitem_356/strided_sliceStridedSliceinput9tf.__operators__.getitem_356/strided_slice/stack:output:0;tf.__operators__.getitem_356/strided_slice/stack_1:output:0;tf.__operators__.getitem_356/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_356/strided_slice�
#range_conversion_10/PartitionedCallPartitionedCall3tf.__operators__.getitem_356/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_55522272%
#range_conversion_10/PartitionedCall�
0tf.__operators__.getitem_357/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_357/strided_slice/stack�
2tf.__operators__.getitem_357/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_357/strided_slice/stack_1�
2tf.__operators__.getitem_357/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_357/strided_slice/stack_2�
*tf.__operators__.getitem_357/strided_sliceStridedSliceinput9tf.__operators__.getitem_357/strided_slice/stack:output:0;tf.__operators__.getitem_357/strided_slice/stack_1:output:0;tf.__operators__.getitem_357/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_357/strided_slicex
tf.concat_460/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_460/concat/axis�
tf.concat_460/concatConcatV2,range_conversion_10/PartitionedCall:output:03tf.__operators__.getitem_357/strided_slice:output:0"tf.concat_460/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_460/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_460/concat:output:0conv3d_50_5553044conv3d_50_5553046*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_50_layer_call_and_return_conditional_losses_55522462#
!conv3d_50/StatefulPartitionedCall�
$average_pooling3d_20/PartitionedCallPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_55522602&
$average_pooling3d_20/PartitionedCall�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_20/PartitionedCall:output:0conv3d_51_5553050conv3d_51_5553052*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_51_layer_call_and_return_conditional_losses_55522732#
!conv3d_51/StatefulPartitionedCall�
$average_pooling3d_21/PartitionedCallPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_55522872&
$average_pooling3d_21/PartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_21/PartitionedCall:output:0conv3d_52_5553056conv3d_52_5553058*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_52_layer_call_and_return_conditional_losses_55523002#
!conv3d_52/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_55523142&
$average_pooling3d_22/PartitionedCall�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_22/PartitionedCall:output:0conv3d_53_5553062conv3d_53_5553064*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_53_layer_call_and_return_conditional_losses_55523272#
!conv3d_53/StatefulPartitionedCall�
$average_pooling3d_23/PartitionedCallPartitionedCall*conv3d_53/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_55523412&
$average_pooling3d_23/PartitionedCall�
reshape_20/PartitionedCallPartitionedCall-average_pooling3d_23/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_20_layer_call_and_return_conditional_losses_55523552
reshape_20/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_10_5553069dense_10_5553071*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_55523682"
 dense_10/StatefulPartitionedCall�
reshape_21/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_21_layer_call_and_return_conditional_losses_55523892
reshape_21/PartitionedCall�
tf.reshape_564/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_564/Reshape/shape�
tf.reshape_564/ReshapeReshape#reshape_21/PartitionedCall:output:0%tf.reshape_564/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_564/Reshape�
tf.tile_282/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_282/Tile/multiples�
tf.tile_282/TileTiletf.reshape_564/Reshape:output:0#tf.tile_282/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_282/Tile�
tf.reshape_565/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_565/Reshape/shape�
tf.reshape_565/ReshapeReshapetf.tile_282/Tile:output:0%tf.reshape_565/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_565/Reshapex
tf.concat_461/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_461/concat/axis�
tf.concat_461/concatConcatV2tf.reshape_565/Reshape:output:0*conv3d_53/StatefulPartitionedCall:output:0"tf.concat_461/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_461/concat�
!conv3d_54/StatefulPartitionedCallStatefulPartitionedCalltf.concat_461/concat:output:0conv3d_54_5553083conv3d_54_5553085*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_54_layer_call_and_return_conditional_losses_55524102#
!conv3d_54/StatefulPartitionedCall�
tf.reshape_566/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_566/Reshape/shape�
tf.reshape_566/ReshapeReshape*conv3d_54/StatefulPartitionedCall:output:0%tf.reshape_566/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_566/Reshape�
tf.tile_283/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_283/Tile/multiples�
tf.tile_283/TileTiletf.reshape_566/Reshape:output:0#tf.tile_283/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_283/Tile�
tf.reshape_567/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_567/Reshape/shape�
tf.reshape_567/ReshapeReshapetf.tile_283/Tile:output:0%tf.reshape_567/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_567/Reshapex
tf.concat_462/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_462/concat/axis�
tf.concat_462/concatConcatV2tf.reshape_567/Reshape:output:0*conv3d_52/StatefulPartitionedCall:output:0"tf.concat_462/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_462/concat�
!conv3d_55/StatefulPartitionedCallStatefulPartitionedCalltf.concat_462/concat:output:0conv3d_55_5553096conv3d_55_5553098*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_55_layer_call_and_return_conditional_losses_55524352#
!conv3d_55/StatefulPartitionedCall�
tf.reshape_568/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_568/Reshape/shape�
tf.reshape_568/ReshapeReshape*conv3d_55/StatefulPartitionedCall:output:0%tf.reshape_568/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_568/Reshape�
tf.tile_284/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_284/Tile/multiples�
tf.tile_284/TileTiletf.reshape_568/Reshape:output:0#tf.tile_284/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_284/Tile�
tf.reshape_569/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_569/Reshape/shape�
tf.reshape_569/ReshapeReshapetf.tile_284/Tile:output:0%tf.reshape_569/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_569/Reshapex
tf.concat_463/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_463/concat/axis�
tf.concat_463/concatConcatV2tf.reshape_569/Reshape:output:0*conv3d_51/StatefulPartitionedCall:output:0"tf.concat_463/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_463/concat�
!conv3d_56/StatefulPartitionedCallStatefulPartitionedCalltf.concat_463/concat:output:0conv3d_56_5553109conv3d_56_5553111*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_56_layer_call_and_return_conditional_losses_55524602#
!conv3d_56/StatefulPartitionedCall�
tf.reshape_570/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_570/Reshape/shape�
tf.reshape_570/ReshapeReshape*conv3d_56/StatefulPartitionedCall:output:0%tf.reshape_570/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_570/Reshape�
tf.tile_285/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_285/Tile/multiples�
tf.tile_285/TileTiletf.reshape_570/Reshape:output:0#tf.tile_285/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_285/Tile�
tf.reshape_571/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_571/Reshape/shape�
tf.reshape_571/ReshapeReshapetf.tile_285/Tile:output:0%tf.reshape_571/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_571/Reshapex
tf.concat_464/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_464/concat/axis�
tf.concat_464/concatConcatV2tf.reshape_571/Reshape:output:0*conv3d_50/StatefulPartitionedCall:output:0"tf.concat_464/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_464/concat�
!conv3d_57/StatefulPartitionedCallStatefulPartitionedCalltf.concat_464/concat:output:0conv3d_57_5553122conv3d_57_5553124*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_57_layer_call_and_return_conditional_losses_55524852#
!conv3d_57/StatefulPartitionedCall�
!conv3d_58/StatefulPartitionedCallStatefulPartitionedCall*conv3d_57/StatefulPartitionedCall:output:0conv3d_58_5553127conv3d_58_5553129*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_58_layer_call_and_return_conditional_losses_55525012#
!conv3d_58/StatefulPartitionedCall�
IdentityIdentity*conv3d_58/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall"^conv3d_54/StatefulPartitionedCall"^conv3d_55/StatefulPartitionedCall"^conv3d_56/StatefulPartitionedCall"^conv3d_57/StatefulPartitionedCall"^conv3d_58/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2F
!conv3d_54/StatefulPartitionedCall!conv3d_54/StatefulPartitionedCall2F
!conv3d_55/StatefulPartitionedCall!conv3d_55/StatefulPartitionedCall2F
!conv3d_56/StatefulPartitionedCall!conv3d_56/StatefulPartitionedCall2F
!conv3d_57/StatefulPartitionedCall!conv3d_57/StatefulPartitionedCall2F
!conv3d_58/StatefulPartitionedCall!conv3d_58/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������@@

_user_specified_nameinput
�
H
,__inference_reshape_20_layer_call_fn_5553808

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_20_layer_call_and_return_conditional_losses_55523552
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
�

m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5552157

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
�
�
*__inference_model_10_layer_call_fn_5552927	
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_55528392
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

m
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5553698

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
�
c
G__inference_reshape_21_layer_call_and_return_conditional_losses_5552389

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
�	
m
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5552314

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
��
�	
E__inference_model_10_layer_call_and_return_conditional_losses_5552508

inputs/
conv3d_50_5552247: 
conv3d_50_5552249: /
conv3d_51_5552274: 
conv3d_51_5552276:/
conv3d_52_5552301:
conv3d_52_5552303:/
conv3d_53_5552328:
conv3d_53_5552330:"
dense_10_5552369:@@
dense_10_5552371:@/
conv3d_54_5552411:
conv3d_54_5552413:/
conv3d_55_5552436:
conv3d_55_5552438:/
conv3d_56_5552461:
conv3d_56_5552463:/
conv3d_57_5552486:0 
conv3d_57_5552488: /
conv3d_58_5552502: 
conv3d_58_5552504:
identity��!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�!conv3d_54/StatefulPartitionedCall�!conv3d_55/StatefulPartitionedCall�!conv3d_56/StatefulPartitionedCall�!conv3d_57/StatefulPartitionedCall�!conv3d_58/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
0tf.__operators__.getitem_356/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_356/strided_slice/stack�
2tf.__operators__.getitem_356/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_356/strided_slice/stack_1�
2tf.__operators__.getitem_356/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_356/strided_slice/stack_2�
*tf.__operators__.getitem_356/strided_sliceStridedSliceinputs9tf.__operators__.getitem_356/strided_slice/stack:output:0;tf.__operators__.getitem_356/strided_slice/stack_1:output:0;tf.__operators__.getitem_356/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_356/strided_slice�
#range_conversion_10/PartitionedCallPartitionedCall3tf.__operators__.getitem_356/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_55522272%
#range_conversion_10/PartitionedCall�
0tf.__operators__.getitem_357/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_357/strided_slice/stack�
2tf.__operators__.getitem_357/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_357/strided_slice/stack_1�
2tf.__operators__.getitem_357/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_357/strided_slice/stack_2�
*tf.__operators__.getitem_357/strided_sliceStridedSliceinputs9tf.__operators__.getitem_357/strided_slice/stack:output:0;tf.__operators__.getitem_357/strided_slice/stack_1:output:0;tf.__operators__.getitem_357/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_357/strided_slicex
tf.concat_460/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_460/concat/axis�
tf.concat_460/concatConcatV2,range_conversion_10/PartitionedCall:output:03tf.__operators__.getitem_357/strided_slice:output:0"tf.concat_460/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_460/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_460/concat:output:0conv3d_50_5552247conv3d_50_5552249*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_50_layer_call_and_return_conditional_losses_55522462#
!conv3d_50/StatefulPartitionedCall�
$average_pooling3d_20/PartitionedCallPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_55522602&
$average_pooling3d_20/PartitionedCall�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_20/PartitionedCall:output:0conv3d_51_5552274conv3d_51_5552276*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_51_layer_call_and_return_conditional_losses_55522732#
!conv3d_51/StatefulPartitionedCall�
$average_pooling3d_21/PartitionedCallPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_55522872&
$average_pooling3d_21/PartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_21/PartitionedCall:output:0conv3d_52_5552301conv3d_52_5552303*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_52_layer_call_and_return_conditional_losses_55523002#
!conv3d_52/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_55523142&
$average_pooling3d_22/PartitionedCall�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_22/PartitionedCall:output:0conv3d_53_5552328conv3d_53_5552330*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_53_layer_call_and_return_conditional_losses_55523272#
!conv3d_53/StatefulPartitionedCall�
$average_pooling3d_23/PartitionedCallPartitionedCall*conv3d_53/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_55523412&
$average_pooling3d_23/PartitionedCall�
reshape_20/PartitionedCallPartitionedCall-average_pooling3d_23/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_20_layer_call_and_return_conditional_losses_55523552
reshape_20/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_10_5552369dense_10_5552371*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_55523682"
 dense_10/StatefulPartitionedCall�
reshape_21/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_21_layer_call_and_return_conditional_losses_55523892
reshape_21/PartitionedCall�
tf.reshape_564/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_564/Reshape/shape�
tf.reshape_564/ReshapeReshape#reshape_21/PartitionedCall:output:0%tf.reshape_564/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_564/Reshape�
tf.tile_282/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_282/Tile/multiples�
tf.tile_282/TileTiletf.reshape_564/Reshape:output:0#tf.tile_282/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_282/Tile�
tf.reshape_565/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_565/Reshape/shape�
tf.reshape_565/ReshapeReshapetf.tile_282/Tile:output:0%tf.reshape_565/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_565/Reshapex
tf.concat_461/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_461/concat/axis�
tf.concat_461/concatConcatV2tf.reshape_565/Reshape:output:0*conv3d_53/StatefulPartitionedCall:output:0"tf.concat_461/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_461/concat�
!conv3d_54/StatefulPartitionedCallStatefulPartitionedCalltf.concat_461/concat:output:0conv3d_54_5552411conv3d_54_5552413*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_54_layer_call_and_return_conditional_losses_55524102#
!conv3d_54/StatefulPartitionedCall�
tf.reshape_566/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_566/Reshape/shape�
tf.reshape_566/ReshapeReshape*conv3d_54/StatefulPartitionedCall:output:0%tf.reshape_566/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_566/Reshape�
tf.tile_283/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_283/Tile/multiples�
tf.tile_283/TileTiletf.reshape_566/Reshape:output:0#tf.tile_283/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_283/Tile�
tf.reshape_567/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_567/Reshape/shape�
tf.reshape_567/ReshapeReshapetf.tile_283/Tile:output:0%tf.reshape_567/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_567/Reshapex
tf.concat_462/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_462/concat/axis�
tf.concat_462/concatConcatV2tf.reshape_567/Reshape:output:0*conv3d_52/StatefulPartitionedCall:output:0"tf.concat_462/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_462/concat�
!conv3d_55/StatefulPartitionedCallStatefulPartitionedCalltf.concat_462/concat:output:0conv3d_55_5552436conv3d_55_5552438*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_55_layer_call_and_return_conditional_losses_55524352#
!conv3d_55/StatefulPartitionedCall�
tf.reshape_568/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_568/Reshape/shape�
tf.reshape_568/ReshapeReshape*conv3d_55/StatefulPartitionedCall:output:0%tf.reshape_568/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_568/Reshape�
tf.tile_284/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_284/Tile/multiples�
tf.tile_284/TileTiletf.reshape_568/Reshape:output:0#tf.tile_284/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_284/Tile�
tf.reshape_569/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_569/Reshape/shape�
tf.reshape_569/ReshapeReshapetf.tile_284/Tile:output:0%tf.reshape_569/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_569/Reshapex
tf.concat_463/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_463/concat/axis�
tf.concat_463/concatConcatV2tf.reshape_569/Reshape:output:0*conv3d_51/StatefulPartitionedCall:output:0"tf.concat_463/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_463/concat�
!conv3d_56/StatefulPartitionedCallStatefulPartitionedCalltf.concat_463/concat:output:0conv3d_56_5552461conv3d_56_5552463*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_56_layer_call_and_return_conditional_losses_55524602#
!conv3d_56/StatefulPartitionedCall�
tf.reshape_570/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_570/Reshape/shape�
tf.reshape_570/ReshapeReshape*conv3d_56/StatefulPartitionedCall:output:0%tf.reshape_570/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_570/Reshape�
tf.tile_285/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_285/Tile/multiples�
tf.tile_285/TileTiletf.reshape_570/Reshape:output:0#tf.tile_285/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_285/Tile�
tf.reshape_571/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_571/Reshape/shape�
tf.reshape_571/ReshapeReshapetf.tile_285/Tile:output:0%tf.reshape_571/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_571/Reshapex
tf.concat_464/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_464/concat/axis�
tf.concat_464/concatConcatV2tf.reshape_571/Reshape:output:0*conv3d_50/StatefulPartitionedCall:output:0"tf.concat_464/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_464/concat�
!conv3d_57/StatefulPartitionedCallStatefulPartitionedCalltf.concat_464/concat:output:0conv3d_57_5552486conv3d_57_5552488*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_57_layer_call_and_return_conditional_losses_55524852#
!conv3d_57/StatefulPartitionedCall�
!conv3d_58/StatefulPartitionedCallStatefulPartitionedCall*conv3d_57/StatefulPartitionedCall:output:0conv3d_58_5552502conv3d_58_5552504*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_58_layer_call_and_return_conditional_losses_55525012#
!conv3d_58/StatefulPartitionedCall�
IdentityIdentity*conv3d_58/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall"^conv3d_54/StatefulPartitionedCall"^conv3d_55/StatefulPartitionedCall"^conv3d_56/StatefulPartitionedCall"^conv3d_57/StatefulPartitionedCall"^conv3d_58/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2F
!conv3d_54/StatefulPartitionedCall!conv3d_54/StatefulPartitionedCall2F
!conv3d_55/StatefulPartitionedCall!conv3d_55/StatefulPartitionedCall2F
!conv3d_56/StatefulPartitionedCall!conv3d_56/StatefulPartitionedCall2F
!conv3d_57/StatefulPartitionedCall!conv3d_57/StatefulPartitionedCall2F
!conv3d_58/StatefulPartitionedCall!conv3d_58/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
R
6__inference_average_pooling3d_21_layer_call_fn_5553689

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_55522872
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
�X
�
#__inference__traced_restore_5554112
file_prefix?
!assignvariableop_conv3d_50_kernel: /
!assignvariableop_1_conv3d_50_bias: A
#assignvariableop_2_conv3d_51_kernel: /
!assignvariableop_3_conv3d_51_bias:A
#assignvariableop_4_conv3d_52_kernel:/
!assignvariableop_5_conv3d_52_bias:A
#assignvariableop_6_conv3d_53_kernel:/
!assignvariableop_7_conv3d_53_bias:4
"assignvariableop_8_dense_10_kernel:@@.
 assignvariableop_9_dense_10_bias:@B
$assignvariableop_10_conv3d_54_kernel:0
"assignvariableop_11_conv3d_54_bias:B
$assignvariableop_12_conv3d_55_kernel:0
"assignvariableop_13_conv3d_55_bias:B
$assignvariableop_14_conv3d_56_kernel:0
"assignvariableop_15_conv3d_56_bias:B
$assignvariableop_16_conv3d_57_kernel:0 0
"assignvariableop_17_conv3d_57_bias: B
$assignvariableop_18_conv3d_58_kernel: 0
"assignvariableop_19_conv3d_58_bias:
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
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_50_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_50_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_51_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_51_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_52_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_52_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv3d_53_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv3d_53_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_10_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_10_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_54_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_54_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv3d_55_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv3d_55_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv3d_56_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv3d_56_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv3d_57_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv3d_57_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv3d_58_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv3d_58_biasIdentity_19:output:0"/device:CPU:0*
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
�
�
*__inference_model_10_layer_call_fn_5553270

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
identity��StatefulPartitionedCall�
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_55528392
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
��
�
E__inference_model_10_layer_call_and_return_conditional_losses_5553432

inputsF
(conv3d_50_conv3d_readvariableop_resource: 7
)conv3d_50_biasadd_readvariableop_resource: F
(conv3d_51_conv3d_readvariableop_resource: 7
)conv3d_51_biasadd_readvariableop_resource:F
(conv3d_52_conv3d_readvariableop_resource:7
)conv3d_52_biasadd_readvariableop_resource:F
(conv3d_53_conv3d_readvariableop_resource:7
)conv3d_53_biasadd_readvariableop_resource:9
'dense_10_matmul_readvariableop_resource:@@6
(dense_10_biasadd_readvariableop_resource:@F
(conv3d_54_conv3d_readvariableop_resource:7
)conv3d_54_biasadd_readvariableop_resource:F
(conv3d_55_conv3d_readvariableop_resource:7
)conv3d_55_biasadd_readvariableop_resource:F
(conv3d_56_conv3d_readvariableop_resource:7
)conv3d_56_biasadd_readvariableop_resource:F
(conv3d_57_conv3d_readvariableop_resource:0 7
)conv3d_57_biasadd_readvariableop_resource: F
(conv3d_58_conv3d_readvariableop_resource: 7
)conv3d_58_biasadd_readvariableop_resource:
identity�� conv3d_50/BiasAdd/ReadVariableOp�conv3d_50/Conv3D/ReadVariableOp� conv3d_51/BiasAdd/ReadVariableOp�conv3d_51/Conv3D/ReadVariableOp� conv3d_52/BiasAdd/ReadVariableOp�conv3d_52/Conv3D/ReadVariableOp� conv3d_53/BiasAdd/ReadVariableOp�conv3d_53/Conv3D/ReadVariableOp� conv3d_54/BiasAdd/ReadVariableOp�conv3d_54/Conv3D/ReadVariableOp� conv3d_55/BiasAdd/ReadVariableOp�conv3d_55/Conv3D/ReadVariableOp� conv3d_56/BiasAdd/ReadVariableOp�conv3d_56/Conv3D/ReadVariableOp� conv3d_57/BiasAdd/ReadVariableOp�conv3d_57/Conv3D/ReadVariableOp� conv3d_58/BiasAdd/ReadVariableOp�conv3d_58/Conv3D/ReadVariableOp�dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�
0tf.__operators__.getitem_356/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_356/strided_slice/stack�
2tf.__operators__.getitem_356/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_356/strided_slice/stack_1�
2tf.__operators__.getitem_356/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_356/strided_slice/stack_2�
*tf.__operators__.getitem_356/strided_sliceStridedSliceinputs9tf.__operators__.getitem_356/strided_slice/stack:output:0;tf.__operators__.getitem_356/strided_slice/stack_1:output:0;tf.__operators__.getitem_356/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_356/strided_slice{
range_conversion_10/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_10/sub/y�
range_conversion_10/subSub3tf.__operators__.getitem_356/strided_slice:output:0"range_conversion_10/sub/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/sub�
range_conversion_10/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_10/truediv/y�
range_conversion_10/truedivRealDivrange_conversion_10/sub:z:0&range_conversion_10/truediv/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/truediv{
range_conversion_10/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_10/mul/y�
range_conversion_10/mulMulrange_conversion_10/truediv:z:0"range_conversion_10/mul/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/mul{
range_conversion_10/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_10/add/y�
range_conversion_10/addAddV2range_conversion_10/mul:z:0"range_conversion_10/add/y:output:0*
T0*3
_output_shapes!
:���������@@2
range_conversion_10/add�
0tf.__operators__.getitem_357/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_357/strided_slice/stack�
2tf.__operators__.getitem_357/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_357/strided_slice/stack_1�
2tf.__operators__.getitem_357/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_357/strided_slice/stack_2�
*tf.__operators__.getitem_357/strided_sliceStridedSliceinputs9tf.__operators__.getitem_357/strided_slice/stack:output:0;tf.__operators__.getitem_357/strided_slice/stack_1:output:0;tf.__operators__.getitem_357/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_357/strided_slicex
tf.concat_460/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_460/concat/axis�
tf.concat_460/concatConcatV2range_conversion_10/add:z:03tf.__operators__.getitem_357/strided_slice:output:0"tf.concat_460/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_460/concat�
conv3d_50/Conv3D/ReadVariableOpReadVariableOp(conv3d_50_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02!
conv3d_50/Conv3D/ReadVariableOp�
conv3d_50/Conv3DConv3Dtf.concat_460/concat:output:0'conv3d_50/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_50/Conv3D�
 conv3d_50/BiasAdd/ReadVariableOpReadVariableOp)conv3d_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv3d_50/BiasAdd/ReadVariableOp�
conv3d_50/BiasAddBiasAddconv3d_50/Conv3D:output:0(conv3d_50/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_50/BiasAdd�
conv3d_50/SoftplusSoftplusconv3d_50/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_50/Softplus�
#average_pooling3d_20/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_20/transpose/perm�
average_pooling3d_20/transpose	Transpose conv3d_50/Softplus:activations:0,average_pooling3d_20/transpose/perm:output:0*
T0*3
_output_shapes!
:���������@@ 2 
average_pooling3d_20/transpose�
average_pooling3d_20/AvgPool3D	AvgPool3D"average_pooling3d_20/transpose:y:0*
T0*3
_output_shapes!
:���������   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_20/AvgPool3D�
%average_pooling3d_20/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_20/transpose_1/perm�
 average_pooling3d_20/transpose_1	Transpose'average_pooling3d_20/AvgPool3D:output:0.average_pooling3d_20/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������   2"
 average_pooling3d_20/transpose_1�
conv3d_51/Conv3D/ReadVariableOpReadVariableOp(conv3d_51_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02!
conv3d_51/Conv3D/ReadVariableOp�
conv3d_51/Conv3DConv3D$average_pooling3d_20/transpose_1:y:0'conv3d_51/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_51/Conv3D�
 conv3d_51/BiasAdd/ReadVariableOpReadVariableOp)conv3d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_51/BiasAdd/ReadVariableOp�
conv3d_51/BiasAddBiasAddconv3d_51/Conv3D:output:0(conv3d_51/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_51/BiasAdd�
conv3d_51/SoftplusSoftplusconv3d_51/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_51/Softplus�
#average_pooling3d_21/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_21/transpose/perm�
average_pooling3d_21/transpose	Transpose conv3d_51/Softplus:activations:0,average_pooling3d_21/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_21/transpose�
average_pooling3d_21/AvgPool3D	AvgPool3D"average_pooling3d_21/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_21/AvgPool3D�
%average_pooling3d_21/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_21/transpose_1/perm�
 average_pooling3d_21/transpose_1	Transpose'average_pooling3d_21/AvgPool3D:output:0.average_pooling3d_21/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_21/transpose_1�
conv3d_52/Conv3D/ReadVariableOpReadVariableOp(conv3d_52_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_52/Conv3D/ReadVariableOp�
conv3d_52/Conv3DConv3D$average_pooling3d_21/transpose_1:y:0'conv3d_52/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_52/Conv3D�
 conv3d_52/BiasAdd/ReadVariableOpReadVariableOp)conv3d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_52/BiasAdd/ReadVariableOp�
conv3d_52/BiasAddBiasAddconv3d_52/Conv3D:output:0(conv3d_52/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_52/BiasAdd�
conv3d_52/SoftplusSoftplusconv3d_52/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_52/Softplus�
#average_pooling3d_22/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_22/transpose/perm�
average_pooling3d_22/transpose	Transpose conv3d_52/Softplus:activations:0,average_pooling3d_22/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_22/transpose�
average_pooling3d_22/AvgPool3D	AvgPool3D"average_pooling3d_22/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_22/AvgPool3D�
%average_pooling3d_22/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_22/transpose_1/perm�
 average_pooling3d_22/transpose_1	Transpose'average_pooling3d_22/AvgPool3D:output:0.average_pooling3d_22/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_22/transpose_1�
conv3d_53/Conv3D/ReadVariableOpReadVariableOp(conv3d_53_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_53/Conv3D/ReadVariableOp�
conv3d_53/Conv3DConv3D$average_pooling3d_22/transpose_1:y:0'conv3d_53/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_53/Conv3D�
 conv3d_53/BiasAdd/ReadVariableOpReadVariableOp)conv3d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_53/BiasAdd/ReadVariableOp�
conv3d_53/BiasAddBiasAddconv3d_53/Conv3D:output:0(conv3d_53/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_53/BiasAdd�
conv3d_53/SoftplusSoftplusconv3d_53/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_53/Softplus�
#average_pooling3d_23/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_23/transpose/perm�
average_pooling3d_23/transpose	Transpose conv3d_53/Softplus:activations:0,average_pooling3d_23/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_23/transpose�
average_pooling3d_23/AvgPool3D	AvgPool3D"average_pooling3d_23/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_23/AvgPool3D�
%average_pooling3d_23/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_23/transpose_1/perm�
 average_pooling3d_23/transpose_1	Transpose'average_pooling3d_23/AvgPool3D:output:0.average_pooling3d_23/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_23/transpose_1x
reshape_20/ShapeShape$average_pooling3d_23/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_20/Shape�
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack�
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1�
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2�
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_20/Reshape/shape/1�
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape�
reshape_20/ReshapeReshape$average_pooling3d_23/transpose_1:y:0!reshape_20/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_20/Reshape�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_10/MatMul/ReadVariableOp�
dense_10/MatMulMatMulreshape_20/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_10/MatMul�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_10/BiasAdd/ReadVariableOp�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_10/BiasAdd
dense_10/SoftplusSoftplusdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_10/Softpluss
reshape_21/ShapeShapedense_10/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_21/Shape�
reshape_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_21/strided_slice/stack�
 reshape_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_1�
 reshape_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_2�
reshape_21/strided_sliceStridedSlicereshape_21/Shape:output:0'reshape_21/strided_slice/stack:output:0)reshape_21/strided_slice/stack_1:output:0)reshape_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_21/strided_slicez
reshape_21/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/1z
reshape_21/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/2z
reshape_21/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/3z
reshape_21/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/4�
reshape_21/Reshape/shapePack!reshape_21/strided_slice:output:0#reshape_21/Reshape/shape/1:output:0#reshape_21/Reshape/shape/2:output:0#reshape_21/Reshape/shape/3:output:0#reshape_21/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_21/Reshape/shape�
reshape_21/ReshapeReshapedense_10/Softplus:activations:0!reshape_21/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_21/Reshape�
tf.reshape_564/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_564/Reshape/shape�
tf.reshape_564/ReshapeReshapereshape_21/Reshape:output:0%tf.reshape_564/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_564/Reshape�
tf.tile_282/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_282/Tile/multiples�
tf.tile_282/TileTiletf.reshape_564/Reshape:output:0#tf.tile_282/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_282/Tile�
tf.reshape_565/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_565/Reshape/shape�
tf.reshape_565/ReshapeReshapetf.tile_282/Tile:output:0%tf.reshape_565/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_565/Reshapex
tf.concat_461/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_461/concat/axis�
tf.concat_461/concatConcatV2tf.reshape_565/Reshape:output:0 conv3d_53/Softplus:activations:0"tf.concat_461/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_461/concat�
conv3d_54/Conv3D/ReadVariableOpReadVariableOp(conv3d_54_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_54/Conv3D/ReadVariableOp�
conv3d_54/Conv3DConv3Dtf.concat_461/concat:output:0'conv3d_54/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_54/Conv3D�
 conv3d_54/BiasAdd/ReadVariableOpReadVariableOp)conv3d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_54/BiasAdd/ReadVariableOp�
conv3d_54/BiasAddBiasAddconv3d_54/Conv3D:output:0(conv3d_54/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_54/BiasAdd�
conv3d_54/SoftplusSoftplusconv3d_54/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_54/Softplus�
tf.reshape_566/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_566/Reshape/shape�
tf.reshape_566/ReshapeReshape conv3d_54/Softplus:activations:0%tf.reshape_566/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_566/Reshape�
tf.tile_283/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_283/Tile/multiples�
tf.tile_283/TileTiletf.reshape_566/Reshape:output:0#tf.tile_283/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_283/Tile�
tf.reshape_567/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_567/Reshape/shape�
tf.reshape_567/ReshapeReshapetf.tile_283/Tile:output:0%tf.reshape_567/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_567/Reshapex
tf.concat_462/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_462/concat/axis�
tf.concat_462/concatConcatV2tf.reshape_567/Reshape:output:0 conv3d_52/Softplus:activations:0"tf.concat_462/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_462/concat�
conv3d_55/Conv3D/ReadVariableOpReadVariableOp(conv3d_55_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_55/Conv3D/ReadVariableOp�
conv3d_55/Conv3DConv3Dtf.concat_462/concat:output:0'conv3d_55/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_55/Conv3D�
 conv3d_55/BiasAdd/ReadVariableOpReadVariableOp)conv3d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_55/BiasAdd/ReadVariableOp�
conv3d_55/BiasAddBiasAddconv3d_55/Conv3D:output:0(conv3d_55/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_55/BiasAdd�
conv3d_55/SoftplusSoftplusconv3d_55/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_55/Softplus�
tf.reshape_568/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_568/Reshape/shape�
tf.reshape_568/ReshapeReshape conv3d_55/Softplus:activations:0%tf.reshape_568/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_568/Reshape�
tf.tile_284/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_284/Tile/multiples�
tf.tile_284/TileTiletf.reshape_568/Reshape:output:0#tf.tile_284/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_284/Tile�
tf.reshape_569/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_569/Reshape/shape�
tf.reshape_569/ReshapeReshapetf.tile_284/Tile:output:0%tf.reshape_569/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_569/Reshapex
tf.concat_463/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_463/concat/axis�
tf.concat_463/concatConcatV2tf.reshape_569/Reshape:output:0 conv3d_51/Softplus:activations:0"tf.concat_463/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_463/concat�
conv3d_56/Conv3D/ReadVariableOpReadVariableOp(conv3d_56_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_56/Conv3D/ReadVariableOp�
conv3d_56/Conv3DConv3Dtf.concat_463/concat:output:0'conv3d_56/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_56/Conv3D�
 conv3d_56/BiasAdd/ReadVariableOpReadVariableOp)conv3d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_56/BiasAdd/ReadVariableOp�
conv3d_56/BiasAddBiasAddconv3d_56/Conv3D:output:0(conv3d_56/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_56/BiasAdd�
conv3d_56/SoftplusSoftplusconv3d_56/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_56/Softplus�
tf.reshape_570/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_570/Reshape/shape�
tf.reshape_570/ReshapeReshape conv3d_56/Softplus:activations:0%tf.reshape_570/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_570/Reshape�
tf.tile_285/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_285/Tile/multiples�
tf.tile_285/TileTiletf.reshape_570/Reshape:output:0#tf.tile_285/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_285/Tile�
tf.reshape_571/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_571/Reshape/shape�
tf.reshape_571/ReshapeReshapetf.tile_285/Tile:output:0%tf.reshape_571/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_571/Reshapex
tf.concat_464/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_464/concat/axis�
tf.concat_464/concatConcatV2tf.reshape_571/Reshape:output:0 conv3d_50/Softplus:activations:0"tf.concat_464/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_464/concat�
conv3d_57/Conv3D/ReadVariableOpReadVariableOp(conv3d_57_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02!
conv3d_57/Conv3D/ReadVariableOp�
conv3d_57/Conv3DConv3Dtf.concat_464/concat:output:0'conv3d_57/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_57/Conv3D�
 conv3d_57/BiasAdd/ReadVariableOpReadVariableOp)conv3d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv3d_57/BiasAdd/ReadVariableOp�
conv3d_57/BiasAddBiasAddconv3d_57/Conv3D:output:0(conv3d_57/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:��������� @@*
data_formatNCHW2
conv3d_57/BiasAdd�
conv3d_57/SoftplusSoftplusconv3d_57/BiasAdd:output:0*
T0*3
_output_shapes!
:��������� @@2
conv3d_57/Softplus�
conv3d_58/Conv3D/ReadVariableOpReadVariableOp(conv3d_58_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02!
conv3d_58/Conv3D/ReadVariableOp�
conv3d_58/Conv3DConv3D conv3d_57/Softplus:activations:0'conv3d_58/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_58/Conv3D�
 conv3d_58/BiasAdd/ReadVariableOpReadVariableOp)conv3d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_58/BiasAdd/ReadVariableOp�
conv3d_58/BiasAddBiasAddconv3d_58/Conv3D:output:0(conv3d_58/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@@*
data_formatNCHW2
conv3d_58/BiasAdd�
IdentityIdentityconv3d_58/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp!^conv3d_50/BiasAdd/ReadVariableOp ^conv3d_50/Conv3D/ReadVariableOp!^conv3d_51/BiasAdd/ReadVariableOp ^conv3d_51/Conv3D/ReadVariableOp!^conv3d_52/BiasAdd/ReadVariableOp ^conv3d_52/Conv3D/ReadVariableOp!^conv3d_53/BiasAdd/ReadVariableOp ^conv3d_53/Conv3D/ReadVariableOp!^conv3d_54/BiasAdd/ReadVariableOp ^conv3d_54/Conv3D/ReadVariableOp!^conv3d_55/BiasAdd/ReadVariableOp ^conv3d_55/Conv3D/ReadVariableOp!^conv3d_56/BiasAdd/ReadVariableOp ^conv3d_56/Conv3D/ReadVariableOp!^conv3d_57/BiasAdd/ReadVariableOp ^conv3d_57/Conv3D/ReadVariableOp!^conv3d_58/BiasAdd/ReadVariableOp ^conv3d_58/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2D
 conv3d_50/BiasAdd/ReadVariableOp conv3d_50/BiasAdd/ReadVariableOp2B
conv3d_50/Conv3D/ReadVariableOpconv3d_50/Conv3D/ReadVariableOp2D
 conv3d_51/BiasAdd/ReadVariableOp conv3d_51/BiasAdd/ReadVariableOp2B
conv3d_51/Conv3D/ReadVariableOpconv3d_51/Conv3D/ReadVariableOp2D
 conv3d_52/BiasAdd/ReadVariableOp conv3d_52/BiasAdd/ReadVariableOp2B
conv3d_52/Conv3D/ReadVariableOpconv3d_52/Conv3D/ReadVariableOp2D
 conv3d_53/BiasAdd/ReadVariableOp conv3d_53/BiasAdd/ReadVariableOp2B
conv3d_53/Conv3D/ReadVariableOpconv3d_53/Conv3D/ReadVariableOp2D
 conv3d_54/BiasAdd/ReadVariableOp conv3d_54/BiasAdd/ReadVariableOp2B
conv3d_54/Conv3D/ReadVariableOpconv3d_54/Conv3D/ReadVariableOp2D
 conv3d_55/BiasAdd/ReadVariableOp conv3d_55/BiasAdd/ReadVariableOp2B
conv3d_55/Conv3D/ReadVariableOpconv3d_55/Conv3D/ReadVariableOp2D
 conv3d_56/BiasAdd/ReadVariableOp conv3d_56/BiasAdd/ReadVariableOp2B
conv3d_56/Conv3D/ReadVariableOpconv3d_56/Conv3D/ReadVariableOp2D
 conv3d_57/BiasAdd/ReadVariableOp conv3d_57/BiasAdd/ReadVariableOp2B
conv3d_57/Conv3D/ReadVariableOpconv3d_57/Conv3D/ReadVariableOp2D
 conv3d_58/BiasAdd/ReadVariableOp conv3d_58/BiasAdd/ReadVariableOp2B
conv3d_58/Conv3D/ReadVariableOpconv3d_58/Conv3D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�3
�
 __inference__traced_save_5554042
file_prefix/
+savev2_conv3d_50_kernel_read_readvariableop-
)savev2_conv3d_50_bias_read_readvariableop/
+savev2_conv3d_51_kernel_read_readvariableop-
)savev2_conv3d_51_bias_read_readvariableop/
+savev2_conv3d_52_kernel_read_readvariableop-
)savev2_conv3d_52_bias_read_readvariableop/
+savev2_conv3d_53_kernel_read_readvariableop-
)savev2_conv3d_53_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop/
+savev2_conv3d_54_kernel_read_readvariableop-
)savev2_conv3d_54_bias_read_readvariableop/
+savev2_conv3d_55_kernel_read_readvariableop-
)savev2_conv3d_55_bias_read_readvariableop/
+savev2_conv3d_56_kernel_read_readvariableop-
)savev2_conv3d_56_bias_read_readvariableop/
+savev2_conv3d_57_kernel_read_readvariableop-
)savev2_conv3d_57_bias_read_readvariableop/
+savev2_conv3d_58_kernel_read_readvariableop-
)savev2_conv3d_58_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_50_kernel_read_readvariableop)savev2_conv3d_50_bias_read_readvariableop+savev2_conv3d_51_kernel_read_readvariableop)savev2_conv3d_51_bias_read_readvariableop+savev2_conv3d_52_kernel_read_readvariableop)savev2_conv3d_52_bias_read_readvariableop+savev2_conv3d_53_kernel_read_readvariableop)savev2_conv3d_53_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop+savev2_conv3d_54_kernel_read_readvariableop)savev2_conv3d_54_bias_read_readvariableop+savev2_conv3d_55_kernel_read_readvariableop)savev2_conv3d_55_bias_read_readvariableop+savev2_conv3d_56_kernel_read_readvariableop)savev2_conv3d_56_bias_read_readvariableop+savev2_conv3d_57_kernel_read_readvariableop)savev2_conv3d_57_bias_read_readvariableop+savev2_conv3d_58_kernel_read_readvariableop)savev2_conv3d_58_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�	
m
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5552287

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
�
F__inference_conv3d_56_layer_call_and_return_conditional_losses_5552460

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
R
6__inference_average_pooling3d_22_layer_call_fn_5553737

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_55523142
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
�
F__inference_conv3d_58_layer_call_and_return_conditional_losses_5552501

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
�

m
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5553794

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
p
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_5553611

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
�
�
F__inference_conv3d_52_layer_call_and_return_conditional_losses_5552300

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

m
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5552187

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
c
G__inference_reshape_20_layer_call_and_return_conditional_losses_5553820

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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_5553631

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
��
�	
E__inference_model_10_layer_call_and_return_conditional_losses_5552839

inputs/
conv3d_50_5552750: 
conv3d_50_5552752: /
conv3d_51_5552756: 
conv3d_51_5552758:/
conv3d_52_5552762:
conv3d_52_5552764:/
conv3d_53_5552768:
conv3d_53_5552770:"
dense_10_5552775:@@
dense_10_5552777:@/
conv3d_54_5552789:
conv3d_54_5552791:/
conv3d_55_5552802:
conv3d_55_5552804:/
conv3d_56_5552815:
conv3d_56_5552817:/
conv3d_57_5552828:0 
conv3d_57_5552830: /
conv3d_58_5552833: 
conv3d_58_5552835:
identity��!conv3d_50/StatefulPartitionedCall�!conv3d_51/StatefulPartitionedCall�!conv3d_52/StatefulPartitionedCall�!conv3d_53/StatefulPartitionedCall�!conv3d_54/StatefulPartitionedCall�!conv3d_55/StatefulPartitionedCall�!conv3d_56/StatefulPartitionedCall�!conv3d_57/StatefulPartitionedCall�!conv3d_58/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
0tf.__operators__.getitem_356/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_356/strided_slice/stack�
2tf.__operators__.getitem_356/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_356/strided_slice/stack_1�
2tf.__operators__.getitem_356/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_356/strided_slice/stack_2�
*tf.__operators__.getitem_356/strided_sliceStridedSliceinputs9tf.__operators__.getitem_356/strided_slice/stack:output:0;tf.__operators__.getitem_356/strided_slice/stack_1:output:0;tf.__operators__.getitem_356/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_356/strided_slice�
#range_conversion_10/PartitionedCallPartitionedCall3tf.__operators__.getitem_356/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_55522272%
#range_conversion_10/PartitionedCall�
0tf.__operators__.getitem_357/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_357/strided_slice/stack�
2tf.__operators__.getitem_357/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_357/strided_slice/stack_1�
2tf.__operators__.getitem_357/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_357/strided_slice/stack_2�
*tf.__operators__.getitem_357/strided_sliceStridedSliceinputs9tf.__operators__.getitem_357/strided_slice/stack:output:0;tf.__operators__.getitem_357/strided_slice/stack_1:output:0;tf.__operators__.getitem_357/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_357/strided_slicex
tf.concat_460/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_460/concat/axis�
tf.concat_460/concatConcatV2,range_conversion_10/PartitionedCall:output:03tf.__operators__.getitem_357/strided_slice:output:0"tf.concat_460/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������@@2
tf.concat_460/concat�
!conv3d_50/StatefulPartitionedCallStatefulPartitionedCalltf.concat_460/concat:output:0conv3d_50_5552750conv3d_50_5552752*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_50_layer_call_and_return_conditional_losses_55522462#
!conv3d_50/StatefulPartitionedCall�
$average_pooling3d_20/PartitionedCallPartitionedCall*conv3d_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_55522602&
$average_pooling3d_20/PartitionedCall�
!conv3d_51/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_20/PartitionedCall:output:0conv3d_51_5552756conv3d_51_5552758*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_51_layer_call_and_return_conditional_losses_55522732#
!conv3d_51/StatefulPartitionedCall�
$average_pooling3d_21/PartitionedCallPartitionedCall*conv3d_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_55522872&
$average_pooling3d_21/PartitionedCall�
!conv3d_52/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_21/PartitionedCall:output:0conv3d_52_5552762conv3d_52_5552764*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_52_layer_call_and_return_conditional_losses_55523002#
!conv3d_52/StatefulPartitionedCall�
$average_pooling3d_22/PartitionedCallPartitionedCall*conv3d_52/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_55523142&
$average_pooling3d_22/PartitionedCall�
!conv3d_53/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_22/PartitionedCall:output:0conv3d_53_5552768conv3d_53_5552770*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_53_layer_call_and_return_conditional_losses_55523272#
!conv3d_53/StatefulPartitionedCall�
$average_pooling3d_23/PartitionedCallPartitionedCall*conv3d_53/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_55523412&
$average_pooling3d_23/PartitionedCall�
reshape_20/PartitionedCallPartitionedCall-average_pooling3d_23/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_20_layer_call_and_return_conditional_losses_55523552
reshape_20/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_10_5552775dense_10_5552777*
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
GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_55523682"
 dense_10/StatefulPartitionedCall�
reshape_21/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_reshape_21_layer_call_and_return_conditional_losses_55523892
reshape_21/PartitionedCall�
tf.reshape_564/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_564/Reshape/shape�
tf.reshape_564/ReshapeReshape#reshape_21/PartitionedCall:output:0%tf.reshape_564/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_564/Reshape�
tf.tile_282/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_282/Tile/multiples�
tf.tile_282/TileTiletf.reshape_564/Reshape:output:0#tf.tile_282/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_282/Tile�
tf.reshape_565/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_565/Reshape/shape�
tf.reshape_565/ReshapeReshapetf.tile_282/Tile:output:0%tf.reshape_565/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_565/Reshapex
tf.concat_461/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_461/concat/axis�
tf.concat_461/concatConcatV2tf.reshape_565/Reshape:output:0*conv3d_53/StatefulPartitionedCall:output:0"tf.concat_461/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_461/concat�
!conv3d_54/StatefulPartitionedCallStatefulPartitionedCalltf.concat_461/concat:output:0conv3d_54_5552789conv3d_54_5552791*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_54_layer_call_and_return_conditional_losses_55524102#
!conv3d_54/StatefulPartitionedCall�
tf.reshape_566/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_566/Reshape/shape�
tf.reshape_566/ReshapeReshape*conv3d_54/StatefulPartitionedCall:output:0%tf.reshape_566/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_566/Reshape�
tf.tile_283/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_283/Tile/multiples�
tf.tile_283/TileTiletf.reshape_566/Reshape:output:0#tf.tile_283/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_283/Tile�
tf.reshape_567/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_567/Reshape/shape�
tf.reshape_567/ReshapeReshapetf.tile_283/Tile:output:0%tf.reshape_567/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_567/Reshapex
tf.concat_462/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_462/concat/axis�
tf.concat_462/concatConcatV2tf.reshape_567/Reshape:output:0*conv3d_52/StatefulPartitionedCall:output:0"tf.concat_462/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_462/concat�
!conv3d_55/StatefulPartitionedCallStatefulPartitionedCalltf.concat_462/concat:output:0conv3d_55_5552802conv3d_55_5552804*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_55_layer_call_and_return_conditional_losses_55524352#
!conv3d_55/StatefulPartitionedCall�
tf.reshape_568/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_568/Reshape/shape�
tf.reshape_568/ReshapeReshape*conv3d_55/StatefulPartitionedCall:output:0%tf.reshape_568/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_568/Reshape�
tf.tile_284/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_284/Tile/multiples�
tf.tile_284/TileTiletf.reshape_568/Reshape:output:0#tf.tile_284/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_284/Tile�
tf.reshape_569/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_569/Reshape/shape�
tf.reshape_569/ReshapeReshapetf.tile_284/Tile:output:0%tf.reshape_569/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_569/Reshapex
tf.concat_463/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_463/concat/axis�
tf.concat_463/concatConcatV2tf.reshape_569/Reshape:output:0*conv3d_51/StatefulPartitionedCall:output:0"tf.concat_463/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_463/concat�
!conv3d_56/StatefulPartitionedCallStatefulPartitionedCalltf.concat_463/concat:output:0conv3d_56_5552815conv3d_56_5552817*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_56_layer_call_and_return_conditional_losses_55524602#
!conv3d_56/StatefulPartitionedCall�
tf.reshape_570/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                       2
tf.reshape_570/Reshape/shape�
tf.reshape_570/ReshapeReshape*conv3d_56/StatefulPartitionedCall:output:0%tf.reshape_570/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.reshape_570/Reshape�
tf.tile_285/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_285/Tile/multiples�
tf.tile_285/TileTiletf.reshape_570/Reshape:output:0#tf.tile_285/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������  2
tf.tile_285/Tile�
tf.reshape_571/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����      @   @   2
tf.reshape_571/Reshape/shape�
tf.reshape_571/ReshapeReshapetf.tile_285/Tile:output:0%tf.reshape_571/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������@@2
tf.reshape_571/Reshapex
tf.concat_464/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_464/concat/axis�
tf.concat_464/concatConcatV2tf.reshape_571/Reshape:output:0*conv3d_50/StatefulPartitionedCall:output:0"tf.concat_464/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������0@@2
tf.concat_464/concat�
!conv3d_57/StatefulPartitionedCallStatefulPartitionedCalltf.concat_464/concat:output:0conv3d_57_5552828conv3d_57_5552830*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_57_layer_call_and_return_conditional_losses_55524852#
!conv3d_57/StatefulPartitionedCall�
!conv3d_58/StatefulPartitionedCallStatefulPartitionedCall*conv3d_57/StatefulPartitionedCall:output:0conv3d_58_5552833conv3d_58_5552835*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_58_layer_call_and_return_conditional_losses_55525012#
!conv3d_58/StatefulPartitionedCall�
IdentityIdentity*conv3d_58/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������@@2

Identity�
NoOpNoOp"^conv3d_50/StatefulPartitionedCall"^conv3d_51/StatefulPartitionedCall"^conv3d_52/StatefulPartitionedCall"^conv3d_53/StatefulPartitionedCall"^conv3d_54/StatefulPartitionedCall"^conv3d_55/StatefulPartitionedCall"^conv3d_56/StatefulPartitionedCall"^conv3d_57/StatefulPartitionedCall"^conv3d_58/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_50/StatefulPartitionedCall!conv3d_50/StatefulPartitionedCall2F
!conv3d_51/StatefulPartitionedCall!conv3d_51/StatefulPartitionedCall2F
!conv3d_52/StatefulPartitionedCall!conv3d_52/StatefulPartitionedCall2F
!conv3d_53/StatefulPartitionedCall!conv3d_53/StatefulPartitionedCall2F
!conv3d_54/StatefulPartitionedCall!conv3d_54/StatefulPartitionedCall2F
!conv3d_55/StatefulPartitionedCall!conv3d_55/StatefulPartitionedCall2F
!conv3d_56/StatefulPartitionedCall!conv3d_56/StatefulPartitionedCall2F
!conv3d_57/StatefulPartitionedCall!conv3d_57/StatefulPartitionedCall2F
!conv3d_58/StatefulPartitionedCall!conv3d_58/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������@@
 
_user_specified_nameinputs
�
�
+__inference_conv3d_58_layer_call_fn_5553949

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_58_layer_call_and_return_conditional_losses_55525012
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
F__inference_conv3d_55_layer_call_and_return_conditional_losses_5553900

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
�
�
+__inference_conv3d_55_layer_call_fn_5553889

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_55_layer_call_and_return_conditional_losses_55524352
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
�
�
E__inference_dense_10_layer_call_and_return_conditional_losses_5553840

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
R
6__inference_average_pooling3d_23_layer_call_fn_5553785

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_55523412
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
serving_default_input:0���������@@I
	conv3d_58<
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
0:.  2conv3d_50/kernel
:  2conv3d_50/bias
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
0:.  2conv3d_51/kernel
: 2conv3d_51/bias
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
0:. 2conv3d_52/kernel
: 2conv3d_52/bias
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
0:. 2conv3d_53/kernel
: 2conv3d_53/bias
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
#:!@@ 2dense_10/kernel
:@ 2dense_10/bias
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
0:. 2conv3d_54/kernel
: 2conv3d_54/bias
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
0:. 2conv3d_55/kernel
: 2conv3d_55/bias
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
0:. 2conv3d_56/kernel
: 2conv3d_56/bias
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
0:.0  2conv3d_57/kernel
:  2conv3d_57/bias
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
0:.  2conv3d_58/kernel
: 2conv3d_58/bias
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
*__inference_model_10_layer_call_fn_5552551
*__inference_model_10_layer_call_fn_5553225
*__inference_model_10_layer_call_fn_5553270
*__inference_model_10_layer_call_fn_5552927�
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
"__inference__wrapped_model_5552084input"�
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
E__inference_model_10_layer_call_and_return_conditional_losses_5553432
E__inference_model_10_layer_call_and_return_conditional_losses_5553594
E__inference_model_10_layer_call_and_return_conditional_losses_5553030
E__inference_model_10_layer_call_and_return_conditional_losses_5553133�
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
5__inference_range_conversion_10_layer_call_fn_5553599�
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
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_5553611�
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
+__inference_conv3d_50_layer_call_fn_5553620�
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
F__inference_conv3d_50_layer_call_and_return_conditional_losses_5553631�
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
6__inference_average_pooling3d_20_layer_call_fn_5553636
6__inference_average_pooling3d_20_layer_call_fn_5553641�
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
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5553650
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5553659�
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
+__inference_conv3d_51_layer_call_fn_5553668�
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
F__inference_conv3d_51_layer_call_and_return_conditional_losses_5553679�
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
6__inference_average_pooling3d_21_layer_call_fn_5553684
6__inference_average_pooling3d_21_layer_call_fn_5553689�
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
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5553698
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5553707�
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
+__inference_conv3d_52_layer_call_fn_5553716�
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
F__inference_conv3d_52_layer_call_and_return_conditional_losses_5553727�
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
6__inference_average_pooling3d_22_layer_call_fn_5553732
6__inference_average_pooling3d_22_layer_call_fn_5553737�
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
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5553746
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5553755�
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
+__inference_conv3d_53_layer_call_fn_5553764�
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
F__inference_conv3d_53_layer_call_and_return_conditional_losses_5553775�
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
6__inference_average_pooling3d_23_layer_call_fn_5553780
6__inference_average_pooling3d_23_layer_call_fn_5553785�
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
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5553794
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5553803�
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
,__inference_reshape_20_layer_call_fn_5553808�
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
G__inference_reshape_20_layer_call_and_return_conditional_losses_5553820�
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
*__inference_dense_10_layer_call_fn_5553829�
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
E__inference_dense_10_layer_call_and_return_conditional_losses_5553840�
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
,__inference_reshape_21_layer_call_fn_5553845�
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
G__inference_reshape_21_layer_call_and_return_conditional_losses_5553860�
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
+__inference_conv3d_54_layer_call_fn_5553869�
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
F__inference_conv3d_54_layer_call_and_return_conditional_losses_5553880�
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
+__inference_conv3d_55_layer_call_fn_5553889�
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
F__inference_conv3d_55_layer_call_and_return_conditional_losses_5553900�
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
+__inference_conv3d_56_layer_call_fn_5553909�
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
F__inference_conv3d_56_layer_call_and_return_conditional_losses_5553920�
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
+__inference_conv3d_57_layer_call_fn_5553929�
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
F__inference_conv3d_57_layer_call_and_return_conditional_losses_5553940�
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
+__inference_conv3d_58_layer_call_fn_5553949�
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
F__inference_conv3d_58_layer_call_and_return_conditional_losses_5553959�
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
%__inference_signature_wrapper_5553180input"�
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
"__inference__wrapped_model_5552084�23<=FGPQ^_lmvw������:�7
0�-
+�(
input���������@@
� "A�>
<
	conv3d_58/�,
	conv3d_58���������@@�
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5553650�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_20_layer_call_and_return_conditional_losses_5553659p;�8
1�.
,�)
inputs��������� @@
� "1�.
'�$
0���������   
� �
6__inference_average_pooling3d_20_layer_call_fn_5553636�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_20_layer_call_fn_5553641c;�8
1�.
,�)
inputs��������� @@
� "$�!���������   �
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5553698�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_21_layer_call_and_return_conditional_losses_5553707p;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_21_layer_call_fn_5553684�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_21_layer_call_fn_5553689c;�8
1�.
,�)
inputs���������  
� "$�!����������
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5553746�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_22_layer_call_and_return_conditional_losses_5553755p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_22_layer_call_fn_5553732�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_22_layer_call_fn_5553737c;�8
1�.
,�)
inputs���������
� "$�!����������
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5553794�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_23_layer_call_and_return_conditional_losses_5553803p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_23_layer_call_fn_5553780�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_23_layer_call_fn_5553785c;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_50_layer_call_and_return_conditional_losses_5553631t23;�8
1�.
,�)
inputs���������@@
� "1�.
'�$
0��������� @@
� �
+__inference_conv3d_50_layer_call_fn_5553620g23;�8
1�.
,�)
inputs���������@@
� "$�!��������� @@�
F__inference_conv3d_51_layer_call_and_return_conditional_losses_5553679t<=;�8
1�.
,�)
inputs���������   
� "1�.
'�$
0���������  
� �
+__inference_conv3d_51_layer_call_fn_5553668g<=;�8
1�.
,�)
inputs���������   
� "$�!���������  �
F__inference_conv3d_52_layer_call_and_return_conditional_losses_5553727tFG;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_52_layer_call_fn_5553716gFG;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_53_layer_call_and_return_conditional_losses_5553775tPQ;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_53_layer_call_fn_5553764gPQ;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_54_layer_call_and_return_conditional_losses_5553880tlm;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_54_layer_call_fn_5553869glm;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_55_layer_call_and_return_conditional_losses_5553900tvw;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_55_layer_call_fn_5553889gvw;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_56_layer_call_and_return_conditional_losses_5553920v��;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_56_layer_call_fn_5553909i��;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_conv3d_57_layer_call_and_return_conditional_losses_5553940v��;�8
1�.
,�)
inputs���������0@@
� "1�.
'�$
0��������� @@
� �
+__inference_conv3d_57_layer_call_fn_5553929i��;�8
1�.
,�)
inputs���������0@@
� "$�!��������� @@�
F__inference_conv3d_58_layer_call_and_return_conditional_losses_5553959v��;�8
1�.
,�)
inputs��������� @@
� "1�.
'�$
0���������@@
� �
+__inference_conv3d_58_layer_call_fn_5553949i��;�8
1�.
,�)
inputs��������� @@
� "$�!���������@@�
E__inference_dense_10_layer_call_and_return_conditional_losses_5553840\^_/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
*__inference_dense_10_layer_call_fn_5553829O^_/�,
%�"
 �
inputs���������@
� "����������@�
E__inference_model_10_layer_call_and_return_conditional_losses_5553030�23<=FGPQ^_lmvw������B�?
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
E__inference_model_10_layer_call_and_return_conditional_losses_5553133�23<=FGPQ^_lmvw������B�?
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
E__inference_model_10_layer_call_and_return_conditional_losses_5553432�23<=FGPQ^_lmvw������C�@
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
E__inference_model_10_layer_call_and_return_conditional_losses_5553594�23<=FGPQ^_lmvw������C�@
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
*__inference_model_10_layer_call_fn_5552551�23<=FGPQ^_lmvw������B�?
8�5
+�(
input���������@@
p 

 
� "$�!���������@@�
*__inference_model_10_layer_call_fn_5552927�23<=FGPQ^_lmvw������B�?
8�5
+�(
input���������@@
p

 
� "$�!���������@@�
*__inference_model_10_layer_call_fn_5553225�23<=FGPQ^_lmvw������C�@
9�6
,�)
inputs���������@@
p 

 
� "$�!���������@@�
*__inference_model_10_layer_call_fn_5553270�23<=FGPQ^_lmvw������C�@
9�6
,�)
inputs���������@@
p

 
� "$�!���������@@�
P__inference_range_conversion_10_layer_call_and_return_conditional_losses_5553611t?�<
5�2
0�-

parameters���������@@
� "1�.
'�$
0���������@@
� �
5__inference_range_conversion_10_layer_call_fn_5553599g?�<
5�2
0�-

parameters���������@@
� "$�!���������@@�
G__inference_reshape_20_layer_call_and_return_conditional_losses_5553820d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_20_layer_call_fn_5553808W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_21_layer_call_and_return_conditional_losses_5553860d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_21_layer_call_fn_5553845W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_5553180�23<=FGPQ^_lmvw������C�@
� 
9�6
4
input+�(
input���������@@"A�>
<
	conv3d_58/�,
	conv3d_58���������@@