аз	
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
 ѕ"serve*2.6.22v2.6.1-9-gc2363d6d0258╔к
ѕ
conv3d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_24/kernel
Ђ
$conv3d_24/kernel/Read/ReadVariableOpReadVariableOpconv3d_24/kernel**
_output_shapes
:*
dtype0
t
conv3d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_24/bias
m
"conv3d_24/bias/Read/ReadVariableOpReadVariableOpconv3d_24/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:@@*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:@*
dtype0
ѕ
conv3d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_25/kernel
Ђ
$conv3d_25/kernel/Read/ReadVariableOpReadVariableOpconv3d_25/kernel**
_output_shapes
:*
dtype0
t
conv3d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_25/bias
m
"conv3d_25/bias/Read/ReadVariableOpReadVariableOpconv3d_25/bias*
_output_shapes
:*
dtype0
ѕ
conv3d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_26/kernel
Ђ
$conv3d_26/kernel/Read/ReadVariableOpReadVariableOpconv3d_26/kernel**
_output_shapes
:*
dtype0
t
conv3d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_26/bias
m
"conv3d_26/bias/Read/ReadVariableOpReadVariableOpconv3d_26/bias*
_output_shapes
:*
dtype0

NoOpNoOp
ы 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*г 
valueб BЪ  Bў 
а
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api

	keras_api

	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
R
1	variables
2trainable_variables
3regularization_losses
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
<trainable_variables
=regularization_losses
>	keras_api
h

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
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
 
Г
	variables
Elayer_regularization_losses

Flayers
trainable_variables
Gnon_trainable_variables
Hmetrics
Ilayer_metrics
regularization_losses
 
 
 
 
 
Г
	variables
Jlayer_regularization_losses

Klayers
trainable_variables
Lnon_trainable_variables
Mmetrics
Nlayer_metrics
regularization_losses
 
 
\Z
VARIABLE_VALUEconv3d_24/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_24/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
	variables
Olayer_regularization_losses

Players
 trainable_variables
Qnon_trainable_variables
Rmetrics
Slayer_metrics
!regularization_losses
 
 
 
Г
#	variables
Tlayer_regularization_losses

Ulayers
$trainable_variables
Vnon_trainable_variables
Wmetrics
Xlayer_metrics
%regularization_losses
 
 
 
Г
'	variables
Ylayer_regularization_losses

Zlayers
(trainable_variables
[non_trainable_variables
\metrics
]layer_metrics
)regularization_losses
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
Г
-	variables
^layer_regularization_losses

