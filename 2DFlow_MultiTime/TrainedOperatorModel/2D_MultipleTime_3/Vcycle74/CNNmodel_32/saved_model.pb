Єџ
Ћв
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
┴
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
о
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
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.6.22v2.6.1-9-gc2363d6d0258эЅ
і
conv3d_545/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_545/kernel
Ѓ
%conv3d_545/kernel/Read/ReadVariableOpReadVariableOpconv3d_545/kernel**
_output_shapes
:*
dtype0
v
conv3d_545/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_545/bias
o
#conv3d_545/bias/Read/ReadVariableOpReadVariableOpconv3d_545/bias*
_output_shapes
:*
dtype0
і
conv3d_546/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_546/kernel
Ѓ
%conv3d_546/kernel/Read/ReadVariableOpReadVariableOpconv3d_546/kernel**
_output_shapes
:*
dtype0
v
conv3d_546/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_546/bias
o
#conv3d_546/bias/Read/ReadVariableOpReadVariableOpconv3d_546/bias*
_output_shapes
:*
dtype0
і
conv3d_547/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_547/kernel
Ѓ
%conv3d_547/kernel/Read/ReadVariableOpReadVariableOpconv3d_547/kernel**
_output_shapes
:*
dtype0
v
conv3d_547/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_547/bias
o
#conv3d_547/bias/Read/ReadVariableOpReadVariableOpconv3d_547/bias*
_output_shapes
:*
dtype0
|
dense_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_105/kernel
u
$dense_105/kernel/Read/ReadVariableOpReadVariableOpdense_105/kernel*
_output_shapes

:@@*
dtype0
t
dense_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_105/bias
m
"dense_105/bias/Read/ReadVariableOpReadVariableOpdense_105/bias*
_output_shapes
:@*
dtype0
і
conv3d_548/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_548/kernel
Ѓ
%conv3d_548/kernel/Read/ReadVariableOpReadVariableOpconv3d_548/kernel**
_output_shapes
:*
dtype0
v
conv3d_548/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_548/bias
o
#conv3d_548/bias/Read/ReadVariableOpReadVariableOpconv3d_548/bias*
_output_shapes
:*
dtype0
і
conv3d_549/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_549/kernel
Ѓ
%conv3d_549/kernel/Read/ReadVariableOpReadVariableOpconv3d_549/kernel**
_output_shapes
:*
dtype0
v
conv3d_549/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_549/bias
o
#conv3d_549/bias/Read/ReadVariableOpReadVariableOpconv3d_549/bias*
_output_shapes
:*
dtype0
і
conv3d_550/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_550/kernel
Ѓ
%conv3d_550/kernel/Read/ReadVariableOpReadVariableOpconv3d_550/kernel**
_output_shapes
:*
dtype0
v
conv3d_550/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_550/bias
o
#conv3d_550/bias/Read/ReadVariableOpReadVariableOpconv3d_550/bias*
_output_shapes
:*
dtype0
і
conv3d_551/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_551/kernel
Ѓ
%conv3d_551/kernel/Read/ReadVariableOpReadVariableOpconv3d_551/kernel**
_output_shapes
:*
dtype0
v
conv3d_551/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_551/bias
o
#conv3d_551/bias/Read/ReadVariableOpReadVariableOpconv3d_551/bias*
_output_shapes
:*
dtype0

