ސ
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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv3d_227/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_227/kernel
�
%conv3d_227/kernel/Read/ReadVariableOpReadVariableOpconv3d_227/kernel**
_output_shapes
:*
dtype0
v
conv3d_227/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_227/bias
o
#conv3d_227/bias/Read/ReadVariableOpReadVariableOpconv3d_227/bias*
_output_shapes
:*
dtype0
�
conv3d_228/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_228/kernel
�
%conv3d_228/kernel/Read/ReadVariableOpReadVariableOpconv3d_228/kernel**
_output_shapes
:*
dtype0
v
conv3d_228/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_228/bias
o
#conv3d_228/bias/Read/ReadVariableOpReadVariableOpconv3d_228/bias*
_output_shapes
:*
dtype0
�
conv3d_229/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_229/kernel
�
%conv3d_229/kernel/Read/ReadVariableOpReadVariableOpconv3d_229/kernel**
_output_shapes
:*
dtype0
v
conv3d_229/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_229/bias
o
#conv3d_229/bias/Read/ReadVariableOpReadVariableOpconv3d_229/bias*
_output_shapes
:*
dtype0
z
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_43/kernel
s
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes

:@@*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:@*
dtype0
�
conv3d_230/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_230/kernel
�
%conv3d_230/kernel/Read/ReadVariableOpReadVariableOpconv3d_230/kernel**
_output_shapes
:*
dtype0
v
conv3d_230/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_230/bias
o
#conv3d_230/bias/Read/ReadVariableOpReadVariableOpconv3d_230/bias*
_output_shapes
:*
dtype0
�
conv3d_231/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_231/kernel
�
%conv3d_231/kernel/Read/ReadVariableOpReadVariableOpconv3d_231/kernel**
_output_shapes
:*
dtype0
v
conv3d_231/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_231/bias
o
#conv3d_231/bias/Read/ReadVariableOpReadVariableOpconv3d_231/bias*
_output_shapes
:*
dtype0
�
conv3d_232/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_232/kernel
�
%conv3d_232/kernel/Read/ReadVariableOpReadVariableOpconv3d_232/kernel**
_output_shapes
:*
dtype0
v
conv3d_232/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_232/bias
o
#conv3d_232/bias/Read/ReadVariableOpReadVariableOpconv3d_232/bias*
_output_shapes
:*
dtype0
�
conv3d_233/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_233/kernel
�
%conv3d_233/kernel/Read/ReadVariableOpReadVariableOpconv3d_233/kernel**
_output_shapes
:*
dtype0
v
conv3d_233/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_233/bias
o
#conv3d_233/bias/Read/ReadVariableOpReadVariableOpconv3d_233/bias*
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
%	variables
&regularization_losses
'trainable_variables
(	keras_api

)	keras_api

*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
R
1	variables
2regularization_losses
3trainable_variables
4	keras_api
h

5kernel
6bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
R
;	variables
<regularization_losses
=trainable_variables
>	keras_api
h

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
R
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
R
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
h

Mkernel
Nbias
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
R
S	variables
Tregularization_losses
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
]	variables
^regularization_losses
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
g	variables
hregularization_losses
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
q	variables
rregularization_losses
strainable_variables
t	keras_api
h

ukernel
vbias
w	variables
xregularization_losses
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
{non_trainable_variables
|metrics
}layer_regularization_losses
~layer_metrics
regularization_losses

layers
 	variables
!trainable_variables
 
 
 
 
 
�
�non_trainable_variables
%	variables
�metrics
 �layer_regularization_losses
