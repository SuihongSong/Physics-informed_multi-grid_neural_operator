��
��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
|
dense_236/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_236/kernel
u
$dense_236/kernel/Read/ReadVariableOpReadVariableOpdense_236/kernel*
_output_shapes

:  *
dtype0
t
dense_236/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_236/bias
m
"dense_236/bias/Read/ReadVariableOpReadVariableOpdense_236/bias*
_output_shapes
: *
dtype0
�
conv2d_904/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_904/kernel

%conv2d_904/kernel/Read/ReadVariableOpReadVariableOpconv2d_904/kernel*&
_output_shapes
:*
dtype0
v
conv2d_904/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_904/bias
o
#conv2d_904/bias/Read/ReadVariableOpReadVariableOpconv2d_904/bias*
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
Adam/dense_236/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_236/kernel/m
�
+Adam/dense_236/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_236/kernel/m*
_output_shapes

:  *
dtype0
�
Adam/dense_236/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_236/bias/m
{
)Adam/dense_236/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_236/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_904/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_904/kernel/m
�
,Adam/conv2d_904/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_904/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_904/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_904/bias/m
}
*Adam/conv2d_904/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_904/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_236/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_236/kernel/v
�
+Adam/dense_236/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_236/kernel/v*
_output_shapes

:  *
dtype0
�
Adam/dense_236/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_236/bias/v
{
)Adam/dense_236/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_236/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_904/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_904/kernel/v
�
,Adam/conv2d_904/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_904/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_904/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_904/bias/v
}
*Adam/conv2d_904/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_904/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�$
value�$B�# B�#
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer-7
	layer_with_weights-1
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api

	keras_api

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
�
+iter

,beta_1

-beta_2
	.decay