NoOpNoOp
ў;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*М:
value╔:Bк: B┐:
╠
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
Г
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
▓
ђnon_trainable_variables
%	variables
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
&regularization_losses
ёlayers
'trainable_variables
 
 
][
VARIABLE_VALUEconv3d_545/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_545/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
▓
Ёnon_trainable_variables
-	variables
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
.regularization_losses
Ѕlayers
/trainable_variables
 
 
 
▓
іnon_trainable_variables
1	variables
Іmetrics
 їlayer_regularization_losses
Їlayer_metrics
2regularization_losses
јlayers
3trainable_variables
][
VARIABLE_VALUEconv3d_546/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_546/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61
 

50
61
▓
Јnon_trainable_variables
7	variables
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
8regularization_losses
Њlayers
9trainable_variables
 
 
 
▓
ћnon_trainable_variables
;	variables
Ћmetrics
 ќlayer_regularization_losses
Ќlayer_metrics
<regularization_losses
ўlayers
=trainable_variables
][
VARIABLE_VALUEconv3d_547/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_547/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
▓
Ўnon_trainable_variables
A	variables
џmetrics
 Џlayer_regularization_losses
юlayer_metrics
Bregularization_losses
Юlayers
Ctrainable_variables
 
 
 
▓
ъnon_trainable_variables
E	variables
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
Fregularization_losses
бlayers
Gtrainable_variables
 
 
 
▓
Бnon_trainable_variables
I	variables
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
Jregularization_losses
Дlayers
Ktrainable_variables
\Z
VARIABLE_VALUEdense_105/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_105/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

M0
N1
 

M0
N1
▓
еnon_trainable_variables
O	variables
Еmetrics
 фlayer_regularization_losses
Фlayer_metrics
Pregularization_losses
гlayers
Qtrainable_variables
 
 
 
▓
Гnon_trainable_variables
S	variables
«metrics
 »layer_regularization_losses
░layer_metrics
Tregularization_losses
▒layers
Utrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_548/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_548/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1
 

[0
\1
▓
▓non_trainable_variables
]	variables
│metrics
 ┤layer_regularization_losses
хlayer_metrics
^regularization_losses
Хlayers
_trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_549/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_549/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1
 

e0
f1
▓
иnon_trainable_variables
g	variables
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
hregularization_losses
╗layers
itrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_550/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_550/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1
 

o0
p1
▓
╝non_trainable_variables
q	variables
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
rregularization_losses
└layers
strainable_variables
][
VARIABLE_VALUEconv3d_551/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_551/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 

u0
v1
▓
┴non_trainable_variables
w	variables
┬metrics
 ├layer_regularization_losses
─layer_metrics
xregularization_losses
┼layers
ytrainable_variables
 
 
 
 
Т
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
љ
serving_default_inputPlaceholder*3
_output_shapes!
:           *
dtype0*(
shape:           
Є
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_545/kernelconv3d_545/biasconv3d_546/kernelconv3d_546/biasconv3d_547/kernelconv3d_547/biasdense_105/kerneldense_105/biasconv3d_548/kernelconv3d_548/biasconv3d_549/kernelconv3d_549/biasconv3d_550/kernelconv3d_550/biasconv3d_551/kernelconv3d_551/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ */
f*R(
&__inference_signature_wrapper_27536671
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ќ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_545/kernel/Read/ReadVariableOp#conv3d_545/bias/Read/ReadVariableOp%conv3d_546/kernel/Read/ReadVariableOp#conv3d_546/bias/Read/ReadVariableOp%conv3d_547/kernel/Read/ReadVariableOp#conv3d_547/bias/Read/ReadVariableOp$dense_105/kernel/Read/ReadVariableOp"dense_105/bias/Read/ReadVariableOp%conv3d_548/kernel/Read/ReadVariableOp#conv3d_548/bias/Read/ReadVariableOp%conv3d_549/kernel/Read/ReadVariableOp#conv3d_549/bias/Read/ReadVariableOp%conv3d_550/kernel/Read/ReadVariableOp#conv3d_550/bias/Read/ReadVariableOp%conv3d_551/kernel/Read/ReadVariableOp#conv3d_551/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8ѓ **
f%R#
!__inference__traced_save_27537383
Л
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_545/kernelconv3d_545/biasconv3d_546/kernelconv3d_546/biasconv3d_547/kernelconv3d_547/biasdense_105/kerneldense_105/biasconv3d_548/kernelconv3d_548/biasconv3d_549/kernelconv3d_549/biasconv3d_550/kernelconv3d_550/biasconv3d_551/kernelconv3d_551/bias*
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
GPU2 *0,1,2,3J 8ѓ *-
f(R&
$__inference__traced_restore_27537441фю
їy
«
G__inference_model_105_layer_call_and_return_conditional_losses_27536632	
input1
conv3d_545_27536562:!
conv3d_545_27536564:1
conv3d_546_27536568:!
conv3d_546_27536570:1
conv3d_547_27536574:!
conv3d_547_27536576:$
dense_105_27536581:@@ 
dense_105_27536583:@1
conv3d_548_27536595:!
conv3d_548_27536597:1
conv3d_549_27536608:!
conv3d_549_27536610:1
conv3d_550_27536621:!
conv3d_550_27536623:1
conv3d_551_27536626:!
conv3d_551_27536628:
identityѕб"conv3d_545/StatefulPartitionedCallб"conv3d_546/StatefulPartitionedCallб"conv3d_547/StatefulPartitionedCallб"conv3d_548/StatefulPartitionedCallб"conv3d_549/StatefulPartitionedCallб"conv3d_550/StatefulPartitionedCallб"conv3d_551/StatefulPartitionedCallб!dense_105/StatefulPartitionedCallх
0tf.__operators__.getitem_546/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_546/strided_slice/stack╣
2tf.__operators__.getitem_546/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_546/strided_slice/stack_1╣
2tf.__operators__.getitem_546/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_546/strided_slice/stack_2Љ
*tf.__operators__.getitem_546/strided_sliceStridedSliceinput9tf.__operators__.getitem_546/strided_slice/stack:output:0;tf.__operators__.getitem_546/strided_slice/stack_1:output:0;tf.__operators__.getitem_546/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_546/strided_sliceЙ
$range_conversion_105/PartitionedCallPartitionedCall3tf.__operators__.getitem_546/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *[
fVRT
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_275358922&
$range_conversion_105/PartitionedCallх
0tf.__operators__.getitem_547/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_547/strided_slice/stack╣
2tf.__operators__.getitem_547/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_547/strided_slice/stack_1╣
2tf.__operators__.getitem_547/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_547/strided_slice/stack_2Љ
*tf.__operators__.getitem_547/strided_sliceStridedSliceinput9tf.__operators__.getitem_547/strided_slice/stack:output:0;tf.__operators__.getitem_547/strided_slice/stack_1:output:0;tf.__operators__.getitem_547/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_547/strided_slicex
tf.concat_755/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_755/concat/axisЄ
tf.concat_755/concatConcatV2-range_conversion_105/PartitionedCall:output:03tf.__operators__.getitem_547/strided_slice:output:0"tf.concat_755/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_755/concatм
"conv3d_545/StatefulPartitionedCallStatefulPartitionedCalltf.concat_755/concat:output:0conv3d_545_27536562conv3d_545_27536564*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_545_layer_call_and_return_conditional_losses_275359112$
"conv3d_545/StatefulPartitionedCall╣
%average_pooling3d_220/PartitionedCallPartitionedCall+conv3d_545/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_275359252'
%average_pooling3d_220/PartitionedCallс
"conv3d_546/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_220/PartitionedCall:output:0conv3d_546_27536568conv3d_546_27536570*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_546_layer_call_and_return_conditional_losses_275359382$
"conv3d_546/StatefulPartitionedCall╣
%average_pooling3d_221/PartitionedCallPartitionedCall+conv3d_546/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_275359522'
%average_pooling3d_221/PartitionedCallс
"conv3d_547/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_221/PartitionedCall:output:0conv3d_547_27536574conv3d_547_27536576*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_547_layer_call_and_return_conditional_losses_275359652$
"conv3d_547/StatefulPartitionedCall╣
%average_pooling3d_222/PartitionedCallPartitionedCall+conv3d_547/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_275359792'
%average_pooling3d_222/PartitionedCallњ
reshape_210/PartitionedCallPartitionedCall.average_pooling3d_222/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_210_layer_call_and_return_conditional_losses_275359932
reshape_210/PartitionedCall╚
!dense_105/StatefulPartitionedCallStatefulPartitionedCall$reshape_210/PartitionedCall:output:0dense_105_27536581dense_105_27536583*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_dense_105_layer_call_and_return_conditional_losses_275360062#
!dense_105/StatefulPartitionedCallџ
reshape_211/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_211_layer_call_and_return_conditional_losses_275360272
reshape_211/PartitionedCallЦ
tf.reshape_964/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_964/Reshape/shapeм
tf.reshape_964/ReshapeReshape$reshape_211/PartitionedCall:output:0%tf.reshape_964/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_964/ReshapeА
tf.tile_482/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_482/Tile/multiples╝
tf.tile_482/TileTiletf.reshape_964/Reshape:output:0#tf.tile_482/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_482/TileЎ
tf.reshape_965/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_965/Reshape/shape╗
tf.reshape_965/ReshapeReshapetf.tile_482/Tile:output:0%tf.reshape_965/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_965/Reshapex
tf.concat_756/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_756/concat/axisы
tf.concat_756/concatConcatV2tf.reshape_965/Reshape:output:0+conv3d_547/StatefulPartitionedCall:output:0"tf.concat_756/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_756/concatм
"conv3d_548/StatefulPartitionedCallStatefulPartitionedCalltf.concat_756/concat:output:0conv3d_548_27536595conv3d_548_27536597*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_548_layer_call_and_return_conditional_losses_275360482$
"conv3d_548/StatefulPartitionedCallЦ
tf.reshape_966/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_966/Reshape/shape┘
tf.reshape_966/ReshapeReshape+conv3d_548/StatefulPartitionedCall:output:0%tf.reshape_966/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_966/ReshapeА
tf.tile_483/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_483/Tile/multiples╝
tf.tile_483/TileTiletf.reshape_966/Reshape:output:0#tf.tile_483/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_483/TileЎ
tf.reshape_967/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_967/Reshape/shape╗
tf.reshape_967/ReshapeReshapetf.tile_483/Tile:output:0%tf.reshape_967/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_967/Reshapex
tf.concat_757/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_757/concat/axisы
tf.concat_757/concatConcatV2tf.reshape_967/Reshape:output:0+conv3d_546/StatefulPartitionedCall:output:0"tf.concat_757/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_757/concatм
"conv3d_549/StatefulPartitionedCallStatefulPartitionedCalltf.concat_757/concat:output:0conv3d_549_27536608conv3d_549_27536610*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_549_layer_call_and_return_conditional_losses_275360732$
"conv3d_549/StatefulPartitionedCallЦ
tf.reshape_968/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_968/Reshape/shape┘
tf.reshape_968/ReshapeReshape+conv3d_549/StatefulPartitionedCall:output:0%tf.reshape_968/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_968/ReshapeА
tf.tile_484/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_484/Tile/multiples╝
tf.tile_484/TileTiletf.reshape_968/Reshape:output:0#tf.tile_484/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_484/TileЎ
tf.reshape_969/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_969/Reshape/shape╗
tf.reshape_969/ReshapeReshapetf.tile_484/Tile:output:0%tf.reshape_969/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_969/Reshapex
tf.concat_758/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_758/concat/axisы
tf.concat_758/concatConcatV2tf.reshape_969/Reshape:output:0+conv3d_545/StatefulPartitionedCall:output:0"tf.concat_758/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_758/concatм
"conv3d_550/StatefulPartitionedCallStatefulPartitionedCalltf.concat_758/concat:output:0conv3d_550_27536621conv3d_550_27536623*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_550_layer_call_and_return_conditional_losses_275360982$
"conv3d_550/StatefulPartitionedCallЯ
"conv3d_551/StatefulPartitionedCallStatefulPartitionedCall+conv3d_550/StatefulPartitionedCall:output:0conv3d_551_27536626conv3d_551_27536628*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_551_layer_call_and_return_conditional_losses_275361142$
"conv3d_551/StatefulPartitionedCallњ
IdentityIdentity+conv3d_551/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityш
NoOpNoOp#^conv3d_545/StatefulPartitionedCall#^conv3d_546/StatefulPartitionedCall#^conv3d_547/StatefulPartitionedCall#^conv3d_548/StatefulPartitionedCall#^conv3d_549/StatefulPartitionedCall#^conv3d_550/StatefulPartitionedCall#^conv3d_551/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_545/StatefulPartitionedCall"conv3d_545/StatefulPartitionedCall2H
"conv3d_546/StatefulPartitionedCall"conv3d_546/StatefulPartitionedCall2H
"conv3d_547/StatefulPartitionedCall"conv3d_547/StatefulPartitionedCall2H
"conv3d_548/StatefulPartitionedCall"conv3d_548/StatefulPartitionedCall2H
"conv3d_549/StatefulPartitionedCall"conv3d_549/StatefulPartitionedCall2H
"conv3d_550/StatefulPartitionedCall"conv3d_550/StatefulPartitionedCall2H
"conv3d_551/StatefulPartitionedCall"conv3d_551/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
┴
д
-__inference_conv3d_545_layer_call_fn_27537041

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_545_layer_call_and_return_conditional_losses_275359112
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
о
Ё
H__inference_conv3d_551_layer_call_and_return_conditional_losses_27537312

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
т

o
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27535852

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permд
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transposeм
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1Њ
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
Ћ
T
8__inference_average_pooling3d_222_layer_call_fn_27537158

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_275359792
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ў-
Ч
!__inference__traced_save_27537383
file_prefix0
,savev2_conv3d_545_kernel_read_readvariableop.
*savev2_conv3d_545_bias_read_readvariableop0
,savev2_conv3d_546_kernel_read_readvariableop.
*savev2_conv3d_546_bias_read_readvariableop0
,savev2_conv3d_547_kernel_read_readvariableop.
*savev2_conv3d_547_bias_read_readvariableop/
+savev2_dense_105_kernel_read_readvariableop-
)savev2_dense_105_bias_read_readvariableop0
,savev2_conv3d_548_kernel_read_readvariableop.
*savev2_conv3d_548_bias_read_readvariableop0
,savev2_conv3d_549_kernel_read_readvariableop.
*savev2_conv3d_549_bias_read_readvariableop0
,savev2_conv3d_550_kernel_read_readvariableop.
*savev2_conv3d_550_bias_read_readvariableop0
,savev2_conv3d_551_kernel_read_readvariableop.
*savev2_conv3d_551_bias_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЉ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueЎBќB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesф
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesў
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_545_kernel_read_readvariableop*savev2_conv3d_545_bias_read_readvariableop,savev2_conv3d_546_kernel_read_readvariableop*savev2_conv3d_546_bias_read_readvariableop,savev2_conv3d_547_kernel_read_readvariableop*savev2_conv3d_547_bias_read_readvariableop+savev2_dense_105_kernel_read_readvariableop)savev2_dense_105_bias_read_readvariableop,savev2_conv3d_548_kernel_read_readvariableop*savev2_conv3d_548_bias_read_readvariableop,savev2_conv3d_549_kernel_read_readvariableop*savev2_conv3d_549_bias_read_readvariableop,savev2_conv3d_550_kernel_read_readvariableop*savev2_conv3d_550_bias_read_readvariableop,savev2_conv3d_551_kernel_read_readvariableop*savev2_conv3d_551_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
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

identity_1Identity_1:output:0*ь
_input_shapes█
п: :::::::@@:@::::::::: 2(
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
ї	
o
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27537176

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permѓ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         2
	transpose«
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permћ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ћ
T
8__inference_average_pooling3d_220_layer_call_fn_27537062

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_275359252
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
д
T
8__inference_average_pooling3d_222_layer_call_fn_27537153

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_275358522
PartitionedCallю
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
ю
e
I__inference_reshape_211_layer_call_and_return_conditional_losses_27536027

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
strided_slice/stack_2Р
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
Reshape/shape/4н
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_546_layer_call_and_return_conditional_losses_27537100

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
їy
«
G__inference_model_105_layer_call_and_return_conditional_losses_27536548	
input1
conv3d_545_27536478:!
conv3d_545_27536480:1
conv3d_546_27536484:!
conv3d_546_27536486:1
conv3d_547_27536490:!
conv3d_547_27536492:$
dense_105_27536497:@@ 
dense_105_27536499:@1
conv3d_548_27536511:!
conv3d_548_27536513:1
conv3d_549_27536524:!
conv3d_549_27536526:1
conv3d_550_27536537:!
conv3d_550_27536539:1
conv3d_551_27536542:!
conv3d_551_27536544:
identityѕб"conv3d_545/StatefulPartitionedCallб"conv3d_546/StatefulPartitionedCallб"conv3d_547/StatefulPartitionedCallб"conv3d_548/StatefulPartitionedCallб"conv3d_549/StatefulPartitionedCallб"conv3d_550/StatefulPartitionedCallб"conv3d_551/StatefulPartitionedCallб!dense_105/StatefulPartitionedCallх
0tf.__operators__.getitem_546/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_546/strided_slice/stack╣
2tf.__operators__.getitem_546/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_546/strided_slice/stack_1╣
2tf.__operators__.getitem_546/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_546/strided_slice/stack_2Љ
*tf.__operators__.getitem_546/strided_sliceStridedSliceinput9tf.__operators__.getitem_546/strided_slice/stack:output:0;tf.__operators__.getitem_546/strided_slice/stack_1:output:0;tf.__operators__.getitem_546/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_546/strided_sliceЙ
$range_conversion_105/PartitionedCallPartitionedCall3tf.__operators__.getitem_546/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *[
fVRT
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_275358922&
$range_conversion_105/PartitionedCallх
0tf.__operators__.getitem_547/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_547/strided_slice/stack╣
2tf.__operators__.getitem_547/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_547/strided_slice/stack_1╣
2tf.__operators__.getitem_547/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_547/strided_slice/stack_2Љ
*tf.__operators__.getitem_547/strided_sliceStridedSliceinput9tf.__operators__.getitem_547/strided_slice/stack:output:0;tf.__operators__.getitem_547/strided_slice/stack_1:output:0;tf.__operators__.getitem_547/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_547/strided_slicex
tf.concat_755/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_755/concat/axisЄ
tf.concat_755/concatConcatV2-range_conversion_105/PartitionedCall:output:03tf.__operators__.getitem_547/strided_slice:output:0"tf.concat_755/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_755/concatм
"conv3d_545/StatefulPartitionedCallStatefulPartitionedCalltf.concat_755/concat:output:0conv3d_545_27536478conv3d_545_27536480*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_545_layer_call_and_return_conditional_losses_275359112$
"conv3d_545/StatefulPartitionedCall╣
%average_pooling3d_220/PartitionedCallPartitionedCall+conv3d_545/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_275359252'
%average_pooling3d_220/PartitionedCallс
"conv3d_546/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_220/PartitionedCall:output:0conv3d_546_27536484conv3d_546_27536486*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_546_layer_call_and_return_conditional_losses_275359382$
"conv3d_546/StatefulPartitionedCall╣
%average_pooling3d_221/PartitionedCallPartitionedCall+conv3d_546/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_275359522'
%average_pooling3d_221/PartitionedCallс
"conv3d_547/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_221/PartitionedCall:output:0conv3d_547_27536490conv3d_547_27536492*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_547_layer_call_and_return_conditional_losses_275359652$
"conv3d_547/StatefulPartitionedCall╣
%average_pooling3d_222/PartitionedCallPartitionedCall+conv3d_547/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_275359792'
%average_pooling3d_222/PartitionedCallњ
reshape_210/PartitionedCallPartitionedCall.average_pooling3d_222/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_210_layer_call_and_return_conditional_losses_275359932
reshape_210/PartitionedCall╚
!dense_105/StatefulPartitionedCallStatefulPartitionedCall$reshape_210/PartitionedCall:output:0dense_105_27536497dense_105_27536499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_dense_105_layer_call_and_return_conditional_losses_275360062#
!dense_105/StatefulPartitionedCallџ
reshape_211/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_211_layer_call_and_return_conditional_losses_275360272
reshape_211/PartitionedCallЦ
tf.reshape_964/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_964/Reshape/shapeм
tf.reshape_964/ReshapeReshape$reshape_211/PartitionedCall:output:0%tf.reshape_964/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_964/ReshapeА
tf.tile_482/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_482/Tile/multiples╝
tf.tile_482/TileTiletf.reshape_964/Reshape:output:0#tf.tile_482/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_482/TileЎ
tf.reshape_965/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_965/Reshape/shape╗
tf.reshape_965/ReshapeReshapetf.tile_482/Tile:output:0%tf.reshape_965/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_965/Reshapex
tf.concat_756/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_756/concat/axisы
tf.concat_756/concatConcatV2tf.reshape_965/Reshape:output:0+conv3d_547/StatefulPartitionedCall:output:0"tf.concat_756/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_756/concatм
"conv3d_548/StatefulPartitionedCallStatefulPartitionedCalltf.concat_756/concat:output:0conv3d_548_27536511conv3d_548_27536513*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_548_layer_call_and_return_conditional_losses_275360482$
"conv3d_548/StatefulPartitionedCallЦ
tf.reshape_966/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_966/Reshape/shape┘
tf.reshape_966/ReshapeReshape+conv3d_548/StatefulPartitionedCall:output:0%tf.reshape_966/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_966/ReshapeА
tf.tile_483/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_483/Tile/multiples╝
tf.tile_483/TileTiletf.reshape_966/Reshape:output:0#tf.tile_483/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_483/TileЎ
tf.reshape_967/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_967/Reshape/shape╗
tf.reshape_967/ReshapeReshapetf.tile_483/Tile:output:0%tf.reshape_967/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_967/Reshapex
tf.concat_757/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_757/concat/axisы
tf.concat_757/concatConcatV2tf.reshape_967/Reshape:output:0+conv3d_546/StatefulPartitionedCall:output:0"tf.concat_757/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_757/concatм
"conv3d_549/StatefulPartitionedCallStatefulPartitionedCalltf.concat_757/concat:output:0conv3d_549_27536524conv3d_549_27536526*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_549_layer_call_and_return_conditional_losses_275360732$
"conv3d_549/StatefulPartitionedCallЦ
tf.reshape_968/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_968/Reshape/shape┘
tf.reshape_968/ReshapeReshape+conv3d_549/StatefulPartitionedCall:output:0%tf.reshape_968/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_968/ReshapeА
tf.tile_484/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_484/Tile/multiples╝
tf.tile_484/TileTiletf.reshape_968/Reshape:output:0#tf.tile_484/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_484/TileЎ
tf.reshape_969/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_969/Reshape/shape╗
tf.reshape_969/ReshapeReshapetf.tile_484/Tile:output:0%tf.reshape_969/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_969/Reshapex
tf.concat_758/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_758/concat/axisы
tf.concat_758/concatConcatV2tf.reshape_969/Reshape:output:0+conv3d_545/StatefulPartitionedCall:output:0"tf.concat_758/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_758/concatм
"conv3d_550/StatefulPartitionedCallStatefulPartitionedCalltf.concat_758/concat:output:0conv3d_550_27536537conv3d_550_27536539*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_550_layer_call_and_return_conditional_losses_275360982$
"conv3d_550/StatefulPartitionedCallЯ
"conv3d_551/StatefulPartitionedCallStatefulPartitionedCall+conv3d_550/StatefulPartitionedCall:output:0conv3d_551_27536542conv3d_551_27536544*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_551_layer_call_and_return_conditional_losses_275361142$
"conv3d_551/StatefulPartitionedCallњ
IdentityIdentity+conv3d_551/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityш
NoOpNoOp#^conv3d_545/StatefulPartitionedCall#^conv3d_546/StatefulPartitionedCall#^conv3d_547/StatefulPartitionedCall#^conv3d_548/StatefulPartitionedCall#^conv3d_549/StatefulPartitionedCall#^conv3d_550/StatefulPartitionedCall#^conv3d_551/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_545/StatefulPartitionedCall"conv3d_545/StatefulPartitionedCall2H
"conv3d_546/StatefulPartitionedCall"conv3d_546/StatefulPartitionedCall2H
"conv3d_547/StatefulPartitionedCall"conv3d_547/StatefulPartitionedCall2H
"conv3d_548/StatefulPartitionedCall"conv3d_548/StatefulPartitionedCall2H
"conv3d_549/StatefulPartitionedCall"conv3d_549/StatefulPartitionedCall2H
"conv3d_550/StatefulPartitionedCall"conv3d_550/StatefulPartitionedCall2H
"conv3d_551/StatefulPartitionedCall"conv3d_551/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
╬╚
д
G__inference_model_105_layer_call_and_return_conditional_losses_27536880

inputsG
)conv3d_545_conv3d_readvariableop_resource:8
*conv3d_545_biasadd_readvariableop_resource:G
)conv3d_546_conv3d_readvariableop_resource:8
*conv3d_546_biasadd_readvariableop_resource:G
)conv3d_547_conv3d_readvariableop_resource:8
*conv3d_547_biasadd_readvariableop_resource::
(dense_105_matmul_readvariableop_resource:@@7
)dense_105_biasadd_readvariableop_resource:@G
)conv3d_548_conv3d_readvariableop_resource:8
*conv3d_548_biasadd_readvariableop_resource:G
)conv3d_549_conv3d_readvariableop_resource:8
*conv3d_549_biasadd_readvariableop_resource:G
)conv3d_550_conv3d_readvariableop_resource:8
*conv3d_550_biasadd_readvariableop_resource:G
)conv3d_551_conv3d_readvariableop_resource:8
*conv3d_551_biasadd_readvariableop_resource:
identityѕб!conv3d_545/BiasAdd/ReadVariableOpб conv3d_545/Conv3D/ReadVariableOpб!conv3d_546/BiasAdd/ReadVariableOpб conv3d_546/Conv3D/ReadVariableOpб!conv3d_547/BiasAdd/ReadVariableOpб conv3d_547/Conv3D/ReadVariableOpб!conv3d_548/BiasAdd/ReadVariableOpб conv3d_548/Conv3D/ReadVariableOpб!conv3d_549/BiasAdd/ReadVariableOpб conv3d_549/Conv3D/ReadVariableOpб!conv3d_550/BiasAdd/ReadVariableOpб conv3d_550/Conv3D/ReadVariableOpб!conv3d_551/BiasAdd/ReadVariableOpб conv3d_551/Conv3D/ReadVariableOpб dense_105/BiasAdd/ReadVariableOpбdense_105/MatMul/ReadVariableOpх
0tf.__operators__.getitem_546/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_546/strided_slice/stack╣
2tf.__operators__.getitem_546/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_546/strided_slice/stack_1╣
2tf.__operators__.getitem_546/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_546/strided_slice/stack_2њ
*tf.__operators__.getitem_546/strided_sliceStridedSliceinputs9tf.__operators__.getitem_546/strided_slice/stack:output:0;tf.__operators__.getitem_546/strided_slice/stack_1:output:0;tf.__operators__.getitem_546/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_546/strided_slice}
range_conversion_105/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_105/sub/yМ
range_conversion_105/subSub3tf.__operators__.getitem_546/strided_slice:output:0#range_conversion_105/sub/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/subЁ
range_conversion_105/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_105/truediv/y╠
range_conversion_105/truedivRealDivrange_conversion_105/sub:z:0'range_conversion_105/truediv/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/truediv}
range_conversion_105/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_105/mul/y└
range_conversion_105/mulMul range_conversion_105/truediv:z:0#range_conversion_105/mul/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/mul}
range_conversion_105/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2
range_conversion_105/add/yЙ
range_conversion_105/addAddV2range_conversion_105/mul:z:0#range_conversion_105/add/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/addх
0tf.__operators__.getitem_547/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_547/strided_slice/stack╣
2tf.__operators__.getitem_547/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_547/strided_slice/stack_1╣
2tf.__operators__.getitem_547/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_547/strided_slice/stack_2њ
*tf.__operators__.getitem_547/strided_sliceStridedSliceinputs9tf.__operators__.getitem_547/strided_slice/stack:output:0;tf.__operators__.getitem_547/strided_slice/stack_1:output:0;tf.__operators__.getitem_547/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_547/strided_slicex
tf.concat_755/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_755/concat/axisШ
tf.concat_755/concatConcatV2range_conversion_105/add:z:03tf.__operators__.getitem_547/strided_slice:output:0"tf.concat_755/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_755/concat║
 conv3d_545/Conv3D/ReadVariableOpReadVariableOp)conv3d_545_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_545/Conv3D/ReadVariableOpЭ
