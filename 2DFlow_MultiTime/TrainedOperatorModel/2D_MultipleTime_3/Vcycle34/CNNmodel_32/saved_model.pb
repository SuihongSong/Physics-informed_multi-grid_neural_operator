ӈ
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
conv3d_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_96/kernel
�
$conv3d_96/kernel/Read/ReadVariableOpReadVariableOpconv3d_96/kernel**
_output_shapes
:*
dtype0
t
conv3d_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_96/bias
m
"conv3d_96/bias/Read/ReadVariableOpReadVariableOpconv3d_96/bias*
_output_shapes
:*
dtype0
�
conv3d_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_97/kernel
�
$conv3d_97/kernel/Read/ReadVariableOpReadVariableOpconv3d_97/kernel**
_output_shapes
:*
dtype0
t
conv3d_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_97/bias
m
"conv3d_97/bias/Read/ReadVariableOpReadVariableOpconv3d_97/bias*
_output_shapes
:*
dtype0
�
conv3d_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_98/kernel
�
$conv3d_98/kernel/Read/ReadVariableOpReadVariableOpconv3d_98/kernel**
_output_shapes
:*
dtype0
t
conv3d_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_98/bias
m
"conv3d_98/bias/Read/ReadVariableOpReadVariableOpconv3d_98/bias*
_output_shapes
:*
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:@@*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:@*
dtype0
�
conv3d_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_99/kernel
�
$conv3d_99/kernel/Read/ReadVariableOpReadVariableOpconv3d_99/kernel**
_output_shapes
:*
dtype0
t
conv3d_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_99/bias
m
"conv3d_99/bias/Read/ReadVariableOpReadVariableOpconv3d_99/bias*
_output_shapes
:*
dtype0
�
conv3d_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_100/kernel
�
%conv3d_100/kernel/Read/ReadVariableOpReadVariableOpconv3d_100/kernel**
_output_shapes
:*
dtype0
v
conv3d_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_100/bias
o
#conv3d_100/bias/Read/ReadVariableOpReadVariableOpconv3d_100/bias*
_output_shapes
:*
dtype0
�
conv3d_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_101/kernel
�
%conv3d_101/kernel/Read/ReadVariableOpReadVariableOpconv3d_101/kernel**
_output_shapes
:*
dtype0
v
conv3d_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_101/bias
o
#conv3d_101/bias/Read/ReadVariableOpReadVariableOpconv3d_101/bias*
_output_shapes
:*
dtype0
�
conv3d_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_102/kernel
�
%conv3d_102/kernel/Read/ReadVariableOpReadVariableOpconv3d_102/kernel**
_output_shapes
:*
dtype0
v
conv3d_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_102/bias
o
#conv3d_102/bias/Read/ReadVariableOpReadVariableOpconv3d_102/bias*
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
VARIABLE_VALUEconv3d_96/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_96/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_97/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_97/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_98/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_98/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_24/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_99/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_99/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEconv3d_100/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_100/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEconv3d_101/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_101/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEconv3d_102/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_102/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_96/kernelconv3d_96/biasconv3d_97/kernelconv3d_97/biasconv3d_98/kernelconv3d_98/biasdense_24/kerneldense_24/biasconv3d_99/kernelconv3d_99/biasconv3d_100/kernelconv3d_100/biasconv3d_101/kernelconv3d_101/biasconv3d_102/kernelconv3d_102/bias*
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
%__inference_signature_wrapper_6091494
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_96/kernel/Read/ReadVariableOp"conv3d_96/bias/Read/ReadVariableOp$conv3d_97/kernel/Read/ReadVariableOp"conv3d_97/bias/Read/ReadVariableOp$conv3d_98/kernel/Read/ReadVariableOp"conv3d_98/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp$conv3d_99/kernel/Read/ReadVariableOp"conv3d_99/bias/Read/ReadVariableOp%conv3d_100/kernel/Read/ReadVariableOp#conv3d_100/bias/Read/ReadVariableOp%conv3d_101/kernel/Read/ReadVariableOp#conv3d_101/bias/Read/ReadVariableOp%conv3d_102/kernel/Read/ReadVariableOp#conv3d_102/bias/Read/ReadVariableOpConst*
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
 __inference__traced_save_6092206
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_96/kernelconv3d_96/biasconv3d_97/kernelconv3d_97/biasconv3d_98/kernelconv3d_98/biasdense_24/kerneldense_24/biasconv3d_99/kernelconv3d_99/biasconv3d_100/kernelconv3d_100/biasconv3d_101/kernelconv3d_101/biasconv3d_102/kernelconv3d_102/bias*
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
#__inference__traced_restore_6092264�
�	
p
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_6091855

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
��
�
"__inference__wrapped_model_6090602	
inputO
1model_24_conv3d_96_conv3d_readvariableop_resource:@
2model_24_conv3d_96_biasadd_readvariableop_resource:O
1model_24_conv3d_97_conv3d_readvariableop_resource:@
2model_24_conv3d_97_biasadd_readvariableop_resource:O
1model_24_conv3d_98_conv3d_readvariableop_resource:@
2model_24_conv3d_98_biasadd_readvariableop_resource:B
0model_24_dense_24_matmul_readvariableop_resource:@@?
1model_24_dense_24_biasadd_readvariableop_resource:@O
1model_24_conv3d_99_conv3d_readvariableop_resource:@
2model_24_conv3d_99_biasadd_readvariableop_resource:P
2model_24_conv3d_100_conv3d_readvariableop_resource:A
3model_24_conv3d_100_biasadd_readvariableop_resource:P
2model_24_conv3d_101_conv3d_readvariableop_resource:A
3model_24_conv3d_101_biasadd_readvariableop_resource:P
2model_24_conv3d_102_conv3d_readvariableop_resource:A
3model_24_conv3d_102_biasadd_readvariableop_resource:
identity��*model_24/conv3d_100/BiasAdd/ReadVariableOp�)model_24/conv3d_100/Conv3D/ReadVariableOp�*model_24/conv3d_101/BiasAdd/ReadVariableOp�)model_24/conv3d_101/Conv3D/ReadVariableOp�*model_24/conv3d_102/BiasAdd/ReadVariableOp�)model_24/conv3d_102/Conv3D/ReadVariableOp�)model_24/conv3d_96/BiasAdd/ReadVariableOp�(model_24/conv3d_96/Conv3D/ReadVariableOp�)model_24/conv3d_97/BiasAdd/ReadVariableOp�(model_24/conv3d_97/Conv3D/ReadVariableOp�)model_24/conv3d_98/BiasAdd/ReadVariableOp�(model_24/conv3d_98/Conv3D/ReadVariableOp�)model_24/conv3d_99/BiasAdd/ReadVariableOp�(model_24/conv3d_99/Conv3D/ReadVariableOp�(model_24/dense_24/BiasAdd/ReadVariableOp�'model_24/dense_24/MatMul/ReadVariableOp�
9model_24/tf.__operators__.getitem_194/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_24/tf.__operators__.getitem_194/strided_slice/stack�
;model_24/tf.__operators__.getitem_194/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_24/tf.__operators__.getitem_194/strided_slice/stack_1�
;model_24/tf.__operators__.getitem_194/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_24/tf.__operators__.getitem_194/strided_slice/stack_2�
3model_24/tf.__operators__.getitem_194/strided_sliceStridedSliceinputBmodel_24/tf.__operators__.getitem_194/strided_slice/stack:output:0Dmodel_24/tf.__operators__.getitem_194/strided_slice/stack_1:output:0Dmodel_24/tf.__operators__.getitem_194/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_24/tf.__operators__.getitem_194/strided_slice�
"model_24/range_conversion_24/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_24/range_conversion_24/sub/y�
 model_24/range_conversion_24/subSub<model_24/tf.__operators__.getitem_194/strided_slice:output:0+model_24/range_conversion_24/sub/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_24/range_conversion_24/sub�
&model_24/range_conversion_24/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_24/range_conversion_24/truediv/y�
$model_24/range_conversion_24/truedivRealDiv$model_24/range_conversion_24/sub:z:0/model_24/range_conversion_24/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2&
$model_24/range_conversion_24/truediv�
"model_24/range_conversion_24/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_24/range_conversion_24/mul/y�
 model_24/range_conversion_24/mulMul(model_24/range_conversion_24/truediv:z:0+model_24/range_conversion_24/mul/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_24/range_conversion_24/mul�
"model_24/range_conversion_24/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_24/range_conversion_24/add/y�
 model_24/range_conversion_24/addAddV2$model_24/range_conversion_24/mul:z:0+model_24/range_conversion_24/add/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_24/range_conversion_24/add�
9model_24/tf.__operators__.getitem_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_24/tf.__operators__.getitem_195/strided_slice/stack�
;model_24/tf.__operators__.getitem_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_24/tf.__operators__.getitem_195/strided_slice/stack_1�
;model_24/tf.__operators__.getitem_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_24/tf.__operators__.getitem_195/strided_slice/stack_2�
3model_24/tf.__operators__.getitem_195/strided_sliceStridedSliceinputBmodel_24/tf.__operators__.getitem_195/strided_slice/stack:output:0Dmodel_24/tf.__operators__.getitem_195/strided_slice/stack_1:output:0Dmodel_24/tf.__operators__.getitem_195/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_24/tf.__operators__.getitem_195/strided_slice�
"model_24/tf.concat_217/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_24/tf.concat_217/concat/axis�
model_24/tf.concat_217/concatConcatV2$model_24/range_conversion_24/add:z:0<model_24/tf.__operators__.getitem_195/strided_slice:output:0+model_24/tf.concat_217/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_24/tf.concat_217/concat�
(model_24/conv3d_96/Conv3D/ReadVariableOpReadVariableOp1model_24_conv3d_96_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_24/conv3d_96/Conv3D/ReadVariableOp�
model_24/conv3d_96/Conv3DConv3D&model_24/tf.concat_217/concat:output:00model_24/conv3d_96/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_24/conv3d_96/Conv3D�
)model_24/conv3d_96/BiasAdd/ReadVariableOpReadVariableOp2model_24_conv3d_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_24/conv3d_96/BiasAdd/ReadVariableOp�
model_24/conv3d_96/BiasAddBiasAdd"model_24/conv3d_96/Conv3D:output:01model_24/conv3d_96/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_24/conv3d_96/BiasAdd�
model_24/conv3d_96/SoftplusSoftplus#model_24/conv3d_96/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_24/conv3d_96/Softplus�
,model_24/average_pooling3d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_24/average_pooling3d_36/transpose/perm�
'model_24/average_pooling3d_36/transpose	Transpose)model_24/conv3d_96/Softplus:activations:05model_24/average_pooling3d_36/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2)
'model_24/average_pooling3d_36/transpose�
'model_24/average_pooling3d_36/AvgPool3D	AvgPool3D+model_24/average_pooling3d_36/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_24/average_pooling3d_36/AvgPool3D�
.model_24/average_pooling3d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_24/average_pooling3d_36/transpose_1/perm�
)model_24/average_pooling3d_36/transpose_1	Transpose0model_24/average_pooling3d_36/AvgPool3D:output:07model_24/average_pooling3d_36/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_24/average_pooling3d_36/transpose_1�
(model_24/conv3d_97/Conv3D/ReadVariableOpReadVariableOp1model_24_conv3d_97_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_24/conv3d_97/Conv3D/ReadVariableOp�
model_24/conv3d_97/Conv3DConv3D-model_24/average_pooling3d_36/transpose_1:y:00model_24/conv3d_97/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_24/conv3d_97/Conv3D�
)model_24/conv3d_97/BiasAdd/ReadVariableOpReadVariableOp2model_24_conv3d_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_24/conv3d_97/BiasAdd/ReadVariableOp�
model_24/conv3d_97/BiasAddBiasAdd"model_24/conv3d_97/Conv3D:output:01model_24/conv3d_97/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_24/conv3d_97/BiasAdd�
model_24/conv3d_97/SoftplusSoftplus#model_24/conv3d_97/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_24/conv3d_97/Softplus�
,model_24/average_pooling3d_37/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_24/average_pooling3d_37/transpose/perm�
'model_24/average_pooling3d_37/transpose	Transpose)model_24/conv3d_97/Softplus:activations:05model_24/average_pooling3d_37/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_24/average_pooling3d_37/transpose�
'model_24/average_pooling3d_37/AvgPool3D	AvgPool3D+model_24/average_pooling3d_37/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_24/average_pooling3d_37/AvgPool3D�
.model_24/average_pooling3d_37/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_24/average_pooling3d_37/transpose_1/perm�
)model_24/average_pooling3d_37/transpose_1	Transpose0model_24/average_pooling3d_37/AvgPool3D:output:07model_24/average_pooling3d_37/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_24/average_pooling3d_37/transpose_1�
(model_24/conv3d_98/Conv3D/ReadVariableOpReadVariableOp1model_24_conv3d_98_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_24/conv3d_98/Conv3D/ReadVariableOp�
model_24/conv3d_98/Conv3DConv3D-model_24/average_pooling3d_37/transpose_1:y:00model_24/conv3d_98/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_24/conv3d_98/Conv3D�
)model_24/conv3d_98/BiasAdd/ReadVariableOpReadVariableOp2model_24_conv3d_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_24/conv3d_98/BiasAdd/ReadVariableOp�
model_24/conv3d_98/BiasAddBiasAdd"model_24/conv3d_98/Conv3D:output:01model_24/conv3d_98/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_24/conv3d_98/BiasAdd�
model_24/conv3d_98/SoftplusSoftplus#model_24/conv3d_98/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_24/conv3d_98/Softplus�
,model_24/average_pooling3d_38/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_24/average_pooling3d_38/transpose/perm�
'model_24/average_pooling3d_38/transpose	Transpose)model_24/conv3d_98/Softplus:activations:05model_24/average_pooling3d_38/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_24/average_pooling3d_38/transpose�
'model_24/average_pooling3d_38/AvgPool3D	AvgPool3D+model_24/average_pooling3d_38/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_24/average_pooling3d_38/AvgPool3D�
.model_24/average_pooling3d_38/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_24/average_pooling3d_38/transpose_1/perm�
)model_24/average_pooling3d_38/transpose_1	Transpose0model_24/average_pooling3d_38/AvgPool3D:output:07model_24/average_pooling3d_38/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_24/average_pooling3d_38/transpose_1�
model_24/reshape_48/ShapeShape-model_24/average_pooling3d_38/transpose_1:y:0*
T0*
_output_shapes
:2
model_24/reshape_48/Shape�
'model_24/reshape_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_24/reshape_48/strided_slice/stack�
)model_24/reshape_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_24/reshape_48/strided_slice/stack_1�
)model_24/reshape_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_24/reshape_48/strided_slice/stack_2�
!model_24/reshape_48/strided_sliceStridedSlice"model_24/reshape_48/Shape:output:00model_24/reshape_48/strided_slice/stack:output:02model_24/reshape_48/strided_slice/stack_1:output:02model_24/reshape_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_24/reshape_48/strided_slice�
#model_24/reshape_48/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_24/reshape_48/Reshape/shape/1�
!model_24/reshape_48/Reshape/shapePack*model_24/reshape_48/strided_slice:output:0,model_24/reshape_48/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_24/reshape_48/Reshape/shape�
model_24/reshape_48/ReshapeReshape-model_24/average_pooling3d_38/transpose_1:y:0*model_24/reshape_48/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_24/reshape_48/Reshape�
'model_24/dense_24/MatMul/ReadVariableOpReadVariableOp0model_24_dense_24_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_24/dense_24/MatMul/ReadVariableOp�
model_24/dense_24/MatMulMatMul$model_24/reshape_48/Reshape:output:0/model_24/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_24/dense_24/MatMul�
(model_24/dense_24/BiasAdd/ReadVariableOpReadVariableOp1model_24_dense_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_24/dense_24/BiasAdd/ReadVariableOp�
model_24/dense_24/BiasAddBiasAdd"model_24/dense_24/MatMul:product:00model_24/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_24/dense_24/BiasAdd�
model_24/dense_24/SoftplusSoftplus"model_24/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_24/dense_24/Softplus�
model_24/reshape_49/ShapeShape(model_24/dense_24/Softplus:activations:0*
T0*
_output_shapes
:2
model_24/reshape_49/Shape�
'model_24/reshape_49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_24/reshape_49/strided_slice/stack�
)model_24/reshape_49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_24/reshape_49/strided_slice/stack_1�
)model_24/reshape_49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_24/reshape_49/strided_slice/stack_2�
!model_24/reshape_49/strided_sliceStridedSlice"model_24/reshape_49/Shape:output:00model_24/reshape_49/strided_slice/stack:output:02model_24/reshape_49/strided_slice/stack_1:output:02model_24/reshape_49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_24/reshape_49/strided_slice�
#model_24/reshape_49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_24/reshape_49/Reshape/shape/1�
#model_24/reshape_49/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_24/reshape_49/Reshape/shape/2�
#model_24/reshape_49/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_24/reshape_49/Reshape/shape/3�
#model_24/reshape_49/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_24/reshape_49/Reshape/shape/4�
!model_24/reshape_49/Reshape/shapePack*model_24/reshape_49/strided_slice:output:0,model_24/reshape_49/Reshape/shape/1:output:0,model_24/reshape_49/Reshape/shape/2:output:0,model_24/reshape_49/Reshape/shape/3:output:0,model_24/reshape_49/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_24/reshape_49/Reshape/shape�
model_24/reshape_49/ReshapeReshape(model_24/dense_24/Softplus:activations:0*model_24/reshape_49/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_24/reshape_49/Reshape�
%model_24/tf.reshape_240/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_24/tf.reshape_240/Reshape/shape�
model_24/tf.reshape_240/ReshapeReshape$model_24/reshape_49/Reshape:output:0.model_24/tf.reshape_240/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_24/tf.reshape_240/Reshape�
#model_24/tf.tile_120/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_24/tf.tile_120/Tile/multiples�
model_24/tf.tile_120/TileTile(model_24/tf.reshape_240/Reshape:output:0,model_24/tf.tile_120/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_24/tf.tile_120/Tile�
%model_24/tf.reshape_241/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_24/tf.reshape_241/Reshape/shape�
model_24/tf.reshape_241/ReshapeReshape"model_24/tf.tile_120/Tile:output:0.model_24/tf.reshape_241/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_24/tf.reshape_241/Reshape�
"model_24/tf.concat_218/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_24/tf.concat_218/concat/axis�
model_24/tf.concat_218/concatConcatV2(model_24/tf.reshape_241/Reshape:output:0)model_24/conv3d_98/Softplus:activations:0+model_24/tf.concat_218/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_24/tf.concat_218/concat�
(model_24/conv3d_99/Conv3D/ReadVariableOpReadVariableOp1model_24_conv3d_99_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_24/conv3d_99/Conv3D/ReadVariableOp�
model_24/conv3d_99/Conv3DConv3D&model_24/tf.concat_218/concat:output:00model_24/conv3d_99/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_24/conv3d_99/Conv3D�
)model_24/conv3d_99/BiasAdd/ReadVariableOpReadVariableOp2model_24_conv3d_99_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_24/conv3d_99/BiasAdd/ReadVariableOp�
model_24/conv3d_99/BiasAddBiasAdd"model_24/conv3d_99/Conv3D:output:01model_24/conv3d_99/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_24/conv3d_99/BiasAdd�
model_24/conv3d_99/SoftplusSoftplus#model_24/conv3d_99/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_24/conv3d_99/Softplus�
%model_24/tf.reshape_242/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_24/tf.reshape_242/Reshape/shape�
model_24/tf.reshape_242/ReshapeReshape)model_24/conv3d_99/Softplus:activations:0.model_24/tf.reshape_242/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_24/tf.reshape_242/Reshape�
#model_24/tf.tile_121/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_24/tf.tile_121/Tile/multiples�
model_24/tf.tile_121/TileTile(model_24/tf.reshape_242/Reshape:output:0,model_24/tf.tile_121/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_24/tf.tile_121/Tile�
%model_24/tf.reshape_243/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_24/tf.reshape_243/Reshape/shape�
model_24/tf.reshape_243/ReshapeReshape"model_24/tf.tile_121/Tile:output:0.model_24/tf.reshape_243/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_24/tf.reshape_243/Reshape�
"model_24/tf.concat_219/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_24/tf.concat_219/concat/axis�
model_24/tf.concat_219/concatConcatV2(model_24/tf.reshape_243/Reshape:output:0)model_24/conv3d_97/Softplus:activations:0+model_24/tf.concat_219/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_24/tf.concat_219/concat�
)model_24/conv3d_100/Conv3D/ReadVariableOpReadVariableOp2model_24_conv3d_100_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_24/conv3d_100/Conv3D/ReadVariableOp�
model_24/conv3d_100/Conv3DConv3D&model_24/tf.concat_219/concat:output:01model_24/conv3d_100/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_24/conv3d_100/Conv3D�
*model_24/conv3d_100/BiasAdd/ReadVariableOpReadVariableOp3model_24_conv3d_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_24/conv3d_100/BiasAdd/ReadVariableOp�
model_24/conv3d_100/BiasAddBiasAdd#model_24/conv3d_100/Conv3D:output:02model_24/conv3d_100/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_24/conv3d_100/BiasAdd�
model_24/conv3d_100/SoftplusSoftplus$model_24/conv3d_100/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_24/conv3d_100/Softplus�
%model_24/tf.reshape_244/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_24/tf.reshape_244/Reshape/shape�
model_24/tf.reshape_244/ReshapeReshape*model_24/conv3d_100/Softplus:activations:0.model_24/tf.reshape_244/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_24/tf.reshape_244/Reshape�
#model_24/tf.tile_122/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_24/tf.tile_122/Tile/multiples�
model_24/tf.tile_122/TileTile(model_24/tf.reshape_244/Reshape:output:0,model_24/tf.tile_122/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_24/tf.tile_122/Tile�
%model_24/tf.reshape_245/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2'
%model_24/tf.reshape_245/Reshape/shape�
model_24/tf.reshape_245/ReshapeReshape"model_24/tf.tile_122/Tile:output:0.model_24/tf.reshape_245/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2!
model_24/tf.reshape_245/Reshape�
"model_24/tf.concat_220/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_24/tf.concat_220/concat/axis�
model_24/tf.concat_220/concatConcatV2(model_24/tf.reshape_245/Reshape:output:0)model_24/conv3d_96/Softplus:activations:0+model_24/tf.concat_220/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_24/tf.concat_220/concat�
)model_24/conv3d_101/Conv3D/ReadVariableOpReadVariableOp2model_24_conv3d_101_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_24/conv3d_101/Conv3D/ReadVariableOp�
model_24/conv3d_101/Conv3DConv3D&model_24/tf.concat_220/concat:output:01model_24/conv3d_101/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_24/conv3d_101/Conv3D�
*model_24/conv3d_101/BiasAdd/ReadVariableOpReadVariableOp3model_24_conv3d_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_24/conv3d_101/BiasAdd/ReadVariableOp�
model_24/conv3d_101/BiasAddBiasAdd#model_24/conv3d_101/Conv3D:output:02model_24/conv3d_101/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_24/conv3d_101/BiasAdd�
model_24/conv3d_101/SoftplusSoftplus$model_24/conv3d_101/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_24/conv3d_101/Softplus�
)model_24/conv3d_102/Conv3D/ReadVariableOpReadVariableOp2model_24_conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_24/conv3d_102/Conv3D/ReadVariableOp�
model_24/conv3d_102/Conv3DConv3D*model_24/conv3d_101/Softplus:activations:01model_24/conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_24/conv3d_102/Conv3D�
*model_24/conv3d_102/BiasAdd/ReadVariableOpReadVariableOp3model_24_conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_24/conv3d_102/BiasAdd/ReadVariableOp�
model_24/conv3d_102/BiasAddBiasAdd#model_24/conv3d_102/Conv3D:output:02model_24/conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_24/conv3d_102/BiasAdd�
IdentityIdentity$model_24/conv3d_102/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp+^model_24/conv3d_100/BiasAdd/ReadVariableOp*^model_24/conv3d_100/Conv3D/ReadVariableOp+^model_24/conv3d_101/BiasAdd/ReadVariableOp*^model_24/conv3d_101/Conv3D/ReadVariableOp+^model_24/conv3d_102/BiasAdd/ReadVariableOp*^model_24/conv3d_102/Conv3D/ReadVariableOp*^model_24/conv3d_96/BiasAdd/ReadVariableOp)^model_24/conv3d_96/Conv3D/ReadVariableOp*^model_24/conv3d_97/BiasAdd/ReadVariableOp)^model_24/conv3d_97/Conv3D/ReadVariableOp*^model_24/conv3d_98/BiasAdd/ReadVariableOp)^model_24/conv3d_98/Conv3D/ReadVariableOp*^model_24/conv3d_99/BiasAdd/ReadVariableOp)^model_24/conv3d_99/Conv3D/ReadVariableOp)^model_24/dense_24/BiasAdd/ReadVariableOp(^model_24/dense_24/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2X
*model_24/conv3d_100/BiasAdd/ReadVariableOp*model_24/conv3d_100/BiasAdd/ReadVariableOp2V
)model_24/conv3d_100/Conv3D/ReadVariableOp)model_24/conv3d_100/Conv3D/ReadVariableOp2X
*model_24/conv3d_101/BiasAdd/ReadVariableOp*model_24/conv3d_101/BiasAdd/ReadVariableOp2V
)model_24/conv3d_101/Conv3D/ReadVariableOp)model_24/conv3d_101/Conv3D/ReadVariableOp2X
*model_24/conv3d_102/BiasAdd/ReadVariableOp*model_24/conv3d_102/BiasAdd/ReadVariableOp2V
)model_24/conv3d_102/Conv3D/ReadVariableOp)model_24/conv3d_102/Conv3D/ReadVariableOp2V
)model_24/conv3d_96/BiasAdd/ReadVariableOp)model_24/conv3d_96/BiasAdd/ReadVariableOp2T
(model_24/conv3d_96/Conv3D/ReadVariableOp(model_24/conv3d_96/Conv3D/ReadVariableOp2V
)model_24/conv3d_97/BiasAdd/ReadVariableOp)model_24/conv3d_97/BiasAdd/ReadVariableOp2T
(model_24/conv3d_97/Conv3D/ReadVariableOp(model_24/conv3d_97/Conv3D/ReadVariableOp2V
)model_24/conv3d_98/BiasAdd/ReadVariableOp)model_24/conv3d_98/BiasAdd/ReadVariableOp2T
(model_24/conv3d_98/Conv3D/ReadVariableOp(model_24/conv3d_98/Conv3D/ReadVariableOp2V
)model_24/conv3d_99/BiasAdd/ReadVariableOp)model_24/conv3d_99/BiasAdd/ReadVariableOp2T
(model_24/conv3d_99/Conv3D/ReadVariableOp(model_24/conv3d_99/Conv3D/ReadVariableOp2T
(model_24/dense_24/BiasAdd/ReadVariableOp(model_24/dense_24/BiasAdd/ReadVariableOp2R
'model_24/dense_24/MatMul/ReadVariableOp'model_24/dense_24/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
U
5__inference_range_conversion_24_layer_call_fn_6091843

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
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_60907152
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
�
R
6__inference_average_pooling3d_37_layer_call_fn_6091928

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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_60906452
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
�
*__inference_dense_24_layer_call_fn_6092025

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
E__inference_dense_24_layer_call_and_return_conditional_losses_60908292
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
*__inference_model_24_layer_call_fn_6091531

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
E__inference_model_24_layer_call_and_return_conditional_losses_60909442
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
G__inference_conv3d_101_layer_call_and_return_conditional_losses_6090921

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
6__inference_average_pooling3d_36_layer_call_fn_6091885

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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_60907482
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
�

m
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6091894

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
,__inference_conv3d_102_layer_call_fn_6092125

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_102_layer_call_and_return_conditional_losses_60909372
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
�
�
F__inference_conv3d_97_layer_call_and_return_conditional_losses_6091923

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
�
*__inference_model_24_layer_call_fn_6090979	
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
E__inference_model_24_layer_call_and_return_conditional_losses_60909442
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
,__inference_conv3d_101_layer_call_fn_6092105

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_60909212
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
�
G__inference_conv3d_101_layer_call_and_return_conditional_losses_6092116

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
�
G__inference_conv3d_102_layer_call_and_return_conditional_losses_6090937

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
m
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6090775

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
F__inference_conv3d_98_layer_call_and_return_conditional_losses_6090788

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
p
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_6090715

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
c
G__inference_reshape_48_layer_call_and_return_conditional_losses_6092016

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
F__inference_conv3d_99_layer_call_and_return_conditional_losses_6092076

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
E__inference_dense_24_layer_call_and_return_conditional_losses_6090829

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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6090748

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
�
H
,__inference_reshape_49_layer_call_fn_6092041

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
G__inference_reshape_49_layer_call_and_return_conditional_losses_60908502
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
G__inference_conv3d_100_layer_call_and_return_conditional_losses_6090896

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
�G
�

#__inference__traced_restore_6092264
file_prefix?
!assignvariableop_conv3d_96_kernel:/
!assignvariableop_1_conv3d_96_bias:A
#assignvariableop_2_conv3d_97_kernel:/
!assignvariableop_3_conv3d_97_bias:A
#assignvariableop_4_conv3d_98_kernel:/
!assignvariableop_5_conv3d_98_bias:4
"assignvariableop_6_dense_24_kernel:@@.
 assignvariableop_7_dense_24_bias:@A
#assignvariableop_8_conv3d_99_kernel:/
!assignvariableop_9_conv3d_99_bias:C
%assignvariableop_10_conv3d_100_kernel:1
#assignvariableop_11_conv3d_100_bias:C
%assignvariableop_12_conv3d_101_kernel:1
#assignvariableop_13_conv3d_101_bias:C
%assignvariableop_14_conv3d_102_kernel:1
#assignvariableop_15_conv3d_102_bias:
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
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_96_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_96_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_97_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_97_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_98_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_98_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_24_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_24_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_99_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_99_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_100_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_100_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_101_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_101_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_102_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_102_biasIdentity_15:output:0"/device:CPU:0*
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
�
�
F__inference_conv3d_97_layer_call_and_return_conditional_losses_6090761

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
G__inference_conv3d_100_layer_call_and_return_conditional_losses_6092096

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
m
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6090802

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
�
H
,__inference_reshape_48_layer_call_fn_6092004

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
G__inference_reshape_48_layer_call_and_return_conditional_losses_60908162
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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6090615

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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6091942

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
�
E__inference_dense_24_layer_call_and_return_conditional_losses_6092036

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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6090645

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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6091951

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
E__inference_model_24_layer_call_and_return_conditional_losses_6091838

inputsF
(conv3d_96_conv3d_readvariableop_resource:7
)conv3d_96_biasadd_readvariableop_resource:F
(conv3d_97_conv3d_readvariableop_resource:7
)conv3d_97_biasadd_readvariableop_resource:F
(conv3d_98_conv3d_readvariableop_resource:7
)conv3d_98_biasadd_readvariableop_resource:9
'dense_24_matmul_readvariableop_resource:@@6
(dense_24_biasadd_readvariableop_resource:@F
(conv3d_99_conv3d_readvariableop_resource:7
)conv3d_99_biasadd_readvariableop_resource:G
)conv3d_100_conv3d_readvariableop_resource:8
*conv3d_100_biasadd_readvariableop_resource:G
)conv3d_101_conv3d_readvariableop_resource:8
*conv3d_101_biasadd_readvariableop_resource:G
)conv3d_102_conv3d_readvariableop_resource:8
*conv3d_102_biasadd_readvariableop_resource:
identity��!conv3d_100/BiasAdd/ReadVariableOp� conv3d_100/Conv3D/ReadVariableOp�!conv3d_101/BiasAdd/ReadVariableOp� conv3d_101/Conv3D/ReadVariableOp�!conv3d_102/BiasAdd/ReadVariableOp� conv3d_102/Conv3D/ReadVariableOp� conv3d_96/BiasAdd/ReadVariableOp�conv3d_96/Conv3D/ReadVariableOp� conv3d_97/BiasAdd/ReadVariableOp�conv3d_97/Conv3D/ReadVariableOp� conv3d_98/BiasAdd/ReadVariableOp�conv3d_98/Conv3D/ReadVariableOp� conv3d_99/BiasAdd/ReadVariableOp�conv3d_99/Conv3D/ReadVariableOp�dense_24/BiasAdd/ReadVariableOp�dense_24/MatMul/ReadVariableOp�
0tf.__operators__.getitem_194/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_194/strided_slice/stack�
2tf.__operators__.getitem_194/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_194/strided_slice/stack_1�
2tf.__operators__.getitem_194/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_194/strided_slice/stack_2�
*tf.__operators__.getitem_194/strided_sliceStridedSliceinputs9tf.__operators__.getitem_194/strided_slice/stack:output:0;tf.__operators__.getitem_194/strided_slice/stack_1:output:0;tf.__operators__.getitem_194/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_194/strided_slice{
range_conversion_24/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_24/sub/y�
range_conversion_24/subSub3tf.__operators__.getitem_194/strided_slice:output:0"range_conversion_24/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/sub�
range_conversion_24/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_24/truediv/y�
range_conversion_24/truedivRealDivrange_conversion_24/sub:z:0&range_conversion_24/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/truediv{
range_conversion_24/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_24/mul/y�
range_conversion_24/mulMulrange_conversion_24/truediv:z:0"range_conversion_24/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/mul{
range_conversion_24/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_24/add/y�
range_conversion_24/addAddV2range_conversion_24/mul:z:0"range_conversion_24/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/add�
0tf.__operators__.getitem_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_195/strided_slice/stack�
2tf.__operators__.getitem_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_195/strided_slice/stack_1�
2tf.__operators__.getitem_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_195/strided_slice/stack_2�
*tf.__operators__.getitem_195/strided_sliceStridedSliceinputs9tf.__operators__.getitem_195/strided_slice/stack:output:0;tf.__operators__.getitem_195/strided_slice/stack_1:output:0;tf.__operators__.getitem_195/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_195/strided_slicex
tf.concat_217/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_217/concat/axis�
tf.concat_217/concatConcatV2range_conversion_24/add:z:03tf.__operators__.getitem_195/strided_slice:output:0"tf.concat_217/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_217/concat�
conv3d_96/Conv3D/ReadVariableOpReadVariableOp(conv3d_96_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_96/Conv3D/ReadVariableOp�
conv3d_96/Conv3DConv3Dtf.concat_217/concat:output:0'conv3d_96/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_96/Conv3D�
 conv3d_96/BiasAdd/ReadVariableOpReadVariableOp)conv3d_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_96/BiasAdd/ReadVariableOp�
conv3d_96/BiasAddBiasAddconv3d_96/Conv3D:output:0(conv3d_96/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_96/BiasAdd�
conv3d_96/SoftplusSoftplusconv3d_96/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_96/Softplus�
#average_pooling3d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_36/transpose/perm�
average_pooling3d_36/transpose	Transpose conv3d_96/Softplus:activations:0,average_pooling3d_36/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_36/transpose�
average_pooling3d_36/AvgPool3D	AvgPool3D"average_pooling3d_36/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_36/AvgPool3D�
%average_pooling3d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_36/transpose_1/perm�
 average_pooling3d_36/transpose_1	Transpose'average_pooling3d_36/AvgPool3D:output:0.average_pooling3d_36/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_36/transpose_1�
conv3d_97/Conv3D/ReadVariableOpReadVariableOp(conv3d_97_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_97/Conv3D/ReadVariableOp�
conv3d_97/Conv3DConv3D$average_pooling3d_36/transpose_1:y:0'conv3d_97/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_97/Conv3D�
 conv3d_97/BiasAdd/ReadVariableOpReadVariableOp)conv3d_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_97/BiasAdd/ReadVariableOp�
conv3d_97/BiasAddBiasAddconv3d_97/Conv3D:output:0(conv3d_97/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_97/BiasAdd�
conv3d_97/SoftplusSoftplusconv3d_97/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_97/Softplus�
#average_pooling3d_37/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_37/transpose/perm�
average_pooling3d_37/transpose	Transpose conv3d_97/Softplus:activations:0,average_pooling3d_37/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_37/transpose�
average_pooling3d_37/AvgPool3D	AvgPool3D"average_pooling3d_37/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_37/AvgPool3D�
%average_pooling3d_37/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_37/transpose_1/perm�
 average_pooling3d_37/transpose_1	Transpose'average_pooling3d_37/AvgPool3D:output:0.average_pooling3d_37/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_37/transpose_1�
conv3d_98/Conv3D/ReadVariableOpReadVariableOp(conv3d_98_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_98/Conv3D/ReadVariableOp�
conv3d_98/Conv3DConv3D$average_pooling3d_37/transpose_1:y:0'conv3d_98/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_98/Conv3D�
 conv3d_98/BiasAdd/ReadVariableOpReadVariableOp)conv3d_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_98/BiasAdd/ReadVariableOp�
conv3d_98/BiasAddBiasAddconv3d_98/Conv3D:output:0(conv3d_98/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_98/BiasAdd�
conv3d_98/SoftplusSoftplusconv3d_98/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_98/Softplus�
#average_pooling3d_38/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_38/transpose/perm�
average_pooling3d_38/transpose	Transpose conv3d_98/Softplus:activations:0,average_pooling3d_38/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_38/transpose�
average_pooling3d_38/AvgPool3D	AvgPool3D"average_pooling3d_38/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_38/AvgPool3D�
%average_pooling3d_38/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_38/transpose_1/perm�
 average_pooling3d_38/transpose_1	Transpose'average_pooling3d_38/AvgPool3D:output:0.average_pooling3d_38/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_38/transpose_1x
reshape_48/ShapeShape$average_pooling3d_38/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_48/Shape�
reshape_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_48/strided_slice/stack�
 reshape_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_1�
 reshape_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_2�
reshape_48/strided_sliceStridedSlicereshape_48/Shape:output:0'reshape_48/strided_slice/stack:output:0)reshape_48/strided_slice/stack_1:output:0)reshape_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_48/strided_slicez
reshape_48/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_48/Reshape/shape/1�
reshape_48/Reshape/shapePack!reshape_48/strided_slice:output:0#reshape_48/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_48/Reshape/shape�
reshape_48/ReshapeReshape$average_pooling3d_38/transpose_1:y:0!reshape_48/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_48/Reshape�
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_24/MatMul/ReadVariableOp�
dense_24/MatMulMatMulreshape_48/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_24/MatMul�
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_24/BiasAdd/ReadVariableOp�
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_24/BiasAdd
dense_24/SoftplusSoftplusdense_24/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_24/Softpluss
reshape_49/ShapeShapedense_24/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_49/Shape�
reshape_49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_49/strided_slice/stack�
 reshape_49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_49/strided_slice/stack_1�
 reshape_49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_49/strided_slice/stack_2�
reshape_49/strided_sliceStridedSlicereshape_49/Shape:output:0'reshape_49/strided_slice/stack:output:0)reshape_49/strided_slice/stack_1:output:0)reshape_49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_49/strided_slicez
reshape_49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/1z
reshape_49/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/2z
reshape_49/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/3z
reshape_49/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/4�
reshape_49/Reshape/shapePack!reshape_49/strided_slice:output:0#reshape_49/Reshape/shape/1:output:0#reshape_49/Reshape/shape/2:output:0#reshape_49/Reshape/shape/3:output:0#reshape_49/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_49/Reshape/shape�
reshape_49/ReshapeReshapedense_24/Softplus:activations:0!reshape_49/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_49/Reshape�
tf.reshape_240/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_240/Reshape/shape�
tf.reshape_240/ReshapeReshapereshape_49/Reshape:output:0%tf.reshape_240/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_240/Reshape�
tf.tile_120/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_120/Tile/multiples�
tf.tile_120/TileTiletf.reshape_240/Reshape:output:0#tf.tile_120/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_120/Tile�
tf.reshape_241/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_241/Reshape/shape�
tf.reshape_241/ReshapeReshapetf.tile_120/Tile:output:0%tf.reshape_241/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_241/Reshapex
tf.concat_218/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_218/concat/axis�
tf.concat_218/concatConcatV2tf.reshape_241/Reshape:output:0 conv3d_98/Softplus:activations:0"tf.concat_218/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_218/concat�
conv3d_99/Conv3D/ReadVariableOpReadVariableOp(conv3d_99_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_99/Conv3D/ReadVariableOp�
conv3d_99/Conv3DConv3Dtf.concat_218/concat:output:0'conv3d_99/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_99/Conv3D�
 conv3d_99/BiasAdd/ReadVariableOpReadVariableOp)conv3d_99_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_99/BiasAdd/ReadVariableOp�
conv3d_99/BiasAddBiasAddconv3d_99/Conv3D:output:0(conv3d_99/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_99/BiasAdd�
conv3d_99/SoftplusSoftplusconv3d_99/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_99/Softplus�
tf.reshape_242/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_242/Reshape/shape�
tf.reshape_242/ReshapeReshape conv3d_99/Softplus:activations:0%tf.reshape_242/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_242/Reshape�
tf.tile_121/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_121/Tile/multiples�
tf.tile_121/TileTiletf.reshape_242/Reshape:output:0#tf.tile_121/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_121/Tile�
tf.reshape_243/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_243/Reshape/shape�
tf.reshape_243/ReshapeReshapetf.tile_121/Tile:output:0%tf.reshape_243/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_243/Reshapex
tf.concat_219/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_219/concat/axis�
tf.concat_219/concatConcatV2tf.reshape_243/Reshape:output:0 conv3d_97/Softplus:activations:0"tf.concat_219/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_219/concat�
 conv3d_100/Conv3D/ReadVariableOpReadVariableOp)conv3d_100_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_100/Conv3D/ReadVariableOp�
conv3d_100/Conv3DConv3Dtf.concat_219/concat:output:0(conv3d_100/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_100/Conv3D�
!conv3d_100/BiasAdd/ReadVariableOpReadVariableOp*conv3d_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_100/BiasAdd/ReadVariableOp�
conv3d_100/BiasAddBiasAddconv3d_100/Conv3D:output:0)conv3d_100/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_100/BiasAdd�
conv3d_100/SoftplusSoftplusconv3d_100/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_100/Softplus�
tf.reshape_244/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_244/Reshape/shape�
tf.reshape_244/ReshapeReshape!conv3d_100/Softplus:activations:0%tf.reshape_244/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_244/Reshape�
tf.tile_122/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_122/Tile/multiples�
tf.tile_122/TileTiletf.reshape_244/Reshape:output:0#tf.tile_122/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_122/Tile�
tf.reshape_245/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_245/Reshape/shape�
tf.reshape_245/ReshapeReshapetf.tile_122/Tile:output:0%tf.reshape_245/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_245/Reshapex
tf.concat_220/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_220/concat/axis�
tf.concat_220/concatConcatV2tf.reshape_245/Reshape:output:0 conv3d_96/Softplus:activations:0"tf.concat_220/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_220/concat�
 conv3d_101/Conv3D/ReadVariableOpReadVariableOp)conv3d_101_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_101/Conv3D/ReadVariableOp�
conv3d_101/Conv3DConv3Dtf.concat_220/concat:output:0(conv3d_101/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_101/Conv3D�
!conv3d_101/BiasAdd/ReadVariableOpReadVariableOp*conv3d_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_101/BiasAdd/ReadVariableOp�
conv3d_101/BiasAddBiasAddconv3d_101/Conv3D:output:0)conv3d_101/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_101/BiasAdd�
conv3d_101/SoftplusSoftplusconv3d_101/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_101/Softplus�
 conv3d_102/Conv3D/ReadVariableOpReadVariableOp)conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_102/Conv3D/ReadVariableOp�
conv3d_102/Conv3DConv3D!conv3d_101/Softplus:activations:0(conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_102/Conv3D�
!conv3d_102/BiasAdd/ReadVariableOpReadVariableOp*conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_102/BiasAdd/ReadVariableOp�
conv3d_102/BiasAddBiasAddconv3d_102/Conv3D:output:0)conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_102/BiasAdd�
IdentityIdentityconv3d_102/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_100/BiasAdd/ReadVariableOp!^conv3d_100/Conv3D/ReadVariableOp"^conv3d_101/BiasAdd/ReadVariableOp!^conv3d_101/Conv3D/ReadVariableOp"^conv3d_102/BiasAdd/ReadVariableOp!^conv3d_102/Conv3D/ReadVariableOp!^conv3d_96/BiasAdd/ReadVariableOp ^conv3d_96/Conv3D/ReadVariableOp!^conv3d_97/BiasAdd/ReadVariableOp ^conv3d_97/Conv3D/ReadVariableOp!^conv3d_98/BiasAdd/ReadVariableOp ^conv3d_98/Conv3D/ReadVariableOp!^conv3d_99/BiasAdd/ReadVariableOp ^conv3d_99/Conv3D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_100/BiasAdd/ReadVariableOp!conv3d_100/BiasAdd/ReadVariableOp2D
 conv3d_100/Conv3D/ReadVariableOp conv3d_100/Conv3D/ReadVariableOp2F
!conv3d_101/BiasAdd/ReadVariableOp!conv3d_101/BiasAdd/ReadVariableOp2D
 conv3d_101/Conv3D/ReadVariableOp conv3d_101/Conv3D/ReadVariableOp2F
!conv3d_102/BiasAdd/ReadVariableOp!conv3d_102/BiasAdd/ReadVariableOp2D
 conv3d_102/Conv3D/ReadVariableOp conv3d_102/Conv3D/ReadVariableOp2D
 conv3d_96/BiasAdd/ReadVariableOp conv3d_96/BiasAdd/ReadVariableOp2B
conv3d_96/Conv3D/ReadVariableOpconv3d_96/Conv3D/ReadVariableOp2D
 conv3d_97/BiasAdd/ReadVariableOp conv3d_97/BiasAdd/ReadVariableOp2B
conv3d_97/Conv3D/ReadVariableOpconv3d_97/Conv3D/ReadVariableOp2D
 conv3d_98/BiasAdd/ReadVariableOp conv3d_98/BiasAdd/ReadVariableOp2B
conv3d_98/Conv3D/ReadVariableOpconv3d_98/Conv3D/ReadVariableOp2D
 conv3d_99/BiasAdd/ReadVariableOp conv3d_99/BiasAdd/ReadVariableOp2B
conv3d_99/Conv3D/ReadVariableOpconv3d_99/Conv3D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�x
�
E__inference_model_24_layer_call_and_return_conditional_losses_6091215

inputs/
conv3d_96_6091145:
conv3d_96_6091147:/
conv3d_97_6091151:
conv3d_97_6091153:/
conv3d_98_6091157:
conv3d_98_6091159:"
dense_24_6091164:@@
dense_24_6091166:@/
conv3d_99_6091178:
conv3d_99_6091180:0
conv3d_100_6091191: 
conv3d_100_6091193:0
conv3d_101_6091204: 
conv3d_101_6091206:0
conv3d_102_6091209: 
conv3d_102_6091211:
identity��"conv3d_100/StatefulPartitionedCall�"conv3d_101/StatefulPartitionedCall�"conv3d_102/StatefulPartitionedCall�!conv3d_96/StatefulPartitionedCall�!conv3d_97/StatefulPartitionedCall�!conv3d_98/StatefulPartitionedCall�!conv3d_99/StatefulPartitionedCall� dense_24/StatefulPartitionedCall�
0tf.__operators__.getitem_194/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_194/strided_slice/stack�
2tf.__operators__.getitem_194/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_194/strided_slice/stack_1�
2tf.__operators__.getitem_194/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_194/strided_slice/stack_2�
*tf.__operators__.getitem_194/strided_sliceStridedSliceinputs9tf.__operators__.getitem_194/strided_slice/stack:output:0;tf.__operators__.getitem_194/strided_slice/stack_1:output:0;tf.__operators__.getitem_194/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_194/strided_slice�
#range_conversion_24/PartitionedCallPartitionedCall3tf.__operators__.getitem_194/strided_slice:output:0*
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
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_60907152%
#range_conversion_24/PartitionedCall�
0tf.__operators__.getitem_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_195/strided_slice/stack�
2tf.__operators__.getitem_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_195/strided_slice/stack_1�
2tf.__operators__.getitem_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_195/strided_slice/stack_2�
*tf.__operators__.getitem_195/strided_sliceStridedSliceinputs9tf.__operators__.getitem_195/strided_slice/stack:output:0;tf.__operators__.getitem_195/strided_slice/stack_1:output:0;tf.__operators__.getitem_195/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_195/strided_slicex
tf.concat_217/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_217/concat/axis�
tf.concat_217/concatConcatV2,range_conversion_24/PartitionedCall:output:03tf.__operators__.getitem_195/strided_slice:output:0"tf.concat_217/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_217/concat�
!conv3d_96/StatefulPartitionedCallStatefulPartitionedCalltf.concat_217/concat:output:0conv3d_96_6091145conv3d_96_6091147*
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
F__inference_conv3d_96_layer_call_and_return_conditional_losses_60907342#
!conv3d_96/StatefulPartitionedCall�
$average_pooling3d_36/PartitionedCallPartitionedCall*conv3d_96/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_60907482&
$average_pooling3d_36/PartitionedCall�
!conv3d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_36/PartitionedCall:output:0conv3d_97_6091151conv3d_97_6091153*
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
F__inference_conv3d_97_layer_call_and_return_conditional_losses_60907612#
!conv3d_97/StatefulPartitionedCall�
$average_pooling3d_37/PartitionedCallPartitionedCall*conv3d_97/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_60907752&
$average_pooling3d_37/PartitionedCall�
!conv3d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_37/PartitionedCall:output:0conv3d_98_6091157conv3d_98_6091159*
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
F__inference_conv3d_98_layer_call_and_return_conditional_losses_60907882#
!conv3d_98/StatefulPartitionedCall�
$average_pooling3d_38/PartitionedCallPartitionedCall*conv3d_98/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_60908022&
$average_pooling3d_38/PartitionedCall�
reshape_48/PartitionedCallPartitionedCall-average_pooling3d_38/PartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_60908162
reshape_48/PartitionedCall�
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#reshape_48/PartitionedCall:output:0dense_24_6091164dense_24_6091166*
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
E__inference_dense_24_layer_call_and_return_conditional_losses_60908292"
 dense_24/StatefulPartitionedCall�
reshape_49/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
G__inference_reshape_49_layer_call_and_return_conditional_losses_60908502
reshape_49/PartitionedCall�
tf.reshape_240/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_240/Reshape/shape�
tf.reshape_240/ReshapeReshape#reshape_49/PartitionedCall:output:0%tf.reshape_240/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_240/Reshape�
tf.tile_120/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_120/Tile/multiples�
tf.tile_120/TileTiletf.reshape_240/Reshape:output:0#tf.tile_120/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_120/Tile�
tf.reshape_241/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_241/Reshape/shape�
tf.reshape_241/ReshapeReshapetf.tile_120/Tile:output:0%tf.reshape_241/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_241/Reshapex
tf.concat_218/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_218/concat/axis�
tf.concat_218/concatConcatV2tf.reshape_241/Reshape:output:0*conv3d_98/StatefulPartitionedCall:output:0"tf.concat_218/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_218/concat�
!conv3d_99/StatefulPartitionedCallStatefulPartitionedCalltf.concat_218/concat:output:0conv3d_99_6091178conv3d_99_6091180*
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
F__inference_conv3d_99_layer_call_and_return_conditional_losses_60908712#
!conv3d_99/StatefulPartitionedCall�
tf.reshape_242/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_242/Reshape/shape�
tf.reshape_242/ReshapeReshape*conv3d_99/StatefulPartitionedCall:output:0%tf.reshape_242/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_242/Reshape�
tf.tile_121/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_121/Tile/multiples�
tf.tile_121/TileTiletf.reshape_242/Reshape:output:0#tf.tile_121/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_121/Tile�
tf.reshape_243/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_243/Reshape/shape�
tf.reshape_243/ReshapeReshapetf.tile_121/Tile:output:0%tf.reshape_243/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_243/Reshapex
tf.concat_219/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_219/concat/axis�
tf.concat_219/concatConcatV2tf.reshape_243/Reshape:output:0*conv3d_97/StatefulPartitionedCall:output:0"tf.concat_219/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_219/concat�
"conv3d_100/StatefulPartitionedCallStatefulPartitionedCalltf.concat_219/concat:output:0conv3d_100_6091191conv3d_100_6091193*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_100_layer_call_and_return_conditional_losses_60908962$
"conv3d_100/StatefulPartitionedCall�
tf.reshape_244/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_244/Reshape/shape�
tf.reshape_244/ReshapeReshape+conv3d_100/StatefulPartitionedCall:output:0%tf.reshape_244/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_244/Reshape�
tf.tile_122/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_122/Tile/multiples�
tf.tile_122/TileTiletf.reshape_244/Reshape:output:0#tf.tile_122/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_122/Tile�
tf.reshape_245/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_245/Reshape/shape�
tf.reshape_245/ReshapeReshapetf.tile_122/Tile:output:0%tf.reshape_245/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_245/Reshapex
tf.concat_220/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_220/concat/axis�
tf.concat_220/concatConcatV2tf.reshape_245/Reshape:output:0*conv3d_96/StatefulPartitionedCall:output:0"tf.concat_220/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_220/concat�
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCalltf.concat_220/concat:output:0conv3d_101_6091204conv3d_101_6091206*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_60909212$
"conv3d_101/StatefulPartitionedCall�
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCall+conv3d_101/StatefulPartitionedCall:output:0conv3d_102_6091209conv3d_102_6091211*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_102_layer_call_and_return_conditional_losses_60909372$
"conv3d_102/StatefulPartitionedCall�
IdentityIdentity+conv3d_102/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_100/StatefulPartitionedCall#^conv3d_101/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall"^conv3d_96/StatefulPartitionedCall"^conv3d_97/StatefulPartitionedCall"^conv3d_98/StatefulPartitionedCall"^conv3d_99/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_100/StatefulPartitionedCall"conv3d_100/StatefulPartitionedCall2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2F
!conv3d_96/StatefulPartitionedCall!conv3d_96/StatefulPartitionedCall2F
!conv3d_97/StatefulPartitionedCall!conv3d_97/StatefulPartitionedCall2F
!conv3d_98/StatefulPartitionedCall!conv3d_98/StatefulPartitionedCall2F
!conv3d_99/StatefulPartitionedCall!conv3d_99/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
+__inference_conv3d_98_layer_call_fn_6091960

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
F__inference_conv3d_98_layer_call_and_return_conditional_losses_60907882
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
*__inference_model_24_layer_call_fn_6091568

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
E__inference_model_24_layer_call_and_return_conditional_losses_60912152
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
R
6__inference_average_pooling3d_37_layer_call_fn_6091933

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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_60907752
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
�
%__inference_signature_wrapper_6091494	
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
"__inference__wrapped_model_60906022
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
�
R
6__inference_average_pooling3d_36_layer_call_fn_6091880

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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_60906152
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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6091990

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
,__inference_conv3d_100_layer_call_fn_6092085

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_100_layer_call_and_return_conditional_losses_60908962
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
�
�
+__inference_conv3d_99_layer_call_fn_6092065

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
F__inference_conv3d_99_layer_call_and_return_conditional_losses_60908712
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
�x
�
E__inference_model_24_layer_call_and_return_conditional_losses_6090944

inputs/
conv3d_96_6090735:
conv3d_96_6090737:/
conv3d_97_6090762:
conv3d_97_6090764:/
conv3d_98_6090789:
conv3d_98_6090791:"
dense_24_6090830:@@
dense_24_6090832:@/
conv3d_99_6090872:
conv3d_99_6090874:0
conv3d_100_6090897: 
conv3d_100_6090899:0
conv3d_101_6090922: 
conv3d_101_6090924:0
conv3d_102_6090938: 
conv3d_102_6090940:
identity��"conv3d_100/StatefulPartitionedCall�"conv3d_101/StatefulPartitionedCall�"conv3d_102/StatefulPartitionedCall�!conv3d_96/StatefulPartitionedCall�!conv3d_97/StatefulPartitionedCall�!conv3d_98/StatefulPartitionedCall�!conv3d_99/StatefulPartitionedCall� dense_24/StatefulPartitionedCall�
0tf.__operators__.getitem_194/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_194/strided_slice/stack�
2tf.__operators__.getitem_194/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_194/strided_slice/stack_1�
2tf.__operators__.getitem_194/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_194/strided_slice/stack_2�
*tf.__operators__.getitem_194/strided_sliceStridedSliceinputs9tf.__operators__.getitem_194/strided_slice/stack:output:0;tf.__operators__.getitem_194/strided_slice/stack_1:output:0;tf.__operators__.getitem_194/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_194/strided_slice�
#range_conversion_24/PartitionedCallPartitionedCall3tf.__operators__.getitem_194/strided_slice:output:0*
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
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_60907152%
#range_conversion_24/PartitionedCall�
0tf.__operators__.getitem_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_195/strided_slice/stack�
2tf.__operators__.getitem_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_195/strided_slice/stack_1�
2tf.__operators__.getitem_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_195/strided_slice/stack_2�
*tf.__operators__.getitem_195/strided_sliceStridedSliceinputs9tf.__operators__.getitem_195/strided_slice/stack:output:0;tf.__operators__.getitem_195/strided_slice/stack_1:output:0;tf.__operators__.getitem_195/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_195/strided_slicex
tf.concat_217/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_217/concat/axis�
tf.concat_217/concatConcatV2,range_conversion_24/PartitionedCall:output:03tf.__operators__.getitem_195/strided_slice:output:0"tf.concat_217/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_217/concat�
!conv3d_96/StatefulPartitionedCallStatefulPartitionedCalltf.concat_217/concat:output:0conv3d_96_6090735conv3d_96_6090737*
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
F__inference_conv3d_96_layer_call_and_return_conditional_losses_60907342#
!conv3d_96/StatefulPartitionedCall�
$average_pooling3d_36/PartitionedCallPartitionedCall*conv3d_96/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_60907482&
$average_pooling3d_36/PartitionedCall�
!conv3d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_36/PartitionedCall:output:0conv3d_97_6090762conv3d_97_6090764*
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
F__inference_conv3d_97_layer_call_and_return_conditional_losses_60907612#
!conv3d_97/StatefulPartitionedCall�
$average_pooling3d_37/PartitionedCallPartitionedCall*conv3d_97/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_60907752&
$average_pooling3d_37/PartitionedCall�
!conv3d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_37/PartitionedCall:output:0conv3d_98_6090789conv3d_98_6090791*
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
F__inference_conv3d_98_layer_call_and_return_conditional_losses_60907882#
!conv3d_98/StatefulPartitionedCall�
$average_pooling3d_38/PartitionedCallPartitionedCall*conv3d_98/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_60908022&
$average_pooling3d_38/PartitionedCall�
reshape_48/PartitionedCallPartitionedCall-average_pooling3d_38/PartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_60908162
reshape_48/PartitionedCall�
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#reshape_48/PartitionedCall:output:0dense_24_6090830dense_24_6090832*
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
E__inference_dense_24_layer_call_and_return_conditional_losses_60908292"
 dense_24/StatefulPartitionedCall�
reshape_49/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
G__inference_reshape_49_layer_call_and_return_conditional_losses_60908502
reshape_49/PartitionedCall�
tf.reshape_240/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_240/Reshape/shape�
tf.reshape_240/ReshapeReshape#reshape_49/PartitionedCall:output:0%tf.reshape_240/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_240/Reshape�
tf.tile_120/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_120/Tile/multiples�
tf.tile_120/TileTiletf.reshape_240/Reshape:output:0#tf.tile_120/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_120/Tile�
tf.reshape_241/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_241/Reshape/shape�
tf.reshape_241/ReshapeReshapetf.tile_120/Tile:output:0%tf.reshape_241/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_241/Reshapex
tf.concat_218/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_218/concat/axis�
tf.concat_218/concatConcatV2tf.reshape_241/Reshape:output:0*conv3d_98/StatefulPartitionedCall:output:0"tf.concat_218/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_218/concat�
!conv3d_99/StatefulPartitionedCallStatefulPartitionedCalltf.concat_218/concat:output:0conv3d_99_6090872conv3d_99_6090874*
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
F__inference_conv3d_99_layer_call_and_return_conditional_losses_60908712#
!conv3d_99/StatefulPartitionedCall�
tf.reshape_242/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_242/Reshape/shape�
tf.reshape_242/ReshapeReshape*conv3d_99/StatefulPartitionedCall:output:0%tf.reshape_242/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_242/Reshape�
tf.tile_121/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_121/Tile/multiples�
tf.tile_121/TileTiletf.reshape_242/Reshape:output:0#tf.tile_121/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_121/Tile�
tf.reshape_243/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_243/Reshape/shape�
tf.reshape_243/ReshapeReshapetf.tile_121/Tile:output:0%tf.reshape_243/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_243/Reshapex
tf.concat_219/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_219/concat/axis�
tf.concat_219/concatConcatV2tf.reshape_243/Reshape:output:0*conv3d_97/StatefulPartitionedCall:output:0"tf.concat_219/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_219/concat�
"conv3d_100/StatefulPartitionedCallStatefulPartitionedCalltf.concat_219/concat:output:0conv3d_100_6090897conv3d_100_6090899*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_100_layer_call_and_return_conditional_losses_60908962$
"conv3d_100/StatefulPartitionedCall�
tf.reshape_244/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_244/Reshape/shape�
tf.reshape_244/ReshapeReshape+conv3d_100/StatefulPartitionedCall:output:0%tf.reshape_244/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_244/Reshape�
tf.tile_122/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_122/Tile/multiples�
tf.tile_122/TileTiletf.reshape_244/Reshape:output:0#tf.tile_122/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_122/Tile�
tf.reshape_245/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_245/Reshape/shape�
tf.reshape_245/ReshapeReshapetf.tile_122/Tile:output:0%tf.reshape_245/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_245/Reshapex
tf.concat_220/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_220/concat/axis�
tf.concat_220/concatConcatV2tf.reshape_245/Reshape:output:0*conv3d_96/StatefulPartitionedCall:output:0"tf.concat_220/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_220/concat�
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCalltf.concat_220/concat:output:0conv3d_101_6090922conv3d_101_6090924*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_60909212$
"conv3d_101/StatefulPartitionedCall�
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCall+conv3d_101/StatefulPartitionedCall:output:0conv3d_102_6090938conv3d_102_6090940*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_102_layer_call_and_return_conditional_losses_60909372$
"conv3d_102/StatefulPartitionedCall�
IdentityIdentity+conv3d_102/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_100/StatefulPartitionedCall#^conv3d_101/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall"^conv3d_96/StatefulPartitionedCall"^conv3d_97/StatefulPartitionedCall"^conv3d_98/StatefulPartitionedCall"^conv3d_99/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_100/StatefulPartitionedCall"conv3d_100/StatefulPartitionedCall2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2F
!conv3d_96/StatefulPartitionedCall!conv3d_96/StatefulPartitionedCall2F
!conv3d_97/StatefulPartitionedCall!conv3d_97/StatefulPartitionedCall2F
!conv3d_98/StatefulPartitionedCall!conv3d_98/StatefulPartitionedCall2F
!conv3d_99/StatefulPartitionedCall!conv3d_99/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
c
G__inference_reshape_48_layer_call_and_return_conditional_losses_6090816

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
m
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6091903

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
�
�
+__inference_conv3d_97_layer_call_fn_6091912

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
F__inference_conv3d_97_layer_call_and_return_conditional_losses_60907612
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

m
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6090675

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
��
�
E__inference_model_24_layer_call_and_return_conditional_losses_6091703

inputsF
(conv3d_96_conv3d_readvariableop_resource:7
)conv3d_96_biasadd_readvariableop_resource:F
(conv3d_97_conv3d_readvariableop_resource:7
)conv3d_97_biasadd_readvariableop_resource:F
(conv3d_98_conv3d_readvariableop_resource:7
)conv3d_98_biasadd_readvariableop_resource:9
'dense_24_matmul_readvariableop_resource:@@6
(dense_24_biasadd_readvariableop_resource:@F
(conv3d_99_conv3d_readvariableop_resource:7
)conv3d_99_biasadd_readvariableop_resource:G
)conv3d_100_conv3d_readvariableop_resource:8
*conv3d_100_biasadd_readvariableop_resource:G
)conv3d_101_conv3d_readvariableop_resource:8
*conv3d_101_biasadd_readvariableop_resource:G
)conv3d_102_conv3d_readvariableop_resource:8
*conv3d_102_biasadd_readvariableop_resource:
identity��!conv3d_100/BiasAdd/ReadVariableOp� conv3d_100/Conv3D/ReadVariableOp�!conv3d_101/BiasAdd/ReadVariableOp� conv3d_101/Conv3D/ReadVariableOp�!conv3d_102/BiasAdd/ReadVariableOp� conv3d_102/Conv3D/ReadVariableOp� conv3d_96/BiasAdd/ReadVariableOp�conv3d_96/Conv3D/ReadVariableOp� conv3d_97/BiasAdd/ReadVariableOp�conv3d_97/Conv3D/ReadVariableOp� conv3d_98/BiasAdd/ReadVariableOp�conv3d_98/Conv3D/ReadVariableOp� conv3d_99/BiasAdd/ReadVariableOp�conv3d_99/Conv3D/ReadVariableOp�dense_24/BiasAdd/ReadVariableOp�dense_24/MatMul/ReadVariableOp�
0tf.__operators__.getitem_194/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_194/strided_slice/stack�
2tf.__operators__.getitem_194/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_194/strided_slice/stack_1�
2tf.__operators__.getitem_194/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_194/strided_slice/stack_2�
*tf.__operators__.getitem_194/strided_sliceStridedSliceinputs9tf.__operators__.getitem_194/strided_slice/stack:output:0;tf.__operators__.getitem_194/strided_slice/stack_1:output:0;tf.__operators__.getitem_194/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_194/strided_slice{
range_conversion_24/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_24/sub/y�
range_conversion_24/subSub3tf.__operators__.getitem_194/strided_slice:output:0"range_conversion_24/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/sub�
range_conversion_24/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_24/truediv/y�
range_conversion_24/truedivRealDivrange_conversion_24/sub:z:0&range_conversion_24/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/truediv{
range_conversion_24/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_24/mul/y�
range_conversion_24/mulMulrange_conversion_24/truediv:z:0"range_conversion_24/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/mul{
range_conversion_24/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_24/add/y�
range_conversion_24/addAddV2range_conversion_24/mul:z:0"range_conversion_24/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_24/add�
0tf.__operators__.getitem_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_195/strided_slice/stack�
2tf.__operators__.getitem_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_195/strided_slice/stack_1�
2tf.__operators__.getitem_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_195/strided_slice/stack_2�
*tf.__operators__.getitem_195/strided_sliceStridedSliceinputs9tf.__operators__.getitem_195/strided_slice/stack:output:0;tf.__operators__.getitem_195/strided_slice/stack_1:output:0;tf.__operators__.getitem_195/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_195/strided_slicex
tf.concat_217/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_217/concat/axis�
tf.concat_217/concatConcatV2range_conversion_24/add:z:03tf.__operators__.getitem_195/strided_slice:output:0"tf.concat_217/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_217/concat�
conv3d_96/Conv3D/ReadVariableOpReadVariableOp(conv3d_96_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_96/Conv3D/ReadVariableOp�
conv3d_96/Conv3DConv3Dtf.concat_217/concat:output:0'conv3d_96/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_96/Conv3D�
 conv3d_96/BiasAdd/ReadVariableOpReadVariableOp)conv3d_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_96/BiasAdd/ReadVariableOp�
conv3d_96/BiasAddBiasAddconv3d_96/Conv3D:output:0(conv3d_96/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_96/BiasAdd�
conv3d_96/SoftplusSoftplusconv3d_96/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_96/Softplus�
#average_pooling3d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_36/transpose/perm�
average_pooling3d_36/transpose	Transpose conv3d_96/Softplus:activations:0,average_pooling3d_36/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_36/transpose�
average_pooling3d_36/AvgPool3D	AvgPool3D"average_pooling3d_36/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_36/AvgPool3D�
%average_pooling3d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_36/transpose_1/perm�
 average_pooling3d_36/transpose_1	Transpose'average_pooling3d_36/AvgPool3D:output:0.average_pooling3d_36/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_36/transpose_1�
conv3d_97/Conv3D/ReadVariableOpReadVariableOp(conv3d_97_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_97/Conv3D/ReadVariableOp�
conv3d_97/Conv3DConv3D$average_pooling3d_36/transpose_1:y:0'conv3d_97/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_97/Conv3D�
 conv3d_97/BiasAdd/ReadVariableOpReadVariableOp)conv3d_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_97/BiasAdd/ReadVariableOp�
conv3d_97/BiasAddBiasAddconv3d_97/Conv3D:output:0(conv3d_97/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_97/BiasAdd�
conv3d_97/SoftplusSoftplusconv3d_97/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_97/Softplus�
#average_pooling3d_37/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_37/transpose/perm�
average_pooling3d_37/transpose	Transpose conv3d_97/Softplus:activations:0,average_pooling3d_37/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_37/transpose�
average_pooling3d_37/AvgPool3D	AvgPool3D"average_pooling3d_37/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_37/AvgPool3D�
%average_pooling3d_37/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_37/transpose_1/perm�
 average_pooling3d_37/transpose_1	Transpose'average_pooling3d_37/AvgPool3D:output:0.average_pooling3d_37/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_37/transpose_1�
conv3d_98/Conv3D/ReadVariableOpReadVariableOp(conv3d_98_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_98/Conv3D/ReadVariableOp�
conv3d_98/Conv3DConv3D$average_pooling3d_37/transpose_1:y:0'conv3d_98/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_98/Conv3D�
 conv3d_98/BiasAdd/ReadVariableOpReadVariableOp)conv3d_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_98/BiasAdd/ReadVariableOp�
conv3d_98/BiasAddBiasAddconv3d_98/Conv3D:output:0(conv3d_98/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_98/BiasAdd�
conv3d_98/SoftplusSoftplusconv3d_98/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_98/Softplus�
#average_pooling3d_38/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_38/transpose/perm�
average_pooling3d_38/transpose	Transpose conv3d_98/Softplus:activations:0,average_pooling3d_38/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_38/transpose�
average_pooling3d_38/AvgPool3D	AvgPool3D"average_pooling3d_38/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_38/AvgPool3D�
%average_pooling3d_38/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_38/transpose_1/perm�
 average_pooling3d_38/transpose_1	Transpose'average_pooling3d_38/AvgPool3D:output:0.average_pooling3d_38/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_38/transpose_1x
reshape_48/ShapeShape$average_pooling3d_38/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_48/Shape�
reshape_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_48/strided_slice/stack�
 reshape_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_1�
 reshape_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_2�
reshape_48/strided_sliceStridedSlicereshape_48/Shape:output:0'reshape_48/strided_slice/stack:output:0)reshape_48/strided_slice/stack_1:output:0)reshape_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_48/strided_slicez
reshape_48/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_48/Reshape/shape/1�
reshape_48/Reshape/shapePack!reshape_48/strided_slice:output:0#reshape_48/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_48/Reshape/shape�
reshape_48/ReshapeReshape$average_pooling3d_38/transpose_1:y:0!reshape_48/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_48/Reshape�
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_24/MatMul/ReadVariableOp�
dense_24/MatMulMatMulreshape_48/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_24/MatMul�
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_24/BiasAdd/ReadVariableOp�
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_24/BiasAdd
dense_24/SoftplusSoftplusdense_24/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_24/Softpluss
reshape_49/ShapeShapedense_24/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_49/Shape�
reshape_49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_49/strided_slice/stack�
 reshape_49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_49/strided_slice/stack_1�
 reshape_49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_49/strided_slice/stack_2�
reshape_49/strided_sliceStridedSlicereshape_49/Shape:output:0'reshape_49/strided_slice/stack:output:0)reshape_49/strided_slice/stack_1:output:0)reshape_49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_49/strided_slicez
reshape_49/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/1z
reshape_49/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/2z
reshape_49/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/3z
reshape_49/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_49/Reshape/shape/4�
reshape_49/Reshape/shapePack!reshape_49/strided_slice:output:0#reshape_49/Reshape/shape/1:output:0#reshape_49/Reshape/shape/2:output:0#reshape_49/Reshape/shape/3:output:0#reshape_49/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_49/Reshape/shape�
reshape_49/ReshapeReshapedense_24/Softplus:activations:0!reshape_49/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_49/Reshape�
tf.reshape_240/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_240/Reshape/shape�
tf.reshape_240/ReshapeReshapereshape_49/Reshape:output:0%tf.reshape_240/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_240/Reshape�
tf.tile_120/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_120/Tile/multiples�
tf.tile_120/TileTiletf.reshape_240/Reshape:output:0#tf.tile_120/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_120/Tile�
tf.reshape_241/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_241/Reshape/shape�
tf.reshape_241/ReshapeReshapetf.tile_120/Tile:output:0%tf.reshape_241/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_241/Reshapex
tf.concat_218/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_218/concat/axis�
tf.concat_218/concatConcatV2tf.reshape_241/Reshape:output:0 conv3d_98/Softplus:activations:0"tf.concat_218/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_218/concat�
conv3d_99/Conv3D/ReadVariableOpReadVariableOp(conv3d_99_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_99/Conv3D/ReadVariableOp�
conv3d_99/Conv3DConv3Dtf.concat_218/concat:output:0'conv3d_99/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_99/Conv3D�
 conv3d_99/BiasAdd/ReadVariableOpReadVariableOp)conv3d_99_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_99/BiasAdd/ReadVariableOp�
conv3d_99/BiasAddBiasAddconv3d_99/Conv3D:output:0(conv3d_99/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_99/BiasAdd�
conv3d_99/SoftplusSoftplusconv3d_99/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_99/Softplus�
tf.reshape_242/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_242/Reshape/shape�
tf.reshape_242/ReshapeReshape conv3d_99/Softplus:activations:0%tf.reshape_242/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_242/Reshape�
tf.tile_121/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_121/Tile/multiples�
tf.tile_121/TileTiletf.reshape_242/Reshape:output:0#tf.tile_121/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_121/Tile�
tf.reshape_243/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_243/Reshape/shape�
tf.reshape_243/ReshapeReshapetf.tile_121/Tile:output:0%tf.reshape_243/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_243/Reshapex
tf.concat_219/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_219/concat/axis�
tf.concat_219/concatConcatV2tf.reshape_243/Reshape:output:0 conv3d_97/Softplus:activations:0"tf.concat_219/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_219/concat�
 conv3d_100/Conv3D/ReadVariableOpReadVariableOp)conv3d_100_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_100/Conv3D/ReadVariableOp�
conv3d_100/Conv3DConv3Dtf.concat_219/concat:output:0(conv3d_100/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_100/Conv3D�
!conv3d_100/BiasAdd/ReadVariableOpReadVariableOp*conv3d_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_100/BiasAdd/ReadVariableOp�
conv3d_100/BiasAddBiasAddconv3d_100/Conv3D:output:0)conv3d_100/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_100/BiasAdd�
conv3d_100/SoftplusSoftplusconv3d_100/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_100/Softplus�
tf.reshape_244/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_244/Reshape/shape�
tf.reshape_244/ReshapeReshape!conv3d_100/Softplus:activations:0%tf.reshape_244/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_244/Reshape�
tf.tile_122/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_122/Tile/multiples�
tf.tile_122/TileTiletf.reshape_244/Reshape:output:0#tf.tile_122/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_122/Tile�
tf.reshape_245/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_245/Reshape/shape�
tf.reshape_245/ReshapeReshapetf.tile_122/Tile:output:0%tf.reshape_245/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_245/Reshapex
tf.concat_220/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_220/concat/axis�
tf.concat_220/concatConcatV2tf.reshape_245/Reshape:output:0 conv3d_96/Softplus:activations:0"tf.concat_220/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_220/concat�
 conv3d_101/Conv3D/ReadVariableOpReadVariableOp)conv3d_101_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_101/Conv3D/ReadVariableOp�
conv3d_101/Conv3DConv3Dtf.concat_220/concat:output:0(conv3d_101/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_101/Conv3D�
!conv3d_101/BiasAdd/ReadVariableOpReadVariableOp*conv3d_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_101/BiasAdd/ReadVariableOp�
conv3d_101/BiasAddBiasAddconv3d_101/Conv3D:output:0)conv3d_101/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_101/BiasAdd�
conv3d_101/SoftplusSoftplusconv3d_101/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_101/Softplus�
 conv3d_102/Conv3D/ReadVariableOpReadVariableOp)conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_102/Conv3D/ReadVariableOp�
conv3d_102/Conv3DConv3D!conv3d_101/Softplus:activations:0(conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_102/Conv3D�
!conv3d_102/BiasAdd/ReadVariableOpReadVariableOp*conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_102/BiasAdd/ReadVariableOp�
conv3d_102/BiasAddBiasAddconv3d_102/Conv3D:output:0)conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_102/BiasAdd�
IdentityIdentityconv3d_102/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_100/BiasAdd/ReadVariableOp!^conv3d_100/Conv3D/ReadVariableOp"^conv3d_101/BiasAdd/ReadVariableOp!^conv3d_101/Conv3D/ReadVariableOp"^conv3d_102/BiasAdd/ReadVariableOp!^conv3d_102/Conv3D/ReadVariableOp!^conv3d_96/BiasAdd/ReadVariableOp ^conv3d_96/Conv3D/ReadVariableOp!^conv3d_97/BiasAdd/ReadVariableOp ^conv3d_97/Conv3D/ReadVariableOp!^conv3d_98/BiasAdd/ReadVariableOp ^conv3d_98/Conv3D/ReadVariableOp!^conv3d_99/BiasAdd/ReadVariableOp ^conv3d_99/Conv3D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_100/BiasAdd/ReadVariableOp!conv3d_100/BiasAdd/ReadVariableOp2D
 conv3d_100/Conv3D/ReadVariableOp conv3d_100/Conv3D/ReadVariableOp2F
!conv3d_101/BiasAdd/ReadVariableOp!conv3d_101/BiasAdd/ReadVariableOp2D
 conv3d_101/Conv3D/ReadVariableOp conv3d_101/Conv3D/ReadVariableOp2F
!conv3d_102/BiasAdd/ReadVariableOp!conv3d_102/BiasAdd/ReadVariableOp2D
 conv3d_102/Conv3D/ReadVariableOp conv3d_102/Conv3D/ReadVariableOp2D
 conv3d_96/BiasAdd/ReadVariableOp conv3d_96/BiasAdd/ReadVariableOp2B
conv3d_96/Conv3D/ReadVariableOpconv3d_96/Conv3D/ReadVariableOp2D
 conv3d_97/BiasAdd/ReadVariableOp conv3d_97/BiasAdd/ReadVariableOp2B
conv3d_97/Conv3D/ReadVariableOpconv3d_97/Conv3D/ReadVariableOp2D
 conv3d_98/BiasAdd/ReadVariableOp conv3d_98/BiasAdd/ReadVariableOp2B
conv3d_98/Conv3D/ReadVariableOpconv3d_98/Conv3D/ReadVariableOp2D
 conv3d_99/BiasAdd/ReadVariableOp conv3d_99/BiasAdd/ReadVariableOp2B
conv3d_99/Conv3D/ReadVariableOpconv3d_99/Conv3D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
c
G__inference_reshape_49_layer_call_and_return_conditional_losses_6092056

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
F__inference_conv3d_96_layer_call_and_return_conditional_losses_6091875

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
�
R
6__inference_average_pooling3d_38_layer_call_fn_6091981

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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_60908022
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
�
c
G__inference_reshape_49_layer_call_and_return_conditional_losses_6090850

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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6091999

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
�
*__inference_model_24_layer_call_fn_6091287	
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
E__inference_model_24_layer_call_and_return_conditional_losses_60912152
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
�x
�
E__inference_model_24_layer_call_and_return_conditional_losses_6091455	
input/
conv3d_96_6091385:
conv3d_96_6091387:/
conv3d_97_6091391:
conv3d_97_6091393:/
conv3d_98_6091397:
conv3d_98_6091399:"
dense_24_6091404:@@
dense_24_6091406:@/
conv3d_99_6091418:
conv3d_99_6091420:0
conv3d_100_6091431: 
conv3d_100_6091433:0
conv3d_101_6091444: 
conv3d_101_6091446:0
conv3d_102_6091449: 
conv3d_102_6091451:
identity��"conv3d_100/StatefulPartitionedCall�"conv3d_101/StatefulPartitionedCall�"conv3d_102/StatefulPartitionedCall�!conv3d_96/StatefulPartitionedCall�!conv3d_97/StatefulPartitionedCall�!conv3d_98/StatefulPartitionedCall�!conv3d_99/StatefulPartitionedCall� dense_24/StatefulPartitionedCall�
0tf.__operators__.getitem_194/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_194/strided_slice/stack�
2tf.__operators__.getitem_194/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_194/strided_slice/stack_1�
2tf.__operators__.getitem_194/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_194/strided_slice/stack_2�
*tf.__operators__.getitem_194/strided_sliceStridedSliceinput9tf.__operators__.getitem_194/strided_slice/stack:output:0;tf.__operators__.getitem_194/strided_slice/stack_1:output:0;tf.__operators__.getitem_194/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_194/strided_slice�
#range_conversion_24/PartitionedCallPartitionedCall3tf.__operators__.getitem_194/strided_slice:output:0*
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
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_60907152%
#range_conversion_24/PartitionedCall�
0tf.__operators__.getitem_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_195/strided_slice/stack�
2tf.__operators__.getitem_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_195/strided_slice/stack_1�
2tf.__operators__.getitem_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_195/strided_slice/stack_2�
*tf.__operators__.getitem_195/strided_sliceStridedSliceinput9tf.__operators__.getitem_195/strided_slice/stack:output:0;tf.__operators__.getitem_195/strided_slice/stack_1:output:0;tf.__operators__.getitem_195/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_195/strided_slicex
tf.concat_217/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_217/concat/axis�
tf.concat_217/concatConcatV2,range_conversion_24/PartitionedCall:output:03tf.__operators__.getitem_195/strided_slice:output:0"tf.concat_217/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_217/concat�
!conv3d_96/StatefulPartitionedCallStatefulPartitionedCalltf.concat_217/concat:output:0conv3d_96_6091385conv3d_96_6091387*
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
F__inference_conv3d_96_layer_call_and_return_conditional_losses_60907342#
!conv3d_96/StatefulPartitionedCall�
$average_pooling3d_36/PartitionedCallPartitionedCall*conv3d_96/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_60907482&
$average_pooling3d_36/PartitionedCall�
!conv3d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_36/PartitionedCall:output:0conv3d_97_6091391conv3d_97_6091393*
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
F__inference_conv3d_97_layer_call_and_return_conditional_losses_60907612#
!conv3d_97/StatefulPartitionedCall�
$average_pooling3d_37/PartitionedCallPartitionedCall*conv3d_97/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_60907752&
$average_pooling3d_37/PartitionedCall�
!conv3d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_37/PartitionedCall:output:0conv3d_98_6091397conv3d_98_6091399*
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
F__inference_conv3d_98_layer_call_and_return_conditional_losses_60907882#
!conv3d_98/StatefulPartitionedCall�
$average_pooling3d_38/PartitionedCallPartitionedCall*conv3d_98/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_60908022&
$average_pooling3d_38/PartitionedCall�
reshape_48/PartitionedCallPartitionedCall-average_pooling3d_38/PartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_60908162
reshape_48/PartitionedCall�
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#reshape_48/PartitionedCall:output:0dense_24_6091404dense_24_6091406*
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
E__inference_dense_24_layer_call_and_return_conditional_losses_60908292"
 dense_24/StatefulPartitionedCall�
reshape_49/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
G__inference_reshape_49_layer_call_and_return_conditional_losses_60908502
reshape_49/PartitionedCall�
tf.reshape_240/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_240/Reshape/shape�
tf.reshape_240/ReshapeReshape#reshape_49/PartitionedCall:output:0%tf.reshape_240/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_240/Reshape�
tf.tile_120/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_120/Tile/multiples�
tf.tile_120/TileTiletf.reshape_240/Reshape:output:0#tf.tile_120/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_120/Tile�
tf.reshape_241/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_241/Reshape/shape�
tf.reshape_241/ReshapeReshapetf.tile_120/Tile:output:0%tf.reshape_241/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_241/Reshapex
tf.concat_218/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_218/concat/axis�
tf.concat_218/concatConcatV2tf.reshape_241/Reshape:output:0*conv3d_98/StatefulPartitionedCall:output:0"tf.concat_218/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_218/concat�
!conv3d_99/StatefulPartitionedCallStatefulPartitionedCalltf.concat_218/concat:output:0conv3d_99_6091418conv3d_99_6091420*
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
F__inference_conv3d_99_layer_call_and_return_conditional_losses_60908712#
!conv3d_99/StatefulPartitionedCall�
tf.reshape_242/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_242/Reshape/shape�
tf.reshape_242/ReshapeReshape*conv3d_99/StatefulPartitionedCall:output:0%tf.reshape_242/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_242/Reshape�
tf.tile_121/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_121/Tile/multiples�
tf.tile_121/TileTiletf.reshape_242/Reshape:output:0#tf.tile_121/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_121/Tile�
tf.reshape_243/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_243/Reshape/shape�
tf.reshape_243/ReshapeReshapetf.tile_121/Tile:output:0%tf.reshape_243/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_243/Reshapex
tf.concat_219/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_219/concat/axis�
tf.concat_219/concatConcatV2tf.reshape_243/Reshape:output:0*conv3d_97/StatefulPartitionedCall:output:0"tf.concat_219/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_219/concat�
"conv3d_100/StatefulPartitionedCallStatefulPartitionedCalltf.concat_219/concat:output:0conv3d_100_6091431conv3d_100_6091433*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_100_layer_call_and_return_conditional_losses_60908962$
"conv3d_100/StatefulPartitionedCall�
tf.reshape_244/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_244/Reshape/shape�
tf.reshape_244/ReshapeReshape+conv3d_100/StatefulPartitionedCall:output:0%tf.reshape_244/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_244/Reshape�
tf.tile_122/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_122/Tile/multiples�
tf.tile_122/TileTiletf.reshape_244/Reshape:output:0#tf.tile_122/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_122/Tile�
tf.reshape_245/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_245/Reshape/shape�
tf.reshape_245/ReshapeReshapetf.tile_122/Tile:output:0%tf.reshape_245/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_245/Reshapex
tf.concat_220/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_220/concat/axis�
tf.concat_220/concatConcatV2tf.reshape_245/Reshape:output:0*conv3d_96/StatefulPartitionedCall:output:0"tf.concat_220/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_220/concat�
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCalltf.concat_220/concat:output:0conv3d_101_6091444conv3d_101_6091446*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_60909212$
"conv3d_101/StatefulPartitionedCall�
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCall+conv3d_101/StatefulPartitionedCall:output:0conv3d_102_6091449conv3d_102_6091451*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_102_layer_call_and_return_conditional_losses_60909372$
"conv3d_102/StatefulPartitionedCall�
IdentityIdentity+conv3d_102/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_100/StatefulPartitionedCall#^conv3d_101/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall"^conv3d_96/StatefulPartitionedCall"^conv3d_97/StatefulPartitionedCall"^conv3d_98/StatefulPartitionedCall"^conv3d_99/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_100/StatefulPartitionedCall"conv3d_100/StatefulPartitionedCall2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2F
!conv3d_96/StatefulPartitionedCall!conv3d_96/StatefulPartitionedCall2F
!conv3d_97/StatefulPartitionedCall!conv3d_97/StatefulPartitionedCall2F
!conv3d_98/StatefulPartitionedCall!conv3d_98/StatefulPartitionedCall2F
!conv3d_99/StatefulPartitionedCall!conv3d_99/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
F__inference_conv3d_99_layer_call_and_return_conditional_losses_6090871

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
�x
�
E__inference_model_24_layer_call_and_return_conditional_losses_6091371	
input/
conv3d_96_6091301:
conv3d_96_6091303:/
conv3d_97_6091307:
conv3d_97_6091309:/
conv3d_98_6091313:
conv3d_98_6091315:"
dense_24_6091320:@@
dense_24_6091322:@/
conv3d_99_6091334:
conv3d_99_6091336:0
conv3d_100_6091347: 
conv3d_100_6091349:0
conv3d_101_6091360: 
conv3d_101_6091362:0
conv3d_102_6091365: 
conv3d_102_6091367:
identity��"conv3d_100/StatefulPartitionedCall�"conv3d_101/StatefulPartitionedCall�"conv3d_102/StatefulPartitionedCall�!conv3d_96/StatefulPartitionedCall�!conv3d_97/StatefulPartitionedCall�!conv3d_98/StatefulPartitionedCall�!conv3d_99/StatefulPartitionedCall� dense_24/StatefulPartitionedCall�
0tf.__operators__.getitem_194/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_194/strided_slice/stack�
2tf.__operators__.getitem_194/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_194/strided_slice/stack_1�
2tf.__operators__.getitem_194/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_194/strided_slice/stack_2�
*tf.__operators__.getitem_194/strided_sliceStridedSliceinput9tf.__operators__.getitem_194/strided_slice/stack:output:0;tf.__operators__.getitem_194/strided_slice/stack_1:output:0;tf.__operators__.getitem_194/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_194/strided_slice�
#range_conversion_24/PartitionedCallPartitionedCall3tf.__operators__.getitem_194/strided_slice:output:0*
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
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_60907152%
#range_conversion_24/PartitionedCall�
0tf.__operators__.getitem_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_195/strided_slice/stack�
2tf.__operators__.getitem_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_195/strided_slice/stack_1�
2tf.__operators__.getitem_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_195/strided_slice/stack_2�
*tf.__operators__.getitem_195/strided_sliceStridedSliceinput9tf.__operators__.getitem_195/strided_slice/stack:output:0;tf.__operators__.getitem_195/strided_slice/stack_1:output:0;tf.__operators__.getitem_195/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_195/strided_slicex
tf.concat_217/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_217/concat/axis�
tf.concat_217/concatConcatV2,range_conversion_24/PartitionedCall:output:03tf.__operators__.getitem_195/strided_slice:output:0"tf.concat_217/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_217/concat�
!conv3d_96/StatefulPartitionedCallStatefulPartitionedCalltf.concat_217/concat:output:0conv3d_96_6091301conv3d_96_6091303*
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
F__inference_conv3d_96_layer_call_and_return_conditional_losses_60907342#
!conv3d_96/StatefulPartitionedCall�
$average_pooling3d_36/PartitionedCallPartitionedCall*conv3d_96/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_60907482&
$average_pooling3d_36/PartitionedCall�
!conv3d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_36/PartitionedCall:output:0conv3d_97_6091307conv3d_97_6091309*
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
F__inference_conv3d_97_layer_call_and_return_conditional_losses_60907612#
!conv3d_97/StatefulPartitionedCall�
$average_pooling3d_37/PartitionedCallPartitionedCall*conv3d_97/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_60907752&
$average_pooling3d_37/PartitionedCall�
!conv3d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_37/PartitionedCall:output:0conv3d_98_6091313conv3d_98_6091315*
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
F__inference_conv3d_98_layer_call_and_return_conditional_losses_60907882#
!conv3d_98/StatefulPartitionedCall�
$average_pooling3d_38/PartitionedCallPartitionedCall*conv3d_98/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_60908022&
$average_pooling3d_38/PartitionedCall�
reshape_48/PartitionedCallPartitionedCall-average_pooling3d_38/PartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_60908162
reshape_48/PartitionedCall�
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#reshape_48/PartitionedCall:output:0dense_24_6091320dense_24_6091322*
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
E__inference_dense_24_layer_call_and_return_conditional_losses_60908292"
 dense_24/StatefulPartitionedCall�
reshape_49/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
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
G__inference_reshape_49_layer_call_and_return_conditional_losses_60908502
reshape_49/PartitionedCall�
tf.reshape_240/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_240/Reshape/shape�
tf.reshape_240/ReshapeReshape#reshape_49/PartitionedCall:output:0%tf.reshape_240/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_240/Reshape�
tf.tile_120/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_120/Tile/multiples�
tf.tile_120/TileTiletf.reshape_240/Reshape:output:0#tf.tile_120/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_120/Tile�
tf.reshape_241/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_241/Reshape/shape�
tf.reshape_241/ReshapeReshapetf.tile_120/Tile:output:0%tf.reshape_241/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_241/Reshapex
tf.concat_218/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_218/concat/axis�
tf.concat_218/concatConcatV2tf.reshape_241/Reshape:output:0*conv3d_98/StatefulPartitionedCall:output:0"tf.concat_218/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_218/concat�
!conv3d_99/StatefulPartitionedCallStatefulPartitionedCalltf.concat_218/concat:output:0conv3d_99_6091334conv3d_99_6091336*
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
F__inference_conv3d_99_layer_call_and_return_conditional_losses_60908712#
!conv3d_99/StatefulPartitionedCall�
tf.reshape_242/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_242/Reshape/shape�
tf.reshape_242/ReshapeReshape*conv3d_99/StatefulPartitionedCall:output:0%tf.reshape_242/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_242/Reshape�
tf.tile_121/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_121/Tile/multiples�
tf.tile_121/TileTiletf.reshape_242/Reshape:output:0#tf.tile_121/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_121/Tile�
tf.reshape_243/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_243/Reshape/shape�
tf.reshape_243/ReshapeReshapetf.tile_121/Tile:output:0%tf.reshape_243/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_243/Reshapex
tf.concat_219/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_219/concat/axis�
tf.concat_219/concatConcatV2tf.reshape_243/Reshape:output:0*conv3d_97/StatefulPartitionedCall:output:0"tf.concat_219/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_219/concat�
"conv3d_100/StatefulPartitionedCallStatefulPartitionedCalltf.concat_219/concat:output:0conv3d_100_6091347conv3d_100_6091349*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_100_layer_call_and_return_conditional_losses_60908962$
"conv3d_100/StatefulPartitionedCall�
tf.reshape_244/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_244/Reshape/shape�
tf.reshape_244/ReshapeReshape+conv3d_100/StatefulPartitionedCall:output:0%tf.reshape_244/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_244/Reshape�
tf.tile_122/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_122/Tile/multiples�
tf.tile_122/TileTiletf.reshape_244/Reshape:output:0#tf.tile_122/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_122/Tile�
tf.reshape_245/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_245/Reshape/shape�
tf.reshape_245/ReshapeReshapetf.tile_122/Tile:output:0%tf.reshape_245/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_245/Reshapex
tf.concat_220/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_220/concat/axis�
tf.concat_220/concatConcatV2tf.reshape_245/Reshape:output:0*conv3d_96/StatefulPartitionedCall:output:0"tf.concat_220/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_220/concat�
"conv3d_101/StatefulPartitionedCallStatefulPartitionedCalltf.concat_220/concat:output:0conv3d_101_6091360conv3d_101_6091362*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_101_layer_call_and_return_conditional_losses_60909212$
"conv3d_101/StatefulPartitionedCall�
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCall+conv3d_101/StatefulPartitionedCall:output:0conv3d_102_6091365conv3d_102_6091367*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_102_layer_call_and_return_conditional_losses_60909372$
"conv3d_102/StatefulPartitionedCall�
IdentityIdentity+conv3d_102/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_100/StatefulPartitionedCall#^conv3d_101/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall"^conv3d_96/StatefulPartitionedCall"^conv3d_97/StatefulPartitionedCall"^conv3d_98/StatefulPartitionedCall"^conv3d_99/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_100/StatefulPartitionedCall"conv3d_100/StatefulPartitionedCall2H
"conv3d_101/StatefulPartitionedCall"conv3d_101/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2F
!conv3d_96/StatefulPartitionedCall!conv3d_96/StatefulPartitionedCall2F
!conv3d_97/StatefulPartitionedCall!conv3d_97/StatefulPartitionedCall2F
!conv3d_98/StatefulPartitionedCall!conv3d_98/StatefulPartitionedCall2F
!conv3d_99/StatefulPartitionedCall!conv3d_99/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�-
�
 __inference__traced_save_6092206
file_prefix/
+savev2_conv3d_96_kernel_read_readvariableop-
)savev2_conv3d_96_bias_read_readvariableop/
+savev2_conv3d_97_kernel_read_readvariableop-
)savev2_conv3d_97_bias_read_readvariableop/
+savev2_conv3d_98_kernel_read_readvariableop-
)savev2_conv3d_98_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop/
+savev2_conv3d_99_kernel_read_readvariableop-
)savev2_conv3d_99_bias_read_readvariableop0
,savev2_conv3d_100_kernel_read_readvariableop.
*savev2_conv3d_100_bias_read_readvariableop0
,savev2_conv3d_101_kernel_read_readvariableop.
*savev2_conv3d_101_bias_read_readvariableop0
,savev2_conv3d_102_kernel_read_readvariableop.
*savev2_conv3d_102_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_96_kernel_read_readvariableop)savev2_conv3d_96_bias_read_readvariableop+savev2_conv3d_97_kernel_read_readvariableop)savev2_conv3d_97_bias_read_readvariableop+savev2_conv3d_98_kernel_read_readvariableop)savev2_conv3d_98_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop+savev2_conv3d_99_kernel_read_readvariableop)savev2_conv3d_99_bias_read_readvariableop,savev2_conv3d_100_kernel_read_readvariableop*savev2_conv3d_100_bias_read_readvariableop,savev2_conv3d_101_kernel_read_readvariableop*savev2_conv3d_101_bias_read_readvariableop,savev2_conv3d_102_kernel_read_readvariableop*savev2_conv3d_102_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_6092135

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
�
F__inference_conv3d_96_layer_call_and_return_conditional_losses_6090734

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
�
�
+__inference_conv3d_96_layer_call_fn_6091864

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
F__inference_conv3d_96_layer_call_and_return_conditional_losses_60907342
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
�
�
F__inference_conv3d_98_layer_call_and_return_conditional_losses_6091971

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
6__inference_average_pooling3d_38_layer_call_fn_6091976

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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_60906752
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
serving_default_input:0���������  J

