ым
ЪЁ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
╓
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258╟│
z
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_34/kernel
s
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes

:  *
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
: *
dtype0
И
conv3d_92/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_92/kernel
Б
$conv3d_92/kernel/Read/ReadVariableOpReadVariableOpconv3d_92/kernel**
_output_shapes
:*
dtype0
t
conv3d_92/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_92/bias
m
"conv3d_92/bias/Read/ReadVariableOpReadVariableOpconv3d_92/bias*
_output_shapes
:*
dtype0

NoOpNoOp
С
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╠
value┬B┐ B╕
Л
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api

	keras_api

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api

0
1
$2
%3

0
1
$2
%3
 
н

	variables
*layer_regularization_losses

+layers
trainable_variables
,non_trainable_variables
-metrics
.layer_metrics
regularization_losses
 
 
 
 
 
н
	variables
/layer_regularization_losses

0layers
trainable_variables
1non_trainable_variables
2metrics
3layer_metrics
regularization_losses
 
 
 
 
 
н
	variables
4layer_regularization_losses

5layers
trainable_variables
6non_trainable_variables
7metrics
8layer_metrics
regularization_losses
[Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_34/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
	variables
9layer_regularization_losses

:layers
trainable_variables
;non_trainable_variables
<metrics
=layer_metrics
regularization_losses
 
 
 
н
 	variables
>layer_regularization_losses

?layers
!trainable_variables
@non_trainable_variables
Ametrics
Blayer_metrics
"regularization_losses
\Z
VARIABLE_VALUEconv3d_92/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_92/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
н
&	variables
Clayer_regularization_losses

Dlayers
'trainable_variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
(regularization_losses
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
 
 
Р
serving_default_inputPlaceholder*3
_output_shapes!
:         *
dtype0*(
shape:         
Т
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_34/kerneldense_34/biasconv3d_92/kernelconv3d_92/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *.
f)R'
%__inference_signature_wrapper_7149103
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╜
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp$conv3d_92/kernel/Read/ReadVariableOp"conv3d_92/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU2 *0,1,2,3J 8В *)
f$R"
 __inference__traced_save_7149365
ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_34/kerneldense_34/biasconv3d_92/kernelconv3d_92/bias*
Tin	
2*
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
GPU2 *0,1,2,3J 8В *,
f'R%
#__inference__traced_restore_7149387░М
Ъ
c
G__inference_reshape_68_layer_call_and_return_conditional_losses_7149271

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
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:          2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
■
Ч
*__inference_dense_34_layer_call_fn_7149280

inputs
unknown:  
	unknown_0: 
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_71488792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
М	
╪
*__inference_model_34_layer_call_fn_7148930	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_34_layer_call_and_return_conditional_losses_71489192
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
У
Ў
E__inference_dense_34_layer_call_and_return_conditional_losses_7148879

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:          2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
█
є
#__inference__traced_restore_7149387
file_prefix2
 assignvariableop_dense_34_kernel:  .
 assignvariableop_1_dense_34_bias: A
#assignvariableop_2_conv3d_92_kernel:/
!assignvariableop_3_conv3d_92_bias:

identity_5ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вAssignVariableOp_3Г
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*П
valueЕBВB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesШ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slices─
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_dense_34_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1е
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_34_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2и
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_92_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3ж
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_92_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp║

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4c

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_5д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
М	
╪
*__inference_model_34_layer_call_fn_7149034	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_34_layer_call_and_return_conditional_losses_71490102
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
Ъ
c
G__inference_reshape_69_layer_call_and_return_conditional_losses_7148900

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
Reshape/shape/4╘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ъ
c
G__inference_reshape_68_layer_call_and_return_conditional_losses_7148866

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
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:          2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╣*
┴
E__inference_model_34_layer_call_and_return_conditional_losses_7149010

inputs"
dense_34_7148998:  
dense_34_7149000: /
conv3d_92_7149004:
conv3d_92_7149006:
identityИв!conv3d_92/StatefulPartitionedCallв dense_34/StatefulPartitionedCall│
/tf.__operators__.getitem_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_66/strided_slice/stack╖
1tf.__operators__.getitem_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_66/strided_slice/stack_1╖
1tf.__operators__.getitem_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_66/strided_slice/stack_2Н
)tf.__operators__.getitem_66/strided_sliceStridedSliceinputs8tf.__operators__.getitem_66/strided_slice/stack:output:0:tf.__operators__.getitem_66/strided_slice/stack_1:output:0:tf.__operators__.getitem_66/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_66/strided_slice╣
#range_conversion_34/PartitionedCallPartitionedCall2tf.__operators__.getitem_66/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_71488462%
#range_conversion_34/PartitionedCall│
/tf.__operators__.getitem_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_67/strided_slice/stack╖
1tf.__operators__.getitem_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_67/strided_slice/stack_1╖
1tf.__operators__.getitem_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_67/strided_slice/stack_2Н
)tf.__operators__.getitem_67/strided_sliceStridedSliceinputs8tf.__operators__.getitem_67/strided_slice/stack:output:0:tf.__operators__.getitem_67/strided_slice/stack_1:output:0:tf.__operators__.getitem_67/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_67/strided_slicev
tf.concat_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_62/concat/axisВ
tf.concat_62/concatConcatV2,range_conversion_34/PartitionedCall:output:02tf.__operators__.getitem_67/strided_slice:output:0!tf.concat_62/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_62/concat№
reshape_68/PartitionedCallPartitionedCalltf.concat_62/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_68_layer_call_and_return_conditional_losses_71488662
reshape_68/PartitionedCall┐
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#reshape_68/PartitionedCall:output:0dense_34_7148998dense_34_7149000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_71488792"
 dense_34/StatefulPartitionedCallХ
