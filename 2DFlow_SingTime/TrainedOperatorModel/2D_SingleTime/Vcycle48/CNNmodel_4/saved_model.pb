рЩ
пЕ
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.22v2.6.1-9-gc2363d6d0258ГЧ
|
dense_319/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_319/kernel
u
$dense_319/kernel/Read/ReadVariableOpReadVariableOpdense_319/kernel*
_output_shapes

:  *
dtype0
t
dense_319/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_319/bias
m
"dense_319/bias/Read/ReadVariableOpReadVariableOpdense_319/bias*
_output_shapes
: *
dtype0

conv2d_1287/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_1287/kernel

&conv2d_1287/kernel/Read/ReadVariableOpReadVariableOpconv2d_1287/kernel*&
_output_shapes
:*
dtype0
x
conv2d_1287/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_1287/bias
q
$conv2d_1287/bias/Read/ReadVariableOpReadVariableOpconv2d_1287/bias*
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

Adam/dense_319/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_319/kernel/m

+Adam/dense_319/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_319/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_319/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_319/bias/m
{
)Adam/dense_319/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_319/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_1287/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1287/kernel/m

-Adam/conv2d_1287/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1287/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_1287/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1287/bias/m

+Adam/conv2d_1287/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1287/bias/m*
_output_shapes
:*
dtype0

Adam/dense_319/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_319/kernel/v

+Adam/dense_319/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_319/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_319/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_319/bias/v
{
)Adam/dense_319/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_319/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_1287/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_1287/kernel/v

-Adam/conv2d_1287/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1287/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_1287/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_1287/bias/v

+Adam/conv2d_1287/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1287/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
з$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*$
value$B$ Bў#

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

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
­
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
­
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
­
:metrics
	variables
;layer_regularization_losses
<layer_metrics

=layers
>non_trainable_variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_319/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_319/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
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
­
Dmetrics
!	variables
Elayer_regularization_losses
Flayer_metrics