_layers
.trainable_variables
`non_trainable_variables
ametrics
blayer_metrics
/regularization_losses
 
 
 
Г
1	variables
clayer_regularization_losses

dlayers
2trainable_variables
enon_trainable_variables
fmetrics
glayer_metrics
3regularization_losses
 
 
 
 
\Z
VARIABLE_VALUEconv3d_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1

90
:1
 
Г
;	variables
hlayer_regularization_losses

ilayers
<trainable_variables
jnon_trainable_variables
kmetrics
llayer_metrics
=regularization_losses
\Z
VARIABLE_VALUEconv3d_26/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_26/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
Г
A	variables
mlayer_regularization_losses

nlayers
Btrainable_variables
onon_trainable_variables
pmetrics
qlayer_metrics
Cregularization_losses
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
 
 
 
љ
serving_default_inputPlaceholder*3
_output_shapes!
:         *
dtype0*(
shape:         
я
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_24/kernelconv3d_24/biasdense_12/kerneldense_12/biasconv3d_25/kernelconv3d_25/biasconv3d_26/kernelconv3d_26/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         **
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *.
f)R'
%__inference_signature_wrapper_2644177
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Н
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_24/kernel/Read/ReadVariableOp"conv3d_24/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp$conv3d_25/kernel/Read/ReadVariableOp"conv3d_25/bias/Read/ReadVariableOp$conv3d_26/kernel/Read/ReadVariableOp"conv3d_26/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8ѓ *)
f$R"
 __inference__traced_save_2644589
░
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_24/kernelconv3d_24/biasdense_12/kerneldense_12/biasconv3d_25/kernelconv3d_25/biasconv3d_26/kernelconv3d_26/bias*
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
GPU2 *0,1,2,3J 8ѓ *,
f'R%
#__inference__traced_restore_2644623Йѕ
й
ц
+__inference_conv3d_24_layer_call_fn_2644407

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЇ
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_24_layer_call_and_return_conditional_losses_26437652
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
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
т
H
,__inference_reshape_24_layer_call_fn_2644451

inputs
identityл
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_24_layer_call_and_return_conditional_losses_26437932
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
Ё 
в
 __inference__traced_save_2644589
file_prefix/
+savev2_conv3d_24_kernel_read_readvariableop-
)savev2_conv3d_24_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop/
+savev2_conv3d_25_kernel_read_readvariableop-
)savev2_conv3d_25_bias_read_readvariableop/
+savev2_conv3d_26_kernel_read_readvariableop-
)savev2_conv3d_26_bias_read_readvariableop
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
ShardedFilename┘
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*в
valueрBя	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesџ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slicesа
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_24_kernel_read_readvariableop)savev2_conv3d_24_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop+savev2_conv3d_25_kernel_read_readvariableop)savev2_conv3d_25_bias_read_readvariableop+savev2_conv3d_26_kernel_read_readvariableop)savev2_conv3d_26_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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
о	
p
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_2644398

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
:         2
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
:         2	
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
:         2
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
:         2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
╠
Ѓ
F__inference_conv3d_24_layer_call_and_return_conditional_losses_2644418

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
џ
c
G__inference_reshape_25_layer_call_and_return_conditional_losses_2644503

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
■
Ќ
*__inference_dense_12_layer_call_fn_2644472

inputs
unknown:@@
	unknown_0:@
identityѕбStatefulPartitionedCallђ
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
GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_26438062
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
╠

▄
*__inference_model_12_layer_call_fn_2643890	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         **
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_model_12_layer_call_and_return_conditional_losses_26438712
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
Њ
Ш
E__inference_dense_12_layer_call_and_return_conditional_losses_2643806

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
Р

l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2644437

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
о	
p
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_2643746

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
:         2
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
:         2	
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
:         2
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
:         2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
├'
»
#__inference__traced_restore_2644623
file_prefix?
!assignvariableop_conv3d_24_kernel:/
!assignvariableop_1_conv3d_24_bias:4
"assignvariableop_2_dense_12_kernel:@@.
 assignvariableop_3_dense_12_bias:@A
#assignvariableop_4_conv3d_25_kernel:/
!assignvariableop_5_conv3d_25_bias:A
#assignvariableop_6_conv3d_26_kernel:/
!assignvariableop_7_conv3d_26_bias:

identity_9ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7▀
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*в
valueрBя	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesа
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slicesп
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

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_24_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_24_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Д
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_12_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_12_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4е
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_25_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_25_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv3d_26_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv3d_26_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpј

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8c

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_9Э
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
Њ
Ш
E__inference_dense_12_layer_call_and_return_conditional_losses_2644483

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
ц

О
%__inference_signature_wrapper_2644177	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         **
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *+
f&R$
"__inference__wrapped_model_26436932
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
а
Q
5__inference_average_pooling3d_6_layer_call_fn_2644423

inputs
identityЅ
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
GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_26437062
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
Р

l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2643706

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
¤

П
*__inference_model_12_layer_call_fn_2644219

inputs%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         **
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_model_12_layer_call_and_return_conditional_losses_26440222
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ыC
Г
E__inference_model_12_layer_call_and_return_conditional_losses_2643871

inputs/
conv3d_24_2643766:
conv3d_24_2643768:"
dense_12_2643807:@@
dense_12_2643809:@/
conv3d_25_2643849:
conv3d_25_2643851:/
conv3d_26_2643865:
conv3d_26_2643867:
identityѕб!conv3d_24/StatefulPartitionedCallб!conv3d_25/StatefulPartitionedCallб!conv3d_26/StatefulPartitionedCallб dense_12/StatefulPartitionedCall│
/tf.__operators__.getitem_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_22/strided_slice/stackи
1tf.__operators__.getitem_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_22/strided_slice/stack_1и
1tf.__operators__.getitem_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_22/strided_slice/stack_2Ї
)tf.__operators__.getitem_22/strided_sliceStridedSliceinputs8tf.__operators__.getitem_22/strided_slice/stack:output:0:tf.__operators__.getitem_22/strided_slice/stack_1:output:0:tf.__operators__.getitem_22/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_22/strided_slice╣
#range_conversion_12/PartitionedCallPartitionedCall2tf.__operators__.getitem_22/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_26437462%
#range_conversion_12/PartitionedCall│
/tf.__operators__.getitem_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_23/strided_slice/stackи
1tf.__operators__.getitem_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_23/strided_slice/stack_1и
1tf.__operators__.getitem_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_23/strided_slice/stack_2Ї
)tf.__operators__.getitem_23/strided_sliceStridedSliceinputs8tf.__operators__.getitem_23/strided_slice/stack:output:0:tf.__operators__.getitem_23/strided_slice/stack_1:output:0:tf.__operators__.getitem_23/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_23/strided_slicev
tf.concat_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_17/concat/axisѓ
tf.concat_17/concatConcatV2,range_conversion_12/PartitionedCall:output:02tf.__operators__.getitem_23/strided_slice:output:0!tf.concat_17/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_17/concat╔
!conv3d_24/StatefulPartitionedCallStatefulPartitionedCalltf.concat_17/concat:output:0conv3d_24_2643766conv3d_24_2643768*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_24_layer_call_and_return_conditional_losses_26437652#
!conv3d_24/StatefulPartitionedCall▒
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_24/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_26437792%
#average_pooling3d_6/PartitionedCallї
reshape_24/PartitionedCallPartitionedCall,average_pooling3d_6/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_24_layer_call_and_return_conditional_losses_26437932
reshape_24/PartitionedCall┐
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#reshape_24/PartitionedCall:output:0dense_12_2643807dense_12_2643809*
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
GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_26438062"
 dense_12/StatefulPartitionedCallЋ
reshape_25/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_26438272
reshape_25/PartitionedCallБ
tf.reshape_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_12/Reshape/shape╬
tf.reshape_12/ReshapeReshape#reshape_25/PartitionedCall:output:0$tf.reshape_12/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_12/ReshapeЮ
tf.tile_6/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_6/Tile/multiplesх
tf.tile_6/TileTiletf.reshape_12/Reshape:output:0!tf.tile_6/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_6/TileЌ
tf.reshape_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_13/Reshape/shapeХ
tf.reshape_13/ReshapeReshapetf.tile_6/Tile:output:0$tf.reshape_13/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_13/Reshapev
tf.concat_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_18/concat/axisВ
tf.concat_18/concatConcatV2tf.reshape_13/Reshape:output:0*conv3d_24/StatefulPartitionedCall:output:0!tf.concat_18/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_18/concat╔
!conv3d_25/StatefulPartitionedCallStatefulPartitionedCalltf.concat_18/concat:output:0conv3d_25_2643849conv3d_25_2643851*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_25_layer_call_and_return_conditional_losses_26438482#
!conv3d_25/StatefulPartitionedCallО
!conv3d_26/StatefulPartitionedCallStatefulPartitionedCall*conv3d_25/StatefulPartitionedCall:output:0conv3d_26_2643865conv3d_26_2643867*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_26_layer_call_and_return_conditional_losses_26438642#
!conv3d_26/StatefulPartitionedCallЉ
IdentityIdentity*conv3d_26/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityП
NoOpNoOp"^conv3d_24/StatefulPartitionedCall"^conv3d_25/StatefulPartitionedCall"^conv3d_26/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 2F
!conv3d_24/StatefulPartitionedCall!conv3d_24/StatefulPartitionedCall2F
!conv3d_25/StatefulPartitionedCall!conv3d_25/StatefulPartitionedCall2F
!conv3d_26/StatefulPartitionedCall!conv3d_26/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
й
ц
+__inference_conv3d_26_layer_call_fn_2644532

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_26_layer_call_and_return_conditional_losses_26438642
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
н
Ѓ
F__inference_conv3d_26_layer_call_and_return_conditional_losses_2644542

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
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
:         *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ѕ	
l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2644446

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
џ
c
G__inference_reshape_25_layer_call_and_return_conditional_losses_2643827

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
рЁ
п
"__inference__wrapped_model_2643693	
inputO
1model_12_conv3d_24_conv3d_readvariableop_resource:@
2model_12_conv3d_24_biasadd_readvariableop_resource:B
0model_12_dense_12_matmul_readvariableop_resource:@@?
1model_12_dense_12_biasadd_readvariableop_resource:@O
1model_12_conv3d_25_conv3d_readvariableop_resource:@
2model_12_conv3d_25_biasadd_readvariableop_resource:O
1model_12_conv3d_26_conv3d_readvariableop_resource:@
2model_12_conv3d_26_biasadd_readvariableop_resource:
identityѕб)model_12/conv3d_24/BiasAdd/ReadVariableOpб(model_12/conv3d_24/Conv3D/ReadVariableOpб)model_12/conv3d_25/BiasAdd/ReadVariableOpб(model_12/conv3d_25/Conv3D/ReadVariableOpб)model_12/conv3d_26/BiasAdd/ReadVariableOpб(model_12/conv3d_26/Conv3D/ReadVariableOpб(model_12/dense_12/BiasAdd/ReadVariableOpб'model_12/dense_12/MatMul/ReadVariableOp┼
8model_12/tf.__operators__.getitem_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_12/tf.__operators__.getitem_22/strided_slice/stack╔
:model_12/tf.__operators__.getitem_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_12/tf.__operators__.getitem_22/strided_slice/stack_1╔
:model_12/tf.__operators__.getitem_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_12/tf.__operators__.getitem_22/strided_slice/stack_2╣
2model_12/tf.__operators__.getitem_22/strided_sliceStridedSliceinputAmodel_12/tf.__operators__.getitem_22/strided_slice/stack:output:0Cmodel_12/tf.__operators__.getitem_22/strided_slice/stack_1:output:0Cmodel_12/tf.__operators__.getitem_22/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask24
2model_12/tf.__operators__.getitem_22/strided_sliceЇ
"model_12/range_conversion_12/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_12/range_conversion_12/sub/yз
 model_12/range_conversion_12/subSub;model_12/tf.__operators__.getitem_22/strided_slice:output:0+model_12/range_conversion_12/sub/y:output:0*
T0*3
_output_shapes!
:         2"
 model_12/range_conversion_12/subЋ
&model_12/range_conversion_12/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_12/range_conversion_12/truediv/yВ
$model_12/range_conversion_12/truedivRealDiv$model_12/range_conversion_12/sub:z:0/model_12/range_conversion_12/truediv/y:output:0*
T0*3
_output_shapes!
:         2&
$model_12/range_conversion_12/truedivЇ
"model_12/range_conversion_12/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_12/range_conversion_12/mul/yЯ
 model_12/range_conversion_12/mulMul(model_12/range_conversion_12/truediv:z:0+model_12/range_conversion_12/mul/y:output:0*
T0*3
_output_shapes!
:         2"
 model_12/range_conversion_12/mulЇ
"model_12/range_conversion_12/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2$
"model_12/range_conversion_12/add/yя
 model_12/range_conversion_12/addAddV2$model_12/range_conversion_12/mul:z:0+model_12/range_conversion_12/add/y:output:0*
T0*3
_output_shapes!
:         2"
 model_12/range_conversion_12/add┼
8model_12/tf.__operators__.getitem_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_12/tf.__operators__.getitem_23/strided_slice/stack╔
:model_12/tf.__operators__.getitem_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_12/tf.__operators__.getitem_23/strided_slice/stack_1╔
:model_12/tf.__operators__.getitem_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_12/tf.__operators__.getitem_23/strided_slice/stack_2╣
2model_12/tf.__operators__.getitem_23/strided_sliceStridedSliceinputAmodel_12/tf.__operators__.getitem_23/strided_slice/stack:output:0Cmodel_12/tf.__operators__.getitem_23/strided_slice/stack_1:output:0Cmodel_12/tf.__operators__.getitem_23/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask24
2model_12/tf.__operators__.getitem_23/strided_sliceѕ
!model_12/tf.concat_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_12/tf.concat_17/concat/axisъ
model_12/tf.concat_17/concatConcatV2$model_12/range_conversion_12/add:z:0;model_12/tf.__operators__.getitem_23/strided_slice:output:0*model_12/tf.concat_17/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_12/tf.concat_17/concatм
(model_12/conv3d_24/Conv3D/ReadVariableOpReadVariableOp1model_12_conv3d_24_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_12/conv3d_24/Conv3D/ReadVariableOpў
model_12/conv3d_24/Conv3DConv3D%model_12/tf.concat_17/concat:output:00model_12/conv3d_24/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_12/conv3d_24/Conv3D┼
)model_12/conv3d_24/BiasAdd/ReadVariableOpReadVariableOp2model_12_conv3d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_12/conv3d_24/BiasAdd/ReadVariableOp№
model_12/conv3d_24/BiasAddBiasAdd"model_12/conv3d_24/Conv3D:output:01model_12/conv3d_24/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_12/conv3d_24/BiasAddЕ
model_12/conv3d_24/SoftplusSoftplus#model_12/conv3d_24/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_12/conv3d_24/Softplusи
+model_12/average_pooling3d_6/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2-
+model_12/average_pooling3d_6/transpose/permЧ
&model_12/average_pooling3d_6/transpose	Transpose)model_12/conv3d_24/Softplus:activations:04model_12/average_pooling3d_6/transpose/perm:output:0*
T0*3
_output_shapes!
:         2(
&model_12/average_pooling3d_6/transposeЁ
&model_12/average_pooling3d_6/AvgPool3D	AvgPool3D*model_12/average_pooling3d_6/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2(
&model_12/average_pooling3d_6/AvgPool3D╗
-model_12/average_pooling3d_6/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2/
-model_12/average_pooling3d_6/transpose_1/permѕ
(model_12/average_pooling3d_6/transpose_1	Transpose/model_12/average_pooling3d_6/AvgPool3D:output:06model_12/average_pooling3d_6/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2*
(model_12/average_pooling3d_6/transpose_1њ
model_12/reshape_24/ShapeShape,model_12/average_pooling3d_6/transpose_1:y:0*
T0*
_output_shapes
:2
model_12/reshape_24/Shapeю
'model_12/reshape_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_12/reshape_24/strided_slice/stackа
)model_12/reshape_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_12/reshape_24/strided_slice/stack_1а
)model_12/reshape_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_12/reshape_24/strided_slice/stack_2┌
!model_12/reshape_24/strided_sliceStridedSlice"model_12/reshape_24/Shape:output:00model_12/reshape_24/strided_slice/stack:output:02model_12/reshape_24/strided_slice/stack_1:output:02model_12/reshape_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_12/reshape_24/strided_sliceї
#model_12/reshape_24/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_12/reshape_24/Reshape/shape/1о
!model_12/reshape_24/Reshape/shapePack*model_12/reshape_24/strided_slice:output:0,model_12/reshape_24/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_12/reshape_24/Reshape/shapeЛ
model_12/reshape_24/ReshapeReshape,model_12/average_pooling3d_6/transpose_1:y:0*model_12/reshape_24/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
model_12/reshape_24/Reshape├
'model_12/dense_12/MatMul/ReadVariableOpReadVariableOp0model_12_dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_12/dense_12/MatMul/ReadVariableOpК
model_12/dense_12/MatMulMatMul$model_12/reshape_24/Reshape:output:0/model_12/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_12/dense_12/MatMul┬
(model_12/dense_12/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_12/dense_12/BiasAdd/ReadVariableOp╔
model_12/dense_12/BiasAddBiasAdd"model_12/dense_12/MatMul:product:00model_12/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_12/dense_12/BiasAddџ
model_12/dense_12/SoftplusSoftplus"model_12/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_12/dense_12/Softplusј
model_12/reshape_25/ShapeShape(model_12/dense_12/Softplus:activations:0*
T0*
_output_shapes
:2
model_12/reshape_25/Shapeю
'model_12/reshape_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_12/reshape_25/strided_slice/stackа
)model_12/reshape_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_12/reshape_25/strided_slice/stack_1а
)model_12/reshape_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_12/reshape_25/strided_slice/stack_2┌
!model_12/reshape_25/strided_sliceStridedSlice"model_12/reshape_25/Shape:output:00model_12/reshape_25/strided_slice/stack:output:02model_12/reshape_25/strided_slice/stack_1:output:02model_12/reshape_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_12/reshape_25/strided_sliceї
#model_12/reshape_25/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_12/reshape_25/Reshape/shape/1ї
#model_12/reshape_25/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_12/reshape_25/Reshape/shape/2ї
#model_12/reshape_25/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_12/reshape_25/Reshape/shape/3ї
#model_12/reshape_25/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_12/reshape_25/Reshape/shape/4Я
!model_12/reshape_25/Reshape/shapePack*model_12/reshape_25/strided_slice:output:0,model_12/reshape_25/Reshape/shape/1:output:0,model_12/reshape_25/Reshape/shape/2:output:0,model_12/reshape_25/Reshape/shape/3:output:0,model_12/reshape_25/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_12/reshape_25/Reshape/shape┘
model_12/reshape_25/ReshapeReshape(model_12/dense_12/Softplus:activations:0*model_12/reshape_25/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
model_12/reshape_25/Reshapeх
$model_12/tf.reshape_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2&
$model_12/tf.reshape_12/Reshape/shapeЖ
model_12/tf.reshape_12/ReshapeReshape$model_12/reshape_25/Reshape:output:0-model_12/tf.reshape_12/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2 
model_12/tf.reshape_12/Reshape»
!model_12/tf.tile_6/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2#
!model_12/tf.tile_6/Tile/multiples┘
model_12/tf.tile_6/TileTile'model_12/tf.reshape_12/Reshape:output:0*model_12/tf.tile_6/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
model_12/tf.tile_6/TileЕ
$model_12/tf.reshape_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2&
$model_12/tf.reshape_13/Reshape/shape┌
model_12/tf.reshape_13/ReshapeReshape model_12/tf.tile_6/Tile:output:0-model_12/tf.reshape_13/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2 
model_12/tf.reshape_13/Reshapeѕ
!model_12/tf.concat_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_12/tf.concat_18/concat/axisЈ
model_12/tf.concat_18/concatConcatV2'model_12/tf.reshape_13/Reshape:output:0)model_12/conv3d_24/Softplus:activations:0*model_12/tf.concat_18/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
model_12/tf.concat_18/concatм
(model_12/conv3d_25/Conv3D/ReadVariableOpReadVariableOp1model_12_conv3d_25_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_12/conv3d_25/Conv3D/ReadVariableOpў
model_12/conv3d_25/Conv3DConv3D%model_12/tf.concat_18/concat:output:00model_12/conv3d_25/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_12/conv3d_25/Conv3D┼
)model_12/conv3d_25/BiasAdd/ReadVariableOpReadVariableOp2model_12_conv3d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_12/conv3d_25/BiasAdd/ReadVariableOp№
model_12/conv3d_25/BiasAddBiasAdd"model_12/conv3d_25/Conv3D:output:01model_12/conv3d_25/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_12/conv3d_25/BiasAddЕ
model_12/conv3d_25/SoftplusSoftplus#model_12/conv3d_25/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
model_12/conv3d_25/Softplusм
(model_12/conv3d_26/Conv3D/ReadVariableOpReadVariableOp1model_12_conv3d_26_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02*
(model_12/conv3d_26/Conv3D/ReadVariableOpю
model_12/conv3d_26/Conv3DConv3D)model_12/conv3d_25/Softplus:activations:00model_12/conv3d_26/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
model_12/conv3d_26/Conv3D┼
)model_12/conv3d_26/BiasAdd/ReadVariableOpReadVariableOp2model_12_conv3d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_12/conv3d_26/BiasAdd/ReadVariableOp№
model_12/conv3d_26/BiasAddBiasAdd"model_12/conv3d_26/Conv3D:output:01model_12/conv3d_26/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
model_12/conv3d_26/BiasAddі
IdentityIdentity#model_12/conv3d_26/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityе
NoOpNoOp*^model_12/conv3d_24/BiasAdd/ReadVariableOp)^model_12/conv3d_24/Conv3D/ReadVariableOp*^model_12/conv3d_25/BiasAdd/ReadVariableOp)^model_12/conv3d_25/Conv3D/ReadVariableOp*^model_12/conv3d_26/BiasAdd/ReadVariableOp)^model_12/conv3d_26/Conv3D/ReadVariableOp)^model_12/dense_12/BiasAdd/ReadVariableOp(^model_12/dense_12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 2V
)model_12/conv3d_24/BiasAdd/ReadVariableOp)model_12/conv3d_24/BiasAdd/ReadVariableOp2T
(model_12/conv3d_24/Conv3D/ReadVariableOp(model_12/conv3d_24/Conv3D/ReadVariableOp2V
)model_12/conv3d_25/BiasAdd/ReadVariableOp)model_12/conv3d_25/BiasAdd/ReadVariableOp2T
(model_12/conv3d_25/Conv3D/ReadVariableOp(model_12/conv3d_25/Conv3D/ReadVariableOp2V
)model_12/conv3d_26/BiasAdd/ReadVariableOp)model_12/conv3d_26/BiasAdd/ReadVariableOp2T
(model_12/conv3d_26/Conv3D/ReadVariableOp(model_12/conv3d_26/Conv3D/ReadVariableOp2T
(model_12/dense_12/BiasAdd/ReadVariableOp(model_12/dense_12/BiasAdd/ReadVariableOp2R
'model_12/dense_12/MatMul/ReadVariableOp'model_12/dense_12/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:         

_user_specified_nameinput
й
ц
+__inference_conv3d_25_layer_call_fn_2644512

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЇ
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_25_layer_call_and_return_conditional_losses_26438482
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
Ѕ	
l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2643779

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
¤

П
*__inference_model_12_layer_call_fn_2644198

inputs%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         **
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_model_12_layer_call_and_return_conditional_losses_26438712
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
н
Ѓ
F__inference_conv3d_26_layer_call_and_return_conditional_losses_2643864

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp└
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
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
:         *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ј
Q
5__inference_average_pooling3d_6_layer_call_fn_2644428

inputs
identityт
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
GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_26437792
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
╠

▄
*__inference_model_12_layer_call_fn_2644062	
input%
unknown:
	unknown_0:
	unknown_1:@@
	unknown_2:@'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         **
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_model_12_layer_call_and_return_conditional_losses_26440222
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
жs
В
E__inference_model_12_layer_call_and_return_conditional_losses_2644300

inputsF
(conv3d_24_conv3d_readvariableop_resource:7
)conv3d_24_biasadd_readvariableop_resource:9
'dense_12_matmul_readvariableop_resource:@@6
(dense_12_biasadd_readvariableop_resource:@F
(conv3d_25_conv3d_readvariableop_resource:7
)conv3d_25_biasadd_readvariableop_resource:F
(conv3d_26_conv3d_readvariableop_resource:7
)conv3d_26_biasadd_readvariableop_resource:
identityѕб conv3d_24/BiasAdd/ReadVariableOpбconv3d_24/Conv3D/ReadVariableOpб conv3d_25/BiasAdd/ReadVariableOpбconv3d_25/Conv3D/ReadVariableOpб conv3d_26/BiasAdd/ReadVariableOpбconv3d_26/Conv3D/ReadVariableOpбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOp│
/tf.__operators__.getitem_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_22/strided_slice/stackи
1tf.__operators__.getitem_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_22/strided_slice/stack_1и
1tf.__operators__.getitem_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_22/strided_slice/stack_2Ї
)tf.__operators__.getitem_22/strided_sliceStridedSliceinputs8tf.__operators__.getitem_22/strided_slice/stack:output:0:tf.__operators__.getitem_22/strided_slice/stack_1:output:0:tf.__operators__.getitem_22/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_22/strided_slice{
range_conversion_12/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_12/sub/y¤
range_conversion_12/subSub2tf.__operators__.getitem_22/strided_slice:output:0"range_conversion_12/sub/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/subЃ
range_conversion_12/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_12/truediv/y╚
range_conversion_12/truedivRealDivrange_conversion_12/sub:z:0&range_conversion_12/truediv/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/truediv{
range_conversion_12/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_12/mul/y╝
range_conversion_12/mulMulrange_conversion_12/truediv:z:0"range_conversion_12/mul/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/mul{
range_conversion_12/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2
range_conversion_12/add/y║
range_conversion_12/addAddV2range_conversion_12/mul:z:0"range_conversion_12/add/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/add│
/tf.__operators__.getitem_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_23/strided_slice/stackи
1tf.__operators__.getitem_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_23/strided_slice/stack_1и
1tf.__operators__.getitem_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_23/strided_slice/stack_2Ї
)tf.__operators__.getitem_23/strided_sliceStridedSliceinputs8tf.__operators__.getitem_23/strided_slice/stack:output:0:tf.__operators__.getitem_23/strided_slice/stack_1:output:0:tf.__operators__.getitem_23/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_23/strided_slicev
tf.concat_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_17/concat/axisы
tf.concat_17/concatConcatV2range_conversion_12/add:z:02tf.__operators__.getitem_23/strided_slice:output:0!tf.concat_17/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_17/concatи
conv3d_24/Conv3D/ReadVariableOpReadVariableOp(conv3d_24_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_24/Conv3D/ReadVariableOpЗ
conv3d_24/Conv3DConv3Dtf.concat_17/concat:output:0'conv3d_24/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_24/Conv3Dф
 conv3d_24/BiasAdd/ReadVariableOpReadVariableOp)conv3d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_24/BiasAdd/ReadVariableOp╦
conv3d_24/BiasAddBiasAddconv3d_24/Conv3D:output:0(conv3d_24/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_24/BiasAddј
conv3d_24/SoftplusSoftplusconv3d_24/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_24/SoftplusЦ
"average_pooling3d_6/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_6/transpose/permп
average_pooling3d_6/transpose	Transpose conv3d_24/Softplus:activations:0+average_pooling3d_6/transpose/perm:output:0*
T0*3
_output_shapes!
:         2
average_pooling3d_6/transposeЖ
average_pooling3d_6/AvgPool3D	AvgPool3D!average_pooling3d_6/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_6/AvgPool3DЕ
$average_pooling3d_6/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_6/transpose_1/permС
average_pooling3d_6/transpose_1	Transpose&average_pooling3d_6/AvgPool3D:output:0-average_pooling3d_6/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_6/transpose_1w
reshape_24/ShapeShape#average_pooling3d_6/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_24/Shapeі
reshape_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_24/strided_slice/stackј
 reshape_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_24/strided_slice/stack_1ј
 reshape_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_24/strided_slice/stack_2ц
reshape_24/strided_sliceStridedSlicereshape_24/Shape:output:0'reshape_24/strided_slice/stack:output:0)reshape_24/strided_slice/stack_1:output:0)reshape_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_24/strided_slicez
reshape_24/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_24/Reshape/shape/1▓
reshape_24/Reshape/shapePack!reshape_24/strided_slice:output:0#reshape_24/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_24/Reshape/shapeГ
reshape_24/ReshapeReshape#average_pooling3d_6/transpose_1:y:0!reshape_24/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_24/Reshapeе
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_12/MatMul/ReadVariableOpБ
dense_12/MatMulMatMulreshape_24/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/MatMulД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_12/BiasAdd/ReadVariableOpЦ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/BiasAdd
dense_12/SoftplusSoftplusdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_12/Softpluss
reshape_25/ShapeShapedense_12/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_25/Shapeі
reshape_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_25/strided_slice/stackј
 reshape_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_25/strided_slice/stack_1ј
 reshape_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_25/strided_slice/stack_2ц
reshape_25/strided_sliceStridedSlicereshape_25/Shape:output:0'reshape_25/strided_slice/stack:output:0)reshape_25/strided_slice/stack_1:output:0)reshape_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_25/strided_slicez
reshape_25/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/1z
reshape_25/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/2z
reshape_25/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/3z
reshape_25/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/4А
reshape_25/Reshape/shapePack!reshape_25/strided_slice:output:0#reshape_25/Reshape/shape/1:output:0#reshape_25/Reshape/shape/2:output:0#reshape_25/Reshape/shape/3:output:0#reshape_25/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_25/Reshape/shapeх
reshape_25/ReshapeReshapedense_12/Softplus:activations:0!reshape_25/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_25/ReshapeБ
tf.reshape_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_12/Reshape/shapeк
tf.reshape_12/ReshapeReshapereshape_25/Reshape:output:0$tf.reshape_12/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_12/ReshapeЮ
tf.tile_6/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_6/Tile/multiplesх
tf.tile_6/TileTiletf.reshape_12/Reshape:output:0!tf.tile_6/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_6/TileЌ
tf.reshape_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_13/Reshape/shapeХ
tf.reshape_13/ReshapeReshapetf.tile_6/Tile:output:0$tf.reshape_13/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_13/Reshapev
tf.concat_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_18/concat/axisР
tf.concat_18/concatConcatV2tf.reshape_13/Reshape:output:0 conv3d_24/Softplus:activations:0!tf.concat_18/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_18/concatи
conv3d_25/Conv3D/ReadVariableOpReadVariableOp(conv3d_25_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_25/Conv3D/ReadVariableOpЗ
conv3d_25/Conv3DConv3Dtf.concat_18/concat:output:0'conv3d_25/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_25/Conv3Dф
 conv3d_25/BiasAdd/ReadVariableOpReadVariableOp)conv3d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_25/BiasAdd/ReadVariableOp╦
conv3d_25/BiasAddBiasAddconv3d_25/Conv3D:output:0(conv3d_25/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_25/BiasAddј
conv3d_25/SoftplusSoftplusconv3d_25/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_25/Softplusи
conv3d_26/Conv3D/ReadVariableOpReadVariableOp(conv3d_26_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_26/Conv3D/ReadVariableOpЭ
conv3d_26/Conv3DConv3D conv3d_25/Softplus:activations:0'conv3d_26/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_26/Conv3Dф
 conv3d_26/BiasAdd/ReadVariableOpReadVariableOp)conv3d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_26/BiasAdd/ReadVariableOp╦
conv3d_26/BiasAddBiasAddconv3d_26/Conv3D:output:0(conv3d_26/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_26/BiasAddЂ
IdentityIdentityconv3d_26/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityЯ
NoOpNoOp!^conv3d_24/BiasAdd/ReadVariableOp ^conv3d_24/Conv3D/ReadVariableOp!^conv3d_25/BiasAdd/ReadVariableOp ^conv3d_25/Conv3D/ReadVariableOp!^conv3d_26/BiasAdd/ReadVariableOp ^conv3d_26/Conv3D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 2D
 conv3d_24/BiasAdd/ReadVariableOp conv3d_24/BiasAdd/ReadVariableOp2B
conv3d_24/Conv3D/ReadVariableOpconv3d_24/Conv3D/ReadVariableOp2D
 conv3d_25/BiasAdd/ReadVariableOp conv3d_25/BiasAdd/ReadVariableOp2B
conv3d_25/Conv3D/ReadVariableOpconv3d_25/Conv3D/ReadVariableOp2D
 conv3d_26/BiasAdd/ReadVariableOp conv3d_26/BiasAdd/ReadVariableOp2B
conv3d_26/Conv3D/ReadVariableOpconv3d_26/Conv3D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
џ
c
G__inference_reshape_24_layer_call_and_return_conditional_losses_2644463

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
ыC
Г
E__inference_model_12_layer_call_and_return_conditional_losses_2644022

inputs/
conv3d_24_2643990:
conv3d_24_2643992:"
dense_12_2643997:@@
dense_12_2643999:@/
conv3d_25_2644011:
conv3d_25_2644013:/
conv3d_26_2644016:
conv3d_26_2644018:
identityѕб!conv3d_24/StatefulPartitionedCallб!conv3d_25/StatefulPartitionedCallб!conv3d_26/StatefulPartitionedCallб dense_12/StatefulPartitionedCall│
/tf.__operators__.getitem_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_22/strided_slice/stackи
1tf.__operators__.getitem_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_22/strided_slice/stack_1и
1tf.__operators__.getitem_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_22/strided_slice/stack_2Ї
)tf.__operators__.getitem_22/strided_sliceStridedSliceinputs8tf.__operators__.getitem_22/strided_slice/stack:output:0:tf.__operators__.getitem_22/strided_slice/stack_1:output:0:tf.__operators__.getitem_22/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_22/strided_slice╣
#range_conversion_12/PartitionedCallPartitionedCall2tf.__operators__.getitem_22/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_26437462%
#range_conversion_12/PartitionedCall│
/tf.__operators__.getitem_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_23/strided_slice/stackи
1tf.__operators__.getitem_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_23/strided_slice/stack_1и
1tf.__operators__.getitem_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_23/strided_slice/stack_2Ї
)tf.__operators__.getitem_23/strided_sliceStridedSliceinputs8tf.__operators__.getitem_23/strided_slice/stack:output:0:tf.__operators__.getitem_23/strided_slice/stack_1:output:0:tf.__operators__.getitem_23/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_23/strided_slicev
tf.concat_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_17/concat/axisѓ
tf.concat_17/concatConcatV2,range_conversion_12/PartitionedCall:output:02tf.__operators__.getitem_23/strided_slice:output:0!tf.concat_17/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_17/concat╔
!conv3d_24/StatefulPartitionedCallStatefulPartitionedCalltf.concat_17/concat:output:0conv3d_24_2643990conv3d_24_2643992*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_24_layer_call_and_return_conditional_losses_26437652#
!conv3d_24/StatefulPartitionedCall▒
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_24/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_26437792%
#average_pooling3d_6/PartitionedCallї
reshape_24/PartitionedCallPartitionedCall,average_pooling3d_6/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_24_layer_call_and_return_conditional_losses_26437932
reshape_24/PartitionedCall┐
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#reshape_24/PartitionedCall:output:0dense_12_2643997dense_12_2643999*
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
GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_26438062"
 dense_12/StatefulPartitionedCallЋ
reshape_25/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_26438272
reshape_25/PartitionedCallБ
tf.reshape_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_12/Reshape/shape╬
tf.reshape_12/ReshapeReshape#reshape_25/PartitionedCall:output:0$tf.reshape_12/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_12/ReshapeЮ
tf.tile_6/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_6/Tile/multiplesх
tf.tile_6/TileTiletf.reshape_12/Reshape:output:0!tf.tile_6/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_6/TileЌ
tf.reshape_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_13/Reshape/shapeХ
tf.reshape_13/ReshapeReshapetf.tile_6/Tile:output:0$tf.reshape_13/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_13/Reshapev
tf.concat_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_18/concat/axisВ
tf.concat_18/concatConcatV2tf.reshape_13/Reshape:output:0*conv3d_24/StatefulPartitionedCall:output:0!tf.concat_18/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_18/concat╔
!conv3d_25/StatefulPartitionedCallStatefulPartitionedCalltf.concat_18/concat:output:0conv3d_25_2644011conv3d_25_2644013*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_25_layer_call_and_return_conditional_losses_26438482#
!conv3d_25/StatefulPartitionedCallО
!conv3d_26/StatefulPartitionedCallStatefulPartitionedCall*conv3d_25/StatefulPartitionedCall:output:0conv3d_26_2644016conv3d_26_2644018*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_26_layer_call_and_return_conditional_losses_26438642#
!conv3d_26/StatefulPartitionedCallЉ
IdentityIdentity*conv3d_26/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityП
NoOpNoOp"^conv3d_24/StatefulPartitionedCall"^conv3d_25/StatefulPartitionedCall"^conv3d_26/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 2F
!conv3d_24/StatefulPartitionedCall!conv3d_24/StatefulPartitionedCall2F
!conv3d_25/StatefulPartitionedCall!conv3d_25/StatefulPartitionedCall2F
!conv3d_26/StatefulPartitionedCall!conv3d_26/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╠
Ѓ
F__inference_conv3d_25_layer_call_and_return_conditional_losses_2643848

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
жs
В
E__inference_model_12_layer_call_and_return_conditional_losses_2644381

inputsF
(conv3d_24_conv3d_readvariableop_resource:7
)conv3d_24_biasadd_readvariableop_resource:9
'dense_12_matmul_readvariableop_resource:@@6
(dense_12_biasadd_readvariableop_resource:@F
(conv3d_25_conv3d_readvariableop_resource:7
)conv3d_25_biasadd_readvariableop_resource:F
(conv3d_26_conv3d_readvariableop_resource:7
)conv3d_26_biasadd_readvariableop_resource:
identityѕб conv3d_24/BiasAdd/ReadVariableOpбconv3d_24/Conv3D/ReadVariableOpб conv3d_25/BiasAdd/ReadVariableOpбconv3d_25/Conv3D/ReadVariableOpб conv3d_26/BiasAdd/ReadVariableOpбconv3d_26/Conv3D/ReadVariableOpбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOp│
/tf.__operators__.getitem_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_22/strided_slice/stackи
1tf.__operators__.getitem_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_22/strided_slice/stack_1и
1tf.__operators__.getitem_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_22/strided_slice/stack_2Ї
)tf.__operators__.getitem_22/strided_sliceStridedSliceinputs8tf.__operators__.getitem_22/strided_slice/stack:output:0:tf.__operators__.getitem_22/strided_slice/stack_1:output:0:tf.__operators__.getitem_22/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_22/strided_slice{
range_conversion_12/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_12/sub/y¤
range_conversion_12/subSub2tf.__operators__.getitem_22/strided_slice:output:0"range_conversion_12/sub/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/subЃ
range_conversion_12/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_12/truediv/y╚
range_conversion_12/truedivRealDivrange_conversion_12/sub:z:0&range_conversion_12/truediv/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/truediv{
range_conversion_12/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_12/mul/y╝
range_conversion_12/mulMulrange_conversion_12/truediv:z:0"range_conversion_12/mul/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/mul{
range_conversion_12/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ┐2
range_conversion_12/add/y║
range_conversion_12/addAddV2range_conversion_12/mul:z:0"range_conversion_12/add/y:output:0*
T0*3
_output_shapes!
:         2
range_conversion_12/add│
/tf.__operators__.getitem_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_23/strided_slice/stackи
1tf.__operators__.getitem_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_23/strided_slice/stack_1и
1tf.__operators__.getitem_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_23/strided_slice/stack_2Ї
)tf.__operators__.getitem_23/strided_sliceStridedSliceinputs8tf.__operators__.getitem_23/strided_slice/stack:output:0:tf.__operators__.getitem_23/strided_slice/stack_1:output:0:tf.__operators__.getitem_23/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_23/strided_slicev
tf.concat_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_17/concat/axisы
tf.concat_17/concatConcatV2range_conversion_12/add:z:02tf.__operators__.getitem_23/strided_slice:output:0!tf.concat_17/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_17/concatи
conv3d_24/Conv3D/ReadVariableOpReadVariableOp(conv3d_24_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_24/Conv3D/ReadVariableOpЗ
conv3d_24/Conv3DConv3Dtf.concat_17/concat:output:0'conv3d_24/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_24/Conv3Dф
 conv3d_24/BiasAdd/ReadVariableOpReadVariableOp)conv3d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_24/BiasAdd/ReadVariableOp╦
conv3d_24/BiasAddBiasAddconv3d_24/Conv3D:output:0(conv3d_24/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_24/BiasAddј
conv3d_24/SoftplusSoftplusconv3d_24/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_24/SoftplusЦ
"average_pooling3d_6/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_6/transpose/permп
average_pooling3d_6/transpose	Transpose conv3d_24/Softplus:activations:0+average_pooling3d_6/transpose/perm:output:0*
T0*3
_output_shapes!
:         2
average_pooling3d_6/transposeЖ
average_pooling3d_6/AvgPool3D	AvgPool3D!average_pooling3d_6/transpose:y:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_6/AvgPool3DЕ
$average_pooling3d_6/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_6/transpose_1/permС
average_pooling3d_6/transpose_1	Transpose&average_pooling3d_6/AvgPool3D:output:0-average_pooling3d_6/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         2!
average_pooling3d_6/transpose_1w
reshape_24/ShapeShape#average_pooling3d_6/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_24/Shapeі
reshape_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_24/strided_slice/stackј
 reshape_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_24/strided_slice/stack_1ј
 reshape_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_24/strided_slice/stack_2ц
reshape_24/strided_sliceStridedSlicereshape_24/Shape:output:0'reshape_24/strided_slice/stack:output:0)reshape_24/strided_slice/stack_1:output:0)reshape_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_24/strided_slicez
reshape_24/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_24/Reshape/shape/1▓
reshape_24/Reshape/shapePack!reshape_24/strided_slice:output:0#reshape_24/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_24/Reshape/shapeГ
reshape_24/ReshapeReshape#average_pooling3d_6/transpose_1:y:0!reshape_24/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
reshape_24/Reshapeе
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_12/MatMul/ReadVariableOpБ
dense_12/MatMulMatMulreshape_24/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/MatMulД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_12/BiasAdd/ReadVariableOpЦ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/BiasAdd
dense_12/SoftplusSoftplusdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_12/Softpluss
reshape_25/ShapeShapedense_12/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_25/Shapeі
reshape_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_25/strided_slice/stackј
 reshape_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_25/strided_slice/stack_1ј
 reshape_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_25/strided_slice/stack_2ц
reshape_25/strided_sliceStridedSlicereshape_25/Shape:output:0'reshape_25/strided_slice/stack:output:0)reshape_25/strided_slice/stack_1:output:0)reshape_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_25/strided_slicez
reshape_25/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/1z
reshape_25/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/2z
reshape_25/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/3z
reshape_25/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_25/Reshape/shape/4А
reshape_25/Reshape/shapePack!reshape_25/strided_slice:output:0#reshape_25/Reshape/shape/1:output:0#reshape_25/Reshape/shape/2:output:0#reshape_25/Reshape/shape/3:output:0#reshape_25/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_25/Reshape/shapeх
reshape_25/ReshapeReshapedense_12/Softplus:activations:0!reshape_25/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
reshape_25/ReshapeБ
tf.reshape_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_12/Reshape/shapeк
tf.reshape_12/ReshapeReshapereshape_25/Reshape:output:0$tf.reshape_12/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_12/ReshapeЮ
tf.tile_6/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_6/Tile/multiplesх
tf.tile_6/TileTiletf.reshape_12/Reshape:output:0!tf.tile_6/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_6/TileЌ
tf.reshape_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_13/Reshape/shapeХ
tf.reshape_13/ReshapeReshapetf.tile_6/Tile:output:0$tf.reshape_13/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_13/Reshapev
tf.concat_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_18/concat/axisР
tf.concat_18/concatConcatV2tf.reshape_13/Reshape:output:0 conv3d_24/Softplus:activations:0!tf.concat_18/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_18/concatи
conv3d_25/Conv3D/ReadVariableOpReadVariableOp(conv3d_25_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_25/Conv3D/ReadVariableOpЗ
conv3d_25/Conv3DConv3Dtf.concat_18/concat:output:0'conv3d_25/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_25/Conv3Dф
 conv3d_25/BiasAdd/ReadVariableOpReadVariableOp)conv3d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_25/BiasAdd/ReadVariableOp╦
conv3d_25/BiasAddBiasAddconv3d_25/Conv3D:output:0(conv3d_25/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_25/BiasAddј
conv3d_25/SoftplusSoftplusconv3d_25/BiasAdd:output:0*
T0*3
_output_shapes!
:         2
conv3d_25/Softplusи
conv3d_26/Conv3D/ReadVariableOpReadVariableOp(conv3d_26_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_26/Conv3D/ReadVariableOpЭ
conv3d_26/Conv3DConv3D conv3d_25/Softplus:activations:0'conv3d_26/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_26/Conv3Dф
 conv3d_26/BiasAdd/ReadVariableOpReadVariableOp)conv3d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_26/BiasAdd/ReadVariableOp╦
conv3d_26/BiasAddBiasAddconv3d_26/Conv3D:output:0(conv3d_26/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
data_formatNCHW2
conv3d_26/BiasAddЂ
IdentityIdentityconv3d_26/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityЯ
NoOpNoOp!^conv3d_24/BiasAdd/ReadVariableOp ^conv3d_24/Conv3D/ReadVariableOp!^conv3d_25/BiasAdd/ReadVariableOp ^conv3d_25/Conv3D/ReadVariableOp!^conv3d_26/BiasAdd/ReadVariableOp ^conv3d_26/Conv3D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 2D
 conv3d_24/BiasAdd/ReadVariableOp conv3d_24/BiasAdd/ReadVariableOp2B
conv3d_24/Conv3D/ReadVariableOpconv3d_24/Conv3D/ReadVariableOp2D
 conv3d_25/BiasAdd/ReadVariableOp conv3d_25/BiasAdd/ReadVariableOp2B
conv3d_25/Conv3D/ReadVariableOpconv3d_25/Conv3D/ReadVariableOp2D
 conv3d_26/BiasAdd/ReadVariableOp conv3d_26/BiasAdd/ReadVariableOp2B
conv3d_26/Conv3D/ReadVariableOpconv3d_26/Conv3D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
╠
Ѓ
F__inference_conv3d_24_layer_call_and_return_conditional_losses_2643765

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpЎ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
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
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
џ
c
G__inference_reshape_24_layer_call_and_return_conditional_losses_2643793

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
т
H
,__inference_reshape_25_layer_call_fn_2644488

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
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_26438272
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
Џ
U
5__inference_range_conversion_12_layer_call_fn_2644386

parameters
identityж
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_26437462
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :_ [
3
_output_shapes!
:         
$
_user_specified_name
parameters
ьC
г
E__inference_model_12_layer_call_and_return_conditional_losses_2644108	
input/
conv3d_24_2644076:
conv3d_24_2644078:"
dense_12_2644083:@@
dense_12_2644085:@/
conv3d_25_2644097:
conv3d_25_2644099:/
conv3d_26_2644102:
conv3d_26_2644104:
identityѕб!conv3d_24/StatefulPartitionedCallб!conv3d_25/StatefulPartitionedCallб!conv3d_26/StatefulPartitionedCallб dense_12/StatefulPartitionedCall│
/tf.__operators__.getitem_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_22/strided_slice/stackи
1tf.__operators__.getitem_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_22/strided_slice/stack_1и
1tf.__operators__.getitem_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_22/strided_slice/stack_2ї
)tf.__operators__.getitem_22/strided_sliceStridedSliceinput8tf.__operators__.getitem_22/strided_slice/stack:output:0:tf.__operators__.getitem_22/strided_slice/stack_1:output:0:tf.__operators__.getitem_22/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_22/strided_slice╣
#range_conversion_12/PartitionedCallPartitionedCall2tf.__operators__.getitem_22/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_26437462%
#range_conversion_12/PartitionedCall│
/tf.__operators__.getitem_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_23/strided_slice/stackи
1tf.__operators__.getitem_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_23/strided_slice/stack_1и
1tf.__operators__.getitem_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_23/strided_slice/stack_2ї
)tf.__operators__.getitem_23/strided_sliceStridedSliceinput8tf.__operators__.getitem_23/strided_slice/stack:output:0:tf.__operators__.getitem_23/strided_slice/stack_1:output:0:tf.__operators__.getitem_23/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_23/strided_slicev
tf.concat_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_17/concat/axisѓ
tf.concat_17/concatConcatV2,range_conversion_12/PartitionedCall:output:02tf.__operators__.getitem_23/strided_slice:output:0!tf.concat_17/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_17/concat╔
!conv3d_24/StatefulPartitionedCallStatefulPartitionedCalltf.concat_17/concat:output:0conv3d_24_2644076conv3d_24_2644078*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_24_layer_call_and_return_conditional_losses_26437652#
!conv3d_24/StatefulPartitionedCall▒
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_24/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_26437792%
#average_pooling3d_6/PartitionedCallї
reshape_24/PartitionedCallPartitionedCall,average_pooling3d_6/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_24_layer_call_and_return_conditional_losses_26437932
reshape_24/PartitionedCall┐
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#reshape_24/PartitionedCall:output:0dense_12_2644083dense_12_2644085*
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
GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_26438062"
 dense_12/StatefulPartitionedCallЋ
reshape_25/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_26438272
reshape_25/PartitionedCallБ
tf.reshape_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_12/Reshape/shape╬
tf.reshape_12/ReshapeReshape#reshape_25/PartitionedCall:output:0$tf.reshape_12/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_12/ReshapeЮ
tf.tile_6/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_6/Tile/multiplesх
tf.tile_6/TileTiletf.reshape_12/Reshape:output:0!tf.tile_6/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_6/TileЌ
tf.reshape_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_13/Reshape/shapeХ
tf.reshape_13/ReshapeReshapetf.tile_6/Tile:output:0$tf.reshape_13/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_13/Reshapev
tf.concat_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_18/concat/axisВ
tf.concat_18/concatConcatV2tf.reshape_13/Reshape:output:0*conv3d_24/StatefulPartitionedCall:output:0!tf.concat_18/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_18/concat╔
!conv3d_25/StatefulPartitionedCallStatefulPartitionedCalltf.concat_18/concat:output:0conv3d_25_2644097conv3d_25_2644099*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_25_layer_call_and_return_conditional_losses_26438482#
!conv3d_25/StatefulPartitionedCallО
!conv3d_26/StatefulPartitionedCallStatefulPartitionedCall*conv3d_25/StatefulPartitionedCall:output:0conv3d_26_2644102conv3d_26_2644104*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_26_layer_call_and_return_conditional_losses_26438642#
!conv3d_26/StatefulPartitionedCallЉ
IdentityIdentity*conv3d_26/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityП
NoOpNoOp"^conv3d_24/StatefulPartitionedCall"^conv3d_25/StatefulPartitionedCall"^conv3d_26/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 2F
!conv3d_24/StatefulPartitionedCall!conv3d_24/StatefulPartitionedCall2F
!conv3d_25/StatefulPartitionedCall!conv3d_25/StatefulPartitionedCall2F
!conv3d_26/StatefulPartitionedCall!conv3d_26/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput
╠
Ѓ
F__inference_conv3d_25_layer_call_and_return_conditional_losses_2644523

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
ьC
г
E__inference_model_12_layer_call_and_return_conditional_losses_2644154	
input/
conv3d_24_2644122:
conv3d_24_2644124:"
dense_12_2644129:@@
dense_12_2644131:@/
conv3d_25_2644143:
conv3d_25_2644145:/
conv3d_26_2644148:
conv3d_26_2644150:
identityѕб!conv3d_24/StatefulPartitionedCallб!conv3d_25/StatefulPartitionedCallб!conv3d_26/StatefulPartitionedCallб dense_12/StatefulPartitionedCall│
/tf.__operators__.getitem_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_22/strided_slice/stackи
1tf.__operators__.getitem_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_22/strided_slice/stack_1и
1tf.__operators__.getitem_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_22/strided_slice/stack_2ї
)tf.__operators__.getitem_22/strided_sliceStridedSliceinput8tf.__operators__.getitem_22/strided_slice/stack:output:0:tf.__operators__.getitem_22/strided_slice/stack_1:output:0:tf.__operators__.getitem_22/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_22/strided_slice╣
#range_conversion_12/PartitionedCallPartitionedCall2tf.__operators__.getitem_22/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_26437462%
#range_conversion_12/PartitionedCall│
/tf.__operators__.getitem_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_23/strided_slice/stackи
1tf.__operators__.getitem_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_23/strided_slice/stack_1и
1tf.__operators__.getitem_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_23/strided_slice/stack_2ї
)tf.__operators__.getitem_23/strided_sliceStridedSliceinput8tf.__operators__.getitem_23/strided_slice/stack:output:0:tf.__operators__.getitem_23/strided_slice/stack_1:output:0:tf.__operators__.getitem_23/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:         *

begin_mask*
end_mask2+
)tf.__operators__.getitem_23/strided_slicev
tf.concat_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_17/concat/axisѓ
tf.concat_17/concatConcatV2,range_conversion_12/PartitionedCall:output:02tf.__operators__.getitem_23/strided_slice:output:0!tf.concat_17/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_17/concat╔
!conv3d_24/StatefulPartitionedCallStatefulPartitionedCalltf.concat_17/concat:output:0conv3d_24_2644122conv3d_24_2644124*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_24_layer_call_and_return_conditional_losses_26437652#
!conv3d_24/StatefulPartitionedCall▒
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_24/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_26437792%
#average_pooling3d_6/PartitionedCallї
reshape_24/PartitionedCallPartitionedCall,average_pooling3d_6/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_24_layer_call_and_return_conditional_losses_26437932
reshape_24/PartitionedCall┐
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#reshape_24/PartitionedCall:output:0dense_12_2644129dense_12_2644131*
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
GPU2 *0,1,2,3J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_26438062"
 dense_12/StatefulPartitionedCallЋ
reshape_25/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8ѓ *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_26438272
reshape_25/PartitionedCallБ
tf.reshape_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*"                          2
tf.reshape_12/Reshape/shape╬
tf.reshape_12/ReshapeReshape#reshape_25/PartitionedCall:output:0$tf.reshape_12/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)         2
tf.reshape_12/ReshapeЮ
tf.tile_6/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_6/Tile/multiplesх
tf.tile_6/TileTiletf.reshape_12/Reshape:output:0!tf.tile_6/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)         2
tf.tile_6/TileЌ
tf.reshape_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                2
tf.reshape_13/Reshape/shapeХ
tf.reshape_13/ReshapeReshapetf.tile_6/Tile:output:0$tf.reshape_13/Reshape/shape:output:0*
T0*3
_output_shapes!
:         2
tf.reshape_13/Reshapev
tf.concat_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_18/concat/axisВ
tf.concat_18/concatConcatV2tf.reshape_13/Reshape:output:0*conv3d_24/StatefulPartitionedCall:output:0!tf.concat_18/concat/axis:output:0*
N*
T0*3
_output_shapes!
:         2
tf.concat_18/concat╔
!conv3d_25/StatefulPartitionedCallStatefulPartitionedCalltf.concat_18/concat:output:0conv3d_25_2644143conv3d_25_2644145*
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
GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_25_layer_call_and_return_conditional_losses_26438482#
!conv3d_25/StatefulPartitionedCallО
!conv3d_26/StatefulPartitionedCallStatefulPartitionedCall*conv3d_25/StatefulPartitionedCall:output:0conv3d_26_2644148conv3d_26_2644150*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8ѓ *O
fJRH
F__inference_conv3d_26_layer_call_and_return_conditional_losses_26438642#
!conv3d_26/StatefulPartitionedCallЉ
IdentityIdentity*conv3d_26/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         2

IdentityП
NoOpNoOp"^conv3d_24/StatefulPartitionedCall"^conv3d_25/StatefulPartitionedCall"^conv3d_26/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         : : : : : : : : 2F
!conv3d_24/StatefulPartitionedCall!conv3d_24/StatefulPartitionedCall2F
!conv3d_25/StatefulPartitionedCall!conv3d_25/StatefulPartitionedCall2F
!conv3d_26/StatefulPartitionedCall!conv3d_26/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:Z V
3
_output_shapes!
:         

_user_specified_nameinput"еL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*└
serving_defaultг
C
input:
serving_default_input:0         I
	conv3d_26<
StatefulPartitionedCall:0         tensorflow/serving/predict:┼Љ
њ
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
r__call__
*s&call_and_return_all_conditional_losses
t_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
Ц
	variables
trainable_variables
regularization_losses
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
╗

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
#	variables
$trainable_variables
%regularization_losses
&	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
'	variables
(trainable_variables
)regularization_losses
*	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
д
1	variables
2trainable_variables
3regularization_losses
4	keras_api
__call__
+ђ&call_and_return_all_conditional_losses"
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
й

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
й

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_layer
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
 "
trackable_list_wrapper
╩
	variables
Elayer_regularization_losses

Flayers
trainable_variables
Gnon_trainable_variables
Hmetrics
Ilayer_metrics
regularization_losses
r__call__
t_default_save_signature
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
-
Ёserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
	variables
Jlayer_regularization_losses

Klayers
trainable_variables
Lnon_trainable_variables
Mmetrics
Nlayer_metrics
regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
0:. 2conv3d_24/kernel
: 2conv3d_24/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
	variables
Olayer_regularization_losses

Players
 trainable_variables
Qnon_trainable_variables
Rmetrics
Slayer_metrics
!regularization_losses
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
Г
#	variables
Tlayer_regularization_losses

Ulayers
$trainable_variables
Vnon_trainable_variables
Wmetrics
Xlayer_metrics
%regularization_losses
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
Г
'	variables
Ylayer_regularization_losses

Zlayers
(trainable_variables
[non_trainable_variables
\metrics
]layer_metrics
)regularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_12/kernel
:@ 2dense_12/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
-	variables
^layer_regularization_losses

_layers
.trainable_variables
`non_trainable_variables
ametrics
blayer_metrics
/regularization_losses
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
»
1	variables
clayer_regularization_losses