�layer_metrics
&regularization_losses
�layers
'trainable_variables
 
 
][
VARIABLE_VALUEconv3d_227/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_227/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
�
�non_trainable_variables
-	variables
�metrics
 �layer_regularization_losses
�layer_metrics
.regularization_losses
�layers
/trainable_variables
 
 
 
�
�non_trainable_variables
1	variables
�metrics
 �layer_regularization_losses
�layer_metrics
2regularization_losses
�layers
3trainable_variables
][
VARIABLE_VALUEconv3d_228/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_228/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61
 

50
61
�
�non_trainable_variables
7	variables
�metrics
 �layer_regularization_losses
�layer_metrics
8regularization_losses
�layers
9trainable_variables
 
 
 
�
�non_trainable_variables
;	variables
�metrics
 �layer_regularization_losses
�layer_metrics
<regularization_losses
�layers
=trainable_variables
][
VARIABLE_VALUEconv3d_229/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_229/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
�
�non_trainable_variables
A	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Bregularization_losses
�layers
Ctrainable_variables
 
 
 
�
�non_trainable_variables
E	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Fregularization_losses
�layers
Gtrainable_variables
 
 
 
�
�non_trainable_variables
I	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Jregularization_losses
�layers
Ktrainable_variables
[Y
VARIABLE_VALUEdense_43/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_43/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

M0
N1
 

M0
N1
�
�non_trainable_variables
O	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Pregularization_losses
�layers
Qtrainable_variables
 
 
 
�
�non_trainable_variables
S	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Tregularization_losses
�layers
Utrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_230/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_230/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1
 

[0
\1
�
�non_trainable_variables
]	variables
�metrics
 �layer_regularization_losses
�layer_metrics
^regularization_losses
�layers
_trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_231/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_231/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1
 

e0
f1
�
�non_trainable_variables
g	variables
�metrics
 �layer_regularization_losses
�layer_metrics
hregularization_losses
�layers
itrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_232/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_232/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1
 

o0
p1
�
�non_trainable_variables
q	variables
�metrics
 �layer_regularization_losses
�layer_metrics
rregularization_losses
�layers
strainable_variables
][
VARIABLE_VALUEconv3d_233/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_233/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 

u0
v1
�
�non_trainable_variables
w	variables
�metrics
 �layer_regularization_losses
�layer_metrics
xregularization_losses
�layers
ytrainable_variables
 
 
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
�
serving_default_inputPlaceholder*3
_output_shapes!
:���������  *
dtype0*(
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_227/kernelconv3d_227/biasconv3d_228/kernelconv3d_228/biasconv3d_229/kernelconv3d_229/biasdense_43/kerneldense_43/biasconv3d_230/kernelconv3d_230/biasconv3d_231/kernelconv3d_231/biasconv3d_232/kernelconv3d_232/biasconv3d_233/kernelconv3d_233/bias*
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
GPU2 *0,1,2,3J 8� */
f*R(
&__inference_signature_wrapper_13058443
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_227/kernel/Read/ReadVariableOp#conv3d_227/bias/Read/ReadVariableOp%conv3d_228/kernel/Read/ReadVariableOp#conv3d_228/bias/Read/ReadVariableOp%conv3d_229/kernel/Read/ReadVariableOp#conv3d_229/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp%conv3d_230/kernel/Read/ReadVariableOp#conv3d_230/bias/Read/ReadVariableOp%conv3d_231/kernel/Read/ReadVariableOp#conv3d_231/bias/Read/ReadVariableOp%conv3d_232/kernel/Read/ReadVariableOp#conv3d_232/bias/Read/ReadVariableOp%conv3d_233/kernel/Read/ReadVariableOp#conv3d_233/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8� **
f%R#
!__inference__traced_save_13059155
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_227/kernelconv3d_227/biasconv3d_228/kernelconv3d_228/biasconv3d_229/kernelconv3d_229/biasdense_43/kerneldense_43/biasconv3d_230/kernelconv3d_230/biasconv3d_231/kernelconv3d_231/biasconv3d_232/kernelconv3d_232/biasconv3d_233/kernelconv3d_233/bias*
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
GPU2 *0,1,2,3J 8� *-
f(R&
$__inference__traced_restore_13059213˓
��
�
#__inference__wrapped_model_13057551	
inputP
2model_43_conv3d_227_conv3d_readvariableop_resource:A
3model_43_conv3d_227_biasadd_readvariableop_resource:P
2model_43_conv3d_228_conv3d_readvariableop_resource:A
3model_43_conv3d_228_biasadd_readvariableop_resource:P
2model_43_conv3d_229_conv3d_readvariableop_resource:A
3model_43_conv3d_229_biasadd_readvariableop_resource:B
0model_43_dense_43_matmul_readvariableop_resource:@@?
1model_43_dense_43_biasadd_readvariableop_resource:@P
2model_43_conv3d_230_conv3d_readvariableop_resource:A
3model_43_conv3d_230_biasadd_readvariableop_resource:P
2model_43_conv3d_231_conv3d_readvariableop_resource:A
3model_43_conv3d_231_biasadd_readvariableop_resource:P
2model_43_conv3d_232_conv3d_readvariableop_resource:A
3model_43_conv3d_232_biasadd_readvariableop_resource:P
2model_43_conv3d_233_conv3d_readvariableop_resource:A
3model_43_conv3d_233_biasadd_readvariableop_resource:
identity��*model_43/conv3d_227/BiasAdd/ReadVariableOp�)model_43/conv3d_227/Conv3D/ReadVariableOp�*model_43/conv3d_228/BiasAdd/ReadVariableOp�)model_43/conv3d_228/Conv3D/ReadVariableOp�*model_43/conv3d_229/BiasAdd/ReadVariableOp�)model_43/conv3d_229/Conv3D/ReadVariableOp�*model_43/conv3d_230/BiasAdd/ReadVariableOp�)model_43/conv3d_230/Conv3D/ReadVariableOp�*model_43/conv3d_231/BiasAdd/ReadVariableOp�)model_43/conv3d_231/Conv3D/ReadVariableOp�*model_43/conv3d_232/BiasAdd/ReadVariableOp�)model_43/conv3d_232/Conv3D/ReadVariableOp�*model_43/conv3d_233/BiasAdd/ReadVariableOp�)model_43/conv3d_233/Conv3D/ReadVariableOp�(model_43/dense_43/BiasAdd/ReadVariableOp�'model_43/dense_43/MatMul/ReadVariableOp�
9model_43/tf.__operators__.getitem_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_43/tf.__operators__.getitem_422/strided_slice/stack�
;model_43/tf.__operators__.getitem_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_43/tf.__operators__.getitem_422/strided_slice/stack_1�
;model_43/tf.__operators__.getitem_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_43/tf.__operators__.getitem_422/strided_slice/stack_2�
3model_43/tf.__operators__.getitem_422/strided_sliceStridedSliceinputBmodel_43/tf.__operators__.getitem_422/strided_slice/stack:output:0Dmodel_43/tf.__operators__.getitem_422/strided_slice/stack_1:output:0Dmodel_43/tf.__operators__.getitem_422/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_43/tf.__operators__.getitem_422/strided_slice�
"model_43/range_conversion_43/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_43/range_conversion_43/sub/y�
 model_43/range_conversion_43/subSub<model_43/tf.__operators__.getitem_422/strided_slice:output:0+model_43/range_conversion_43/sub/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_43/range_conversion_43/sub�
&model_43/range_conversion_43/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_43/range_conversion_43/truediv/y�
$model_43/range_conversion_43/truedivRealDiv$model_43/range_conversion_43/sub:z:0/model_43/range_conversion_43/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2&
$model_43/range_conversion_43/truediv�
"model_43/range_conversion_43/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_43/range_conversion_43/mul/y�
 model_43/range_conversion_43/mulMul(model_43/range_conversion_43/truediv:z:0+model_43/range_conversion_43/mul/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_43/range_conversion_43/mul�
"model_43/range_conversion_43/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_43/range_conversion_43/add/y�
 model_43/range_conversion_43/addAddV2$model_43/range_conversion_43/mul:z:0+model_43/range_conversion_43/add/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_43/range_conversion_43/add�
9model_43/tf.__operators__.getitem_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_43/tf.__operators__.getitem_423/strided_slice/stack�
;model_43/tf.__operators__.getitem_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_43/tf.__operators__.getitem_423/strided_slice/stack_1�
;model_43/tf.__operators__.getitem_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_43/tf.__operators__.getitem_423/strided_slice/stack_2�
3model_43/tf.__operators__.getitem_423/strided_sliceStridedSliceinputBmodel_43/tf.__operators__.getitem_423/strided_slice/stack:output:0Dmodel_43/tf.__operators__.getitem_423/strided_slice/stack_1:output:0Dmodel_43/tf.__operators__.getitem_423/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_43/tf.__operators__.getitem_423/strided_slice�
"model_43/tf.concat_565/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_43/tf.concat_565/concat/axis�
model_43/tf.concat_565/concatConcatV2$model_43/range_conversion_43/add:z:0<model_43/tf.__operators__.getitem_423/strided_slice:output:0+model_43/tf.concat_565/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_43/tf.concat_565/concat�
)model_43/conv3d_227/Conv3D/ReadVariableOpReadVariableOp2model_43_conv3d_227_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_43/conv3d_227/Conv3D/ReadVariableOp�
model_43/conv3d_227/Conv3DConv3D&model_43/tf.concat_565/concat:output:01model_43/conv3d_227/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_43/conv3d_227/Conv3D�
*model_43/conv3d_227/BiasAdd/ReadVariableOpReadVariableOp3model_43_conv3d_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_43/conv3d_227/BiasAdd/ReadVariableOp�
model_43/conv3d_227/BiasAddBiasAdd#model_43/conv3d_227/Conv3D:output:02model_43/conv3d_227/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_43/conv3d_227/BiasAdd�
model_43/conv3d_227/SoftplusSoftplus$model_43/conv3d_227/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_43/conv3d_227/Softplus�
,model_43/average_pooling3d_92/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_43/average_pooling3d_92/transpose/perm�
'model_43/average_pooling3d_92/transpose	Transpose*model_43/conv3d_227/Softplus:activations:05model_43/average_pooling3d_92/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2)
'model_43/average_pooling3d_92/transpose�
'model_43/average_pooling3d_92/AvgPool3D	AvgPool3D+model_43/average_pooling3d_92/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_43/average_pooling3d_92/AvgPool3D�
.model_43/average_pooling3d_92/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_43/average_pooling3d_92/transpose_1/perm�
)model_43/average_pooling3d_92/transpose_1	Transpose0model_43/average_pooling3d_92/AvgPool3D:output:07model_43/average_pooling3d_92/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_43/average_pooling3d_92/transpose_1�
)model_43/conv3d_228/Conv3D/ReadVariableOpReadVariableOp2model_43_conv3d_228_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_43/conv3d_228/Conv3D/ReadVariableOp�
model_43/conv3d_228/Conv3DConv3D-model_43/average_pooling3d_92/transpose_1:y:01model_43/conv3d_228/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_43/conv3d_228/Conv3D�
*model_43/conv3d_228/BiasAdd/ReadVariableOpReadVariableOp3model_43_conv3d_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_43/conv3d_228/BiasAdd/ReadVariableOp�
model_43/conv3d_228/BiasAddBiasAdd#model_43/conv3d_228/Conv3D:output:02model_43/conv3d_228/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_43/conv3d_228/BiasAdd�
model_43/conv3d_228/SoftplusSoftplus$model_43/conv3d_228/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_43/conv3d_228/Softplus�
,model_43/average_pooling3d_93/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_43/average_pooling3d_93/transpose/perm�
'model_43/average_pooling3d_93/transpose	Transpose*model_43/conv3d_228/Softplus:activations:05model_43/average_pooling3d_93/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_43/average_pooling3d_93/transpose�
'model_43/average_pooling3d_93/AvgPool3D	AvgPool3D+model_43/average_pooling3d_93/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_43/average_pooling3d_93/AvgPool3D�
.model_43/average_pooling3d_93/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_43/average_pooling3d_93/transpose_1/perm�
)model_43/average_pooling3d_93/transpose_1	Transpose0model_43/average_pooling3d_93/AvgPool3D:output:07model_43/average_pooling3d_93/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_43/average_pooling3d_93/transpose_1�
)model_43/conv3d_229/Conv3D/ReadVariableOpReadVariableOp2model_43_conv3d_229_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_43/conv3d_229/Conv3D/ReadVariableOp�
model_43/conv3d_229/Conv3DConv3D-model_43/average_pooling3d_93/transpose_1:y:01model_43/conv3d_229/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_43/conv3d_229/Conv3D�
*model_43/conv3d_229/BiasAdd/ReadVariableOpReadVariableOp3model_43_conv3d_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_43/conv3d_229/BiasAdd/ReadVariableOp�
model_43/conv3d_229/BiasAddBiasAdd#model_43/conv3d_229/Conv3D:output:02model_43/conv3d_229/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_43/conv3d_229/BiasAdd�
model_43/conv3d_229/SoftplusSoftplus$model_43/conv3d_229/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_43/conv3d_229/Softplus�
,model_43/average_pooling3d_94/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_43/average_pooling3d_94/transpose/perm�
'model_43/average_pooling3d_94/transpose	Transpose*model_43/conv3d_229/Softplus:activations:05model_43/average_pooling3d_94/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_43/average_pooling3d_94/transpose�
'model_43/average_pooling3d_94/AvgPool3D	AvgPool3D+model_43/average_pooling3d_94/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_43/average_pooling3d_94/AvgPool3D�
.model_43/average_pooling3d_94/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_43/average_pooling3d_94/transpose_1/perm�
)model_43/average_pooling3d_94/transpose_1	Transpose0model_43/average_pooling3d_94/AvgPool3D:output:07model_43/average_pooling3d_94/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_43/average_pooling3d_94/transpose_1�
model_43/reshape_86/ShapeShape-model_43/average_pooling3d_94/transpose_1:y:0*
T0*
_output_shapes
:2
model_43/reshape_86/Shape�
'model_43/reshape_86/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_43/reshape_86/strided_slice/stack�
)model_43/reshape_86/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_43/reshape_86/strided_slice/stack_1�
)model_43/reshape_86/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_43/reshape_86/strided_slice/stack_2�
!model_43/reshape_86/strided_sliceStridedSlice"model_43/reshape_86/Shape:output:00model_43/reshape_86/strided_slice/stack:output:02model_43/reshape_86/strided_slice/stack_1:output:02model_43/reshape_86/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_43/reshape_86/strided_slice�
#model_43/reshape_86/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_43/reshape_86/Reshape/shape/1�
!model_43/reshape_86/Reshape/shapePack*model_43/reshape_86/strided_slice:output:0,model_43/reshape_86/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_43/reshape_86/Reshape/shape�
model_43/reshape_86/ReshapeReshape-model_43/average_pooling3d_94/transpose_1:y:0*model_43/reshape_86/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_43/reshape_86/Reshape�
'model_43/dense_43/MatMul/ReadVariableOpReadVariableOp0model_43_dense_43_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_43/dense_43/MatMul/ReadVariableOp�
model_43/dense_43/MatMulMatMul$model_43/reshape_86/Reshape:output:0/model_43/dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_43/dense_43/MatMul�
(model_43/dense_43/BiasAdd/ReadVariableOpReadVariableOp1model_43_dense_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_43/dense_43/BiasAdd/ReadVariableOp�
model_43/dense_43/BiasAddBiasAdd"model_43/dense_43/MatMul:product:00model_43/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_43/dense_43/BiasAdd�
model_43/dense_43/SoftplusSoftplus"model_43/dense_43/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_43/dense_43/Softplus�
model_43/reshape_87/ShapeShape(model_43/dense_43/Softplus:activations:0*
T0*
_output_shapes
:2
model_43/reshape_87/Shape�
'model_43/reshape_87/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_43/reshape_87/strided_slice/stack�
)model_43/reshape_87/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_43/reshape_87/strided_slice/stack_1�
)model_43/reshape_87/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_43/reshape_87/strided_slice/stack_2�
!model_43/reshape_87/strided_sliceStridedSlice"model_43/reshape_87/Shape:output:00model_43/reshape_87/strided_slice/stack:output:02model_43/reshape_87/strided_slice/stack_1:output:02model_43/reshape_87/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_43/reshape_87/strided_slice�
#model_43/reshape_87/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_43/reshape_87/Reshape/shape/1�
#model_43/reshape_87/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_43/reshape_87/Reshape/shape/2�
#model_43/reshape_87/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_43/reshape_87/Reshape/shape/3�
#model_43/reshape_87/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_43/reshape_87/Reshape/shape/4�
!model_43/reshape_87/Reshape/shapePack*model_43/reshape_87/strided_slice:output:0,model_43/reshape_87/Reshape/shape/1:output:0,model_43/reshape_87/Reshape/shape/2:output:0,model_43/reshape_87/Reshape/shape/3:output:0,model_43/reshape_87/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_43/reshape_87/Reshape/shape�
model_43/reshape_87/ReshapeReshape(model_43/dense_43/Softplus:activations:0*model_43/reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_43/reshape_87/Reshape�
%model_43/tf.reshape_708/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_43/tf.reshape_708/Reshape/shape�
model_43/tf.reshape_708/ReshapeReshape$model_43/reshape_87/Reshape:output:0.model_43/tf.reshape_708/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_43/tf.reshape_708/Reshape�
#model_43/tf.tile_354/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_43/tf.tile_354/Tile/multiples�
model_43/tf.tile_354/TileTile(model_43/tf.reshape_708/Reshape:output:0,model_43/tf.tile_354/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_43/tf.tile_354/Tile�
%model_43/tf.reshape_709/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_43/tf.reshape_709/Reshape/shape�
model_43/tf.reshape_709/ReshapeReshape"model_43/tf.tile_354/Tile:output:0.model_43/tf.reshape_709/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_43/tf.reshape_709/Reshape�
"model_43/tf.concat_566/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_43/tf.concat_566/concat/axis�
model_43/tf.concat_566/concatConcatV2(model_43/tf.reshape_709/Reshape:output:0*model_43/conv3d_229/Softplus:activations:0+model_43/tf.concat_566/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_43/tf.concat_566/concat�
)model_43/conv3d_230/Conv3D/ReadVariableOpReadVariableOp2model_43_conv3d_230_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_43/conv3d_230/Conv3D/ReadVariableOp�
model_43/conv3d_230/Conv3DConv3D&model_43/tf.concat_566/concat:output:01model_43/conv3d_230/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_43/conv3d_230/Conv3D�
*model_43/conv3d_230/BiasAdd/ReadVariableOpReadVariableOp3model_43_conv3d_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_43/conv3d_230/BiasAdd/ReadVariableOp�
model_43/conv3d_230/BiasAddBiasAdd#model_43/conv3d_230/Conv3D:output:02model_43/conv3d_230/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_43/conv3d_230/BiasAdd�
model_43/conv3d_230/SoftplusSoftplus$model_43/conv3d_230/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_43/conv3d_230/Softplus�
%model_43/tf.reshape_710/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_43/tf.reshape_710/Reshape/shape�
model_43/tf.reshape_710/ReshapeReshape*model_43/conv3d_230/Softplus:activations:0.model_43/tf.reshape_710/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_43/tf.reshape_710/Reshape�
#model_43/tf.tile_355/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_43/tf.tile_355/Tile/multiples�
model_43/tf.tile_355/TileTile(model_43/tf.reshape_710/Reshape:output:0,model_43/tf.tile_355/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_43/tf.tile_355/Tile�
%model_43/tf.reshape_711/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_43/tf.reshape_711/Reshape/shape�
model_43/tf.reshape_711/ReshapeReshape"model_43/tf.tile_355/Tile:output:0.model_43/tf.reshape_711/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_43/tf.reshape_711/Reshape�
"model_43/tf.concat_567/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_43/tf.concat_567/concat/axis�
model_43/tf.concat_567/concatConcatV2(model_43/tf.reshape_711/Reshape:output:0*model_43/conv3d_228/Softplus:activations:0+model_43/tf.concat_567/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_43/tf.concat_567/concat�
)model_43/conv3d_231/Conv3D/ReadVariableOpReadVariableOp2model_43_conv3d_231_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_43/conv3d_231/Conv3D/ReadVariableOp�
model_43/conv3d_231/Conv3DConv3D&model_43/tf.concat_567/concat:output:01model_43/conv3d_231/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_43/conv3d_231/Conv3D�
*model_43/conv3d_231/BiasAdd/ReadVariableOpReadVariableOp3model_43_conv3d_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_43/conv3d_231/BiasAdd/ReadVariableOp�
model_43/conv3d_231/BiasAddBiasAdd#model_43/conv3d_231/Conv3D:output:02model_43/conv3d_231/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_43/conv3d_231/BiasAdd�
model_43/conv3d_231/SoftplusSoftplus$model_43/conv3d_231/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_43/conv3d_231/Softplus�
%model_43/tf.reshape_712/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_43/tf.reshape_712/Reshape/shape�
model_43/tf.reshape_712/ReshapeReshape*model_43/conv3d_231/Softplus:activations:0.model_43/tf.reshape_712/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_43/tf.reshape_712/Reshape�
#model_43/tf.tile_356/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_43/tf.tile_356/Tile/multiples�
model_43/tf.tile_356/TileTile(model_43/tf.reshape_712/Reshape:output:0,model_43/tf.tile_356/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_43/tf.tile_356/Tile�
%model_43/tf.reshape_713/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2'
%model_43/tf.reshape_713/Reshape/shape�
model_43/tf.reshape_713/ReshapeReshape"model_43/tf.tile_356/Tile:output:0.model_43/tf.reshape_713/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2!
model_43/tf.reshape_713/Reshape�
"model_43/tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_43/tf.concat_568/concat/axis�
model_43/tf.concat_568/concatConcatV2(model_43/tf.reshape_713/Reshape:output:0*model_43/conv3d_227/Softplus:activations:0+model_43/tf.concat_568/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_43/tf.concat_568/concat�
)model_43/conv3d_232/Conv3D/ReadVariableOpReadVariableOp2model_43_conv3d_232_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_43/conv3d_232/Conv3D/ReadVariableOp�
model_43/conv3d_232/Conv3DConv3D&model_43/tf.concat_568/concat:output:01model_43/conv3d_232/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_43/conv3d_232/Conv3D�
*model_43/conv3d_232/BiasAdd/ReadVariableOpReadVariableOp3model_43_conv3d_232_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_43/conv3d_232/BiasAdd/ReadVariableOp�
model_43/conv3d_232/BiasAddBiasAdd#model_43/conv3d_232/Conv3D:output:02model_43/conv3d_232/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_43/conv3d_232/BiasAdd�
model_43/conv3d_232/SoftplusSoftplus$model_43/conv3d_232/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_43/conv3d_232/Softplus�
)model_43/conv3d_233/Conv3D/ReadVariableOpReadVariableOp2model_43_conv3d_233_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_43/conv3d_233/Conv3D/ReadVariableOp�
model_43/conv3d_233/Conv3DConv3D*model_43/conv3d_232/Softplus:activations:01model_43/conv3d_233/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_43/conv3d_233/Conv3D�
*model_43/conv3d_233/BiasAdd/ReadVariableOpReadVariableOp3model_43_conv3d_233_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_43/conv3d_233/BiasAdd/ReadVariableOp�
model_43/conv3d_233/BiasAddBiasAdd#model_43/conv3d_233/Conv3D:output:02model_43/conv3d_233/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_43/conv3d_233/BiasAdd�
IdentityIdentity$model_43/conv3d_233/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp+^model_43/conv3d_227/BiasAdd/ReadVariableOp*^model_43/conv3d_227/Conv3D/ReadVariableOp+^model_43/conv3d_228/BiasAdd/ReadVariableOp*^model_43/conv3d_228/Conv3D/ReadVariableOp+^model_43/conv3d_229/BiasAdd/ReadVariableOp*^model_43/conv3d_229/Conv3D/ReadVariableOp+^model_43/conv3d_230/BiasAdd/ReadVariableOp*^model_43/conv3d_230/Conv3D/ReadVariableOp+^model_43/conv3d_231/BiasAdd/ReadVariableOp*^model_43/conv3d_231/Conv3D/ReadVariableOp+^model_43/conv3d_232/BiasAdd/ReadVariableOp*^model_43/conv3d_232/Conv3D/ReadVariableOp+^model_43/conv3d_233/BiasAdd/ReadVariableOp*^model_43/conv3d_233/Conv3D/ReadVariableOp)^model_43/dense_43/BiasAdd/ReadVariableOp(^model_43/dense_43/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2X
*model_43/conv3d_227/BiasAdd/ReadVariableOp*model_43/conv3d_227/BiasAdd/ReadVariableOp2V
)model_43/conv3d_227/Conv3D/ReadVariableOp)model_43/conv3d_227/Conv3D/ReadVariableOp2X
*model_43/conv3d_228/BiasAdd/ReadVariableOp*model_43/conv3d_228/BiasAdd/ReadVariableOp2V
)model_43/conv3d_228/Conv3D/ReadVariableOp)model_43/conv3d_228/Conv3D/ReadVariableOp2X
*model_43/conv3d_229/BiasAdd/ReadVariableOp*model_43/conv3d_229/BiasAdd/ReadVariableOp2V
)model_43/conv3d_229/Conv3D/ReadVariableOp)model_43/conv3d_229/Conv3D/ReadVariableOp2X
*model_43/conv3d_230/BiasAdd/ReadVariableOp*model_43/conv3d_230/BiasAdd/ReadVariableOp2V
)model_43/conv3d_230/Conv3D/ReadVariableOp)model_43/conv3d_230/Conv3D/ReadVariableOp2X
*model_43/conv3d_231/BiasAdd/ReadVariableOp*model_43/conv3d_231/BiasAdd/ReadVariableOp2V
)model_43/conv3d_231/Conv3D/ReadVariableOp)model_43/conv3d_231/Conv3D/ReadVariableOp2X
*model_43/conv3d_232/BiasAdd/ReadVariableOp*model_43/conv3d_232/BiasAdd/ReadVariableOp2V
)model_43/conv3d_232/Conv3D/ReadVariableOp)model_43/conv3d_232/Conv3D/ReadVariableOp2X
*model_43/conv3d_233/BiasAdd/ReadVariableOp*model_43/conv3d_233/BiasAdd/ReadVariableOp2V
)model_43/conv3d_233/Conv3D/ReadVariableOp)model_43/conv3d_233/Conv3D/ReadVariableOp2T
(model_43/dense_43/BiasAdd/ReadVariableOp(model_43/dense_43/BiasAdd/ReadVariableOp2R
'model_43/dense_43/MatMul/ReadVariableOp'model_43/dense_43/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�	
n
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13057724

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
�
V
6__inference_range_conversion_43_layer_call_fn_13058792

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_130576642
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
�
�
H__inference_conv3d_227_layer_call_and_return_conditional_losses_13057683

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
�

n
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13057564

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
�
S
7__inference_average_pooling3d_92_layer_call_fn_13058834

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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_130576972
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

n
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13057594

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
-__inference_conv3d_227_layer_call_fn_13058813

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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_227_layer_call_and_return_conditional_losses_130576832
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
�
F__inference_dense_43_layer_call_and_return_conditional_losses_13058985

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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_13059045

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
H__inference_conv3d_233_layer_call_and_return_conditional_losses_13057886

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
��
�
F__inference_model_43_layer_call_and_return_conditional_losses_13058652

inputsG
)conv3d_227_conv3d_readvariableop_resource:8
*conv3d_227_biasadd_readvariableop_resource:G
)conv3d_228_conv3d_readvariableop_resource:8
*conv3d_228_biasadd_readvariableop_resource:G
)conv3d_229_conv3d_readvariableop_resource:8
*conv3d_229_biasadd_readvariableop_resource:9
'dense_43_matmul_readvariableop_resource:@@6
(dense_43_biasadd_readvariableop_resource:@G
)conv3d_230_conv3d_readvariableop_resource:8
*conv3d_230_biasadd_readvariableop_resource:G
)conv3d_231_conv3d_readvariableop_resource:8
*conv3d_231_biasadd_readvariableop_resource:G
)conv3d_232_conv3d_readvariableop_resource:8
*conv3d_232_biasadd_readvariableop_resource:G
)conv3d_233_conv3d_readvariableop_resource:8
*conv3d_233_biasadd_readvariableop_resource:
identity��!conv3d_227/BiasAdd/ReadVariableOp� conv3d_227/Conv3D/ReadVariableOp�!conv3d_228/BiasAdd/ReadVariableOp� conv3d_228/Conv3D/ReadVariableOp�!conv3d_229/BiasAdd/ReadVariableOp� conv3d_229/Conv3D/ReadVariableOp�!conv3d_230/BiasAdd/ReadVariableOp� conv3d_230/Conv3D/ReadVariableOp�!conv3d_231/BiasAdd/ReadVariableOp� conv3d_231/Conv3D/ReadVariableOp�!conv3d_232/BiasAdd/ReadVariableOp� conv3d_232/Conv3D/ReadVariableOp�!conv3d_233/BiasAdd/ReadVariableOp� conv3d_233/Conv3D/ReadVariableOp�dense_43/BiasAdd/ReadVariableOp�dense_43/MatMul/ReadVariableOp�
0tf.__operators__.getitem_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_422/strided_slice/stack�
2tf.__operators__.getitem_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_422/strided_slice/stack_1�
2tf.__operators__.getitem_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_422/strided_slice/stack_2�
*tf.__operators__.getitem_422/strided_sliceStridedSliceinputs9tf.__operators__.getitem_422/strided_slice/stack:output:0;tf.__operators__.getitem_422/strided_slice/stack_1:output:0;tf.__operators__.getitem_422/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_422/strided_slice{
range_conversion_43/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_43/sub/y�
range_conversion_43/subSub3tf.__operators__.getitem_422/strided_slice:output:0"range_conversion_43/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/sub�
range_conversion_43/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_43/truediv/y�
range_conversion_43/truedivRealDivrange_conversion_43/sub:z:0&range_conversion_43/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/truediv{
range_conversion_43/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_43/mul/y�
range_conversion_43/mulMulrange_conversion_43/truediv:z:0"range_conversion_43/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/mul{
range_conversion_43/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_43/add/y�
range_conversion_43/addAddV2range_conversion_43/mul:z:0"range_conversion_43/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/add�
0tf.__operators__.getitem_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_423/strided_slice/stack�
2tf.__operators__.getitem_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_423/strided_slice/stack_1�
2tf.__operators__.getitem_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_423/strided_slice/stack_2�
*tf.__operators__.getitem_423/strided_sliceStridedSliceinputs9tf.__operators__.getitem_423/strided_slice/stack:output:0;tf.__operators__.getitem_423/strided_slice/stack_1:output:0;tf.__operators__.getitem_423/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_423/strided_slicex
tf.concat_565/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_565/concat/axis�
tf.concat_565/concatConcatV2range_conversion_43/add:z:03tf.__operators__.getitem_423/strided_slice:output:0"tf.concat_565/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_565/concat�
 conv3d_227/Conv3D/ReadVariableOpReadVariableOp)conv3d_227_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_227/Conv3D/ReadVariableOp�
conv3d_227/Conv3DConv3Dtf.concat_565/concat:output:0(conv3d_227/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_227/Conv3D�
!conv3d_227/BiasAdd/ReadVariableOpReadVariableOp*conv3d_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_227/BiasAdd/ReadVariableOp�
conv3d_227/BiasAddBiasAddconv3d_227/Conv3D:output:0)conv3d_227/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_227/BiasAdd�
conv3d_227/SoftplusSoftplusconv3d_227/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_227/Softplus�
#average_pooling3d_92/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_92/transpose/perm�
average_pooling3d_92/transpose	Transpose!conv3d_227/Softplus:activations:0,average_pooling3d_92/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_92/transpose�
average_pooling3d_92/AvgPool3D	AvgPool3D"average_pooling3d_92/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_92/AvgPool3D�
%average_pooling3d_92/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_92/transpose_1/perm�
 average_pooling3d_92/transpose_1	Transpose'average_pooling3d_92/AvgPool3D:output:0.average_pooling3d_92/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_92/transpose_1�
 conv3d_228/Conv3D/ReadVariableOpReadVariableOp)conv3d_228_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_228/Conv3D/ReadVariableOp�
conv3d_228/Conv3DConv3D$average_pooling3d_92/transpose_1:y:0(conv3d_228/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_228/Conv3D�
!conv3d_228/BiasAdd/ReadVariableOpReadVariableOp*conv3d_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_228/BiasAdd/ReadVariableOp�
conv3d_228/BiasAddBiasAddconv3d_228/Conv3D:output:0)conv3d_228/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_228/BiasAdd�
conv3d_228/SoftplusSoftplusconv3d_228/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_228/Softplus�
#average_pooling3d_93/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_93/transpose/perm�
average_pooling3d_93/transpose	Transpose!conv3d_228/Softplus:activations:0,average_pooling3d_93/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_93/transpose�
average_pooling3d_93/AvgPool3D	AvgPool3D"average_pooling3d_93/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_93/AvgPool3D�
%average_pooling3d_93/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_93/transpose_1/perm�
 average_pooling3d_93/transpose_1	Transpose'average_pooling3d_93/AvgPool3D:output:0.average_pooling3d_93/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_93/transpose_1�
 conv3d_229/Conv3D/ReadVariableOpReadVariableOp)conv3d_229_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_229/Conv3D/ReadVariableOp�
conv3d_229/Conv3DConv3D$average_pooling3d_93/transpose_1:y:0(conv3d_229/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_229/Conv3D�
!conv3d_229/BiasAdd/ReadVariableOpReadVariableOp*conv3d_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_229/BiasAdd/ReadVariableOp�
conv3d_229/BiasAddBiasAddconv3d_229/Conv3D:output:0)conv3d_229/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_229/BiasAdd�
conv3d_229/SoftplusSoftplusconv3d_229/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_229/Softplus�
#average_pooling3d_94/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_94/transpose/perm�
average_pooling3d_94/transpose	Transpose!conv3d_229/Softplus:activations:0,average_pooling3d_94/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_94/transpose�
average_pooling3d_94/AvgPool3D	AvgPool3D"average_pooling3d_94/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_94/AvgPool3D�
%average_pooling3d_94/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_94/transpose_1/perm�
 average_pooling3d_94/transpose_1	Transpose'average_pooling3d_94/AvgPool3D:output:0.average_pooling3d_94/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_94/transpose_1x
