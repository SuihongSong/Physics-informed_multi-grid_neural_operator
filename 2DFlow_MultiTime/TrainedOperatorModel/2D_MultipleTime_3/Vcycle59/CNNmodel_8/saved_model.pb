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
conv3d_214/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_214/kernel
�
%conv3d_214/kernel/Read/ReadVariableOpReadVariableOpconv3d_214/kernel**
_output_shapes
:*
dtype0
v
conv3d_214/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_214/bias
o
#conv3d_214/bias/Read/ReadVariableOpReadVariableOpconv3d_214/bias*
_output_shapes
:*
dtype0
z
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_40/kernel
s
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes

:@@*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:@*
dtype0
�
conv3d_215/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_215/kernel
�
%conv3d_215/kernel/Read/ReadVariableOpReadVariableOpconv3d_215/kernel**
_output_shapes
:*
dtype0
v
conv3d_215/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_215/bias
o
#conv3d_215/bias/Read/ReadVariableOpReadVariableOpconv3d_215/bias*
_output_shapes
:*
dtype0
�
conv3d_216/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_216/kernel
�
%conv3d_216/kernel/Read/ReadVariableOpReadVariableOpconv3d_216/kernel**
_output_shapes
:*
dtype0
v
conv3d_216/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_216/bias
o
#conv3d_216/bias/Read/ReadVariableOpReadVariableOpconv3d_216/bias*
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
VARIABLE_VALUEconv3d_214/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_214/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_40/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_40/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_215/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_215/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_216/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_216/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_214/kernelconv3d_214/biasdense_40/kerneldense_40/biasconv3d_215/kernelconv3d_215/biasconv3d_216/kernelconv3d_216/bias*
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
GPU2 *0,1,2,3J 8� */
f*R(
&__inference_signature_wrapper_11898798
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_214/kernel/Read/ReadVariableOp#conv3d_214/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp%conv3d_215/kernel/Read/ReadVariableOp#conv3d_215/bias/Read/ReadVariableOp%conv3d_216/kernel/Read/ReadVariableOp#conv3d_216/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8� **
f%R#
!__inference__traced_save_11899210
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_214/kernelconv3d_214/biasdense_40/kerneldense_40/biasconv3d_215/kernelconv3d_215/biasconv3d_216/kernelconv3d_216/bias*
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
GPU2 *0,1,2,3J 8� *-
f(R&
$__inference__traced_restore_11899244�
�

n
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11899058

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
q
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_11899019

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

�
+__inference_model_40_layer_call_fn_11898511	
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_40_layer_call_and_return_conditional_losses_118984922
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

�
+__inference_model_40_layer_call_fn_11898840

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_40_layer_call_and_return_conditional_losses_118986432
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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_11898469

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
H__inference_conv3d_214_layer_call_and_return_conditional_losses_11899039

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
n
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11899067

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
H__inference_conv3d_214_layer_call_and_return_conditional_losses_11898386

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
�'
�
$__inference__traced_restore_11899244
file_prefix@
"assignvariableop_conv3d_214_kernel:0
"assignvariableop_1_conv3d_214_bias:4
"assignvariableop_2_dense_40_kernel:@@.
 assignvariableop_3_dense_40_bias:@B
$assignvariableop_4_conv3d_215_kernel:0
"assignvariableop_5_conv3d_215_bias:B
$assignvariableop_6_conv3d_216_kernel:0
"assignvariableop_7_conv3d_216_bias:

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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_214_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_214_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_40_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_40_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_215_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_215_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_216_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_216_biasIdentity_7:output:0"/device:CPU:0*
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
�u
�
F__inference_model_40_layer_call_and_return_conditional_losses_11899002

inputsG
)conv3d_214_conv3d_readvariableop_resource:8
*conv3d_214_biasadd_readvariableop_resource:9
'dense_40_matmul_readvariableop_resource:@@6
(dense_40_biasadd_readvariableop_resource:@G
)conv3d_215_conv3d_readvariableop_resource:8
*conv3d_215_biasadd_readvariableop_resource:G
)conv3d_216_conv3d_readvariableop_resource:8
*conv3d_216_biasadd_readvariableop_resource:
identity��!conv3d_214/BiasAdd/ReadVariableOp� conv3d_214/Conv3D/ReadVariableOp�!conv3d_215/BiasAdd/ReadVariableOp� conv3d_215/Conv3D/ReadVariableOp�!conv3d_216/BiasAdd/ReadVariableOp� conv3d_216/Conv3D/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�dense_40/MatMul/ReadVariableOp�
0tf.__operators__.getitem_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_416/strided_slice/stack�
2tf.__operators__.getitem_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_416/strided_slice/stack_1�
2tf.__operators__.getitem_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_416/strided_slice/stack_2�
*tf.__operators__.getitem_416/strided_sliceStridedSliceinputs9tf.__operators__.getitem_416/strided_slice/stack:output:0;tf.__operators__.getitem_416/strided_slice/stack_1:output:0;tf.__operators__.getitem_416/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_416/strided_slice{
range_conversion_40/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_40/sub/y�
range_conversion_40/subSub3tf.__operators__.getitem_416/strided_slice:output:0"range_conversion_40/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/sub�
range_conversion_40/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_40/truediv/y�
range_conversion_40/truedivRealDivrange_conversion_40/sub:z:0&range_conversion_40/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/truediv{
range_conversion_40/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_40/mul/y�
range_conversion_40/mulMulrange_conversion_40/truediv:z:0"range_conversion_40/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/mul{
range_conversion_40/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_40/add/y�
range_conversion_40/addAddV2range_conversion_40/mul:z:0"range_conversion_40/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/add�
0tf.__operators__.getitem_417/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_417/strided_slice/stack�
2tf.__operators__.getitem_417/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_417/strided_slice/stack_1�
2tf.__operators__.getitem_417/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_417/strided_slice/stack_2�
*tf.__operators__.getitem_417/strided_sliceStridedSliceinputs9tf.__operators__.getitem_417/strided_slice/stack:output:0;tf.__operators__.getitem_417/strided_slice/stack_1:output:0;tf.__operators__.getitem_417/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_417/strided_slicex
tf.concat_557/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_557/concat/axis�
tf.concat_557/concatConcatV2range_conversion_40/add:z:03tf.__operators__.getitem_417/strided_slice:output:0"tf.concat_557/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_557/concat�
 conv3d_214/Conv3D/ReadVariableOpReadVariableOp)conv3d_214_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_214/Conv3D/ReadVariableOp�
conv3d_214/Conv3DConv3Dtf.concat_557/concat:output:0(conv3d_214/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_214/Conv3D�
!conv3d_214/BiasAdd/ReadVariableOpReadVariableOp*conv3d_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_214/BiasAdd/ReadVariableOp�
conv3d_214/BiasAddBiasAddconv3d_214/Conv3D:output:0)conv3d_214/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_214/BiasAdd�
conv3d_214/SoftplusSoftplusconv3d_214/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_214/Softplus�
#average_pooling3d_87/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_87/transpose/perm�
average_pooling3d_87/transpose	Transpose!conv3d_214/Softplus:activations:0,average_pooling3d_87/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_87/transpose�
average_pooling3d_87/AvgPool3D	AvgPool3D"average_pooling3d_87/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_87/AvgPool3D�
%average_pooling3d_87/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_87/transpose_1/perm�
 average_pooling3d_87/transpose_1	Transpose'average_pooling3d_87/AvgPool3D:output:0.average_pooling3d_87/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_87/transpose_1x
reshape_80/ShapeShape$average_pooling3d_87/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_80/Shape�
reshape_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_80/strided_slice/stack�
 reshape_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_1�
 reshape_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_2�
reshape_80/strided_sliceStridedSlicereshape_80/Shape:output:0'reshape_80/strided_slice/stack:output:0)reshape_80/strided_slice/stack_1:output:0)reshape_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_80/strided_slicez
reshape_80/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_80/Reshape/shape/1�
reshape_80/Reshape/shapePack!reshape_80/strided_slice:output:0#reshape_80/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_80/Reshape/shape�
reshape_80/ReshapeReshape$average_pooling3d_87/transpose_1:y:0!reshape_80/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_80/Reshape�
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_40/MatMul/ReadVariableOp�
dense_40/MatMulMatMulreshape_80/Reshape:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_40/MatMul�
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_40/BiasAdd/ReadVariableOp�
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_40/BiasAdd
dense_40/SoftplusSoftplusdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_40/Softpluss
reshape_81/ShapeShapedense_40/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_81/Shape�
reshape_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_81/strided_slice/stack�
 reshape_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_1�
 reshape_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_2�
reshape_81/strided_sliceStridedSlicereshape_81/Shape:output:0'reshape_81/strided_slice/stack:output:0)reshape_81/strided_slice/stack_1:output:0)reshape_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_81/strided_slicez
reshape_81/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/1z
reshape_81/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/2z
reshape_81/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/3z
reshape_81/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/4�
reshape_81/Reshape/shapePack!reshape_81/strided_slice:output:0#reshape_81/Reshape/shape/1:output:0#reshape_81/Reshape/shape/2:output:0#reshape_81/Reshape/shape/3:output:0#reshape_81/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_81/Reshape/shape�
reshape_81/ReshapeReshapedense_40/Softplus:activations:0!reshape_81/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_81/Reshape�
tf.reshape_698/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_698/Reshape/shape�
tf.reshape_698/ReshapeReshapereshape_81/Reshape:output:0%tf.reshape_698/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_698/Reshape�
tf.tile_349/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_349/Tile/multiples�
tf.tile_349/TileTiletf.reshape_698/Reshape:output:0#tf.tile_349/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_349/Tile�
tf.reshape_699/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_699/Reshape/shape�
tf.reshape_699/ReshapeReshapetf.tile_349/Tile:output:0%tf.reshape_699/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_699/Reshapex
tf.concat_558/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_558/concat/axis�
tf.concat_558/concatConcatV2tf.reshape_699/Reshape:output:0!conv3d_214/Softplus:activations:0"tf.concat_558/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_558/concat�
 conv3d_215/Conv3D/ReadVariableOpReadVariableOp)conv3d_215_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_215/Conv3D/ReadVariableOp�
conv3d_215/Conv3DConv3Dtf.concat_558/concat:output:0(conv3d_215/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_215/Conv3D�
!conv3d_215/BiasAdd/ReadVariableOpReadVariableOp*conv3d_215_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_215/BiasAdd/ReadVariableOp�
conv3d_215/BiasAddBiasAddconv3d_215/Conv3D:output:0)conv3d_215/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_215/BiasAdd�
conv3d_215/SoftplusSoftplusconv3d_215/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_215/Softplus�
 conv3d_216/Conv3D/ReadVariableOpReadVariableOp)conv3d_216_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_216/Conv3D/ReadVariableOp�
conv3d_216/Conv3DConv3D!conv3d_215/Softplus:activations:0(conv3d_216/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_216/Conv3D�
!conv3d_216/BiasAdd/ReadVariableOpReadVariableOp*conv3d_216_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_216/BiasAdd/ReadVariableOp�
conv3d_216/BiasAddBiasAddconv3d_216/Conv3D:output:0)conv3d_216/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_216/BiasAdd�
IdentityIdentityconv3d_216/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_214/BiasAdd/ReadVariableOp!^conv3d_214/Conv3D/ReadVariableOp"^conv3d_215/BiasAdd/ReadVariableOp!^conv3d_215/Conv3D/ReadVariableOp"^conv3d_216/BiasAdd/ReadVariableOp!^conv3d_216/Conv3D/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_214/BiasAdd/ReadVariableOp!conv3d_214/BiasAdd/ReadVariableOp2D
 conv3d_214/Conv3D/ReadVariableOp conv3d_214/Conv3D/ReadVariableOp2F
!conv3d_215/BiasAdd/ReadVariableOp!conv3d_215/BiasAdd/ReadVariableOp2D
 conv3d_215/Conv3D/ReadVariableOp conv3d_215/Conv3D/ReadVariableOp2F
!conv3d_216/BiasAdd/ReadVariableOp!conv3d_216/BiasAdd/ReadVariableOp2D
 conv3d_216/Conv3D/ReadVariableOp conv3d_216/Conv3D/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
d
H__inference_reshape_81_layer_call_and_return_conditional_losses_11898448

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
�
!__inference__traced_save_11899210
file_prefix0
,savev2_conv3d_214_kernel_read_readvariableop.
*savev2_conv3d_214_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop0
,savev2_conv3d_215_kernel_read_readvariableop.
*savev2_conv3d_215_bias_read_readvariableop0
,savev2_conv3d_216_kernel_read_readvariableop.
*savev2_conv3d_216_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_214_kernel_read_readvariableop*savev2_conv3d_214_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop,savev2_conv3d_215_kernel_read_readvariableop*savev2_conv3d_215_bias_read_readvariableop,savev2_conv3d_216_kernel_read_readvariableop*savev2_conv3d_216_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�D
�
F__inference_model_40_layer_call_and_return_conditional_losses_11898492