conv3d_545/Conv3DConv3Dtf.concat_755/concat:output:0(conv3d_545/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_545/Conv3DГ
!conv3d_545/BiasAdd/ReadVariableOpReadVariableOp*conv3d_545_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_545/BiasAdd/ReadVariableOp¤
conv3d_545/BiasAddBiasAddconv3d_545/Conv3D:output:0)conv3d_545/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_545/BiasAddЉ
conv3d_545/SoftplusSoftplusconv3d_545/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_545/SoftplusЕ
$average_pooling3d_220/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_220/transpose/perm▀
average_pooling3d_220/transpose	Transpose!conv3d_545/Softplus:activations:0-average_pooling3d_220/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_220/transpose­
average_pooling3d_220/AvgPool3D	AvgPool3D#average_pooling3d_220/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_220/AvgPool3DГ
&average_pooling3d_220/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_220/transpose_1/permВ
!average_pooling3d_220/transpose_1	Transpose(average_pooling3d_220/AvgPool3D:output:0/average_pooling3d_220/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_220/transpose_1║
 conv3d_546/Conv3D/ReadVariableOpReadVariableOp)conv3d_546_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_546/Conv3D/ReadVariableOpђ
conv3d_546/Conv3DConv3D%average_pooling3d_220/transpose_1:y:0(conv3d_546/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_546/Conv3DГ
!conv3d_546/BiasAdd/ReadVariableOpReadVariableOp*conv3d_546_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_546/BiasAdd/ReadVariableOp¤
conv3d_546/BiasAddBiasAddconv3d_546/Conv3D:output:0)conv3d_546/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_546/BiasAddЉ
conv3d_546/SoftplusSoftplusconv3d_546/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_546/SoftplusЕ
$average_pooling3d_221/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_221/transpose/perm▀
average_pooling3d_221/transpose	Transpose!conv3d_546/Softplus:activations:0-average_pooling3d_221/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_221/transpose­
average_pooling3d_221/AvgPool3D	AvgPool3D#average_pooling3d_221/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_221/AvgPool3DГ
&average_pooling3d_221/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_221/transpose_1/permВ
!average_pooling3d_221/transpose_1	Transpose(average_pooling3d_221/AvgPool3D:output:0/average_pooling3d_221/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_221/transpose_1║
 conv3d_547/Conv3D/ReadVariableOpReadVariableOp)conv3d_547_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_547/Conv3D/ReadVariableOpђ
conv3d_547/Conv3DConv3D%average_pooling3d_221/transpose_1:y:0(conv3d_547/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_547/Conv3DГ
!conv3d_547/BiasAdd/ReadVariableOpReadVariableOp*conv3d_547_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_547/BiasAdd/ReadVariableOp¤
conv3d_547/BiasAddBiasAddconv3d_547/Conv3D:output:0)conv3d_547/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_547/BiasAddЉ
conv3d_547/SoftplusSoftplusconv3d_547/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_547/SoftplusЕ
$average_pooling3d_222/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_222/transpose/perm▀
average_pooling3d_222/transpose	Transpose!conv3d_547/Softplus:activations:0-average_pooling3d_222/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_222/transpose­
average_pooling3d_222/AvgPool3D	AvgPool3D#average_pooling3d_222/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_222/AvgPool3DГ
&average_pooling3d_222/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_222/transpose_1/permВ
!average_pooling3d_222/transpose_1	Transpose(average_pooling3d_222/AvgPool3D:output:0/average_pooling3d_222/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_222/transpose_1{
reshape_210/ShapeShape%average_pooling3d_222/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_210/Shapeї
reshape_210/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_210/strided_slice/stackљ
!reshape_210/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_210/strided_slice/stack_1љ
!reshape_210/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_210/strided_slice/stack_2ф
reshape_210/strided_sliceStridedSlicereshape_210/Shape:output:0(reshape_210/strided_slice/stack:output:0*reshape_210/strided_slice/stack_1:output:0*reshape_210/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_210/strided_slice|
reshape_210/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_210/Reshape/shape/1Х
reshape_210/Reshape/shapePack"reshape_210/strided_slice:output:0$reshape_210/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_210/Reshape/shape▓
reshape_210/ReshapeReshape%average_pooling3d_222/transpose_1:y:0"reshape_210/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_210/ReshapeФ
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_105/MatMul/ReadVariableOpД
dense_105/MatMulMatMulreshape_210/Reshape:output:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_105/MatMulф
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_105/BiasAdd/ReadVariableOpЕ
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_105/BiasAddѓ
dense_105/SoftplusSoftplusdense_105/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_105/Softplusv
reshape_211/ShapeShape dense_105/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_211/Shapeї
reshape_211/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_211/strided_slice/stackљ
!reshape_211/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_211/strided_slice/stack_1љ
!reshape_211/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_211/strided_slice/stack_2ф
reshape_211/strided_sliceStridedSlicereshape_211/Shape:output:0(reshape_211/strided_slice/stack:output:0*reshape_211/strided_slice/stack_1:output:0*reshape_211/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_211/strided_slice|
reshape_211/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/1|
reshape_211/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/2|
reshape_211/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/3|
reshape_211/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/4е
reshape_211/Reshape/shapePack"reshape_211/strided_slice:output:0$reshape_211/Reshape/shape/1:output:0$reshape_211/Reshape/shape/2:output:0$reshape_211/Reshape/shape/3:output:0$reshape_211/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_211/Reshape/shape╣
reshape_211/ReshapeReshape dense_105/Softplus:activations:0"reshape_211/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_211/ReshapeЦ
tf.reshape_964/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_964/Reshape/shape╩
tf.reshape_964/ReshapeReshapereshape_211/Reshape:output:0%tf.reshape_964/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_964/ReshapeА
tf.tile_482/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_482/Tile/multiples╝
tf.tile_482/TileTiletf.reshape_964/Reshape:output:0#tf.tile_482/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_482/TileЎ
tf.reshape_965/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_965/Reshape/shape╗
tf.reshape_965/ReshapeReshapetf.tile_482/Tile:output:0%tf.reshape_965/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_965/Reshapex
tf.concat_756/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_756/concat/axisу
tf.concat_756/concatConcatV2tf.reshape_965/Reshape:output:0!conv3d_547/Softplus:activations:0"tf.concat_756/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_756/concat║
 conv3d_548/Conv3D/ReadVariableOpReadVariableOp)conv3d_548_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_548/Conv3D/ReadVariableOpЭ
conv3d_548/Conv3DConv3Dtf.concat_756/concat:output:0(conv3d_548/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_548/Conv3DГ
!conv3d_548/BiasAdd/ReadVariableOpReadVariableOp*conv3d_548_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_548/BiasAdd/ReadVariableOp¤
conv3d_548/BiasAddBiasAddconv3d_548/Conv3D:output:0)conv3d_548/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_548/BiasAddЉ
conv3d_548/SoftplusSoftplusconv3d_548/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_548/SoftplusЦ
tf.reshape_966/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_966/Reshape/shape¤
tf.reshape_966/ReshapeReshape!conv3d_548/Softplus:activations:0%tf.reshape_966/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_966/ReshapeА
tf.tile_483/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_483/Tile/multiples╝
tf.tile_483/TileTiletf.reshape_966/Reshape:output:0#tf.tile_483/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_483/TileЎ
tf.reshape_967/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_967/Reshape/shape╗
tf.reshape_967/ReshapeReshapetf.tile_483/Tile:output:0%tf.reshape_967/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_967/Reshapex
tf.concat_757/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_757/concat/axisу
tf.concat_757/concatConcatV2tf.reshape_967/Reshape:output:0!conv3d_546/Softplus:activations:0"tf.concat_757/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_757/concat║
 conv3d_549/Conv3D/ReadVariableOpReadVariableOp)conv3d_549_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_549/Conv3D/ReadVariableOpЭ
conv3d_549/Conv3DConv3Dtf.concat_757/concat:output:0(conv3d_549/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_549/Conv3DГ
!conv3d_549/BiasAdd/ReadVariableOpReadVariableOp*conv3d_549_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_549/BiasAdd/ReadVariableOp¤
conv3d_549/BiasAddBiasAddconv3d_549/Conv3D:output:0)conv3d_549/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_549/BiasAddЉ
conv3d_549/SoftplusSoftplusconv3d_549/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_549/SoftplusЦ
tf.reshape_968/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_968/Reshape/shape¤
tf.reshape_968/ReshapeReshape!conv3d_549/Softplus:activations:0%tf.reshape_968/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_968/ReshapeА
tf.tile_484/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_484/Tile/multiples╝
tf.tile_484/TileTiletf.reshape_968/Reshape:output:0#tf.tile_484/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_484/TileЎ
tf.reshape_969/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_969/Reshape/shape╗
tf.reshape_969/ReshapeReshapetf.tile_484/Tile:output:0%tf.reshape_969/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_969/Reshapex
tf.concat_758/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_758/concat/axisу
tf.concat_758/concatConcatV2tf.reshape_969/Reshape:output:0!conv3d_545/Softplus:activations:0"tf.concat_758/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_758/concat║
 conv3d_550/Conv3D/ReadVariableOpReadVariableOp)conv3d_550_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_550/Conv3D/ReadVariableOpЭ
conv3d_550/Conv3DConv3Dtf.concat_758/concat:output:0(conv3d_550/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_550/Conv3DГ
!conv3d_550/BiasAdd/ReadVariableOpReadVariableOp*conv3d_550_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_550/BiasAdd/ReadVariableOp¤
conv3d_550/BiasAddBiasAddconv3d_550/Conv3D:output:0)conv3d_550/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_550/BiasAddЉ
conv3d_550/SoftplusSoftplusconv3d_550/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_550/Softplus║
 conv3d_551/Conv3D/ReadVariableOpReadVariableOp)conv3d_551_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_551/Conv3D/ReadVariableOpЧ
conv3d_551/Conv3DConv3D!conv3d_550/Softplus:activations:0(conv3d_551/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_551/Conv3DГ
!conv3d_551/BiasAdd/ReadVariableOpReadVariableOp*conv3d_551_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_551/BiasAdd/ReadVariableOp¤
conv3d_551/BiasAddBiasAddconv3d_551/Conv3D:output:0)conv3d_551/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_551/BiasAddѓ
IdentityIdentityconv3d_551/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityё
NoOpNoOp"^conv3d_545/BiasAdd/ReadVariableOp!^conv3d_545/Conv3D/ReadVariableOp"^conv3d_546/BiasAdd/ReadVariableOp!^conv3d_546/Conv3D/ReadVariableOp"^conv3d_547/BiasAdd/ReadVariableOp!^conv3d_547/Conv3D/ReadVariableOp"^conv3d_548/BiasAdd/ReadVariableOp!^conv3d_548/Conv3D/ReadVariableOp"^conv3d_549/BiasAdd/ReadVariableOp!^conv3d_549/Conv3D/ReadVariableOp"^conv3d_550/BiasAdd/ReadVariableOp!^conv3d_550/Conv3D/ReadVariableOp"^conv3d_551/BiasAdd/ReadVariableOp!^conv3d_551/Conv3D/ReadVariableOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2F
!conv3d_545/BiasAdd/ReadVariableOp!conv3d_545/BiasAdd/ReadVariableOp2D
 conv3d_545/Conv3D/ReadVariableOp conv3d_545/Conv3D/ReadVariableOp2F
!conv3d_546/BiasAdd/ReadVariableOp!conv3d_546/BiasAdd/ReadVariableOp2D
 conv3d_546/Conv3D/ReadVariableOp conv3d_546/Conv3D/ReadVariableOp2F
!conv3d_547/BiasAdd/ReadVariableOp!conv3d_547/BiasAdd/ReadVariableOp2D
 conv3d_547/Conv3D/ReadVariableOp conv3d_547/Conv3D/ReadVariableOp2F
!conv3d_548/BiasAdd/ReadVariableOp!conv3d_548/BiasAdd/ReadVariableOp2D
 conv3d_548/Conv3D/ReadVariableOp conv3d_548/Conv3D/ReadVariableOp2F
!conv3d_549/BiasAdd/ReadVariableOp!conv3d_549/BiasAdd/ReadVariableOp2D
 conv3d_549/Conv3D/ReadVariableOp conv3d_549/Conv3D/ReadVariableOp2F
!conv3d_550/BiasAdd/ReadVariableOp!conv3d_550/BiasAdd/ReadVariableOp2D
 conv3d_550/Conv3D/ReadVariableOp conv3d_550/Conv3D/ReadVariableOp2F
!conv3d_551/BiasAdd/ReadVariableOp!conv3d_551/BiasAdd/ReadVariableOp2D
 conv3d_551/Conv3D/ReadVariableOp conv3d_551/Conv3D/ReadVariableOp2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