dlayers
2trainable_variables
enon_trainable_variables
fmetrics
glayer_metrics
3regularization_losses
__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
0:. 2conv3d_25/kernel
: 2conv3d_25/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
;	variables
hlayer_regularization_losses

ilayers
<trainable_variables
jnon_trainable_variables
kmetrics
llayer_metrics
=regularization_losses
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
0:. 2conv3d_26/kernel
: 2conv3d_26/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
A	variables
mlayer_regularization_losses

nlayers
Btrainable_variables
onon_trainable_variables
pmetrics
qlayer_metrics
Cregularization_losses
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
ќ
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
Ш2з
*__inference_model_12_layer_call_fn_2643890
*__inference_model_12_layer_call_fn_2644198
*__inference_model_12_layer_call_fn_2644219
*__inference_model_12_layer_call_fn_2644062└
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
Р2▀
E__inference_model_12_layer_call_and_return_conditional_losses_2644300
E__inference_model_12_layer_call_and_return_conditional_losses_2644381
E__inference_model_12_layer_call_and_return_conditional_losses_2644108
E__inference_model_12_layer_call_and_return_conditional_losses_2644154└
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
╦B╚
"__inference__wrapped_model_2643693input"ў
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
с2Я
5__inference_range_conversion_12_layer_call_fn_2644386д
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
■2ч
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_2644398д
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
Н2м
+__inference_conv3d_24_layer_call_fn_2644407б
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
­2ь
F__inference_conv3d_24_layer_call_and_return_conditional_losses_2644418б
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
ќ2Њ
5__inference_average_pooling3d_6_layer_call_fn_2644423
5__inference_average_pooling3d_6_layer_call_fn_2644428б
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
╠2╔
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2644437
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2644446б
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
,__inference_reshape_24_layer_call_fn_2644451б
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
G__inference_reshape_24_layer_call_and_return_conditional_losses_2644463б
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
н2Л
*__inference_dense_12_layer_call_fn_2644472б
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
№2В
E__inference_dense_12_layer_call_and_return_conditional_losses_2644483б
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
,__inference_reshape_25_layer_call_fn_2644488б
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
G__inference_reshape_25_layer_call_and_return_conditional_losses_2644503б
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
Н2м
+__inference_conv3d_25_layer_call_fn_2644512б
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
­2ь
F__inference_conv3d_25_layer_call_and_return_conditional_losses_2644523б
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
Н2м
+__inference_conv3d_26_layer_call_fn_2644532б
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
­2ь
F__inference_conv3d_26_layer_call_and_return_conditional_losses_2644542б
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
╩BК
%__inference_signature_wrapper_2644177input"ћ
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
 ░