/learning_ratemYmZ%m[&m\v]v^%v_&v`

0
1
%2
&3

0
1
%2
&3
 
�
0metrics
	variables
1layer_regularization_losses
2layer_metrics

3layers
4non_trainable_variables
trainable_variables
regularization_losses
 
 
 
 
 
�
5metrics
	variables
6layer_regularization_losses
7layer_metrics

8layers
9non_trainable_variables
trainable_variables
regularization_losses
 
 
 
 
 
�
:metrics
	variables
;layer_regularization_losses
<layer_metrics

=layers
>non_trainable_variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_236/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_236/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
?metrics
	variables
@layer_regularization_losses
Alayer_metrics

Blayers
Cnon_trainable_variables
trainable_variables
regularization_losses
 
 
 
�
Dmetrics
!	variables
Elayer_regularization_losses
Flayer_metrics

Glayers
Hnon_trainable_variables
"trainable_variables
#regularization_losses
][
VARIABLE_VALUEconv2d_904/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_904/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
�
Imetrics
'	variables
Jlayer_regularization_losses
Klayer_metrics

Llayers
Mnon_trainable_variables
(trainable_variables
)regularization_losses
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
N0
O1
 
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
	Ptotal
	Qcount
R	variables
S	keras_api
D
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1

R	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

T0
U1

W	variables
}
VARIABLE_VALUEAdam/dense_236/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_236/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_904/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_904/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_236/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_236/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/conv2d_904/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_904/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_236/kerneldense_236/biasconv2d_904/kernelconv2d_904/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� */
f*R(
&__inference_signature_wrapper_10632265
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_236/kernel/Read/ReadVariableOp"dense_236/bias/Read/ReadVariableOp%conv2d_904/kernel/Read/ReadVariableOp#conv2d_904/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_236/kernel/m/Read/ReadVariableOp)Adam/dense_236/bias/m/Read/ReadVariableOp,Adam/conv2d_904/kernel/m/Read/ReadVariableOp*Adam/conv2d_904/bias/m/Read/ReadVariableOp+Adam/dense_236/kernel/v/Read/ReadVariableOp)Adam/dense_236/bias/v/Read/ReadVariableOp,Adam/conv2d_904/kernel/v/Read/ReadVariableOp*Adam/conv2d_904/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
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
!__inference__traced_save_10632575
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_236/kerneldense_236/biasconv2d_904/kernelconv2d_904/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_236/kernel/mAdam/dense_236/bias/mAdam/conv2d_904/kernel/mAdam/conv2d_904/bias/mAdam/dense_236/kernel/vAdam/dense_236/bias/vAdam/conv2d_904/kernel/vAdam/conv2d_904/bias/v*!
Tin
2*
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
$__inference__traced_restore_10632648��
�
�
H__inference_conv2d_904_layer_call_and_return_conditional_losses_10632480

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
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
:���������*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_473_layer_call_and_return_conditional_losses_10632056

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
value	B :2
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
:���������2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�J
�
G__inference_model_236_layer_call_and_return_conditional_losses_10632318

inputs:
(dense_236_matmul_readvariableop_resource:  7
)dense_236_biasadd_readvariableop_resource: C
)conv2d_904_conv2d_readvariableop_resource:8
*conv2d_904_biasadd_readvariableop_resource:
identity��!conv2d_904/BiasAdd/ReadVariableOp� conv2d_904/Conv2D/ReadVariableOp� dense_236/BiasAdd/ReadVariableOp�dense_236/MatMul/ReadVariableOp�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice}
range_conversion_236/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_236/sub/y�
range_conversion_236/subSub3tf.__operators__.getitem_468/strided_slice:output:0#range_conversion_236/sub/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/sub�
range_conversion_236/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_236/truediv/y�
range_conversion_236/truedivRealDivrange_conversion_236/sub:z:0'range_conversion_236/truediv/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/truediv}
range_conversion_236/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_236/mul/y�
range_conversion_236/mulMul range_conversion_236/truediv:z:0#range_conversion_236/mul/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/mul}
range_conversion_236/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_236/add/y�
range_conversion_236/addAddV2range_conversion_236/mul:z:0#range_conversion_236/add/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/add�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2range_conversion_236/add:z:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_568/concats
reshape_472/ShapeShapetf.concat_568/concat:output:0*
T0*
_output_shapes
:2
reshape_472/Shape�
reshape_472/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_472/strided_slice/stack�
!reshape_472/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_472/strided_slice/stack_1�
!reshape_472/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_472/strided_slice/stack_2�
reshape_472/strided_sliceStridedSlicereshape_472/Shape:output:0(reshape_472/strided_slice/stack:output:0*reshape_472/strided_slice/stack_1:output:0*reshape_472/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_472/strided_slice|
reshape_472/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_472/Reshape/shape/1�
reshape_472/Reshape/shapePack"reshape_472/strided_slice:output:0$reshape_472/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_472/Reshape/shape�
reshape_472/ReshapeReshapetf.concat_568/concat:output:0"reshape_472/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_472/Reshape�
dense_236/MatMul/ReadVariableOpReadVariableOp(dense_236_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_236/MatMul/ReadVariableOp�
dense_236/MatMulMatMulreshape_472/Reshape:output:0'dense_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_236/MatMul�
 dense_236/BiasAdd/ReadVariableOpReadVariableOp)dense_236_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_236/BiasAdd/ReadVariableOp�
dense_236/BiasAddBiasAdddense_236/MatMul:product:0(dense_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_236/BiasAdd�
dense_236/SoftplusSoftplusdense_236/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_236/Softplusv
reshape_473/ShapeShape dense_236/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_473/Shape�
reshape_473/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_473/strided_slice/stack�
!reshape_473/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_473/strided_slice/stack_1�
!reshape_473/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_473/strided_slice/stack_2�
reshape_473/strided_sliceStridedSlicereshape_473/Shape:output:0(reshape_473/strided_slice/stack:output:0*reshape_473/strided_slice/stack_1:output:0*reshape_473/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_473/strided_slice|
reshape_473/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_473/Reshape/shape/1|
reshape_473/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_473/Reshape/shape/2|
reshape_473/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_473/Reshape/shape/3�
reshape_473/Reshape/shapePack"reshape_473/strided_slice:output:0$reshape_473/Reshape/shape/1:output:0$reshape_473/Reshape/shape/2:output:0$reshape_473/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_473/Reshape/shape�
reshape_473/ReshapeReshape dense_236/Softplus:activations:0"reshape_473/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_473/Reshape�
 conv2d_904/Conv2D/ReadVariableOpReadVariableOp)conv2d_904_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_904/Conv2D/ReadVariableOp�
conv2d_904/Conv2DConv2Dreshape_473/Reshape:output:0(conv2d_904/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_904/Conv2D�
!conv2d_904/BiasAdd/ReadVariableOpReadVariableOp*conv2d_904_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_904/BiasAdd/ReadVariableOp�
conv2d_904/BiasAddBiasAddconv2d_904/Conv2D:output:0)conv2d_904/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_904/BiasAdd~
IdentityIdentityconv2d_904/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp"^conv2d_904/BiasAdd/ReadVariableOp!^conv2d_904/Conv2D/ReadVariableOp!^dense_236/BiasAdd/ReadVariableOp ^dense_236/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2F
!conv2d_904/BiasAdd/ReadVariableOp!conv2d_904/BiasAdd/ReadVariableOp2D
 conv2d_904/Conv2D/ReadVariableOp conv2d_904/Conv2D/ReadVariableOp2D
 dense_236/BiasAdd/ReadVariableOp dense_236/BiasAdd/ReadVariableOp2B
dense_236/MatMul/ReadVariableOpdense_236/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_model_236_layer_call_fn_10632384

inputs
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_236_layer_call_and_return_conditional_losses_106320752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_dense_236_layer_call_fn_10632451

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_236_layer_call_and_return_conditional_losses_106320362
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
-__inference_conv2d_904_layer_call_fn_10632489

inputs!
unknown:
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
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_904_layer_call_and_return_conditional_losses_106320682
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_472_layer_call_and_return_conditional_losses_10632426

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
value	B : 2
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
:��������� 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_10632265	
input
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference__wrapped_model_106319802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
�
,__inference_model_236_layer_call_fn_10632190	
input
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_236_layer_call_and_return_conditional_losses_106321662
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�*
�
G__inference_model_236_layer_call_and_return_conditional_losses_10632244	
input$
dense_236_10632232:   
dense_236_10632234: -
conv2d_904_10632238:!
conv2d_904_10632240:
identity��"conv2d_904/StatefulPartitionedCall�!dense_236/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinput9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
$range_conversion_236/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_106320032&
$range_conversion_236/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinput9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2-range_conversion_236/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_568/concat�
reshape_472/PartitionedCallPartitionedCalltf.concat_568/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_472_layer_call_and_return_conditional_losses_106320232
reshape_472/PartitionedCall�
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$reshape_472/PartitionedCall:output:0dense_236_10632232dense_236_10632234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_236_layer_call_and_return_conditional_losses_106320362#
!dense_236/StatefulPartitionedCall�
reshape_473/PartitionedCallPartitionedCall*dense_236/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_473_layer_call_and_return_conditional_losses_106320562
reshape_473/PartitionedCall�
"conv2d_904/StatefulPartitionedCallStatefulPartitionedCall$reshape_473/PartitionedCall:output:0conv2d_904_10632238conv2d_904_10632240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_904_layer_call_and_return_conditional_losses_106320682$
"conv2d_904/StatefulPartitionedCall�
IdentityIdentity+conv2d_904/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_904/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2H
"conv2d_904/StatefulPartitionedCall"conv2d_904/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�\
�
$__inference__traced_restore_10632648
file_prefix3
!assignvariableop_dense_236_kernel:  /
!assignvariableop_1_dense_236_bias: >
$assignvariableop_2_conv2d_904_kernel:0
"assignvariableop_3_conv2d_904_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: =
+assignvariableop_13_adam_dense_236_kernel_m:  7
)assignvariableop_14_adam_dense_236_bias_m: F
,assignvariableop_15_adam_conv2d_904_kernel_m:8
*assignvariableop_16_adam_conv2d_904_bias_m:=
+assignvariableop_17_adam_dense_236_kernel_v:  7
)assignvariableop_18_adam_dense_236_bias_v: F
,assignvariableop_19_adam_conv2d_904_kernel_v:8
*assignvariableop_20_adam_conv2d_904_bias_v:
identity_22��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_dense_236_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_236_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_904_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_904_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_dense_236_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_236_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_conv2d_904_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_conv2d_904_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_236_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_236_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_904_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_904_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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
�
J
.__inference_reshape_473_layer_call_fn_10632470

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
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_473_layer_call_and_return_conditional_losses_106320562
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�*
�
G__inference_model_236_layer_call_and_return_conditional_losses_10632166

inputs$
dense_236_10632154:   
dense_236_10632156: -
conv2d_904_10632160:!
conv2d_904_10632162:
identity��"conv2d_904/StatefulPartitionedCall�!dense_236/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
$range_conversion_236/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_106320032&
$range_conversion_236/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2-range_conversion_236/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_568/concat�
reshape_472/PartitionedCallPartitionedCalltf.concat_568/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_472_layer_call_and_return_conditional_losses_106320232
reshape_472/PartitionedCall�
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$reshape_472/PartitionedCall:output:0dense_236_10632154dense_236_10632156*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_236_layer_call_and_return_conditional_losses_106320362#
!dense_236/StatefulPartitionedCall�
reshape_473/PartitionedCallPartitionedCall*dense_236/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_473_layer_call_and_return_conditional_losses_106320562
reshape_473/PartitionedCall�
"conv2d_904/StatefulPartitionedCallStatefulPartitionedCall$reshape_473/PartitionedCall:output:0conv2d_904_10632160conv2d_904_10632162*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_904_layer_call_and_return_conditional_losses_106320682$
"conv2d_904/StatefulPartitionedCall�
IdentityIdentity+conv2d_904/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_904/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2H
"conv2d_904/StatefulPartitionedCall"conv2d_904/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
!__inference__traced_save_10632575
file_prefix/
+savev2_dense_236_kernel_read_readvariableop-
)savev2_dense_236_bias_read_readvariableop0
,savev2_conv2d_904_kernel_read_readvariableop.
*savev2_conv2d_904_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_236_kernel_m_read_readvariableop4
0savev2_adam_dense_236_bias_m_read_readvariableop7
3savev2_adam_conv2d_904_kernel_m_read_readvariableop5
1savev2_adam_conv2d_904_bias_m_read_readvariableop6
2savev2_adam_dense_236_kernel_v_read_readvariableop4
0savev2_adam_dense_236_bias_v_read_readvariableop7
3savev2_adam_conv2d_904_kernel_v_read_readvariableop5
1savev2_adam_conv2d_904_bias_v_read_readvariableop
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
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_236_kernel_read_readvariableop)savev2_dense_236_bias_read_readvariableop,savev2_conv2d_904_kernel_read_readvariableop*savev2_conv2d_904_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_236_kernel_m_read_readvariableop0savev2_adam_dense_236_bias_m_read_readvariableop3savev2_adam_conv2d_904_kernel_m_read_readvariableop1savev2_adam_conv2d_904_bias_m_read_readvariableop2savev2_adam_dense_236_kernel_v_read_readvariableop0savev2_adam_dense_236_bias_v_read_readvariableop3savev2_adam_conv2d_904_kernel_v_read_readvariableop1savev2_adam_conv2d_904_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
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
�: :  : ::: : : : : : : : : :  : :::  : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:  : 

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: :$ 

_output_shapes

:  : 

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:  : 

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
�*
�
G__inference_model_236_layer_call_and_return_conditional_losses_10632075

inputs$
dense_236_10632037:   
dense_236_10632039: -
conv2d_904_10632069:!
conv2d_904_10632071:
identity��"conv2d_904/StatefulPartitionedCall�!dense_236/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
$range_conversion_236/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_106320032&
$range_conversion_236/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2-range_conversion_236/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_568/concat�
reshape_472/PartitionedCallPartitionedCalltf.concat_568/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_472_layer_call_and_return_conditional_losses_106320232
reshape_472/PartitionedCall�
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$reshape_472/PartitionedCall:output:0dense_236_10632037dense_236_10632039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_236_layer_call_and_return_conditional_losses_106320362#
!dense_236/StatefulPartitionedCall�
reshape_473/PartitionedCallPartitionedCall*dense_236/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_473_layer_call_and_return_conditional_losses_106320562
reshape_473/PartitionedCall�
"conv2d_904/StatefulPartitionedCallStatefulPartitionedCall$reshape_473/PartitionedCall:output:0conv2d_904_10632069conv2d_904_10632071*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_904_layer_call_and_return_conditional_losses_106320682$
"conv2d_904/StatefulPartitionedCall�
IdentityIdentity+conv2d_904/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_904/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2H
"conv2d_904/StatefulPartitionedCall"conv2d_904/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
W
7__inference_range_conversion_236_layer_call_fn_10632414

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
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_106320032
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�	
r
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_10632003

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�	
r
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_10632409

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:[ W
/
_output_shapes
:���������
$
_user_specified_name
parameters
�
�
G__inference_dense_236_layer_call_and_return_conditional_losses_10632036

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
H__inference_conv2d_904_layer_call_and_return_conditional_losses_10632068

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
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
:���������*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
G__inference_model_236_layer_call_and_return_conditional_losses_10632371

inputs:
(dense_236_matmul_readvariableop_resource:  7
)dense_236_biasadd_readvariableop_resource: C
)conv2d_904_conv2d_readvariableop_resource:8
*conv2d_904_biasadd_readvariableop_resource:
identity��!conv2d_904/BiasAdd/ReadVariableOp� conv2d_904/Conv2D/ReadVariableOp� dense_236/BiasAdd/ReadVariableOp�dense_236/MatMul/ReadVariableOp�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinputs9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice}
range_conversion_236/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_236/sub/y�
range_conversion_236/subSub3tf.__operators__.getitem_468/strided_slice:output:0#range_conversion_236/sub/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/sub�
range_conversion_236/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_236/truediv/y�
range_conversion_236/truedivRealDivrange_conversion_236/sub:z:0'range_conversion_236/truediv/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/truediv}
range_conversion_236/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_236/mul/y�
range_conversion_236/mulMul range_conversion_236/truediv:z:0#range_conversion_236/mul/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/mul}
range_conversion_236/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_236/add/y�
range_conversion_236/addAddV2range_conversion_236/mul:z:0#range_conversion_236/add/y:output:0*
T0*/
_output_shapes
:���������2
range_conversion_236/add�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinputs9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2range_conversion_236/add:z:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_568/concats
reshape_472/ShapeShapetf.concat_568/concat:output:0*
T0*
_output_shapes
:2
reshape_472/Shape�
reshape_472/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_472/strided_slice/stack�
!reshape_472/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_472/strided_slice/stack_1�
!reshape_472/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_472/strided_slice/stack_2�
reshape_472/strided_sliceStridedSlicereshape_472/Shape:output:0(reshape_472/strided_slice/stack:output:0*reshape_472/strided_slice/stack_1:output:0*reshape_472/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_472/strided_slice|
reshape_472/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_472/Reshape/shape/1�
reshape_472/Reshape/shapePack"reshape_472/strided_slice:output:0$reshape_472/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_472/Reshape/shape�
reshape_472/ReshapeReshapetf.concat_568/concat:output:0"reshape_472/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
reshape_472/Reshape�
dense_236/MatMul/ReadVariableOpReadVariableOp(dense_236_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_236/MatMul/ReadVariableOp�
dense_236/MatMulMatMulreshape_472/Reshape:output:0'dense_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_236/MatMul�
 dense_236/BiasAdd/ReadVariableOpReadVariableOp)dense_236_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_236/BiasAdd/ReadVariableOp�
dense_236/BiasAddBiasAdddense_236/MatMul:product:0(dense_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_236/BiasAdd�
dense_236/SoftplusSoftplusdense_236/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_236/Softplusv
reshape_473/ShapeShape dense_236/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_473/Shape�
reshape_473/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_473/strided_slice/stack�
!reshape_473/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_473/strided_slice/stack_1�
!reshape_473/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_473/strided_slice/stack_2�
reshape_473/strided_sliceStridedSlicereshape_473/Shape:output:0(reshape_473/strided_slice/stack:output:0*reshape_473/strided_slice/stack_1:output:0*reshape_473/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_473/strided_slice|
reshape_473/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_473/Reshape/shape/1|
reshape_473/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_473/Reshape/shape/2|
reshape_473/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_473/Reshape/shape/3�
reshape_473/Reshape/shapePack"reshape_473/strided_slice:output:0$reshape_473/Reshape/shape/1:output:0$reshape_473/Reshape/shape/2:output:0$reshape_473/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_473/Reshape/shape�
reshape_473/ReshapeReshape dense_236/Softplus:activations:0"reshape_473/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
reshape_473/Reshape�
 conv2d_904/Conv2D/ReadVariableOpReadVariableOp)conv2d_904_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_904/Conv2D/ReadVariableOp�
conv2d_904/Conv2DConv2Dreshape_473/Reshape:output:0(conv2d_904/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_904/Conv2D�
!conv2d_904/BiasAdd/ReadVariableOpReadVariableOp*conv2d_904_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_904/BiasAdd/ReadVariableOp�
conv2d_904/BiasAddBiasAddconv2d_904/Conv2D:output:0)conv2d_904/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
conv2d_904/BiasAdd~
IdentityIdentityconv2d_904/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp"^conv2d_904/BiasAdd/ReadVariableOp!^conv2d_904/Conv2D/ReadVariableOp!^dense_236/BiasAdd/ReadVariableOp ^dense_236/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2F
!conv2d_904/BiasAdd/ReadVariableOp!conv2d_904/BiasAdd/ReadVariableOp2D
 conv2d_904/Conv2D/ReadVariableOp conv2d_904/Conv2D/ReadVariableOp2D
 dense_236/BiasAdd/ReadVariableOp dense_236/BiasAdd/ReadVariableOp2B
dense_236/MatMul/ReadVariableOpdense_236/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_model_236_layer_call_fn_10632397

inputs
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_236_layer_call_and_return_conditional_losses_106321662
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�*
�
G__inference_model_236_layer_call_and_return_conditional_losses_10632217	
input$
dense_236_10632205:   
dense_236_10632207: -
conv2d_904_10632211:!
conv2d_904_10632213:
identity��"conv2d_904/StatefulPartitionedCall�!dense_236/StatefulPartitionedCall�
0tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_468/strided_slice/stack�
2tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_468/strided_slice/stack_1�
2tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_468/strided_slice/stack_2�
*tf.__operators__.getitem_468/strided_sliceStridedSliceinput9tf.__operators__.getitem_468/strided_slice/stack:output:0;tf.__operators__.getitem_468/strided_slice/stack_1:output:0;tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_468/strided_slice�
$range_conversion_236/PartitionedCallPartitionedCall3tf.__operators__.getitem_468/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *[
fVRT
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_106320032&
$range_conversion_236/PartitionedCall�
0tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_469/strided_slice/stack�
2tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_469/strided_slice/stack_1�
2tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_469/strided_slice/stack_2�
*tf.__operators__.getitem_469/strided_sliceStridedSliceinput9tf.__operators__.getitem_469/strided_slice/stack:output:0;tf.__operators__.getitem_469/strided_slice/stack_1:output:0;tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_469/strided_slicex
tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_568/concat/axis�
tf.concat_568/concatConcatV2-range_conversion_236/PartitionedCall:output:03tf.__operators__.getitem_469/strided_slice:output:0"tf.concat_568/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2
tf.concat_568/concat�
reshape_472/PartitionedCallPartitionedCalltf.concat_568/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_472_layer_call_and_return_conditional_losses_106320232
reshape_472/PartitionedCall�
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$reshape_472/PartitionedCall:output:0dense_236_10632205dense_236_10632207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_dense_236_layer_call_and_return_conditional_losses_106320362#
!dense_236/StatefulPartitionedCall�
reshape_473/PartitionedCallPartitionedCall*dense_236/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_473_layer_call_and_return_conditional_losses_106320562
reshape_473/PartitionedCall�
"conv2d_904/StatefulPartitionedCallStatefulPartitionedCall$reshape_473/PartitionedCall:output:0conv2d_904_10632211conv2d_904_10632213*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_conv2d_904_layer_call_and_return_conditional_losses_106320682$
"conv2d_904/StatefulPartitionedCall�
IdentityIdentity+conv2d_904/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^conv2d_904/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2H
"conv2d_904/StatefulPartitionedCall"conv2d_904/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
�
,__inference_model_236_layer_call_fn_10632086	
input
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_model_236_layer_call_and_return_conditional_losses_106320752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
J
.__inference_reshape_472_layer_call_fn_10632431

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
:��������� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_reshape_472_layer_call_and_return_conditional_losses_106320232
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�W
�
#__inference__wrapped_model_10631980	
inputD
2model_236_dense_236_matmul_readvariableop_resource:  A
3model_236_dense_236_biasadd_readvariableop_resource: M
3model_236_conv2d_904_conv2d_readvariableop_resource:B
4model_236_conv2d_904_biasadd_readvariableop_resource:
identity��+model_236/conv2d_904/BiasAdd/ReadVariableOp�*model_236/conv2d_904/Conv2D/ReadVariableOp�*model_236/dense_236/BiasAdd/ReadVariableOp�)model_236/dense_236/MatMul/ReadVariableOp�
:model_236/tf.__operators__.getitem_468/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_236/tf.__operators__.getitem_468/strided_slice/stack�
<model_236/tf.__operators__.getitem_468/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_236/tf.__operators__.getitem_468/strided_slice/stack_1�
<model_236/tf.__operators__.getitem_468/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_236/tf.__operators__.getitem_468/strided_slice/stack_2�
4model_236/tf.__operators__.getitem_468/strided_sliceStridedSliceinputCmodel_236/tf.__operators__.getitem_468/strided_slice/stack:output:0Emodel_236/tf.__operators__.getitem_468/strided_slice/stack_1:output:0Emodel_236/tf.__operators__.getitem_468/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask26
4model_236/tf.__operators__.getitem_468/strided_slice�
$model_236/range_conversion_236/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_236/range_conversion_236/sub/y�
"model_236/range_conversion_236/subSub=model_236/tf.__operators__.getitem_468/strided_slice:output:0-model_236/range_conversion_236/sub/y:output:0*
T0*/
_output_shapes
:���������2$
"model_236/range_conversion_236/sub�
(model_236/range_conversion_236/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_236/range_conversion_236/truediv/y�
&model_236/range_conversion_236/truedivRealDiv&model_236/range_conversion_236/sub:z:01model_236/range_conversion_236/truediv/y:output:0*
T0*/
_output_shapes
:���������2(
&model_236/range_conversion_236/truediv�
$model_236/range_conversion_236/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_236/range_conversion_236/mul/y�
"model_236/range_conversion_236/mulMul*model_236/range_conversion_236/truediv:z:0-model_236/range_conversion_236/mul/y:output:0*
T0*/
_output_shapes
:���������2$
"model_236/range_conversion_236/mul�
$model_236/range_conversion_236/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2&
$model_236/range_conversion_236/add/y�
"model_236/range_conversion_236/addAddV2&model_236/range_conversion_236/mul:z:0-model_236/range_conversion_236/add/y:output:0*
T0*/
_output_shapes
:���������2$
"model_236/range_conversion_236/add�
:model_236/tf.__operators__.getitem_469/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_236/tf.__operators__.getitem_469/strided_slice/stack�
<model_236/tf.__operators__.getitem_469/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_236/tf.__operators__.getitem_469/strided_slice/stack_1�
<model_236/tf.__operators__.getitem_469/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_236/tf.__operators__.getitem_469/strided_slice/stack_2�
4model_236/tf.__operators__.getitem_469/strided_sliceStridedSliceinputCmodel_236/tf.__operators__.getitem_469/strided_slice/stack:output:0Emodel_236/tf.__operators__.getitem_469/strided_slice/stack_1:output:0Emodel_236/tf.__operators__.getitem_469/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:���������*

begin_mask*
end_mask26
4model_236/tf.__operators__.getitem_469/strided_slice�
#model_236/tf.concat_568/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_236/tf.concat_568/concat/axis�
model_236/tf.concat_568/concatConcatV2&model_236/range_conversion_236/add:z:0=model_236/tf.__operators__.getitem_469/strided_slice:output:0,model_236/tf.concat_568/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������2 
model_236/tf.concat_568/concat�
model_236/reshape_472/ShapeShape'model_236/tf.concat_568/concat:output:0*
T0*
_output_shapes
:2
model_236/reshape_472/Shape�
)model_236/reshape_472/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_236/reshape_472/strided_slice/stack�
+model_236/reshape_472/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_236/reshape_472/strided_slice/stack_1�
+model_236/reshape_472/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_236/reshape_472/strided_slice/stack_2�
#model_236/reshape_472/strided_sliceStridedSlice$model_236/reshape_472/Shape:output:02model_236/reshape_472/strided_slice/stack:output:04model_236/reshape_472/strided_slice/stack_1:output:04model_236/reshape_472/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_236/reshape_472/strided_slice�
%model_236/reshape_472/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%model_236/reshape_472/Reshape/shape/1�
#model_236/reshape_472/Reshape/shapePack,model_236/reshape_472/strided_slice:output:0.model_236/reshape_472/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_236/reshape_472/Reshape/shape�
model_236/reshape_472/ReshapeReshape'model_236/tf.concat_568/concat:output:0,model_236/reshape_472/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� 2
model_236/reshape_472/Reshape�
)model_236/dense_236/MatMul/ReadVariableOpReadVariableOp2model_236_dense_236_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02+
)model_236/dense_236/MatMul/ReadVariableOp�
model_236/dense_236/MatMulMatMul&model_236/reshape_472/Reshape:output:01model_236/dense_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_236/dense_236/MatMul�
*model_236/dense_236/BiasAdd/ReadVariableOpReadVariableOp3model_236_dense_236_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_236/dense_236/BiasAdd/ReadVariableOp�
model_236/dense_236/BiasAddBiasAdd$model_236/dense_236/MatMul:product:02model_236/dense_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_236/dense_236/BiasAdd�
model_236/dense_236/SoftplusSoftplus$model_236/dense_236/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
model_236/dense_236/Softplus�
model_236/reshape_473/ShapeShape*model_236/dense_236/Softplus:activations:0*
T0*
_output_shapes
:2
model_236/reshape_473/Shape�
)model_236/reshape_473/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_236/reshape_473/strided_slice/stack�
+model_236/reshape_473/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_236/reshape_473/strided_slice/stack_1�
+model_236/reshape_473/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_236/reshape_473/strided_slice/stack_2�
#model_236/reshape_473/strided_sliceStridedSlice$model_236/reshape_473/Shape:output:02model_236/reshape_473/strided_slice/stack:output:04model_236/reshape_473/strided_slice/stack_1:output:04model_236/reshape_473/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_236/reshape_473/strided_slice�
%model_236/reshape_473/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_236/reshape_473/Reshape/shape/1�
%model_236/reshape_473/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_236/reshape_473/Reshape/shape/2�
%model_236/reshape_473/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_236/reshape_473/Reshape/shape/3�
#model_236/reshape_473/Reshape/shapePack,model_236/reshape_473/strided_slice:output:0.model_236/reshape_473/Reshape/shape/1:output:0.model_236/reshape_473/Reshape/shape/2:output:0.model_236/reshape_473/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_236/reshape_473/Reshape/shape�
model_236/reshape_473/ReshapeReshape*model_236/dense_236/Softplus:activations:0,model_236/reshape_473/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
model_236/reshape_473/Reshape�
*model_236/conv2d_904/Conv2D/ReadVariableOpReadVariableOp3model_236_conv2d_904_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02,
*model_236/conv2d_904/Conv2D/ReadVariableOp�
model_236/conv2d_904/Conv2DConv2D&model_236/reshape_473/Reshape:output:02model_236/conv2d_904/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW*
paddingSAME*
strides
2
model_236/conv2d_904/Conv2D�
+model_236/conv2d_904/BiasAdd/ReadVariableOpReadVariableOp4model_236_conv2d_904_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_236/conv2d_904/BiasAdd/ReadVariableOp�
model_236/conv2d_904/BiasAddBiasAdd$model_236/conv2d_904/Conv2D:output:03model_236/conv2d_904/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
data_formatNCHW2
model_236/conv2d_904/BiasAdd�
IdentityIdentity%model_236/conv2d_904/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp,^model_236/conv2d_904/BiasAdd/ReadVariableOp+^model_236/conv2d_904/Conv2D/ReadVariableOp+^model_236/dense_236/BiasAdd/ReadVariableOp*^model_236/dense_236/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2Z
+model_236/conv2d_904/BiasAdd/ReadVariableOp+model_236/conv2d_904/BiasAdd/ReadVariableOp2X
*model_236/conv2d_904/Conv2D/ReadVariableOp*model_236/conv2d_904/Conv2D/ReadVariableOp2X
*model_236/dense_236/BiasAdd/ReadVariableOp*model_236/dense_236/BiasAdd/ReadVariableOp2V
)model_236/dense_236/MatMul/ReadVariableOp)model_236/dense_236/MatMul/ReadVariableOp:V R
/
_output_shapes
:���������

_user_specified_nameinput
�
e
I__inference_reshape_472_layer_call_and_return_conditional_losses_10632023

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
value	B : 2
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
:��������� 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_reshape_473_layer_call_and_return_conditional_losses_10632465

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
value	B :2
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
:���������2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
G__inference_dense_236_layer_call_and_return_conditional_losses_10632442

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
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
serving_default_input:0���������F

conv2d_9048
StatefulPartitionedCall:0���������tensorflow/serving/predict:�i
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer-7
	layer_with_weights-1
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
*a&call_and_return_all_conditional_losses
b__call__
c_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
*d&call_and_return_all_conditional_losses
e__call__"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
*f&call_and_return_all_conditional_losses
g__call__"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
*h&call_and_return_all_conditional_losses
i__call__"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
*j&call_and_return_all_conditional_losses
k__call__"
_tf_keras_layer
�

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
*l&call_and_return_all_conditional_losses
m__call__"
_tf_keras_layer
�
+iter

,beta_1

-beta_2
	.decay
/learning_ratemYmZ%m[&m\v]v^%v_&v`"
	optimizer