п	
r
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_27535892

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
:           2
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
:           2	
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
:           2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:           2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :_ [
3
_output_shapes!
:           
$
_user_specified_name
parameters
┴
д
-__inference_conv3d_548_layer_call_fn_27537242

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_548_layer_call_and_return_conditional_losses_275360482
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ж
J
.__inference_reshape_210_layer_call_fn_27537181

inputs
identityм
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
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_210_layer_call_and_return_conditional_losses_275359932
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ю
e
I__inference_reshape_211_layer_call_and_return_conditional_losses_27537233

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
strided_slice/stack_2Р
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
Reshape/shape/4н
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
іH
┼

$__inference__traced_restore_27537441
file_prefix@
"assignvariableop_conv3d_545_kernel:0
"assignvariableop_1_conv3d_545_bias:B
$assignvariableop_2_conv3d_546_kernel:0
"assignvariableop_3_conv3d_546_bias:B
$assignvariableop_4_conv3d_547_kernel:0
"assignvariableop_5_conv3d_547_bias:5
#assignvariableop_6_dense_105_kernel:@@/
!assignvariableop_7_dense_105_bias:@B
$assignvariableop_8_conv3d_548_kernel:0
"assignvariableop_9_conv3d_548_bias:C
%assignvariableop_10_conv3d_549_kernel:1
#assignvariableop_11_conv3d_549_bias:C
%assignvariableop_12_conv3d_550_kernel:1
#assignvariableop_13_conv3d_550_bias:C
%assignvariableop_14_conv3d_551_kernel:1
#assignvariableop_15_conv3d_551_bias:
identity_17ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ќ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueЎBќB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names░
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesђ
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

IdentityА
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_545_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Д
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_545_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Е
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_546_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Д
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_546_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Е
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_547_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Д
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_547_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_105_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_105_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Е
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_548_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Д
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_548_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Г
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_549_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ф
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_549_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Г
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_550_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ф
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_550_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Г
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_551_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ф
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_551_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЙ
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17д
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
╬
Ё
H__inference_conv3d_547_layer_call_and_return_conditional_losses_27535965

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┴
д
-__inference_conv3d_547_layer_call_fn_27537137

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_547_layer_call_and_return_conditional_losses_275359652
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
о
Ё
H__inference_conv3d_551_layer_call_and_return_conditional_losses_27536114

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
д
T
8__inference_average_pooling3d_220_layer_call_fn_27537057

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_275357922
PartitionedCallю
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
Ћ
Э
G__inference_dense_105_layer_call_and_return_conditional_losses_27536006

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
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
╬
Ё
H__inference_conv3d_547_layer_call_and_return_conditional_losses_27537148

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ї	
o
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27537080

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permѓ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:           2
	transpose«
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permћ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
ї	
o
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27535979

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permѓ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         2
	transpose«
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permћ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┴
д
-__inference_conv3d_549_layer_call_fn_27537262

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_549_layer_call_and_return_conditional_losses_275360732
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_548_layer_call_and_return_conditional_losses_27536048

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_545_layer_call_and_return_conditional_losses_27535911

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_550_layer_call_and_return_conditional_losses_27536098

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
П
В
,__inference_model_105_layer_call_fn_27536708

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
identityѕбStatefulPartitionedCall╔
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
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_model_105_layer_call_and_return_conditional_losses_275361212
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
┴
д
-__inference_conv3d_550_layer_call_fn_27537282

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_550_layer_call_and_return_conditional_losses_275360982
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
т

o
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27535792

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permд
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transposeм
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1Њ
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
ї	
o
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27535925

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permѓ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:           2
	transpose«
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permћ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
ю
e
I__inference_reshape_210_layer_call_and_return_conditional_losses_27537193

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
strided_slice/stack_2Р
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
Reshape/shape/1є
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
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ћ
Э
G__inference_dense_105_layer_call_and_return_conditional_losses_27537213

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
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
ѓ
Ў
,__inference_dense_105_layer_call_fn_27537202

inputs
unknown:@@
	unknown_0:@
identityѕбStatefulPartitionedCallѓ
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
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_dense_105_layer_call_and_return_conditional_losses_275360062
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
т

o
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27537119

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permд
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transposeм
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1Њ
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
љy
»
G__inference_model_105_layer_call_and_return_conditional_losses_27536392

inputs1
conv3d_545_27536322:!
conv3d_545_27536324:1
conv3d_546_27536328:!
conv3d_546_27536330:1
conv3d_547_27536334:!
conv3d_547_27536336:$
dense_105_27536341:@@ 
dense_105_27536343:@1
conv3d_548_27536355:!
conv3d_548_27536357:1
conv3d_549_27536368:!
conv3d_549_27536370:1
conv3d_550_27536381:!
conv3d_550_27536383:1
conv3d_551_27536386:!
conv3d_551_27536388:
identityѕб"conv3d_545/StatefulPartitionedCallб"conv3d_546/StatefulPartitionedCallб"conv3d_547/StatefulPartitionedCallб"conv3d_548/StatefulPartitionedCallб"conv3d_549/StatefulPartitionedCallб"conv3d_550/StatefulPartitionedCallб"conv3d_551/StatefulPartitionedCallб!dense_105/StatefulPartitionedCallх
0tf.__operators__.getitem_546/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_546/strided_slice/stack╣
2tf.__operators__.getitem_546/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_546/strided_slice/stack_1╣
2tf.__operators__.getitem_546/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_546/strided_slice/stack_2њ
*tf.__operators__.getitem_546/strided_sliceStridedSliceinputs9tf.__operators__.getitem_546/strided_slice/stack:output:0;tf.__operators__.getitem_546/strided_slice/stack_1:output:0;tf.__operators__.getitem_546/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_546/strided_sliceЙ
$range_conversion_105/PartitionedCallPartitionedCall3tf.__operators__.getitem_546/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *[
fVRT
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_275358922&
$range_conversion_105/PartitionedCallх
0tf.__operators__.getitem_547/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_547/strided_slice/stack╣
2tf.__operators__.getitem_547/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_547/strided_slice/stack_1╣
2tf.__operators__.getitem_547/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_547/strided_slice/stack_2њ
*tf.__operators__.getitem_547/strided_sliceStridedSliceinputs9tf.__operators__.getitem_547/strided_slice/stack:output:0;tf.__operators__.getitem_547/strided_slice/stack_1:output:0;tf.__operators__.getitem_547/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_547/strided_slicex
tf.concat_755/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_755/concat/axisЄ
tf.concat_755/concatConcatV2-range_conversion_105/PartitionedCall:output:03tf.__operators__.getitem_547/strided_slice:output:0"tf.concat_755/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_755/concatм
"conv3d_545/StatefulPartitionedCallStatefulPartitionedCalltf.concat_755/concat:output:0conv3d_545_27536322conv3d_545_27536324*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_545_layer_call_and_return_conditional_losses_275359112$
"conv3d_545/StatefulPartitionedCall╣
%average_pooling3d_220/PartitionedCallPartitionedCall+conv3d_545/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_275359252'
%average_pooling3d_220/PartitionedCallс
"conv3d_546/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_220/PartitionedCall:output:0conv3d_546_27536328conv3d_546_27536330*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_546_layer_call_and_return_conditional_losses_275359382$
"conv3d_546/StatefulPartitionedCall╣
%average_pooling3d_221/PartitionedCallPartitionedCall+conv3d_546/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_275359522'
%average_pooling3d_221/PartitionedCallс
"conv3d_547/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_221/PartitionedCall:output:0conv3d_547_27536334conv3d_547_27536336*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_547_layer_call_and_return_conditional_losses_275359652$
"conv3d_547/StatefulPartitionedCall╣
%average_pooling3d_222/PartitionedCallPartitionedCall+conv3d_547/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_275359792'
%average_pooling3d_222/PartitionedCallњ
reshape_210/PartitionedCallPartitionedCall.average_pooling3d_222/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_210_layer_call_and_return_conditional_losses_275359932
reshape_210/PartitionedCall╚
!dense_105/StatefulPartitionedCallStatefulPartitionedCall$reshape_210/PartitionedCall:output:0dense_105_27536341dense_105_27536343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_dense_105_layer_call_and_return_conditional_losses_275360062#
!dense_105/StatefulPartitionedCallџ
reshape_211/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_211_layer_call_and_return_conditional_losses_275360272
reshape_211/PartitionedCallЦ
tf.reshape_964/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_964/Reshape/shapeм
tf.reshape_964/ReshapeReshape$reshape_211/PartitionedCall:output:0%tf.reshape_964/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_964/ReshapeА
tf.tile_482/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_482/Tile/multiples╝
tf.tile_482/TileTiletf.reshape_964/Reshape:output:0#tf.tile_482/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_482/TileЎ
tf.reshape_965/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_965/Reshape/shape╗
tf.reshape_965/ReshapeReshapetf.tile_482/Tile:output:0%tf.reshape_965/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_965/Reshapex
tf.concat_756/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_756/concat/axisы
tf.concat_756/concatConcatV2tf.reshape_965/Reshape:output:0+conv3d_547/StatefulPartitionedCall:output:0"tf.concat_756/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_756/concatм
"conv3d_548/StatefulPartitionedCallStatefulPartitionedCalltf.concat_756/concat:output:0conv3d_548_27536355conv3d_548_27536357*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_548_layer_call_and_return_conditional_losses_275360482$
"conv3d_548/StatefulPartitionedCallЦ
tf.reshape_966/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_966/Reshape/shape┘
tf.reshape_966/ReshapeReshape+conv3d_548/StatefulPartitionedCall:output:0%tf.reshape_966/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_966/ReshapeА
tf.tile_483/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_483/Tile/multiples╝
tf.tile_483/TileTiletf.reshape_966/Reshape:output:0#tf.tile_483/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_483/TileЎ
tf.reshape_967/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_967/Reshape/shape╗
tf.reshape_967/ReshapeReshapetf.tile_483/Tile:output:0%tf.reshape_967/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_967/Reshapex
tf.concat_757/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_757/concat/axisы
tf.concat_757/concatConcatV2tf.reshape_967/Reshape:output:0+conv3d_546/StatefulPartitionedCall:output:0"tf.concat_757/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_757/concatм
"conv3d_549/StatefulPartitionedCallStatefulPartitionedCalltf.concat_757/concat:output:0conv3d_549_27536368conv3d_549_27536370*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_549_layer_call_and_return_conditional_losses_275360732$
"conv3d_549/StatefulPartitionedCallЦ
tf.reshape_968/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_968/Reshape/shape┘
tf.reshape_968/ReshapeReshape+conv3d_549/StatefulPartitionedCall:output:0%tf.reshape_968/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_968/ReshapeА
tf.tile_484/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_484/Tile/multiples╝
tf.tile_484/TileTiletf.reshape_968/Reshape:output:0#tf.tile_484/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_484/TileЎ
tf.reshape_969/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_969/Reshape/shape╗
tf.reshape_969/ReshapeReshapetf.tile_484/Tile:output:0%tf.reshape_969/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_969/Reshapex
tf.concat_758/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_758/concat/axisы
tf.concat_758/concatConcatV2tf.reshape_969/Reshape:output:0+conv3d_545/StatefulPartitionedCall:output:0"tf.concat_758/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_758/concatм
"conv3d_550/StatefulPartitionedCallStatefulPartitionedCalltf.concat_758/concat:output:0conv3d_550_27536381conv3d_550_27536383*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_550_layer_call_and_return_conditional_losses_275360982$
"conv3d_550/StatefulPartitionedCallЯ
"conv3d_551/StatefulPartitionedCallStatefulPartitionedCall+conv3d_550/StatefulPartitionedCall:output:0conv3d_551_27536386conv3d_551_27536388*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_551_layer_call_and_return_conditional_losses_275361142$
"conv3d_551/StatefulPartitionedCallњ
IdentityIdentity+conv3d_551/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityш
NoOpNoOp#^conv3d_545/StatefulPartitionedCall#^conv3d_546/StatefulPartitionedCall#^conv3d_547/StatefulPartitionedCall#^conv3d_548/StatefulPartitionedCall#^conv3d_549/StatefulPartitionedCall#^conv3d_550/StatefulPartitionedCall#^conv3d_551/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_545/StatefulPartitionedCall"conv3d_545/StatefulPartitionedCall2H
"conv3d_546/StatefulPartitionedCall"conv3d_546/StatefulPartitionedCall2H
"conv3d_547/StatefulPartitionedCall"conv3d_547/StatefulPartitionedCall2H
"conv3d_548/StatefulPartitionedCall"conv3d_548/StatefulPartitionedCall2H
"conv3d_549/StatefulPartitionedCall"conv3d_549/StatefulPartitionedCall2H
"conv3d_550/StatefulPartitionedCall"conv3d_550/StatefulPartitionedCall2H
"conv3d_551/StatefulPartitionedCall"conv3d_551/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_550_layer_call_and_return_conditional_losses_27537293

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
░
т
&__inference_signature_wrapper_27536671	
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
identityѕбStatefulPartitionedCallц
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
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *,
f'R%
#__inference__wrapped_model_275357792
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
ї	
o
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27535952

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permѓ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         2
	transpose«
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permћ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
п	
r
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_27537032

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
:           2
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
:           2	
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
:           2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:           2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :_ [
3
_output_shapes!
:           
$
_user_specified_name
parameters
╬
Ё
H__inference_conv3d_549_layer_call_and_return_conditional_losses_27536073

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┌
в
,__inference_model_105_layer_call_fn_27536464	
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
identityѕбStatefulPartitionedCall╚
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
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_model_105_layer_call_and_return_conditional_losses_275363922
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
љy
»
G__inference_model_105_layer_call_and_return_conditional_losses_27536121

inputs1
conv3d_545_27535912:!
conv3d_545_27535914:1
conv3d_546_27535939:!
conv3d_546_27535941:1
conv3d_547_27535966:!
conv3d_547_27535968:$
dense_105_27536007:@@ 
dense_105_27536009:@1
conv3d_548_27536049:!
conv3d_548_27536051:1
conv3d_549_27536074:!
conv3d_549_27536076:1
conv3d_550_27536099:!
conv3d_550_27536101:1
conv3d_551_27536115:!
conv3d_551_27536117:
identityѕб"conv3d_545/StatefulPartitionedCallб"conv3d_546/StatefulPartitionedCallб"conv3d_547/StatefulPartitionedCallб"conv3d_548/StatefulPartitionedCallб"conv3d_549/StatefulPartitionedCallб"conv3d_550/StatefulPartitionedCallб"conv3d_551/StatefulPartitionedCallб!dense_105/StatefulPartitionedCallх
0tf.__operators__.getitem_546/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_546/strided_slice/stack╣
2tf.__operators__.getitem_546/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_546/strided_slice/stack_1╣
2tf.__operators__.getitem_546/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_546/strided_slice/stack_2њ
*tf.__operators__.getitem_546/strided_sliceStridedSliceinputs9tf.__operators__.getitem_546/strided_slice/stack:output:0;tf.__operators__.getitem_546/strided_slice/stack_1:output:0;tf.__operators__.getitem_546/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_546/strided_sliceЙ
$range_conversion_105/PartitionedCallPartitionedCall3tf.__operators__.getitem_546/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *[
fVRT
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_275358922&
$range_conversion_105/PartitionedCallх
0tf.__operators__.getitem_547/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_547/strided_slice/stack╣
2tf.__operators__.getitem_547/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_547/strided_slice/stack_1╣
2tf.__operators__.getitem_547/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_547/strided_slice/stack_2њ
*tf.__operators__.getitem_547/strided_sliceStridedSliceinputs9tf.__operators__.getitem_547/strided_slice/stack:output:0;tf.__operators__.getitem_547/strided_slice/stack_1:output:0;tf.__operators__.getitem_547/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_547/strided_slicex
tf.concat_755/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_755/concat/axisЄ
tf.concat_755/concatConcatV2-range_conversion_105/PartitionedCall:output:03tf.__operators__.getitem_547/strided_slice:output:0"tf.concat_755/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_755/concatм
"conv3d_545/StatefulPartitionedCallStatefulPartitionedCalltf.concat_755/concat:output:0conv3d_545_27535912conv3d_545_27535914*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_545_layer_call_and_return_conditional_losses_275359112$
"conv3d_545/StatefulPartitionedCall╣
%average_pooling3d_220/PartitionedCallPartitionedCall+conv3d_545/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_275359252'
%average_pooling3d_220/PartitionedCallс
"conv3d_546/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_220/PartitionedCall:output:0conv3d_546_27535939conv3d_546_27535941*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_546_layer_call_and_return_conditional_losses_275359382$
"conv3d_546/StatefulPartitionedCall╣
%average_pooling3d_221/PartitionedCallPartitionedCall+conv3d_546/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_275359522'
%average_pooling3d_221/PartitionedCallс
"conv3d_547/StatefulPartitionedCallStatefulPartitionedCall.average_pooling3d_221/PartitionedCall:output:0conv3d_547_27535966conv3d_547_27535968*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_547_layer_call_and_return_conditional_losses_275359652$
"conv3d_547/StatefulPartitionedCall╣
%average_pooling3d_222/PartitionedCallPartitionedCall+conv3d_547/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_275359792'
%average_pooling3d_222/PartitionedCallњ
reshape_210/PartitionedCallPartitionedCall.average_pooling3d_222/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_210_layer_call_and_return_conditional_losses_275359932
reshape_210/PartitionedCall╚
!dense_105/StatefulPartitionedCallStatefulPartitionedCall$reshape_210/PartitionedCall:output:0dense_105_27536007dense_105_27536009*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_dense_105_layer_call_and_return_conditional_losses_275360062#
!dense_105/StatefulPartitionedCallџ
reshape_211/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_211_layer_call_and_return_conditional_losses_275360272
reshape_211/PartitionedCallЦ
tf.reshape_964/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_964/Reshape/shapeм
tf.reshape_964/ReshapeReshape$reshape_211/PartitionedCall:output:0%tf.reshape_964/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_964/ReshapeА
tf.tile_482/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_482/Tile/multiples╝
tf.tile_482/TileTiletf.reshape_964/Reshape:output:0#tf.tile_482/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_482/TileЎ
tf.reshape_965/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_965/Reshape/shape╗
tf.reshape_965/ReshapeReshapetf.tile_482/Tile:output:0%tf.reshape_965/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_965/Reshapex
tf.concat_756/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_756/concat/axisы
tf.concat_756/concatConcatV2tf.reshape_965/Reshape:output:0+conv3d_547/StatefulPartitionedCall:output:0"tf.concat_756/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_756/concatм
"conv3d_548/StatefulPartitionedCallStatefulPartitionedCalltf.concat_756/concat:output:0conv3d_548_27536049conv3d_548_27536051*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_548_layer_call_and_return_conditional_losses_275360482$
"conv3d_548/StatefulPartitionedCallЦ
tf.reshape_966/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_966/Reshape/shape┘
tf.reshape_966/ReshapeReshape+conv3d_548/StatefulPartitionedCall:output:0%tf.reshape_966/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_966/ReshapeА
tf.tile_483/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_483/Tile/multiples╝
tf.tile_483/TileTiletf.reshape_966/Reshape:output:0#tf.tile_483/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_483/TileЎ
tf.reshape_967/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_967/Reshape/shape╗
tf.reshape_967/ReshapeReshapetf.tile_483/Tile:output:0%tf.reshape_967/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_967/Reshapex
tf.concat_757/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_757/concat/axisы
tf.concat_757/concatConcatV2tf.reshape_967/Reshape:output:0+conv3d_546/StatefulPartitionedCall:output:0"tf.concat_757/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_757/concatм
"conv3d_549/StatefulPartitionedCallStatefulPartitionedCalltf.concat_757/concat:output:0conv3d_549_27536074conv3d_549_27536076*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_549_layer_call_and_return_conditional_losses_275360732$
"conv3d_549/StatefulPartitionedCallЦ
tf.reshape_968/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_968/Reshape/shape┘
tf.reshape_968/ReshapeReshape+conv3d_549/StatefulPartitionedCall:output:0%tf.reshape_968/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_968/ReshapeА
tf.tile_484/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_484/Tile/multiples╝
tf.tile_484/TileTiletf.reshape_968/Reshape:output:0#tf.tile_484/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_484/TileЎ
tf.reshape_969/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_969/Reshape/shape╗
tf.reshape_969/ReshapeReshapetf.tile_484/Tile:output:0%tf.reshape_969/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_969/Reshapex
tf.concat_758/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_758/concat/axisы
tf.concat_758/concatConcatV2tf.reshape_969/Reshape:output:0+conv3d_545/StatefulPartitionedCall:output:0"tf.concat_758/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_758/concatм
"conv3d_550/StatefulPartitionedCallStatefulPartitionedCalltf.concat_758/concat:output:0conv3d_550_27536099conv3d_550_27536101*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_550_layer_call_and_return_conditional_losses_275360982$
"conv3d_550/StatefulPartitionedCallЯ
"conv3d_551/StatefulPartitionedCallStatefulPartitionedCall+conv3d_550/StatefulPartitionedCall:output:0conv3d_551_27536115conv3d_551_27536117*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_551_layer_call_and_return_conditional_losses_275361142$
"conv3d_551/StatefulPartitionedCallњ
IdentityIdentity+conv3d_551/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityш
NoOpNoOp#^conv3d_545/StatefulPartitionedCall#^conv3d_546/StatefulPartitionedCall#^conv3d_547/StatefulPartitionedCall#^conv3d_548/StatefulPartitionedCall#^conv3d_549/StatefulPartitionedCall#^conv3d_550/StatefulPartitionedCall#^conv3d_551/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2H
"conv3d_545/StatefulPartitionedCall"conv3d_545/StatefulPartitionedCall2H
"conv3d_546/StatefulPartitionedCall"conv3d_546/StatefulPartitionedCall2H
"conv3d_547/StatefulPartitionedCall"conv3d_547/StatefulPartitionedCall2H
"conv3d_548/StatefulPartitionedCall"conv3d_548/StatefulPartitionedCall2H
"conv3d_549/StatefulPartitionedCall"conv3d_549/StatefulPartitionedCall2H
"conv3d_550/StatefulPartitionedCall"conv3d_550/StatefulPartitionedCall2H
"conv3d_551/StatefulPartitionedCall"conv3d_551/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
т

o
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27537167

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permд
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transposeм
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1Њ
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
Ъ
W
7__inference_range_conversion_105_layer_call_fn_27537020

parameters
identityв
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *[
fVRT
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_275358922
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           :_ [
3
_output_shapes!
:           
$
_user_specified_name
parameters
ї	
o
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27537128

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permѓ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         2
	transpose«
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permћ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
П
В
,__inference_model_105_layer_call_fn_27536745

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
identityѕбStatefulPartitionedCall╔
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
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_model_105_layer_call_and_return_conditional_losses_275363922
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
ав
┴
#__inference__wrapped_model_27535779	
inputQ
3model_105_conv3d_545_conv3d_readvariableop_resource:B
4model_105_conv3d_545_biasadd_readvariableop_resource:Q
3model_105_conv3d_546_conv3d_readvariableop_resource:B
4model_105_conv3d_546_biasadd_readvariableop_resource:Q
3model_105_conv3d_547_conv3d_readvariableop_resource:B
4model_105_conv3d_547_biasadd_readvariableop_resource:D
2model_105_dense_105_matmul_readvariableop_resource:@@A
3model_105_dense_105_biasadd_readvariableop_resource:@Q
3model_105_conv3d_548_conv3d_readvariableop_resource:B
4model_105_conv3d_548_biasadd_readvariableop_resource:Q
3model_105_conv3d_549_conv3d_readvariableop_resource:B
4model_105_conv3d_549_biasadd_readvariableop_resource:Q
3model_105_conv3d_550_conv3d_readvariableop_resource:B
4model_105_conv3d_550_biasadd_readvariableop_resource:Q
3model_105_conv3d_551_conv3d_readvariableop_resource:B
4model_105_conv3d_551_biasadd_readvariableop_resource:
identityѕб+model_105/conv3d_545/BiasAdd/ReadVariableOpб*model_105/conv3d_545/Conv3D/ReadVariableOpб+model_105/conv3d_546/BiasAdd/ReadVariableOpб*model_105/conv3d_546/Conv3D/ReadVariableOpб+model_105/conv3d_547/BiasAdd/ReadVariableOpб*model_105/conv3d_547/Conv3D/ReadVariableOpб+model_105/conv3d_548/BiasAdd/ReadVariableOpб*model_105/conv3d_548/Conv3D/ReadVariableOpб+model_105/conv3d_549/BiasAdd/ReadVariableOpб*model_105/conv3d_549/Conv3D/ReadVariableOpб+model_105/conv3d_550/BiasAdd/ReadVariableOpб*model_105/conv3d_550/Conv3D/ReadVariableOpб+model_105/conv3d_551/BiasAdd/ReadVariableOpб*model_105/conv3d_551/Conv3D/ReadVariableOpб*model_105/dense_105/BiasAdd/ReadVariableOpб)model_105/dense_105/MatMul/ReadVariableOp╔
:model_105/tf.__operators__.getitem_546/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_105/tf.__operators__.getitem_546/strided_slice/stack═
<model_105/tf.__operators__.getitem_546/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_105/tf.__operators__.getitem_546/strided_slice/stack_1═
<model_105/tf.__operators__.getitem_546/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_105/tf.__operators__.getitem_546/strided_slice/stack_2├
4model_105/tf.__operators__.getitem_546/strided_sliceStridedSliceinputCmodel_105/tf.__operators__.getitem_546/strided_slice/stack:output:0Emodel_105/tf.__operators__.getitem_546/strided_slice/stack_1:output:0Emodel_105/tf.__operators__.getitem_546/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask26
4model_105/tf.__operators__.getitem_546/strided_sliceЉ
$model_105/range_conversion_105/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_105/range_conversion_105/sub/yч
"model_105/range_conversion_105/subSub=model_105/tf.__operators__.getitem_546/strided_slice:output:0-model_105/range_conversion_105/sub/y:output:0*
T0*3
_output_shapes!
:           2$
"model_105/range_conversion_105/subЎ
(model_105/range_conversion_105/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_105/range_conversion_105/truediv/yЗ
&model_105/range_conversion_105/truedivRealDiv&model_105/range_conversion_105/sub:z:01model_105/range_conversion_105/truediv/y:output:0*
T0*3
_output_shapes!
:           2(
&model_105/range_conversion_105/truedivЉ
$model_105/range_conversion_105/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_105/range_conversion_105/mul/yУ
"model_105/range_conversion_105/mulMul*model_105/range_conversion_105/truediv:z:0-model_105/range_conversion_105/mul/y:output:0*
T0*3
_output_shapes!
:           2$
"model_105/range_conversion_105/mulЉ
$model_105/range_conversion_105/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2&
$model_105/range_conversion_105/add/yТ
"model_105/range_conversion_105/addAddV2&model_105/range_conversion_105/mul:z:0-model_105/range_conversion_105/add/y:output:0*
T0*3
_output_shapes!
:           2$
"model_105/range_conversion_105/add╔
:model_105/tf.__operators__.getitem_547/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_105/tf.__operators__.getitem_547/strided_slice/stack═
<model_105/tf.__operators__.getitem_547/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_105/tf.__operators__.getitem_547/strided_slice/stack_1═
<model_105/tf.__operators__.getitem_547/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_105/tf.__operators__.getitem_547/strided_slice/stack_2├
4model_105/tf.__operators__.getitem_547/strided_sliceStridedSliceinputCmodel_105/tf.__operators__.getitem_547/strided_slice/stack:output:0Emodel_105/tf.__operators__.getitem_547/strided_slice/stack_1:output:0Emodel_105/tf.__operators__.getitem_547/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask26
4model_105/tf.__operators__.getitem_547/strided_sliceї
#model_105/tf.concat_755/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_105/tf.concat_755/concat/axisе
model_105/tf.concat_755/concatConcatV2&model_105/range_conversion_105/add:z:0=model_105/tf.__operators__.getitem_547/strided_slice:output:0,model_105/tf.concat_755/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2 
model_105/tf.concat_755/concatп
*model_105/conv3d_545/Conv3D/ReadVariableOpReadVariableOp3model_105_conv3d_545_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_105/conv3d_545/Conv3D/ReadVariableOpа
model_105/conv3d_545/Conv3DConv3D'model_105/tf.concat_755/concat:output:02model_105/conv3d_545/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_105/conv3d_545/Conv3D╦
+model_105/conv3d_545/BiasAdd/ReadVariableOpReadVariableOp4model_105_conv3d_545_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_105/conv3d_545/BiasAdd/ReadVariableOpэ
model_105/conv3d_545/BiasAddBiasAdd$model_105/conv3d_545/Conv3D:output:03model_105/conv3d_545/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_105/conv3d_545/BiasAdd»
model_105/conv3d_545/SoftplusSoftplus%model_105/conv3d_545/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_105/conv3d_545/Softplusй
.model_105/average_pooling3d_220/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_105/average_pooling3d_220/transpose/permЄ
)model_105/average_pooling3d_220/transpose	Transpose+model_105/conv3d_545/Softplus:activations:07model_105/average_pooling3d_220/transpose/perm:output:0*
T0*3
_output_shapes!
:           2+
)model_105/average_pooling3d_220/transposeј
)model_105/average_pooling3d_220/AvgPool3D	AvgPool3D-model_105/average_pooling3d_220/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2+
)model_105/average_pooling3d_220/AvgPool3D┴
0model_105/average_pooling3d_220/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                22
0model_105/average_pooling3d_220/transpose_1/permћ
+model_105/average_pooling3d_220/transpose_1	Transpose2model_105/average_pooling3d_220/AvgPool3D:output:09model_105/average_pooling3d_220/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2-
+model_105/average_pooling3d_220/transpose_1п
*model_105/conv3d_546/Conv3D/ReadVariableOpReadVariableOp3model_105_conv3d_546_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_105/conv3d_546/Conv3D/ReadVariableOpе
model_105/conv3d_546/Conv3DConv3D/model_105/average_pooling3d_220/transpose_1:y:02model_105/conv3d_546/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_105/conv3d_546/Conv3D╦
+model_105/conv3d_546/BiasAdd/ReadVariableOpReadVariableOp4model_105_conv3d_546_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_105/conv3d_546/BiasAdd/ReadVariableOpэ
model_105/conv3d_546/BiasAddBiasAdd$model_105/conv3d_546/Conv3D:output:03model_105/conv3d_546/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_105/conv3d_546/BiasAdd»
model_105/conv3d_546/SoftplusSoftplus%model_105/conv3d_546/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_105/conv3d_546/Softplusй
.model_105/average_pooling3d_221/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_105/average_pooling3d_221/transpose/permЄ
)model_105/average_pooling3d_221/transpose	Transpose+model_105/conv3d_546/Softplus:activations:07model_105/average_pooling3d_221/transpose/perm:output:0*
T0*3
_output_shapes!
:         2+
)model_105/average_pooling3d_221/transposeј
)model_105/average_pooling3d_221/AvgPool3D	AvgPool3D-model_105/average_pooling3d_221/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2+
)model_105/average_pooling3d_221/AvgPool3D┴
0model_105/average_pooling3d_221/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                22
0model_105/average_pooling3d_221/transpose_1/permћ
+model_105/average_pooling3d_221/transpose_1	Transpose2model_105/average_pooling3d_221/AvgPool3D:output:09model_105/average_pooling3d_221/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2-
+model_105/average_pooling3d_221/transpose_1п
*model_105/conv3d_547/Conv3D/ReadVariableOpReadVariableOp3model_105_conv3d_547_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_105/conv3d_547/Conv3D/ReadVariableOpе
model_105/conv3d_547/Conv3DConv3D/model_105/average_pooling3d_221/transpose_1:y:02model_105/conv3d_547/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_105/conv3d_547/Conv3D╦
+model_105/conv3d_547/BiasAdd/ReadVariableOpReadVariableOp4model_105_conv3d_547_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_105/conv3d_547/BiasAdd/ReadVariableOpэ
model_105/conv3d_547/BiasAddBiasAdd$model_105/conv3d_547/Conv3D:output:03model_105/conv3d_547/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_105/conv3d_547/BiasAdd»
model_105/conv3d_547/SoftplusSoftplus%model_105/conv3d_547/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_105/conv3d_547/Softplusй
.model_105/average_pooling3d_222/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_105/average_pooling3d_222/transpose/permЄ
)model_105/average_pooling3d_222/transpose	Transpose+model_105/conv3d_547/Softplus:activations:07model_105/average_pooling3d_222/transpose/perm:output:0*
T0*3
_output_shapes!
:         2+
)model_105/average_pooling3d_222/transposeј
)model_105/average_pooling3d_222/AvgPool3D	AvgPool3D-model_105/average_pooling3d_222/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2+
)model_105/average_pooling3d_222/AvgPool3D┴
0model_105/average_pooling3d_222/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                22
0model_105/average_pooling3d_222/transpose_1/permћ
+model_105/average_pooling3d_222/transpose_1	Transpose2model_105/average_pooling3d_222/AvgPool3D:output:09model_105/average_pooling3d_222/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2-
+model_105/average_pooling3d_222/transpose_1Ў
model_105/reshape_210/ShapeShape/model_105/average_pooling3d_222/transpose_1:y:0*
T0*
_output_shapes
:2
model_105/reshape_210/Shapeа
)model_105/reshape_210/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_105/reshape_210/strided_slice/stackц
+model_105/reshape_210/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_105/reshape_210/strided_slice/stack_1ц
+model_105/reshape_210/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_105/reshape_210/strided_slice/stack_2Т
#model_105/reshape_210/strided_sliceStridedSlice$model_105/reshape_210/Shape:output:02model_105/reshape_210/strided_slice/stack:output:04model_105/reshape_210/strided_slice/stack_1:output:04model_105/reshape_210/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_105/reshape_210/strided_sliceљ
%model_105/reshape_210/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%model_105/reshape_210/Reshape/shape/1я
#model_105/reshape_210/Reshape/shapePack,model_105/reshape_210/strided_slice:output:0.model_105/reshape_210/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_105/reshape_210/Reshape/shape┌
model_105/reshape_210/ReshapeReshape/model_105/average_pooling3d_222/transpose_1:y:0,model_105/reshape_210/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_105/reshape_210/Reshape╔
)model_105/dense_105/MatMul/ReadVariableOpReadVariableOp2model_105_dense_105_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)model_105/dense_105/MatMul/ReadVariableOp¤
model_105/dense_105/MatMulMatMul&model_105/reshape_210/Reshape:output:01model_105/dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_105/dense_105/MatMul╚
*model_105/dense_105/BiasAdd/ReadVariableOpReadVariableOp3model_105_dense_105_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_105/dense_105/BiasAdd/ReadVariableOpЛ
model_105/dense_105/BiasAddBiasAdd$model_105/dense_105/MatMul:product:02model_105/dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_105/dense_105/BiasAddа
model_105/dense_105/SoftplusSoftplus$model_105/dense_105/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_105/dense_105/Softplusћ
model_105/reshape_211/ShapeShape*model_105/dense_105/Softplus:activations:0*
T0*
_output_shapes
:2
model_105/reshape_211/Shapeа
)model_105/reshape_211/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_105/reshape_211/strided_slice/stackц
+model_105/reshape_211/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_105/reshape_211/strided_slice/stack_1ц
+model_105/reshape_211/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_105/reshape_211/strided_slice/stack_2Т
#model_105/reshape_211/strided_sliceStridedSlice$model_105/reshape_211/Shape:output:02model_105/reshape_211/strided_slice/stack:output:04model_105/reshape_211/strided_slice/stack_1:output:04model_105/reshape_211/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_105/reshape_211/strided_sliceљ
%model_105/reshape_211/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_105/reshape_211/Reshape/shape/1љ
%model_105/reshape_211/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_105/reshape_211/Reshape/shape/2љ
%model_105/reshape_211/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_105/reshape_211/Reshape/shape/3љ
%model_105/reshape_211/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_105/reshape_211/Reshape/shape/4Ь
#model_105/reshape_211/Reshape/shapePack,model_105/reshape_211/strided_slice:output:0.model_105/reshape_211/Reshape/shape/1:output:0.model_105/reshape_211/Reshape/shape/2:output:0.model_105/reshape_211/Reshape/shape/3:output:0.model_105/reshape_211/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2%
#model_105/reshape_211/Reshape/shapeр
model_105/reshape_211/ReshapeReshape*model_105/dense_105/Softplus:activations:0,model_105/reshape_211/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_105/reshape_211/Reshape╣
&model_105/tf.reshape_964/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2(
&model_105/tf.reshape_964/Reshape/shapeЫ
 model_105/tf.reshape_964/ReshapeReshape&model_105/reshape_211/Reshape:output:0/model_105/tf.reshape_964/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2"
 model_105/tf.reshape_964/Reshapeх
$model_105/tf.tile_482/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2&
$model_105/tf.tile_482/Tile/multiplesС
model_105/tf.tile_482/TileTile)model_105/tf.reshape_964/Reshape:output:0-model_105/tf.tile_482/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_105/tf.tile_482/TileГ
&model_105/tf.reshape_965/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2(
&model_105/tf.reshape_965/Reshape/shapeс
 model_105/tf.reshape_965/ReshapeReshape#model_105/tf.tile_482/Tile:output:0/model_105/tf.reshape_965/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2"
 model_105/tf.reshape_965/Reshapeї
#model_105/tf.concat_756/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_105/tf.concat_756/concat/axisЎ
model_105/tf.concat_756/concatConcatV2)model_105/tf.reshape_965/Reshape:output:0+model_105/conv3d_547/Softplus:activations:0,model_105/tf.concat_756/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2 
model_105/tf.concat_756/concatп
*model_105/conv3d_548/Conv3D/ReadVariableOpReadVariableOp3model_105_conv3d_548_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_105/conv3d_548/Conv3D/ReadVariableOpа
model_105/conv3d_548/Conv3DConv3D'model_105/tf.concat_756/concat:output:02model_105/conv3d_548/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_105/conv3d_548/Conv3D╦
+model_105/conv3d_548/BiasAdd/ReadVariableOpReadVariableOp4model_105_conv3d_548_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_105/conv3d_548/BiasAdd/ReadVariableOpэ
model_105/conv3d_548/BiasAddBiasAdd$model_105/conv3d_548/Conv3D:output:03model_105/conv3d_548/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_105/conv3d_548/BiasAdd»
model_105/conv3d_548/SoftplusSoftplus%model_105/conv3d_548/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_105/conv3d_548/Softplus╣
&model_105/tf.reshape_966/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2(
&model_105/tf.reshape_966/Reshape/shapeэ
 model_105/tf.reshape_966/ReshapeReshape+model_105/conv3d_548/Softplus:activations:0/model_105/tf.reshape_966/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2"
 model_105/tf.reshape_966/Reshapeх
$model_105/tf.tile_483/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2&
$model_105/tf.tile_483/Tile/multiplesС
model_105/tf.tile_483/TileTile)model_105/tf.reshape_966/Reshape:output:0-model_105/tf.tile_483/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_105/tf.tile_483/TileГ
&model_105/tf.reshape_967/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2(
&model_105/tf.reshape_967/Reshape/shapeс
 model_105/tf.reshape_967/ReshapeReshape#model_105/tf.tile_483/Tile:output:0/model_105/tf.reshape_967/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2"
 model_105/tf.reshape_967/Reshapeї
#model_105/tf.concat_757/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_105/tf.concat_757/concat/axisЎ
model_105/tf.concat_757/concatConcatV2)model_105/tf.reshape_967/Reshape:output:0+model_105/conv3d_546/Softplus:activations:0,model_105/tf.concat_757/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2 
model_105/tf.concat_757/concatп
*model_105/conv3d_549/Conv3D/ReadVariableOpReadVariableOp3model_105_conv3d_549_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_105/conv3d_549/Conv3D/ReadVariableOpа
model_105/conv3d_549/Conv3DConv3D'model_105/tf.concat_757/concat:output:02model_105/conv3d_549/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_105/conv3d_549/Conv3D╦
+model_105/conv3d_549/BiasAdd/ReadVariableOpReadVariableOp4model_105_conv3d_549_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_105/conv3d_549/BiasAdd/ReadVariableOpэ
model_105/conv3d_549/BiasAddBiasAdd$model_105/conv3d_549/Conv3D:output:03model_105/conv3d_549/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_105/conv3d_549/BiasAdd»
model_105/conv3d_549/SoftplusSoftplus%model_105/conv3d_549/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_105/conv3d_549/Softplus╣
&model_105/tf.reshape_968/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2(
&model_105/tf.reshape_968/Reshape/shapeэ
 model_105/tf.reshape_968/ReshapeReshape+model_105/conv3d_549/Softplus:activations:0/model_105/tf.reshape_968/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2"
 model_105/tf.reshape_968/Reshapeх
$model_105/tf.tile_484/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2&
$model_105/tf.tile_484/Tile/multiplesС
model_105/tf.tile_484/TileTile)model_105/tf.reshape_968/Reshape:output:0-model_105/tf.tile_484/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_105/tf.tile_484/TileГ
&model_105/tf.reshape_969/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2(
&model_105/tf.reshape_969/Reshape/shapeс
 model_105/tf.reshape_969/ReshapeReshape#model_105/tf.tile_484/Tile:output:0/model_105/tf.reshape_969/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2"
 model_105/tf.reshape_969/Reshapeї
#model_105/tf.concat_758/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_105/tf.concat_758/concat/axisЎ
model_105/tf.concat_758/concatConcatV2)model_105/tf.reshape_969/Reshape:output:0+model_105/conv3d_545/Softplus:activations:0,model_105/tf.concat_758/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2 
model_105/tf.concat_758/concatп
*model_105/conv3d_550/Conv3D/ReadVariableOpReadVariableOp3model_105_conv3d_550_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_105/conv3d_550/Conv3D/ReadVariableOpа
model_105/conv3d_550/Conv3DConv3D'model_105/tf.concat_758/concat:output:02model_105/conv3d_550/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_105/conv3d_550/Conv3D╦
+model_105/conv3d_550/BiasAdd/ReadVariableOpReadVariableOp4model_105_conv3d_550_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_105/conv3d_550/BiasAdd/ReadVariableOpэ
model_105/conv3d_550/BiasAddBiasAdd$model_105/conv3d_550/Conv3D:output:03model_105/conv3d_550/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_105/conv3d_550/BiasAdd»
model_105/conv3d_550/SoftplusSoftplus%model_105/conv3d_550/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
model_105/conv3d_550/Softplusп
*model_105/conv3d_551/Conv3D/ReadVariableOpReadVariableOp3model_105_conv3d_551_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02,
*model_105/conv3d_551/Conv3D/ReadVariableOpц
model_105/conv3d_551/Conv3DConv3D+model_105/conv3d_550/Softplus:activations:02model_105/conv3d_551/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
model_105/conv3d_551/Conv3D╦
+model_105/conv3d_551/BiasAdd/ReadVariableOpReadVariableOp4model_105_conv3d_551_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_105/conv3d_551/BiasAdd/ReadVariableOpэ
model_105/conv3d_551/BiasAddBiasAdd$model_105/conv3d_551/Conv3D:output:03model_105/conv3d_551/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
model_105/conv3d_551/BiasAddї
IdentityIdentity%model_105/conv3d_551/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityц
NoOpNoOp,^model_105/conv3d_545/BiasAdd/ReadVariableOp+^model_105/conv3d_545/Conv3D/ReadVariableOp,^model_105/conv3d_546/BiasAdd/ReadVariableOp+^model_105/conv3d_546/Conv3D/ReadVariableOp,^model_105/conv3d_547/BiasAdd/ReadVariableOp+^model_105/conv3d_547/Conv3D/ReadVariableOp,^model_105/conv3d_548/BiasAdd/ReadVariableOp+^model_105/conv3d_548/Conv3D/ReadVariableOp,^model_105/conv3d_549/BiasAdd/ReadVariableOp+^model_105/conv3d_549/Conv3D/ReadVariableOp,^model_105/conv3d_550/BiasAdd/ReadVariableOp+^model_105/conv3d_550/Conv3D/ReadVariableOp,^model_105/conv3d_551/BiasAdd/ReadVariableOp+^model_105/conv3d_551/Conv3D/ReadVariableOp+^model_105/dense_105/BiasAdd/ReadVariableOp*^model_105/dense_105/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2Z
+model_105/conv3d_545/BiasAdd/ReadVariableOp+model_105/conv3d_545/BiasAdd/ReadVariableOp2X
*model_105/conv3d_545/Conv3D/ReadVariableOp*model_105/conv3d_545/Conv3D/ReadVariableOp2Z
+model_105/conv3d_546/BiasAdd/ReadVariableOp+model_105/conv3d_546/BiasAdd/ReadVariableOp2X
*model_105/conv3d_546/Conv3D/ReadVariableOp*model_105/conv3d_546/Conv3D/ReadVariableOp2Z
+model_105/conv3d_547/BiasAdd/ReadVariableOp+model_105/conv3d_547/BiasAdd/ReadVariableOp2X
*model_105/conv3d_547/Conv3D/ReadVariableOp*model_105/conv3d_547/Conv3D/ReadVariableOp2Z
+model_105/conv3d_548/BiasAdd/ReadVariableOp+model_105/conv3d_548/BiasAdd/ReadVariableOp2X
*model_105/conv3d_548/Conv3D/ReadVariableOp*model_105/conv3d_548/Conv3D/ReadVariableOp2Z
+model_105/conv3d_549/BiasAdd/ReadVariableOp+model_105/conv3d_549/BiasAdd/ReadVariableOp2X
*model_105/conv3d_549/Conv3D/ReadVariableOp*model_105/conv3d_549/Conv3D/ReadVariableOp2Z
+model_105/conv3d_550/BiasAdd/ReadVariableOp+model_105/conv3d_550/BiasAdd/ReadVariableOp2X
*model_105/conv3d_550/Conv3D/ReadVariableOp*model_105/conv3d_550/Conv3D/ReadVariableOp2Z
+model_105/conv3d_551/BiasAdd/ReadVariableOp+model_105/conv3d_551/BiasAdd/ReadVariableOp2X
*model_105/conv3d_551/Conv3D/ReadVariableOp*model_105/conv3d_551/Conv3D/ReadVariableOp2X
*model_105/dense_105/BiasAdd/ReadVariableOp*model_105/dense_105/BiasAdd/ReadVariableOp2V
)model_105/dense_105/MatMul/ReadVariableOp)model_105/dense_105/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:           