"__inference__wrapped_model_2643693Ѕ+,9:?@:б7
0б-
+і(
input         
ф "Aф>
<
	conv3d_26/і,
	conv3d_26         Ї
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2644437И_б\
UбR
PіM
inputsA                                             
ф "UбR
KіH
0A                                             
џ ─
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_2644446p;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ т
5__inference_average_pooling3d_6_layer_call_fn_2644423Ф_б\
UбR
PіM
inputsA                                             
ф "HіEA                                             ю
5__inference_average_pooling3d_6_layer_call_fn_2644428c;б8
1б.
,і)
inputs         
ф "$і!         Й
F__inference_conv3d_24_layer_call_and_return_conditional_losses_2644418t;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ ќ
+__inference_conv3d_24_layer_call_fn_2644407g;б8
1б.
,і)
inputs         
ф "$і!         Й
F__inference_conv3d_25_layer_call_and_return_conditional_losses_2644523t9:;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ ќ
+__inference_conv3d_25_layer_call_fn_2644512g9:;б8
1б.
,і)
inputs         
ф "$і!         Й
F__inference_conv3d_26_layer_call_and_return_conditional_losses_2644542t?@;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ ќ
+__inference_conv3d_26_layer_call_fn_2644532g?@;б8
1б.
,і)
inputs         
ф "$і!         Ц
E__inference_dense_12_layer_call_and_return_conditional_losses_2644483\+,/б,
%б"
 і