inputs1
conv3d_214_11898387:!
conv3d_214_11898389:#
dense_40_11898428:@@
dense_40_11898430:@1
conv3d_215_11898470:!
conv3d_215_11898472:1
conv3d_216_11898486:!
conv3d_216_11898488:
identity��"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�"conv3d_216/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�
0tf.__operators__.getitem_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_416/strided_slice/stack�
2tf.__operators__.getitem_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_416/strided_slice/stack_1�
2tf.__operators__.getitem_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_416/strided_slice/stack_2�
*tf.__operators__.getitem_416/strided_sliceStridedSliceinputs9tf.__operators__.getitem_416/strided_slice/stack:output:0;tf.__operators__.getitem_416/strided_slice/stack_1:output:0;tf.__operators__.getitem_416/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_416/strided_slice�
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_416/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_118983672%
#range_conversion_40/PartitionedCall�
0tf.__operators__.getitem_417/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_417/strided_slice/stack�
2tf.__operators__.getitem_417/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_417/strided_slice/stack_1�
2tf.__operators__.getitem_417/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_417/strided_slice/stack_2�
*tf.__operators__.getitem_417/strided_sliceStridedSliceinputs9tf.__operators__.getitem_417/strided_slice/stack:output:0;tf.__operators__.getitem_417/strided_slice/stack_1:output:0;tf.__operators__.getitem_417/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_417/strided_slicex
tf.concat_557/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_557/concat/axis�
tf.concat_557/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_417/strided_slice:output:0"tf.concat_557/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_557/concat�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCalltf.concat_557/concat:output:0conv3d_214_11898387conv3d_214_11898389*
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
H__inference_conv3d_214_layer_call_and_return_conditional_losses_118983862$
"conv3d_214/StatefulPartitionedCall�
$average_pooling3d_87/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_118984002&
$average_pooling3d_87/PartitionedCall�
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_87/PartitionedCall:output:0*
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
H__inference_reshape_80_layer_call_and_return_conditional_losses_118984142
reshape_80/PartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_11898428dense_40_11898430*
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
F__inference_dense_40_layer_call_and_return_conditional_losses_118984272"
 dense_40/StatefulPartitionedCall�
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
H__inference_reshape_81_layer_call_and_return_conditional_losses_118984482
reshape_81/PartitionedCall�
tf.reshape_698/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_698/Reshape/shape�
tf.reshape_698/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_698/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_698/Reshape�
tf.tile_349/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_349/Tile/multiples�
tf.tile_349/TileTiletf.reshape_698/Reshape:output:0#tf.tile_349/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_349/Tile�
tf.reshape_699/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_699/Reshape/shape�
tf.reshape_699/ReshapeReshapetf.tile_349/Tile:output:0%tf.reshape_699/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_699/Reshapex
tf.concat_558/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_558/concat/axis�
tf.concat_558/concatConcatV2tf.reshape_699/Reshape:output:0+conv3d_214/StatefulPartitionedCall:output:0"tf.concat_558/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_558/concat�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCalltf.concat_558/concat:output:0conv3d_215_11898470conv3d_215_11898472*
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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_118984692$
"conv3d_215/StatefulPartitionedCall�
"conv3d_216/StatefulPartitionedCallStatefulPartitionedCall+conv3d_215/StatefulPartitionedCall:output:0conv3d_216_11898486conv3d_216_11898488*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_216_layer_call_and_return_conditional_losses_118984852$
"conv3d_216/StatefulPartitionedCall�
IdentityIdentity+conv3d_216/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall#^conv3d_216/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2H
"conv3d_216/StatefulPartitionedCall"conv3d_216/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_40_layer_call_fn_11899093

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
F__inference_dense_40_layer_call_and_return_conditional_losses_118984272
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
&__inference_signature_wrapper_11898798	
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
GPU2 *0,1,2,3J 8� *,
f'R%
#__inference__wrapped_model_118983142
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