_user_specified_nameinput
ю
e
I__inference_reshape_210_layer_call_and_return_conditional_losses_27535993

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
strided_slice/stack_2Р
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
Reshape/shape/1є
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
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
т

o
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27535822

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permд
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transposeм
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1Њ
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
╬╚
д
G__inference_model_105_layer_call_and_return_conditional_losses_27537015

inputsG
)conv3d_545_conv3d_readvariableop_resource:8
*conv3d_545_biasadd_readvariableop_resource:G
)conv3d_546_conv3d_readvariableop_resource:8
*conv3d_546_biasadd_readvariableop_resource:G
)conv3d_547_conv3d_readvariableop_resource:8
*conv3d_547_biasadd_readvariableop_resource::
(dense_105_matmul_readvariableop_resource:@@7
)dense_105_biasadd_readvariableop_resource:@G
)conv3d_548_conv3d_readvariableop_resource:8
*conv3d_548_biasadd_readvariableop_resource:G
)conv3d_549_conv3d_readvariableop_resource:8
*conv3d_549_biasadd_readvariableop_resource:G
)conv3d_550_conv3d_readvariableop_resource:8
*conv3d_550_biasadd_readvariableop_resource:G
)conv3d_551_conv3d_readvariableop_resource:8
*conv3d_551_biasadd_readvariableop_resource:
identityѕб!conv3d_545/BiasAdd/ReadVariableOpб conv3d_545/Conv3D/ReadVariableOpб!conv3d_546/BiasAdd/ReadVariableOpб conv3d_546/Conv3D/ReadVariableOpб!conv3d_547/BiasAdd/ReadVariableOpб conv3d_547/Conv3D/ReadVariableOpб!conv3d_548/BiasAdd/ReadVariableOpб conv3d_548/Conv3D/ReadVariableOpб!conv3d_549/BiasAdd/ReadVariableOpб conv3d_549/Conv3D/ReadVariableOpб!conv3d_550/BiasAdd/ReadVariableOpб conv3d_550/Conv3D/ReadVariableOpб!conv3d_551/BiasAdd/ReadVariableOpб conv3d_551/Conv3D/ReadVariableOpб dense_105/BiasAdd/ReadVariableOpбdense_105/MatMul/ReadVariableOpх
0tf.__operators__.getitem_546/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_546/strided_slice/stack╣
2tf.__operators__.getitem_546/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_546/strided_slice/stack_1╣
2tf.__operators__.getitem_546/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_546/strided_slice/stack_2њ
*tf.__operators__.getitem_546/strided_sliceStridedSliceinputs9tf.__operators__.getitem_546/strided_slice/stack:output:0;tf.__operators__.getitem_546/strided_slice/stack_1:output:0;tf.__operators__.getitem_546/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_546/strided_slice}
range_conversion_105/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_105/sub/yМ
range_conversion_105/subSub3tf.__operators__.getitem_546/strided_slice:output:0#range_conversion_105/sub/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/subЁ
range_conversion_105/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_105/truediv/y╠
range_conversion_105/truedivRealDivrange_conversion_105/sub:z:0'range_conversion_105/truediv/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/truediv}
range_conversion_105/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_105/mul/y└
range_conversion_105/mulMul range_conversion_105/truediv:z:0#range_conversion_105/mul/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/mul}
range_conversion_105/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2
range_conversion_105/add/yЙ
range_conversion_105/addAddV2range_conversion_105/mul:z:0#range_conversion_105/add/y:output:0*
T0*3
_output_shapes!
:           2
range_conversion_105/addх
0tf.__operators__.getitem_547/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_547/strided_slice/stack╣
2tf.__operators__.getitem_547/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_547/strided_slice/stack_1╣
2tf.__operators__.getitem_547/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_547/strided_slice/stack_2њ
*tf.__operators__.getitem_547/strided_sliceStridedSliceinputs9tf.__operators__.getitem_547/strided_slice/stack:output:0;tf.__operators__.getitem_547/strided_slice/stack_1:output:0;tf.__operators__.getitem_547/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:           *