reshape_86/ShapeShape$average_pooling3d_94/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_86/Shape�
reshape_86/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_86/strided_slice/stack�
 reshape_86/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_86/strided_slice/stack_1�
 reshape_86/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_86/strided_slice/stack_2�
reshape_86/strided_sliceStridedSlicereshape_86/Shape:output:0'reshape_86/strided_slice/stack:output:0)reshape_86/strided_slice/stack_1:output:0)reshape_86/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_86/strided_slicez
reshape_86/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_86/Reshape/shape/1�
reshape_86/Reshape/shapePack!reshape_86/strided_slice:output:0#reshape_86/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_86/Reshape/shape�
reshape_86/ReshapeReshape$average_pooling3d_94/transpose_1:y:0!reshape_86/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_86/Reshape�
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_43/MatMul/ReadVariableOp�
dense_43/MatMulMatMulreshape_86/Reshape:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_43/MatMul�
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_43/BiasAdd/ReadVariableOp�
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_43/BiasAdd
dense_43/SoftplusSoftplusdense_43/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_43/Softpluss
reshape_87/ShapeShapedense_43/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_87/Shape�
reshape_87/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_87/strided_slice/stack�
 reshape_87/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_87/strided_slice/stack_1�
 reshape_87/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_87/strided_slice/stack_2�
reshape_87/strided_sliceStridedSlicereshape_87/Shape:output:0'reshape_87/strided_slice/stack:output:0)reshape_87/strided_slice/stack_1:output:0)reshape_87/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_87/strided_slicez
reshape_87/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/1z
reshape_87/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/2z
reshape_87/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/3z
reshape_87/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/4�
reshape_87/Reshape/shapePack!reshape_87/strided_slice:output:0#reshape_87/Reshape/shape/1:output:0#reshape_87/Reshape/shape/2:output:0#reshape_87/Reshape/shape/3:output:0#reshape_87/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_87/Reshape/shape�
reshape_87/ReshapeReshapedense_43/Softplus:activations:0!reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_87/Reshape�
tf.reshape_708/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_708/Reshape/shape�
tf.reshape_708/ReshapeReshapereshape_87/Reshape:output:0%tf.reshape_708/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_708/Reshape�
tf.tile_354/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_354/Tile/multiples�
tf.tile_354/TileTiletf.reshape_708/Reshape:output:0#tf.tile_354/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_354/Tile�
tf.reshape_709/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_709/Reshape/shape�
tf.reshape_709/ReshapeReshapetf.tile_354/Tile:output:0%tf.reshape_709/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_709/Reshapex
tf.concat_566/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_566/concat/axis�
tf.concat_566/concatConcatV2tf.reshape_709/Reshape:output:0!conv3d_229/Softplus:activations:0"tf.concat_566/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_566/concat�
 conv3d_230/Conv3D/ReadVariableOpReadVariableOp)conv3d_230_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_230/Conv3D/ReadVariableOp�
conv3d_230/Conv3DConv3Dtf.concat_566/concat:output:0(conv3d_230/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_230/Conv3D�
!conv3d_230/BiasAdd/ReadVariableOpReadVariableOp*conv3d_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_230/BiasAdd/ReadVariableOp�
conv3d_230/BiasAddBiasAddconv3d_230/Conv3D:output:0)conv3d_230/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_230/BiasAdd�
conv3d_230/SoftplusSoftplusconv3d_230/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_230/Softplus�
tf.reshape_710/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_710/Reshape/shape�
tf.reshape_710/ReshapeReshape!conv3d_230/Softplus:activations:0%tf.reshape_710/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_710/Reshape�
tf.tile_355/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_355/Tile/multiples�
tf.tile_355/TileTiletf.reshape_710/Reshape:output:0#tf.tile_355/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_355/Tile�
tf.reshape_711/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_711/Reshape/shape�
tf.reshape_711/ReshapeReshapetf.tile_355/Tile:output:0%tf.reshape_711/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_711/Reshapex
tf.concat_567/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_567/concat/axis�
tf.concat_567/concatConcatV2tf.reshape_711/Reshape:output:0!conv3d_228/Softplus:activations:0"tf.concat_567/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_567/concat�
 conv3d_231/Conv3D/ReadVariableOpReadVariableOp)conv3d_231_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_231/Conv3D/ReadVariableOp�
conv3d_231/Conv3DConv3Dtf.concat_567/concat:output:0(conv3d_231/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_231/Conv3D�
!conv3d_231/BiasAdd/ReadVariableOpReadVariableOp*conv3d_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_231/BiasAdd/ReadVariableOp�
conv3d_231/BiasAddBiasAddconv3d_231/Conv3D:output:0)conv3d_231/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_231/BiasAdd�
conv3d_231/SoftplusSoftplusconv3d_231/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_231/Softplus�
tf.reshape_712/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_712/Reshape/shape�
tf.reshape_712/ReshapeReshape!conv3d_231/Softplus:activations:0%tf.reshape_712/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_712/Reshape�
tf.tile_356/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_356/Tile/multiples�
tf.tile_356/TileTiletf.reshape_712/Reshape:output:0#tf.tile_356/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_356/Tile�
tf.reshape_713/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_713/Reshape/shape�
tf.reshape_713/ReshapeReshapetf.tile_356/Tile:output:0%tf.reshape_713/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_713/Reshapex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2tf.reshape_713/Reshape:output:0!conv3d_227/Softplus:activations:0"tf.concat_568/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_568/concat�
 conv3d_232/Conv3D/ReadVariableOpReadVariableOp)conv3d_232_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_232/Conv3D/ReadVariableOp�
conv3d_232/Conv3DConv3Dtf.concat_568/concat:output:0(conv3d_232/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_232/Conv3D�
!conv3d_232/BiasAdd/ReadVariableOpReadVariableOp*conv3d_232_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_232/BiasAdd/ReadVariableOp�
conv3d_232/BiasAddBiasAddconv3d_232/Conv3D:output:0)conv3d_232/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_232/BiasAdd�
conv3d_232/SoftplusSoftplusconv3d_232/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_232/Softplus�
 conv3d_233/Conv3D/ReadVariableOpReadVariableOp)conv3d_233_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_233/Conv3D/ReadVariableOp�
conv3d_233/Conv3DConv3D!conv3d_232/Softplus:activations:0(conv3d_233/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_233/Conv3D�
!conv3d_233/BiasAdd/ReadVariableOpReadVariableOp*conv3d_233_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_233/BiasAdd/ReadVariableOp�
conv3d_233/BiasAddBiasAddconv3d_233/Conv3D:output:0)conv3d_233/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_233/BiasAdd�
IdentityIdentityconv3d_233/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_227/BiasAdd/ReadVariableOp!^conv3d_227/Conv3D/ReadVariableOp"^conv3d_228/BiasAdd/ReadVariableOp!^conv3d_228/Conv3D/ReadVariableOp"^conv3d_229/BiasAdd/ReadVariableOp!^conv3d_229/Conv3D/ReadVariableOp"^conv3d_230/BiasAdd/ReadVariableOp!^conv3d_230/Conv3D/ReadVariableOp"^conv3d_231/BiasAdd/ReadVariableOp!^conv3d_231/Conv3D/ReadVariableOp"^conv3d_232/BiasAdd/ReadVariableOp!^conv3d_232/Conv3D/ReadVariableOp"^conv3d_233/BiasAdd/ReadVariableOp!^conv3d_233/Conv3D/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_227/BiasAdd/ReadVariableOp!conv3d_227/BiasAdd/ReadVariableOp2D
 conv3d_227/Conv3D/ReadVariableOp conv3d_227/Conv3D/ReadVariableOp2F
!conv3d_228/BiasAdd/ReadVariableOp!conv3d_228/BiasAdd/ReadVariableOp2D
 conv3d_228/Conv3D/ReadVariableOp conv3d_228/Conv3D/ReadVariableOp2F
!conv3d_229/BiasAdd/ReadVariableOp!conv3d_229/BiasAdd/ReadVariableOp2D
 conv3d_229/Conv3D/ReadVariableOp conv3d_229/Conv3D/ReadVariableOp2F
!conv3d_230/BiasAdd/ReadVariableOp!conv3d_230/BiasAdd/ReadVariableOp2D
 conv3d_230/Conv3D/ReadVariableOp conv3d_230/Conv3D/ReadVariableOp2F
!conv3d_231/BiasAdd/ReadVariableOp!conv3d_231/BiasAdd/ReadVariableOp2D
 conv3d_231/Conv3D/ReadVariableOp conv3d_231/Conv3D/ReadVariableOp2F
!conv3d_232/BiasAdd/ReadVariableOp!conv3d_232/BiasAdd/ReadVariableOp2D
 conv3d_232/Conv3D/ReadVariableOp conv3d_232/Conv3D/ReadVariableOp2F
!conv3d_233/BiasAdd/ReadVariableOp!conv3d_233/BiasAdd/ReadVariableOp2D
 conv3d_233/Conv3D/ReadVariableOp conv3d_233/Conv3D/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�x
�
F__inference_model_43_layer_call_and_return_conditional_losses_13058404	
input1
conv3d_227_13058334:!
conv3d_227_13058336:1
conv3d_228_13058340:!
conv3d_228_13058342:1
conv3d_229_13058346:!
conv3d_229_13058348:#
dense_43_13058353:@@
dense_43_13058355:@1
conv3d_230_13058367:!
conv3d_230_13058369:1
conv3d_231_13058380:!
conv3d_231_13058382:1
conv3d_232_13058393:!
conv3d_232_13058395:1
conv3d_233_13058398:!
conv3d_233_13058400:
identity��"conv3d_227/StatefulPartitionedCall�"conv3d_228/StatefulPartitionedCall�"conv3d_229/StatefulPartitionedCall�"conv3d_230/StatefulPartitionedCall�"conv3d_231/StatefulPartitionedCall�"conv3d_232/StatefulPartitionedCall�"conv3d_233/StatefulPartitionedCall� dense_43/StatefulPartitionedCall�
0tf.__operators__.getitem_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_422/strided_slice/stack�
2tf.__operators__.getitem_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_422/strided_slice/stack_1�
2tf.__operators__.getitem_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_422/strided_slice/stack_2�
*tf.__operators__.getitem_422/strided_sliceStridedSliceinput9tf.__operators__.getitem_422/strided_slice/stack:output:0;tf.__operators__.getitem_422/strided_slice/stack_1:output:0;tf.__operators__.getitem_422/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_422/strided_slice�
#range_conversion_43/PartitionedCallPartitionedCall3tf.__operators__.getitem_422/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_130576642%
#range_conversion_43/PartitionedCall�
0tf.__operators__.getitem_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_423/strided_slice/stack�
2tf.__operators__.getitem_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_423/strided_slice/stack_1�
2tf.__operators__.getitem_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_423/strided_slice/stack_2�
*tf.__operators__.getitem_423/strided_sliceStridedSliceinput9tf.__operators__.getitem_423/strided_slice/stack:output:0;tf.__operators__.getitem_423/strided_slice/stack_1:output:0;tf.__operators__.getitem_423/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_423/strided_slicex
tf.concat_565/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_565/concat/axis�
tf.concat_565/concatConcatV2,range_conversion_43/PartitionedCall:output:03tf.__operators__.getitem_423/strided_slice:output:0"tf.concat_565/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_565/concat�
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCalltf.concat_565/concat:output:0conv3d_227_13058334conv3d_227_13058336*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_130576832$
"conv3d_227/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_130576972&
$average_pooling3d_92/PartitionedCall�
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_228_13058340conv3d_228_13058342*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_130577102$
"conv3d_228/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_130577242&
$average_pooling3d_93/PartitionedCall�
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_229_13058346conv3d_229_13058348*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_130577372$
"conv3d_229/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_130577512&
$average_pooling3d_94/PartitionedCall�
reshape_86/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
H__inference_reshape_86_layer_call_and_return_conditional_losses_130577652
reshape_86/PartitionedCall�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall#reshape_86/PartitionedCall:output:0dense_43_13058353dense_43_13058355*
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
F__inference_dense_43_layer_call_and_return_conditional_losses_130577782"
 dense_43/StatefulPartitionedCall�
reshape_87/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
H__inference_reshape_87_layer_call_and_return_conditional_losses_130577992
reshape_87/PartitionedCall�
tf.reshape_708/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_708/Reshape/shape�
tf.reshape_708/ReshapeReshape#reshape_87/PartitionedCall:output:0%tf.reshape_708/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_708/Reshape�
tf.tile_354/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_354/Tile/multiples�
tf.tile_354/TileTiletf.reshape_708/Reshape:output:0#tf.tile_354/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_354/Tile�
tf.reshape_709/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_709/Reshape/shape�
tf.reshape_709/ReshapeReshapetf.tile_354/Tile:output:0%tf.reshape_709/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_709/Reshapex
tf.concat_566/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_566/concat/axis�
tf.concat_566/concatConcatV2tf.reshape_709/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_566/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_566/concat�
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_566/concat:output:0conv3d_230_13058367conv3d_230_13058369*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_130578202$
"conv3d_230/StatefulPartitionedCall�
tf.reshape_710/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_710/Reshape/shape�
tf.reshape_710/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_710/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_710/Reshape�
tf.tile_355/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_355/Tile/multiples�
tf.tile_355/TileTiletf.reshape_710/Reshape:output:0#tf.tile_355/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_355/Tile�
tf.reshape_711/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_711/Reshape/shape�
tf.reshape_711/ReshapeReshapetf.tile_355/Tile:output:0%tf.reshape_711/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_711/Reshapex
tf.concat_567/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_567/concat/axis�
tf.concat_567/concatConcatV2tf.reshape_711/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_567/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_567/concat�
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_567/concat:output:0conv3d_231_13058380conv3d_231_13058382*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_130578452$
"conv3d_231/StatefulPartitionedCall�
tf.reshape_712/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_712/Reshape/shape�
tf.reshape_712/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_712/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_712/Reshape�
tf.tile_356/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_356/Tile/multiples�
tf.tile_356/TileTiletf.reshape_712/Reshape:output:0#tf.tile_356/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_356/Tile�
tf.reshape_713/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_713/Reshape/shape�
tf.reshape_713/ReshapeReshapetf.tile_356/Tile:output:0%tf.reshape_713/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_713/Reshapex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2tf.reshape_713/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_568/concat�
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_568/concat:output:0conv3d_232_13058393conv3d_232_13058395*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_130578702$
"conv3d_232/StatefulPartitionedCall�
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCall+conv3d_232/StatefulPartitionedCall:output:0conv3d_233_13058398conv3d_233_13058400*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_130578862$
"conv3d_233/StatefulPartitionedCall�
IdentityIdentity+conv3d_233/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
S
7__inference_average_pooling3d_92_layer_call_fn_13058829

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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_130575642
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
�-
�
!__inference__traced_save_13059155
file_prefix0
,savev2_conv3d_227_kernel_read_readvariableop.
*savev2_conv3d_227_bias_read_readvariableop0
,savev2_conv3d_228_kernel_read_readvariableop.
*savev2_conv3d_228_bias_read_readvariableop0
,savev2_conv3d_229_kernel_read_readvariableop.
*savev2_conv3d_229_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop0
,savev2_conv3d_230_kernel_read_readvariableop.
*savev2_conv3d_230_bias_read_readvariableop0
,savev2_conv3d_231_kernel_read_readvariableop.
*savev2_conv3d_231_bias_read_readvariableop0
,savev2_conv3d_232_kernel_read_readvariableop.
*savev2_conv3d_232_bias_read_readvariableop0
,savev2_conv3d_233_kernel_read_readvariableop.
*savev2_conv3d_233_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_227_kernel_read_readvariableop*savev2_conv3d_227_bias_read_readvariableop,savev2_conv3d_228_kernel_read_readvariableop*savev2_conv3d_228_bias_read_readvariableop,savev2_conv3d_229_kernel_read_readvariableop*savev2_conv3d_229_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop,savev2_conv3d_230_kernel_read_readvariableop*savev2_conv3d_230_bias_read_readvariableop,savev2_conv3d_231_kernel_read_readvariableop*savev2_conv3d_231_bias_read_readvariableop,savev2_conv3d_232_kernel_read_readvariableop*savev2_conv3d_232_bias_read_readvariableop,savev2_conv3d_233_kernel_read_readvariableop*savev2_conv3d_233_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_13057710

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
+__inference_model_43_layer_call_fn_13058236	
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_43_layer_call_and_return_conditional_losses_130581642
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
n
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13058852

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
H__inference_conv3d_233_layer_call_and_return_conditional_losses_13059084

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
&__inference_signature_wrapper_13058443	
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
GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__wrapped_model_130575512
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
�
I
-__inference_reshape_87_layer_call_fn_13058990

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
H__inference_reshape_87_layer_call_and_return_conditional_losses_130577992
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

n
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13058891

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
�x
�
F__inference_model_43_layer_call_and_return_conditional_losses_13058164

inputs1
conv3d_227_13058094:!
conv3d_227_13058096:1
conv3d_228_13058100:!
conv3d_228_13058102:1
conv3d_229_13058106:!
conv3d_229_13058108:#
dense_43_13058113:@@
dense_43_13058115:@1
conv3d_230_13058127:!
conv3d_230_13058129:1
conv3d_231_13058140:!
conv3d_231_13058142:1
conv3d_232_13058153:!
conv3d_232_13058155:1
conv3d_233_13058158:!
conv3d_233_13058160:
identity��"conv3d_227/StatefulPartitionedCall�"conv3d_228/StatefulPartitionedCall�"conv3d_229/StatefulPartitionedCall�"conv3d_230/StatefulPartitionedCall�"conv3d_231/StatefulPartitionedCall�"conv3d_232/StatefulPartitionedCall�"conv3d_233/StatefulPartitionedCall� dense_43/StatefulPartitionedCall�
0tf.__operators__.getitem_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_422/strided_slice/stack�
2tf.__operators__.getitem_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_422/strided_slice/stack_1�
2tf.__operators__.getitem_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_422/strided_slice/stack_2�
*tf.__operators__.getitem_422/strided_sliceStridedSliceinputs9tf.__operators__.getitem_422/strided_slice/stack:output:0;tf.__operators__.getitem_422/strided_slice/stack_1:output:0;tf.__operators__.getitem_422/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_422/strided_slice�
#range_conversion_43/PartitionedCallPartitionedCall3tf.__operators__.getitem_422/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_130576642%
#range_conversion_43/PartitionedCall�
0tf.__operators__.getitem_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_423/strided_slice/stack�
2tf.__operators__.getitem_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_423/strided_slice/stack_1�
2tf.__operators__.getitem_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_423/strided_slice/stack_2�
*tf.__operators__.getitem_423/strided_sliceStridedSliceinputs9tf.__operators__.getitem_423/strided_slice/stack:output:0;tf.__operators__.getitem_423/strided_slice/stack_1:output:0;tf.__operators__.getitem_423/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_423/strided_slicex
tf.concat_565/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_565/concat/axis�
tf.concat_565/concatConcatV2,range_conversion_43/PartitionedCall:output:03tf.__operators__.getitem_423/strided_slice:output:0"tf.concat_565/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_565/concat�
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCalltf.concat_565/concat:output:0conv3d_227_13058094conv3d_227_13058096*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_130576832$
"conv3d_227/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_130576972&
$average_pooling3d_92/PartitionedCall�
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_228_13058100conv3d_228_13058102*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_130577102$
"conv3d_228/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_130577242&
$average_pooling3d_93/PartitionedCall�
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_229_13058106conv3d_229_13058108*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_130577372$
"conv3d_229/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_130577512&
$average_pooling3d_94/PartitionedCall�
reshape_86/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
H__inference_reshape_86_layer_call_and_return_conditional_losses_130577652
reshape_86/PartitionedCall�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall#reshape_86/PartitionedCall:output:0dense_43_13058113dense_43_13058115*
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
F__inference_dense_43_layer_call_and_return_conditional_losses_130577782"
 dense_43/StatefulPartitionedCall�
reshape_87/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
H__inference_reshape_87_layer_call_and_return_conditional_losses_130577992
reshape_87/PartitionedCall�
tf.reshape_708/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_708/Reshape/shape�
tf.reshape_708/ReshapeReshape#reshape_87/PartitionedCall:output:0%tf.reshape_708/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_708/Reshape�
tf.tile_354/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_354/Tile/multiples�
tf.tile_354/TileTiletf.reshape_708/Reshape:output:0#tf.tile_354/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_354/Tile�
tf.reshape_709/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_709/Reshape/shape�
tf.reshape_709/ReshapeReshapetf.tile_354/Tile:output:0%tf.reshape_709/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_709/Reshapex
tf.concat_566/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_566/concat/axis�
tf.concat_566/concatConcatV2tf.reshape_709/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_566/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_566/concat�
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_566/concat:output:0conv3d_230_13058127conv3d_230_13058129*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_130578202$
"conv3d_230/StatefulPartitionedCall�
tf.reshape_710/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_710/Reshape/shape�
tf.reshape_710/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_710/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_710/Reshape�
tf.tile_355/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_355/Tile/multiples�
tf.tile_355/TileTiletf.reshape_710/Reshape:output:0#tf.tile_355/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_355/Tile�
tf.reshape_711/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_711/Reshape/shape�
tf.reshape_711/ReshapeReshapetf.tile_355/Tile:output:0%tf.reshape_711/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_711/Reshapex
tf.concat_567/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_567/concat/axis�
tf.concat_567/concatConcatV2tf.reshape_711/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_567/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_567/concat�
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_567/concat:output:0conv3d_231_13058140conv3d_231_13058142*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_130578452$
"conv3d_231/StatefulPartitionedCall�
tf.reshape_712/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_712/Reshape/shape�
tf.reshape_712/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_712/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_712/Reshape�
tf.tile_356/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_356/Tile/multiples�
tf.tile_356/TileTiletf.reshape_712/Reshape:output:0#tf.tile_356/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_356/Tile�
tf.reshape_713/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_713/Reshape/shape�
tf.reshape_713/ReshapeReshapetf.tile_356/Tile:output:0%tf.reshape_713/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_713/Reshapex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2tf.reshape_713/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_568/concat�
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_568/concat:output:0conv3d_232_13058153conv3d_232_13058155*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_130578702$
"conv3d_232/StatefulPartitionedCall�
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCall+conv3d_232/StatefulPartitionedCall:output:0conv3d_233_13058158conv3d_233_13058160*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_130578862$
"conv3d_233/StatefulPartitionedCall�
IdentityIdentity+conv3d_233/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�x
�
F__inference_model_43_layer_call_and_return_conditional_losses_13058320	
input1
conv3d_227_13058250:!
conv3d_227_13058252:1
conv3d_228_13058256:!
conv3d_228_13058258:1
conv3d_229_13058262:!
conv3d_229_13058264:#
dense_43_13058269:@@
dense_43_13058271:@1
conv3d_230_13058283:!
conv3d_230_13058285:1
conv3d_231_13058296:!
conv3d_231_13058298:1
conv3d_232_13058309:!
conv3d_232_13058311:1
conv3d_233_13058314:!
conv3d_233_13058316:
identity��"conv3d_227/StatefulPartitionedCall�"conv3d_228/StatefulPartitionedCall�"conv3d_229/StatefulPartitionedCall�"conv3d_230/StatefulPartitionedCall�"conv3d_231/StatefulPartitionedCall�"conv3d_232/StatefulPartitionedCall�"conv3d_233/StatefulPartitionedCall� dense_43/StatefulPartitionedCall�
0tf.__operators__.getitem_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_422/strided_slice/stack�
2tf.__operators__.getitem_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_422/strided_slice/stack_1�
2tf.__operators__.getitem_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_422/strided_slice/stack_2�
*tf.__operators__.getitem_422/strided_sliceStridedSliceinput9tf.__operators__.getitem_422/strided_slice/stack:output:0;tf.__operators__.getitem_422/strided_slice/stack_1:output:0;tf.__operators__.getitem_422/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_422/strided_slice�
#range_conversion_43/PartitionedCallPartitionedCall3tf.__operators__.getitem_422/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_130576642%
#range_conversion_43/PartitionedCall�
0tf.__operators__.getitem_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_423/strided_slice/stack�
2tf.__operators__.getitem_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_423/strided_slice/stack_1�
2tf.__operators__.getitem_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_423/strided_slice/stack_2�
*tf.__operators__.getitem_423/strided_sliceStridedSliceinput9tf.__operators__.getitem_423/strided_slice/stack:output:0;tf.__operators__.getitem_423/strided_slice/stack_1:output:0;tf.__operators__.getitem_423/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_423/strided_slicex
tf.concat_565/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_565/concat/axis�
tf.concat_565/concatConcatV2,range_conversion_43/PartitionedCall:output:03tf.__operators__.getitem_423/strided_slice:output:0"tf.concat_565/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_565/concat�
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCalltf.concat_565/concat:output:0conv3d_227_13058250conv3d_227_13058252*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_130576832$
"conv3d_227/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_130576972&
$average_pooling3d_92/PartitionedCall�
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_228_13058256conv3d_228_13058258*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_130577102$
"conv3d_228/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_130577242&
$average_pooling3d_93/PartitionedCall�
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_229_13058262conv3d_229_13058264*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_130577372$
"conv3d_229/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_130577512&
$average_pooling3d_94/PartitionedCall�
reshape_86/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
H__inference_reshape_86_layer_call_and_return_conditional_losses_130577652
reshape_86/PartitionedCall�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall#reshape_86/PartitionedCall:output:0dense_43_13058269dense_43_13058271*
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
F__inference_dense_43_layer_call_and_return_conditional_losses_130577782"
 dense_43/StatefulPartitionedCall�
reshape_87/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
H__inference_reshape_87_layer_call_and_return_conditional_losses_130577992
reshape_87/PartitionedCall�
tf.reshape_708/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_708/Reshape/shape�
tf.reshape_708/ReshapeReshape#reshape_87/PartitionedCall:output:0%tf.reshape_708/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_708/Reshape�
tf.tile_354/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_354/Tile/multiples�
tf.tile_354/TileTiletf.reshape_708/Reshape:output:0#tf.tile_354/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_354/Tile�
tf.reshape_709/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_709/Reshape/shape�
tf.reshape_709/ReshapeReshapetf.tile_354/Tile:output:0%tf.reshape_709/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_709/Reshapex
tf.concat_566/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_566/concat/axis�
tf.concat_566/concatConcatV2tf.reshape_709/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_566/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_566/concat�
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_566/concat:output:0conv3d_230_13058283conv3d_230_13058285*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_130578202$
"conv3d_230/StatefulPartitionedCall�
tf.reshape_710/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_710/Reshape/shape�
tf.reshape_710/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_710/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_710/Reshape�
tf.tile_355/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_355/Tile/multiples�
tf.tile_355/TileTiletf.reshape_710/Reshape:output:0#tf.tile_355/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_355/Tile�
tf.reshape_711/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_711/Reshape/shape�
tf.reshape_711/ReshapeReshapetf.tile_355/Tile:output:0%tf.reshape_711/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_711/Reshapex
tf.concat_567/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_567/concat/axis�
tf.concat_567/concatConcatV2tf.reshape_711/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_567/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_567/concat�
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_567/concat:output:0conv3d_231_13058296conv3d_231_13058298*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_130578452$
"conv3d_231/StatefulPartitionedCall�
tf.reshape_712/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_712/Reshape/shape�
tf.reshape_712/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_712/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_712/Reshape�
tf.tile_356/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_356/Tile/multiples�
tf.tile_356/TileTiletf.reshape_712/Reshape:output:0#tf.tile_356/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_356/Tile�
tf.reshape_713/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_713/Reshape/shape�
tf.reshape_713/ReshapeReshapetf.tile_356/Tile:output:0%tf.reshape_713/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_713/Reshapex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2tf.reshape_713/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_568/concat�
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_568/concat:output:0conv3d_232_13058309conv3d_232_13058311*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_130578702$
"conv3d_232/StatefulPartitionedCall�
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCall+conv3d_232/StatefulPartitionedCall:output:0conv3d_233_13058314conv3d_233_13058316*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_130578862$
"conv3d_233/StatefulPartitionedCall�
IdentityIdentity+conv3d_233/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
d
H__inference_reshape_87_layer_call_and_return_conditional_losses_13057799

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
�
�
+__inference_dense_43_layer_call_fn_13058974

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
F__inference_dense_43_layer_call_and_return_conditional_losses_130577782
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
�
S
7__inference_average_pooling3d_93_layer_call_fn_13058882

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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_130577242
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_13059065

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
�
+__inference_model_43_layer_call_fn_13057928	
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_43_layer_call_and_return_conditional_losses_130578932
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
�
+__inference_model_43_layer_call_fn_13058517

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_43_layer_call_and_return_conditional_losses_130581642
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

n
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13057624

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
-__inference_conv3d_231_layer_call_fn_13059034

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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_130578452
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
-__inference_conv3d_229_layer_call_fn_13058909

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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_130577372
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
�
d
H__inference_reshape_87_layer_call_and_return_conditional_losses_13059005

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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_13058872

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
�
F__inference_dense_43_layer_call_and_return_conditional_losses_13057778

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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_13059025

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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13058900

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
-__inference_conv3d_233_layer_call_fn_13059074

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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_130578862
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_13057870

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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_13058920

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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_13058824

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
�
d
H__inference_reshape_86_layer_call_and_return_conditional_losses_13057765

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
d
H__inference_reshape_86_layer_call_and_return_conditional_losses_13058965

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
n
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13057751

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
�x
�
F__inference_model_43_layer_call_and_return_conditional_losses_13057893

inputs1
conv3d_227_13057684:!
conv3d_227_13057686:1
conv3d_228_13057711:!
conv3d_228_13057713:1
conv3d_229_13057738:!
conv3d_229_13057740:#
dense_43_13057779:@@
dense_43_13057781:@1
conv3d_230_13057821:!
conv3d_230_13057823:1
conv3d_231_13057846:!
conv3d_231_13057848:1
conv3d_232_13057871:!
conv3d_232_13057873:1
conv3d_233_13057887:!
conv3d_233_13057889:
identity��"conv3d_227/StatefulPartitionedCall�"conv3d_228/StatefulPartitionedCall�"conv3d_229/StatefulPartitionedCall�"conv3d_230/StatefulPartitionedCall�"conv3d_231/StatefulPartitionedCall�"conv3d_232/StatefulPartitionedCall�"conv3d_233/StatefulPartitionedCall� dense_43/StatefulPartitionedCall�
0tf.__operators__.getitem_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_422/strided_slice/stack�
2tf.__operators__.getitem_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_422/strided_slice/stack_1�
2tf.__operators__.getitem_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_422/strided_slice/stack_2�
*tf.__operators__.getitem_422/strided_sliceStridedSliceinputs9tf.__operators__.getitem_422/strided_slice/stack:output:0;tf.__operators__.getitem_422/strided_slice/stack_1:output:0;tf.__operators__.getitem_422/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_422/strided_slice�
#range_conversion_43/PartitionedCallPartitionedCall3tf.__operators__.getitem_422/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_130576642%
#range_conversion_43/PartitionedCall�
0tf.__operators__.getitem_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_423/strided_slice/stack�
2tf.__operators__.getitem_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_423/strided_slice/stack_1�
2tf.__operators__.getitem_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_423/strided_slice/stack_2�
*tf.__operators__.getitem_423/strided_sliceStridedSliceinputs9tf.__operators__.getitem_423/strided_slice/stack:output:0;tf.__operators__.getitem_423/strided_slice/stack_1:output:0;tf.__operators__.getitem_423/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_423/strided_slicex
tf.concat_565/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_565/concat/axis�
tf.concat_565/concatConcatV2,range_conversion_43/PartitionedCall:output:03tf.__operators__.getitem_423/strided_slice:output:0"tf.concat_565/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_565/concat�
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCalltf.concat_565/concat:output:0conv3d_227_13057684conv3d_227_13057686*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_130576832$
"conv3d_227/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_130576972&
$average_pooling3d_92/PartitionedCall�
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_228_13057711conv3d_228_13057713*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_130577102$
"conv3d_228/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_130577242&
$average_pooling3d_93/PartitionedCall�
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_229_13057738conv3d_229_13057740*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_130577372$
"conv3d_229/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_130577512&
$average_pooling3d_94/PartitionedCall�
reshape_86/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
H__inference_reshape_86_layer_call_and_return_conditional_losses_130577652
reshape_86/PartitionedCall�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall#reshape_86/PartitionedCall:output:0dense_43_13057779dense_43_13057781*
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
F__inference_dense_43_layer_call_and_return_conditional_losses_130577782"
 dense_43/StatefulPartitionedCall�
reshape_87/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
H__inference_reshape_87_layer_call_and_return_conditional_losses_130577992
reshape_87/PartitionedCall�
tf.reshape_708/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_708/Reshape/shape�
tf.reshape_708/ReshapeReshape#reshape_87/PartitionedCall:output:0%tf.reshape_708/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_708/Reshape�
tf.tile_354/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_354/Tile/multiples�
tf.tile_354/TileTiletf.reshape_708/Reshape:output:0#tf.tile_354/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_354/Tile�
tf.reshape_709/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_709/Reshape/shape�
tf.reshape_709/ReshapeReshapetf.tile_354/Tile:output:0%tf.reshape_709/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_709/Reshapex
tf.concat_566/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_566/concat/axis�
tf.concat_566/concatConcatV2tf.reshape_709/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_566/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_566/concat�
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_566/concat:output:0conv3d_230_13057821conv3d_230_13057823*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_130578202$
"conv3d_230/StatefulPartitionedCall�
tf.reshape_710/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_710/Reshape/shape�
tf.reshape_710/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_710/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_710/Reshape�
tf.tile_355/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_355/Tile/multiples�
tf.tile_355/TileTiletf.reshape_710/Reshape:output:0#tf.tile_355/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_355/Tile�
tf.reshape_711/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_711/Reshape/shape�
tf.reshape_711/ReshapeReshapetf.tile_355/Tile:output:0%tf.reshape_711/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_711/Reshapex
tf.concat_567/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_567/concat/axis�
tf.concat_567/concatConcatV2tf.reshape_711/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_567/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_567/concat�
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_567/concat:output:0conv3d_231_13057846conv3d_231_13057848*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_130578452$
"conv3d_231/StatefulPartitionedCall�
tf.reshape_712/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_712/Reshape/shape�
tf.reshape_712/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_712/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_712/Reshape�
tf.tile_356/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_356/Tile/multiples�
tf.tile_356/TileTiletf.reshape_712/Reshape:output:0#tf.tile_356/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_356/Tile�
tf.reshape_713/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_713/Reshape/shape�
tf.reshape_713/ReshapeReshapetf.tile_356/Tile:output:0%tf.reshape_713/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_713/Reshapex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2tf.reshape_713/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_568/concat�
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_568/concat:output:0conv3d_232_13057871conv3d_232_13057873*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_130578702$
"conv3d_232/StatefulPartitionedCall�
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCall+conv3d_232/StatefulPartitionedCall:output:0conv3d_233_13057887conv3d_233_13057889*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_130578862$
"conv3d_233/StatefulPartitionedCall�
IdentityIdentity+conv3d_233/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
H__inference_conv3d_231_layer_call_and_return_conditional_losses_13057845

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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_13057820

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
S
7__inference_average_pooling3d_94_layer_call_fn_13058925

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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_130576242
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
�H
�

$__inference__traced_restore_13059213
file_prefix@
"assignvariableop_conv3d_227_kernel:0
"assignvariableop_1_conv3d_227_bias:B
$assignvariableop_2_conv3d_228_kernel:0
"assignvariableop_3_conv3d_228_bias:B
$assignvariableop_4_conv3d_229_kernel:0
"assignvariableop_5_conv3d_229_bias:4
"assignvariableop_6_dense_43_kernel:@@.
 assignvariableop_7_dense_43_bias:@B
$assignvariableop_8_conv3d_230_kernel:0
"assignvariableop_9_conv3d_230_bias:C
%assignvariableop_10_conv3d_231_kernel:1
#assignvariableop_11_conv3d_231_bias:C
%assignvariableop_12_conv3d_232_kernel:1
#assignvariableop_13_conv3d_232_bias:C
%assignvariableop_14_conv3d_233_kernel:1
#assignvariableop_15_conv3d_233_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_227_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_227_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_228_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_228_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_229_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_229_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_43_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_43_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_230_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_230_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_231_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_231_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_232_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_232_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_233_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_233_biasIdentity_15:output:0"/device:CPU:0*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_13057737

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
�
I
-__inference_reshape_86_layer_call_fn_13058953

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
H__inference_reshape_86_layer_call_and_return_conditional_losses_130577652
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

n
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13058939

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
S
7__inference_average_pooling3d_93_layer_call_fn_13058877

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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_130575942
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
-__inference_conv3d_230_layer_call_fn_13059014

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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_130578202
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
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_13058804

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
�
�
-__inference_conv3d_232_layer_call_fn_13059054

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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_130578702
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
n
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13057697

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
-__inference_conv3d_228_layer_call_fn_13058861

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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_130577102
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
�
S
7__inference_average_pooling3d_94_layer_call_fn_13058930

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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_130577512
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
��
�
F__inference_model_43_layer_call_and_return_conditional_losses_13058787