�
+__inference_model_40_layer_call_fn_11898683	
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_40_layer_call_and_return_conditional_losses_118986432
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
d
H__inference_reshape_80_layer_call_and_return_conditional_losses_11898414

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
�D
�
F__inference_model_40_layer_call_and_return_conditional_losses_11898775	
input1
conv3d_214_11898743:!
conv3d_214_11898745:#
dense_40_11898750:@@
dense_40_11898752:@1
conv3d_215_11898764:!
conv3d_215_11898766:1
conv3d_216_11898769:!
conv3d_216_11898771:
identity��"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�"conv3d_216/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�
0tf.__operators__.getitem_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_416/strided_slice/stack�
2tf.__operators__.getitem_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_416/strided_slice/stack_1�
2tf.__operators__.getitem_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_416/strided_slice/stack_2�
*tf.__operators__.getitem_416/strided_sliceStridedSliceinput9tf.__operators__.getitem_416/strided_slice/stack:output:0;tf.__operators__.getitem_416/strided_slice/stack_1:output:0;tf.__operators__.getitem_416/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_416/strided_slice�
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_416/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_118983672%
#range_conversion_40/PartitionedCall�
0tf.__operators__.getitem_417/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_417/strided_slice/stack�
2tf.__operators__.getitem_417/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_417/strided_slice/stack_1�
2tf.__operators__.getitem_417/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_417/strided_slice/stack_2�
*tf.__operators__.getitem_417/strided_sliceStridedSliceinput9tf.__operators__.getitem_417/strided_slice/stack:output:0;tf.__operators__.getitem_417/strided_slice/stack_1:output:0;tf.__operators__.getitem_417/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_417/strided_slicex
tf.concat_557/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_557/concat/axis�
tf.concat_557/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_417/strided_slice:output:0"tf.concat_557/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_557/concat�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCalltf.concat_557/concat:output:0conv3d_214_11898743conv3d_214_11898745*
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
H__inference_conv3d_214_layer_call_and_return_conditional_losses_118983862$
"conv3d_214/StatefulPartitionedCall�
$average_pooling3d_87/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_118984002&
$average_pooling3d_87/PartitionedCall�
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_87/PartitionedCall:output:0*
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
H__inference_reshape_80_layer_call_and_return_conditional_losses_118984142
reshape_80/PartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_11898750dense_40_11898752*
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
F__inference_dense_40_layer_call_and_return_conditional_losses_118984272"
 dense_40/StatefulPartitionedCall�
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
H__inference_reshape_81_layer_call_and_return_conditional_losses_118984482
reshape_81/PartitionedCall�
tf.reshape_698/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_698/Reshape/shape�
tf.reshape_698/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_698/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_698/Reshape�
tf.tile_349/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_349/Tile/multiples�
tf.tile_349/TileTiletf.reshape_698/Reshape:output:0#tf.tile_349/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_349/Tile�
tf.reshape_699/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_699/Reshape/shape�
tf.reshape_699/ReshapeReshapetf.tile_349/Tile:output:0%tf.reshape_699/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_699/Reshapex
tf.concat_558/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_558/concat/axis�
tf.concat_558/concatConcatV2tf.reshape_699/Reshape:output:0+conv3d_214/StatefulPartitionedCall:output:0"tf.concat_558/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_558/concat�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCalltf.concat_558/concat:output:0conv3d_215_11898764conv3d_215_11898766*
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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_118984692$
"conv3d_215/StatefulPartitionedCall�
"conv3d_216/StatefulPartitionedCallStatefulPartitionedCall+conv3d_215/StatefulPartitionedCall:output:0conv3d_216_11898769conv3d_216_11898771*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_216_layer_call_and_return_conditional_losses_118984852$
"conv3d_216/StatefulPartitionedCall�
IdentityIdentity+conv3d_216/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall#^conv3d_216/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2H
"conv3d_216/StatefulPartitionedCall"conv3d_216/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�	
n
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11898400

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
S
7__inference_average_pooling3d_87_layer_call_fn_11899044

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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_118983272
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
H__inference_conv3d_216_layer_call_and_return_conditional_losses_11898485

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
-__inference_conv3d_216_layer_call_fn_11899153

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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_216_layer_call_and_return_conditional_losses_118984852
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
�D
�
F__inference_model_40_layer_call_and_return_conditional_losses_11898729	
input1
conv3d_214_11898697:!
conv3d_214_11898699:#
dense_40_11898704:@@
dense_40_11898706:@1
conv3d_215_11898718:!
conv3d_215_11898720:1
conv3d_216_11898723:!
conv3d_216_11898725:
identity��"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�"conv3d_216/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�
0tf.__operators__.getitem_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_416/strided_slice/stack�
2tf.__operators__.getitem_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_416/strided_slice/stack_1�
2tf.__operators__.getitem_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_416/strided_slice/stack_2�
*tf.__operators__.getitem_416/strided_sliceStridedSliceinput9tf.__operators__.getitem_416/strided_slice/stack:output:0;tf.__operators__.getitem_416/strided_slice/stack_1:output:0;tf.__operators__.getitem_416/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_416/strided_slice�
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_416/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_118983672%
#range_conversion_40/PartitionedCall�
0tf.__operators__.getitem_417/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_417/strided_slice/stack�
2tf.__operators__.getitem_417/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_417/strided_slice/stack_1�
2tf.__operators__.getitem_417/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_417/strided_slice/stack_2�
*tf.__operators__.getitem_417/strided_sliceStridedSliceinput9tf.__operators__.getitem_417/strided_slice/stack:output:0;tf.__operators__.getitem_417/strided_slice/stack_1:output:0;tf.__operators__.getitem_417/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_417/strided_slicex
tf.concat_557/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_557/concat/axis�
tf.concat_557/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_417/strided_slice:output:0"tf.concat_557/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_557/concat�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCalltf.concat_557/concat:output:0conv3d_214_11898697conv3d_214_11898699*
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
H__inference_conv3d_214_layer_call_and_return_conditional_losses_118983862$
"conv3d_214/StatefulPartitionedCall�
$average_pooling3d_87/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_118984002&
$average_pooling3d_87/PartitionedCall�
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_87/PartitionedCall:output:0*
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
H__inference_reshape_80_layer_call_and_return_conditional_losses_118984142
reshape_80/PartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_11898704dense_40_11898706*
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
F__inference_dense_40_layer_call_and_return_conditional_losses_118984272"
 dense_40/StatefulPartitionedCall�
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
H__inference_reshape_81_layer_call_and_return_conditional_losses_118984482
reshape_81/PartitionedCall�
tf.reshape_698/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_698/Reshape/shape�
tf.reshape_698/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_698/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_698/Reshape�
tf.tile_349/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_349/Tile/multiples�
tf.tile_349/TileTiletf.reshape_698/Reshape:output:0#tf.tile_349/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_349/Tile�
tf.reshape_699/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_699/Reshape/shape�
tf.reshape_699/ReshapeReshapetf.tile_349/Tile:output:0%tf.reshape_699/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_699/Reshapex
tf.concat_558/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_558/concat/axis�
tf.concat_558/concatConcatV2tf.reshape_699/Reshape:output:0+conv3d_214/StatefulPartitionedCall:output:0"tf.concat_558/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_558/concat�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCalltf.concat_558/concat:output:0conv3d_215_11898718conv3d_215_11898720*
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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_118984692$
"conv3d_215/StatefulPartitionedCall�
"conv3d_216/StatefulPartitionedCallStatefulPartitionedCall+conv3d_215/StatefulPartitionedCall:output:0conv3d_216_11898723conv3d_216_11898725*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_216_layer_call_and_return_conditional_losses_118984852$
"conv3d_216/StatefulPartitionedCall�
IdentityIdentity+conv3d_216/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall#^conv3d_216/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2H
"conv3d_216/StatefulPartitionedCall"conv3d_216/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
��
�
#__inference__wrapped_model_11898314	
inputP
2model_40_conv3d_214_conv3d_readvariableop_resource:A
3model_40_conv3d_214_biasadd_readvariableop_resource:B
0model_40_dense_40_matmul_readvariableop_resource:@@?
1model_40_dense_40_biasadd_readvariableop_resource:@P
2model_40_conv3d_215_conv3d_readvariableop_resource:A
3model_40_conv3d_215_biasadd_readvariableop_resource:P
2model_40_conv3d_216_conv3d_readvariableop_resource:A
3model_40_conv3d_216_biasadd_readvariableop_resource:
identity��*model_40/conv3d_214/BiasAdd/ReadVariableOp�)model_40/conv3d_214/Conv3D/ReadVariableOp�*model_40/conv3d_215/BiasAdd/ReadVariableOp�)model_40/conv3d_215/Conv3D/ReadVariableOp�*model_40/conv3d_216/BiasAdd/ReadVariableOp�)model_40/conv3d_216/Conv3D/ReadVariableOp�(model_40/dense_40/BiasAdd/ReadVariableOp�'model_40/dense_40/MatMul/ReadVariableOp�
9model_40/tf.__operators__.getitem_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_40/tf.__operators__.getitem_416/strided_slice/stack�
;model_40/tf.__operators__.getitem_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_40/tf.__operators__.getitem_416/strided_slice/stack_1�
;model_40/tf.__operators__.getitem_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_40/tf.__operators__.getitem_416/strided_slice/stack_2�
3model_40/tf.__operators__.getitem_416/strided_sliceStridedSliceinputBmodel_40/tf.__operators__.getitem_416/strided_slice/stack:output:0Dmodel_40/tf.__operators__.getitem_416/strided_slice/stack_1:output:0Dmodel_40/tf.__operators__.getitem_416/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_40/tf.__operators__.getitem_416/strided_slice�
"model_40/range_conversion_40/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_40/range_conversion_40/sub/y�
 model_40/range_conversion_40/subSub<model_40/tf.__operators__.getitem_416/strided_slice:output:0+model_40/range_conversion_40/sub/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_40/range_conversion_40/sub�
&model_40/range_conversion_40/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_40/range_conversion_40/truediv/y�
$model_40/range_conversion_40/truedivRealDiv$model_40/range_conversion_40/sub:z:0/model_40/range_conversion_40/truediv/y:output:0*
T0*3
_output_shapes!
:���������2&
$model_40/range_conversion_40/truediv�
"model_40/range_conversion_40/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_40/range_conversion_40/mul/y�
 model_40/range_conversion_40/mulMul(model_40/range_conversion_40/truediv:z:0+model_40/range_conversion_40/mul/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_40/range_conversion_40/mul�
"model_40/range_conversion_40/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_40/range_conversion_40/add/y�
 model_40/range_conversion_40/addAddV2$model_40/range_conversion_40/mul:z:0+model_40/range_conversion_40/add/y:output:0*
T0*3
_output_shapes!
:���������2"
 model_40/range_conversion_40/add�
9model_40/tf.__operators__.getitem_417/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_40/tf.__operators__.getitem_417/strided_slice/stack�
;model_40/tf.__operators__.getitem_417/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_40/tf.__operators__.getitem_417/strided_slice/stack_1�
;model_40/tf.__operators__.getitem_417/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_40/tf.__operators__.getitem_417/strided_slice/stack_2�
3model_40/tf.__operators__.getitem_417/strided_sliceStridedSliceinputBmodel_40/tf.__operators__.getitem_417/strided_slice/stack:output:0Dmodel_40/tf.__operators__.getitem_417/strided_slice/stack_1:output:0Dmodel_40/tf.__operators__.getitem_417/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask25
3model_40/tf.__operators__.getitem_417/strided_slice�
"model_40/tf.concat_557/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_40/tf.concat_557/concat/axis�
model_40/tf.concat_557/concatConcatV2$model_40/range_conversion_40/add:z:0<model_40/tf.__operators__.getitem_417/strided_slice:output:0+model_40/tf.concat_557/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_40/tf.concat_557/concat�
)model_40/conv3d_214/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_214_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_214/Conv3D/ReadVariableOp�
model_40/conv3d_214/Conv3DConv3D&model_40/tf.concat_557/concat:output:01model_40/conv3d_214/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_214/Conv3D�
*model_40/conv3d_214/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_214/BiasAdd/ReadVariableOp�
model_40/conv3d_214/BiasAddBiasAdd#model_40/conv3d_214/Conv3D:output:02model_40/conv3d_214/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_40/conv3d_214/BiasAdd�
model_40/conv3d_214/SoftplusSoftplus$model_40/conv3d_214/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_40/conv3d_214/Softplus�
,model_40/average_pooling3d_87/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_40/average_pooling3d_87/transpose/perm�
'model_40/average_pooling3d_87/transpose	Transpose*model_40/conv3d_214/Softplus:activations:05model_40/average_pooling3d_87/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_40/average_pooling3d_87/transpose�
'model_40/average_pooling3d_87/AvgPool3D	AvgPool3D+model_40/average_pooling3d_87/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_40/average_pooling3d_87/AvgPool3D�
.model_40/average_pooling3d_87/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_40/average_pooling3d_87/transpose_1/perm�
)model_40/average_pooling3d_87/transpose_1	Transpose0model_40/average_pooling3d_87/AvgPool3D:output:07model_40/average_pooling3d_87/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_40/average_pooling3d_87/transpose_1�
model_40/reshape_80/ShapeShape-model_40/average_pooling3d_87/transpose_1:y:0*
T0*
_output_shapes
:2
model_40/reshape_80/Shape�
'model_40/reshape_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_40/reshape_80/strided_slice/stack�
)model_40/reshape_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_80/strided_slice/stack_1�
)model_40/reshape_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_80/strided_slice/stack_2�
!model_40/reshape_80/strided_sliceStridedSlice"model_40/reshape_80/Shape:output:00model_40/reshape_80/strided_slice/stack:output:02model_40/reshape_80/strided_slice/stack_1:output:02model_40/reshape_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_40/reshape_80/strided_slice�
#model_40/reshape_80/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_40/reshape_80/Reshape/shape/1�
!model_40/reshape_80/Reshape/shapePack*model_40/reshape_80/strided_slice:output:0,model_40/reshape_80/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_40/reshape_80/Reshape/shape�
model_40/reshape_80/ReshapeReshape-model_40/average_pooling3d_87/transpose_1:y:0*model_40/reshape_80/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_40/reshape_80/Reshape�
'model_40/dense_40/MatMul/ReadVariableOpReadVariableOp0model_40_dense_40_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_40/dense_40/MatMul/ReadVariableOp�
model_40/dense_40/MatMulMatMul$model_40/reshape_80/Reshape:output:0/model_40/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_40/dense_40/MatMul�
(model_40/dense_40/BiasAdd/ReadVariableOpReadVariableOp1model_40_dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_40/dense_40/BiasAdd/ReadVariableOp�
model_40/dense_40/BiasAddBiasAdd"model_40/dense_40/MatMul:product:00model_40/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_40/dense_40/BiasAdd�
model_40/dense_40/SoftplusSoftplus"model_40/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_40/dense_40/Softplus�
model_40/reshape_81/ShapeShape(model_40/dense_40/Softplus:activations:0*
T0*
_output_shapes
:2
model_40/reshape_81/Shape�
'model_40/reshape_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_40/reshape_81/strided_slice/stack�
)model_40/reshape_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_81/strided_slice/stack_1�
)model_40/reshape_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_40/reshape_81/strided_slice/stack_2�
!model_40/reshape_81/strided_sliceStridedSlice"model_40/reshape_81/Shape:output:00model_40/reshape_81/strided_slice/stack:output:02model_40/reshape_81/strided_slice/stack_1:output:02model_40/reshape_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_40/reshape_81/strided_slice�
#model_40/reshape_81/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/1�
#model_40/reshape_81/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/2�
#model_40/reshape_81/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/3�
#model_40/reshape_81/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_40/reshape_81/Reshape/shape/4�
!model_40/reshape_81/Reshape/shapePack*model_40/reshape_81/strided_slice:output:0,model_40/reshape_81/Reshape/shape/1:output:0,model_40/reshape_81/Reshape/shape/2:output:0,model_40/reshape_81/Reshape/shape/3:output:0,model_40/reshape_81/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_40/reshape_81/Reshape/shape�
model_40/reshape_81/ReshapeReshape(model_40/dense_40/Softplus:activations:0*model_40/reshape_81/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_40/reshape_81/Reshape�
%model_40/tf.reshape_698/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_40/tf.reshape_698/Reshape/shape�
model_40/tf.reshape_698/ReshapeReshape$model_40/reshape_81/Reshape:output:0.model_40/tf.reshape_698/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_40/tf.reshape_698/Reshape�
#model_40/tf.tile_349/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_40/tf.tile_349/Tile/multiples�
model_40/tf.tile_349/TileTile(model_40/tf.reshape_698/Reshape:output:0,model_40/tf.tile_349/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_40/tf.tile_349/Tile�
%model_40/tf.reshape_699/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_40/tf.reshape_699/Reshape/shape�
model_40/tf.reshape_699/ReshapeReshape"model_40/tf.tile_349/Tile:output:0.model_40/tf.reshape_699/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_40/tf.reshape_699/Reshape�
"model_40/tf.concat_558/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_40/tf.concat_558/concat/axis�
model_40/tf.concat_558/concatConcatV2(model_40/tf.reshape_699/Reshape:output:0*model_40/conv3d_214/Softplus:activations:0+model_40/tf.concat_558/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_40/tf.concat_558/concat�
)model_40/conv3d_215/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_215_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_215/Conv3D/ReadVariableOp�
model_40/conv3d_215/Conv3DConv3D&model_40/tf.concat_558/concat:output:01model_40/conv3d_215/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_215/Conv3D�
*model_40/conv3d_215/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_215_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_215/BiasAdd/ReadVariableOp�
model_40/conv3d_215/BiasAddBiasAdd#model_40/conv3d_215/Conv3D:output:02model_40/conv3d_215/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_40/conv3d_215/BiasAdd�
model_40/conv3d_215/SoftplusSoftplus$model_40/conv3d_215/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_40/conv3d_215/Softplus�
)model_40/conv3d_216/Conv3D/ReadVariableOpReadVariableOp2model_40_conv3d_216_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_40/conv3d_216/Conv3D/ReadVariableOp�
model_40/conv3d_216/Conv3DConv3D*model_40/conv3d_215/Softplus:activations:01model_40/conv3d_216/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_40/conv3d_216/Conv3D�
*model_40/conv3d_216/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv3d_216_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv3d_216/BiasAdd/ReadVariableOp�
model_40/conv3d_216/BiasAddBiasAdd#model_40/conv3d_216/Conv3D:output:02model_40/conv3d_216/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_40/conv3d_216/BiasAdd�
IdentityIdentity$model_40/conv3d_216/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp+^model_40/conv3d_214/BiasAdd/ReadVariableOp*^model_40/conv3d_214/Conv3D/ReadVariableOp+^model_40/conv3d_215/BiasAdd/ReadVariableOp*^model_40/conv3d_215/Conv3D/ReadVariableOp+^model_40/conv3d_216/BiasAdd/ReadVariableOp*^model_40/conv3d_216/Conv3D/ReadVariableOp)^model_40/dense_40/BiasAdd/ReadVariableOp(^model_40/dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2X
*model_40/conv3d_214/BiasAdd/ReadVariableOp*model_40/conv3d_214/BiasAdd/ReadVariableOp2V
)model_40/conv3d_214/Conv3D/ReadVariableOp)model_40/conv3d_214/Conv3D/ReadVariableOp2X
*model_40/conv3d_215/BiasAdd/ReadVariableOp*model_40/conv3d_215/BiasAdd/ReadVariableOp2V
)model_40/conv3d_215/Conv3D/ReadVariableOp)model_40/conv3d_215/Conv3D/ReadVariableOp2X
*model_40/conv3d_216/BiasAdd/ReadVariableOp*model_40/conv3d_216/BiasAdd/ReadVariableOp2V
)model_40/conv3d_216/Conv3D/ReadVariableOp)model_40/conv3d_216/Conv3D/ReadVariableOp2T
(model_40/dense_40/BiasAdd/ReadVariableOp(model_40/dense_40/BiasAdd/ReadVariableOp2R
'model_40/dense_40/MatMul/ReadVariableOp'model_40/dense_40/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������

_user_specified_nameinput
�
�
-__inference_conv3d_214_layer_call_fn_11899028

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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_214_layer_call_and_return_conditional_losses_118983862
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
�
I
-__inference_reshape_81_layer_call_fn_11899109

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
H__inference_reshape_81_layer_call_and_return_conditional_losses_118984482
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
�
d
H__inference_reshape_81_layer_call_and_return_conditional_losses_11899124

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
-__inference_conv3d_215_layer_call_fn_11899133

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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_118984692
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
�
S
7__inference_average_pooling3d_87_layer_call_fn_11899049

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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_118984002
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
�
F__inference_dense_40_layer_call_and_return_conditional_losses_11899104

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
+__inference_model_40_layer_call_fn_11898819

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_model_40_layer_call_and_return_conditional_losses_118984922
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
�
I
-__inference_reshape_80_layer_call_fn_11899072

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
H__inference_reshape_80_layer_call_and_return_conditional_losses_118984142
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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_11899144

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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11898327

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
�u
�
F__inference_model_40_layer_call_and_return_conditional_losses_11898921

inputsG
)conv3d_214_conv3d_readvariableop_resource:8
*conv3d_214_biasadd_readvariableop_resource:9
'dense_40_matmul_readvariableop_resource:@@6
(dense_40_biasadd_readvariableop_resource:@G
)conv3d_215_conv3d_readvariableop_resource:8
*conv3d_215_biasadd_readvariableop_resource:G
)conv3d_216_conv3d_readvariableop_resource:8
*conv3d_216_biasadd_readvariableop_resource:
identity��!conv3d_214/BiasAdd/ReadVariableOp� conv3d_214/Conv3D/ReadVariableOp�!conv3d_215/BiasAdd/ReadVariableOp� conv3d_215/Conv3D/ReadVariableOp�!conv3d_216/BiasAdd/ReadVariableOp� conv3d_216/Conv3D/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�dense_40/MatMul/ReadVariableOp�
0tf.__operators__.getitem_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_416/strided_slice/stack�
2tf.__operators__.getitem_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_416/strided_slice/stack_1�
2tf.__operators__.getitem_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_416/strided_slice/stack_2�
*tf.__operators__.getitem_416/strided_sliceStridedSliceinputs9tf.__operators__.getitem_416/strided_slice/stack:output:0;tf.__operators__.getitem_416/strided_slice/stack_1:output:0;tf.__operators__.getitem_416/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_416/strided_slice{
range_conversion_40/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_40/sub/y�
range_conversion_40/subSub3tf.__operators__.getitem_416/strided_slice:output:0"range_conversion_40/sub/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/sub�
range_conversion_40/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_40/truediv/y�
range_conversion_40/truedivRealDivrange_conversion_40/sub:z:0&range_conversion_40/truediv/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/truediv{
range_conversion_40/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_40/mul/y�
range_conversion_40/mulMulrange_conversion_40/truediv:z:0"range_conversion_40/mul/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/mul{
range_conversion_40/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_40/add/y�
range_conversion_40/addAddV2range_conversion_40/mul:z:0"range_conversion_40/add/y:output:0*
T0*3
_output_shapes!
:���������2
range_conversion_40/add�
0tf.__operators__.getitem_417/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_417/strided_slice/stack�
2tf.__operators__.getitem_417/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_417/strided_slice/stack_1�
2tf.__operators__.getitem_417/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_417/strided_slice/stack_2�
*tf.__operators__.getitem_417/strided_sliceStridedSliceinputs9tf.__operators__.getitem_417/strided_slice/stack:output:0;tf.__operators__.getitem_417/strided_slice/stack_1:output:0;tf.__operators__.getitem_417/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_417/strided_slicex
tf.concat_557/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_557/concat/axis�
tf.concat_557/concatConcatV2range_conversion_40/add:z:03tf.__operators__.getitem_417/strided_slice:output:0"tf.concat_557/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_557/concat�
 conv3d_214/Conv3D/ReadVariableOpReadVariableOp)conv3d_214_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_214/Conv3D/ReadVariableOp�
conv3d_214/Conv3DConv3Dtf.concat_557/concat:output:0(conv3d_214/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_214/Conv3D�
!conv3d_214/BiasAdd/ReadVariableOpReadVariableOp*conv3d_214_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_214/BiasAdd/ReadVariableOp�
conv3d_214/BiasAddBiasAddconv3d_214/Conv3D:output:0)conv3d_214/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_214/BiasAdd�
conv3d_214/SoftplusSoftplusconv3d_214/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_214/Softplus�
#average_pooling3d_87/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_87/transpose/perm�
average_pooling3d_87/transpose	Transpose!conv3d_214/Softplus:activations:0,average_pooling3d_87/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2 
average_pooling3d_87/transpose�
average_pooling3d_87/AvgPool3D	AvgPool3D"average_pooling3d_87/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_87/AvgPool3D�
%average_pooling3d_87/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_87/transpose_1/perm�
 average_pooling3d_87/transpose_1	Transpose'average_pooling3d_87/AvgPool3D:output:0.average_pooling3d_87/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2"
 average_pooling3d_87/transpose_1x
reshape_80/ShapeShape$average_pooling3d_87/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_80/Shape�
reshape_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_80/strided_slice/stack�
 reshape_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_1�
 reshape_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_80/strided_slice/stack_2�
reshape_80/strided_sliceStridedSlicereshape_80/Shape:output:0'reshape_80/strided_slice/stack:output:0)reshape_80/strided_slice/stack_1:output:0)reshape_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_80/strided_slicez
reshape_80/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_80/Reshape/shape/1�
reshape_80/Reshape/shapePack!reshape_80/strided_slice:output:0#reshape_80/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_80/Reshape/shape�
reshape_80/ReshapeReshape$average_pooling3d_87/transpose_1:y:0!reshape_80/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_80/Reshape�
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_40/MatMul/ReadVariableOp�
dense_40/MatMulMatMulreshape_80/Reshape:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_40/MatMul�
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_40/BiasAdd/ReadVariableOp�
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_40/BiasAdd
dense_40/SoftplusSoftplusdense_40/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_40/Softpluss
reshape_81/ShapeShapedense_40/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_81/Shape�
reshape_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_81/strided_slice/stack�
 reshape_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_1�
 reshape_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_81/strided_slice/stack_2�
reshape_81/strided_sliceStridedSlicereshape_81/Shape:output:0'reshape_81/strided_slice/stack:output:0)reshape_81/strided_slice/stack_1:output:0)reshape_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_81/strided_slicez
reshape_81/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/1z
reshape_81/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/2z
reshape_81/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/3z
reshape_81/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_81/Reshape/shape/4�
reshape_81/Reshape/shapePack!reshape_81/strided_slice:output:0#reshape_81/Reshape/shape/1:output:0#reshape_81/Reshape/shape/2:output:0#reshape_81/Reshape/shape/3:output:0#reshape_81/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_81/Reshape/shape�
reshape_81/ReshapeReshapedense_40/Softplus:activations:0!reshape_81/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_81/Reshape�
tf.reshape_698/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_698/Reshape/shape�
tf.reshape_698/ReshapeReshapereshape_81/Reshape:output:0%tf.reshape_698/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_698/Reshape�
tf.tile_349/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_349/Tile/multiples�
tf.tile_349/TileTiletf.reshape_698/Reshape:output:0#tf.tile_349/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_349/Tile�
tf.reshape_699/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_699/Reshape/shape�
tf.reshape_699/ReshapeReshapetf.tile_349/Tile:output:0%tf.reshape_699/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_699/Reshapex
tf.concat_558/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_558/concat/axis�
tf.concat_558/concatConcatV2tf.reshape_699/Reshape:output:0!conv3d_214/Softplus:activations:0"tf.concat_558/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_558/concat�
 conv3d_215/Conv3D/ReadVariableOpReadVariableOp)conv3d_215_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_215/Conv3D/ReadVariableOp�
conv3d_215/Conv3DConv3Dtf.concat_558/concat:output:0(conv3d_215/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_215/Conv3D�
!conv3d_215/BiasAdd/ReadVariableOpReadVariableOp*conv3d_215_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_215/BiasAdd/ReadVariableOp�
conv3d_215/BiasAddBiasAddconv3d_215/Conv3D:output:0)conv3d_215/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_215/BiasAdd�
conv3d_215/SoftplusSoftplusconv3d_215/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_215/Softplus�
 conv3d_216/Conv3D/ReadVariableOpReadVariableOp)conv3d_216_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_216/Conv3D/ReadVariableOp�
conv3d_216/Conv3DConv3D!conv3d_215/Softplus:activations:0(conv3d_216/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_216/Conv3D�
!conv3d_216/BiasAdd/ReadVariableOpReadVariableOp*conv3d_216_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_216/BiasAdd/ReadVariableOp�
conv3d_216/BiasAddBiasAddconv3d_216/Conv3D:output:0)conv3d_216/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_216/BiasAdd�
IdentityIdentityconv3d_216/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp"^conv3d_214/BiasAdd/ReadVariableOp!^conv3d_214/Conv3D/ReadVariableOp"^conv3d_215/BiasAdd/ReadVariableOp!^conv3d_215/Conv3D/ReadVariableOp"^conv3d_216/BiasAdd/ReadVariableOp!^conv3d_216/Conv3D/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2F
!conv3d_214/BiasAdd/ReadVariableOp!conv3d_214/BiasAdd/ReadVariableOp2D
 conv3d_214/Conv3D/ReadVariableOp conv3d_214/Conv3D/ReadVariableOp2F