begin_mask*
end_mask2,
*tf.__operators__.getitem_547/strided_slicex
tf.concat_755/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_755/concat/axisШ
tf.concat_755/concatConcatV2range_conversion_105/add:z:03tf.__operators__.getitem_547/strided_slice:output:0"tf.concat_755/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_755/concat║
 conv3d_545/Conv3D/ReadVariableOpReadVariableOp)conv3d_545_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_545/Conv3D/ReadVariableOpЭ
conv3d_545/Conv3DConv3Dtf.concat_755/concat:output:0(conv3d_545/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_545/Conv3DГ
!conv3d_545/BiasAdd/ReadVariableOpReadVariableOp*conv3d_545_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_545/BiasAdd/ReadVariableOp¤
conv3d_545/BiasAddBiasAddconv3d_545/Conv3D:output:0)conv3d_545/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_545/BiasAddЉ
conv3d_545/SoftplusSoftplusconv3d_545/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_545/SoftplusЕ
$average_pooling3d_220/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_220/transpose/perm▀
average_pooling3d_220/transpose	Transpose!conv3d_545/Softplus:activations:0-average_pooling3d_220/transpose/perm:output:0*
T0*3
_output_shapes!
:           2!
average_pooling3d_220/transpose­
average_pooling3d_220/AvgPool3D	AvgPool3D#average_pooling3d_220/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_220/AvgPool3DГ
&average_pooling3d_220/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_220/transpose_1/permВ
!average_pooling3d_220/transpose_1	Transpose(average_pooling3d_220/AvgPool3D:output:0/average_pooling3d_220/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_220/transpose_1║
 conv3d_546/Conv3D/ReadVariableOpReadVariableOp)conv3d_546_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_546/Conv3D/ReadVariableOpђ
