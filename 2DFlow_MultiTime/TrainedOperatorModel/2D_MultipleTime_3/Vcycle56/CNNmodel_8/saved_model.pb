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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
conv3d_139/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_139/kernel
�
%conv3d_139/kernel/Read/ReadVariableOpReadVariableOpconv3d_139/kernel**
_output_shapes
:*
dtype0
v
conv3d_139/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_139/bias
o
#conv3d_139/bias/Read/ReadVariableOpReadVariableOpconv3d_139/bias*
_output_shapes
:*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:@@*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:@*
dtype0
�
conv3d_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_140/kernel
�
%conv3d_140/kernel/Read/ReadVariableOpReadVariableOpconv3d_140/kernel**
_output_shapes
:*
dtype0
v
conv3d_140/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_140/bias
o
#conv3d_140/bias/Read/ReadVariableOpReadVariableOpconv3d_140/bias*
_output_shapes
:*
dtype0
�
conv3d_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_141/kernel
�
%conv3d_141/kernel/Read/ReadVariableOpReadVariableOpconv3d_141/kernel**
_output_shapes
:*
dtype0
v
conv3d_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_141/bias
o
#conv3d_141/bias/Read/ReadVariableOpReadVariableOpconv3d_141/bias*
_output_shapes
:*
dtype0

NoOpNoOp
� 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*� 
value� B�  B� 
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
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 

	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api

	keras_api

	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
R
'	variables
(regularization_losses
)trainable_variables
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

5	keras_api

6	keras_api

7	keras_api

8	keras_api
h

9kernel
:bias
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
 
8
0
1
+2
,3
94
:5
?6
@7
8
0
1
+2
,3
94
:5
?6
@7
�
Enon_trainable_variables
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
regularization_losses

Ilayers
	variables
trainable_variables
 
 
 
 
 
�
Jnon_trainable_variables
	variables
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
regularization_losses