reshape_69/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_69_layer_call_and_return_conditional_losses_71489002
reshape_69/PartitionedCall╨
!conv3d_92/StatefulPartitionedCallStatefulPartitionedCall#reshape_69/PartitionedCall:output:0conv3d_92_7149004conv3d_92_7149006*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_conv3d_92_layer_call_and_return_conditional_losses_71489122#
!conv3d_92/StatefulPartitionedCallС
IdentityIdentity*conv3d_92/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityХ
NoOpNoOp"^conv3d_92/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2F
!conv3d_92/StatefulPartitionedCall!conv3d_92/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
П	
┘
*__inference_model_34_layer_call_fn_7149129

inputs
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_34_layer_call_and_return_conditional_losses_71490102
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╜
д
+__inference_conv3d_92_layer_call_fn_7149320

inputs%
unknown:
	unknown_0:
identityИвStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_conv3d_92_layer_call_and_return_conditional_losses_71489122
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╡*
└
E__inference_model_34_layer_call_and_return_conditional_losses_7149061	
input"
dense_34_7149049:  
dense_34_7149051: /
conv3d_92_7149055:
conv3d_92_7149057:
identityИв!conv3d_92/StatefulPartitionedCallв dense_34/StatefulPartitionedCall│
/tf.__operators__.getitem_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_66/strided_slice/stack╖
1tf.__operators__.getitem_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_66/strided_slice/stack_1╖
1tf.__operators__.getitem_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_66/strided_slice/stack_2М
)tf.__operators__.getitem_66/strided_sliceStridedSliceinput8tf.__operators__.getitem_66/strided_slice/stack:output:0:tf.__operators__.getitem_66/strided_slice/stack_1:output:0:tf.__operators__.getitem_66/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_66/strided_slice╣
#range_conversion_34/PartitionedCallPartitionedCall2tf.__operators__.getitem_66/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_71488462%
#range_conversion_34/PartitionedCall│
/tf.__operators__.getitem_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_67/strided_slice/stack╖
1tf.__operators__.getitem_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_67/strided_slice/stack_1╖
1tf.__operators__.getitem_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_67/strided_slice/stack_2М
)tf.__operators__.getitem_67/strided_sliceStridedSliceinput8tf.__operators__.getitem_67/strided_slice/stack:output:0:tf.__operators__.getitem_67/strided_slice/stack_1:output:0:tf.__operators__.getitem_67/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_67/strided_slicev
tf.concat_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_62/concat/axisВ
tf.concat_62/concatConcatV2,range_conversion_34/PartitionedCall:output:02tf.__operators__.getitem_67/strided_slice:output:0!tf.concat_62/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_62/concat№
reshape_68/PartitionedCallPartitionedCalltf.concat_62/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_68_layer_call_and_return_conditional_losses_71488662
reshape_68/PartitionedCall┐
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#reshape_68/PartitionedCall:output:0dense_34_7149049dense_34_7149051*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_71488792"
 dense_34/StatefulPartitionedCallХ
reshape_69/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_69_layer_call_and_return_conditional_losses_71489002
reshape_69/PartitionedCall╨
!conv3d_92/StatefulPartitionedCallStatefulPartitionedCall#reshape_69/PartitionedCall:output:0conv3d_92_7149055conv3d_92_7149057*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_conv3d_92_layer_call_and_return_conditional_losses_71489122#
!conv3d_92/StatefulPartitionedCallС
IdentityIdentity*conv3d_92/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityХ
NoOpNoOp"^conv3d_92/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2F
!conv3d_92/StatefulPartitionedCall!conv3d_92/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
╓	
p
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_7148846

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
:         2
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
:         2	
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
:         2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:         2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
Ъ
c
G__inference_reshape_69_layer_call_and_return_conditional_losses_7149311

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
Reshape/shape/4╘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
░K
р
E__inference_model_34_layer_call_and_return_conditional_losses_7149183