conv3d_102<
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
0:. 2conv3d_96/kernel
: 2conv3d_96/bias
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
0:. 2conv3d_97/kernel
: 2conv3d_97/bias
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
0:. 2conv3d_98/kernel
: 2conv3d_98/bias
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
#:!@@ 2dense_24/kernel
:@ 2dense_24/bias
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
0:. 2conv3d_99/kernel
: 2conv3d_99/bias
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
1:/ 2conv3d_100/kernel
: 2conv3d_100/bias
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
1:/ 2conv3d_101/kernel
: 2conv3d_101/bias
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
1:/ 2conv3d_102/kernel
: 2conv3d_102/bias
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
*__inference_model_24_layer_call_fn_6090979
*__inference_model_24_layer_call_fn_6091531
*__inference_model_24_layer_call_fn_6091568
*__inference_model_24_layer_call_fn_6091287�
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
E__inference_model_24_layer_call_and_return_conditional_losses_6091703
E__inference_model_24_layer_call_and_return_conditional_losses_6091838
E__inference_model_24_layer_call_and_return_conditional_losses_6091371
E__inference_model_24_layer_call_and_return_conditional_losses_6091455�
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
"__inference__wrapped_model_6090602input"�
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
5__inference_range_conversion_24_layer_call_fn_6091843�
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
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_6091855�
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
+__inference_conv3d_96_layer_call_fn_6091864�
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
F__inference_conv3d_96_layer_call_and_return_conditional_losses_6091875�
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
6__inference_average_pooling3d_36_layer_call_fn_6091880
6__inference_average_pooling3d_36_layer_call_fn_6091885�
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
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6091894
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6091903�
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
+__inference_conv3d_97_layer_call_fn_6091912�
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
F__inference_conv3d_97_layer_call_and_return_conditional_losses_6091923�
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
6__inference_average_pooling3d_37_layer_call_fn_6091928
6__inference_average_pooling3d_37_layer_call_fn_6091933�
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
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6091942
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6091951�
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
+__inference_conv3d_98_layer_call_fn_6091960�
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
F__inference_conv3d_98_layer_call_and_return_conditional_losses_6091971�
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
6__inference_average_pooling3d_38_layer_call_fn_6091976
6__inference_average_pooling3d_38_layer_call_fn_6091981�
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
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6091990
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6091999�
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
,__inference_reshape_48_layer_call_fn_6092004�
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_6092016�
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
*__inference_dense_24_layer_call_fn_6092025�
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
E__inference_dense_24_layer_call_and_return_conditional_losses_6092036�
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
,__inference_reshape_49_layer_call_fn_6092041�
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
G__inference_reshape_49_layer_call_and_return_conditional_losses_6092056�
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
+__inference_conv3d_99_layer_call_fn_6092065�
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
F__inference_conv3d_99_layer_call_and_return_conditional_losses_6092076�
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
,__inference_conv3d_100_layer_call_fn_6092085�
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
G__inference_conv3d_100_layer_call_and_return_conditional_losses_6092096�
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
,__inference_conv3d_101_layer_call_fn_6092105�
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
G__inference_conv3d_101_layer_call_and_return_conditional_losses_6092116�
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
,__inference_conv3d_102_layer_call_fn_6092125�
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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_6092135�
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
%__inference_signature_wrapper_6091494input"�
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
"__inference__wrapped_model_6090602�+,56?@MN[\efopuv:�7
0�-
+�(
input���������  
� "C�@
>

conv3d_1020�-

conv3d_102���������  �
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6091894�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_36_layer_call_and_return_conditional_losses_6091903p;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_36_layer_call_fn_6091880�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_36_layer_call_fn_6091885c;�8
1�.
,�)
inputs���������  
� "$�!����������
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6091942�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_37_layer_call_and_return_conditional_losses_6091951p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_37_layer_call_fn_6091928�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_37_layer_call_fn_6091933c;�8
1�.
,�)
inputs���������
� "$�!����������
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6091990�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_38_layer_call_and_return_conditional_losses_6091999p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_38_layer_call_fn_6091976�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_38_layer_call_fn_6091981c;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_100_layer_call_and_return_conditional_losses_6092096tef;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
,__inference_conv3d_100_layer_call_fn_6092085gef;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_101_layer_call_and_return_conditional_losses_6092116top;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
,__inference_conv3d_101_layer_call_fn_6092105gop;�8
1�.
,�)
inputs���������  
� "$�!���������  �
G__inference_conv3d_102_layer_call_and_return_conditional_losses_6092135tuv;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
,__inference_conv3d_102_layer_call_fn_6092125guv;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_conv3d_96_layer_call_and_return_conditional_losses_6091875t+,;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_96_layer_call_fn_6091864g+,;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_conv3d_97_layer_call_and_return_conditional_losses_6091923t56;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_97_layer_call_fn_6091912g56;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_98_layer_call_and_return_conditional_losses_6091971t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_98_layer_call_fn_6091960g?@;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_99_layer_call_and_return_conditional_losses_6092076t[\;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_99_layer_call_fn_6092065g[\;�8
1�.
,�)
inputs���������
� "$�!����������
E__inference_dense_24_layer_call_and_return_conditional_losses_6092036\MN/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
*__inference_dense_24_layer_call_fn_6092025OMN/�,
%�"
 �
inputs���������@
� "����������@�
E__inference_model_24_layer_call_and_return_conditional_losses_6091371�+,56?@MN[\efopuvB�?
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
E__inference_model_24_layer_call_and_return_conditional_losses_6091455�+,56?@MN[\efopuvB�?
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
E__inference_model_24_layer_call_and_return_conditional_losses_6091703�+,56?@MN[\efopuvC�@
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
E__inference_model_24_layer_call_and_return_conditional_losses_6091838�+,56?@MN[\efopuvC�@
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
*__inference_model_24_layer_call_fn_6090979|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p 

 
� "$�!���������  �
*__inference_model_24_layer_call_fn_6091287|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p

 
� "$�!���������  �
*__inference_model_24_layer_call_fn_6091531}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p 

 
� "$�!���������  �
*__inference_model_24_layer_call_fn_6091568}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p

 
� "$�!���������  �
P__inference_range_conversion_24_layer_call_and_return_conditional_losses_6091855t?�<
5�2
0�-

parameters���������  
� "1�.
'�$
0���������  
� �
5__inference_range_conversion_24_layer_call_fn_6091843g?�<
5�2
0�-

parameters���������  
� "$�!���������  �
G__inference_reshape_48_layer_call_and_return_conditional_losses_6092016d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_48_layer_call_fn_6092004W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_49_layer_call_and_return_conditional_losses_6092056d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_49_layer_call_fn_6092041W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_6091494�+,56?@MN[\efopuvC�@
� 
9�6
4
input+�(
input���������  "C�@
>

conv3d_1020�-

conv3d_102���������  