!conv3d_215/BiasAdd/ReadVariableOp!conv3d_215/BiasAdd/ReadVariableOp2D
 conv3d_215/Conv3D/ReadVariableOp conv3d_215/Conv3D/ReadVariableOp2F
!conv3d_216/BiasAdd/ReadVariableOp!conv3d_216/BiasAdd/ReadVariableOp2D
 conv3d_216/Conv3D/ReadVariableOp conv3d_216/Conv3D/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������
 
_user_specified_nameinputs
�
V
6__inference_range_conversion_40_layer_call_fn_11899007

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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_118983672
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
�	
q
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_11898367

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
d
H__inference_reshape_80_layer_call_and_return_conditional_losses_11899084

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
�
F__inference_dense_40_layer_call_and_return_conditional_losses_11898427

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
H__inference_conv3d_216_layer_call_and_return_conditional_losses_11899163

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
F__inference_model_40_layer_call_and_return_conditional_losses_11898643

inputs1
conv3d_214_11898611:!
conv3d_214_11898613:#
dense_40_11898618:@@
dense_40_11898620:@1
conv3d_215_11898632:!
conv3d_215_11898634:1
conv3d_216_11898637:!
conv3d_216_11898639:
identity��"conv3d_214/StatefulPartitionedCall�"conv3d_215/StatefulPartitionedCall�"conv3d_216/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�
0tf.__operators__.getitem_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_416/strided_slice/stack�
2tf.__operators__.getitem_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_416/strided_slice/stack_1�
2tf.__operators__.getitem_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_416/strided_slice/stack_2�
*tf.__operators__.getitem_416/strided_sliceStridedSliceinputs9tf.__operators__.getitem_416/strided_slice/stack:output:0;tf.__operators__.getitem_416/strided_slice/stack_1:output:0;tf.__operators__.getitem_416/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_416/strided_slice�
#range_conversion_40/PartitionedCallPartitionedCall3tf.__operators__.getitem_416/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *Z
fURS
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_118983672%
#range_conversion_40/PartitionedCall�
0tf.__operators__.getitem_417/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_417/strided_slice/stack�
2tf.__operators__.getitem_417/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_417/strided_slice/stack_1�
2tf.__operators__.getitem_417/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_417/strided_slice/stack_2�
*tf.__operators__.getitem_417/strided_sliceStridedSliceinputs9tf.__operators__.getitem_417/strided_slice/stack:output:0;tf.__operators__.getitem_417/strided_slice/stack_1:output:0;tf.__operators__.getitem_417/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������*