conv3d_546/Conv3DConv3D%average_pooling3d_220/transpose_1:y:0(conv3d_546/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_546/Conv3DГ
!conv3d_546/BiasAdd/ReadVariableOpReadVariableOp*conv3d_546_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_546/BiasAdd/ReadVariableOp¤
conv3d_546/BiasAddBiasAddconv3d_546/Conv3D:output:0)conv3d_546/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_546/BiasAddЉ
conv3d_546/SoftplusSoftplusconv3d_546/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_546/SoftplusЕ
$average_pooling3d_221/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_221/transpose/perm▀
average_pooling3d_221/transpose	Transpose!conv3d_546/Softplus:activations:0-average_pooling3d_221/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_221/transpose­
average_pooling3d_221/AvgPool3D	AvgPool3D#average_pooling3d_221/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_221/AvgPool3DГ
&average_pooling3d_221/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_221/transpose_1/permВ
!average_pooling3d_221/transpose_1	Transpose(average_pooling3d_221/AvgPool3D:output:0/average_pooling3d_221/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_221/transpose_1║
 conv3d_547/Conv3D/ReadVariableOpReadVariableOp)conv3d_547_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_547/Conv3D/ReadVariableOpђ
conv3d_547/Conv3DConv3D%average_pooling3d_221/transpose_1:y:0(conv3d_547/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_547/Conv3DГ
!conv3d_547/BiasAdd/ReadVariableOpReadVariableOp*conv3d_547_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_547/BiasAdd/ReadVariableOp¤
conv3d_547/BiasAddBiasAddconv3d_547/Conv3D:output:0)conv3d_547/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_547/BiasAddЉ
conv3d_547/SoftplusSoftplusconv3d_547/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_547/SoftplusЕ
$average_pooling3d_222/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_222/transpose/perm▀
average_pooling3d_222/transpose	Transpose!conv3d_547/Softplus:activations:0-average_pooling3d_222/transpose/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_222/transpose­
average_pooling3d_222/AvgPool3D	AvgPool3D#average_pooling3d_222/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2!
average_pooling3d_222/AvgPool3DГ
&average_pooling3d_222/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2(
&average_pooling3d_222/transpose_1/permВ
!average_pooling3d_222/transpose_1	Transpose(average_pooling3d_222/AvgPool3D:output:0/average_pooling3d_222/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2#
!average_pooling3d_222/transpose_1{
reshape_210/ShapeShape%average_pooling3d_222/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_210/Shapeї
reshape_210/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_210/strided_slice/stackљ
!reshape_210/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_210/strided_slice/stack_1љ
!reshape_210/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_210/strided_slice/stack_2ф
reshape_210/strided_sliceStridedSlicereshape_210/Shape:output:0(reshape_210/strided_slice/stack:output:0*reshape_210/strided_slice/stack_1:output:0*reshape_210/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_210/strided_slice|
reshape_210/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_210/Reshape/shape/1Х
reshape_210/Reshape/shapePack"reshape_210/strided_slice:output:0$reshape_210/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_210/Reshape/shape▓
reshape_210/ReshapeReshape%average_pooling3d_222/transpose_1:y:0"reshape_210/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_210/ReshapeФ
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_105/MatMul/ReadVariableOpД
dense_105/MatMulMatMulreshape_210/Reshape:output:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_105/MatMulф
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_105/BiasAdd/ReadVariableOpЕ
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_105/BiasAddѓ
dense_105/SoftplusSoftplusdense_105/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_105/Softplusv
reshape_211/ShapeShape dense_105/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_211/Shapeї
reshape_211/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_211/strided_slice/stackљ
!reshape_211/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_211/strided_slice/stack_1љ
!reshape_211/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_211/strided_slice/stack_2ф
reshape_211/strided_sliceStridedSlicereshape_211/Shape:output:0(reshape_211/strided_slice/stack:output:0*reshape_211/strided_slice/stack_1:output:0*reshape_211/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_211/strided_slice|
reshape_211/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/1|
reshape_211/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/2|
reshape_211/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/3|
reshape_211/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_211/Reshape/shape/4е
reshape_211/Reshape/shapePack"reshape_211/strided_slice:output:0$reshape_211/Reshape/shape/1:output:0$reshape_211/Reshape/shape/2:output:0$reshape_211/Reshape/shape/3:output:0$reshape_211/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_211/Reshape/shape╣
reshape_211/ReshapeReshape dense_105/Softplus:activations:0"reshape_211/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_211/ReshapeЦ
tf.reshape_964/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_964/Reshape/shape╩
tf.reshape_964/ReshapeReshapereshape_211/Reshape:output:0%tf.reshape_964/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_964/ReshapeА
tf.tile_482/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_482/Tile/multiples╝
tf.tile_482/TileTiletf.reshape_964/Reshape:output:0#tf.tile_482/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_482/TileЎ
tf.reshape_965/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_965/Reshape/shape╗
tf.reshape_965/ReshapeReshapetf.tile_482/Tile:output:0%tf.reshape_965/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_965/Reshapex
tf.concat_756/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_756/concat/axisу
tf.concat_756/concatConcatV2tf.reshape_965/Reshape:output:0!conv3d_547/Softplus:activations:0"tf.concat_756/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_756/concat║
 conv3d_548/Conv3D/ReadVariableOpReadVariableOp)conv3d_548_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_548/Conv3D/ReadVariableOpЭ
conv3d_548/Conv3DConv3Dtf.concat_756/concat:output:0(conv3d_548/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_548/Conv3DГ
!conv3d_548/BiasAdd/ReadVariableOpReadVariableOp*conv3d_548_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_548/BiasAdd/ReadVariableOp¤
conv3d_548/BiasAddBiasAddconv3d_548/Conv3D:output:0)conv3d_548/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_548/BiasAddЉ
conv3d_548/SoftplusSoftplusconv3d_548/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_548/SoftplusЦ
tf.reshape_966/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_966/Reshape/shape¤
tf.reshape_966/ReshapeReshape!conv3d_548/Softplus:activations:0%tf.reshape_966/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_966/ReshapeА
tf.tile_483/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_483/Tile/multiples╝
tf.tile_483/TileTiletf.reshape_966/Reshape:output:0#tf.tile_483/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_483/TileЎ
tf.reshape_967/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_967/Reshape/shape╗
tf.reshape_967/ReshapeReshapetf.tile_483/Tile:output:0%tf.reshape_967/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_967/Reshapex
tf.concat_757/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_757/concat/axisу
tf.concat_757/concatConcatV2tf.reshape_967/Reshape:output:0!conv3d_546/Softplus:activations:0"tf.concat_757/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_757/concat║
 conv3d_549/Conv3D/ReadVariableOpReadVariableOp)conv3d_549_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_549/Conv3D/ReadVariableOpЭ
conv3d_549/Conv3DConv3Dtf.concat_757/concat:output:0(conv3d_549/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_549/Conv3DГ
!conv3d_549/BiasAdd/ReadVariableOpReadVariableOp*conv3d_549_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_549/BiasAdd/ReadVariableOp¤
conv3d_549/BiasAddBiasAddconv3d_549/Conv3D:output:0)conv3d_549/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_549/BiasAddЉ
conv3d_549/SoftplusSoftplusconv3d_549/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_549/SoftplusЦ
tf.reshape_968/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_968/Reshape/shape¤
tf.reshape_968/ReshapeReshape!conv3d_549/Softplus:activations:0%tf.reshape_968/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_968/ReshapeА
tf.tile_484/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_484/Tile/multiples╝
tf.tile_484/TileTiletf.reshape_968/Reshape:output:0#tf.tile_484/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_484/TileЎ
tf.reshape_969/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                  2
tf.reshape_969/Reshape/shape╗
tf.reshape_969/ReshapeReshapetf.tile_484/Tile:output:0%tf.reshape_969/Reshape/shape:output:0*
T0*3
_output_shapes!
:           2
tf.reshape_969/Reshapex
tf.concat_758/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_758/concat/axisу
tf.concat_758/concatConcatV2tf.reshape_969/Reshape:output:0!conv3d_545/Softplus:activations:0"tf.concat_758/concat/axis:output:0*
N*
T0*3
_output_shapes!
:           2
tf.concat_758/concat║
 conv3d_550/Conv3D/ReadVariableOpReadVariableOp)conv3d_550_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_550/Conv3D/ReadVariableOpЭ
conv3d_550/Conv3DConv3Dtf.concat_758/concat:output:0(conv3d_550/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_550/Conv3DГ
!conv3d_550/BiasAdd/ReadVariableOpReadVariableOp*conv3d_550_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_550/BiasAdd/ReadVariableOp¤
conv3d_550/BiasAddBiasAddconv3d_550/Conv3D:output:0)conv3d_550/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_550/BiasAddЉ
conv3d_550/SoftplusSoftplusconv3d_550/BiasAdd:output:0*
T0*3
_output_shapes!
:           2
conv3d_550/Softplus║
 conv3d_551/Conv3D/ReadVariableOpReadVariableOp)conv3d_551_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_551/Conv3D/ReadVariableOpЧ
conv3d_551/Conv3DConv3D!conv3d_550/Softplus:activations:0(conv3d_551/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_551/Conv3DГ
!conv3d_551/BiasAdd/ReadVariableOpReadVariableOp*conv3d_551_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_551/BiasAdd/ReadVariableOp¤
conv3d_551/BiasAddBiasAddconv3d_551/Conv3D:output:0)conv3d_551/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2
conv3d_551/BiasAddѓ
IdentityIdentityconv3d_551/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityё
NoOpNoOp"^conv3d_545/BiasAdd/ReadVariableOp!^conv3d_545/Conv3D/ReadVariableOp"^conv3d_546/BiasAdd/ReadVariableOp!^conv3d_546/Conv3D/ReadVariableOp"^conv3d_547/BiasAdd/ReadVariableOp!^conv3d_547/Conv3D/ReadVariableOp"^conv3d_548/BiasAdd/ReadVariableOp!^conv3d_548/Conv3D/ReadVariableOp"^conv3d_549/BiasAdd/ReadVariableOp!^conv3d_549/Conv3D/ReadVariableOp"^conv3d_550/BiasAdd/ReadVariableOp!^conv3d_550/Conv3D/ReadVariableOp"^conv3d_551/BiasAdd/ReadVariableOp!^conv3d_551/Conv3D/ReadVariableOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 2F
!conv3d_545/BiasAdd/ReadVariableOp!conv3d_545/BiasAdd/ReadVariableOp2D
 conv3d_545/Conv3D/ReadVariableOp conv3d_545/Conv3D/ReadVariableOp2F
!conv3d_546/BiasAdd/ReadVariableOp!conv3d_546/BiasAdd/ReadVariableOp2D
 conv3d_546/Conv3D/ReadVariableOp conv3d_546/Conv3D/ReadVariableOp2F
!conv3d_547/BiasAdd/ReadVariableOp!conv3d_547/BiasAdd/ReadVariableOp2D
 conv3d_547/Conv3D/ReadVariableOp conv3d_547/Conv3D/ReadVariableOp2F
!conv3d_548/BiasAdd/ReadVariableOp!conv3d_548/BiasAdd/ReadVariableOp2D
 conv3d_548/Conv3D/ReadVariableOp conv3d_548/Conv3D/ReadVariableOp2F
!conv3d_549/BiasAdd/ReadVariableOp!conv3d_549/BiasAdd/ReadVariableOp2D
 conv3d_549/Conv3D/ReadVariableOp conv3d_549/Conv3D/ReadVariableOp2F
!conv3d_550/BiasAdd/ReadVariableOp!conv3d_550/BiasAdd/ReadVariableOp2D
 conv3d_550/Conv3D/ReadVariableOp conv3d_550/Conv3D/ReadVariableOp2F
!conv3d_551/BiasAdd/ReadVariableOp!conv3d_551/BiasAdd/ReadVariableOp2D
 conv3d_551/Conv3D/ReadVariableOp conv3d_551/Conv3D/ReadVariableOp2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
ж
J
.__inference_reshape_211_layer_call_fn_27537218

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *R
fMRK
I__inference_reshape_211_layer_call_and_return_conditional_losses_275360272
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ћ
T
8__inference_average_pooling3d_221_layer_call_fn_27537110

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_275359522
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_549_layer_call_and_return_conditional_losses_27537273

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
т

o
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27537071

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permд
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
	transposeм
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DЂ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A                                             2
transpose_1Њ
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_548_layer_call_and_return_conditional_losses_27537253

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_546_layer_call_and_return_conditional_losses_27535938

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:         2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╬
Ё
H__inference_conv3d_545_layer_call_and_return_conditional_losses_27537052

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:           *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:           2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:           2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
д
T
8__inference_average_pooling3d_221_layer_call_fn_27537105

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *\
fWRU
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_275358222
PartitionedCallю
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
┴
д
-__inference_conv3d_551_layer_call_fn_27537302

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:           *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_551_layer_call_and_return_conditional_losses_275361142
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:           
 
_user_specified_nameinputs
┌
в
,__inference_model_105_layer_call_fn_27536156	
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
identityѕбStatefulPartitionedCall╚
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
:           *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_model_105_layer_call_and_return_conditional_losses_275361212
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:           : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:           

_user_specified_nameinput
┴
д
-__inference_conv3d_546_layer_call_fn_27537089

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Q
fLRJ
H__inference_conv3d_546_layer_call_and_return_conditional_losses_275359382
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs"еL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┴
serving_defaultГ
C
input:
serving_default_input:0           J

conv3d_551<
StatefulPartitionedCall:0           tensorflow/serving/predict:§З
┴
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
к__call__
К_default_save_signature
+╚&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
Д
%	variables
&regularization_losses
'trainable_variables
(	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"
_tf_keras_layer
(
)	keras_api"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
й

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
1	variables
2regularization_losses
3trainable_variables
4	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"
_tf_keras_layer
й

5kernel
6bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
¤__call__
+л&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
;	variables
<regularization_losses
=trainable_variables
>	keras_api
Л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
й

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
М__call__
+н&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
Н__call__
+о&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
О__call__
+п&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Mkernel
Nbias
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
█__call__
+▄&call_and_return_all_conditional_losses"
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
й

[kernel
\bias
]	variables
^regularization_losses
_trainable_variables
`	keras_api
П__call__
+я&call_and_return_all_conditional_losses"
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
й

ekernel
fbias
g	variables
hregularization_losses
itrainable_variables
j	keras_api
▀__call__
+Я&call_and_return_all_conditional_losses"
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
й

okernel
pbias
q	variables
rregularization_losses
strainable_variables
t	keras_api
р__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
й

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
с__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
ќ
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
ќ
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
╬
{non_trainable_variables
|metrics
}layer_regularization_losses
~layer_metrics
regularization_losses

layers
 	variables
!trainable_variables
к__call__
К_default_save_signature
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
-
тserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ђnon_trainable_variables
%	variables
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
&regularization_losses
ёlayers
'trainable_variables
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_545/kernel
: 2conv3d_545/bias
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
х
Ёnon_trainable_variables
-	variables
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
.regularization_losses
Ѕlayers
/trainable_variables
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
іnon_trainable_variables
1	variables
Іmetrics
 їlayer_regularization_losses
Їlayer_metrics
2regularization_losses
јlayers
3trainable_variables
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_546/kernel
: 2conv3d_546/bias
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
х
Јnon_trainable_variables
7	variables
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
8regularization_losses
Њlayers
9trainable_variables
¤__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ћnon_trainable_variables
;	variables
Ћmetrics
 ќlayer_regularization_losses
Ќlayer_metrics
<regularization_losses
ўlayers
=trainable_variables
Л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_547/kernel
: 2conv3d_547/bias
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
х
Ўnon_trainable_variables
A	variables
џmetrics
 Џlayer_regularization_losses
юlayer_metrics
Bregularization_losses
Юlayers
Ctrainable_variables
М__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ъnon_trainable_variables
E	variables
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
Fregularization_losses
бlayers
Gtrainable_variables
Н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Бnon_trainable_variables
I	variables
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
Jregularization_losses
Дlayers
Ktrainable_variables
О__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
$:"@@ 2dense_105/kernel
:@ 2dense_105/bias
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
х
еnon_trainable_variables
O	variables
Еmetrics
 фlayer_regularization_losses
Фlayer_metrics
Pregularization_losses
гlayers
Qtrainable_variables
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Гnon_trainable_variables
S	variables
«metrics
 »layer_regularization_losses
░layer_metrics
Tregularization_losses
▒layers
Utrainable_variables
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_548/kernel
: 2conv3d_548/bias
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
х
▓non_trainable_variables
]	variables
│metrics
 ┤layer_regularization_losses
хlayer_metrics
^regularization_losses
Хlayers
_trainable_variables
П__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_549/kernel
: 2conv3d_549/bias
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
х
иnon_trainable_variables
g	variables
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
hregularization_losses
╗layers
itrainable_variables
▀__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_550/kernel
: 2conv3d_550/bias
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
х
╝non_trainable_variables
q	variables
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
rregularization_losses
└layers
strainable_variables
р__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_551/kernel
: 2conv3d_551/bias
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
х
┴non_trainable_variables
w	variables
┬metrics
 ├layer_regularization_losses
─layer_metrics
xregularization_losses
┼layers
ytrainable_variables
с__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
є
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
■2ч
,__inference_model_105_layer_call_fn_27536156
,__inference_model_105_layer_call_fn_27536708
,__inference_model_105_layer_call_fn_27536745
,__inference_model_105_layer_call_fn_27536464└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╠B╔
#__inference__wrapped_model_27535779input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ж2у
G__inference_model_105_layer_call_and_return_conditional_losses_27536880
G__inference_model_105_layer_call_and_return_conditional_losses_27537015
G__inference_model_105_layer_call_and_return_conditional_losses_27536548
G__inference_model_105_layer_call_and_return_conditional_losses_27536632└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
т2Р
7__inference_range_conversion_105_layer_call_fn_27537020д
Ю▓Ў
FullArgSpec!
argsџ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђ2§
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_27537032д
Ю▓Ў
FullArgSpec!
argsџ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
О2н
-__inference_conv3d_545_layer_call_fn_27537041б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_conv3d_545_layer_call_and_return_conditional_losses_27537052б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю2Ў
8__inference_average_pooling3d_220_layer_call_fn_27537057
8__inference_average_pooling3d_220_layer_call_fn_27537062б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27537071
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27537080б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
О2н
-__inference_conv3d_546_layer_call_fn_27537089б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_conv3d_546_layer_call_and_return_conditional_losses_27537100б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю2Ў
8__inference_average_pooling3d_221_layer_call_fn_27537105
8__inference_average_pooling3d_221_layer_call_fn_27537110б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27537119
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27537128б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
О2н
-__inference_conv3d_547_layer_call_fn_27537137б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_conv3d_547_layer_call_and_return_conditional_losses_27537148б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю2Ў
8__inference_average_pooling3d_222_layer_call_fn_27537153
8__inference_average_pooling3d_222_layer_call_fn_27537158б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27537167
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27537176б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
.__inference_reshape_210_layer_call_fn_27537181б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_reshape_210_layer_call_and_return_conditional_losses_27537193б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_dense_105_layer_call_fn_27537202б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_dense_105_layer_call_and_return_conditional_losses_27537213б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
.__inference_reshape_211_layer_call_fn_27537218б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_reshape_211_layer_call_and_return_conditional_losses_27537233б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
О2н
-__inference_conv3d_548_layer_call_fn_27537242б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_conv3d_548_layer_call_and_return_conditional_losses_27537253б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
О2н
-__inference_conv3d_549_layer_call_fn_27537262б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_conv3d_549_layer_call_and_return_conditional_losses_27537273б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
О2н
-__inference_conv3d_550_layer_call_fn_27537282б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_conv3d_550_layer_call_and_return_conditional_losses_27537293б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
О2н
-__inference_conv3d_551_layer_call_fn_27537302б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_conv3d_551_layer_call_and_return_conditional_losses_27537312б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╦B╚
&__inference_signature_wrapper_27536671input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ╗
#__inference__wrapped_model_27535779Њ+,56?@MN[\efopuv:б7
0б-
+і(
input           
ф "Cф@
>

conv3d_5510і-

conv3d_551           љ
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27537071И_б\
UбR
PіM
inputsA                                             
ф "UбR
KіH
0A                                             
џ К
S__inference_average_pooling3d_220_layer_call_and_return_conditional_losses_27537080p;б8
1б.
,і)
inputs           
ф "1б.
'і$
0         
џ У
8__inference_average_pooling3d_220_layer_call_fn_27537057Ф_б\
UбR
PіM
inputsA                                             
ф "HіEA                                             Ъ
8__inference_average_pooling3d_220_layer_call_fn_27537062c;б8
1б.
,і)
inputs           
ф "$і!         љ
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27537119И_б\
UбR
PіM
inputsA                                             
ф "UбR
KіH
0A                                             
џ К
S__inference_average_pooling3d_221_layer_call_and_return_conditional_losses_27537128p;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ У
8__inference_average_pooling3d_221_layer_call_fn_27537105Ф_б\
UбR
PіM
inputsA                                             
ф "HіEA                                             Ъ
8__inference_average_pooling3d_221_layer_call_fn_27537110c;б8
1б.
,і)
inputs         
ф "$і!         љ
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27537167И_б\
UбR
PіM
inputsA                                             
ф "UбR
KіH
0A                                             
џ К
S__inference_average_pooling3d_222_layer_call_and_return_conditional_losses_27537176p;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ У
8__inference_average_pooling3d_222_layer_call_fn_27537153Ф_б\
UбR
PіM
inputsA                                             
ф "HіEA                                             Ъ
8__inference_average_pooling3d_222_layer_call_fn_27537158c;б8
1б.
,і)
inputs         
ф "$і!         └
H__inference_conv3d_545_layer_call_and_return_conditional_losses_27537052t+,;б8
1б.
,і)
inputs           
ф "1б.
'і$
0           
џ ў
-__inference_conv3d_545_layer_call_fn_27537041g+,;б8
1б.
,і)
inputs           
ф "$і!           └
H__inference_conv3d_546_layer_call_and_return_conditional_losses_27537100t56;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ ў
-__inference_conv3d_546_layer_call_fn_27537089g56;б8
1б.
,і)
inputs         
ф "$і!         └
H__inference_conv3d_547_layer_call_and_return_conditional_losses_27537148t?@;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ ў
-__inference_conv3d_547_layer_call_fn_27537137g?@;б8
1б.
,і)
inputs         
ф "$і!         └
H__inference_conv3d_548_layer_call_and_return_conditional_losses_27537253t[\;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ ў
-__inference_conv3d_548_layer_call_fn_27537242g[\;б8
1б.
,і)
inputs         
ф "$і!         └
H__inference_conv3d_549_layer_call_and_return_conditional_losses_27537273tef;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ ў
-__inference_conv3d_549_layer_call_fn_27537262gef;б8
1б.
,і)
inputs         
ф "$і!         └
H__inference_conv3d_550_layer_call_and_return_conditional_losses_27537293top;б8
1б.
,і)
inputs           
ф "1б.
'і$
0           
џ ў
-__inference_conv3d_550_layer_call_fn_27537282gop;б8
1б.
,і)
inputs           
ф "$і!           └
H__inference_conv3d_551_layer_call_and_return_conditional_losses_27537312tuv;б8
1б.
,і)
inputs           
ф "1б.
'і$
0           
џ ў
-__inference_conv3d_551_layer_call_fn_27537302guv;б8
1б.
,і)
inputs           
ф "$і!           Д
G__inference_dense_105_layer_call_and_return_conditional_losses_27537213\MN/б,
%б"
 і
inputs         @
ф "%б"
і
0         @
џ 
,__inference_dense_105_layer_call_fn_27537202OMN/б,
%б"
 і
inputs         @
ф "і         @Н
G__inference_model_105_layer_call_and_return_conditional_losses_27536548Ѕ+,56?@MN[\efopuvBб?
8б5
+і(
input           
p 

 
ф "1б.
'і$
0           
џ Н
G__inference_model_105_layer_call_and_return_conditional_losses_27536632Ѕ+,56?@MN[\efopuvBб?
8б5
+і(
input           
p

 
ф "1б.
'і$
0           
џ о
G__inference_model_105_layer_call_and_return_conditional_losses_27536880і+,56?@MN[\efopuvCб@
9б6
,і)
inputs           
p 

 
ф "1б.
'і$
0           
џ о
G__inference_model_105_layer_call_and_return_conditional_losses_27537015і+,56?@MN[\efopuvCб@
9б6
,і)
inputs           
p

 
ф "1б.
'і$
0           
џ г
,__inference_model_105_layer_call_fn_27536156|+,56?@MN[\efopuvBб?
8б5
+і(
input           
p 

 
ф "$і!           г
,__inference_model_105_layer_call_fn_27536464|+,56?@MN[\efopuvBб?
8б5
+і(
input           
p

 
ф "$і!           Г
,__inference_model_105_layer_call_fn_27536708}+,56?@MN[\efopuvCб@
9б6
,і)
inputs           
p 

 
ф "$і!           Г
,__inference_model_105_layer_call_fn_27536745}+,56?@MN[\efopuvCб@
9б6
,і)
inputs           
p

 
ф "$і!           ╩
R__inference_range_conversion_105_layer_call_and_return_conditional_losses_27537032t?б<
5б2
0і-

parameters           
ф "1б.
'і$
0           
џ б
7__inference_range_conversion_105_layer_call_fn_27537020g?б<
5б2
0і-

parameters           
ф "$і!           ▒
I__inference_reshape_210_layer_call_and_return_conditional_losses_27537193d;б8
1б.
,і)
inputs         
ф "%б"
і
0         @
џ Ѕ
.__inference_reshape_210_layer_call_fn_27537181W;б8
1б.
,і)
inputs         
ф "і         @▒
I__inference_reshape_211_layer_call_and_return_conditional_losses_27537233d/б,
%б"
 і
inputs         @
ф "1б.
'і$
0         
џ Ѕ
.__inference_reshape_211_layer_call_fn_27537218W/б,
%б"
 і
inputs         @
ф "$і!         К
&__inference_signature_wrapper_27536671ю+,56?@MN[\efopuvCб@
б 
9ф6
4
input+і(
input           "Cф@
>

conv3d_5510і-

conv3d_551           