<
0
1
%2
&3"
trackable_list_wrapper
<
0
1
%2
&3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0metrics
	variables
1layer_regularization_losses
2layer_metrics

3layers
4non_trainable_variables
trainable_variables
regularization_losses
b__call__
c_default_save_signature
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
,
nserving_default"
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
5metrics
	variables
6layer_regularization_losses
7layer_metrics

8layers
9non_trainable_variables
trainable_variables
regularization_losses
e__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
:metrics
	variables
;layer_regularization_losses
<layer_metrics

=layers
>non_trainable_variables
trainable_variables
regularization_losses
g__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
$:"   2dense_236/kernel
:  2dense_236/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
?metrics
	variables
@layer_regularization_losses
Alayer_metrics

Blayers
Cnon_trainable_variables
trainable_variables
regularization_losses
i__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Dmetrics
!	variables
Elayer_regularization_losses
Flayer_metrics

Glayers
Hnon_trainable_variables
"trainable_variables
#regularization_losses
k__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv2d_904/kernel
: 2conv2d_904/bias
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
Imetrics
'	variables
Jlayer_regularization_losses
Klayer_metrics

Llayers
Mnon_trainable_variables
(trainable_variables
)regularization_losses
m__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
:	  (2	Adam/iter
:  (2Adam/beta_1
:  (2Adam/beta_2
:  (2
Adam/decay
:  (2Adam/learning_rate
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
_
0
1
2
3
4
5
6
7
	8"
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
	Ptotal
	Qcount
R	variables
S	keras_api"
_tf_keras_metric
^
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
P0
Q1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
T0
U1"
trackable_list_wrapper
-
W	variables"
_generic_user_object
):'   2Adam/dense_236/kernel/m
#:!  2Adam/dense_236/bias/m
2:0 2Adam/conv2d_904/kernel/m
$:" 2Adam/conv2d_904/bias/m
):'   2Adam/dense_236/kernel/v
#:!  2Adam/dense_236/bias/v
2:0 2Adam/conv2d_904/kernel/v
$:" 2Adam/conv2d_904/bias/v
�2�
G__inference_model_236_layer_call_and_return_conditional_losses_10632318
G__inference_model_236_layer_call_and_return_conditional_losses_10632371
G__inference_model_236_layer_call_and_return_conditional_losses_10632217
G__inference_model_236_layer_call_and_return_conditional_losses_10632244�
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
,__inference_model_236_layer_call_fn_10632086
,__inference_model_236_layer_call_fn_10632384
,__inference_model_236_layer_call_fn_10632397
,__inference_model_236_layer_call_fn_10632190�
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
#__inference__wrapped_model_10631980input"�
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
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_10632409�
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
7__inference_range_conversion_236_layer_call_fn_10632414�
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
I__inference_reshape_472_layer_call_and_return_conditional_losses_10632426�
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
.__inference_reshape_472_layer_call_fn_10632431�
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
G__inference_dense_236_layer_call_and_return_conditional_losses_10632442�
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
,__inference_dense_236_layer_call_fn_10632451�
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
I__inference_reshape_473_layer_call_and_return_conditional_losses_10632465�
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
.__inference_reshape_473_layer_call_fn_10632470�
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
H__inference_conv2d_904_layer_call_and_return_conditional_losses_10632480�
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
-__inference_conv2d_904_layer_call_fn_10632489�
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
&__inference_signature_wrapper_10632265input"�
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
#__inference__wrapped_model_10631980%&6�3
,�)
'�$
input���������
� "?�<
:

conv2d_904,�)

conv2d_904����������
H__inference_conv2d_904_layer_call_and_return_conditional_losses_10632480l%&7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
-__inference_conv2d_904_layer_call_fn_10632489_%&7�4
-�*
(�%
inputs���������
� " �����������
G__inference_dense_236_layer_call_and_return_conditional_losses_10632442\/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� 
,__inference_dense_236_layer_call_fn_10632451O/�,
%�"
 �
inputs��������� 
� "���������� �
G__inference_model_236_layer_call_and_return_conditional_losses_10632217u%&>�;
4�1
'�$
input���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_model_236_layer_call_and_return_conditional_losses_10632244u%&>�;
4�1
'�$
input���������
p

 
� "-�*
#� 
0���������
� �
G__inference_model_236_layer_call_and_return_conditional_losses_10632318v%&?�<
5�2
(�%
inputs���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_model_236_layer_call_and_return_conditional_losses_10632371v%&?�<
5�2
(�%
inputs���������
p

 
� "-�*
#� 
0���������
� �
,__inference_model_236_layer_call_fn_10632086h%&>�;
4�1
'�$
input���������
p 

 
� " �����������
,__inference_model_236_layer_call_fn_10632190h%&>�;
4�1
'�$
input���������
p

 
� " �����������
,__inference_model_236_layer_call_fn_10632384i%&?�<
5�2
(�%
inputs���������
p 

 
� " �����������
,__inference_model_236_layer_call_fn_10632397i%&?�<
5�2
(�%
inputs���������
p

 
� " �����������
R__inference_range_conversion_236_layer_call_and_return_conditional_losses_10632409l;�8
1�.
,�)

parameters���������
� "-�*
#� 
0���������
� �
7__inference_range_conversion_236_layer_call_fn_10632414_;�8
1�.
,�)

parameters���������
� " �����������
I__inference_reshape_472_layer_call_and_return_conditional_losses_10632426`7�4
-�*
(�%
inputs���������
� "%�"
�
0��������� 
� �
.__inference_reshape_472_layer_call_fn_10632431S7�4
-�*
(�%
inputs���������
� "���������� �
I__inference_reshape_473_layer_call_and_return_conditional_losses_10632465`/�,
%�"
 �
inputs��������� 
� "-�*
#� 
0���������
� �
.__inference_reshape_473_layer_call_fn_10632470S/�,
%�"
 �
inputs��������� 
� " �����������
&__inference_signature_wrapper_10632265�%&?�<
� 
5�2
0
input'�$
input���������"?�<
:

conv2d_904,�)

conv2d_904���������