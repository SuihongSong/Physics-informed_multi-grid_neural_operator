�
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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv3d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_64/kernel
�
$conv3d_64/kernel/Read/ReadVariableOpReadVariableOpconv3d_64/kernel**
_output_shapes
:*
dtype0
t
conv3d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_64/bias
m
"conv3d_64/bias/Read/ReadVariableOpReadVariableOpconv3d_64/bias*
_output_shapes
:*
dtype0
�
conv3d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_65/kernel
�
$conv3d_65/kernel/Read/ReadVariableOpReadVariableOpconv3d_65/kernel**
_output_shapes
:*
dtype0
t
conv3d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_65/bias
m
"conv3d_65/bias/Read/ReadVariableOpReadVariableOpconv3d_65/bias*
_output_shapes
:*
dtype0
�
conv3d_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_66/kernel
�
$conv3d_66/kernel/Read/ReadVariableOpReadVariableOpconv3d_66/kernel**
_output_shapes
:*
dtype0
t
conv3d_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_66/bias
m
"conv3d_66/bias/Read/ReadVariableOpReadVariableOpconv3d_66/bias*
_output_shapes
:*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:@@*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:@*
dtype0
�
conv3d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_67/kernel
�
$conv3d_67/kernel/Read/ReadVariableOpReadVariableOpconv3d_67/kernel**
_output_shapes
:*
dtype0
t
conv3d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_67/bias
m
"conv3d_67/bias/Read/ReadVariableOpReadVariableOpconv3d_67/bias*
_output_shapes
:*
dtype0
�
conv3d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_68/kernel
�
$conv3d_68/kernel/Read/ReadVariableOpReadVariableOpconv3d_68/kernel**
_output_shapes
:*
dtype0
t
conv3d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_68/bias
m
"conv3d_68/bias/Read/ReadVariableOpReadVariableOpconv3d_68/bias*
_output_shapes
:*
dtype0
�
conv3d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_69/kernel
�
$conv3d_69/kernel/Read/ReadVariableOpReadVariableOpconv3d_69/kernel**
_output_shapes
:*
dtype0
t
conv3d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_69/bias
m
"conv3d_69/bias/Read/ReadVariableOpReadVariableOpconv3d_69/bias*
_output_shapes
:*
dtype0
�
conv3d_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_70/kernel
�
$conv3d_70/kernel/Read/ReadVariableOpReadVariableOpconv3d_70/kernel**
_output_shapes
:*
dtype0
t
conv3d_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_70/bias
m
"conv3d_70/bias/Read/ReadVariableOpReadVariableOpconv3d_70/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�:
value�:B�: B�:
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
%regularization_losses
&	variables
'trainable_variables
(	keras_api

)	keras_api

*	keras_api
h

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
R
1regularization_losses
2	variables
3trainable_variables
4	keras_api
h

5kernel
6bias
7regularization_losses
8	variables
9trainable_variables
:	keras_api
R
;regularization_losses
<	variables
=trainable_variables
>	keras_api
h

?kernel
@bias
Aregularization_losses
B	variables
Ctrainable_variables
D	keras_api
R
Eregularization_losses
F	variables
Gtrainable_variables
H	keras_api
R
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
h

Mkernel
Nbias
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
R
Sregularization_losses
T	variables
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
]regularization_losses
^	variables
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
gregularization_losses
h	variables
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
qregularization_losses
r	variables
strainable_variables
t	keras_api
h

ukernel
vbias
wregularization_losses
x	variables
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
�
{layer_regularization_losses

|layers
regularization_losses
}layer_metrics
 	variables
~non_trainable_variables
!trainable_variables
metrics
 
 
 
 
 
�
 �layer_regularization_losses
�layers
%regularization_losses
�layer_metrics
&	variables
�non_trainable_variables
'trainable_variables
�metrics
 
 
\Z
VARIABLE_VALUEconv3d_64/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_64/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
�
 �layer_regularization_losses
�layers
-regularization_losses
�layer_metrics
.	variables
�non_trainable_variables
/trainable_variables
�metrics
 
 
 
�
 �layer_regularization_losses
�layers
1regularization_losses
�layer_metrics
2	variables
�non_trainable_variables
3trainable_variables
�metrics
\Z
VARIABLE_VALUEconv3d_65/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_65/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
�
 �layer_regularization_losses
�layers
7regularization_losses
�layer_metrics
8	variables
�non_trainable_variables
9trainable_variables
�metrics
 
 
 
�
 �layer_regularization_losses
�layers
;regularization_losses
�layer_metrics
<	variables
�non_trainable_variables
=trainable_variables
�metrics
\Z
VARIABLE_VALUEconv3d_66/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_66/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
�
 �layer_regularization_losses
�layers
Aregularization_losses
�layer_metrics
B	variables
�non_trainable_variables
Ctrainable_variables
�metrics
 
 
 
�
 �layer_regularization_losses
�layers
Eregularization_losses
�layer_metrics
F	variables
�non_trainable_variables
Gtrainable_variables
�metrics
 
 
 
�
 �layer_regularization_losses
�layers
Iregularization_losses
�layer_metrics
J	variables
�non_trainable_variables
Ktrainable_variables
�metrics
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

M0
N1

M0
N1
�
 �layer_regularization_losses
�layers
Oregularization_losses
�layer_metrics
P	variables
�non_trainable_variables
Qtrainable_variables
�metrics
 
 
 
�
 �layer_regularization_losses
�layers
Sregularization_losses
�layer_metrics
T	variables
�non_trainable_variables
Utrainable_variables
�metrics
 
 
 
 
\Z
VARIABLE_VALUEconv3d_67/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_67/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

[0
\1
�
 �layer_regularization_losses
�layers
]regularization_losses
�layer_metrics
^	variables
�non_trainable_variables
_trainable_variables
�metrics
 
 
 
 
\Z
VARIABLE_VALUEconv3d_68/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_68/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

e0
f1
�
 �layer_regularization_losses
�layers
gregularization_losses
�layer_metrics
h	variables
�non_trainable_variables
itrainable_variables
�metrics
 
 
 
 
\Z
VARIABLE_VALUEconv3d_69/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_69/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

o0
p1

o0
p1
�
 �layer_regularization_losses
�layers
qregularization_losses
�layer_metrics
r	variables
�non_trainable_variables
strainable_variables
�metrics
\Z
VARIABLE_VALUEconv3d_70/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_70/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

u0
v1

u0
v1
�
 �layer_regularization_losses
�layers
wregularization_losses
�layer_metrics
x	variables
�non_trainable_variables
ytrainable_variables
�metrics
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
 
 
�
serving_default_inputPlaceholder*3
_output_shapes!
:���������  *
dtype0*(
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_64/kernelconv3d_64/biasconv3d_65/kernelconv3d_65/biasconv3d_66/kernelconv3d_66/biasdense_16/kerneldense_16/biasconv3d_67/kernelconv3d_67/biasconv3d_68/kernelconv3d_68/biasconv3d_69/kernelconv3d_69/biasconv3d_70/kernelconv3d_70/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *.
f)R'
%__inference_signature_wrapper_4441954
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_64/kernel/Read/ReadVariableOp"conv3d_64/bias/Read/ReadVariableOp$conv3d_65/kernel/Read/ReadVariableOp"conv3d_65/bias/Read/ReadVariableOp$conv3d_66/kernel/Read/ReadVariableOp"conv3d_66/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp$conv3d_67/kernel/Read/ReadVariableOp"conv3d_67/bias/Read/ReadVariableOp$conv3d_68/kernel/Read/ReadVariableOp"conv3d_68/bias/Read/ReadVariableOp$conv3d_69/kernel/Read/ReadVariableOp"conv3d_69/bias/Read/ReadVariableOp$conv3d_70/kernel/Read/ReadVariableOp"conv3d_70/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8� *)
f$R"
 __inference__traced_save_4442666
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_64/kernelconv3d_64/biasconv3d_65/kernelconv3d_65/biasconv3d_66/kernelconv3d_66/biasdense_16/kerneldense_16/biasconv3d_67/kernelconv3d_67/biasconv3d_68/kernelconv3d_68/biasconv3d_69/kernelconv3d_69/biasconv3d_70/kernelconv3d_70/bias*
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
GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__traced_restore_4442724Չ
�w
�
E__inference_model_16_layer_call_and_return_conditional_losses_4441915	
input/
conv3d_64_4441845:
conv3d_64_4441847:/
conv3d_65_4441851:
conv3d_65_4441853:/
conv3d_66_4441857:
conv3d_66_4441859:"
dense_16_4441864:@@
dense_16_4441866:@/
conv3d_67_4441878:
conv3d_67_4441880:/
conv3d_68_4441891:
conv3d_68_4441893:/
conv3d_69_4441904:
conv3d_69_4441906:/
conv3d_70_4441909:
conv3d_70_4441911:
identity��!conv3d_64/StatefulPartitionedCall�!conv3d_65/StatefulPartitionedCall�!conv3d_66/StatefulPartitionedCall�!conv3d_67/StatefulPartitionedCall�!conv3d_68/StatefulPartitionedCall�!conv3d_69/StatefulPartitionedCall�!conv3d_70/StatefulPartitionedCall� dense_16/StatefulPartitionedCall�
0tf.__operators__.getitem_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_178/strided_slice/stack�
2tf.__operators__.getitem_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_178/strided_slice/stack_1�
2tf.__operators__.getitem_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_178/strided_slice/stack_2�
*tf.__operators__.getitem_178/strided_sliceStridedSliceinput9tf.__operators__.getitem_178/strided_slice/stack:output:0;tf.__operators__.getitem_178/strided_slice/stack_1:output:0;tf.__operators__.getitem_178/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_178/strided_slice�
#range_conversion_16/PartitionedCallPartitionedCall3tf.__operators__.getitem_178/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_44411752%
#range_conversion_16/PartitionedCall�
0tf.__operators__.getitem_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_179/strided_slice/stack�
2tf.__operators__.getitem_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_179/strided_slice/stack_1�
2tf.__operators__.getitem_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_179/strided_slice/stack_2�
*tf.__operators__.getitem_179/strided_sliceStridedSliceinput9tf.__operators__.getitem_179/strided_slice/stack:output:0;tf.__operators__.getitem_179/strided_slice/stack_1:output:0;tf.__operators__.getitem_179/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_179/strided_slicex
tf.concat_197/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_197/concat/axis�
tf.concat_197/concatConcatV2,range_conversion_16/PartitionedCall:output:03tf.__operators__.getitem_179/strided_slice:output:0"tf.concat_197/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_197/concat�
!conv3d_64/StatefulPartitionedCallStatefulPartitionedCalltf.concat_197/concat:output:0conv3d_64_4441845conv3d_64_4441847*
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
F__inference_conv3d_64_layer_call_and_return_conditional_losses_44411942#
!conv3d_64/StatefulPartitionedCall�
$average_pooling3d_24/PartitionedCallPartitionedCall*conv3d_64/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_44412082&
$average_pooling3d_24/PartitionedCall�
!conv3d_65/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_24/PartitionedCall:output:0conv3d_65_4441851conv3d_65_4441853*
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
F__inference_conv3d_65_layer_call_and_return_conditional_losses_44412212#
!conv3d_65/StatefulPartitionedCall�
$average_pooling3d_25/PartitionedCallPartitionedCall*conv3d_65/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_44412352&
$average_pooling3d_25/PartitionedCall�
!conv3d_66/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_25/PartitionedCall:output:0conv3d_66_4441857conv3d_66_4441859*
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
F__inference_conv3d_66_layer_call_and_return_conditional_losses_44412482#
!conv3d_66/StatefulPartitionedCall�
$average_pooling3d_26/PartitionedCallPartitionedCall*conv3d_66/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_44412622&
$average_pooling3d_26/PartitionedCall�
reshape_32/PartitionedCallPartitionedCall-average_pooling3d_26/PartitionedCall:output:0*
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
G__inference_reshape_32_layer_call_and_return_conditional_losses_44412762
reshape_32/PartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0dense_16_4441864dense_16_4441866*
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
E__inference_dense_16_layer_call_and_return_conditional_losses_44412892"
 dense_16/StatefulPartitionedCall�
reshape_33/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
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
G__inference_reshape_33_layer_call_and_return_conditional_losses_44413102
reshape_33/PartitionedCall�
tf.reshape_216/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_216/Reshape/shape�
tf.reshape_216/ReshapeReshape#reshape_33/PartitionedCall:output:0%tf.reshape_216/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_216/Reshape�
tf.tile_108/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_108/Tile/multiples�
tf.tile_108/TileTiletf.reshape_216/Reshape:output:0#tf.tile_108/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_108/Tile�
tf.reshape_217/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_217/Reshape/shape�
tf.reshape_217/ReshapeReshapetf.tile_108/Tile:output:0%tf.reshape_217/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_217/Reshapex
tf.concat_198/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_198/concat/axis�
tf.concat_198/concatConcatV2tf.reshape_217/Reshape:output:0*conv3d_66/StatefulPartitionedCall:output:0"tf.concat_198/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_198/concat�
!conv3d_67/StatefulPartitionedCallStatefulPartitionedCalltf.concat_198/concat:output:0conv3d_67_4441878conv3d_67_4441880*
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
F__inference_conv3d_67_layer_call_and_return_conditional_losses_44413312#
!conv3d_67/StatefulPartitionedCall�
tf.reshape_218/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_218/Reshape/shape�
tf.reshape_218/ReshapeReshape*conv3d_67/StatefulPartitionedCall:output:0%tf.reshape_218/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_218/Reshape�
tf.tile_109/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_109/Tile/multiples�
tf.tile_109/TileTiletf.reshape_218/Reshape:output:0#tf.tile_109/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_109/Tile�
tf.reshape_219/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_219/Reshape/shape�
tf.reshape_219/ReshapeReshapetf.tile_109/Tile:output:0%tf.reshape_219/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_219/Reshapex
tf.concat_199/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_199/concat/axis�
tf.concat_199/concatConcatV2tf.reshape_219/Reshape:output:0*conv3d_65/StatefulPartitionedCall:output:0"tf.concat_199/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_199/concat�
!conv3d_68/StatefulPartitionedCallStatefulPartitionedCalltf.concat_199/concat:output:0conv3d_68_4441891conv3d_68_4441893*
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
F__inference_conv3d_68_layer_call_and_return_conditional_losses_44413562#
!conv3d_68/StatefulPartitionedCall�
tf.reshape_220/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_220/Reshape/shape�
tf.reshape_220/ReshapeReshape*conv3d_68/StatefulPartitionedCall:output:0%tf.reshape_220/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_220/Reshape�
tf.tile_110/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_110/Tile/multiples�
tf.tile_110/TileTiletf.reshape_220/Reshape:output:0#tf.tile_110/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_110/Tile�
tf.reshape_221/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_221/Reshape/shape�
tf.reshape_221/ReshapeReshapetf.tile_110/Tile:output:0%tf.reshape_221/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_221/Reshapex
tf.concat_200/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_200/concat/axis�
tf.concat_200/concatConcatV2tf.reshape_221/Reshape:output:0*conv3d_64/StatefulPartitionedCall:output:0"tf.concat_200/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_200/concat�
!conv3d_69/StatefulPartitionedCallStatefulPartitionedCalltf.concat_200/concat:output:0conv3d_69_4441904conv3d_69_4441906*
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
F__inference_conv3d_69_layer_call_and_return_conditional_losses_44413812#
!conv3d_69/StatefulPartitionedCall�
!conv3d_70/StatefulPartitionedCallStatefulPartitionedCall*conv3d_69/StatefulPartitionedCall:output:0conv3d_70_4441909conv3d_70_4441911*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_70_layer_call_and_return_conditional_losses_44413972#
!conv3d_70/StatefulPartitionedCall�
IdentityIdentity*conv3d_70/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_64/StatefulPartitionedCall"^conv3d_65/StatefulPartitionedCall"^conv3d_66/StatefulPartitionedCall"^conv3d_67/StatefulPartitionedCall"^conv3d_68/StatefulPartitionedCall"^conv3d_69/StatefulPartitionedCall"^conv3d_70/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_64/StatefulPartitionedCall!conv3d_64/StatefulPartitionedCall2F
!conv3d_65/StatefulPartitionedCall!conv3d_65/StatefulPartitionedCall2F
!conv3d_66/StatefulPartitionedCall!conv3d_66/StatefulPartitionedCall2F
!conv3d_67/StatefulPartitionedCall!conv3d_67/StatefulPartitionedCall2F
!conv3d_68/StatefulPartitionedCall!conv3d_68/StatefulPartitionedCall2F
!conv3d_69/StatefulPartitionedCall!conv3d_69/StatefulPartitionedCall2F
!conv3d_70/StatefulPartitionedCall!conv3d_70/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
F__inference_conv3d_68_layer_call_and_return_conditional_losses_4442556

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
�
c
G__inference_reshape_33_layer_call_and_return_conditional_losses_4442516

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
�w
�
E__inference_model_16_layer_call_and_return_conditional_losses_4441404

inputs/
conv3d_64_4441195:
conv3d_64_4441197:/
conv3d_65_4441222:
conv3d_65_4441224:/
conv3d_66_4441249:
conv3d_66_4441251:"
dense_16_4441290:@@
dense_16_4441292:@/
conv3d_67_4441332:
conv3d_67_4441334:/
conv3d_68_4441357:
conv3d_68_4441359:/
conv3d_69_4441382:
conv3d_69_4441384:/
conv3d_70_4441398:
conv3d_70_4441400:
identity��!conv3d_64/StatefulPartitionedCall�!conv3d_65/StatefulPartitionedCall�!conv3d_66/StatefulPartitionedCall�!conv3d_67/StatefulPartitionedCall�!conv3d_68/StatefulPartitionedCall�!conv3d_69/StatefulPartitionedCall�!conv3d_70/StatefulPartitionedCall� dense_16/StatefulPartitionedCall�
0tf.__operators__.getitem_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_178/strided_slice/stack�
2tf.__operators__.getitem_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_178/strided_slice/stack_1�
2tf.__operators__.getitem_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_178/strided_slice/stack_2�
*tf.__operators__.getitem_178/strided_sliceStridedSliceinputs9tf.__operators__.getitem_178/strided_slice/stack:output:0;tf.__operators__.getitem_178/strided_slice/stack_1:output:0;tf.__operators__.getitem_178/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_178/strided_slice�
#range_conversion_16/PartitionedCallPartitionedCall3tf.__operators__.getitem_178/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_44411752%
#range_conversion_16/PartitionedCall�
0tf.__operators__.getitem_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_179/strided_slice/stack�
2tf.__operators__.getitem_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_179/strided_slice/stack_1�
2tf.__operators__.getitem_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_179/strided_slice/stack_2�
*tf.__operators__.getitem_179/strided_sliceStridedSliceinputs9tf.__operators__.getitem_179/strided_slice/stack:output:0;tf.__operators__.getitem_179/strided_slice/stack_1:output:0;tf.__operators__.getitem_179/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_179/strided_slicex
tf.concat_197/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_197/concat/axis�
tf.concat_197/concatConcatV2,range_conversion_16/PartitionedCall:output:03tf.__operators__.getitem_179/strided_slice:output:0"tf.concat_197/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_197/concat�
!conv3d_64/StatefulPartitionedCallStatefulPartitionedCalltf.concat_197/concat:output:0conv3d_64_4441195conv3d_64_4441197*
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
F__inference_conv3d_64_layer_call_and_return_conditional_losses_44411942#
!conv3d_64/StatefulPartitionedCall�
$average_pooling3d_24/PartitionedCallPartitionedCall*conv3d_64/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_44412082&
$average_pooling3d_24/PartitionedCall�
!conv3d_65/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_24/PartitionedCall:output:0conv3d_65_4441222conv3d_65_4441224*
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
F__inference_conv3d_65_layer_call_and_return_conditional_losses_44412212#
!conv3d_65/StatefulPartitionedCall�
$average_pooling3d_25/PartitionedCallPartitionedCall*conv3d_65/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_44412352&
$average_pooling3d_25/PartitionedCall�
!conv3d_66/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_25/PartitionedCall:output:0conv3d_66_4441249conv3d_66_4441251*
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
F__inference_conv3d_66_layer_call_and_return_conditional_losses_44412482#
!conv3d_66/StatefulPartitionedCall�
$average_pooling3d_26/PartitionedCallPartitionedCall*conv3d_66/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_44412622&
$average_pooling3d_26/PartitionedCall�
reshape_32/PartitionedCallPartitionedCall-average_pooling3d_26/PartitionedCall:output:0*
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
G__inference_reshape_32_layer_call_and_return_conditional_losses_44412762
reshape_32/PartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0dense_16_4441290dense_16_4441292*
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
E__inference_dense_16_layer_call_and_return_conditional_losses_44412892"
 dense_16/StatefulPartitionedCall�
reshape_33/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
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
G__inference_reshape_33_layer_call_and_return_conditional_losses_44413102
reshape_33/PartitionedCall�
tf.reshape_216/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_216/Reshape/shape�
tf.reshape_216/ReshapeReshape#reshape_33/PartitionedCall:output:0%tf.reshape_216/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_216/Reshape�
tf.tile_108/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_108/Tile/multiples�
tf.tile_108/TileTiletf.reshape_216/Reshape:output:0#tf.tile_108/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_108/Tile�
tf.reshape_217/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_217/Reshape/shape�
tf.reshape_217/ReshapeReshapetf.tile_108/Tile:output:0%tf.reshape_217/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_217/Reshapex
tf.concat_198/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_198/concat/axis�
tf.concat_198/concatConcatV2tf.reshape_217/Reshape:output:0*conv3d_66/StatefulPartitionedCall:output:0"tf.concat_198/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_198/concat�
!conv3d_67/StatefulPartitionedCallStatefulPartitionedCalltf.concat_198/concat:output:0conv3d_67_4441332conv3d_67_4441334*
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
F__inference_conv3d_67_layer_call_and_return_conditional_losses_44413312#
!conv3d_67/StatefulPartitionedCall�
tf.reshape_218/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_218/Reshape/shape�
tf.reshape_218/ReshapeReshape*conv3d_67/StatefulPartitionedCall:output:0%tf.reshape_218/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_218/Reshape�
tf.tile_109/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_109/Tile/multiples�
tf.tile_109/TileTiletf.reshape_218/Reshape:output:0#tf.tile_109/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_109/Tile�
tf.reshape_219/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_219/Reshape/shape�
tf.reshape_219/ReshapeReshapetf.tile_109/Tile:output:0%tf.reshape_219/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_219/Reshapex
tf.concat_199/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_199/concat/axis�
tf.concat_199/concatConcatV2tf.reshape_219/Reshape:output:0*conv3d_65/StatefulPartitionedCall:output:0"tf.concat_199/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_199/concat�
!conv3d_68/StatefulPartitionedCallStatefulPartitionedCalltf.concat_199/concat:output:0conv3d_68_4441357conv3d_68_4441359*
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
F__inference_conv3d_68_layer_call_and_return_conditional_losses_44413562#
!conv3d_68/StatefulPartitionedCall�
tf.reshape_220/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_220/Reshape/shape�
tf.reshape_220/ReshapeReshape*conv3d_68/StatefulPartitionedCall:output:0%tf.reshape_220/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_220/Reshape�
tf.tile_110/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_110/Tile/multiples�
tf.tile_110/TileTiletf.reshape_220/Reshape:output:0#tf.tile_110/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_110/Tile�
tf.reshape_221/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_221/Reshape/shape�
tf.reshape_221/ReshapeReshapetf.tile_110/Tile:output:0%tf.reshape_221/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_221/Reshapex
tf.concat_200/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_200/concat/axis�
tf.concat_200/concatConcatV2tf.reshape_221/Reshape:output:0*conv3d_64/StatefulPartitionedCall:output:0"tf.concat_200/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_200/concat�
!conv3d_69/StatefulPartitionedCallStatefulPartitionedCalltf.concat_200/concat:output:0conv3d_69_4441382conv3d_69_4441384*
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
F__inference_conv3d_69_layer_call_and_return_conditional_losses_44413812#
!conv3d_69/StatefulPartitionedCall�
!conv3d_70/StatefulPartitionedCallStatefulPartitionedCall*conv3d_69/StatefulPartitionedCall:output:0conv3d_70_4441398conv3d_70_4441400*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_70_layer_call_and_return_conditional_losses_44413972#
!conv3d_70/StatefulPartitionedCall�
IdentityIdentity*conv3d_70/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_64/StatefulPartitionedCall"^conv3d_65/StatefulPartitionedCall"^conv3d_66/StatefulPartitionedCall"^conv3d_67/StatefulPartitionedCall"^conv3d_68/StatefulPartitionedCall"^conv3d_69/StatefulPartitionedCall"^conv3d_70/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_64/StatefulPartitionedCall!conv3d_64/StatefulPartitionedCall2F
!conv3d_65/StatefulPartitionedCall!conv3d_65/StatefulPartitionedCall2F
!conv3d_66/StatefulPartitionedCall!conv3d_66/StatefulPartitionedCall2F
!conv3d_67/StatefulPartitionedCall!conv3d_67/StatefulPartitionedCall2F
!conv3d_68/StatefulPartitionedCall!conv3d_68/StatefulPartitionedCall2F
!conv3d_69/StatefulPartitionedCall!conv3d_69/StatefulPartitionedCall2F
!conv3d_70/StatefulPartitionedCall!conv3d_70/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
F__inference_conv3d_64_layer_call_and_return_conditional_losses_4442335

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�G
�

#__inference__traced_restore_4442724
file_prefix?
!assignvariableop_conv3d_64_kernel:/
!assignvariableop_1_conv3d_64_bias:A
#assignvariableop_2_conv3d_65_kernel:/
!assignvariableop_3_conv3d_65_bias:A
#assignvariableop_4_conv3d_66_kernel:/
!assignvariableop_5_conv3d_66_bias:4
"assignvariableop_6_dense_16_kernel:@@.
 assignvariableop_7_dense_16_bias:@A
#assignvariableop_8_conv3d_67_kernel:/
!assignvariableop_9_conv3d_67_bias:B
$assignvariableop_10_conv3d_68_kernel:0
"assignvariableop_11_conv3d_68_bias:B
$assignvariableop_12_conv3d_69_kernel:0
"assignvariableop_13_conv3d_69_bias:B
$assignvariableop_14_conv3d_70_kernel:0
"assignvariableop_15_conv3d_70_bias:
identity_17��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
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

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_64_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_64_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_65_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_65_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_66_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_66_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_16_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_16_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_67_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_67_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_68_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_68_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv3d_69_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv3d_69_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv3d_70_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv3d_70_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17�
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
�
R
6__inference_average_pooling3d_25_layer_call_fn_4442393

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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_44412352
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

m
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4441075

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
�
R
6__inference_average_pooling3d_25_layer_call_fn_4442388

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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_44411052
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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4441105

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
F__inference_conv3d_70_layer_call_and_return_conditional_losses_4441397

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
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
:���������  *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
*__inference_model_16_layer_call_fn_4441747	
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
 *3
_output_shapes!
:���������  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_44416752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
+__inference_conv3d_67_layer_call_fn_4442525

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
F__inference_conv3d_67_layer_call_and_return_conditional_losses_44413312
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
�
H
,__inference_reshape_32_layer_call_fn_4442464

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
G__inference_reshape_32_layer_call_and_return_conditional_losses_44412762
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
�
F__inference_conv3d_64_layer_call_and_return_conditional_losses_4441194

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�,
�
 __inference__traced_save_4442666