inputs9
'dense_34_matmul_readvariableop_resource:  6
(dense_34_biasadd_readvariableop_resource: F
(conv3d_92_conv3d_readvariableop_resource:7
)conv3d_92_biasadd_readvariableop_resource:
identityИв conv3d_92/BiasAdd/ReadVariableOpвconv3d_92/Conv3D/ReadVariableOpвdense_34/BiasAdd/ReadVariableOpвdense_34/MatMul/ReadVariableOp│
/tf.__operators__.getitem_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_66/strided_slice/stack╖
1tf.__operators__.getitem_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_66/strided_slice/stack_1╖
1tf.__operators__.getitem_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_66/strided_slice/stack_2Н
)tf.__operators__.getitem_66/strided_sliceStridedSliceinputs8tf.__operators__.getitem_66/strided_slice/stack:output:0:tf.__operators__.getitem_66/strided_slice/stack_1:output:0:tf.__operators__.getitem_66/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_66/strided_slice{
range_conversion_34/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_34/sub/y╧
range_conversion_34/subSub2tf.__operators__.getitem_66/strided_slice:output:0"range_conversion_34/sub/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/subГ
range_conversion_34/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_34/truediv/y╚
range_conversion_34/truedivRealDivrange_conversion_34/sub:z:0&range_conversion_34/truediv/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/truediv{
range_conversion_34/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_34/mul/y╝
range_conversion_34/mulMulrange_conversion_34/truediv:z:0"range_conversion_34/mul/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/mul{
range_conversion_34/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_34/add/y║
range_conversion_34/addAddV2range_conversion_34/mul:z:0"range_conversion_34/add/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/add│
/tf.__operators__.getitem_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_67/strided_slice/stack╖
1tf.__operators__.getitem_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_67/strided_slice/stack_1╖
1tf.__operators__.getitem_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_67/strided_slice/stack_2Н
)tf.__operators__.getitem_67/strided_sliceStridedSliceinputs8tf.__operators__.getitem_67/strided_slice/stack:output:0:tf.__operators__.getitem_67/strided_slice/stack_1:output:0:tf.__operators__.getitem_67/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_67/strided_slicev
tf.concat_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_62/concat/axisё
tf.concat_62/concatConcatV2range_conversion_34/add:z:02tf.__operators__.getitem_67/strided_slice:output:0!tf.concat_62/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_62/concatp
reshape_68/ShapeShapetf.concat_62/concat:output:0*
T0*
_output_shapes
:2
reshape_68/ShapeК
reshape_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_68/strided_slice/stackО
 reshape_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_68/strided_slice/stack_1О
 reshape_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_68/strided_slice/stack_2д
reshape_68/strided_sliceStridedSlicereshape_68/Shape:output:0'reshape_68/strided_slice/stack:output:0)reshape_68/strided_slice/stack_1:output:0)reshape_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_68/strided_slicez
reshape_68/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_68/Reshape/shape/1▓
reshape_68/Reshape/shapePack!reshape_68/strided_slice:output:0#reshape_68/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_68/Reshape/shapeж
reshape_68/ReshapeReshapetf.concat_62/concat:output:0!reshape_68/Reshape/shape:output:0*
T0*'
_output_shapes
:          2
reshape_68/Reshapeи
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_34/MatMul/ReadVariableOpг
dense_34/MatMulMatMulreshape_68/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_34/MatMulз
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_34/BiasAdd/ReadVariableOpе
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_34/BiasAdd
dense_34/SoftplusSoftplusdense_34/BiasAdd:output:0*
T0*'
_output_shapes
:          2
dense_34/Softpluss
reshape_69/ShapeShapedense_34/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_69/ShapeК
reshape_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_69/strided_slice/stackО
 reshape_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_69/strided_slice/stack_1О
 reshape_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_69/strided_slice/stack_2д
reshape_69/strided_sliceStridedSlicereshape_69/Shape:output:0'reshape_69/strided_slice/stack:output:0)reshape_69/strided_slice/stack_1:output:0)reshape_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_69/strided_slicez
reshape_69/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/1z
reshape_69/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/2z
reshape_69/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/3z
reshape_69/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/4б
reshape_69/Reshape/shapePack!reshape_69/strided_slice:output:0#reshape_69/Reshape/shape/1:output:0#reshape_69/Reshape/shape/2:output:0#reshape_69/Reshape/shape/3:output:0#reshape_69/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_69/Reshape/shape╡
reshape_69/ReshapeReshapedense_34/Softplus:activations:0!reshape_69/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_69/Reshape╖
conv3d_92/Conv3D/ReadVariableOpReadVariableOp(conv3d_92_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_92/Conv3D/ReadVariableOpє
conv3d_92/Conv3DConv3Dreshape_69/Reshape:output:0'conv3d_92/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_92/Conv3Dк
 conv3d_92/BiasAdd/ReadVariableOpReadVariableOp)conv3d_92_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_92/BiasAdd/ReadVariableOp╦
conv3d_92/BiasAddBiasAddconv3d_92/Conv3D:output:0(conv3d_92/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_92/BiasAddБ
IdentityIdentityconv3d_92/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity╓
NoOpNoOp!^conv3d_92/BiasAdd/ReadVariableOp ^conv3d_92/Conv3D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2D
 conv3d_92/BiasAdd/ReadVariableOp conv3d_92/BiasAdd/ReadVariableOp2B
conv3d_92/Conv3D/ReadVariableOpconv3d_92/Conv3D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
П	
┘
*__inference_model_34_layer_call_fn_7149116

inputs
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_34_layer_call_and_return_conditional_losses_71489192
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
░K
р
E__inference_model_34_layer_call_and_return_conditional_losses_7149237

inputs9
'dense_34_matmul_readvariableop_resource:  6
(dense_34_biasadd_readvariableop_resource: F
(conv3d_92_conv3d_readvariableop_resource:7
)conv3d_92_biasadd_readvariableop_resource:
identityИв conv3d_92/BiasAdd/ReadVariableOpвconv3d_92/Conv3D/ReadVariableOpвdense_34/BiasAdd/ReadVariableOpвdense_34/MatMul/ReadVariableOp│
/tf.__operators__.getitem_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_66/strided_slice/stack╖
1tf.__operators__.getitem_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_66/strided_slice/stack_1╖
1tf.__operators__.getitem_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_66/strided_slice/stack_2Н
)tf.__operators__.getitem_66/strided_sliceStridedSliceinputs8tf.__operators__.getitem_66/strided_slice/stack:output:0:tf.__operators__.getitem_66/strided_slice/stack_1:output:0:tf.__operators__.getitem_66/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_66/strided_slice{
range_conversion_34/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_34/sub/y╧
range_conversion_34/subSub2tf.__operators__.getitem_66/strided_slice:output:0"range_conversion_34/sub/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/subГ
range_conversion_34/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_34/truediv/y╚
range_conversion_34/truedivRealDivrange_conversion_34/sub:z:0&range_conversion_34/truediv/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/truediv{
range_conversion_34/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_34/mul/y╝
range_conversion_34/mulMulrange_conversion_34/truediv:z:0"range_conversion_34/mul/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/mul{
range_conversion_34/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
range_conversion_34/add/y║
range_conversion_34/addAddV2range_conversion_34/mul:z:0"range_conversion_34/add/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_34/add│
/tf.__operators__.getitem_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_67/strided_slice/stack╖
1tf.__operators__.getitem_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_67/strided_slice/stack_1╖
1tf.__operators__.getitem_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_67/strided_slice/stack_2Н
)tf.__operators__.getitem_67/strided_sliceStridedSliceinputs8tf.__operators__.getitem_67/strided_slice/stack:output:0:tf.__operators__.getitem_67/strided_slice/stack_1:output:0:tf.__operators__.getitem_67/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_67/strided_slicev
tf.concat_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_62/concat/axisё
tf.concat_62/concatConcatV2range_conversion_34/add:z:02tf.__operators__.getitem_67/strided_slice:output:0!tf.concat_62/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_62/concatp
reshape_68/ShapeShapetf.concat_62/concat:output:0*
T0*
_output_shapes
:2
reshape_68/ShapeК
reshape_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_68/strided_slice/stackО
 reshape_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_68/strided_slice/stack_1О
 reshape_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_68/strided_slice/stack_2д
reshape_68/strided_sliceStridedSlicereshape_68/Shape:output:0'reshape_68/strided_slice/stack:output:0)reshape_68/strided_slice/stack_1:output:0)reshape_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_68/strided_slicez
reshape_68/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_68/Reshape/shape/1▓
reshape_68/Reshape/shapePack!reshape_68/strided_slice:output:0#reshape_68/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_68/Reshape/shapeж
reshape_68/ReshapeReshapetf.concat_62/concat:output:0!reshape_68/Reshape/shape:output:0*
T0*'
_output_shapes
:          2
reshape_68/Reshapeи
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_34/MatMul/ReadVariableOpг
dense_34/MatMulMatMulreshape_68/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_34/MatMulз
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_34/BiasAdd/ReadVariableOpе
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
dense_34/BiasAdd
dense_34/SoftplusSoftplusdense_34/BiasAdd:output:0*
T0*'
_output_shapes
:          2
dense_34/Softpluss
reshape_69/ShapeShapedense_34/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_69/ShapeК
reshape_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_69/strided_slice/stackО
 reshape_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_69/strided_slice/stack_1О
 reshape_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_69/strided_slice/stack_2д
reshape_69/strided_sliceStridedSlicereshape_69/Shape:output:0'reshape_69/strided_slice/stack:output:0)reshape_69/strided_slice/stack_1:output:0)reshape_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_69/strided_slicez
reshape_69/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/1z
reshape_69/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/2z
reshape_69/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/3z
reshape_69/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_69/Reshape/shape/4б
reshape_69/Reshape/shapePack!reshape_69/strided_slice:output:0#reshape_69/Reshape/shape/1:output:0#reshape_69/Reshape/shape/2:output:0#reshape_69/Reshape/shape/3:output:0#reshape_69/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_69/Reshape/shape╡
reshape_69/ReshapeReshapedense_34/Softplus:activations:0!reshape_69/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_69/Reshape╖
conv3d_92/Conv3D/ReadVariableOpReadVariableOp(conv3d_92_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_92/Conv3D/ReadVariableOpє
conv3d_92/Conv3DConv3Dreshape_69/Reshape:output:0'conv3d_92/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_92/Conv3Dк
 conv3d_92/BiasAdd/ReadVariableOpReadVariableOp)conv3d_92_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_92/BiasAdd/ReadVariableOp╦
conv3d_92/BiasAddBiasAddconv3d_92/Conv3D:output:0(conv3d_92/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_92/BiasAddБ
IdentityIdentityconv3d_92/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity╓
NoOpNoOp!^conv3d_92/BiasAdd/ReadVariableOp ^conv3d_92/Conv3D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2D
 conv3d_92/BiasAdd/ReadVariableOp conv3d_92/BiasAdd/ReadVariableOp2B
conv3d_92/Conv3D/ReadVariableOpconv3d_92/Conv3D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
х
H
,__inference_reshape_68_layer_call_fn_7149259

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_68_layer_call_and_return_conditional_losses_71488662
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┘V
Д
"__inference__wrapped_model_7148823	
inputB
0model_34_dense_34_matmul_readvariableop_resource:  ?
1model_34_dense_34_biasadd_readvariableop_resource: O
1model_34_conv3d_92_conv3d_readvariableop_resource:@
2model_34_conv3d_92_biasadd_readvariableop_resource:
identityИв)model_34/conv3d_92/BiasAdd/ReadVariableOpв(model_34/conv3d_92/Conv3D/ReadVariableOpв(model_34/dense_34/BiasAdd/ReadVariableOpв'model_34/dense_34/MatMul/ReadVariableOp┼
8model_34/tf.__operators__.getitem_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_34/tf.__operators__.getitem_66/strided_slice/stack╔
:model_34/tf.__operators__.getitem_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_34/tf.__operators__.getitem_66/strided_slice/stack_1╔
:model_34/tf.__operators__.getitem_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_34/tf.__operators__.getitem_66/strided_slice/stack_2╣
2model_34/tf.__operators__.getitem_66/strided_sliceStridedSliceinputAmodel_34/tf.__operators__.getitem_66/strided_slice/stack:output:0Cmodel_34/tf.__operators__.getitem_66/strided_slice/stack_1:output:0Cmodel_34/tf.__operators__.getitem_66/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask24
2model_34/tf.__operators__.getitem_66/strided_sliceН
"model_34/range_conversion_34/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_34/range_conversion_34/sub/yє
 model_34/range_conversion_34/subSub;model_34/tf.__operators__.getitem_66/strided_slice:output:0+model_34/range_conversion_34/sub/y:output:0*
T0*3
_output_shapes!
:         2"
 model_34/range_conversion_34/subХ
&model_34/range_conversion_34/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_34/range_conversion_34/truediv/yь
$model_34/range_conversion_34/truedivRealDiv$model_34/range_conversion_34/sub:z:0/model_34/range_conversion_34/truediv/y:output:0*
T0*3
_output_shapes!
:         2&
$model_34/range_conversion_34/truedivН
"model_34/range_conversion_34/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_34/range_conversion_34/mul/yр
 model_34/range_conversion_34/mulMul(model_34/range_conversion_34/truediv:z:0+model_34/range_conversion_34/mul/y:output:0*
T0*3
_output_shapes!
:         2"
 model_34/range_conversion_34/mulН
"model_34/range_conversion_34/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2$
"model_34/range_conversion_34/add/y▐
 model_34/range_conversion_34/addAddV2$model_34/range_conversion_34/mul:z:0+model_34/range_conversion_34/add/y:output:0*
T0*3
_output_shapes!
:         2"
 model_34/range_conversion_34/add┼
8model_34/tf.__operators__.getitem_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_34/tf.__operators__.getitem_67/strided_slice/stack╔
:model_34/tf.__operators__.getitem_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_34/tf.__operators__.getitem_67/strided_slice/stack_1╔
:model_34/tf.__operators__.getitem_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_34/tf.__operators__.getitem_67/strided_slice/stack_2╣
2model_34/tf.__operators__.getitem_67/strided_sliceStridedSliceinputAmodel_34/tf.__operators__.getitem_67/strided_slice/stack:output:0Cmodel_34/tf.__operators__.getitem_67/strided_slice/stack_1:output:0Cmodel_34/tf.__operators__.getitem_67/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask24
2model_34/tf.__operators__.getitem_67/strided_sliceИ
!model_34/tf.concat_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_34/tf.concat_62/concat/axisЮ
model_34/tf.concat_62/concatConcatV2$model_34/range_conversion_34/add:z:0;model_34/tf.__operators__.getitem_67/strided_slice:output:0*model_34/tf.concat_62/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_34/tf.concat_62/concatЛ
model_34/reshape_68/ShapeShape%model_34/tf.concat_62/concat:output:0*
T0*
_output_shapes
:2
model_34/reshape_68/ShapeЬ
'model_34/reshape_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_34/reshape_68/strided_slice/stackа
)model_34/reshape_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_34/reshape_68/strided_slice/stack_1а
)model_34/reshape_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_34/reshape_68/strided_slice/stack_2┌
!model_34/reshape_68/strided_sliceStridedSlice"model_34/reshape_68/Shape:output:00model_34/reshape_68/strided_slice/stack:output:02model_34/reshape_68/strided_slice/stack_1:output:02model_34/reshape_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_34/reshape_68/strided_sliceМ
#model_34/reshape_68/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_34/reshape_68/Reshape/shape/1╓
!model_34/reshape_68/Reshape/shapePack*model_34/reshape_68/strided_slice:output:0,model_34/reshape_68/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_34/reshape_68/Reshape/shape╩
model_34/reshape_68/ReshapeReshape%model_34/tf.concat_62/concat:output:0*model_34/reshape_68/Reshape/shape:output:0*
T0*'
_output_shapes
:          2
model_34/reshape_68/Reshape├
'model_34/dense_34/MatMul/ReadVariableOpReadVariableOp0model_34_dense_34_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'model_34/dense_34/MatMul/ReadVariableOp╟
model_34/dense_34/MatMulMatMul$model_34/reshape_68/Reshape:output:0/model_34/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
model_34/dense_34/MatMul┬
(model_34/dense_34/BiasAdd/ReadVariableOpReadVariableOp1model_34_dense_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_34/dense_34/BiasAdd/ReadVariableOp╔
model_34/dense_34/BiasAddBiasAdd"model_34/dense_34/MatMul:product:00model_34/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
model_34/dense_34/BiasAddЪ
model_34/dense_34/SoftplusSoftplus"model_34/dense_34/BiasAdd:output:0*
T0*'
_output_shapes
:          2
model_34/dense_34/SoftplusО
model_34/reshape_69/ShapeShape(model_34/dense_34/Softplus:activations:0*
T0*
_output_shapes
:2
model_34/reshape_69/ShapeЬ
'model_34/reshape_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_34/reshape_69/strided_slice/stackа
)model_34/reshape_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_34/reshape_69/strided_slice/stack_1а
)model_34/reshape_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_34/reshape_69/strided_slice/stack_2┌
!model_34/reshape_69/strided_sliceStridedSlice"model_34/reshape_69/Shape:output:00model_34/reshape_69/strided_slice/stack:output:02model_34/reshape_69/strided_slice/stack_1:output:02model_34/reshape_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_34/reshape_69/strided_sliceМ
#model_34/reshape_69/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_34/reshape_69/Reshape/shape/1М
#model_34/reshape_69/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_34/reshape_69/Reshape/shape/2М
#model_34/reshape_69/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_34/reshape_69/Reshape/shape/3М
#model_34/reshape_69/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_34/reshape_69/Reshape/shape/4р
!model_34/reshape_69/Reshape/shapePack*model_34/reshape_69/strided_slice:output:0,model_34/reshape_69/Reshape/shape/1:output:0,model_34/reshape_69/Reshape/shape/2:output:0,model_34/reshape_69/Reshape/shape/3:output:0,model_34/reshape_69/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_34/reshape_69/Reshape/shape┘
model_34/reshape_69/ReshapeReshape(model_34/dense_34/Softplus:activations:0*model_34/reshape_69/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_34/reshape_69/Reshape╥
(model_34/conv3d_92/Conv3D/ReadVariableOpReadVariableOp1model_34_conv3d_92_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_34/conv3d_92/Conv3D/ReadVariableOpЧ
model_34/conv3d_92/Conv3DConv3D$model_34/reshape_69/Reshape:output:00model_34/conv3d_92/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_34/conv3d_92/Conv3D┼
)model_34/conv3d_92/BiasAdd/ReadVariableOpReadVariableOp2model_34_conv3d_92_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_34/conv3d_92/BiasAdd/ReadVariableOpя
model_34/conv3d_92/BiasAddBiasAdd"model_34/conv3d_92/Conv3D:output:01model_34/conv3d_92/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_34/conv3d_92/BiasAddК
IdentityIdentity#model_34/conv3d_92/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity·
NoOpNoOp*^model_34/conv3d_92/BiasAdd/ReadVariableOp)^model_34/conv3d_92/Conv3D/ReadVariableOp)^model_34/dense_34/BiasAdd/ReadVariableOp(^model_34/dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2V
)model_34/conv3d_92/BiasAdd/ReadVariableOp)model_34/conv3d_92/BiasAdd/ReadVariableOp2T
(model_34/conv3d_92/Conv3D/ReadVariableOp(model_34/conv3d_92/Conv3D/ReadVariableOp2T
(model_34/dense_34/BiasAdd/ReadVariableOp(model_34/dense_34/BiasAdd/ReadVariableOp2R
'model_34/dense_34/MatMul/ReadVariableOp'model_34/dense_34/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         

_user_specified_nameinput
У
Ў
E__inference_dense_34_layer_call_and_return_conditional_losses_7149291

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:          2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:          2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╘
Г
F__inference_conv3d_92_layer_call_and_return_conditional_losses_7148912

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
х
H
,__inference_reshape_69_layer_call_fn_7149296

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_69_layer_call_and_return_conditional_losses_71489002
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╣*
┴
E__inference_model_34_layer_call_and_return_conditional_losses_7148919

inputs"
dense_34_7148880:  
dense_34_7148882: /
conv3d_92_7148913:
conv3d_92_7148915:
identityИв!conv3d_92/StatefulPartitionedCallв dense_34/StatefulPartitionedCall│
/tf.__operators__.getitem_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_66/strided_slice/stack╖
1tf.__operators__.getitem_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_66/strided_slice/stack_1╖
1tf.__operators__.getitem_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_66/strided_slice/stack_2Н
)tf.__operators__.getitem_66/strided_sliceStridedSliceinputs8tf.__operators__.getitem_66/strided_slice/stack:output:0:tf.__operators__.getitem_66/strided_slice/stack_1:output:0:tf.__operators__.getitem_66/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_66/strided_slice╣
#range_conversion_34/PartitionedCallPartitionedCall2tf.__operators__.getitem_66/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_71488462%
#range_conversion_34/PartitionedCall│
/tf.__operators__.getitem_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_67/strided_slice/stack╖
1tf.__operators__.getitem_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_67/strided_slice/stack_1╖
1tf.__operators__.getitem_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_67/strided_slice/stack_2Н
)tf.__operators__.getitem_67/strided_sliceStridedSliceinputs8tf.__operators__.getitem_67/strided_slice/stack:output:0:tf.__operators__.getitem_67/strided_slice/stack_1:output:0:tf.__operators__.getitem_67/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_67/strided_slicev
tf.concat_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_62/concat/axisВ
tf.concat_62/concatConcatV2,range_conversion_34/PartitionedCall:output:02tf.__operators__.getitem_67/strided_slice:output:0!tf.concat_62/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_62/concat№
reshape_68/PartitionedCallPartitionedCalltf.concat_62/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_68_layer_call_and_return_conditional_losses_71488662
reshape_68/PartitionedCall┐
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#reshape_68/PartitionedCall:output:0dense_34_7148880dense_34_7148882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_71488792"
 dense_34/StatefulPartitionedCallХ
reshape_69/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_69_layer_call_and_return_conditional_losses_71489002
reshape_69/PartitionedCall╨
!conv3d_92/StatefulPartitionedCallStatefulPartitionedCall#reshape_69/PartitionedCall:output:0conv3d_92_7148913conv3d_92_7148915*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_conv3d_92_layer_call_and_return_conditional_losses_71489122#
!conv3d_92/StatefulPartitionedCallС
IdentityIdentity*conv3d_92/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityХ
NoOpNoOp"^conv3d_92/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2F
!conv3d_92/StatefulPartitionedCall!conv3d_92/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╓	
p
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_7149254

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
:         2
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
:         2	
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
:         2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А┐2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:         2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
═
л
 __inference__traced_save_7149365
file_prefix.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop/
+savev2_conv3d_92_kernel_read_readvariableop-
)savev2_conv3d_92_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*П
valueЕBВB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesТ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesь
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop+savev2_conv3d_92_kernel_read_readvariableop)savev2_conv3d_92_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*C
_input_shapes2
0: :  : ::: 2(
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
: :0,
*
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
Ы
U
5__inference_range_conversion_34_layer_call_fn_7149242

parameters
identityщ
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_71488462
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
╘
Г
F__inference_conv3d_92_layer_call_and_return_conditional_losses_7149330

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpг
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ф
╙
%__inference_signature_wrapper_7149103	
input
unknown:  
	unknown_0: '
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *+
f&R$
"__inference__wrapped_model_71488232
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
╡*
└
E__inference_model_34_layer_call_and_return_conditional_losses_7149088	
input"
dense_34_7149076:  
dense_34_7149078: /
conv3d_92_7149082:
conv3d_92_7149084:
identityИв!conv3d_92/StatefulPartitionedCallв dense_34/StatefulPartitionedCall│
/tf.__operators__.getitem_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_66/strided_slice/stack╖
1tf.__operators__.getitem_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_66/strided_slice/stack_1╖
1tf.__operators__.getitem_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_66/strided_slice/stack_2М
)tf.__operators__.getitem_66/strided_sliceStridedSliceinput8tf.__operators__.getitem_66/strided_slice/stack:output:0:tf.__operators__.getitem_66/strided_slice/stack_1:output:0:tf.__operators__.getitem_66/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_66/strided_slice╣
#range_conversion_34/PartitionedCallPartitionedCall2tf.__operators__.getitem_66/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_71488462%
#range_conversion_34/PartitionedCall│
/tf.__operators__.getitem_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_67/strided_slice/stack╖
1tf.__operators__.getitem_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_67/strided_slice/stack_1╖
1tf.__operators__.getitem_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_67/strided_slice/stack_2М
)tf.__operators__.getitem_67/strided_sliceStridedSliceinput8tf.__operators__.getitem_67/strided_slice/stack:output:0:tf.__operators__.getitem_67/strided_slice/stack_1:output:0:tf.__operators__.getitem_67/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_67/strided_slicev
tf.concat_62/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_62/concat/axisВ
tf.concat_62/concatConcatV2,range_conversion_34/PartitionedCall:output:02tf.__operators__.getitem_67/strided_slice:output:0!tf.concat_62/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_62/concat№
reshape_68/PartitionedCallPartitionedCalltf.concat_62/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_68_layer_call_and_return_conditional_losses_71488662
reshape_68/PartitionedCall┐
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#reshape_68/PartitionedCall:output:0dense_34_7149076dense_34_7149078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_71488792"
 dense_34/StatefulPartitionedCallХ
reshape_69/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_69_layer_call_and_return_conditional_losses_71489002
reshape_69/PartitionedCall╨
!conv3d_92/StatefulPartitionedCallStatefulPartitionedCall#reshape_69/PartitionedCall:output:0conv3d_92_7149082conv3d_92_7149084*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *O
fJRH
F__inference_conv3d_92_layer_call_and_return_conditional_losses_71489122#
!conv3d_92/StatefulPartitionedCallС
IdentityIdentity*conv3d_92/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityХ
NoOpNoOp"^conv3d_92/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : 2F
!conv3d_92/StatefulPartitionedCall!conv3d_92/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*└
serving_defaultм
C
input:
serving_default_input:0         I
	conv3d_92<
StatefulPartitionedCall:0         tensorflow/serving/predict:Оa
¤
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
H__call__
*I&call_and_return_all_conditional_losses
J_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
е
 	variables
!trainable_variables
"regularization_losses
#	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
$2
%3"
trackable_list_wrapper
<
0
1
$2
%3"
trackable_list_wrapper
 "
trackable_list_wrapper
╩

	variables
*layer_regularization_losses

+layers
trainable_variables
,non_trainable_variables
-metrics
.layer_metrics
regularization_losses
H__call__
J_default_save_signature
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
/layer_regularization_losses

0layers
trainable_variables
1non_trainable_variables
2metrics
3layer_metrics
regularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
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
н
	variables
4layer_regularization_losses

5layers
trainable_variables
6non_trainable_variables
7metrics
8layer_metrics
regularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
#:!   2dense_34/kernel
:  2dense_34/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
9layer_regularization_losses

:layers
trainable_variables
;non_trainable_variables
<metrics
=layer_metrics
regularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
 	variables
>layer_regularization_losses

?layers
!trainable_variables
@non_trainable_variables
Ametrics
Blayer_metrics
"regularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
0:. 2conv3d_92/kernel
: 2conv3d_92/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
&	variables
Clayer_regularization_losses

Dlayers
'trainable_variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
(regularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
Ў2є
*__inference_model_34_layer_call_fn_7148930
*__inference_model_34_layer_call_fn_7149116
*__inference_model_34_layer_call_fn_7149129
*__inference_model_34_layer_call_fn_7149034└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
E__inference_model_34_layer_call_and_return_conditional_losses_7149183
E__inference_model_34_layer_call_and_return_conditional_losses_7149237
E__inference_model_34_layer_call_and_return_conditional_losses_7149061
E__inference_model_34_layer_call_and_return_conditional_losses_7149088└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╦B╚
"__inference__wrapped_model_7148823input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
у2р
5__inference_range_conversion_34_layer_call_fn_7149242ж
Э▓Щ
FullArgSpec!
argsЪ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■2√
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_7149254ж
Э▓Щ
FullArgSpec!
argsЪ
jself
j
parameters
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_reshape_68_layer_call_fn_7149259в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_reshape_68_layer_call_and_return_conditional_losses_7149271в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_dense_34_layer_call_fn_7149280в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_dense_34_layer_call_and_return_conditional_losses_7149291в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_reshape_69_layer_call_fn_7149296в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_reshape_69_layer_call_and_return_conditional_losses_7149311в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_conv3d_92_layer_call_fn_7149320в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_conv3d_92_layer_call_and_return_conditional_losses_7149330в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╩B╟
%__inference_signature_wrapper_7149103input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 м
"__inference__wrapped_model_7148823Е$%:в7
0в-
+К(
input         
к "Aк>
<
	conv3d_92/К,
	conv3d_92         ╛
F__inference_conv3d_92_layer_call_and_return_conditional_losses_7149330t$%;в8
1в.
,К)
inputs         
к "1в.
'К$
0         
Ъ Ц
+__inference_conv3d_92_layer_call_fn_7149320g$%;в8
1в.
,К)
inputs         
к "$К!         е
E__inference_dense_34_layer_call_and_return_conditional_losses_7149291\/в,
%в"
 К
inputs          
к "%в"
К
0          
Ъ }
*__inference_dense_34_layer_call_fn_7149280O/в,
%в"
 К