Nlayers
trainable_variables
 
 
][
VARIABLE_VALUEconv3d_139/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_139/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
Onon_trainable_variables
	variables
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
 regularization_losses

Slayers
!trainable_variables
 
 
 
�
Tnon_trainable_variables
#	variables
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
$regularization_losses

Xlayers
%trainable_variables
 
 
 
�
Ynon_trainable_variables
'	variables
Zmetrics
[layer_regularization_losses
\layer_metrics
(regularization_losses

]layers
)trainable_variables
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
�
^non_trainable_variables
-	variables
_metrics
`layer_regularization_losses
alayer_metrics
.regularization_losses

blayers
/trainable_variables
 
 
 
�
cnon_trainable_variables
1	variables
dmetrics
elayer_regularization_losses
flayer_metrics
2regularization_losses

glayers
3trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_140/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_140/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
�
hnon_trainable_variables
;	variables
imetrics
jlayer_regularization_losses
klayer_metrics
<regularization_losses

llayers
=trainable_variables
][
VARIABLE_VALUEconv3d_141/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_141/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
�
mnon_trainable_variables
A	variables
nmetrics
olayer_regularization_losses
player_metrics
Bregularization_losses

qlayers
Ctrainable_variables
 
 
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
�
serving_default_inputPlaceholder*3
_output_shapes!
:���������*
dtype0*(
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_139/kernelconv3d_139/biasdense_25/kerneldense_25/biasconv3d_140/kernelconv3d_140/biasconv3d_141/kernelconv3d_141/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *.
f)R'
%__inference_signature_wrapper_8411298
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_139/kernel/Read/ReadVariableOp#conv3d_139/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp%conv3d_140/kernel/Read/ReadVariableOp#conv3d_140/bias/Read/ReadVariableOp%conv3d_141/kernel/Read/ReadVariableOp#conv3d_141/bias/Read/ReadVariableOpConst*
Tin
2
*
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
 __inference__traced_save_8411710
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_139/kernelconv3d_139/biasdense_25/kerneldense_25/biasconv3d_140/kernelconv3d_140/biasconv3d_141/kernelconv3d_141/bias*
Tin
2	*
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
#__inference__traced_restore_8411744Ϗ
�
�
E__inference_dense_25_layer_call_and_return_conditional_losses_8410927

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
%__inference_signature_wrapper_8411298	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *+
f&R$
"__inference__wrapped_model_84108142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
c
G__inference_reshape_50_layer_call_and_return_conditional_losses_8411584

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
*__inference_model_25_layer_call_fn_8411183	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_25_layer_call_and_return_conditional_losses_84111432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
��
�
"__inference__wrapped_model_8410814	
inputP
2model_25_conv3d_139_conv3d_readvariableop_resource:A
3model_25_conv3d_139_biasadd_readvariableop_resource:B
0model_25_dense_25_matmul_readvariableop_resource:@@?
1model_25_dense_25_biasadd_readvariableop_resource:@P
2model_25_conv3d_140_conv3d_readvariableop_resource:A
3model_25_conv3d_140_biasadd_readvariableop_resource:P
2model_25_conv3d_141_conv3d_readvariableop_resource:A
3model_25_conv3d_141_biasadd_readvariableop_resource:
identity��*model_25/conv3d_139/BiasAdd/ReadVariableOp�)model_25/conv3d_139/Conv3D/ReadVariableOp�*model_25/conv3d_140/BiasAdd/ReadVariableOp�)model_25/conv3d_140/Conv3D/ReadVariableOp�*model_25/conv3d_141/BiasAdd/ReadVariableOp�)model_25/conv3d_141/Conv3D/ReadVariableOp�(model_25/dense_25/BiasAdd/ReadVariableOp�'model_25/dense_25/MatMul/ReadVariableOp�
9model_25/tf.__operators__.getitem_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_25/tf.__operators__.getitem_386/strided_slice/stack�
;model_25/tf.__operators__.getitem_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_25/tf.__operators__.getitem_386/strided_slice/stack_1�
;model_25/tf.__operators__.getitem_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_25/tf.__operators__.getitem_386/strided_slice/stack_2�
3model_25/tf.__operators__.getitem_386/strided_sliceStridedSliceinputBmodel_25/tf.__operators__.getitem_386/strided_slice/stack:output:0Dmodel_25/tf.__operators__.getitem_386/strided_slice/stack_1:output:0Dmodel_25/tf.__operators__.getitem_386/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_25/tf.__operators__.getitem_386/strided_slice�
"model_25/range_conversion_25/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_25/range_conversion_25/sub/y�
 model_25/range_conversion_25/subSub<model_25/tf.__operators__.getitem_386/strided_slice:output:0+model_25/range_conversion_25/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_25/range_conversion_25/sub�
&model_25/range_conversion_25/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_25/range_conversion_25/truediv/y�
$model_25/range_conversion_25/truedivRealDiv$model_25/range_conversion_25/sub:z:0/model_25/range_conversion_25/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_25/range_conversion_25/truediv�
"model_25/range_conversion_25/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_25/range_conversion_25/mul/y�
 model_25/range_conversion_25/mulMul(model_25/range_conversion_25/truediv:z:0+model_25/range_conversion_25/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_25/range_conversion_25/mul�
"model_25/range_conversion_25/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_25/range_conversion_25/add/y�
 model_25/range_conversion_25/addAddV2$model_25/range_conversion_25/mul:z:0+model_25/range_conversion_25/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_25/range_conversion_25/add�
9model_25/tf.__operators__.getitem_387/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_25/tf.__operators__.getitem_387/strided_slice/stack�
;model_25/tf.__operators__.getitem_387/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_25/tf.__operators__.getitem_387/strided_slice/stack_1�
;model_25/tf.__operators__.getitem_387/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_25/tf.__operators__.getitem_387/strided_slice/stack_2�
3model_25/tf.__operators__.getitem_387/strided_sliceStridedSliceinputBmodel_25/tf.__operators__.getitem_387/strided_slice/stack:output:0Dmodel_25/tf.__operators__.getitem_387/strided_slice/stack_1:output:0Dmodel_25/tf.__operators__.getitem_387/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_25/tf.__operators__.getitem_387/strided_slice�
"model_25/tf.concat_512/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_25/tf.concat_512/concat/axis�
model_25/tf.concat_512/concatConcatV2$model_25/range_conversion_25/add:z:0<model_25/tf.__operators__.getitem_387/strided_slice:output:0+model_25/tf.concat_512/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_25/tf.concat_512/concat�
)model_25/conv3d_139/Conv3D/ReadVariableOpReadVariableOp2model_25_conv3d_139_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_25/conv3d_139/Conv3D/ReadVariableOp�
model_25/conv3d_139/Conv3DConv3D&model_25/tf.concat_512/concat:output:01model_25/conv3d_139/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_25/conv3d_139/Conv3D�
*model_25/conv3d_139/BiasAdd/ReadVariableOpReadVariableOp3model_25_conv3d_139_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_25/conv3d_139/BiasAdd/ReadVariableOp�
model_25/conv3d_139/BiasAddBiasAdd#model_25/conv3d_139/Conv3D:output:02model_25/conv3d_139/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_25/conv3d_139/BiasAdd�
model_25/conv3d_139/SoftplusSoftplus$model_25/conv3d_139/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_25/conv3d_139/Softplus�
,model_25/average_pooling3d_57/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_25/average_pooling3d_57/transpose/perm�
'model_25/average_pooling3d_57/transpose	Transpose*model_25/conv3d_139/Softplus:activations:05model_25/average_pooling3d_57/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_25/average_pooling3d_57/transpose�
'model_25/average_pooling3d_57/AvgPool3D	AvgPool3D+model_25/average_pooling3d_57/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_25/average_pooling3d_57/AvgPool3D�
.model_25/average_pooling3d_57/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_25/average_pooling3d_57/transpose_1/perm�
)model_25/average_pooling3d_57/transpose_1	Transpose0model_25/average_pooling3d_57/AvgPool3D:output:07model_25/average_pooling3d_57/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_25/average_pooling3d_57/transpose_1�
model_25/reshape_50/ShapeShape-model_25/average_pooling3d_57/transpose_1:y:0*
T0*
_output_shapes
:2
model_25/reshape_50/Shape�
'model_25/reshape_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_25/reshape_50/strided_slice/stack�
)model_25/reshape_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_25/reshape_50/strided_slice/stack_1�
)model_25/reshape_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_25/reshape_50/strided_slice/stack_2�
!model_25/reshape_50/strided_sliceStridedSlice"model_25/reshape_50/Shape:output:00model_25/reshape_50/strided_slice/stack:output:02model_25/reshape_50/strided_slice/stack_1:output:02model_25/reshape_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_25/reshape_50/strided_slice�
#model_25/reshape_50/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_25/reshape_50/Reshape/shape/1�
!model_25/reshape_50/Reshape/shapePack*model_25/reshape_50/strided_slice:output:0,model_25/reshape_50/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_25/reshape_50/Reshape/shape�
model_25/reshape_50/ReshapeReshape-model_25/average_pooling3d_57/transpose_1:y:0*model_25/reshape_50/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_25/reshape_50/Reshape�
'model_25/dense_25/MatMul/ReadVariableOpReadVariableOp0model_25_dense_25_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_25/dense_25/MatMul/ReadVariableOp�
model_25/dense_25/MatMulMatMul$model_25/reshape_50/Reshape:output:0/model_25/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_25/dense_25/MatMul�
(model_25/dense_25/BiasAdd/ReadVariableOpReadVariableOp1model_25_dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_25/dense_25/BiasAdd/ReadVariableOp�
model_25/dense_25/BiasAddBiasAdd"model_25/dense_25/MatMul:product:00model_25/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_25/dense_25/BiasAdd�
model_25/dense_25/SoftplusSoftplus"model_25/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_25/dense_25/Softplus�
model_25/reshape_51/ShapeShape(model_25/dense_25/Softplus:activations:0*
T0*
_output_shapes
:2
model_25/reshape_51/Shape�
'model_25/reshape_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_25/reshape_51/strided_slice/stack�
)model_25/reshape_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_25/reshape_51/strided_slice/stack_1�
)model_25/reshape_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_25/reshape_51/strided_slice/stack_2�
!model_25/reshape_51/strided_sliceStridedSlice"model_25/reshape_51/Shape:output:00model_25/reshape_51/strided_slice/stack:output:02model_25/reshape_51/strided_slice/stack_1:output:02model_25/reshape_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_25/reshape_51/strided_slice�
#model_25/reshape_51/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_25/reshape_51/Reshape/shape/1�
#model_25/reshape_51/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_25/reshape_51/Reshape/shape/2�
#model_25/reshape_51/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_25/reshape_51/Reshape/shape/3�
#model_25/reshape_51/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_25/reshape_51/Reshape/shape/4�
!model_25/reshape_51/Reshape/shapePack*model_25/reshape_51/strided_slice:output:0,model_25/reshape_51/Reshape/shape/1:output:0,model_25/reshape_51/Reshape/shape/2:output:0,model_25/reshape_51/Reshape/shape/3:output:0,model_25/reshape_51/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_25/reshape_51/Reshape/shape�
model_25/reshape_51/ReshapeReshape(model_25/dense_25/Softplus:activations:0*model_25/reshape_51/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_25/reshape_51/Reshape�
%model_25/tf.reshape_638/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_25/tf.reshape_638/Reshape/shape�
model_25/tf.reshape_638/ReshapeReshape$model_25/reshape_51/Reshape:output:0.model_25/tf.reshape_638/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_25/tf.reshape_638/Reshape�
#model_25/tf.tile_319/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_25/tf.tile_319/Tile/multiples�
model_25/tf.tile_319/TileTile(model_25/tf.reshape_638/Reshape:output:0,model_25/tf.tile_319/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_25/tf.tile_319/Tile�
%model_25/tf.reshape_639/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_25/tf.reshape_639/Reshape/shape�
model_25/tf.reshape_639/ReshapeReshape"model_25/tf.tile_319/Tile:output:0.model_25/tf.reshape_639/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_25/tf.reshape_639/Reshape�
"model_25/tf.concat_513/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_25/tf.concat_513/concat/axis�
model_25/tf.concat_513/concatConcatV2(model_25/tf.reshape_639/Reshape:output:0*model_25/conv3d_139/Softplus:activations:0+model_25/tf.concat_513/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_25/tf.concat_513/concat�
)model_25/conv3d_140/Conv3D/ReadVariableOpReadVariableOp2model_25_conv3d_140_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_25/conv3d_140/Conv3D/ReadVariableOp�
model_25/conv3d_140/Conv3DConv3D&model_25/tf.concat_513/concat:output:01model_25/conv3d_140/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_25/conv3d_140/Conv3D�
*model_25/conv3d_140/BiasAdd/ReadVariableOpReadVariableOp3model_25_conv3d_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_25/conv3d_140/BiasAdd/ReadVariableOp�
model_25/conv3d_140/BiasAddBiasAdd#model_25/conv3d_140/Conv3D:output:02model_25/conv3d_140/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_25/conv3d_140/BiasAdd�
model_25/conv3d_140/SoftplusSoftplus$model_25/conv3d_140/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_25/conv3d_140/Softplus�
)model_25/conv3d_141/Conv3D/ReadVariableOpReadVariableOp2model_25_conv3d_141_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_25/conv3d_141/Conv3D/ReadVariableOp�
model_25/conv3d_141/Conv3DConv3D*model_25/conv3d_140/Softplus:activations:01model_25/conv3d_141/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_25/conv3d_141/Conv3D�
*model_25/conv3d_141/BiasAdd/ReadVariableOpReadVariableOp3model_25_conv3d_141_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_25/conv3d_141/BiasAdd/ReadVariableOp�
model_25/conv3d_141/BiasAddBiasAdd#model_25/conv3d_141/Conv3D:output:02model_25/conv3d_141/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_25/conv3d_141/BiasAdd�
IdentityIdentity$model_25/conv3d_141/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_25/conv3d_139/BiasAdd/ReadVariableOp*^model_25/conv3d_139/Conv3D/ReadVariableOp+^model_25/conv3d_140/BiasAdd/ReadVariableOp*^model_25/conv3d_140/Conv3D/ReadVariableOp+^model_25/conv3d_141/BiasAdd/ReadVariableOp*^model_25/conv3d_141/Conv3D/ReadVariableOp)^model_25/dense_25/BiasAdd/ReadVariableOp(^model_25/dense_25/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2X
*model_25/conv3d_139/BiasAdd/ReadVariableOp*model_25/conv3d_139/BiasAdd/ReadVariableOp2V
)model_25/conv3d_139/Conv3D/ReadVariableOp)model_25/conv3d_139/Conv3D/ReadVariableOp2X
*model_25/conv3d_140/BiasAdd/ReadVariableOp*model_25/conv3d_140/BiasAdd/ReadVariableOp2V
)model_25/conv3d_140/Conv3D/ReadVariableOp)model_25/conv3d_140/Conv3D/ReadVariableOp2X
*model_25/conv3d_141/BiasAdd/ReadVariableOp*model_25/conv3d_141/BiasAdd/ReadVariableOp2V
)model_25/conv3d_141/Conv3D/ReadVariableOp)model_25/conv3d_141/Conv3D/ReadVariableOp2T
(model_25/dense_25/BiasAdd/ReadVariableOp(model_25/dense_25/BiasAdd/ReadVariableOp2R
'model_25/dense_25/MatMul/ReadVariableOp'model_25/dense_25/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
G__inference_conv3d_140_layer_call_and_return_conditional_losses_8410969

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
�'
�
#__inference__traced_restore_8411744
file_prefix@
"assignvariableop_conv3d_139_kernel:0
"assignvariableop_1_conv3d_139_bias:4
"assignvariableop_2_dense_25_kernel:@@.
 assignvariableop_3_dense_25_bias:@B
$assignvariableop_4_conv3d_140_kernel:0
"assignvariableop_5_conv3d_140_bias:B
$assignvariableop_6_conv3d_141_kernel:0
"assignvariableop_7_conv3d_141_bias:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_139_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_139_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_25_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_25_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_140_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_140_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_141_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_141_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8c

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_9�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
G__inference_conv3d_139_layer_call_and_return_conditional_losses_8410886

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�D
�
E__inference_model_25_layer_call_and_return_conditional_losses_8411143

inputs0
conv3d_139_8411111: 
conv3d_139_8411113:"
dense_25_8411118:@@
dense_25_8411120:@0
conv3d_140_8411132: 
conv3d_140_8411134:0
conv3d_141_8411137: 
conv3d_141_8411139:
identity��"conv3d_139/StatefulPartitionedCall�"conv3d_140/StatefulPartitionedCall�"conv3d_141/StatefulPartitionedCall� dense_25/StatefulPartitionedCall�
0tf.__operators__.getitem_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_386/strided_slice/stack�
2tf.__operators__.getitem_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_386/strided_slice/stack_1�
2tf.__operators__.getitem_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_386/strided_slice/stack_2�
*tf.__operators__.getitem_386/strided_sliceStridedSliceinputs9tf.__operators__.getitem_386/strided_slice/stack:output:0;tf.__operators__.getitem_386/strided_slice/stack_1:output:0;tf.__operators__.getitem_386/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_386/strided_slice�
#range_conversion_25/PartitionedCallPartitionedCall3tf.__operators__.getitem_386/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_84108672%
#range_conversion_25/PartitionedCall�
0tf.__operators__.getitem_387/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_387/strided_slice/stack�
2tf.__operators__.getitem_387/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_387/strided_slice/stack_1�
2tf.__operators__.getitem_387/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_387/strided_slice/stack_2�
*tf.__operators__.getitem_387/strided_sliceStridedSliceinputs9tf.__operators__.getitem_387/strided_slice/stack:output:0;tf.__operators__.getitem_387/strided_slice/stack_1:output:0;tf.__operators__.getitem_387/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_387/strided_slicex
tf.concat_512/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_512/concat/axis�
tf.concat_512/concatConcatV2,range_conversion_25/PartitionedCall:output:03tf.__operators__.getitem_387/strided_slice:output:0"tf.concat_512/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_512/concat�
"conv3d_139/StatefulPartitionedCallStatefulPartitionedCalltf.concat_512/concat:output:0conv3d_139_8411111conv3d_139_8411113*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_139_layer_call_and_return_conditional_losses_84108862$
"conv3d_139/StatefulPartitionedCall�
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_139/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_84109002&
$average_pooling3d_57/PartitionedCall�
reshape_50/PartitionedCallPartitionedCall-average_pooling3d_57/PartitionedCall:output:0*
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
G__inference_reshape_50_layer_call_and_return_conditional_losses_84109142
reshape_50/PartitionedCall�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#reshape_50/PartitionedCall:output:0dense_25_8411118dense_25_8411120*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_84109272"
 dense_25/StatefulPartitionedCall�
reshape_51/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_84109482
reshape_51/PartitionedCall�
tf.reshape_638/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_638/Reshape/shape�
tf.reshape_638/ReshapeReshape#reshape_51/PartitionedCall:output:0%tf.reshape_638/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_638/Reshape�
tf.tile_319/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_319/Tile/multiples�
tf.tile_319/TileTiletf.reshape_638/Reshape:output:0#tf.tile_319/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_319/Tile�
tf.reshape_639/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_639/Reshape/shape�
tf.reshape_639/ReshapeReshapetf.tile_319/Tile:output:0%tf.reshape_639/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_639/Reshapex
tf.concat_513/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_513/concat/axis�
tf.concat_513/concatConcatV2tf.reshape_639/Reshape:output:0+conv3d_139/StatefulPartitionedCall:output:0"tf.concat_513/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_513/concat�
"conv3d_140/StatefulPartitionedCallStatefulPartitionedCalltf.concat_513/concat:output:0conv3d_140_8411132conv3d_140_8411134*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_140_layer_call_and_return_conditional_losses_84109692$
"conv3d_140/StatefulPartitionedCall�
"conv3d_141/StatefulPartitionedCallStatefulPartitionedCall+conv3d_140/StatefulPartitionedCall:output:0conv3d_141_8411137conv3d_141_8411139*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_141_layer_call_and_return_conditional_losses_84109852$
"conv3d_141/StatefulPartitionedCall�
IdentityIdentity+conv3d_141/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_139/StatefulPartitionedCall#^conv3d_140/StatefulPartitionedCall#^conv3d_141/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_139/StatefulPartitionedCall"conv3d_139/StatefulPartitionedCall2H
"conv3d_140/StatefulPartitionedCall"conv3d_140/StatefulPartitionedCall2H
"conv3d_141/StatefulPartitionedCall"conv3d_141/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
,__inference_conv3d_141_layer_call_fn_8411653

inputs%
unknown:
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
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_141_layer_call_and_return_conditional_losses_84109852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

�
*__inference_model_25_layer_call_fn_8411011	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_25_layer_call_and_return_conditional_losses_84109922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
H
,__inference_reshape_51_layer_call_fn_8411609

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
G__inference_reshape_51_layer_call_and_return_conditional_losses_84109482
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
G__inference_conv3d_141_layer_call_and_return_conditional_losses_8411663

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
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
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
,__inference_conv3d_140_layer_call_fn_8411633

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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_140_layer_call_and_return_conditional_losses_84109692
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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8410827

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
�D
�
E__inference_model_25_layer_call_and_return_conditional_losses_8410992

inputs0
conv3d_139_8410887: 
conv3d_139_8410889:"
dense_25_8410928:@@
dense_25_8410930:@0
conv3d_140_8410970: 
conv3d_140_8410972:0
conv3d_141_8410986: 
conv3d_141_8410988:
identity��"conv3d_139/StatefulPartitionedCall�"conv3d_140/StatefulPartitionedCall�"conv3d_141/StatefulPartitionedCall� dense_25/StatefulPartitionedCall�
0tf.__operators__.getitem_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_386/strided_slice/stack�
2tf.__operators__.getitem_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_386/strided_slice/stack_1�
2tf.__operators__.getitem_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_386/strided_slice/stack_2�
*tf.__operators__.getitem_386/strided_sliceStridedSliceinputs9tf.__operators__.getitem_386/strided_slice/stack:output:0;tf.__operators__.getitem_386/strided_slice/stack_1:output:0;tf.__operators__.getitem_386/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_386/strided_slice�
#range_conversion_25/PartitionedCallPartitionedCall3tf.__operators__.getitem_386/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_84108672%
#range_conversion_25/PartitionedCall�
0tf.__operators__.getitem_387/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_387/strided_slice/stack�
2tf.__operators__.getitem_387/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_387/strided_slice/stack_1�
2tf.__operators__.getitem_387/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_387/strided_slice/stack_2�
*tf.__operators__.getitem_387/strided_sliceStridedSliceinputs9tf.__operators__.getitem_387/strided_slice/stack:output:0;tf.__operators__.getitem_387/strided_slice/stack_1:output:0;tf.__operators__.getitem_387/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_387/strided_slicex
tf.concat_512/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_512/concat/axis�
tf.concat_512/concatConcatV2,range_conversion_25/PartitionedCall:output:03tf.__operators__.getitem_387/strided_slice:output:0"tf.concat_512/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_512/concat�
"conv3d_139/StatefulPartitionedCallStatefulPartitionedCalltf.concat_512/concat:output:0conv3d_139_8410887conv3d_139_8410889*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_139_layer_call_and_return_conditional_losses_84108862$
"conv3d_139/StatefulPartitionedCall�
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_139/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_84109002&
$average_pooling3d_57/PartitionedCall�
reshape_50/PartitionedCallPartitionedCall-average_pooling3d_57/PartitionedCall:output:0*
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
G__inference_reshape_50_layer_call_and_return_conditional_losses_84109142
reshape_50/PartitionedCall�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#reshape_50/PartitionedCall:output:0dense_25_8410928dense_25_8410930*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_84109272"
 dense_25/StatefulPartitionedCall�
reshape_51/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_84109482
reshape_51/PartitionedCall�
tf.reshape_638/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_638/Reshape/shape�
tf.reshape_638/ReshapeReshape#reshape_51/PartitionedCall:output:0%tf.reshape_638/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_638/Reshape�
tf.tile_319/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_319/Tile/multiples�
tf.tile_319/TileTiletf.reshape_638/Reshape:output:0#tf.tile_319/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_319/Tile�
tf.reshape_639/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_639/Reshape/shape�
tf.reshape_639/ReshapeReshapetf.tile_319/Tile:output:0%tf.reshape_639/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_639/Reshapex
tf.concat_513/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_513/concat/axis�
tf.concat_513/concatConcatV2tf.reshape_639/Reshape:output:0+conv3d_139/StatefulPartitionedCall:output:0"tf.concat_513/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_513/concat�
"conv3d_140/StatefulPartitionedCallStatefulPartitionedCalltf.concat_513/concat:output:0conv3d_140_8410970conv3d_140_8410972*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_140_layer_call_and_return_conditional_losses_84109692$
"conv3d_140/StatefulPartitionedCall�
"conv3d_141/StatefulPartitionedCallStatefulPartitionedCall+conv3d_140/StatefulPartitionedCall:output:0conv3d_141_8410986conv3d_141_8410988*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_141_layer_call_and_return_conditional_losses_84109852$
"conv3d_141/StatefulPartitionedCall�
IdentityIdentity+conv3d_141/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_139/StatefulPartitionedCall#^conv3d_140/StatefulPartitionedCall#^conv3d_141/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_139/StatefulPartitionedCall"conv3d_139/StatefulPartitionedCall2H
"conv3d_140/StatefulPartitionedCall"conv3d_140/StatefulPartitionedCall2H
"conv3d_141/StatefulPartitionedCall"conv3d_141/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�	
m
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8410900

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
�D
�
E__inference_model_25_layer_call_and_return_conditional_losses_8411229	
input0
conv3d_139_8411197: 
conv3d_139_8411199:"
dense_25_8411204:@@
dense_25_8411206:@0
conv3d_140_8411218: 
conv3d_140_8411220:0
conv3d_141_8411223: 
conv3d_141_8411225:
identity��"conv3d_139/StatefulPartitionedCall�"conv3d_140/StatefulPartitionedCall�"conv3d_141/StatefulPartitionedCall� dense_25/StatefulPartitionedCall�
0tf.__operators__.getitem_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_386/strided_slice/stack�
2tf.__operators__.getitem_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_386/strided_slice/stack_1�
2tf.__operators__.getitem_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_386/strided_slice/stack_2�
*tf.__operators__.getitem_386/strided_sliceStridedSliceinput9tf.__operators__.getitem_386/strided_slice/stack:output:0;tf.__operators__.getitem_386/strided_slice/stack_1:output:0;tf.__operators__.getitem_386/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_386/strided_slice�
#range_conversion_25/PartitionedCallPartitionedCall3tf.__operators__.getitem_386/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_84108672%
#range_conversion_25/PartitionedCall�
0tf.__operators__.getitem_387/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_387/strided_slice/stack�
2tf.__operators__.getitem_387/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_387/strided_slice/stack_1�
2tf.__operators__.getitem_387/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_387/strided_slice/stack_2�
*tf.__operators__.getitem_387/strided_sliceStridedSliceinput9tf.__operators__.getitem_387/strided_slice/stack:output:0;tf.__operators__.getitem_387/strided_slice/stack_1:output:0;tf.__operators__.getitem_387/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_387/strided_slicex
tf.concat_512/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_512/concat/axis�
tf.concat_512/concatConcatV2,range_conversion_25/PartitionedCall:output:03tf.__operators__.getitem_387/strided_slice:output:0"tf.concat_512/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_512/concat�
"conv3d_139/StatefulPartitionedCallStatefulPartitionedCalltf.concat_512/concat:output:0conv3d_139_8411197conv3d_139_8411199*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_139_layer_call_and_return_conditional_losses_84108862$
"conv3d_139/StatefulPartitionedCall�
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_139/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_84109002&
$average_pooling3d_57/PartitionedCall�
reshape_50/PartitionedCallPartitionedCall-average_pooling3d_57/PartitionedCall:output:0*
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
G__inference_reshape_50_layer_call_and_return_conditional_losses_84109142
reshape_50/PartitionedCall�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#reshape_50/PartitionedCall:output:0dense_25_8411204dense_25_8411206*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_84109272"
 dense_25/StatefulPartitionedCall�
reshape_51/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_84109482
reshape_51/PartitionedCall�
tf.reshape_638/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_638/Reshape/shape�
tf.reshape_638/ReshapeReshape#reshape_51/PartitionedCall:output:0%tf.reshape_638/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_638/Reshape�
tf.tile_319/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_319/Tile/multiples�
tf.tile_319/TileTiletf.reshape_638/Reshape:output:0#tf.tile_319/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_319/Tile�
tf.reshape_639/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_639/Reshape/shape�
tf.reshape_639/ReshapeReshapetf.tile_319/Tile:output:0%tf.reshape_639/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_639/Reshapex
tf.concat_513/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_513/concat/axis�
tf.concat_513/concatConcatV2tf.reshape_639/Reshape:output:0+conv3d_139/StatefulPartitionedCall:output:0"tf.concat_513/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_513/concat�
"conv3d_140/StatefulPartitionedCallStatefulPartitionedCalltf.concat_513/concat:output:0conv3d_140_8411218conv3d_140_8411220*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_140_layer_call_and_return_conditional_losses_84109692$
"conv3d_140/StatefulPartitionedCall�
"conv3d_141/StatefulPartitionedCallStatefulPartitionedCall+conv3d_140/StatefulPartitionedCall:output:0conv3d_141_8411223conv3d_141_8411225*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_141_layer_call_and_return_conditional_losses_84109852$
"conv3d_141/StatefulPartitionedCall�
IdentityIdentity+conv3d_141/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_139/StatefulPartitionedCall#^conv3d_140/StatefulPartitionedCall#^conv3d_141/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_139/StatefulPartitionedCall"conv3d_139/StatefulPartitionedCall2H
"conv3d_140/StatefulPartitionedCall"conv3d_140/StatefulPartitionedCall2H
"conv3d_141/StatefulPartitionedCall"conv3d_141/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
*__inference_dense_25_layer_call_fn_8411593

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
E__inference_dense_25_layer_call_and_return_conditional_losses_84109272
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
*__inference_model_25_layer_call_fn_8411319

inputs%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_25_layer_call_and_return_conditional_losses_84109922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

�
*__inference_model_25_layer_call_fn_8411340

inputs%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_model_25_layer_call_and_return_conditional_losses_84111432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
G__inference_conv3d_140_layer_call_and_return_conditional_losses_8411644

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
c
G__inference_reshape_51_layer_call_and_return_conditional_losses_8411624

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
G__inference_conv3d_139_layer_call_and_return_conditional_losses_8411539

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
� 
�
 __inference__traced_save_8411710
file_prefix0
,savev2_conv3d_139_kernel_read_readvariableop.
*savev2_conv3d_139_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop0
,savev2_conv3d_140_kernel_read_readvariableop.
*savev2_conv3d_140_bias_read_readvariableop0
,savev2_conv3d_141_kernel_read_readvariableop.
*savev2_conv3d_141_bias_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_139_kernel_read_readvariableop*savev2_conv3d_139_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop,savev2_conv3d_140_kernel_read_readvariableop*savev2_conv3d_140_bias_read_readvariableop,savev2_conv3d_141_kernel_read_readvariableop*savev2_conv3d_141_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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

identity_1Identity_1:output:0*{
_input_shapesj
h: :::@@:@::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:@@: 

_output_shapes
:@:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::	

_output_shapes
: 
�u
�
E__inference_model_25_layer_call_and_return_conditional_losses_8411502

inputsG
)conv3d_139_conv3d_readvariableop_resource:8
*conv3d_139_biasadd_readvariableop_resource:9
'dense_25_matmul_readvariableop_resource:@@6
(dense_25_biasadd_readvariableop_resource:@G
)conv3d_140_conv3d_readvariableop_resource:8
*conv3d_140_biasadd_readvariableop_resource:G
)conv3d_141_conv3d_readvariableop_resource:8
*conv3d_141_biasadd_readvariableop_resource:
identity��!conv3d_139/BiasAdd/ReadVariableOp� conv3d_139/Conv3D/ReadVariableOp�!conv3d_140/BiasAdd/ReadVariableOp� conv3d_140/Conv3D/ReadVariableOp�!conv3d_141/BiasAdd/ReadVariableOp� conv3d_141/Conv3D/ReadVariableOp�dense_25/BiasAdd/ReadVariableOp�dense_25/MatMul/ReadVariableOp�
0tf.__operators__.getitem_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_386/strided_slice/stack�
2tf.__operators__.getitem_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_386/strided_slice/stack_1�
2tf.__operators__.getitem_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_386/strided_slice/stack_2�
*tf.__operators__.getitem_386/strided_sliceStridedSliceinputs9tf.__operators__.getitem_386/strided_slice/stack:output:0;tf.__operators__.getitem_386/strided_slice/stack_1:output:0;tf.__operators__.getitem_386/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_386/strided_slice{
range_conversion_25/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_25/sub/y�
range_conversion_25/subSub3tf.__operators__.getitem_386/strided_slice:output:0"range_conversion_25/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/sub�
range_conversion_25/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_25/truediv/y�
range_conversion_25/truedivRealDivrange_conversion_25/sub:z:0&range_conversion_25/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/truediv{
range_conversion_25/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_25/mul/y�
range_conversion_25/mulMulrange_conversion_25/truediv:z:0"range_conversion_25/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/mul{
range_conversion_25/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_25/add/y�
range_conversion_25/addAddV2range_conversion_25/mul:z:0"range_conversion_25/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/add�
0tf.__operators__.getitem_387/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_387/strided_slice/stack�
2tf.__operators__.getitem_387/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_387/strided_slice/stack_1�
2tf.__operators__.getitem_387/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_387/strided_slice/stack_2�
*tf.__operators__.getitem_387/strided_sliceStridedSliceinputs9tf.__operators__.getitem_387/strided_slice/stack:output:0;tf.__operators__.getitem_387/strided_slice/stack_1:output:0;tf.__operators__.getitem_387/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_387/strided_slicex
tf.concat_512/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_512/concat/axis�
tf.concat_512/concatConcatV2range_conversion_25/add:z:03tf.__operators__.getitem_387/strided_slice:output:0"tf.concat_512/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_512/concat�
 conv3d_139/Conv3D/ReadVariableOpReadVariableOp)conv3d_139_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_139/Conv3D/ReadVariableOp�
conv3d_139/Conv3DConv3Dtf.concat_512/concat:output:0(conv3d_139/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_139/Conv3D�
!conv3d_139/BiasAdd/ReadVariableOpReadVariableOp*conv3d_139_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_139/BiasAdd/ReadVariableOp�
conv3d_139/BiasAddBiasAddconv3d_139/Conv3D:output:0)conv3d_139/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_139/BiasAdd�
conv3d_139/SoftplusSoftplusconv3d_139/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_139/Softplus�
#average_pooling3d_57/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_57/transpose/perm�
average_pooling3d_57/transpose	Transpose!conv3d_139/Softplus:activations:0,average_pooling3d_57/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_57/transpose�
average_pooling3d_57/AvgPool3D	AvgPool3D"average_pooling3d_57/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_57/AvgPool3D�
%average_pooling3d_57/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_57/transpose_1/perm�
 average_pooling3d_57/transpose_1	Transpose'average_pooling3d_57/AvgPool3D:output:0.average_pooling3d_57/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_57/transpose_1x
reshape_50/ShapeShape$average_pooling3d_57/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_50/Shape�
reshape_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_50/strided_slice/stack�
 reshape_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_50/strided_slice/stack_1�
 reshape_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_50/strided_slice/stack_2�
reshape_50/strided_sliceStridedSlicereshape_50/Shape:output:0'reshape_50/strided_slice/stack:output:0)reshape_50/strided_slice/stack_1:output:0)reshape_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_50/strided_slicez
reshape_50/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_50/Reshape/shape/1�
reshape_50/Reshape/shapePack!reshape_50/strided_slice:output:0#reshape_50/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_50/Reshape/shape�
reshape_50/ReshapeReshape$average_pooling3d_57/transpose_1:y:0!reshape_50/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_50/Reshape�
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_25/MatMul/ReadVariableOp�
dense_25/MatMulMatMulreshape_50/Reshape:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_25/MatMul�
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_25/BiasAdd/ReadVariableOp�
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_25/BiasAdd
dense_25/SoftplusSoftplusdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_25/Softpluss
reshape_51/ShapeShapedense_25/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_51/Shape�
reshape_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_51/strided_slice/stack�
 reshape_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_1�
 reshape_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_2�
reshape_51/strided_sliceStridedSlicereshape_51/Shape:output:0'reshape_51/strided_slice/stack:output:0)reshape_51/strided_slice/stack_1:output:0)reshape_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_51/strided_slicez
reshape_51/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/1z
reshape_51/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/2z
reshape_51/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/3z
reshape_51/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/4�
reshape_51/Reshape/shapePack!reshape_51/strided_slice:output:0#reshape_51/Reshape/shape/1:output:0#reshape_51/Reshape/shape/2:output:0#reshape_51/Reshape/shape/3:output:0#reshape_51/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_51/Reshape/shape�
reshape_51/ReshapeReshapedense_25/Softplus:activations:0!reshape_51/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_51/Reshape�
tf.reshape_638/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_638/Reshape/shape�
tf.reshape_638/ReshapeReshapereshape_51/Reshape:output:0%tf.reshape_638/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_638/Reshape�
tf.tile_319/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_319/Tile/multiples�
tf.tile_319/TileTiletf.reshape_638/Reshape:output:0#tf.tile_319/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_319/Tile�
tf.reshape_639/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_639/Reshape/shape�
tf.reshape_639/ReshapeReshapetf.tile_319/Tile:output:0%tf.reshape_639/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_639/Reshapex
tf.concat_513/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_513/concat/axis�
tf.concat_513/concatConcatV2tf.reshape_639/Reshape:output:0!conv3d_139/Softplus:activations:0"tf.concat_513/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_513/concat�
 conv3d_140/Conv3D/ReadVariableOpReadVariableOp)conv3d_140_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_140/Conv3D/ReadVariableOp�
conv3d_140/Conv3DConv3Dtf.concat_513/concat:output:0(conv3d_140/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_140/Conv3D�
!conv3d_140/BiasAdd/ReadVariableOpReadVariableOp*conv3d_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_140/BiasAdd/ReadVariableOp�
conv3d_140/BiasAddBiasAddconv3d_140/Conv3D:output:0)conv3d_140/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_140/BiasAdd�
conv3d_140/SoftplusSoftplusconv3d_140/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_140/Softplus�
 conv3d_141/Conv3D/ReadVariableOpReadVariableOp)conv3d_141_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_141/Conv3D/ReadVariableOp�
conv3d_141/Conv3DConv3D!conv3d_140/Softplus:activations:0(conv3d_141/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_141/Conv3D�
!conv3d_141/BiasAdd/ReadVariableOpReadVariableOp*conv3d_141_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_141/BiasAdd/ReadVariableOp�
conv3d_141/BiasAddBiasAddconv3d_141/Conv3D:output:0)conv3d_141/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_141/BiasAdd�
IdentityIdentityconv3d_141/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_139/BiasAdd/ReadVariableOp!^conv3d_139/Conv3D/ReadVariableOp"^conv3d_140/BiasAdd/ReadVariableOp!^conv3d_140/Conv3D/ReadVariableOp"^conv3d_141/BiasAdd/ReadVariableOp!^conv3d_141/Conv3D/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_139/BiasAdd/ReadVariableOp!conv3d_139/BiasAdd/ReadVariableOp2D
 conv3d_139/Conv3D/ReadVariableOp conv3d_139/Conv3D/ReadVariableOp2F
!conv3d_140/BiasAdd/ReadVariableOp!conv3d_140/BiasAdd/ReadVariableOp2D
 conv3d_140/Conv3D/ReadVariableOp conv3d_140/Conv3D/ReadVariableOp2F
!conv3d_141/BiasAdd/ReadVariableOp!conv3d_141/BiasAdd/ReadVariableOp2D
 conv3d_141/Conv3D/ReadVariableOp conv3d_141/Conv3D/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�

m
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8411558

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
�
H
,__inference_reshape_50_layer_call_fn_8411572

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
G__inference_reshape_50_layer_call_and_return_conditional_losses_84109142
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
c
G__inference_reshape_51_layer_call_and_return_conditional_losses_8410948

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
�
E__inference_dense_25_layer_call_and_return_conditional_losses_8411604

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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8411567

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
c
G__inference_reshape_50_layer_call_and_return_conditional_losses_8410914

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
G__inference_conv3d_141_layer_call_and_return_conditional_losses_8410985

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv3D/ReadVariableOp�
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp�
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
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
:���������*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�D
�
E__inference_model_25_layer_call_and_return_conditional_losses_8411275	
input0
conv3d_139_8411243: 
conv3d_139_8411245:"
dense_25_8411250:@@
dense_25_8411252:@0
conv3d_140_8411264: 
conv3d_140_8411266:0
conv3d_141_8411269: 
conv3d_141_8411271:
identity��"conv3d_139/StatefulPartitionedCall�"conv3d_140/StatefulPartitionedCall�"conv3d_141/StatefulPartitionedCall� dense_25/StatefulPartitionedCall�
0tf.__operators__.getitem_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_386/strided_slice/stack�
2tf.__operators__.getitem_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_386/strided_slice/stack_1�
2tf.__operators__.getitem_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_386/strided_slice/stack_2�
*tf.__operators__.getitem_386/strided_sliceStridedSliceinput9tf.__operators__.getitem_386/strided_slice/stack:output:0;tf.__operators__.getitem_386/strided_slice/stack_1:output:0;tf.__operators__.getitem_386/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_386/strided_slice�
#range_conversion_25/PartitionedCallPartitionedCall3tf.__operators__.getitem_386/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_84108672%
#range_conversion_25/PartitionedCall�
0tf.__operators__.getitem_387/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_387/strided_slice/stack�
2tf.__operators__.getitem_387/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_387/strided_slice/stack_1�
2tf.__operators__.getitem_387/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_387/strided_slice/stack_2�
*tf.__operators__.getitem_387/strided_sliceStridedSliceinput9tf.__operators__.getitem_387/strided_slice/stack:output:0;tf.__operators__.getitem_387/strided_slice/stack_1:output:0;tf.__operators__.getitem_387/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_387/strided_slicex
tf.concat_512/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_512/concat/axis�
tf.concat_512/concatConcatV2,range_conversion_25/PartitionedCall:output:03tf.__operators__.getitem_387/strided_slice:output:0"tf.concat_512/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_512/concat�
"conv3d_139/StatefulPartitionedCallStatefulPartitionedCalltf.concat_512/concat:output:0conv3d_139_8411243conv3d_139_8411245*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_139_layer_call_and_return_conditional_losses_84108862$
"conv3d_139/StatefulPartitionedCall�
$average_pooling3d_57/PartitionedCallPartitionedCall+conv3d_139/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_84109002&
$average_pooling3d_57/PartitionedCall�
reshape_50/PartitionedCallPartitionedCall-average_pooling3d_57/PartitionedCall:output:0*
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
G__inference_reshape_50_layer_call_and_return_conditional_losses_84109142
reshape_50/PartitionedCall�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#reshape_50/PartitionedCall:output:0dense_25_8411250dense_25_8411252*
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
E__inference_dense_25_layer_call_and_return_conditional_losses_84109272"
 dense_25/StatefulPartitionedCall�
reshape_51/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_84109482
reshape_51/PartitionedCall�
tf.reshape_638/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_638/Reshape/shape�
tf.reshape_638/ReshapeReshape#reshape_51/PartitionedCall:output:0%tf.reshape_638/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_638/Reshape�
tf.tile_319/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_319/Tile/multiples�
tf.tile_319/TileTiletf.reshape_638/Reshape:output:0#tf.tile_319/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_319/Tile�
tf.reshape_639/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_639/Reshape/shape�
tf.reshape_639/ReshapeReshapetf.tile_319/Tile:output:0%tf.reshape_639/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_639/Reshapex
tf.concat_513/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_513/concat/axis�
tf.concat_513/concatConcatV2tf.reshape_639/Reshape:output:0+conv3d_139/StatefulPartitionedCall:output:0"tf.concat_513/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_513/concat�
"conv3d_140/StatefulPartitionedCallStatefulPartitionedCalltf.concat_513/concat:output:0conv3d_140_8411264conv3d_140_8411266*
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_140_layer_call_and_return_conditional_losses_84109692$
"conv3d_140/StatefulPartitionedCall�
"conv3d_141/StatefulPartitionedCallStatefulPartitionedCall+conv3d_140/StatefulPartitionedCall:output:0conv3d_141_8411269conv3d_141_8411271*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_141_layer_call_and_return_conditional_losses_84109852$
"conv3d_141/StatefulPartitionedCall�
IdentityIdentity+conv3d_141/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_139/StatefulPartitionedCall#^conv3d_140/StatefulPartitionedCall#^conv3d_141/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_139/StatefulPartitionedCall"conv3d_139/StatefulPartitionedCall2H
"conv3d_140/StatefulPartitionedCall"conv3d_140/StatefulPartitionedCall2H
"conv3d_141/StatefulPartitionedCall"conv3d_141/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
R
6__inference_average_pooling3d_57_layer_call_fn_8411549

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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_84109002
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
�	
p
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_8410867

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�	
p
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_8411519

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
:���������2
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
:���������2	
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
:���������2
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
:���������2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�
R
6__inference_average_pooling3d_57_layer_call_fn_8411544

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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_84108272
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
U
5__inference_range_conversion_25_layer_call_fn_8411507

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
:���������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_84108672
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:_ [
3
_output_shapes!
:���������
$
_user_specified_name
parameters
�
�
,__inference_conv3d_139_layer_call_fn_8411528

inputs%
unknown:
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
GPU2 *0,1,2,3J 8� *P
fKRI
G__inference_conv3d_139_layer_call_and_return_conditional_losses_84108862
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
#:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�u
�
E__inference_model_25_layer_call_and_return_conditional_losses_8411421

inputsG
)conv3d_139_conv3d_readvariableop_resource:8
*conv3d_139_biasadd_readvariableop_resource:9
'dense_25_matmul_readvariableop_resource:@@6
(dense_25_biasadd_readvariableop_resource:@G
)conv3d_140_conv3d_readvariableop_resource:8
*conv3d_140_biasadd_readvariableop_resource:G
)conv3d_141_conv3d_readvariableop_resource:8
*conv3d_141_biasadd_readvariableop_resource:
identity��!conv3d_139/BiasAdd/ReadVariableOp� conv3d_139/Conv3D/ReadVariableOp�!conv3d_140/BiasAdd/ReadVariableOp� conv3d_140/Conv3D/ReadVariableOp�!conv3d_141/BiasAdd/ReadVariableOp� conv3d_141/Conv3D/ReadVariableOp�dense_25/BiasAdd/ReadVariableOp�dense_25/MatMul/ReadVariableOp�
0tf.__operators__.getitem_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_386/strided_slice/stack�
2tf.__operators__.getitem_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_386/strided_slice/stack_1�
2tf.__operators__.getitem_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_386/strided_slice/stack_2�
*tf.__operators__.getitem_386/strided_sliceStridedSliceinputs9tf.__operators__.getitem_386/strided_slice/stack:output:0;tf.__operators__.getitem_386/strided_slice/stack_1:output:0;tf.__operators__.getitem_386/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_386/strided_slice{
range_conversion_25/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_25/sub/y�
range_conversion_25/subSub3tf.__operators__.getitem_386/strided_slice:output:0"range_conversion_25/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/sub�
range_conversion_25/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_25/truediv/y�
range_conversion_25/truedivRealDivrange_conversion_25/sub:z:0&range_conversion_25/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/truediv{
range_conversion_25/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_25/mul/y�
range_conversion_25/mulMulrange_conversion_25/truediv:z:0"range_conversion_25/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/mul{
range_conversion_25/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_25/add/y�
range_conversion_25/addAddV2range_conversion_25/mul:z:0"range_conversion_25/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_25/add�
0tf.__operators__.getitem_387/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_387/strided_slice/stack�
2tf.__operators__.getitem_387/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_387/strided_slice/stack_1�
2tf.__operators__.getitem_387/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_387/strided_slice/stack_2�
*tf.__operators__.getitem_387/strided_sliceStridedSliceinputs9tf.__operators__.getitem_387/strided_slice/stack:output:0;tf.__operators__.getitem_387/strided_slice/stack_1:output:0;tf.__operators__.getitem_387/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_387/strided_slicex
tf.concat_512/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_512/concat/axis�
tf.concat_512/concatConcatV2range_conversion_25/add:z:03tf.__operators__.getitem_387/strided_slice:output:0"tf.concat_512/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_512/concat�
 conv3d_139/Conv3D/ReadVariableOpReadVariableOp)conv3d_139_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_139/Conv3D/ReadVariableOp�
conv3d_139/Conv3DConv3Dtf.concat_512/concat:output:0(conv3d_139/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_139/Conv3D�
!conv3d_139/BiasAdd/ReadVariableOpReadVariableOp*conv3d_139_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_139/BiasAdd/ReadVariableOp�
conv3d_139/BiasAddBiasAddconv3d_139/Conv3D:output:0)conv3d_139/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_139/BiasAdd�
conv3d_139/SoftplusSoftplusconv3d_139/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_139/Softplus�
#average_pooling3d_57/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_57/transpose/perm�
average_pooling3d_57/transpose	Transpose!conv3d_139/Softplus:activations:0,average_pooling3d_57/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_57/transpose�
average_pooling3d_57/AvgPool3D	AvgPool3D"average_pooling3d_57/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_57/AvgPool3D�
%average_pooling3d_57/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_57/transpose_1/perm�
 average_pooling3d_57/transpose_1	Transpose'average_pooling3d_57/AvgPool3D:output:0.average_pooling3d_57/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_57/transpose_1x
reshape_50/ShapeShape$average_pooling3d_57/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_50/Shape�
reshape_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_50/strided_slice/stack�
 reshape_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_50/strided_slice/stack_1�
 reshape_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_50/strided_slice/stack_2�
reshape_50/strided_sliceStridedSlicereshape_50/Shape:output:0'reshape_50/strided_slice/stack:output:0)reshape_50/strided_slice/stack_1:output:0)reshape_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_50/strided_slicez
reshape_50/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_50/Reshape/shape/1�
reshape_50/Reshape/shapePack!reshape_50/strided_slice:output:0#reshape_50/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_50/Reshape/shape�
reshape_50/ReshapeReshape$average_pooling3d_57/transpose_1:y:0!reshape_50/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_50/Reshape�
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_25/MatMul/ReadVariableOp�
dense_25/MatMulMatMulreshape_50/Reshape:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_25/MatMul�
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_25/BiasAdd/ReadVariableOp�
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_25/BiasAdd
dense_25/SoftplusSoftplusdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_25/Softpluss
reshape_51/ShapeShapedense_25/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_51/Shape�
reshape_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_51/strided_slice/stack�
 reshape_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_1�
 reshape_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_2�
reshape_51/strided_sliceStridedSlicereshape_51/Shape:output:0'reshape_51/strided_slice/stack:output:0)reshape_51/strided_slice/stack_1:output:0)reshape_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_51/strided_slicez
reshape_51/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/1z
reshape_51/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/2z
reshape_51/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/3z
reshape_51/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/4�
reshape_51/Reshape/shapePack!reshape_51/strided_slice:output:0#reshape_51/Reshape/shape/1:output:0#reshape_51/Reshape/shape/2:output:0#reshape_51/Reshape/shape/3:output:0#reshape_51/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_51/Reshape/shape�
reshape_51/ReshapeReshapedense_25/Softplus:activations:0!reshape_51/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_51/Reshape�
tf.reshape_638/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_638/Reshape/shape�
tf.reshape_638/ReshapeReshapereshape_51/Reshape:output:0%tf.reshape_638/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_638/Reshape�
tf.tile_319/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_319/Tile/multiples�
tf.tile_319/TileTiletf.reshape_638/Reshape:output:0#tf.tile_319/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_319/Tile�
tf.reshape_639/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_639/Reshape/shape�
tf.reshape_639/ReshapeReshapetf.tile_319/Tile:output:0%tf.reshape_639/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_639/Reshapex
tf.concat_513/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_513/concat/axis�
tf.concat_513/concatConcatV2tf.reshape_639/Reshape:output:0!conv3d_139/Softplus:activations:0"tf.concat_513/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_513/concat�
 conv3d_140/Conv3D/ReadVariableOpReadVariableOp)conv3d_140_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_140/Conv3D/ReadVariableOp�
conv3d_140/Conv3DConv3Dtf.concat_513/concat:output:0(conv3d_140/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_140/Conv3D�
!conv3d_140/BiasAdd/ReadVariableOpReadVariableOp*conv3d_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_140/BiasAdd/ReadVariableOp�
conv3d_140/BiasAddBiasAddconv3d_140/Conv3D:output:0)conv3d_140/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_140/BiasAdd�
conv3d_140/SoftplusSoftplusconv3d_140/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_140/Softplus�
 conv3d_141/Conv3D/ReadVariableOpReadVariableOp)conv3d_141_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_141/Conv3D/ReadVariableOp�
conv3d_141/Conv3DConv3D!conv3d_140/Softplus:activations:0(conv3d_141/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_141/Conv3D�
!conv3d_141/BiasAdd/ReadVariableOpReadVariableOp*conv3d_141_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_141/BiasAdd/ReadVariableOp�
conv3d_141/BiasAddBiasAddconv3d_141/Conv3D:output:0)conv3d_141/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_141/BiasAdd�
IdentityIdentityconv3d_141/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_139/BiasAdd/ReadVariableOp!^conv3d_139/Conv3D/ReadVariableOp"^conv3d_140/BiasAdd/ReadVariableOp!^conv3d_140/Conv3D/ReadVariableOp"^conv3d_141/BiasAdd/ReadVariableOp!^conv3d_141/Conv3D/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_139/BiasAdd/ReadVariableOp!conv3d_139/BiasAdd/ReadVariableOp2D
 conv3d_139/Conv3D/ReadVariableOp conv3d_139/Conv3D/ReadVariableOp2F
!conv3d_140/BiasAdd/ReadVariableOp!conv3d_140/BiasAdd/ReadVariableOp2D
 conv3d_140/Conv3D/ReadVariableOp conv3d_140/Conv3D/ReadVariableOp2F
!conv3d_141/BiasAdd/ReadVariableOp!conv3d_141/BiasAdd/ReadVariableOp2D
 conv3d_141/Conv3D/ReadVariableOp conv3d_141/Conv3D/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
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
serving_default_input:0���������J

conv3d_141<
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
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
regularization_losses
	variables
trainable_variables
	keras_api

signatures
r__call__
s_default_save_signature
*t&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
regularization_losses
trainable_variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
�

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#	variables
$regularization_losses
%trainable_variables
&	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
'	variables
(regularization_losses
)trainable_variables
*	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
�

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1	variables
2regularization_losses
3trainable_variables
4	keras_api
__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
5	keras_api"
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
�

9kernel
:bias
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
 "
trackable_list_wrapper
X
0
1
+2
,3
94
:5
?6
@7"
trackable_list_wrapper
X
0
1
+2
,3
94
:5
?6
@7"
trackable_list_wrapper
�
Enon_trainable_variables
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
regularization_losses

Ilayers
	variables
trainable_variables
r__call__
s_default_save_signature
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
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
Jnon_trainable_variables
	variables
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
regularization_losses

Nlayers
trainable_variables
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_139/kernel
: 2conv3d_139/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Onon_trainable_variables
	variables
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
 regularization_losses

Slayers
!trainable_variables
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tnon_trainable_variables
#	variables
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
$regularization_losses

Xlayers
%trainable_variables
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ynon_trainable_variables
'	variables
Zmetrics
[layer_regularization_losses
\layer_metrics
(regularization_losses

]layers
)trainable_variables
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_25/kernel
:@ 2dense_25/bias
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
^non_trainable_variables
-	variables
_metrics
`layer_regularization_losses
alayer_metrics
.regularization_losses

blayers
/trainable_variables
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
cnon_trainable_variables
1	variables
dmetrics
elayer_regularization_losses
flayer_metrics
2regularization_losses

glayers
3trainable_variables
__call__
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
1:/ 2conv3d_140/kernel
: 2conv3d_140/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
�
hnon_trainable_variables
;	variables
imetrics
jlayer_regularization_losses
klayer_metrics
<regularization_losses

llayers
=trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_141/kernel
: 2conv3d_141/bias
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
mnon_trainable_variables
A	variables
nmetrics
olayer_regularization_losses
player_metrics
Bregularization_losses

qlayers
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
�2�
*__inference_model_25_layer_call_fn_8411011
*__inference_model_25_layer_call_fn_8411319
*__inference_model_25_layer_call_fn_8411340
*__inference_model_25_layer_call_fn_8411183�
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
"__inference__wrapped_model_8410814input"�
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
E__inference_model_25_layer_call_and_return_conditional_losses_8411421
E__inference_model_25_layer_call_and_return_conditional_losses_8411502
E__inference_model_25_layer_call_and_return_conditional_losses_8411229
E__inference_model_25_layer_call_and_return_conditional_losses_8411275�
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
5__inference_range_conversion_25_layer_call_fn_8411507�
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
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_8411519�
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
,__inference_conv3d_139_layer_call_fn_8411528�
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
G__inference_conv3d_139_layer_call_and_return_conditional_losses_8411539�
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
6__inference_average_pooling3d_57_layer_call_fn_8411544
6__inference_average_pooling3d_57_layer_call_fn_8411549�
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
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8411558
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8411567�
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
,__inference_reshape_50_layer_call_fn_8411572�
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
G__inference_reshape_50_layer_call_and_return_conditional_losses_8411584�
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
*__inference_dense_25_layer_call_fn_8411593�
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
E__inference_dense_25_layer_call_and_return_conditional_losses_8411604�
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
,__inference_reshape_51_layer_call_fn_8411609�
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_8411624�
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
,__inference_conv3d_140_layer_call_fn_8411633�
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
G__inference_conv3d_140_layer_call_and_return_conditional_losses_8411644�
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
,__inference_conv3d_141_layer_call_fn_8411653�
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
G__inference_conv3d_141_layer_call_and_return_conditional_losses_8411663�
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
%__inference_signature_wrapper_8411298input"�
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
"__inference__wrapped_model_8410814�+,9:?@:�7
0�-
+�(
input���������
� "C�@
>

conv3d_1410�-

conv3d_141����������
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8411558�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
Q__inference_average_pooling3d_57_layer_call_and_return_conditional_losses_8411567p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
6__inference_average_pooling3d_57_layer_call_fn_8411544�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
6__inference_average_pooling3d_57_layer_call_fn_8411549c;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_139_layer_call_and_return_conditional_losses_8411539t;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
,__inference_conv3d_139_layer_call_fn_8411528g;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_140_layer_call_and_return_conditional_losses_8411644t9:;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
,__inference_conv3d_140_layer_call_fn_8411633g9:;�8
1�.
,�)
inputs���������
� "$�!����������
G__inference_conv3d_141_layer_call_and_return_conditional_losses_8411663t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
,__inference_conv3d_141_layer_call_fn_8411653g?@;�8
1�.
,�)
inputs���������
� "$�!����������
E__inference_dense_25_layer_call_and_return_conditional_losses_8411604\+,/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
*__inference_dense_25_layer_call_fn_8411593O+,/�,
%�"
 �
inputs���������@
� "����������@�
E__inference_model_25_layer_call_and_return_conditional_losses_8411229�+,9:?@B�?
8�5
+�(
input���������
p 

 
� "1�.
'�$
0���������
� �
E__inference_model_25_layer_call_and_return_conditional_losses_8411275�+,9:?@B�?
8�5
+�(
input���������
p

 
� "1�.
'�$
0���������
� �
E__inference_model_25_layer_call_and_return_conditional_losses_8411421�+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "1�.
'�$
0���������
� �
E__inference_model_25_layer_call_and_return_conditional_losses_8411502�+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "1�.
'�$
0���������
� �
*__inference_model_25_layer_call_fn_8411011t+,9:?@B�?
8�5
+�(
input���������
p 

 
� "$�!����������
*__inference_model_25_layer_call_fn_8411183t+,9:?@B�?
8�5
+�(
input���������
p

 
� "$�!����������
*__inference_model_25_layer_call_fn_8411319u+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
*__inference_model_25_layer_call_fn_8411340u+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
P__inference_range_conversion_25_layer_call_and_return_conditional_losses_8411519t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
5__inference_range_conversion_25_layer_call_fn_8411507g?�<
5�2
0�-

parameters���������
� "$�!����������
G__inference_reshape_50_layer_call_and_return_conditional_losses_8411584d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
,__inference_reshape_50_layer_call_fn_8411572W;�8
1�.
,�)
inputs���������
� "����������@�
G__inference_reshape_51_layer_call_and_return_conditional_losses_8411624d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
,__inference_reshape_51_layer_call_fn_8411609W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_8411298�+,9:?@C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_1410�-

conv3d_141���������