inputsG
)conv3d_227_conv3d_readvariableop_resource:8
*conv3d_227_biasadd_readvariableop_resource:G
)conv3d_228_conv3d_readvariableop_resource:8
*conv3d_228_biasadd_readvariableop_resource:G
)conv3d_229_conv3d_readvariableop_resource:8
*conv3d_229_biasadd_readvariableop_resource:9
'dense_43_matmul_readvariableop_resource:@@6
(dense_43_biasadd_readvariableop_resource:@G
)conv3d_230_conv3d_readvariableop_resource:8
*conv3d_230_biasadd_readvariableop_resource:G
)conv3d_231_conv3d_readvariableop_resource:8
*conv3d_231_biasadd_readvariableop_resource:G
)conv3d_232_conv3d_readvariableop_resource:8
*conv3d_232_biasadd_readvariableop_resource:G
)conv3d_233_conv3d_readvariableop_resource:8
*conv3d_233_biasadd_readvariableop_resource:
identity��!conv3d_227/BiasAdd/ReadVariableOp� conv3d_227/Conv3D/ReadVariableOp�!conv3d_228/BiasAdd/ReadVariableOp� conv3d_228/Conv3D/ReadVariableOp�!conv3d_229/BiasAdd/ReadVariableOp� conv3d_229/Conv3D/ReadVariableOp�!conv3d_230/BiasAdd/ReadVariableOp� conv3d_230/Conv3D/ReadVariableOp�!conv3d_231/BiasAdd/ReadVariableOp� conv3d_231/Conv3D/ReadVariableOp�!conv3d_232/BiasAdd/ReadVariableOp� conv3d_232/Conv3D/ReadVariableOp�!conv3d_233/BiasAdd/ReadVariableOp� conv3d_233/Conv3D/ReadVariableOp�dense_43/BiasAdd/ReadVariableOp�dense_43/MatMul/ReadVariableOp�
0tf.__operators__.getitem_422/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_422/strided_slice/stack�
2tf.__operators__.getitem_422/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_422/strided_slice/stack_1�
2tf.__operators__.getitem_422/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_422/strided_slice/stack_2�
*tf.__operators__.getitem_422/strided_sliceStridedSliceinputs9tf.__operators__.getitem_422/strided_slice/stack:output:0;tf.__operators__.getitem_422/strided_slice/stack_1:output:0;tf.__operators__.getitem_422/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_422/strided_slice{
range_conversion_43/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_43/sub/y�
range_conversion_43/subSub3tf.__operators__.getitem_422/strided_slice:output:0"range_conversion_43/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/sub�
range_conversion_43/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_43/truediv/y�
range_conversion_43/truedivRealDivrange_conversion_43/sub:z:0&range_conversion_43/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/truediv{
range_conversion_43/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_43/mul/y�
range_conversion_43/mulMulrange_conversion_43/truediv:z:0"range_conversion_43/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/mul{
range_conversion_43/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_43/add/y�
range_conversion_43/addAddV2range_conversion_43/mul:z:0"range_conversion_43/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_43/add�
0tf.__operators__.getitem_423/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_423/strided_slice/stack�
2tf.__operators__.getitem_423/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_423/strided_slice/stack_1�
2tf.__operators__.getitem_423/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_423/strided_slice/stack_2�
*tf.__operators__.getitem_423/strided_sliceStridedSliceinputs9tf.__operators__.getitem_423/strided_slice/stack:output:0;tf.__operators__.getitem_423/strided_slice/stack_1:output:0;tf.__operators__.getitem_423/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_423/strided_slicex
tf.concat_565/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_565/concat/axis�
tf.concat_565/concatConcatV2range_conversion_43/add:z:03tf.__operators__.getitem_423/strided_slice:output:0"tf.concat_565/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_565/concat�
 conv3d_227/Conv3D/ReadVariableOpReadVariableOp)conv3d_227_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_227/Conv3D/ReadVariableOp�
conv3d_227/Conv3DConv3Dtf.concat_565/concat:output:0(conv3d_227/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_227/Conv3D�
!conv3d_227/BiasAdd/ReadVariableOpReadVariableOp*conv3d_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_227/BiasAdd/ReadVariableOp�
conv3d_227/BiasAddBiasAddconv3d_227/Conv3D:output:0)conv3d_227/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_227/BiasAdd�
conv3d_227/SoftplusSoftplusconv3d_227/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_227/Softplus�
#average_pooling3d_92/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_92/transpose/perm�
average_pooling3d_92/transpose	Transpose!conv3d_227/Softplus:activations:0,average_pooling3d_92/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2 
average_pooling3d_92/transpose�
average_pooling3d_92/AvgPool3D	AvgPool3D"average_pooling3d_92/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_92/AvgPool3D�
%average_pooling3d_92/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_92/transpose_1/perm�
 average_pooling3d_92/transpose_1	Transpose'average_pooling3d_92/AvgPool3D:output:0.average_pooling3d_92/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_92/transpose_1�
 conv3d_228/Conv3D/ReadVariableOpReadVariableOp)conv3d_228_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_228/Conv3D/ReadVariableOp�
conv3d_228/Conv3DConv3D$average_pooling3d_92/transpose_1:y:0(conv3d_228/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_228/Conv3D�
!conv3d_228/BiasAdd/ReadVariableOpReadVariableOp*conv3d_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_228/BiasAdd/ReadVariableOp�
conv3d_228/BiasAddBiasAddconv3d_228/Conv3D:output:0)conv3d_228/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_228/BiasAdd�
conv3d_228/SoftplusSoftplusconv3d_228/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_228/Softplus�
#average_pooling3d_93/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_93/transpose/perm�
average_pooling3d_93/transpose	Transpose!conv3d_228/Softplus:activations:0,average_pooling3d_93/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_93/transpose�
average_pooling3d_93/AvgPool3D	AvgPool3D"average_pooling3d_93/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_93/AvgPool3D�
%average_pooling3d_93/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_93/transpose_1/perm�
 average_pooling3d_93/transpose_1	Transpose'average_pooling3d_93/AvgPool3D:output:0.average_pooling3d_93/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_93/transpose_1�
 conv3d_229/Conv3D/ReadVariableOpReadVariableOp)conv3d_229_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_229/Conv3D/ReadVariableOp�
conv3d_229/Conv3DConv3D$average_pooling3d_93/transpose_1:y:0(conv3d_229/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_229/Conv3D�
!conv3d_229/BiasAdd/ReadVariableOpReadVariableOp*conv3d_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_229/BiasAdd/ReadVariableOp�
conv3d_229/BiasAddBiasAddconv3d_229/Conv3D:output:0)conv3d_229/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_229/BiasAdd�
conv3d_229/SoftplusSoftplusconv3d_229/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_229/Softplus�
#average_pooling3d_94/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_94/transpose/perm�
average_pooling3d_94/transpose	Transpose!conv3d_229/Softplus:activations:0,average_pooling3d_94/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_94/transpose�
average_pooling3d_94/AvgPool3D	AvgPool3D"average_pooling3d_94/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_94/AvgPool3D�
%average_pooling3d_94/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_94/transpose_1/perm�
 average_pooling3d_94/transpose_1	Transpose'average_pooling3d_94/AvgPool3D:output:0.average_pooling3d_94/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_94/transpose_1x
reshape_86/ShapeShape$average_pooling3d_94/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_86/Shape�
reshape_86/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_86/strided_slice/stack�
 reshape_86/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_86/strided_slice/stack_1�
 reshape_86/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_86/strided_slice/stack_2�
reshape_86/strided_sliceStridedSlicereshape_86/Shape:output:0'reshape_86/strided_slice/stack:output:0)reshape_86/strided_slice/stack_1:output:0)reshape_86/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_86/strided_slicez
reshape_86/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_86/Reshape/shape/1�
reshape_86/Reshape/shapePack!reshape_86/strided_slice:output:0#reshape_86/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_86/Reshape/shape�
reshape_86/ReshapeReshape$average_pooling3d_94/transpose_1:y:0!reshape_86/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_86/Reshape�
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_43/MatMul/ReadVariableOp�
dense_43/MatMulMatMulreshape_86/Reshape:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_43/MatMul�
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_43/BiasAdd/ReadVariableOp�
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_43/BiasAdd
dense_43/SoftplusSoftplusdense_43/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_43/Softpluss
reshape_87/ShapeShapedense_43/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_87/Shape�
reshape_87/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_87/strided_slice/stack�
 reshape_87/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_87/strided_slice/stack_1�
 reshape_87/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_87/strided_slice/stack_2�
reshape_87/strided_sliceStridedSlicereshape_87/Shape:output:0'reshape_87/strided_slice/stack:output:0)reshape_87/strided_slice/stack_1:output:0)reshape_87/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_87/strided_slicez
reshape_87/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/1z
reshape_87/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/2z
reshape_87/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/3z
reshape_87/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_87/Reshape/shape/4�
reshape_87/Reshape/shapePack!reshape_87/strided_slice:output:0#reshape_87/Reshape/shape/1:output:0#reshape_87/Reshape/shape/2:output:0#reshape_87/Reshape/shape/3:output:0#reshape_87/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_87/Reshape/shape�
reshape_87/ReshapeReshapedense_43/Softplus:activations:0!reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_87/Reshape�
tf.reshape_708/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_708/Reshape/shape�
tf.reshape_708/ReshapeReshapereshape_87/Reshape:output:0%tf.reshape_708/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_708/Reshape�
tf.tile_354/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_354/Tile/multiples�
tf.tile_354/TileTiletf.reshape_708/Reshape:output:0#tf.tile_354/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_354/Tile�
tf.reshape_709/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_709/Reshape/shape�
tf.reshape_709/ReshapeReshapetf.tile_354/Tile:output:0%tf.reshape_709/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_709/Reshapex
tf.concat_566/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_566/concat/axis�
tf.concat_566/concatConcatV2tf.reshape_709/Reshape:output:0!conv3d_229/Softplus:activations:0"tf.concat_566/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_566/concat�
 conv3d_230/Conv3D/ReadVariableOpReadVariableOp)conv3d_230_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_230/Conv3D/ReadVariableOp�
conv3d_230/Conv3DConv3Dtf.concat_566/concat:output:0(conv3d_230/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_230/Conv3D�
!conv3d_230/BiasAdd/ReadVariableOpReadVariableOp*conv3d_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_230/BiasAdd/ReadVariableOp�
conv3d_230/BiasAddBiasAddconv3d_230/Conv3D:output:0)conv3d_230/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_230/BiasAdd�
conv3d_230/SoftplusSoftplusconv3d_230/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_230/Softplus�
tf.reshape_710/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_710/Reshape/shape�
tf.reshape_710/ReshapeReshape!conv3d_230/Softplus:activations:0%tf.reshape_710/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_710/Reshape�
tf.tile_355/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_355/Tile/multiples�
tf.tile_355/TileTiletf.reshape_710/Reshape:output:0#tf.tile_355/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_355/Tile�
tf.reshape_711/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_711/Reshape/shape�
tf.reshape_711/ReshapeReshapetf.tile_355/Tile:output:0%tf.reshape_711/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_711/Reshapex
tf.concat_567/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_567/concat/axis�
tf.concat_567/concatConcatV2tf.reshape_711/Reshape:output:0!conv3d_228/Softplus:activations:0"tf.concat_567/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_567/concat�
 conv3d_231/Conv3D/ReadVariableOpReadVariableOp)conv3d_231_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_231/Conv3D/ReadVariableOp�
conv3d_231/Conv3DConv3Dtf.concat_567/concat:output:0(conv3d_231/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_231/Conv3D�
!conv3d_231/BiasAdd/ReadVariableOpReadVariableOp*conv3d_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_231/BiasAdd/ReadVariableOp�
conv3d_231/BiasAddBiasAddconv3d_231/Conv3D:output:0)conv3d_231/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_231/BiasAdd�
conv3d_231/SoftplusSoftplusconv3d_231/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_231/Softplus�
tf.reshape_712/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_712/Reshape/shape�
tf.reshape_712/ReshapeReshape!conv3d_231/Softplus:activations:0%tf.reshape_712/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_712/Reshape�
tf.tile_356/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_356/Tile/multiples�
tf.tile_356/TileTiletf.reshape_712/Reshape:output:0#tf.tile_356/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_356/Tile�
tf.reshape_713/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_713/Reshape/shape�
tf.reshape_713/ReshapeReshapetf.tile_356/Tile:output:0%tf.reshape_713/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_713/Reshapex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2tf.reshape_713/Reshape:output:0!conv3d_227/Softplus:activations:0"tf.concat_568/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_568/concat�
 conv3d_232/Conv3D/ReadVariableOpReadVariableOp)conv3d_232_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_232/Conv3D/ReadVariableOp�
conv3d_232/Conv3DConv3Dtf.concat_568/concat:output:0(conv3d_232/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_232/Conv3D�
!conv3d_232/BiasAdd/ReadVariableOpReadVariableOp*conv3d_232_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_232/BiasAdd/ReadVariableOp�
conv3d_232/BiasAddBiasAddconv3d_232/Conv3D:output:0)conv3d_232/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_232/BiasAdd�
conv3d_232/SoftplusSoftplusconv3d_232/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_232/Softplus�
 conv3d_233/Conv3D/ReadVariableOpReadVariableOp)conv3d_233_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_233/Conv3D/ReadVariableOp�
conv3d_233/Conv3DConv3D!conv3d_232/Softplus:activations:0(conv3d_233/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_233/Conv3D�
!conv3d_233/BiasAdd/ReadVariableOpReadVariableOp*conv3d_233_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_233/BiasAdd/ReadVariableOp�
conv3d_233/BiasAddBiasAddconv3d_233/Conv3D:output:0)conv3d_233/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_233/BiasAdd�
IdentityIdentityconv3d_233/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_227/BiasAdd/ReadVariableOp!^conv3d_227/Conv3D/ReadVariableOp"^conv3d_228/BiasAdd/ReadVariableOp!^conv3d_228/Conv3D/ReadVariableOp"^conv3d_229/BiasAdd/ReadVariableOp!^conv3d_229/Conv3D/ReadVariableOp"^conv3d_230/BiasAdd/ReadVariableOp!^conv3d_230/Conv3D/ReadVariableOp"^conv3d_231/BiasAdd/ReadVariableOp!^conv3d_231/Conv3D/ReadVariableOp"^conv3d_232/BiasAdd/ReadVariableOp!^conv3d_232/Conv3D/ReadVariableOp"^conv3d_233/BiasAdd/ReadVariableOp!^conv3d_233/Conv3D/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_227/BiasAdd/ReadVariableOp!conv3d_227/BiasAdd/ReadVariableOp2D
 conv3d_227/Conv3D/ReadVariableOp conv3d_227/Conv3D/ReadVariableOp2F
!conv3d_228/BiasAdd/ReadVariableOp!conv3d_228/BiasAdd/ReadVariableOp2D
 conv3d_228/Conv3D/ReadVariableOp conv3d_228/Conv3D/ReadVariableOp2F
!conv3d_229/BiasAdd/ReadVariableOp!conv3d_229/BiasAdd/ReadVariableOp2D
 conv3d_229/Conv3D/ReadVariableOp conv3d_229/Conv3D/ReadVariableOp2F
!conv3d_230/BiasAdd/ReadVariableOp!conv3d_230/BiasAdd/ReadVariableOp2D
 conv3d_230/Conv3D/ReadVariableOp conv3d_230/Conv3D/ReadVariableOp2F
!conv3d_231/BiasAdd/ReadVariableOp!conv3d_231/BiasAdd/ReadVariableOp2D
 conv3d_231/Conv3D/ReadVariableOp conv3d_231/Conv3D/ReadVariableOp2F
!conv3d_232/BiasAdd/ReadVariableOp!conv3d_232/BiasAdd/ReadVariableOp2D
 conv3d_232/Conv3D/ReadVariableOp conv3d_232/Conv3D/ReadVariableOp2F
!conv3d_233/BiasAdd/ReadVariableOp!conv3d_233/BiasAdd/ReadVariableOp2D
 conv3d_233/Conv3D/ReadVariableOp conv3d_233/Conv3D/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�	
q
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_13057664

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
�
+__inference_model_43_layer_call_fn_13058480

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_43_layer_call_and_return_conditional_losses_130578932
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

n
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13058843

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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13058948

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

conv3d_233<
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
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
�
%	variables
&regularization_losses
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
-	variables
.regularization_losses
/trainable_variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1	variables
2regularization_losses
3trainable_variables
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

5kernel
6bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
;	variables
<regularization_losses
=trainable_variables
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Mkernel
Nbias
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
S	variables
Tregularization_losses
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
]	variables
^regularization_losses
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
g	variables
hregularization_losses
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
q	variables
rregularization_losses
strainable_variables
t	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

ukernel
vbias
w	variables
xregularization_losses
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
{non_trainable_variables
|metrics
}layer_regularization_losses
~layer_metrics
regularization_losses

layers
 	variables
!trainable_variables
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
�non_trainable_variables
%	variables
�metrics
 �layer_regularization_losses
�layer_metrics
&regularization_losses
�layers
'trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_227/kernel
: 2conv3d_227/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
�non_trainable_variables
-	variables
�metrics
 �layer_regularization_losses
�layer_metrics
.regularization_losses
�layers
/trainable_variables
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
1	variables
�metrics
 �layer_regularization_losses
�layer_metrics
2regularization_losses
�layers
3trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_228/kernel
: 2conv3d_228/bias
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
�
�non_trainable_variables
7	variables
�metrics
 �layer_regularization_losses
�layer_metrics
8regularization_losses
�layers
9trainable_variables
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
;	variables
�metrics
 �layer_regularization_losses
�layer_metrics
<regularization_losses
�layers
=trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_229/kernel
: 2conv3d_229/bias
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
�
�non_trainable_variables
A	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Bregularization_losses
�layers
Ctrainable_variables
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
E	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Fregularization_losses
�layers
Gtrainable_variables
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
I	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Jregularization_losses
�layers
Ktrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_43/kernel
:@ 2dense_43/bias
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
�
�non_trainable_variables
O	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Pregularization_losses
�layers
Qtrainable_variables
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
S	variables
�metrics
 �layer_regularization_losses
�layer_metrics
Tregularization_losses
�layers
Utrainable_variables
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
1:/ 2conv3d_230/kernel
: 2conv3d_230/bias
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
�
�non_trainable_variables
]	variables
�metrics
 �layer_regularization_losses
�layer_metrics
^regularization_losses
�layers
_trainable_variables
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
1:/ 2conv3d_231/kernel
: 2conv3d_231/bias
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
�
�non_trainable_variables
g	variables
�metrics
 �layer_regularization_losses
�layer_metrics
hregularization_losses
�layers
itrainable_variables
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
1:/ 2conv3d_232/kernel
: 2conv3d_232/bias
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
�
�non_trainable_variables
q	variables
�metrics
 �layer_regularization_losses
�layer_metrics
rregularization_losses
�layers
strainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_233/kernel
: 2conv3d_233/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
�
�non_trainable_variables
w	variables
�metrics
 �layer_regularization_losses
�layer_metrics
xregularization_losses
�layers
ytrainable_variables
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
�2�
+__inference_model_43_layer_call_fn_13057928
+__inference_model_43_layer_call_fn_13058480
+__inference_model_43_layer_call_fn_13058517
+__inference_model_43_layer_call_fn_13058236�
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
#__inference__wrapped_model_13057551input"�
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
F__inference_model_43_layer_call_and_return_conditional_losses_13058652
F__inference_model_43_layer_call_and_return_conditional_losses_13058787
F__inference_model_43_layer_call_and_return_conditional_losses_13058320
F__inference_model_43_layer_call_and_return_conditional_losses_13058404�
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
6__inference_range_conversion_43_layer_call_fn_13058792�
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
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_13058804�
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
-__inference_conv3d_227_layer_call_fn_13058813�
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_13058824�
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
7__inference_average_pooling3d_92_layer_call_fn_13058829
7__inference_average_pooling3d_92_layer_call_fn_13058834�
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13058843
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13058852�
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
-__inference_conv3d_228_layer_call_fn_13058861�
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_13058872�
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
7__inference_average_pooling3d_93_layer_call_fn_13058877
7__inference_average_pooling3d_93_layer_call_fn_13058882�
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13058891
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13058900�
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
-__inference_conv3d_229_layer_call_fn_13058909�
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_13058920�
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
7__inference_average_pooling3d_94_layer_call_fn_13058925
7__inference_average_pooling3d_94_layer_call_fn_13058930�
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13058939
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13058948�
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
-__inference_reshape_86_layer_call_fn_13058953�
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
H__inference_reshape_86_layer_call_and_return_conditional_losses_13058965�
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
+__inference_dense_43_layer_call_fn_13058974�
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
F__inference_dense_43_layer_call_and_return_conditional_losses_13058985�
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
-__inference_reshape_87_layer_call_fn_13058990�
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
H__inference_reshape_87_layer_call_and_return_conditional_losses_13059005�
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
-__inference_conv3d_230_layer_call_fn_13059014�
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_13059025�
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
-__inference_conv3d_231_layer_call_fn_13059034�
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_13059045�
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
-__inference_conv3d_232_layer_call_fn_13059054�
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_13059065�
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
-__inference_conv3d_233_layer_call_fn_13059074�
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
H__inference_conv3d_233_layer_call_and_return_conditional_losses_13059084�
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
&__inference_signature_wrapper_13058443input"�
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
#__inference__wrapped_model_13057551�+,56?@MN[\efopuv:�7
0�-
+�(
input���������  
� "C�@
>

conv3d_2330�-

conv3d_233���������  �
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13058843�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_13058852p;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_92_layer_call_fn_13058829�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_92_layer_call_fn_13058834c;�8
1�.
,�)
inputs���������  
� "$�!����������
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13058891�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_13058900p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_93_layer_call_fn_13058877�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_93_layer_call_fn_13058882c;�8
1�.
,�)
inputs���������
� "$�!����������
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13058939�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_13058948p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_94_layer_call_fn_13058925�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_94_layer_call_fn_13058930c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_227_layer_call_and_return_conditional_losses_13058824t+,;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
-__inference_conv3d_227_layer_call_fn_13058813g+,;�8
1�.
,�)
inputs���������  
� "$�!���������  �
H__inference_conv3d_228_layer_call_and_return_conditional_losses_13058872t56;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_228_layer_call_fn_13058861g56;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_229_layer_call_and_return_conditional_losses_13058920t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_229_layer_call_fn_13058909g?@;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_230_layer_call_and_return_conditional_losses_13059025t[\;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_230_layer_call_fn_13059014g[\;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_231_layer_call_and_return_conditional_losses_13059045tef;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_231_layer_call_fn_13059034gef;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_232_layer_call_and_return_conditional_losses_13059065top;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
-__inference_conv3d_232_layer_call_fn_13059054gop;�8
1�.
,�)
inputs���������  
� "$�!���������  �
H__inference_conv3d_233_layer_call_and_return_conditional_losses_13059084tuv;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
-__inference_conv3d_233_layer_call_fn_13059074guv;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_dense_43_layer_call_and_return_conditional_losses_13058985\MN/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_43_layer_call_fn_13058974OMN/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_43_layer_call_and_return_conditional_losses_13058320�+,56?@MN[\efopuvB�?
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
F__inference_model_43_layer_call_and_return_conditional_losses_13058404�+,56?@MN[\efopuvB�?
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
F__inference_model_43_layer_call_and_return_conditional_losses_13058652�+,56?@MN[\efopuvC�@
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
F__inference_model_43_layer_call_and_return_conditional_losses_13058787�+,56?@MN[\efopuvC�@
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
+__inference_model_43_layer_call_fn_13057928|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p 

 
� "$�!���������  �
+__inference_model_43_layer_call_fn_13058236|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p

 
� "$�!���������  �
+__inference_model_43_layer_call_fn_13058480}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p 

 
� "$�!���������  �
+__inference_model_43_layer_call_fn_13058517}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p

 
� "$�!���������  �
Q__inference_range_conversion_43_layer_call_and_return_conditional_losses_13058804t?�<
5�2
0�-

parameters���������  
� "1�.
'�$
0���������  
� �
6__inference_range_conversion_43_layer_call_fn_13058792g?�<
5�2
0�-

parameters���������  
� "$�!���������  �
H__inference_reshape_86_layer_call_and_return_conditional_losses_13058965d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
-__inference_reshape_86_layer_call_fn_13058953W;�8
1�.
,�)
inputs���������
� "����������@�
H__inference_reshape_87_layer_call_and_return_conditional_losses_13059005d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
-__inference_reshape_87_layer_call_fn_13058990W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_13058443�+,56?@MN[\efopuvC�@
� 
9�6
4
input+�(
input���������  "C�@
>

conv3d_2330�-

conv3d_233���������  