begin_mask*
end_mask2,
*tf.__operators__.getitem_417/strided_slicex
tf.concat_557/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_557/concat/axis�
tf.concat_557/concatConcatV2,range_conversion_40/PartitionedCall:output:03tf.__operators__.getitem_417/strided_slice:output:0"tf.concat_557/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_557/concat�
"conv3d_214/StatefulPartitionedCallStatefulPartitionedCalltf.concat_557/concat:output:0conv3d_214_11898611conv3d_214_11898613*
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
H__inference_conv3d_214_layer_call_and_return_conditional_losses_118983862$
"conv3d_214/StatefulPartitionedCall�
$average_pooling3d_87/PartitionedCallPartitionedCall+conv3d_214/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_118984002&
$average_pooling3d_87/PartitionedCall�
reshape_80/PartitionedCallPartitionedCall-average_pooling3d_87/PartitionedCall:output:0*
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
H__inference_reshape_80_layer_call_and_return_conditional_losses_118984142
reshape_80/PartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#reshape_80/PartitionedCall:output:0dense_40_11898618dense_40_11898620*
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
F__inference_dense_40_layer_call_and_return_conditional_losses_118984272"
 dense_40/StatefulPartitionedCall�
reshape_81/PartitionedCallPartitionedCall)dense_40/StatefulPartitionedCall:output:0*
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
H__inference_reshape_81_layer_call_and_return_conditional_losses_118984482
reshape_81/PartitionedCall�
tf.reshape_698/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_698/Reshape/shape�
tf.reshape_698/ReshapeReshape#reshape_81/PartitionedCall:output:0%tf.reshape_698/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_698/Reshape�
tf.tile_349/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_349/Tile/multiples�
tf.tile_349/TileTiletf.reshape_698/Reshape:output:0#tf.tile_349/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_349/Tile�
tf.reshape_699/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_699/Reshape/shape�
tf.reshape_699/ReshapeReshapetf.tile_349/Tile:output:0%tf.reshape_699/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_699/Reshapex
tf.concat_558/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_558/concat/axis�
tf.concat_558/concatConcatV2tf.reshape_699/Reshape:output:0+conv3d_214/StatefulPartitionedCall:output:0"tf.concat_558/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_558/concat�
"conv3d_215/StatefulPartitionedCallStatefulPartitionedCalltf.concat_558/concat:output:0conv3d_215_11898632conv3d_215_11898634*
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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_118984692$
"conv3d_215/StatefulPartitionedCall�
"conv3d_216/StatefulPartitionedCallStatefulPartitionedCall+conv3d_215/StatefulPartitionedCall:output:0conv3d_216_11898637conv3d_216_11898639*
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
GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_conv3d_216_layer_call_and_return_conditional_losses_118984852$
"conv3d_216/StatefulPartitionedCall�
IdentityIdentity+conv3d_216/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������2