file_prefix/
+savev2_conv3d_64_kernel_read_readvariableop-
)savev2_conv3d_64_bias_read_readvariableop/
+savev2_conv3d_65_kernel_read_readvariableop-
)savev2_conv3d_65_bias_read_readvariableop/
+savev2_conv3d_66_kernel_read_readvariableop-
)savev2_conv3d_66_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop/
+savev2_conv3d_67_kernel_read_readvariableop-
)savev2_conv3d_67_bias_read_readvariableop/
+savev2_conv3d_68_kernel_read_readvariableop-
)savev2_conv3d_68_bias_read_readvariableop/
+savev2_conv3d_69_kernel_read_readvariableop-
)savev2_conv3d_69_bias_read_readvariableop/
+savev2_conv3d_70_kernel_read_readvariableop-
)savev2_conv3d_70_bias_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_64_kernel_read_readvariableop)savev2_conv3d_64_bias_read_readvariableop+savev2_conv3d_65_kernel_read_readvariableop)savev2_conv3d_65_bias_read_readvariableop+savev2_conv3d_66_kernel_read_readvariableop)savev2_conv3d_66_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop+savev2_conv3d_67_kernel_read_readvariableop)savev2_conv3d_67_bias_read_readvariableop+savev2_conv3d_68_kernel_read_readvariableop)savev2_conv3d_68_bias_read_readvariableop+savev2_conv3d_69_kernel_read_readvariableop)savev2_conv3d_69_bias_read_readvariableop+savev2_conv3d_70_kernel_read_readvariableop)savev2_conv3d_70_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::@@:@::::::::: 2(
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
�
�
F__inference_conv3d_69_layer_call_and_return_conditional_losses_4442576

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

m
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4442450

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
+__inference_conv3d_64_layer_call_fn_4442324

inputs%
unknown:
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
F__inference_conv3d_64_layer_call_and_return_conditional_losses_44411942
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
#:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
+__inference_conv3d_70_layer_call_fn_4442585

inputs%
unknown:
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
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_70_layer_call_and_return_conditional_losses_44413972
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
+__inference_conv3d_68_layer_call_fn_4442545

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
F__inference_conv3d_68_layer_call_and_return_conditional_losses_44413562
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
m
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4441262

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
F__inference_conv3d_67_layer_call_and_return_conditional_losses_4442536

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
�
F__inference_conv3d_67_layer_call_and_return_conditional_losses_4441331

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
*__inference_dense_16_layer_call_fn_4442485

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
E__inference_dense_16_layer_call_and_return_conditional_losses_44412892
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

m
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4441135

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
�
R
6__inference_average_pooling3d_24_layer_call_fn_4442340

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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_44410752
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
F__inference_conv3d_66_layer_call_and_return_conditional_losses_4441248

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
�w
�
E__inference_model_16_layer_call_and_return_conditional_losses_4441675

inputs/
conv3d_64_4441605:
conv3d_64_4441607:/
conv3d_65_4441611:
conv3d_65_4441613:/
conv3d_66_4441617:
conv3d_66_4441619:"
dense_16_4441624:@@
dense_16_4441626:@/
conv3d_67_4441638:
conv3d_67_4441640:/
conv3d_68_4441651:
conv3d_68_4441653:/
conv3d_69_4441664:
conv3d_69_4441666:/
conv3d_70_4441669:
conv3d_70_4441671:
identity��!conv3d_64/StatefulPartitionedCall�!conv3d_65/StatefulPartitionedCall�!conv3d_66/StatefulPartitionedCall�!conv3d_67/StatefulPartitionedCall�!conv3d_68/StatefulPartitionedCall�!conv3d_69/StatefulPartitionedCall�!conv3d_70/StatefulPartitionedCall� dense_16/StatefulPartitionedCall�
0tf.__operators__.getitem_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_178/strided_slice/stack�
2tf.__operators__.getitem_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_178/strided_slice/stack_1�
2tf.__operators__.getitem_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_178/strided_slice/stack_2�
*tf.__operators__.getitem_178/strided_sliceStridedSliceinputs9tf.__operators__.getitem_178/strided_slice/stack:output:0;tf.__operators__.getitem_178/strided_slice/stack_1:output:0;tf.__operators__.getitem_178/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_178/strided_slice�
#range_conversion_16/PartitionedCallPartitionedCall3tf.__operators__.getitem_178/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_44411752%
#range_conversion_16/PartitionedCall�
0tf.__operators__.getitem_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_179/strided_slice/stack�
2tf.__operators__.getitem_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_179/strided_slice/stack_1�
2tf.__operators__.getitem_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_179/strided_slice/stack_2�
*tf.__operators__.getitem_179/strided_sliceStridedSliceinputs9tf.__operators__.getitem_179/strided_slice/stack:output:0;tf.__operators__.getitem_179/strided_slice/stack_1:output:0;tf.__operators__.getitem_179/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_179/strided_slicex
tf.concat_197/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_197/concat/axis�
tf.concat_197/concatConcatV2,range_conversion_16/PartitionedCall:output:03tf.__operators__.getitem_179/strided_slice:output:0"tf.concat_197/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_197/concat�
!conv3d_64/StatefulPartitionedCallStatefulPartitionedCalltf.concat_197/concat:output:0conv3d_64_4441605conv3d_64_4441607*
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
F__inference_conv3d_64_layer_call_and_return_conditional_losses_44411942#
!conv3d_64/StatefulPartitionedCall�
$average_pooling3d_24/PartitionedCallPartitionedCall*conv3d_64/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_44412082&
$average_pooling3d_24/PartitionedCall�
!conv3d_65/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_24/PartitionedCall:output:0conv3d_65_4441611conv3d_65_4441613*
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
F__inference_conv3d_65_layer_call_and_return_conditional_losses_44412212#
!conv3d_65/StatefulPartitionedCall�
$average_pooling3d_25/PartitionedCallPartitionedCall*conv3d_65/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_44412352&
$average_pooling3d_25/PartitionedCall�
!conv3d_66/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_25/PartitionedCall:output:0conv3d_66_4441617conv3d_66_4441619*
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
F__inference_conv3d_66_layer_call_and_return_conditional_losses_44412482#
!conv3d_66/StatefulPartitionedCall�
$average_pooling3d_26/PartitionedCallPartitionedCall*conv3d_66/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_44412622&
$average_pooling3d_26/PartitionedCall�
reshape_32/PartitionedCallPartitionedCall-average_pooling3d_26/PartitionedCall:output:0*
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
G__inference_reshape_32_layer_call_and_return_conditional_losses_44412762
reshape_32/PartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0dense_16_4441624dense_16_4441626*
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
E__inference_dense_16_layer_call_and_return_conditional_losses_44412892"
 dense_16/StatefulPartitionedCall�
reshape_33/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
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
G__inference_reshape_33_layer_call_and_return_conditional_losses_44413102
reshape_33/PartitionedCall�
tf.reshape_216/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_216/Reshape/shape�
tf.reshape_216/ReshapeReshape#reshape_33/PartitionedCall:output:0%tf.reshape_216/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_216/Reshape�
tf.tile_108/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_108/Tile/multiples�
tf.tile_108/TileTiletf.reshape_216/Reshape:output:0#tf.tile_108/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_108/Tile�
tf.reshape_217/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_217/Reshape/shape�
tf.reshape_217/ReshapeReshapetf.tile_108/Tile:output:0%tf.reshape_217/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_217/Reshapex
tf.concat_198/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_198/concat/axis�
tf.concat_198/concatConcatV2tf.reshape_217/Reshape:output:0*conv3d_66/StatefulPartitionedCall:output:0"tf.concat_198/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_198/concat�
!conv3d_67/StatefulPartitionedCallStatefulPartitionedCalltf.concat_198/concat:output:0conv3d_67_4441638conv3d_67_4441640*
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
F__inference_conv3d_67_layer_call_and_return_conditional_losses_44413312#
!conv3d_67/StatefulPartitionedCall�
tf.reshape_218/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_218/Reshape/shape�
tf.reshape_218/ReshapeReshape*conv3d_67/StatefulPartitionedCall:output:0%tf.reshape_218/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_218/Reshape�
tf.tile_109/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_109/Tile/multiples�
tf.tile_109/TileTiletf.reshape_218/Reshape:output:0#tf.tile_109/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_109/Tile�
tf.reshape_219/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_219/Reshape/shape�
tf.reshape_219/ReshapeReshapetf.tile_109/Tile:output:0%tf.reshape_219/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_219/Reshapex
tf.concat_199/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_199/concat/axis�
tf.concat_199/concatConcatV2tf.reshape_219/Reshape:output:0*conv3d_65/StatefulPartitionedCall:output:0"tf.concat_199/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_199/concat�
!conv3d_68/StatefulPartitionedCallStatefulPartitionedCalltf.concat_199/concat:output:0conv3d_68_4441651conv3d_68_4441653*
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
F__inference_conv3d_68_layer_call_and_return_conditional_losses_44413562#
!conv3d_68/StatefulPartitionedCall�
tf.reshape_220/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_220/Reshape/shape�
tf.reshape_220/ReshapeReshape*conv3d_68/StatefulPartitionedCall:output:0%tf.reshape_220/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_220/Reshape�
tf.tile_110/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_110/Tile/multiples�
tf.tile_110/TileTiletf.reshape_220/Reshape:output:0#tf.tile_110/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_110/Tile�
tf.reshape_221/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_221/Reshape/shape�
tf.reshape_221/ReshapeReshapetf.tile_110/Tile:output:0%tf.reshape_221/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_221/Reshapex
tf.concat_200/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_200/concat/axis�
tf.concat_200/concatConcatV2tf.reshape_221/Reshape:output:0*conv3d_64/StatefulPartitionedCall:output:0"tf.concat_200/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_200/concat�
!conv3d_69/StatefulPartitionedCallStatefulPartitionedCalltf.concat_200/concat:output:0conv3d_69_4441664conv3d_69_4441666*
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
F__inference_conv3d_69_layer_call_and_return_conditional_losses_44413812#
!conv3d_69/StatefulPartitionedCall�
!conv3d_70/StatefulPartitionedCallStatefulPartitionedCall*conv3d_69/StatefulPartitionedCall:output:0conv3d_70_4441669conv3d_70_4441671*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_70_layer_call_and_return_conditional_losses_44413972#
!conv3d_70/StatefulPartitionedCall�
IdentityIdentity*conv3d_70/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_64/StatefulPartitionedCall"^conv3d_65/StatefulPartitionedCall"^conv3d_66/StatefulPartitionedCall"^conv3d_67/StatefulPartitionedCall"^conv3d_68/StatefulPartitionedCall"^conv3d_69/StatefulPartitionedCall"^conv3d_70/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_64/StatefulPartitionedCall!conv3d_64/StatefulPartitionedCall2F
!conv3d_65/StatefulPartitionedCall!conv3d_65/StatefulPartitionedCall2F
!conv3d_66/StatefulPartitionedCall!conv3d_66/StatefulPartitionedCall2F
!conv3d_67/StatefulPartitionedCall!conv3d_67/StatefulPartitionedCall2F
!conv3d_68/StatefulPartitionedCall!conv3d_68/StatefulPartitionedCall2F
!conv3d_69/StatefulPartitionedCall!conv3d_69/StatefulPartitionedCall2F
!conv3d_70/StatefulPartitionedCall!conv3d_70/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�	
p
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_4442315

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
:���������  2
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
:���������  2	
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
:���������  2
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
:���������  2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  :_ [
3
_output_shapes!
:���������  
$
_user_specified_name
parameters
�	
m
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4442459

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
�w
�
E__inference_model_16_layer_call_and_return_conditional_losses_4441831	
input/
conv3d_64_4441761:
conv3d_64_4441763:/
conv3d_65_4441767:
conv3d_65_4441769:/
conv3d_66_4441773:
conv3d_66_4441775:"
dense_16_4441780:@@
dense_16_4441782:@/
conv3d_67_4441794:
conv3d_67_4441796:/
conv3d_68_4441807:
conv3d_68_4441809:/
conv3d_69_4441820:
conv3d_69_4441822:/
conv3d_70_4441825:
conv3d_70_4441827:
identity��!conv3d_64/StatefulPartitionedCall�!conv3d_65/StatefulPartitionedCall�!conv3d_66/StatefulPartitionedCall�!conv3d_67/StatefulPartitionedCall�!conv3d_68/StatefulPartitionedCall�!conv3d_69/StatefulPartitionedCall�!conv3d_70/StatefulPartitionedCall� dense_16/StatefulPartitionedCall�
0tf.__operators__.getitem_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_178/strided_slice/stack�
2tf.__operators__.getitem_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_178/strided_slice/stack_1�
2tf.__operators__.getitem_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_178/strided_slice/stack_2�
*tf.__operators__.getitem_178/strided_sliceStridedSliceinput9tf.__operators__.getitem_178/strided_slice/stack:output:0;tf.__operators__.getitem_178/strided_slice/stack_1:output:0;tf.__operators__.getitem_178/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_178/strided_slice�
#range_conversion_16/PartitionedCallPartitionedCall3tf.__operators__.getitem_178/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_44411752%
#range_conversion_16/PartitionedCall�
0tf.__operators__.getitem_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_179/strided_slice/stack�
2tf.__operators__.getitem_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_179/strided_slice/stack_1�
2tf.__operators__.getitem_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_179/strided_slice/stack_2�
*tf.__operators__.getitem_179/strided_sliceStridedSliceinput9tf.__operators__.getitem_179/strided_slice/stack:output:0;tf.__operators__.getitem_179/strided_slice/stack_1:output:0;tf.__operators__.getitem_179/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_179/strided_slicex
tf.concat_197/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_197/concat/axis�
tf.concat_197/concatConcatV2,range_conversion_16/PartitionedCall:output:03tf.__operators__.getitem_179/strided_slice:output:0"tf.concat_197/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_197/concat�
!conv3d_64/StatefulPartitionedCallStatefulPartitionedCalltf.concat_197/concat:output:0conv3d_64_4441761conv3d_64_4441763*
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
F__inference_conv3d_64_layer_call_and_return_conditional_losses_44411942#
!conv3d_64/StatefulPartitionedCall�
$average_pooling3d_24/PartitionedCallPartitionedCall*conv3d_64/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_44412082&
$average_pooling3d_24/PartitionedCall�
!conv3d_65/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_24/PartitionedCall:output:0conv3d_65_4441767conv3d_65_4441769*
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
F__inference_conv3d_65_layer_call_and_return_conditional_losses_44412212#
!conv3d_65/StatefulPartitionedCall�
$average_pooling3d_25/PartitionedCallPartitionedCall*conv3d_65/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_44412352&
$average_pooling3d_25/PartitionedCall�
!conv3d_66/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_25/PartitionedCall:output:0conv3d_66_4441773conv3d_66_4441775*
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
F__inference_conv3d_66_layer_call_and_return_conditional_losses_44412482#
!conv3d_66/StatefulPartitionedCall�
$average_pooling3d_26/PartitionedCallPartitionedCall*conv3d_66/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_44412622&
$average_pooling3d_26/PartitionedCall�
reshape_32/PartitionedCallPartitionedCall-average_pooling3d_26/PartitionedCall:output:0*
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
G__inference_reshape_32_layer_call_and_return_conditional_losses_44412762
reshape_32/PartitionedCall�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0dense_16_4441780dense_16_4441782*
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
E__inference_dense_16_layer_call_and_return_conditional_losses_44412892"
 dense_16/StatefulPartitionedCall�
reshape_33/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
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
G__inference_reshape_33_layer_call_and_return_conditional_losses_44413102
reshape_33/PartitionedCall�
tf.reshape_216/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_216/Reshape/shape�
tf.reshape_216/ReshapeReshape#reshape_33/PartitionedCall:output:0%tf.reshape_216/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_216/Reshape�
tf.tile_108/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_108/Tile/multiples�
tf.tile_108/TileTiletf.reshape_216/Reshape:output:0#tf.tile_108/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_108/Tile�
tf.reshape_217/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_217/Reshape/shape�
tf.reshape_217/ReshapeReshapetf.tile_108/Tile:output:0%tf.reshape_217/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_217/Reshapex
tf.concat_198/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_198/concat/axis�
tf.concat_198/concatConcatV2tf.reshape_217/Reshape:output:0*conv3d_66/StatefulPartitionedCall:output:0"tf.concat_198/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_198/concat�
!conv3d_67/StatefulPartitionedCallStatefulPartitionedCalltf.concat_198/concat:output:0conv3d_67_4441794conv3d_67_4441796*
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
F__inference_conv3d_67_layer_call_and_return_conditional_losses_44413312#
!conv3d_67/StatefulPartitionedCall�
tf.reshape_218/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_218/Reshape/shape�
tf.reshape_218/ReshapeReshape*conv3d_67/StatefulPartitionedCall:output:0%tf.reshape_218/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_218/Reshape�
tf.tile_109/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_109/Tile/multiples�
tf.tile_109/TileTiletf.reshape_218/Reshape:output:0#tf.tile_109/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_109/Tile�
tf.reshape_219/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_219/Reshape/shape�
tf.reshape_219/ReshapeReshapetf.tile_109/Tile:output:0%tf.reshape_219/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_219/Reshapex
tf.concat_199/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_199/concat/axis�
tf.concat_199/concatConcatV2tf.reshape_219/Reshape:output:0*conv3d_65/StatefulPartitionedCall:output:0"tf.concat_199/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_199/concat�
!conv3d_68/StatefulPartitionedCallStatefulPartitionedCalltf.concat_199/concat:output:0conv3d_68_4441807conv3d_68_4441809*
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
F__inference_conv3d_68_layer_call_and_return_conditional_losses_44413562#
!conv3d_68/StatefulPartitionedCall�
tf.reshape_220/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_220/Reshape/shape�
tf.reshape_220/ReshapeReshape*conv3d_68/StatefulPartitionedCall:output:0%tf.reshape_220/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_220/Reshape�
tf.tile_110/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_110/Tile/multiples�
tf.tile_110/TileTiletf.reshape_220/Reshape:output:0#tf.tile_110/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_110/Tile�
tf.reshape_221/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_221/Reshape/shape�
tf.reshape_221/ReshapeReshapetf.tile_110/Tile:output:0%tf.reshape_221/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_221/Reshapex
tf.concat_200/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_200/concat/axis�
tf.concat_200/concatConcatV2tf.reshape_221/Reshape:output:0*conv3d_64/StatefulPartitionedCall:output:0"tf.concat_200/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_200/concat�
!conv3d_69/StatefulPartitionedCallStatefulPartitionedCalltf.concat_200/concat:output:0conv3d_69_4441820conv3d_69_4441822*
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
F__inference_conv3d_69_layer_call_and_return_conditional_losses_44413812#
!conv3d_69/StatefulPartitionedCall�
!conv3d_70/StatefulPartitionedCallStatefulPartitionedCall*conv3d_69/StatefulPartitionedCall:output:0conv3d_70_4441825conv3d_70_4441827*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_conv3d_70_layer_call_and_return_conditional_losses_44413972#
!conv3d_70/StatefulPartitionedCall�
IdentityIdentity*conv3d_70/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_64/StatefulPartitionedCall"^conv3d_65/StatefulPartitionedCall"^conv3d_66/StatefulPartitionedCall"^conv3d_67/StatefulPartitionedCall"^conv3d_68/StatefulPartitionedCall"^conv3d_69/StatefulPartitionedCall"^conv3d_70/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_64/StatefulPartitionedCall!conv3d_64/StatefulPartitionedCall2F
!conv3d_65/StatefulPartitionedCall!conv3d_65/StatefulPartitionedCall2F
!conv3d_66/StatefulPartitionedCall!conv3d_66/StatefulPartitionedCall2F
!conv3d_67/StatefulPartitionedCall!conv3d_67/StatefulPartitionedCall2F
!conv3d_68/StatefulPartitionedCall!conv3d_68/StatefulPartitionedCall2F
!conv3d_69/StatefulPartitionedCall!conv3d_69/StatefulPartitionedCall2F
!conv3d_70/StatefulPartitionedCall!conv3d_70/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
E__inference_dense_16_layer_call_and_return_conditional_losses_4441289

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
m
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4441208

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
�
*__inference_model_16_layer_call_fn_4441439	
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
 *3
_output_shapes!
:���������  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_44414042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
+__inference_conv3d_65_layer_call_fn_4442372

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
F__inference_conv3d_65_layer_call_and_return_conditional_losses_44412212
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
�
�
F__inference_conv3d_65_layer_call_and_return_conditional_losses_4441221

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
�
R
6__inference_average_pooling3d_24_layer_call_fn_4442345

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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_44412082
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
�
H
,__inference_reshape_33_layer_call_fn_4442501

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
G__inference_reshape_33_layer_call_and_return_conditional_losses_44413102
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
�
E__inference_dense_16_layer_call_and_return_conditional_losses_4442496

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
c
G__inference_reshape_32_layer_call_and_return_conditional_losses_4442476

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
��
�
E__inference_model_16_layer_call_and_return_conditional_losses_4442298

inputsF
(conv3d_64_conv3d_readvariableop_resource:7
)conv3d_64_biasadd_readvariableop_resource:F
(conv3d_65_conv3d_readvariableop_resource:7
)conv3d_65_biasadd_readvariableop_resource:F
(conv3d_66_conv3d_readvariableop_resource:7
)conv3d_66_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:@@6
(dense_16_biasadd_readvariableop_resource:@F
(conv3d_67_conv3d_readvariableop_resource:7
)conv3d_67_biasadd_readvariableop_resource:F
(conv3d_68_conv3d_readvariableop_resource:7
)conv3d_68_biasadd_readvariableop_resource:F
(conv3d_69_conv3d_readvariableop_resource:7
)conv3d_69_biasadd_readvariableop_resource:F
(conv3d_70_conv3d_readvariableop_resource:7
)conv3d_70_biasadd_readvariableop_resource:
identity�� conv3d_64/BiasAdd/ReadVariableOp�conv3d_64/Conv3D/ReadVariableOp� conv3d_65/BiasAdd/ReadVariableOp�conv3d_65/Conv3D/ReadVariableOp� conv3d_66/BiasAdd/ReadVariableOp�conv3d_66/Conv3D/ReadVariableOp� conv3d_67/BiasAdd/ReadVariableOp�conv3d_67/Conv3D/ReadVariableOp� conv3d_68/BiasAdd/ReadVariableOp�conv3d_68/Conv3D/ReadVariableOp� conv3d_69/BiasAdd/ReadVariableOp�conv3d_69/Conv3D/ReadVariableOp� conv3d_70/BiasAdd/ReadVariableOp�conv3d_70/Conv3D/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�
0tf.__operators__.getitem_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_178/strided_slice/stack�
2tf.__operators__.getitem_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_178/strided_slice/stack_1�
2tf.__operators__.getitem_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_178/strided_slice/stack_2�
*tf.__operators__.getitem_178/strided_sliceStridedSliceinputs9tf.__operators__.getitem_178/strided_slice/stack:output:0;tf.__operators__.getitem_178/strided_slice/stack_1:output:0;tf.__operators__.getitem_178/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_178/strided_slice{
range_conversion_16/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_16/sub/y�
range_conversion_16/subSub3tf.__operators__.getitem_178/strided_slice:output:0"range_conversion_16/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/sub�
range_conversion_16/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_16/truediv/y�
range_conversion_16/truedivRealDivrange_conversion_16/sub:z:0&range_conversion_16/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/truediv{
range_conversion_16/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_16/mul/y�
range_conversion_16/mulMulrange_conversion_16/truediv:z:0"range_conversion_16/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/mul{
range_conversion_16/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_16/add/y�
range_conversion_16/addAddV2range_conversion_16/mul:z:0"range_conversion_16/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/add�
0tf.__operators__.getitem_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_179/strided_slice/stack�
2tf.__operators__.getitem_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_179/strided_slice/stack_1�
2tf.__operators__.getitem_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_179/strided_slice/stack_2�
*tf.__operators__.getitem_179/strided_sliceStridedSliceinputs9tf.__operators__.getitem_179/strided_slice/stack:output:0;tf.__operators__.getitem_179/strided_slice/stack_1:output:0;tf.__operators__.getitem_179/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_179/strided_slicex
tf.concat_197/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_197/concat/axis�
tf.concat_197/concatConcatV2range_conversion_16/add:z:03tf.__operators__.getitem_179/strided_slice:output:0"tf.concat_197/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_197/concat�
conv3d_64/Conv3D/ReadVariableOpReadVariableOp(conv3d_64_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_64/Conv3D/ReadVariableOp�
conv3d_64/Conv3DConv3Dtf.concat_197/concat:output:0'conv3d_64/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_64/Conv3D�
 conv3d_64/BiasAdd/ReadVariableOpReadVariableOp)conv3d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_64/BiasAdd/ReadVariableOp�
conv3d_64/BiasAddBiasAddconv3d_64/Conv3D:output:0(conv3d_64/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_64/BiasAdd�
conv3d_64/SoftplusSoftplusconv3d_64/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_64/Softplus�
#average_pooling3d_24/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_24/transpose/perm�
average_pooling3d_24/transpose	Transpose conv3d_64/Softplus:activations:0,average_pooling3d_24/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_24/transpose�
average_pooling3d_24/AvgPool3D	AvgPool3D"average_pooling3d_24/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_24/AvgPool3D�
%average_pooling3d_24/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_24/transpose_1/perm�
 average_pooling3d_24/transpose_1	Transpose'average_pooling3d_24/AvgPool3D:output:0.average_pooling3d_24/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_24/transpose_1�
conv3d_65/Conv3D/ReadVariableOpReadVariableOp(conv3d_65_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_65/Conv3D/ReadVariableOp�
conv3d_65/Conv3DConv3D$average_pooling3d_24/transpose_1:y:0'conv3d_65/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_65/Conv3D�
 conv3d_65/BiasAdd/ReadVariableOpReadVariableOp)conv3d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_65/BiasAdd/ReadVariableOp�
conv3d_65/BiasAddBiasAddconv3d_65/Conv3D:output:0(conv3d_65/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_65/BiasAdd�
conv3d_65/SoftplusSoftplusconv3d_65/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_65/Softplus�
#average_pooling3d_25/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_25/transpose/perm�
average_pooling3d_25/transpose	Transpose conv3d_65/Softplus:activations:0,average_pooling3d_25/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_25/transpose�
average_pooling3d_25/AvgPool3D	AvgPool3D"average_pooling3d_25/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_25/AvgPool3D�
%average_pooling3d_25/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_25/transpose_1/perm�
 average_pooling3d_25/transpose_1	Transpose'average_pooling3d_25/AvgPool3D:output:0.average_pooling3d_25/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_25/transpose_1�
conv3d_66/Conv3D/ReadVariableOpReadVariableOp(conv3d_66_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_66/Conv3D/ReadVariableOp�
conv3d_66/Conv3DConv3D$average_pooling3d_25/transpose_1:y:0'conv3d_66/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_66/Conv3D�
 conv3d_66/BiasAdd/ReadVariableOpReadVariableOp)conv3d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_66/BiasAdd/ReadVariableOp�
conv3d_66/BiasAddBiasAddconv3d_66/Conv3D:output:0(conv3d_66/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_66/BiasAdd�
conv3d_66/SoftplusSoftplusconv3d_66/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_66/Softplus�
#average_pooling3d_26/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_26/transpose/perm�
average_pooling3d_26/transpose	Transpose conv3d_66/Softplus:activations:0,average_pooling3d_26/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_26/transpose�
average_pooling3d_26/AvgPool3D	AvgPool3D"average_pooling3d_26/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_26/AvgPool3D�
%average_pooling3d_26/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_26/transpose_1/perm�
 average_pooling3d_26/transpose_1	Transpose'average_pooling3d_26/AvgPool3D:output:0.average_pooling3d_26/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_26/transpose_1x
reshape_32/ShapeShape$average_pooling3d_26/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_32/Shape�
reshape_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_32/strided_slice/stack�
 reshape_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_32/strided_slice/stack_1�
 reshape_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_32/strided_slice/stack_2�
reshape_32/strided_sliceStridedSlicereshape_32/Shape:output:0'reshape_32/strided_slice/stack:output:0)reshape_32/strided_slice/stack_1:output:0)reshape_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_32/strided_slicez
reshape_32/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_32/Reshape/shape/1�
reshape_32/Reshape/shapePack!reshape_32/strided_slice:output:0#reshape_32/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_32/Reshape/shape�
reshape_32/ReshapeReshape$average_pooling3d_26/transpose_1:y:0!reshape_32/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_32/Reshape�
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_16/MatMul/ReadVariableOp�
dense_16/MatMulMatMulreshape_32/Reshape:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_16/MatMul�
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_16/BiasAdd/ReadVariableOp�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_16/BiasAdd
dense_16/SoftplusSoftplusdense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_16/Softpluss
reshape_33/ShapeShapedense_16/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_33/Shape�
reshape_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_33/strided_slice/stack�
 reshape_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_33/strided_slice/stack_1�
 reshape_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_33/strided_slice/stack_2�
reshape_33/strided_sliceStridedSlicereshape_33/Shape:output:0'reshape_33/strided_slice/stack:output:0)reshape_33/strided_slice/stack_1:output:0)reshape_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_33/strided_slicez
reshape_33/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/1z
reshape_33/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/2z
reshape_33/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/3z
reshape_33/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/4�
reshape_33/Reshape/shapePack!reshape_33/strided_slice:output:0#reshape_33/Reshape/shape/1:output:0#reshape_33/Reshape/shape/2:output:0#reshape_33/Reshape/shape/3:output:0#reshape_33/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_33/Reshape/shape�
reshape_33/ReshapeReshapedense_16/Softplus:activations:0!reshape_33/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_33/Reshape�
tf.reshape_216/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_216/Reshape/shape�
tf.reshape_216/ReshapeReshapereshape_33/Reshape:output:0%tf.reshape_216/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_216/Reshape�
tf.tile_108/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_108/Tile/multiples�
tf.tile_108/TileTiletf.reshape_216/Reshape:output:0#tf.tile_108/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_108/Tile�
tf.reshape_217/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_217/Reshape/shape�
tf.reshape_217/ReshapeReshapetf.tile_108/Tile:output:0%tf.reshape_217/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_217/Reshapex
tf.concat_198/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_198/concat/axis�
tf.concat_198/concatConcatV2tf.reshape_217/Reshape:output:0 conv3d_66/Softplus:activations:0"tf.concat_198/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_198/concat�
conv3d_67/Conv3D/ReadVariableOpReadVariableOp(conv3d_67_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_67/Conv3D/ReadVariableOp�
conv3d_67/Conv3DConv3Dtf.concat_198/concat:output:0'conv3d_67/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_67/Conv3D�
 conv3d_67/BiasAdd/ReadVariableOpReadVariableOp)conv3d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_67/BiasAdd/ReadVariableOp�
conv3d_67/BiasAddBiasAddconv3d_67/Conv3D:output:0(conv3d_67/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_67/BiasAdd�
conv3d_67/SoftplusSoftplusconv3d_67/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_67/Softplus�
tf.reshape_218/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_218/Reshape/shape�
tf.reshape_218/ReshapeReshape conv3d_67/Softplus:activations:0%tf.reshape_218/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_218/Reshape�
tf.tile_109/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_109/Tile/multiples�
tf.tile_109/TileTiletf.reshape_218/Reshape:output:0#tf.tile_109/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_109/Tile�
tf.reshape_219/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_219/Reshape/shape�
tf.reshape_219/ReshapeReshapetf.tile_109/Tile:output:0%tf.reshape_219/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_219/Reshapex
tf.concat_199/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_199/concat/axis�
tf.concat_199/concatConcatV2tf.reshape_219/Reshape:output:0 conv3d_65/Softplus:activations:0"tf.concat_199/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_199/concat�
conv3d_68/Conv3D/ReadVariableOpReadVariableOp(conv3d_68_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_68/Conv3D/ReadVariableOp�
conv3d_68/Conv3DConv3Dtf.concat_199/concat:output:0'conv3d_68/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_68/Conv3D�
 conv3d_68/BiasAdd/ReadVariableOpReadVariableOp)conv3d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_68/BiasAdd/ReadVariableOp�
conv3d_68/BiasAddBiasAddconv3d_68/Conv3D:output:0(conv3d_68/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_68/BiasAdd�
conv3d_68/SoftplusSoftplusconv3d_68/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_68/Softplus�
tf.reshape_220/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_220/Reshape/shape�
tf.reshape_220/ReshapeReshape conv3d_68/Softplus:activations:0%tf.reshape_220/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_220/Reshape�
tf.tile_110/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_110/Tile/multiples�
tf.tile_110/TileTiletf.reshape_220/Reshape:output:0#tf.tile_110/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_110/Tile�
tf.reshape_221/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_221/Reshape/shape�
tf.reshape_221/ReshapeReshapetf.tile_110/Tile:output:0%tf.reshape_221/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_221/Reshapex
tf.concat_200/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_200/concat/axis�
tf.concat_200/concatConcatV2tf.reshape_221/Reshape:output:0 conv3d_64/Softplus:activations:0"tf.concat_200/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_200/concat�
conv3d_69/Conv3D/ReadVariableOpReadVariableOp(conv3d_69_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_69/Conv3D/ReadVariableOp�
conv3d_69/Conv3DConv3Dtf.concat_200/concat:output:0'conv3d_69/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_69/Conv3D�
 conv3d_69/BiasAdd/ReadVariableOpReadVariableOp)conv3d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_69/BiasAdd/ReadVariableOp�
conv3d_69/BiasAddBiasAddconv3d_69/Conv3D:output:0(conv3d_69/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_69/BiasAdd�
conv3d_69/SoftplusSoftplusconv3d_69/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_69/Softplus�
conv3d_70/Conv3D/ReadVariableOpReadVariableOp(conv3d_70_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_70/Conv3D/ReadVariableOp�
conv3d_70/Conv3DConv3D conv3d_69/Softplus:activations:0'conv3d_70/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_70/Conv3D�
 conv3d_70/BiasAdd/ReadVariableOpReadVariableOp)conv3d_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_70/BiasAdd/ReadVariableOp�
conv3d_70/BiasAddBiasAddconv3d_70/Conv3D:output:0(conv3d_70/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_70/BiasAdd�
IdentityIdentityconv3d_70/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp!^conv3d_64/BiasAdd/ReadVariableOp ^conv3d_64/Conv3D/ReadVariableOp!^conv3d_65/BiasAdd/ReadVariableOp ^conv3d_65/Conv3D/ReadVariableOp!^conv3d_66/BiasAdd/ReadVariableOp ^conv3d_66/Conv3D/ReadVariableOp!^conv3d_67/BiasAdd/ReadVariableOp ^conv3d_67/Conv3D/ReadVariableOp!^conv3d_68/BiasAdd/ReadVariableOp ^conv3d_68/Conv3D/ReadVariableOp!^conv3d_69/BiasAdd/ReadVariableOp ^conv3d_69/Conv3D/ReadVariableOp!^conv3d_70/BiasAdd/ReadVariableOp ^conv3d_70/Conv3D/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2D
 conv3d_64/BiasAdd/ReadVariableOp conv3d_64/BiasAdd/ReadVariableOp2B
conv3d_64/Conv3D/ReadVariableOpconv3d_64/Conv3D/ReadVariableOp2D
 conv3d_65/BiasAdd/ReadVariableOp conv3d_65/BiasAdd/ReadVariableOp2B
conv3d_65/Conv3D/ReadVariableOpconv3d_65/Conv3D/ReadVariableOp2D
 conv3d_66/BiasAdd/ReadVariableOp conv3d_66/BiasAdd/ReadVariableOp2B
conv3d_66/Conv3D/ReadVariableOpconv3d_66/Conv3D/ReadVariableOp2D
 conv3d_67/BiasAdd/ReadVariableOp conv3d_67/BiasAdd/ReadVariableOp2B
conv3d_67/Conv3D/ReadVariableOpconv3d_67/Conv3D/ReadVariableOp2D
 conv3d_68/BiasAdd/ReadVariableOp conv3d_68/BiasAdd/ReadVariableOp2B
conv3d_68/Conv3D/ReadVariableOpconv3d_68/Conv3D/ReadVariableOp2D
 conv3d_69/BiasAdd/ReadVariableOp conv3d_69/BiasAdd/ReadVariableOp2B
conv3d_69/Conv3D/ReadVariableOpconv3d_69/Conv3D/ReadVariableOp2D
 conv3d_70/BiasAdd/ReadVariableOp conv3d_70/BiasAdd/ReadVariableOp2B
conv3d_70/Conv3D/ReadVariableOpconv3d_70/Conv3D/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
*__inference_model_16_layer_call_fn_4441991

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
 *3
_output_shapes!
:���������  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_44414042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
U
5__inference_range_conversion_16_layer_call_fn_4442303

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
:���������  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_44411752
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  :_ [
3
_output_shapes!
:���������  
$
_user_specified_name
parameters
��
�
"__inference__wrapped_model_4441062	
inputO
1model_16_conv3d_64_conv3d_readvariableop_resource:@
2model_16_conv3d_64_biasadd_readvariableop_resource:O
1model_16_conv3d_65_conv3d_readvariableop_resource:@
2model_16_conv3d_65_biasadd_readvariableop_resource:O
1model_16_conv3d_66_conv3d_readvariableop_resource:@
2model_16_conv3d_66_biasadd_readvariableop_resource:B
0model_16_dense_16_matmul_readvariableop_resource:@@?
1model_16_dense_16_biasadd_readvariableop_resource:@O
1model_16_conv3d_67_conv3d_readvariableop_resource:@
2model_16_conv3d_67_biasadd_readvariableop_resource:O
1model_16_conv3d_68_conv3d_readvariableop_resource:@
2model_16_conv3d_68_biasadd_readvariableop_resource:O
1model_16_conv3d_69_conv3d_readvariableop_resource:@
2model_16_conv3d_69_biasadd_readvariableop_resource:O
1model_16_conv3d_70_conv3d_readvariableop_resource:@
2model_16_conv3d_70_biasadd_readvariableop_resource:
identity��)model_16/conv3d_64/BiasAdd/ReadVariableOp�(model_16/conv3d_64/Conv3D/ReadVariableOp�)model_16/conv3d_65/BiasAdd/ReadVariableOp�(model_16/conv3d_65/Conv3D/ReadVariableOp�)model_16/conv3d_66/BiasAdd/ReadVariableOp�(model_16/conv3d_66/Conv3D/ReadVariableOp�)model_16/conv3d_67/BiasAdd/ReadVariableOp�(model_16/conv3d_67/Conv3D/ReadVariableOp�)model_16/conv3d_68/BiasAdd/ReadVariableOp�(model_16/conv3d_68/Conv3D/ReadVariableOp�)model_16/conv3d_69/BiasAdd/ReadVariableOp�(model_16/conv3d_69/Conv3D/ReadVariableOp�)model_16/conv3d_70/BiasAdd/ReadVariableOp�(model_16/conv3d_70/Conv3D/ReadVariableOp�(model_16/dense_16/BiasAdd/ReadVariableOp�'model_16/dense_16/MatMul/ReadVariableOp�
9model_16/tf.__operators__.getitem_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_16/tf.__operators__.getitem_178/strided_slice/stack�
;model_16/tf.__operators__.getitem_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_16/tf.__operators__.getitem_178/strided_slice/stack_1�
;model_16/tf.__operators__.getitem_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_16/tf.__operators__.getitem_178/strided_slice/stack_2�
3model_16/tf.__operators__.getitem_178/strided_sliceStridedSliceinputBmodel_16/tf.__operators__.getitem_178/strided_slice/stack:output:0Dmodel_16/tf.__operators__.getitem_178/strided_slice/stack_1:output:0Dmodel_16/tf.__operators__.getitem_178/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_16/tf.__operators__.getitem_178/strided_slice�
"model_16/range_conversion_16/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_16/range_conversion_16/sub/y�
 model_16/range_conversion_16/subSub<model_16/tf.__operators__.getitem_178/strided_slice:output:0+model_16/range_conversion_16/sub/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_16/range_conversion_16/sub�
&model_16/range_conversion_16/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_16/range_conversion_16/truediv/y�
$model_16/range_conversion_16/truedivRealDiv$model_16/range_conversion_16/sub:z:0/model_16/range_conversion_16/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2&
$model_16/range_conversion_16/truediv�
"model_16/range_conversion_16/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_16/range_conversion_16/mul/y�
 model_16/range_conversion_16/mulMul(model_16/range_conversion_16/truediv:z:0+model_16/range_conversion_16/mul/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_16/range_conversion_16/mul�
"model_16/range_conversion_16/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_16/range_conversion_16/add/y�
 model_16/range_conversion_16/addAddV2$model_16/range_conversion_16/mul:z:0+model_16/range_conversion_16/add/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_16/range_conversion_16/add�
9model_16/tf.__operators__.getitem_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_16/tf.__operators__.getitem_179/strided_slice/stack�
;model_16/tf.__operators__.getitem_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_16/tf.__operators__.getitem_179/strided_slice/stack_1�
;model_16/tf.__operators__.getitem_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_16/tf.__operators__.getitem_179/strided_slice/stack_2�
3model_16/tf.__operators__.getitem_179/strided_sliceStridedSliceinputBmodel_16/tf.__operators__.getitem_179/strided_slice/stack:output:0Dmodel_16/tf.__operators__.getitem_179/strided_slice/stack_1:output:0Dmodel_16/tf.__operators__.getitem_179/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_16/tf.__operators__.getitem_179/strided_slice�
"model_16/tf.concat_197/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_16/tf.concat_197/concat/axis�
model_16/tf.concat_197/concatConcatV2$model_16/range_conversion_16/add:z:0<model_16/tf.__operators__.getitem_179/strided_slice:output:0+model_16/tf.concat_197/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_16/tf.concat_197/concat�
(model_16/conv3d_64/Conv3D/ReadVariableOpReadVariableOp1model_16_conv3d_64_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_16/conv3d_64/Conv3D/ReadVariableOp�
model_16/conv3d_64/Conv3DConv3D&model_16/tf.concat_197/concat:output:00model_16/conv3d_64/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_16/conv3d_64/Conv3D�
)model_16/conv3d_64/BiasAdd/ReadVariableOpReadVariableOp2model_16_conv3d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_16/conv3d_64/BiasAdd/ReadVariableOp�
model_16/conv3d_64/BiasAddBiasAdd"model_16/conv3d_64/Conv3D:output:01model_16/conv3d_64/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_16/conv3d_64/BiasAdd�
model_16/conv3d_64/SoftplusSoftplus#model_16/conv3d_64/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_16/conv3d_64/Softplus�
,model_16/average_pooling3d_24/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_16/average_pooling3d_24/transpose/perm�
'model_16/average_pooling3d_24/transpose	Transpose)model_16/conv3d_64/Softplus:activations:05model_16/average_pooling3d_24/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2)
'model_16/average_pooling3d_24/transpose�
'model_16/average_pooling3d_24/AvgPool3D	AvgPool3D+model_16/average_pooling3d_24/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_16/average_pooling3d_24/AvgPool3D�
.model_16/average_pooling3d_24/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_16/average_pooling3d_24/transpose_1/perm�
)model_16/average_pooling3d_24/transpose_1	Transpose0model_16/average_pooling3d_24/AvgPool3D:output:07model_16/average_pooling3d_24/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_16/average_pooling3d_24/transpose_1�
(model_16/conv3d_65/Conv3D/ReadVariableOpReadVariableOp1model_16_conv3d_65_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_16/conv3d_65/Conv3D/ReadVariableOp�
model_16/conv3d_65/Conv3DConv3D-model_16/average_pooling3d_24/transpose_1:y:00model_16/conv3d_65/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_16/conv3d_65/Conv3D�
)model_16/conv3d_65/BiasAdd/ReadVariableOpReadVariableOp2model_16_conv3d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_16/conv3d_65/BiasAdd/ReadVariableOp�
model_16/conv3d_65/BiasAddBiasAdd"model_16/conv3d_65/Conv3D:output:01model_16/conv3d_65/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_16/conv3d_65/BiasAdd�
model_16/conv3d_65/SoftplusSoftplus#model_16/conv3d_65/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_16/conv3d_65/Softplus�
,model_16/average_pooling3d_25/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_16/average_pooling3d_25/transpose/perm�
'model_16/average_pooling3d_25/transpose	Transpose)model_16/conv3d_65/Softplus:activations:05model_16/average_pooling3d_25/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_16/average_pooling3d_25/transpose�
'model_16/average_pooling3d_25/AvgPool3D	AvgPool3D+model_16/average_pooling3d_25/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_16/average_pooling3d_25/AvgPool3D�
.model_16/average_pooling3d_25/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_16/average_pooling3d_25/transpose_1/perm�
)model_16/average_pooling3d_25/transpose_1	Transpose0model_16/average_pooling3d_25/AvgPool3D:output:07model_16/average_pooling3d_25/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_16/average_pooling3d_25/transpose_1�
(model_16/conv3d_66/Conv3D/ReadVariableOpReadVariableOp1model_16_conv3d_66_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_16/conv3d_66/Conv3D/ReadVariableOp�
model_16/conv3d_66/Conv3DConv3D-model_16/average_pooling3d_25/transpose_1:y:00model_16/conv3d_66/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_16/conv3d_66/Conv3D�
)model_16/conv3d_66/BiasAdd/ReadVariableOpReadVariableOp2model_16_conv3d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_16/conv3d_66/BiasAdd/ReadVariableOp�
model_16/conv3d_66/BiasAddBiasAdd"model_16/conv3d_66/Conv3D:output:01model_16/conv3d_66/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_16/conv3d_66/BiasAdd�
model_16/conv3d_66/SoftplusSoftplus#model_16/conv3d_66/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_16/conv3d_66/Softplus�
,model_16/average_pooling3d_26/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_16/average_pooling3d_26/transpose/perm�
'model_16/average_pooling3d_26/transpose	Transpose)model_16/conv3d_66/Softplus:activations:05model_16/average_pooling3d_26/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_16/average_pooling3d_26/transpose�
'model_16/average_pooling3d_26/AvgPool3D	AvgPool3D+model_16/average_pooling3d_26/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_16/average_pooling3d_26/AvgPool3D�
.model_16/average_pooling3d_26/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_16/average_pooling3d_26/transpose_1/perm�
)model_16/average_pooling3d_26/transpose_1	Transpose0model_16/average_pooling3d_26/AvgPool3D:output:07model_16/average_pooling3d_26/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_16/average_pooling3d_26/transpose_1�
model_16/reshape_32/ShapeShape-model_16/average_pooling3d_26/transpose_1:y:0*
T0*
_output_shapes
:2
model_16/reshape_32/Shape�
'model_16/reshape_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_16/reshape_32/strided_slice/stack�
)model_16/reshape_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_16/reshape_32/strided_slice/stack_1�
)model_16/reshape_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_16/reshape_32/strided_slice/stack_2�
!model_16/reshape_32/strided_sliceStridedSlice"model_16/reshape_32/Shape:output:00model_16/reshape_32/strided_slice/stack:output:02model_16/reshape_32/strided_slice/stack_1:output:02model_16/reshape_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_16/reshape_32/strided_slice�
#model_16/reshape_32/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_16/reshape_32/Reshape/shape/1�
!model_16/reshape_32/Reshape/shapePack*model_16/reshape_32/strided_slice:output:0,model_16/reshape_32/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_16/reshape_32/Reshape/shape�
model_16/reshape_32/ReshapeReshape-model_16/average_pooling3d_26/transpose_1:y:0*model_16/reshape_32/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_16/reshape_32/Reshape�
'model_16/dense_16/MatMul/ReadVariableOpReadVariableOp0model_16_dense_16_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_16/dense_16/MatMul/ReadVariableOp�
model_16/dense_16/MatMulMatMul$model_16/reshape_32/Reshape:output:0/model_16/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_16/dense_16/MatMul�
(model_16/dense_16/BiasAdd/ReadVariableOpReadVariableOp1model_16_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_16/dense_16/BiasAdd/ReadVariableOp�
model_16/dense_16/BiasAddBiasAdd"model_16/dense_16/MatMul:product:00model_16/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_16/dense_16/BiasAdd�
model_16/dense_16/SoftplusSoftplus"model_16/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_16/dense_16/Softplus�
model_16/reshape_33/ShapeShape(model_16/dense_16/Softplus:activations:0*
T0*
_output_shapes
:2
model_16/reshape_33/Shape�
'model_16/reshape_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_16/reshape_33/strided_slice/stack�
)model_16/reshape_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_16/reshape_33/strided_slice/stack_1�
)model_16/reshape_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_16/reshape_33/strided_slice/stack_2�
!model_16/reshape_33/strided_sliceStridedSlice"model_16/reshape_33/Shape:output:00model_16/reshape_33/strided_slice/stack:output:02model_16/reshape_33/strided_slice/stack_1:output:02model_16/reshape_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_16/reshape_33/strided_slice�
#model_16/reshape_33/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_16/reshape_33/Reshape/shape/1�
#model_16/reshape_33/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_16/reshape_33/Reshape/shape/2�
#model_16/reshape_33/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_16/reshape_33/Reshape/shape/3�
#model_16/reshape_33/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_16/reshape_33/Reshape/shape/4�
!model_16/reshape_33/Reshape/shapePack*model_16/reshape_33/strided_slice:output:0,model_16/reshape_33/Reshape/shape/1:output:0,model_16/reshape_33/Reshape/shape/2:output:0,model_16/reshape_33/Reshape/shape/3:output:0,model_16/reshape_33/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_16/reshape_33/Reshape/shape�
model_16/reshape_33/ReshapeReshape(model_16/dense_16/Softplus:activations:0*model_16/reshape_33/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_16/reshape_33/Reshape�
%model_16/tf.reshape_216/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_16/tf.reshape_216/Reshape/shape�
model_16/tf.reshape_216/ReshapeReshape$model_16/reshape_33/Reshape:output:0.model_16/tf.reshape_216/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_16/tf.reshape_216/Reshape�
#model_16/tf.tile_108/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_16/tf.tile_108/Tile/multiples�
model_16/tf.tile_108/TileTile(model_16/tf.reshape_216/Reshape:output:0,model_16/tf.tile_108/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_16/tf.tile_108/Tile�
%model_16/tf.reshape_217/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_16/tf.reshape_217/Reshape/shape�
model_16/tf.reshape_217/ReshapeReshape"model_16/tf.tile_108/Tile:output:0.model_16/tf.reshape_217/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_16/tf.reshape_217/Reshape�
"model_16/tf.concat_198/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_16/tf.concat_198/concat/axis�
model_16/tf.concat_198/concatConcatV2(model_16/tf.reshape_217/Reshape:output:0)model_16/conv3d_66/Softplus:activations:0+model_16/tf.concat_198/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_16/tf.concat_198/concat�
(model_16/conv3d_67/Conv3D/ReadVariableOpReadVariableOp1model_16_conv3d_67_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_16/conv3d_67/Conv3D/ReadVariableOp�
model_16/conv3d_67/Conv3DConv3D&model_16/tf.concat_198/concat:output:00model_16/conv3d_67/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_16/conv3d_67/Conv3D�
)model_16/conv3d_67/BiasAdd/ReadVariableOpReadVariableOp2model_16_conv3d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_16/conv3d_67/BiasAdd/ReadVariableOp�
model_16/conv3d_67/BiasAddBiasAdd"model_16/conv3d_67/Conv3D:output:01model_16/conv3d_67/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_16/conv3d_67/BiasAdd�
model_16/conv3d_67/SoftplusSoftplus#model_16/conv3d_67/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_16/conv3d_67/Softplus�
%model_16/tf.reshape_218/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_16/tf.reshape_218/Reshape/shape�
model_16/tf.reshape_218/ReshapeReshape)model_16/conv3d_67/Softplus:activations:0.model_16/tf.reshape_218/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_16/tf.reshape_218/Reshape�
#model_16/tf.tile_109/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_16/tf.tile_109/Tile/multiples�
model_16/tf.tile_109/TileTile(model_16/tf.reshape_218/Reshape:output:0,model_16/tf.tile_109/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_16/tf.tile_109/Tile�
%model_16/tf.reshape_219/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_16/tf.reshape_219/Reshape/shape�
model_16/tf.reshape_219/ReshapeReshape"model_16/tf.tile_109/Tile:output:0.model_16/tf.reshape_219/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_16/tf.reshape_219/Reshape�
"model_16/tf.concat_199/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_16/tf.concat_199/concat/axis�
model_16/tf.concat_199/concatConcatV2(model_16/tf.reshape_219/Reshape:output:0)model_16/conv3d_65/Softplus:activations:0+model_16/tf.concat_199/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_16/tf.concat_199/concat�
(model_16/conv3d_68/Conv3D/ReadVariableOpReadVariableOp1model_16_conv3d_68_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_16/conv3d_68/Conv3D/ReadVariableOp�
model_16/conv3d_68/Conv3DConv3D&model_16/tf.concat_199/concat:output:00model_16/conv3d_68/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_16/conv3d_68/Conv3D�
)model_16/conv3d_68/BiasAdd/ReadVariableOpReadVariableOp2model_16_conv3d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_16/conv3d_68/BiasAdd/ReadVariableOp�
model_16/conv3d_68/BiasAddBiasAdd"model_16/conv3d_68/Conv3D:output:01model_16/conv3d_68/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_16/conv3d_68/BiasAdd�
model_16/conv3d_68/SoftplusSoftplus#model_16/conv3d_68/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_16/conv3d_68/Softplus�
%model_16/tf.reshape_220/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_16/tf.reshape_220/Reshape/shape�
model_16/tf.reshape_220/ReshapeReshape)model_16/conv3d_68/Softplus:activations:0.model_16/tf.reshape_220/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_16/tf.reshape_220/Reshape�
#model_16/tf.tile_110/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_16/tf.tile_110/Tile/multiples�
model_16/tf.tile_110/TileTile(model_16/tf.reshape_220/Reshape:output:0,model_16/tf.tile_110/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_16/tf.tile_110/Tile�
%model_16/tf.reshape_221/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2'
%model_16/tf.reshape_221/Reshape/shape�
model_16/tf.reshape_221/ReshapeReshape"model_16/tf.tile_110/Tile:output:0.model_16/tf.reshape_221/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2!
model_16/tf.reshape_221/Reshape�
"model_16/tf.concat_200/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_16/tf.concat_200/concat/axis�
model_16/tf.concat_200/concatConcatV2(model_16/tf.reshape_221/Reshape:output:0)model_16/conv3d_64/Softplus:activations:0+model_16/tf.concat_200/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_16/tf.concat_200/concat�
(model_16/conv3d_69/Conv3D/ReadVariableOpReadVariableOp1model_16_conv3d_69_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_16/conv3d_69/Conv3D/ReadVariableOp�
model_16/conv3d_69/Conv3DConv3D&model_16/tf.concat_200/concat:output:00model_16/conv3d_69/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_16/conv3d_69/Conv3D�
)model_16/conv3d_69/BiasAdd/ReadVariableOpReadVariableOp2model_16_conv3d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_16/conv3d_69/BiasAdd/ReadVariableOp�
model_16/conv3d_69/BiasAddBiasAdd"model_16/conv3d_69/Conv3D:output:01model_16/conv3d_69/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_16/conv3d_69/BiasAdd�
model_16/conv3d_69/SoftplusSoftplus#model_16/conv3d_69/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_16/conv3d_69/Softplus�
(model_16/conv3d_70/Conv3D/ReadVariableOpReadVariableOp1model_16_conv3d_70_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_16/conv3d_70/Conv3D/ReadVariableOp�
model_16/conv3d_70/Conv3DConv3D)model_16/conv3d_69/Softplus:activations:00model_16/conv3d_70/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_16/conv3d_70/Conv3D�
)model_16/conv3d_70/BiasAdd/ReadVariableOpReadVariableOp2model_16_conv3d_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_16/conv3d_70/BiasAdd/ReadVariableOp�
model_16/conv3d_70/BiasAddBiasAdd"model_16/conv3d_70/Conv3D:output:01model_16/conv3d_70/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_16/conv3d_70/BiasAdd�
IdentityIdentity#model_16/conv3d_70/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp*^model_16/conv3d_64/BiasAdd/ReadVariableOp)^model_16/conv3d_64/Conv3D/ReadVariableOp*^model_16/conv3d_65/BiasAdd/ReadVariableOp)^model_16/conv3d_65/Conv3D/ReadVariableOp*^model_16/conv3d_66/BiasAdd/ReadVariableOp)^model_16/conv3d_66/Conv3D/ReadVariableOp*^model_16/conv3d_67/BiasAdd/ReadVariableOp)^model_16/conv3d_67/Conv3D/ReadVariableOp*^model_16/conv3d_68/BiasAdd/ReadVariableOp)^model_16/conv3d_68/Conv3D/ReadVariableOp*^model_16/conv3d_69/BiasAdd/ReadVariableOp)^model_16/conv3d_69/Conv3D/ReadVariableOp*^model_16/conv3d_70/BiasAdd/ReadVariableOp)^model_16/conv3d_70/Conv3D/ReadVariableOp)^model_16/dense_16/BiasAdd/ReadVariableOp(^model_16/dense_16/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2V
)model_16/conv3d_64/BiasAdd/ReadVariableOp)model_16/conv3d_64/BiasAdd/ReadVariableOp2T
(model_16/conv3d_64/Conv3D/ReadVariableOp(model_16/conv3d_64/Conv3D/ReadVariableOp2V
)model_16/conv3d_65/BiasAdd/ReadVariableOp)model_16/conv3d_65/BiasAdd/ReadVariableOp2T
(model_16/conv3d_65/Conv3D/ReadVariableOp(model_16/conv3d_65/Conv3D/ReadVariableOp2V
)model_16/conv3d_66/BiasAdd/ReadVariableOp)model_16/conv3d_66/BiasAdd/ReadVariableOp2T
(model_16/conv3d_66/Conv3D/ReadVariableOp(model_16/conv3d_66/Conv3D/ReadVariableOp2V
)model_16/conv3d_67/BiasAdd/ReadVariableOp)model_16/conv3d_67/BiasAdd/ReadVariableOp2T
(model_16/conv3d_67/Conv3D/ReadVariableOp(model_16/conv3d_67/Conv3D/ReadVariableOp2V
)model_16/conv3d_68/BiasAdd/ReadVariableOp)model_16/conv3d_68/BiasAdd/ReadVariableOp2T
(model_16/conv3d_68/Conv3D/ReadVariableOp(model_16/conv3d_68/Conv3D/ReadVariableOp2V
)model_16/conv3d_69/BiasAdd/ReadVariableOp)model_16/conv3d_69/BiasAdd/ReadVariableOp2T
(model_16/conv3d_69/Conv3D/ReadVariableOp(model_16/conv3d_69/Conv3D/ReadVariableOp2V
)model_16/conv3d_70/BiasAdd/ReadVariableOp)model_16/conv3d_70/BiasAdd/ReadVariableOp2T
(model_16/conv3d_70/Conv3D/ReadVariableOp(model_16/conv3d_70/Conv3D/ReadVariableOp2T
(model_16/dense_16/BiasAdd/ReadVariableOp(model_16/dense_16/BiasAdd/ReadVariableOp2R
'model_16/dense_16/MatMul/ReadVariableOp'model_16/dense_16/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
F__inference_conv3d_66_layer_call_and_return_conditional_losses_4442431

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
�
%__inference_signature_wrapper_4441954	
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
 *3
_output_shapes!
:���������  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *+
f&R$
"__inference__wrapped_model_44410622
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�	
m
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4442411

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
E__inference_model_16_layer_call_and_return_conditional_losses_4442163

inputsF
(conv3d_64_conv3d_readvariableop_resource:7
)conv3d_64_biasadd_readvariableop_resource:F
(conv3d_65_conv3d_readvariableop_resource:7
)conv3d_65_biasadd_readvariableop_resource:F
(conv3d_66_conv3d_readvariableop_resource:7
)conv3d_66_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:@@6
(dense_16_biasadd_readvariableop_resource:@F
(conv3d_67_conv3d_readvariableop_resource:7
)conv3d_67_biasadd_readvariableop_resource:F
(conv3d_68_conv3d_readvariableop_resource:7
)conv3d_68_biasadd_readvariableop_resource:F
(conv3d_69_conv3d_readvariableop_resource:7
)conv3d_69_biasadd_readvariableop_resource:F
(conv3d_70_conv3d_readvariableop_resource:7
)conv3d_70_biasadd_readvariableop_resource:
identity�� conv3d_64/BiasAdd/ReadVariableOp�conv3d_64/Conv3D/ReadVariableOp� conv3d_65/BiasAdd/ReadVariableOp�conv3d_65/Conv3D/ReadVariableOp� conv3d_66/BiasAdd/ReadVariableOp�conv3d_66/Conv3D/ReadVariableOp� conv3d_67/BiasAdd/ReadVariableOp�conv3d_67/Conv3D/ReadVariableOp� conv3d_68/BiasAdd/ReadVariableOp�conv3d_68/Conv3D/ReadVariableOp� conv3d_69/BiasAdd/ReadVariableOp�conv3d_69/Conv3D/ReadVariableOp� conv3d_70/BiasAdd/ReadVariableOp�conv3d_70/Conv3D/ReadVariableOp�dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�
0tf.__operators__.getitem_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_178/strided_slice/stack�
2tf.__operators__.getitem_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_178/strided_slice/stack_1�
2tf.__operators__.getitem_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_178/strided_slice/stack_2�
*tf.__operators__.getitem_178/strided_sliceStridedSliceinputs9tf.__operators__.getitem_178/strided_slice/stack:output:0;tf.__operators__.getitem_178/strided_slice/stack_1:output:0;tf.__operators__.getitem_178/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_178/strided_slice{
range_conversion_16/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_16/sub/y�
range_conversion_16/subSub3tf.__operators__.getitem_178/strided_slice:output:0"range_conversion_16/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/sub�
range_conversion_16/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_16/truediv/y�
range_conversion_16/truedivRealDivrange_conversion_16/sub:z:0&range_conversion_16/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/truediv{
range_conversion_16/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_16/mul/y�
range_conversion_16/mulMulrange_conversion_16/truediv:z:0"range_conversion_16/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/mul{
range_conversion_16/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_16/add/y�
range_conversion_16/addAddV2range_conversion_16/mul:z:0"range_conversion_16/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_16/add�
0tf.__operators__.getitem_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_179/strided_slice/stack�
2tf.__operators__.getitem_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_179/strided_slice/stack_1�
2tf.__operators__.getitem_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_179/strided_slice/stack_2�
*tf.__operators__.getitem_179/strided_sliceStridedSliceinputs9tf.__operators__.getitem_179/strided_slice/stack:output:0;tf.__operators__.getitem_179/strided_slice/stack_1:output:0;tf.__operators__.getitem_179/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_179/strided_slicex
tf.concat_197/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_197/concat/axis�
tf.concat_197/concatConcatV2range_conversion_16/add:z:03tf.__operators__.getitem_179/strided_slice:output:0"tf.concat_197/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_197/concat�
conv3d_64/Conv3D/ReadVariableOpReadVariableOp(conv3d_64_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_64/Conv3D/ReadVariableOp�
conv3d_64/Conv3DConv3Dtf.concat_197/concat:output:0'conv3d_64/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_64/Conv3D�
 conv3d_64/BiasAdd/ReadVariableOpReadVariableOp)conv3d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_64/BiasAdd/ReadVariableOp�
conv3d_64/BiasAddBiasAddconv3d_64/Conv3D:output:0(conv3d_64/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_64/BiasAdd�
conv3d_64/SoftplusSoftplusconv3d_64/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_64/Softplus�
#average_pooling3d_24/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_24/transpose/perm�
average_pooling3d_24/transpose	Transpose conv3d_64/Softplus:activations:0,average_pooling3d_24/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_24/transpose�
average_pooling3d_24/AvgPool3D	AvgPool3D"average_pooling3d_24/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_24/AvgPool3D�
%average_pooling3d_24/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_24/transpose_1/perm�
 average_pooling3d_24/transpose_1	Transpose'average_pooling3d_24/AvgPool3D:output:0.average_pooling3d_24/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_24/transpose_1�
conv3d_65/Conv3D/ReadVariableOpReadVariableOp(conv3d_65_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_65/Conv3D/ReadVariableOp�
conv3d_65/Conv3DConv3D$average_pooling3d_24/transpose_1:y:0'conv3d_65/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_65/Conv3D�
 conv3d_65/BiasAdd/ReadVariableOpReadVariableOp)conv3d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_65/BiasAdd/ReadVariableOp�
conv3d_65/BiasAddBiasAddconv3d_65/Conv3D:output:0(conv3d_65/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_65/BiasAdd�
conv3d_65/SoftplusSoftplusconv3d_65/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_65/Softplus�
#average_pooling3d_25/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_25/transpose/perm�
average_pooling3d_25/transpose	Transpose conv3d_65/Softplus:activations:0,average_pooling3d_25/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_25/transpose�
average_pooling3d_25/AvgPool3D	AvgPool3D"average_pooling3d_25/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_25/AvgPool3D�
%average_pooling3d_25/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_25/transpose_1/perm�
 average_pooling3d_25/transpose_1	Transpose'average_pooling3d_25/AvgPool3D:output:0.average_pooling3d_25/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_25/transpose_1�
conv3d_66/Conv3D/ReadVariableOpReadVariableOp(conv3d_66_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_66/Conv3D/ReadVariableOp�
conv3d_66/Conv3DConv3D$average_pooling3d_25/transpose_1:y:0'conv3d_66/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_66/Conv3D�
 conv3d_66/BiasAdd/ReadVariableOpReadVariableOp)conv3d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_66/BiasAdd/ReadVariableOp�
conv3d_66/BiasAddBiasAddconv3d_66/Conv3D:output:0(conv3d_66/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_66/BiasAdd�
conv3d_66/SoftplusSoftplusconv3d_66/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_66/Softplus�
#average_pooling3d_26/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_26/transpose/perm�
average_pooling3d_26/transpose	Transpose conv3d_66/Softplus:activations:0,average_pooling3d_26/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_26/transpose�
average_pooling3d_26/AvgPool3D	AvgPool3D"average_pooling3d_26/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_26/AvgPool3D�
%average_pooling3d_26/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_26/transpose_1/perm�
 average_pooling3d_26/transpose_1	Transpose'average_pooling3d_26/AvgPool3D:output:0.average_pooling3d_26/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_26/transpose_1x
reshape_32/ShapeShape$average_pooling3d_26/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_32/Shape�
reshape_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_32/strided_slice/stack�
 reshape_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_32/strided_slice/stack_1�
 reshape_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_32/strided_slice/stack_2�
reshape_32/strided_sliceStridedSlicereshape_32/Shape:output:0'reshape_32/strided_slice/stack:output:0)reshape_32/strided_slice/stack_1:output:0)reshape_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_32/strided_slicez
reshape_32/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_32/Reshape/shape/1�
reshape_32/Reshape/shapePack!reshape_32/strided_slice:output:0#reshape_32/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_32/Reshape/shape�
reshape_32/ReshapeReshape$average_pooling3d_26/transpose_1:y:0!reshape_32/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_32/Reshape�
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_16/MatMul/ReadVariableOp�
dense_16/MatMulMatMulreshape_32/Reshape:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_16/MatMul�
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_16/BiasAdd/ReadVariableOp�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_16/BiasAdd
dense_16/SoftplusSoftplusdense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_16/Softpluss
reshape_33/ShapeShapedense_16/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_33/Shape�
reshape_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_33/strided_slice/stack�
 reshape_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_33/strided_slice/stack_1�
 reshape_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_33/strided_slice/stack_2�
reshape_33/strided_sliceStridedSlicereshape_33/Shape:output:0'reshape_33/strided_slice/stack:output:0)reshape_33/strided_slice/stack_1:output:0)reshape_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_33/strided_slicez
reshape_33/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/1z
reshape_33/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/2z
reshape_33/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/3z
reshape_33/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_33/Reshape/shape/4�
reshape_33/Reshape/shapePack!reshape_33/strided_slice:output:0#reshape_33/Reshape/shape/1:output:0#reshape_33/Reshape/shape/2:output:0#reshape_33/Reshape/shape/3:output:0#reshape_33/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_33/Reshape/shape�
reshape_33/ReshapeReshapedense_16/Softplus:activations:0!reshape_33/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_33/Reshape�
tf.reshape_216/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_216/Reshape/shape�
tf.reshape_216/ReshapeReshapereshape_33/Reshape:output:0%tf.reshape_216/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_216/Reshape�
tf.tile_108/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_108/Tile/multiples�
tf.tile_108/TileTiletf.reshape_216/Reshape:output:0#tf.tile_108/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_108/Tile�
tf.reshape_217/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_217/Reshape/shape�
tf.reshape_217/ReshapeReshapetf.tile_108/Tile:output:0%tf.reshape_217/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_217/Reshapex
tf.concat_198/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_198/concat/axis�
tf.concat_198/concatConcatV2tf.reshape_217/Reshape:output:0 conv3d_66/Softplus:activations:0"tf.concat_198/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_198/concat�
conv3d_67/Conv3D/ReadVariableOpReadVariableOp(conv3d_67_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_67/Conv3D/ReadVariableOp�
conv3d_67/Conv3DConv3Dtf.concat_198/concat:output:0'conv3d_67/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_67/Conv3D�
 conv3d_67/BiasAdd/ReadVariableOpReadVariableOp)conv3d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_67/BiasAdd/ReadVariableOp�
conv3d_67/BiasAddBiasAddconv3d_67/Conv3D:output:0(conv3d_67/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_67/BiasAdd�
conv3d_67/SoftplusSoftplusconv3d_67/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_67/Softplus�
tf.reshape_218/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_218/Reshape/shape�
tf.reshape_218/ReshapeReshape conv3d_67/Softplus:activations:0%tf.reshape_218/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_218/Reshape�
tf.tile_109/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_109/Tile/multiples�
tf.tile_109/TileTiletf.reshape_218/Reshape:output:0#tf.tile_109/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_109/Tile�
tf.reshape_219/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_219/Reshape/shape�
tf.reshape_219/ReshapeReshapetf.tile_109/Tile:output:0%tf.reshape_219/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_219/Reshapex
tf.concat_199/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_199/concat/axis�
tf.concat_199/concatConcatV2tf.reshape_219/Reshape:output:0 conv3d_65/Softplus:activations:0"tf.concat_199/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_199/concat�
conv3d_68/Conv3D/ReadVariableOpReadVariableOp(conv3d_68_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_68/Conv3D/ReadVariableOp�
conv3d_68/Conv3DConv3Dtf.concat_199/concat:output:0'conv3d_68/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_68/Conv3D�
 conv3d_68/BiasAdd/ReadVariableOpReadVariableOp)conv3d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_68/BiasAdd/ReadVariableOp�
conv3d_68/BiasAddBiasAddconv3d_68/Conv3D:output:0(conv3d_68/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_68/BiasAdd�
conv3d_68/SoftplusSoftplusconv3d_68/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_68/Softplus�
tf.reshape_220/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_220/Reshape/shape�
tf.reshape_220/ReshapeReshape conv3d_68/Softplus:activations:0%tf.reshape_220/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_220/Reshape�
tf.tile_110/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_110/Tile/multiples�
tf.tile_110/TileTiletf.reshape_220/Reshape:output:0#tf.tile_110/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_110/Tile�
tf.reshape_221/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_221/Reshape/shape�
tf.reshape_221/ReshapeReshapetf.tile_110/Tile:output:0%tf.reshape_221/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_221/Reshapex
tf.concat_200/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_200/concat/axis�
tf.concat_200/concatConcatV2tf.reshape_221/Reshape:output:0 conv3d_64/Softplus:activations:0"tf.concat_200/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_200/concat�
conv3d_69/Conv3D/ReadVariableOpReadVariableOp(conv3d_69_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_69/Conv3D/ReadVariableOp�
conv3d_69/Conv3DConv3Dtf.concat_200/concat:output:0'conv3d_69/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_69/Conv3D�
 conv3d_69/BiasAdd/ReadVariableOpReadVariableOp)conv3d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_69/BiasAdd/ReadVariableOp�
conv3d_69/BiasAddBiasAddconv3d_69/Conv3D:output:0(conv3d_69/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_69/BiasAdd�
conv3d_69/SoftplusSoftplusconv3d_69/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_69/Softplus�
conv3d_70/Conv3D/ReadVariableOpReadVariableOp(conv3d_70_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_70/Conv3D/ReadVariableOp�
conv3d_70/Conv3DConv3D conv3d_69/Softplus:activations:0'conv3d_70/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_70/Conv3D�
 conv3d_70/BiasAdd/ReadVariableOpReadVariableOp)conv3d_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_70/BiasAdd/ReadVariableOp�
conv3d_70/BiasAddBiasAddconv3d_70/Conv3D:output:0(conv3d_70/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_70/BiasAdd�
IdentityIdentityconv3d_70/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp!^conv3d_64/BiasAdd/ReadVariableOp ^conv3d_64/Conv3D/ReadVariableOp!^conv3d_65/BiasAdd/ReadVariableOp ^conv3d_65/Conv3D/ReadVariableOp!^conv3d_66/BiasAdd/ReadVariableOp ^conv3d_66/Conv3D/ReadVariableOp!^conv3d_67/BiasAdd/ReadVariableOp ^conv3d_67/Conv3D/ReadVariableOp!^conv3d_68/BiasAdd/ReadVariableOp ^conv3d_68/Conv3D/ReadVariableOp!^conv3d_69/BiasAdd/ReadVariableOp ^conv3d_69/Conv3D/ReadVariableOp!^conv3d_70/BiasAdd/ReadVariableOp ^conv3d_70/Conv3D/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2D
 conv3d_64/BiasAdd/ReadVariableOp conv3d_64/BiasAdd/ReadVariableOp2B
conv3d_64/Conv3D/ReadVariableOpconv3d_64/Conv3D/ReadVariableOp2D
 conv3d_65/BiasAdd/ReadVariableOp conv3d_65/BiasAdd/ReadVariableOp2B
conv3d_65/Conv3D/ReadVariableOpconv3d_65/Conv3D/ReadVariableOp2D
 conv3d_66/BiasAdd/ReadVariableOp conv3d_66/BiasAdd/ReadVariableOp2B
conv3d_66/Conv3D/ReadVariableOpconv3d_66/Conv3D/ReadVariableOp2D
 conv3d_67/BiasAdd/ReadVariableOp conv3d_67/BiasAdd/ReadVariableOp2B
conv3d_67/Conv3D/ReadVariableOpconv3d_67/Conv3D/ReadVariableOp2D
 conv3d_68/BiasAdd/ReadVariableOp conv3d_68/BiasAdd/ReadVariableOp2B
conv3d_68/Conv3D/ReadVariableOpconv3d_68/Conv3D/ReadVariableOp2D
 conv3d_69/BiasAdd/ReadVariableOp conv3d_69/BiasAdd/ReadVariableOp2B
conv3d_69/Conv3D/ReadVariableOpconv3d_69/Conv3D/ReadVariableOp2D
 conv3d_70/BiasAdd/ReadVariableOp conv3d_70/BiasAdd/ReadVariableOp2B
conv3d_70/Conv3D/ReadVariableOpconv3d_70/Conv3D/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
+__inference_conv3d_66_layer_call_fn_4442420

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
F__inference_conv3d_66_layer_call_and_return_conditional_losses_44412482
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
�
*__inference_model_16_layer_call_fn_4442028

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
 *3
_output_shapes!
:���������  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_44416752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
F__inference_conv3d_65_layer_call_and_return_conditional_losses_4442383

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
F__inference_conv3d_70_layer_call_and_return_conditional_losses_4442595

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
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
:���������  *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
R
6__inference_average_pooling3d_26_layer_call_fn_4442441

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
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_44412622
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
�
�
+__inference_conv3d_69_layer_call_fn_4442565

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
F__inference_conv3d_69_layer_call_and_return_conditional_losses_44413812
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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4441235

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
F__inference_conv3d_69_layer_call_and_return_conditional_losses_4441381

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
m
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4442363

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
�
R
6__inference_average_pooling3d_26_layer_call_fn_4442436

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
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_44411352
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
�
c
G__inference_reshape_33_layer_call_and_return_conditional_losses_4441310

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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4442354

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
F__inference_conv3d_68_layer_call_and_return_conditional_losses_4441356

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
c
G__inference_reshape_32_layer_call_and_return_conditional_losses_4441276

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
p
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_4441175

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
:���������  2
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
:���������  2	
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
:���������  2
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
:���������  2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  :_ [
3
_output_shapes!
:���������  
$
_user_specified_name
parameters
�

m
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4442402

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
serving_default_input:0���������  I
	conv3d_70<
StatefulPartitionedCall:0���������  tensorflow/serving/predict:��
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
regularization_losses
 	variables
!trainable_variables
"	keras_api
#
signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
�
%regularization_losses
&	variables
'trainable_variables
(	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
)	keras_api"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
�

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1regularization_losses
2	variables
3trainable_variables
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

5kernel
6bias
7regularization_losses
8	variables
9trainable_variables
:	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
;regularization_losses
<	variables
=trainable_variables
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

?kernel
@bias
Aregularization_losses
B	variables
Ctrainable_variables
D	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Eregularization_losses
F	variables
Gtrainable_variables
H	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Mkernel
Nbias
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�

[kernel
\bias
]regularization_losses
^	variables
_trainable_variables
`	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�

ekernel
fbias
gregularization_losses
h	variables
itrainable_variables
j	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
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
�

okernel
pbias
qregularization_losses
r	variables
strainable_variables
t	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

ukernel
vbias
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
�
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
�
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
�
{layer_regularization_losses

|layers
regularization_losses
}layer_metrics
 	variables
~non_trainable_variables
!trainable_variables
metrics
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
 �layer_regularization_losses
�layers
%regularization_losses
�layer_metrics
&	variables
�non_trainable_variables
'trainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
0:. 2conv3d_64/kernel
: 2conv3d_64/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
-regularization_losses
�layer_metrics
.	variables
�non_trainable_variables
/trainable_variables
�metrics
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
 �layer_regularization_losses
�layers
1regularization_losses
�layer_metrics
2	variables
�non_trainable_variables
3trainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:. 2conv3d_65/kernel
: 2conv3d_65/bias
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
7regularization_losses
�layer_metrics
8	variables
�non_trainable_variables
9trainable_variables
�metrics
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
 �layer_regularization_losses
�layers
;regularization_losses
�layer_metrics
<	variables
�non_trainable_variables
=trainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:. 2conv3d_66/kernel
: 2conv3d_66/bias
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
Aregularization_losses
�layer_metrics
B	variables
�non_trainable_variables
Ctrainable_variables
�metrics
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
 �layer_regularization_losses
�layers
Eregularization_losses
�layer_metrics
F	variables
�non_trainable_variables
Gtrainable_variables
�metrics
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
 �layer_regularization_losses
�layers
Iregularization_losses
�layer_metrics
J	variables
�non_trainable_variables
Ktrainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_16/kernel
:@ 2dense_16/bias
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
Oregularization_losses
�layer_metrics
P	variables
�non_trainable_variables
Qtrainable_variables
�metrics
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
 �layer_regularization_losses
�layers
Sregularization_losses
�layer_metrics
T	variables
�non_trainable_variables
Utrainable_variables
�metrics
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
0:. 2conv3d_67/kernel
: 2conv3d_67/bias
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
]regularization_losses
�layer_metrics
^	variables
�non_trainable_variables
_trainable_variables
�metrics
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
0:. 2conv3d_68/kernel
: 2conv3d_68/bias
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
gregularization_losses
�layer_metrics
h	variables
�non_trainable_variables
itrainable_variables
�metrics
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
0:. 2conv3d_69/kernel
: 2conv3d_69/bias
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
qregularization_losses
�layer_metrics
r	variables
�non_trainable_variables
strainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0:. 2conv3d_70/kernel
: 2conv3d_70/bias
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
�
 �layer_regularization_losses
�layers
wregularization_losses
�layer_metrics
x	variables
�non_trainable_variables
ytrainable_variables
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
�2�
*__inference_model_16_layer_call_fn_4441439
*__inference_model_16_layer_call_fn_4441991
*__inference_model_16_layer_call_fn_4442028
*__inference_model_16_layer_call_fn_4441747�
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
�2�
E__inference_model_16_layer_call_and_return_conditional_losses_4442163
E__inference_model_16_layer_call_and_return_conditional_losses_4442298
E__inference_model_16_layer_call_and_return_conditional_losses_4441831
E__inference_model_16_layer_call_and_return_conditional_losses_4441915�
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
"__inference__wrapped_model_4441062input"�
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
�2�
5__inference_range_conversion_16_layer_call_fn_4442303�
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
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_4442315�
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
+__inference_conv3d_64_layer_call_fn_4442324�
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
F__inference_conv3d_64_layer_call_and_return_conditional_losses_4442335�
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
6__inference_average_pooling3d_24_layer_call_fn_4442340
6__inference_average_pooling3d_24_layer_call_fn_4442345�
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
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4442354
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4442363�
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
+__inference_conv3d_65_layer_call_fn_4442372�
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
F__inference_conv3d_65_layer_call_and_return_conditional_losses_4442383�
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
6__inference_average_pooling3d_25_layer_call_fn_4442388
6__inference_average_pooling3d_25_layer_call_fn_4442393�
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
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4442402
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4442411�
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
+__inference_conv3d_66_layer_call_fn_4442420�
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
F__inference_conv3d_66_layer_call_and_return_conditional_losses_4442431�
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
6__inference_average_pooling3d_26_layer_call_fn_4442436
6__inference_average_pooling3d_26_layer_call_fn_4442441�
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
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4442450
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4442459�
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
,__inference_reshape_32_layer_call_fn_4442464�
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
G__inference_reshape_32_layer_call_and_return_conditional_losses_4442476�
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
*__inference_dense_16_layer_call_fn_4442485�
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
E__inference_dense_16_layer_call_and_return_conditional_losses_4442496�
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
,__inference_reshape_33_layer_call_fn_4442501�
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
G__inference_reshape_33_layer_call_and_return_conditional_losses_4442516�
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
+__inference_conv3d_67_layer_call_fn_4442525�
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
F__inference_conv3d_67_layer_call_and_return_conditional_losses_4442536�
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
+__inference_conv3d_68_layer_call_fn_4442545�
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
F__inference_conv3d_68_layer_call_and_return_conditional_losses_4442556�
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
+__inference_conv3d_69_layer_call_fn_4442565�
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
F__inference_conv3d_69_layer_call_and_return_conditional_losses_4442576�
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
+__inference_conv3d_70_layer_call_fn_4442585�
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
F__inference_conv3d_70_layer_call_and_return_conditional_losses_4442595�
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
%__inference_signature_wrapper_4441954input"�
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
"__inference__wrapped_model_4441062�+,56?@MN[\efopuv:�7
0�-
+�(
input���������  
� "A�>
<
	conv3d_70/�,
	conv3d_70���������  �
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4442354�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_24_layer_call_and_return_conditional_losses_4442363p;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_24_layer_call_fn_4442340�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_24_layer_call_fn_4442345c;�8
1�.
,�)
inputs���������  
� "$�!����������
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4442402�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_25_layer_call_and_return_conditional_losses_4442411p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_25_layer_call_fn_4442388�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_25_layer_call_fn_4442393c;�8
1�.
,�)
inputs���������
� "$�!����������
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4442450�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_26_layer_call_and_return_conditional_losses_4442459p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_26_layer_call_fn_4442436�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_26_layer_call_fn_4442441c;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_64_layer_call_and_return_conditional_losses_4442335t+,;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_64_layer_call_fn_4442324g+,;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_conv3d_65_layer_call_and_return_conditional_losses_4442383t56;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_65_layer_call_fn_4442372g56;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_66_layer_call_and_return_conditional_losses_4442431t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_66_layer_call_fn_4442420g?@;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_67_layer_call_and_return_conditional_losses_4442536t[\;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_67_layer_call_fn_4442525g[\;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_68_layer_call_and_return_conditional_losses_4442556tef;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_68_layer_call_fn_4442545gef;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_69_layer_call_and_return_conditional_losses_4442576top;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_69_layer_call_fn_4442565gop;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_conv3d_70_layer_call_and_return_conditional_losses_4442595tuv;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_70_layer_call_fn_4442585guv;�8
1�.
,�)
inputs���������  
� "$�!���������  �
E__inference_dense_16_layer_call_and_return_conditional_losses_4442496\MN/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
*__inference_dense_16_layer_call_fn_4442485OMN/�,
%�"
 �
inputs���������@
� "����������@�
E__inference_model_16_layer_call_and_return_conditional_losses_4441831�+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p 

 
� "1�.
'�$
0���������  
� �
E__inference_model_16_layer_call_and_return_conditional_losses_4441915�+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p

 
� "1�.
'�$
0���������  
� �
E__inference_model_16_layer_call_and_return_conditional_losses_4442163�+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p 

 
� "1�.
'�$
0���������  
� �
E__inference_model_16_layer_call_and_return_conditional_losses_4442298�+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p

 
� "1�.
'�$
0���������  
� �
*__inference_model_16_layer_call_fn_4441439|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p 

 
� "$�!���������  �
*__inference_model_16_layer_call_fn_4441747|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p

 
� "$�!���������  �
*__inference_model_16_layer_call_fn_4441991}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p 

 
� "$�!���������  �
*__inference_model_16_layer_call_fn_4442028}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p

 
� "$�!���������  �
P__inference_range_conversion_16_layer_call_and_return_conditional_losses_4442315t?�<
5�2
0�-

parameters���������  
� "1�.
'�$
0���������  
� �
5__inference_range_conversion_16_layer_call_fn_4442303g?�<
5�2
0�-

parameters���������  
� "$�!���������  �
G__inference_reshape_32_layer_call_and_return_conditional_losses_4442476d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_32_layer_call_fn_4442464W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_33_layer_call_and_return_conditional_losses_4442516d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_33_layer_call_fn_4442501W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_4441954�+,56?@MN[\efopuvC�@
� 
9�6
4
input+�(
input���������  "A�>
<
	conv3d_70/�,
	conv3d_70���������  