inputs         @
ф "%б"
і
0         @
џ }
*__inference_dense_12_layer_call_fn_2644472O+,/б,
%б"
 і
inputs         @
ф "і         @╦
E__inference_model_12_layer_call_and_return_conditional_losses_2644108Ђ+,9:?@Bб?
8б5
+і(
input         
p 

 
ф "1б.
'і$
0         
џ ╦
E__inference_model_12_layer_call_and_return_conditional_losses_2644154Ђ+,9:?@Bб?
8б5
+і(
input         
p

 
ф "1б.
'і$
0         
џ ╠
E__inference_model_12_layer_call_and_return_conditional_losses_2644300ѓ+,9:?@Cб@
9б6
,і)
inputs         
p 

 
ф "1б.
'і$
0         
џ ╠
E__inference_model_12_layer_call_and_return_conditional_losses_2644381ѓ+,9:?@Cб@
9б6
,і)
inputs         
p

 
ф "1б.
'і$
0         
џ б
*__inference_model_12_layer_call_fn_2643890t+,9:?@Bб?
8б5
+і(
input         
p 

 
ф "$і!         б
*__inference_model_12_layer_call_fn_2644062t+,9:?@Bб?
8б5
+і(
input         
p

 
ф "$і!         Б
*__inference_model_12_layer_call_fn_2644198u+,9:?@Cб@
9б6
,і)
inputs         
p 

 
ф "$і!         Б
*__inference_model_12_layer_call_fn_2644219u+,9:?@Cб@
9б6
,і)
inputs         
p

 
ф "$і!         ╚
P__inference_range_conversion_12_layer_call_and_return_conditional_losses_2644398t?б<
5б2
0і-

parameters         
ф "1б.
'і$
0         
џ а
5__inference_range_conversion_12_layer_call_fn_2644386g?б<
5б2
0і-

parameters         
ф "$і!         »
G__inference_reshape_24_layer_call_and_return_conditional_losses_2644463d;б8
1б.
,і)
inputs         
ф "%б"
і
0         @
џ Є
,__inference_reshape_24_layer_call_fn_2644451W;б8
1б.
,і)
inputs         
ф "і         @»
G__inference_reshape_25_layer_call_and_return_conditional_losses_2644503d/б,
%б"
 і
inputs         @
ф "1б.
'і$
0         
џ Є
,__inference_reshape_25_layer_call_fn_2644488W/б,
%б"
 і
inputs         @
ф "$і!         ╝
%__inference_signature_wrapper_2644177њ+,9:?@Cб@
б 
9ф6
4
input+і(
input         "Aф>
<
	conv3d_26/і,
	conv3d_26         