Identity�
NoOpNoOp#^conv3d_214/StatefulPartitionedCall#^conv3d_215/StatefulPartitionedCall#^conv3d_216/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : 2H
"conv3d_214/StatefulPartitionedCall"conv3d_214/StatefulPartitionedCall2H
"conv3d_215/StatefulPartitionedCall"conv3d_215/StatefulPartitionedCall2H
"conv3d_216/StatefulPartitionedCall"conv3d_216/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall:[ W
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

conv3d_216<
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
1:/ 2conv3d_214/kernel
: 2conv3d_214/bias
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
#:!@@ 2dense_40/kernel
:@ 2dense_40/bias
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
1:/ 2conv3d_215/kernel
: 2conv3d_215/bias
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
1:/ 2conv3d_216/kernel
: 2conv3d_216/bias
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
+__inference_model_40_layer_call_fn_11898511
+__inference_model_40_layer_call_fn_11898819
+__inference_model_40_layer_call_fn_11898840
+__inference_model_40_layer_call_fn_11898683�
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
#__inference__wrapped_model_11898314input"�
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
F__inference_model_40_layer_call_and_return_conditional_losses_11898921
F__inference_model_40_layer_call_and_return_conditional_losses_11899002
F__inference_model_40_layer_call_and_return_conditional_losses_11898729
F__inference_model_40_layer_call_and_return_conditional_losses_11898775�
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
6__inference_range_conversion_40_layer_call_fn_11899007�
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
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_11899019�
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
-__inference_conv3d_214_layer_call_fn_11899028�
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
H__inference_conv3d_214_layer_call_and_return_conditional_losses_11899039�
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
7__inference_average_pooling3d_87_layer_call_fn_11899044
7__inference_average_pooling3d_87_layer_call_fn_11899049�
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
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11899058
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11899067�
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
-__inference_reshape_80_layer_call_fn_11899072�
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
H__inference_reshape_80_layer_call_and_return_conditional_losses_11899084�
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
+__inference_dense_40_layer_call_fn_11899093�
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
F__inference_dense_40_layer_call_and_return_conditional_losses_11899104�
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
-__inference_reshape_81_layer_call_fn_11899109�
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
H__inference_reshape_81_layer_call_and_return_conditional_losses_11899124�
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
-__inference_conv3d_215_layer_call_fn_11899133�
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
H__inference_conv3d_215_layer_call_and_return_conditional_losses_11899144�
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
-__inference_conv3d_216_layer_call_fn_11899153�
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
H__inference_conv3d_216_layer_call_and_return_conditional_losses_11899163�
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
&__inference_signature_wrapper_11898798input"�
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
#__inference__wrapped_model_11898314�+,9:?@:�7
0�-
+�(
input���������
� "C�@
>

conv3d_2160�-

conv3d_216����������
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11899058�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_87_layer_call_and_return_conditional_losses_11899067p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_87_layer_call_fn_11899044�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_87_layer_call_fn_11899049c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_214_layer_call_and_return_conditional_losses_11899039t;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_214_layer_call_fn_11899028g;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_215_layer_call_and_return_conditional_losses_11899144t9:;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_215_layer_call_fn_11899133g9:;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_216_layer_call_and_return_conditional_losses_11899163t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_216_layer_call_fn_11899153g?@;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_dense_40_layer_call_and_return_conditional_losses_11899104\+,/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_40_layer_call_fn_11899093O+,/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_40_layer_call_and_return_conditional_losses_11898729�+,9:?@B�?
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
F__inference_model_40_layer_call_and_return_conditional_losses_11898775�+,9:?@B�?
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
F__inference_model_40_layer_call_and_return_conditional_losses_11898921�+,9:?@C�@
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
F__inference_model_40_layer_call_and_return_conditional_losses_11899002�+,9:?@C�@
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
+__inference_model_40_layer_call_fn_11898511t+,9:?@B�?
8�5
+�(
input���������
p 

 
� "$�!����������
+__inference_model_40_layer_call_fn_11898683t+,9:?@B�?
8�5
+�(
input���������
p

 
� "$�!����������
+__inference_model_40_layer_call_fn_11898819u+,9:?@C�@
9�6
,�)
inputs���������
p 

 
� "$�!����������
+__inference_model_40_layer_call_fn_11898840u+,9:?@C�@
9�6
,�)
inputs���������
p

 
� "$�!����������
Q__inference_range_conversion_40_layer_call_and_return_conditional_losses_11899019t?�<
5�2
0�-

parameters���������
� "1�.
'�$
0���������
� �
6__inference_range_conversion_40_layer_call_fn_11899007g?�<
5�2
0�-

parameters���������
� "$�!����������
H__inference_reshape_80_layer_call_and_return_conditional_losses_11899084d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
-__inference_reshape_80_layer_call_fn_11899072W;�8
1�.
,�)
inputs���������
� "����������@�
H__inference_reshape_81_layer_call_and_return_conditional_losses_11899124d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
-__inference_reshape_81_layer_call_fn_11899109W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_11898798�+,9:?@C�@
� 
9�6
4
input+�(
input���������"C�@
>

conv3d_2160�-

conv3d_216���������