Glayers
Hnon_trainable_variables
"trainable_variables
#regularization_losses
^\
VARIABLE_VALUEconv2d_1287/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1287/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
­
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
VARIABLE_VALUEAdam/dense_319/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_319/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_1287/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1287/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_319/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_319/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_1287/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1287/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ*
dtype0*$
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_319/kerneldense_319/biasconv2d_1287/kernelconv2d_1287/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 */
f*R(
&__inference_signature_wrapper_14710399
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
а
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_319/kernel/Read/ReadVariableOp"dense_319/bias/Read/ReadVariableOp&conv2d_1287/kernel/Read/ReadVariableOp$conv2d_1287/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_319/kernel/m/Read/ReadVariableOp)Adam/dense_319/bias/m/Read/ReadVariableOp-Adam/conv2d_1287/kernel/m/Read/ReadVariableOp+Adam/conv2d_1287/bias/m/Read/ReadVariableOp+Adam/dense_319/kernel/v/Read/ReadVariableOp)Adam/dense_319/bias/v/Read/ReadVariableOp-Adam/conv2d_1287/kernel/v/Read/ReadVariableOp+Adam/conv2d_1287/bias/v/Read/ReadVariableOpConst*"
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
GPU2*0,1J 8 **
f%R#
!__inference__traced_save_14710709
Ї
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_319/kerneldense_319/biasconv2d_1287/kernelconv2d_1287/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_319/kernel/mAdam/dense_319/bias/mAdam/conv2d_1287/kernel/mAdam/conv2d_1287/bias/mAdam/dense_319/kernel/vAdam/dense_319/bias/vAdam/conv2d_1287/kernel/vAdam/conv2d_1287/bias/v*!
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
GPU2*0,1J 8 *-
f(R&
$__inference__traced_restore_14710782вш
а*
Ь
G__inference_model_319_layer_call_and_return_conditional_losses_14710209

inputs$
dense_319_14710171:   
dense_319_14710173: .
conv2d_1287_14710203:"
conv2d_1287_14710205:
identityЂ#conv2d_1287/StatefulPartitionedCallЂ!dense_319/StatefulPartitionedCallЕ
0tf.__operators__.getitem_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_634/strided_slice/stackЙ
2tf.__operators__.getitem_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_634/strided_slice/stack_1Й
2tf.__operators__.getitem_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_634/strided_slice/stack_2
*tf.__operators__.getitem_634/strided_sliceStridedSliceinputs9tf.__operators__.getitem_634/strided_slice/stack:output:0;tf.__operators__.getitem_634/strided_slice/stack_1:output:0;tf.__operators__.getitem_634/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_634/strided_sliceД
$range_conversion_319/PartitionedCallPartitionedCall3tf.__operators__.getitem_634/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_147101372&
$range_conversion_319/PartitionedCallЕ
0tf.__operators__.getitem_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_635/strided_slice/stackЙ
2tf.__operators__.getitem_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_635/strided_slice/stack_1Й
2tf.__operators__.getitem_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_635/strided_slice/stack_2
*tf.__operators__.getitem_635/strided_sliceStridedSliceinputs9tf.__operators__.getitem_635/strided_slice/stack:output:0;tf.__operators__.getitem_635/strided_slice/stack_1:output:0;tf.__operators__.getitem_635/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_635/strided_slicex
tf.concat_801/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_801/concat/axis
tf.concat_801/concatConcatV2-range_conversion_319/PartitionedCall:output:03tf.__operators__.getitem_635/strided_slice:output:0"tf.concat_801/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_801/concatћ
reshape_638/PartitionedCallPartitionedCalltf.concat_801/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_638_layer_call_and_return_conditional_losses_147101572
reshape_638/PartitionedCallТ
!dense_319/StatefulPartitionedCallStatefulPartitionedCall$reshape_638/PartitionedCall:output:0dense_319_14710171dense_319_14710173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_319_layer_call_and_return_conditional_losses_147101702#
!dense_319/StatefulPartitionedCall
reshape_639/PartitionedCallPartitionedCall*dense_319/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_639_layer_call_and_return_conditional_losses_147101902
reshape_639/PartitionedCallд
#conv2d_1287/StatefulPartitionedCallStatefulPartitionedCall$reshape_639/PartitionedCall:output:0conv2d_1287_14710203conv2d_1287_14710205*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_conv2d_1287_layer_call_and_return_conditional_losses_147102022%
#conv2d_1287/StatefulPartitionedCall
IdentityIdentity,conv2d_1287/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp$^conv2d_1287/StatefulPartitionedCall"^dense_319/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 2J
#conv2d_1287/StatefulPartitionedCall#conv2d_1287/StatefulPartitionedCall2F
!dense_319/StatefulPartitionedCall!dense_319/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ј
G__inference_dense_319_layer_call_and_return_conditional_losses_14710170

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

W
7__inference_range_conversion_319_layer_call_fn_14710548

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
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_147101372
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:[ W
/
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
parameters

ј
G__inference_dense_319_layer_call_and_return_conditional_losses_14710576

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Я\
Ь
$__inference__traced_restore_14710782
file_prefix3
!assignvariableop_dense_319_kernel:  /
!assignvariableop_1_dense_319_bias: ?
%assignvariableop_2_conv2d_1287_kernel:1
#assignvariableop_3_conv2d_1287_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: =
+assignvariableop_13_adam_dense_319_kernel_m:  7
)assignvariableop_14_adam_dense_319_bias_m: G
-assignvariableop_15_adam_conv2d_1287_kernel_m:9
+assignvariableop_16_adam_conv2d_1287_bias_m:=
+assignvariableop_17_adam_dense_319_kernel_v:  7
)assignvariableop_18_adam_dense_319_bias_v: G
-assignvariableop_19_adam_conv2d_1287_kernel_v:9
+assignvariableop_20_adam_conv2d_1287_bias_v:
identity_22ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9и
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ф

valueк
Bз
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesК
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
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

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_319_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_319_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Њ
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv2d_1287_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ј
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv2d_1287_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4Ё
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѓ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ѓ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ђ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Њ
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ё
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ѓ
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ѓ
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Г
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_dense_319_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Б
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_319_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Е
AssignVariableOp_15AssignVariableOp-assignvariableop_15_adam_conv2d_1287_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Г
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_conv2d_1287_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Г
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_319_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Б
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_319_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Е
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adam_conv2d_1287_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Г
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_1287_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЌ
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22
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

e
I__inference_reshape_638_layer_call_and_return_conditional_losses_14710157

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
value	B : 2
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
:џџџџџџџџџ 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
ж
,__inference_model_319_layer_call_fn_14710220	
input
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_319_layer_call_and_return_conditional_losses_147102092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
а*
Ь
G__inference_model_319_layer_call_and_return_conditional_losses_14710300

inputs$
dense_319_14710288:   
dense_319_14710290: .
conv2d_1287_14710294:"
conv2d_1287_14710296:
identityЂ#conv2d_1287/StatefulPartitionedCallЂ!dense_319/StatefulPartitionedCallЕ
0tf.__operators__.getitem_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_634/strided_slice/stackЙ
2tf.__operators__.getitem_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_634/strided_slice/stack_1Й
2tf.__operators__.getitem_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_634/strided_slice/stack_2
*tf.__operators__.getitem_634/strided_sliceStridedSliceinputs9tf.__operators__.getitem_634/strided_slice/stack:output:0;tf.__operators__.getitem_634/strided_slice/stack_1:output:0;tf.__operators__.getitem_634/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_634/strided_sliceД
$range_conversion_319/PartitionedCallPartitionedCall3tf.__operators__.getitem_634/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_147101372&
$range_conversion_319/PartitionedCallЕ
0tf.__operators__.getitem_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_635/strided_slice/stackЙ
2tf.__operators__.getitem_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_635/strided_slice/stack_1Й
2tf.__operators__.getitem_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_635/strided_slice/stack_2
*tf.__operators__.getitem_635/strided_sliceStridedSliceinputs9tf.__operators__.getitem_635/strided_slice/stack:output:0;tf.__operators__.getitem_635/strided_slice/stack_1:output:0;tf.__operators__.getitem_635/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_635/strided_slicex
tf.concat_801/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_801/concat/axis
tf.concat_801/concatConcatV2-range_conversion_319/PartitionedCall:output:03tf.__operators__.getitem_635/strided_slice:output:0"tf.concat_801/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_801/concatћ
reshape_638/PartitionedCallPartitionedCalltf.concat_801/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_638_layer_call_and_return_conditional_losses_147101572
reshape_638/PartitionedCallТ
!dense_319/StatefulPartitionedCallStatefulPartitionedCall$reshape_638/PartitionedCall:output:0dense_319_14710288dense_319_14710290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_319_layer_call_and_return_conditional_losses_147101702#
!dense_319/StatefulPartitionedCall
reshape_639/PartitionedCallPartitionedCall*dense_319/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_639_layer_call_and_return_conditional_losses_147101902
reshape_639/PartitionedCallд
#conv2d_1287/StatefulPartitionedCallStatefulPartitionedCall$reshape_639/PartitionedCall:output:0conv2d_1287_14710294conv2d_1287_14710296*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_conv2d_1287_layer_call_and_return_conditional_losses_147102022%
#conv2d_1287/StatefulPartitionedCall
IdentityIdentity,conv2d_1287/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp$^conv2d_1287/StatefulPartitionedCall"^dense_319/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 2J
#conv2d_1287/StatefulPartitionedCall#conv2d_1287/StatefulPartitionedCall2F
!dense_319/StatefulPartitionedCall!dense_319/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_reshape_638_layer_call_and_return_conditional_losses_14710560

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
value	B : 2
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
:џџџџџџџџџ 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б4
ю
!__inference__traced_save_14710709
file_prefix/
+savev2_dense_319_kernel_read_readvariableop-
)savev2_dense_319_bias_read_readvariableop1
-savev2_conv2d_1287_kernel_read_readvariableop/
+savev2_conv2d_1287_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_319_kernel_m_read_readvariableop4
0savev2_adam_dense_319_bias_m_read_readvariableop8
4savev2_adam_conv2d_1287_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1287_bias_m_read_readvariableop6
2savev2_adam_dense_319_kernel_v_read_readvariableop4
0savev2_adam_dense_319_bias_v_read_readvariableop8
4savev2_adam_conv2d_1287_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1287_bias_v_read_readvariableop
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
ShardedFilenameв
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ф