inputs          
к "К          ╞
E__inference_model_34_layer_call_and_return_conditional_losses_7149061}$%Bв?
8в5
+К(
input         
p 

 
к "1в.
'К$
0         
Ъ ╞
E__inference_model_34_layer_call_and_return_conditional_losses_7149088}$%Bв?
8в5
+К(
input         
p

 
к "1в.
'К$
0         
Ъ ╟
E__inference_model_34_layer_call_and_return_conditional_losses_7149183~$%Cв@
9в6
,К)
inputs         
p 

 
к "1в.
'К$
0         
Ъ ╟
E__inference_model_34_layer_call_and_return_conditional_losses_7149237~$%Cв@
9в6
,К)
inputs         
p

 
к "1в.
'К$
0         
Ъ Ю
*__inference_model_34_layer_call_fn_7148930p$%Bв?
8в5
+К(
input         
p 

 
к "$К!         Ю
*__inference_model_34_layer_call_fn_7149034p$%Bв?
8в5
+К(
input         
p

 
к "$К!         Я
*__inference_model_34_layer_call_fn_7149116q$%Cв@
9в6
,К)
inputs         
p 

 
к "$К!         Я
*__inference_model_34_layer_call_fn_7149129q$%Cв@
9в6
,К)
inputs         
p

 
к "$К!         ╚
P__inference_range_conversion_34_layer_call_and_return_conditional_losses_7149254t?в<
5в2
0К-

parameters         
к "1в.
'К$
0         
Ъ а
5__inference_range_conversion_34_layer_call_fn_7149242g?в<
5в2
0К-

parameters         
к "$К!         п
G__inference_reshape_68_layer_call_and_return_conditional_losses_7149271d;в8
1в.
,К)
inputs         
к "%в"
К
0          
Ъ З
,__inference_reshape_68_layer_call_fn_7149259W;в8
1в.
,К)
inputs         
к "К          п
G__inference_reshape_69_layer_call_and_return_conditional_losses_7149311d/в,
%в"
 К
inputs          
к "1в.
'К$
0         
Ъ З
,__inference_reshape_69_layer_call_fn_7149296W/в,
%в"
 К
inputs          
к "$К!         ╕
%__inference_signature_wrapper_7149103О$%Cв@
в 
9к6
4
input+К(
input         "Aк>
<
	conv3d_92/К,
	conv3d_92         