valueк
Bз
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesД
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesћ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_319_kernel_read_readvariableop)savev2_dense_319_bias_read_readvariableop-savev2_conv2d_1287_kernel_read_readvariableop+savev2_conv2d_1287_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_319_kernel_m_read_readvariableop0savev2_adam_dense_319_bias_m_read_readvariableop4savev2_adam_conv2d_1287_kernel_m_read_readvariableop2savev2_adam_conv2d_1287_bias_m_read_readvariableop2savev2_adam_dense_319_kernel_v_read_readvariableop0savev2_adam_dense_319_bias_v_read_readvariableop4savev2_adam_conv2d_1287_kernel_v_read_readvariableop2savev2_adam_conv2d_1287_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
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

identity_1Identity_1:output:0*Ѓ
_input_shapes
: :  : ::: : : : : : : : : :  : :::  : ::: 2(
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
Ь*
Ы
G__inference_model_319_layer_call_and_return_conditional_losses_14710351	
input$
dense_319_14710339:   
dense_319_14710341: .
conv2d_1287_14710345:"
conv2d_1287_14710347:
identityЂ#conv2d_1287/StatefulPartitionedCallЂ!dense_319/StatefulPartitionedCallЕ
0tf.__operators__.getitem_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_634/strided_slice/stackЙ
2tf.__operators__.getitem_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_634/strided_slice/stack_1Й
2tf.__operators__.getitem_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_634/strided_slice/stack_2
*tf.__operators__.getitem_634/strided_sliceStridedSliceinput9tf.__operators__.getitem_634/strided_slice/stack:output:0;tf.__operators__.getitem_634/strided_slice/stack_1:output:0;tf.__operators__.getitem_634/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_634/strided_sliceД
$range_conversion_319/PartitionedCallPartitionedCall3tf.__operators__.getitem_634/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_147101372&
$range_conversion_319/PartitionedCallЕ
0tf.__operators__.getitem_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_635/strided_slice/stackЙ
2tf.__operators__.getitem_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_635/strided_slice/stack_1Й
2tf.__operators__.getitem_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_635/strided_slice/stack_2
*tf.__operators__.getitem_635/strided_sliceStridedSliceinput9tf.__operators__.getitem_635/strided_slice/stack:output:0;tf.__operators__.getitem_635/strided_slice/stack_1:output:0;tf.__operators__.getitem_635/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_635/strided_slicex
tf.concat_801/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_801/concat/axis
tf.concat_801/concatConcatV2-range_conversion_319/PartitionedCall:output:03tf.__operators__.getitem_635/strided_slice:output:0"tf.concat_801/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_801/concatћ
reshape_638/PartitionedCallPartitionedCalltf.concat_801/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_638_layer_call_and_return_conditional_losses_147101572
reshape_638/PartitionedCallТ
!dense_319/StatefulPartitionedCallStatefulPartitionedCall$reshape_638/PartitionedCall:output:0dense_319_14710339dense_319_14710341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_319_layer_call_and_return_conditional_losses_147101702#
!dense_319/StatefulPartitionedCall
reshape_639/PartitionedCallPartitionedCall*dense_319/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_639_layer_call_and_return_conditional_losses_147101902
reshape_639/PartitionedCallд
#conv2d_1287/StatefulPartitionedCallStatefulPartitionedCall$reshape_639/PartitionedCall:output:0conv2d_1287_14710345conv2d_1287_14710347*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_conv2d_1287_layer_call_and_return_conditional_losses_147102022%
#conv2d_1287/StatefulPartitionedCall
IdentityIdentity,conv2d_1287/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp$^conv2d_1287/StatefulPartitionedCall"^dense_319/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 2J
#conv2d_1287/StatefulPartitionedCall#conv2d_1287/StatefulPartitionedCall2F
!dense_319/StatefulPartitionedCall!dense_319/StatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
ќ

,__inference_dense_319_layer_call_fn_14710585

inputs
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_319_layer_call_and_return_conditional_losses_147101702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ЙW

#__inference__wrapped_model_14710114	
inputD
2model_319_dense_319_matmul_readvariableop_resource:  A
3model_319_dense_319_biasadd_readvariableop_resource: N
4model_319_conv2d_1287_conv2d_readvariableop_resource:C
5model_319_conv2d_1287_biasadd_readvariableop_resource:
identityЂ,model_319/conv2d_1287/BiasAdd/ReadVariableOpЂ+model_319/conv2d_1287/Conv2D/ReadVariableOpЂ*model_319/dense_319/BiasAdd/ReadVariableOpЂ)model_319/dense_319/MatMul/ReadVariableOpЩ
:model_319/tf.__operators__.getitem_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:model_319/tf.__operators__.getitem_634/strided_slice/stackЭ
<model_319/tf.__operators__.getitem_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_319/tf.__operators__.getitem_634/strided_slice/stack_1Э
<model_319/tf.__operators__.getitem_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_319/tf.__operators__.getitem_634/strided_slice/stack_2П
4model_319/tf.__operators__.getitem_634/strided_sliceStridedSliceinputCmodel_319/tf.__operators__.getitem_634/strided_slice/stack:output:0Emodel_319/tf.__operators__.getitem_634/strided_slice/stack_1:output:0Emodel_319/tf.__operators__.getitem_634/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask26
4model_319/tf.__operators__.getitem_634/strided_slice
$model_319/range_conversion_319/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model_319/range_conversion_319/sub/yї
"model_319/range_conversion_319/subSub=model_319/tf.__operators__.getitem_634/strided_slice:output:0-model_319/range_conversion_319/sub/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2$
"model_319/range_conversion_319/sub
(model_319/range_conversion_319/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2*
(model_319/range_conversion_319/truediv/y№
&model_319/range_conversion_319/truedivRealDiv&model_319/range_conversion_319/sub:z:01model_319/range_conversion_319/truediv/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2(
&model_319/range_conversion_319/truediv
$model_319/range_conversion_319/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$model_319/range_conversion_319/mul/yф
"model_319/range_conversion_319/mulMul*model_319/range_conversion_319/truediv:z:0-model_319/range_conversion_319/mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2$
"model_319/range_conversion_319/mul
$model_319/range_conversion_319/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2&
$model_319/range_conversion_319/add/yт
"model_319/range_conversion_319/addAddV2&model_319/range_conversion_319/mul:z:0-model_319/range_conversion_319/add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2$
"model_319/range_conversion_319/addЩ
:model_319/tf.__operators__.getitem_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2<
:model_319/tf.__operators__.getitem_635/strided_slice/stackЭ
<model_319/tf.__operators__.getitem_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2>
<model_319/tf.__operators__.getitem_635/strided_slice/stack_1Э
<model_319/tf.__operators__.getitem_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<model_319/tf.__operators__.getitem_635/strided_slice/stack_2П
4model_319/tf.__operators__.getitem_635/strided_sliceStridedSliceinputCmodel_319/tf.__operators__.getitem_635/strided_slice/stack:output:0Emodel_319/tf.__operators__.getitem_635/strided_slice/stack_1:output:0Emodel_319/tf.__operators__.getitem_635/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask26
4model_319/tf.__operators__.getitem_635/strided_slice
#model_319/tf.concat_801/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_319/tf.concat_801/concat/axisЄ
model_319/tf.concat_801/concatConcatV2&model_319/range_conversion_319/add:z:0=model_319/tf.__operators__.getitem_635/strided_slice:output:0,model_319/tf.concat_801/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2 
model_319/tf.concat_801/concat
model_319/reshape_638/ShapeShape'model_319/tf.concat_801/concat:output:0*
T0*
_output_shapes
:2
model_319/reshape_638/Shape 
)model_319/reshape_638/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_319/reshape_638/strided_slice/stackЄ
+model_319/reshape_638/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_319/reshape_638/strided_slice/stack_1Є
+model_319/reshape_638/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_319/reshape_638/strided_slice/stack_2ц
#model_319/reshape_638/strided_sliceStridedSlice$model_319/reshape_638/Shape:output:02model_319/reshape_638/strided_slice/stack:output:04model_319/reshape_638/strided_slice/stack_1:output:04model_319/reshape_638/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_319/reshape_638/strided_slice
%model_319/reshape_638/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%model_319/reshape_638/Reshape/shape/1о
#model_319/reshape_638/Reshape/shapePack,model_319/reshape_638/strided_slice:output:0.model_319/reshape_638/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2%
#model_319/reshape_638/Reshape/shapeв
model_319/reshape_638/ReshapeReshape'model_319/tf.concat_801/concat:output:0,model_319/reshape_638/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
model_319/reshape_638/ReshapeЩ
)model_319/dense_319/MatMul/ReadVariableOpReadVariableOp2model_319_dense_319_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02+
)model_319/dense_319/MatMul/ReadVariableOpЯ
model_319/dense_319/MatMulMatMul&model_319/reshape_638/Reshape:output:01model_319/dense_319/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
model_319/dense_319/MatMulШ
*model_319/dense_319/BiasAdd/ReadVariableOpReadVariableOp3model_319_dense_319_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_319/dense_319/BiasAdd/ReadVariableOpб
model_319/dense_319/BiasAddBiasAdd$model_319/dense_319/MatMul:product:02model_319/dense_319/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
model_319/dense_319/BiasAdd 
model_319/dense_319/SoftplusSoftplus$model_319/dense_319/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
model_319/dense_319/Softplus
model_319/reshape_639/ShapeShape*model_319/dense_319/Softplus:activations:0*
T0*
_output_shapes
:2
model_319/reshape_639/Shape 
)model_319/reshape_639/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_319/reshape_639/strided_slice/stackЄ
+model_319/reshape_639/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_319/reshape_639/strided_slice/stack_1Є
+model_319/reshape_639/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_319/reshape_639/strided_slice/stack_2ц
#model_319/reshape_639/strided_sliceStridedSlice$model_319/reshape_639/Shape:output:02model_319/reshape_639/strided_slice/stack:output:04model_319/reshape_639/strided_slice/stack_1:output:04model_319/reshape_639/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_319/reshape_639/strided_slice
%model_319/reshape_639/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_319/reshape_639/Reshape/shape/1
%model_319/reshape_639/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_319/reshape_639/Reshape/shape/2
%model_319/reshape_639/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%model_319/reshape_639/Reshape/shape/3О
#model_319/reshape_639/Reshape/shapePack,model_319/reshape_639/strided_slice:output:0.model_319/reshape_639/Reshape/shape/1:output:0.model_319/reshape_639/Reshape/shape/2:output:0.model_319/reshape_639/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#model_319/reshape_639/Reshape/shapeн
model_319/reshape_639/ReshapeReshape*model_319/dense_319/Softplus:activations:0,model_319/reshape_639/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
model_319/reshape_639/Reshapeз
+model_319/conv2d_1287/Conv2D/ReadVariableOpReadVariableOp4model_319_conv2d_1287_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+model_319/conv2d_1287/Conv2D/ReadVariableOp
model_319/conv2d_1287/Conv2DConv2D&model_319/reshape_639/Reshape:output:03model_319/conv2d_1287/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
model_319/conv2d_1287/Conv2DЮ
,model_319/conv2d_1287/BiasAdd/ReadVariableOpReadVariableOp5model_319_conv2d_1287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_319/conv2d_1287/BiasAdd/ReadVariableOpї
model_319/conv2d_1287/BiasAddBiasAdd%model_319/conv2d_1287/Conv2D:output:04model_319/conv2d_1287/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
model_319/conv2d_1287/BiasAdd
IdentityIdentity&model_319/conv2d_1287/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp-^model_319/conv2d_1287/BiasAdd/ReadVariableOp,^model_319/conv2d_1287/Conv2D/ReadVariableOp+^model_319/dense_319/BiasAdd/ReadVariableOp*^model_319/dense_319/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 2\
,model_319/conv2d_1287/BiasAdd/ReadVariableOp,model_319/conv2d_1287/BiasAdd/ReadVariableOp2Z
+model_319/conv2d_1287/Conv2D/ReadVariableOp+model_319/conv2d_1287/Conv2D/ReadVariableOp2X
*model_319/dense_319/BiasAdd/ReadVariableOp*model_319/dense_319/BiasAdd/ReadVariableOp2V
)model_319/dense_319/MatMul/ReadVariableOp)model_319/dense_319/MatMul/ReadVariableOp:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
Ь*
Ы
G__inference_model_319_layer_call_and_return_conditional_losses_14710378	
input$
dense_319_14710366:   
dense_319_14710368: .
conv2d_1287_14710372:"
conv2d_1287_14710374:
identityЂ#conv2d_1287/StatefulPartitionedCallЂ!dense_319/StatefulPartitionedCallЕ
0tf.__operators__.getitem_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_634/strided_slice/stackЙ
2tf.__operators__.getitem_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_634/strided_slice/stack_1Й
2tf.__operators__.getitem_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_634/strided_slice/stack_2
*tf.__operators__.getitem_634/strided_sliceStridedSliceinput9tf.__operators__.getitem_634/strided_slice/stack:output:0;tf.__operators__.getitem_634/strided_slice/stack_1:output:0;tf.__operators__.getitem_634/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_634/strided_sliceД
$range_conversion_319/PartitionedCallPartitionedCall3tf.__operators__.getitem_634/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *[
fVRT
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_147101372&
$range_conversion_319/PartitionedCallЕ
0tf.__operators__.getitem_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_635/strided_slice/stackЙ
2tf.__operators__.getitem_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_635/strided_slice/stack_1Й
2tf.__operators__.getitem_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_635/strided_slice/stack_2
*tf.__operators__.getitem_635/strided_sliceStridedSliceinput9tf.__operators__.getitem_635/strided_slice/stack:output:0;tf.__operators__.getitem_635/strided_slice/stack_1:output:0;tf.__operators__.getitem_635/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_635/strided_slicex
tf.concat_801/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_801/concat/axis
tf.concat_801/concatConcatV2-range_conversion_319/PartitionedCall:output:03tf.__operators__.getitem_635/strided_slice:output:0"tf.concat_801/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_801/concatћ
reshape_638/PartitionedCallPartitionedCalltf.concat_801/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_638_layer_call_and_return_conditional_losses_147101572
reshape_638/PartitionedCallТ
!dense_319/StatefulPartitionedCallStatefulPartitionedCall$reshape_638/PartitionedCall:output:0dense_319_14710366dense_319_14710368*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_dense_319_layer_call_and_return_conditional_losses_147101702#
!dense_319/StatefulPartitionedCall
reshape_639/PartitionedCallPartitionedCall*dense_319/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_639_layer_call_and_return_conditional_losses_147101902
reshape_639/PartitionedCallд
#conv2d_1287/StatefulPartitionedCallStatefulPartitionedCall$reshape_639/PartitionedCall:output:0conv2d_1287_14710372conv2d_1287_14710374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_conv2d_1287_layer_call_and_return_conditional_losses_147102022%
#conv2d_1287/StatefulPartitionedCall
IdentityIdentity,conv2d_1287/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp$^conv2d_1287/StatefulPartitionedCall"^dense_319/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 2J
#conv2d_1287/StatefulPartitionedCall#conv2d_1287/StatefulPartitionedCall2F
!dense_319/StatefulPartitionedCall!dense_319/StatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
Љ
Ѓ
.__inference_conv2d_1287_layer_call_fn_14710623

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_conv2d_1287_layer_call_and_return_conditional_losses_147102022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
М	
r
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_14710137

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
:џџџџџџџџџ2
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
:џџџџџџџџџ2	
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
:џџџџџџџџџ2
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
:џџџџџџџџџ2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:[ W
/
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
parameters
М	
r
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_14710543

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
:џџџџџџџџџ2
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
:џџџџџџџџџ2	
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
:џџџџџџџџџ2
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
:џџџџџџџџџ2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:[ W
/
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
parameters
Ь
а
&__inference_signature_wrapper_14710399	
input
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *,
f'R%
#__inference__wrapped_model_147101142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
Й

I__inference_conv2d_1287_layer_call_and_return_conditional_losses_14710614

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
K
ъ
G__inference_model_319_layer_call_and_return_conditional_losses_14710452

inputs:
(dense_319_matmul_readvariableop_resource:  7
)dense_319_biasadd_readvariableop_resource: D
*conv2d_1287_conv2d_readvariableop_resource:9
+conv2d_1287_biasadd_readvariableop_resource:
identityЂ"conv2d_1287/BiasAdd/ReadVariableOpЂ!conv2d_1287/Conv2D/ReadVariableOpЂ dense_319/BiasAdd/ReadVariableOpЂdense_319/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_634/strided_slice/stackЙ
2tf.__operators__.getitem_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_634/strided_slice/stack_1Й
2tf.__operators__.getitem_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_634/strided_slice/stack_2
*tf.__operators__.getitem_634/strided_sliceStridedSliceinputs9tf.__operators__.getitem_634/strided_slice/stack:output:0;tf.__operators__.getitem_634/strided_slice/stack_1:output:0;tf.__operators__.getitem_634/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_634/strided_slice}
range_conversion_319/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_319/sub/yЯ
range_conversion_319/subSub3tf.__operators__.getitem_634/strided_slice:output:0#range_conversion_319/sub/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/sub
range_conversion_319/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_319/truediv/yШ
range_conversion_319/truedivRealDivrange_conversion_319/sub:z:0'range_conversion_319/truediv/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/truediv}
range_conversion_319/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_319/mul/yМ
range_conversion_319/mulMul range_conversion_319/truediv:z:0#range_conversion_319/mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/mul}
range_conversion_319/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_319/add/yК
range_conversion_319/addAddV2range_conversion_319/mul:z:0#range_conversion_319/add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/addЕ
0tf.__operators__.getitem_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_635/strided_slice/stackЙ
2tf.__operators__.getitem_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_635/strided_slice/stack_1Й
2tf.__operators__.getitem_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_635/strided_slice/stack_2
*tf.__operators__.getitem_635/strided_sliceStridedSliceinputs9tf.__operators__.getitem_635/strided_slice/stack:output:0;tf.__operators__.getitem_635/strided_slice/stack_1:output:0;tf.__operators__.getitem_635/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_635/strided_slicex
tf.concat_801/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_801/concat/axisђ
tf.concat_801/concatConcatV2range_conversion_319/add:z:03tf.__operators__.getitem_635/strided_slice:output:0"tf.concat_801/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_801/concats
reshape_638/ShapeShapetf.concat_801/concat:output:0*
T0*
_output_shapes
:2
reshape_638/Shape
reshape_638/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_638/strided_slice/stack
!reshape_638/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_638/strided_slice/stack_1
!reshape_638/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_638/strided_slice/stack_2Њ
reshape_638/strided_sliceStridedSlicereshape_638/Shape:output:0(reshape_638/strided_slice/stack:output:0*reshape_638/strided_slice/stack_1:output:0*reshape_638/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_638/strided_slice|
reshape_638/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_638/Reshape/shape/1Ж
reshape_638/Reshape/shapePack"reshape_638/strided_slice:output:0$reshape_638/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_638/Reshape/shapeЊ
reshape_638/ReshapeReshapetf.concat_801/concat:output:0"reshape_638/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
reshape_638/ReshapeЋ
dense_319/MatMul/ReadVariableOpReadVariableOp(dense_319_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_319/MatMul/ReadVariableOpЇ
dense_319/MatMulMatMulreshape_638/Reshape:output:0'dense_319/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_319/MatMulЊ
 dense_319/BiasAdd/ReadVariableOpReadVariableOp)dense_319_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_319/BiasAdd/ReadVariableOpЉ
dense_319/BiasAddBiasAdddense_319/MatMul:product:0(dense_319/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_319/BiasAdd
dense_319/SoftplusSoftplusdense_319/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_319/Softplusv
reshape_639/ShapeShape dense_319/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_639/Shape
reshape_639/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_639/strided_slice/stack
!reshape_639/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_639/strided_slice/stack_1
!reshape_639/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_639/strided_slice/stack_2Њ
reshape_639/strided_sliceStridedSlicereshape_639/Shape:output:0(reshape_639/strided_slice/stack:output:0*reshape_639/strided_slice/stack_1:output:0*reshape_639/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_639/strided_slice|
reshape_639/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_639/Reshape/shape/1|
reshape_639/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_639/Reshape/shape/2|
reshape_639/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_639/Reshape/shape/3
reshape_639/Reshape/shapePack"reshape_639/strided_slice:output:0$reshape_639/Reshape/shape/1:output:0$reshape_639/Reshape/shape/2:output:0$reshape_639/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_639/Reshape/shapeЕ
reshape_639/ReshapeReshape dense_319/Softplus:activations:0"reshape_639/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
reshape_639/ReshapeЙ
!conv2d_1287/Conv2D/ReadVariableOpReadVariableOp*conv2d_1287_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1287/Conv2D/ReadVariableOpє
conv2d_1287/Conv2DConv2Dreshape_639/Reshape:output:0)conv2d_1287/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1287/Conv2DА
"conv2d_1287/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1287/BiasAdd/ReadVariableOpЯ
conv2d_1287/BiasAddBiasAddconv2d_1287/Conv2D:output:0*conv2d_1287/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_1287/BiasAdd
IdentityIdentityconv2d_1287/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp#^conv2d_1287/BiasAdd/ReadVariableOp"^conv2d_1287/Conv2D/ReadVariableOp!^dense_319/BiasAdd/ReadVariableOp ^dense_319/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 2H
"conv2d_1287/BiasAdd/ReadVariableOp"conv2d_1287/BiasAdd/ReadVariableOp2F
!conv2d_1287/Conv2D/ReadVariableOp!conv2d_1287/Conv2D/ReadVariableOp2D
 dense_319/BiasAdd/ReadVariableOp dense_319/BiasAdd/ReadVariableOp2B
dense_319/MatMul/ReadVariableOpdense_319/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_reshape_639_layer_call_and_return_conditional_losses_14710190

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
:џџџџџџџџџ2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
љ
з
,__inference_model_319_layer_call_fn_14710531

inputs
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_319_layer_call_and_return_conditional_losses_147103002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ
з
,__inference_model_319_layer_call_fn_14710518

inputs
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_319_layer_call_and_return_conditional_losses_147102092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_reshape_639_layer_call_and_return_conditional_losses_14710599

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
:џџџџџџџџџ2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
K
ъ
G__inference_model_319_layer_call_and_return_conditional_losses_14710505

inputs:
(dense_319_matmul_readvariableop_resource:  7
)dense_319_biasadd_readvariableop_resource: D
*conv2d_1287_conv2d_readvariableop_resource:9
+conv2d_1287_biasadd_readvariableop_resource:
identityЂ"conv2d_1287/BiasAdd/ReadVariableOpЂ!conv2d_1287/Conv2D/ReadVariableOpЂ dense_319/BiasAdd/ReadVariableOpЂdense_319/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_634/strided_slice/stackЙ
2tf.__operators__.getitem_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_634/strided_slice/stack_1Й
2tf.__operators__.getitem_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_634/strided_slice/stack_2
*tf.__operators__.getitem_634/strided_sliceStridedSliceinputs9tf.__operators__.getitem_634/strided_slice/stack:output:0;tf.__operators__.getitem_634/strided_slice/stack_1:output:0;tf.__operators__.getitem_634/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_634/strided_slice}
range_conversion_319/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_319/sub/yЯ
range_conversion_319/subSub3tf.__operators__.getitem_634/strided_slice:output:0#range_conversion_319/sub/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/sub
range_conversion_319/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2 
range_conversion_319/truediv/yШ
range_conversion_319/truedivRealDivrange_conversion_319/sub:z:0'range_conversion_319/truediv/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/truediv}
range_conversion_319/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_319/mul/yМ
range_conversion_319/mulMul range_conversion_319/truediv:z:0#range_conversion_319/mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/mul}
range_conversion_319/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_319/add/yК
range_conversion_319/addAddV2range_conversion_319/mul:z:0#range_conversion_319/add/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
range_conversion_319/addЕ
0tf.__operators__.getitem_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_635/strided_slice/stackЙ
2tf.__operators__.getitem_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_635/strided_slice/stack_1Й
2tf.__operators__.getitem_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_635/strided_slice/stack_2
*tf.__operators__.getitem_635/strided_sliceStridedSliceinputs9tf.__operators__.getitem_635/strided_slice/stack:output:0;tf.__operators__.getitem_635/strided_slice/stack_1:output:0;tf.__operators__.getitem_635/strided_slice/stack_2:output:0*
Index0*
T0*/
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask2,
*tf.__operators__.getitem_635/strided_slicex
tf.concat_801/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_801/concat/axisђ
tf.concat_801/concatConcatV2range_conversion_319/add:z:03tf.__operators__.getitem_635/strided_slice:output:0"tf.concat_801/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ2
tf.concat_801/concats
reshape_638/ShapeShapetf.concat_801/concat:output:0*
T0*
_output_shapes
:2
reshape_638/Shape
reshape_638/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_638/strided_slice/stack
!reshape_638/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_638/strided_slice/stack_1
!reshape_638/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_638/strided_slice/stack_2Њ
reshape_638/strided_sliceStridedSlicereshape_638/Shape:output:0(reshape_638/strided_slice/stack:output:0*reshape_638/strided_slice/stack_1:output:0*reshape_638/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_638/strided_slice|
reshape_638/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_638/Reshape/shape/1Ж
reshape_638/Reshape/shapePack"reshape_638/strided_slice:output:0$reshape_638/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_638/Reshape/shapeЊ
reshape_638/ReshapeReshapetf.concat_801/concat:output:0"reshape_638/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
reshape_638/ReshapeЋ
dense_319/MatMul/ReadVariableOpReadVariableOp(dense_319_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_319/MatMul/ReadVariableOpЇ
dense_319/MatMulMatMulreshape_638/Reshape:output:0'dense_319/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_319/MatMulЊ
 dense_319/BiasAdd/ReadVariableOpReadVariableOp)dense_319_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_319/BiasAdd/ReadVariableOpЉ
dense_319/BiasAddBiasAdddense_319/MatMul:product:0(dense_319/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_319/BiasAdd
dense_319/SoftplusSoftplusdense_319/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_319/Softplusv
reshape_639/ShapeShape dense_319/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_639/Shape
reshape_639/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_639/strided_slice/stack
!reshape_639/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_639/strided_slice/stack_1
!reshape_639/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_639/strided_slice/stack_2Њ
reshape_639/strided_sliceStridedSlicereshape_639/Shape:output:0(reshape_639/strided_slice/stack:output:0*reshape_639/strided_slice/stack_1:output:0*reshape_639/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_639/strided_slice|
reshape_639/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_639/Reshape/shape/1|
reshape_639/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_639/Reshape/shape/2|
reshape_639/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_639/Reshape/shape/3
reshape_639/Reshape/shapePack"reshape_639/strided_slice:output:0$reshape_639/Reshape/shape/1:output:0$reshape_639/Reshape/shape/2:output:0$reshape_639/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_639/Reshape/shapeЕ
reshape_639/ReshapeReshape dense_319/Softplus:activations:0"reshape_639/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2
reshape_639/ReshapeЙ
!conv2d_1287/Conv2D/ReadVariableOpReadVariableOp*conv2d_1287_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv2d_1287/Conv2D/ReadVariableOpє
conv2d_1287/Conv2DConv2Dreshape_639/Reshape:output:0)conv2d_1287/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW*
paddingSAME*
strides
2
conv2d_1287/Conv2DА
"conv2d_1287/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv2d_1287/BiasAdd/ReadVariableOpЯ
conv2d_1287/BiasAddBiasAddconv2d_1287/Conv2D:output:0*conv2d_1287/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
data_formatNCHW2
conv2d_1287/BiasAdd
IdentityIdentityconv2d_1287/BiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityм
NoOpNoOp#^conv2d_1287/BiasAdd/ReadVariableOp"^conv2d_1287/Conv2D/ReadVariableOp!^dense_319/BiasAdd/ReadVariableOp ^dense_319/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 2H
"conv2d_1287/BiasAdd/ReadVariableOp"conv2d_1287/BiasAdd/ReadVariableOp2F
!conv2d_1287/Conv2D/ReadVariableOp!conv2d_1287/Conv2D/ReadVariableOp2D
 dense_319/BiasAdd/ReadVariableOp dense_319/BiasAdd/ReadVariableOp2B
dense_319/MatMul/ReadVariableOpdense_319/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
л
J
.__inference_reshape_638_layer_call_fn_14710565

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
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_638_layer_call_and_return_conditional_losses_147101572
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
ж
,__inference_model_319_layer_call_fn_14710324	
input
unknown:  
	unknown_0: #
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *P
fKRI
G__inference_model_319_layer_call_and_return_conditional_losses_147103002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:џџџџџџџџџ

_user_specified_nameinput
Й

I__inference_conv2d_1287_layer_call_and_return_conditional_losses_14710202

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpК
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
data_formatNCHW2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
л
J
.__inference_reshape_639_layer_call_fn_14710604

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
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *R
fMRK
I__inference_reshape_639_layer_call_and_return_conditional_losses_147101902
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*К
serving_defaultІ
?
input6
serving_default_input:0џџџџџџџџџG
conv2d_12878
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:иi

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
Ѕ
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
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
*f&call_and_return_all_conditional_losses
g__call__"
_tf_keras_layer
Л

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
*h&call_and_return_all_conditional_losses
i__call__"
_tf_keras_layer
Ѕ
!	variables
"trainable_variables
#regularization_losses
$	keras_api
*j&call_and_return_all_conditional_losses
k__call__"
_tf_keras_layer
Л

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
*l&call_and_return_all_conditional_losses
m__call__"
_tf_keras_layer

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
Ъ
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
­
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
­
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
$:"   2dense_319/kernel
:  2dense_319/bias
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
­
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
­
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
.:, 2conv2d_1287/kernel
 : 2conv2d_1287/bias
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
­
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
):'   2Adam/dense_319/kernel/m
#:!  2Adam/dense_319/bias/m
3:1 2Adam/conv2d_1287/kernel/m
%:# 2Adam/conv2d_1287/bias/m
):'   2Adam/dense_319/kernel/v
#:!  2Adam/dense_319/bias/v
3:1 2Adam/conv2d_1287/kernel/v
%:# 2Adam/conv2d_1287/bias/v
ъ2ч
G__inference_model_319_layer_call_and_return_conditional_losses_14710452
G__inference_model_319_layer_call_and_return_conditional_losses_14710505
G__inference_model_319_layer_call_and_return_conditional_losses_14710351
G__inference_model_319_layer_call_and_return_conditional_losses_14710378Р
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
,__inference_model_319_layer_call_fn_14710220
,__inference_model_319_layer_call_fn_14710518
,__inference_model_319_layer_call_fn_14710531
,__inference_model_319_layer_call_fn_14710324Р
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
#__inference__wrapped_model_14710114input"
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
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_14710543І
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
7__inference_range_conversion_319_layer_call_fn_14710548І
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
ѓ2№
I__inference_reshape_638_layer_call_and_return_conditional_losses_14710560Ђ
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
.__inference_reshape_638_layer_call_fn_14710565Ђ
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
G__inference_dense_319_layer_call_and_return_conditional_losses_14710576Ђ
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
,__inference_dense_319_layer_call_fn_14710585Ђ
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
I__inference_reshape_639_layer_call_and_return_conditional_losses_14710599Ђ
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
.__inference_reshape_639_layer_call_fn_14710604Ђ
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
I__inference_conv2d_1287_layer_call_and_return_conditional_losses_14710614Ђ
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
.__inference_conv2d_1287_layer_call_fn_14710623Ђ
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
&__inference_signature_wrapper_14710399input"
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
 Љ
#__inference__wrapped_model_14710114%&6Ђ3
,Ђ)
'$
inputџџџџџџџџџ
Њ "AЊ>
<
conv2d_1287-*
conv2d_1287џџџџџџџџџЙ
I__inference_conv2d_1287_layer_call_and_return_conditional_losses_14710614l%&7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
.__inference_conv2d_1287_layer_call_fn_14710623_%&7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ " џџџџџџџџџЇ
G__inference_dense_319_layer_call_and_return_conditional_losses_14710576\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "%Ђ"

0џџџџџџџџџ 
 
,__inference_dense_319_layer_call_fn_14710585O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "џџџџџџџџџ Р
G__inference_model_319_layer_call_and_return_conditional_losses_14710351u%&>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Р
G__inference_model_319_layer_call_and_return_conditional_losses_14710378u%&>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 С
G__inference_model_319_layer_call_and_return_conditional_losses_14710452v%&?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 С
G__inference_model_319_layer_call_and_return_conditional_losses_14710505v%&?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 
,__inference_model_319_layer_call_fn_14710220h%&>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p 

 
Њ " џџџџџџџџџ
,__inference_model_319_layer_call_fn_14710324h%&>Ђ;
4Ђ1
'$
inputџџџџџџџџџ
p

 
Њ " џџџџџџџџџ
,__inference_model_319_layer_call_fn_14710518i%&?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ " џџџџџџџџџ
,__inference_model_319_layer_call_fn_14710531i%&?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ " џџџџџџџџџТ
R__inference_range_conversion_319_layer_call_and_return_conditional_losses_14710543l;Ђ8
1Ђ.
,)

parametersџџџџџџџџџ
Њ "-Ђ*
# 
0џџџџџџџџџ
 
7__inference_range_conversion_319_layer_call_fn_14710548_;Ђ8
1Ђ.
,)

parametersџџџџџџџџџ
Њ " џџџџџџџџџ­
I__inference_reshape_638_layer_call_and_return_conditional_losses_14710560`7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ 
 
.__inference_reshape_638_layer_call_fn_14710565S7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "џџџџџџџџџ ­
I__inference_reshape_639_layer_call_and_return_conditional_losses_14710599`/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџ
 
.__inference_reshape_639_layer_call_fn_14710604S/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ " џџџџџџџџџЕ
&__inference_signature_wrapper_14710399%&?Ђ<
Ђ 
5Њ2
0
input'$
inputџџџџџџџџџ"AЊ>
<
conv2d_1287-*
conv2d_1287џџџџџџџџџ