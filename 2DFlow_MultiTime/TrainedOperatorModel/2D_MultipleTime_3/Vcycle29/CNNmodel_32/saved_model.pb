��
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
conv3d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_16/kernel
�
$conv3d_16/kernel/Read/ReadVariableOpReadVariableOpconv3d_16/kernel**
_output_shapes
:*
dtype0
t
conv3d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_16/bias
m
"conv3d_16/bias/Read/ReadVariableOpReadVariableOpconv3d_16/bias*
_output_shapes
:*
dtype0
�
conv3d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_17/kernel
�
$conv3d_17/kernel/Read/ReadVariableOpReadVariableOpconv3d_17/kernel**
_output_shapes
:*
dtype0
t
conv3d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_17/bias
m
"conv3d_17/bias/Read/ReadVariableOpReadVariableOpconv3d_17/bias*
_output_shapes
:*
dtype0
�
conv3d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_18/kernel
�
$conv3d_18/kernel/Read/ReadVariableOpReadVariableOpconv3d_18/kernel**
_output_shapes
:*
dtype0
t
conv3d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_18/bias
m
"conv3d_18/bias/Read/ReadVariableOpReadVariableOpconv3d_18/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
�
conv3d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_19/kernel
�
$conv3d_19/kernel/Read/ReadVariableOpReadVariableOpconv3d_19/kernel**
_output_shapes
:*
dtype0
t
conv3d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_19/bias
m
"conv3d_19/bias/Read/ReadVariableOpReadVariableOpconv3d_19/bias*
_output_shapes
:*
dtype0
�
conv3d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_20/kernel
�
$conv3d_20/kernel/Read/ReadVariableOpReadVariableOpconv3d_20/kernel**
_output_shapes
:*
dtype0
t
conv3d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_20/bias
m
"conv3d_20/bias/Read/ReadVariableOpReadVariableOpconv3d_20/bias*
_output_shapes
:*
dtype0
�
conv3d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_21/kernel
�
$conv3d_21/kernel/Read/ReadVariableOpReadVariableOpconv3d_21/kernel**
_output_shapes
:*
dtype0
t
conv3d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_21/bias
m
"conv3d_21/bias/Read/ReadVariableOpReadVariableOpconv3d_21/bias*
_output_shapes
:*
dtype0
�
conv3d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_22/kernel
�
$conv3d_22/kernel/Read/ReadVariableOpReadVariableOpconv3d_22/kernel**
_output_shapes
:*
dtype0
t
conv3d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_22/bias
m
"conv3d_22/bias/Read/ReadVariableOpReadVariableOpconv3d_22/bias*
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
VARIABLE_VALUEconv3d_16/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_16/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_18/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_19/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_19/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_20/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_20/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_21/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_21/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_22/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_22/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_16/kernelconv3d_16/biasconv3d_17/kernelconv3d_17/biasconv3d_18/kernelconv3d_18/biasdense_4/kerneldense_4/biasconv3d_19/kernelconv3d_19/biasconv3d_20/kernelconv3d_20/biasconv3d_21/kernelconv3d_21/biasconv3d_22/kernelconv3d_22/bias*
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
%__inference_signature_wrapper_1967644
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_16/kernel/Read/ReadVariableOp"conv3d_16/bias/Read/ReadVariableOp$conv3d_17/kernel/Read/ReadVariableOp"conv3d_17/bias/Read/ReadVariableOp$conv3d_18/kernel/Read/ReadVariableOp"conv3d_18/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp$conv3d_19/kernel/Read/ReadVariableOp"conv3d_19/bias/Read/ReadVariableOp$conv3d_20/kernel/Read/ReadVariableOp"conv3d_20/bias/Read/ReadVariableOp$conv3d_21/kernel/Read/ReadVariableOp"conv3d_21/bias/Read/ReadVariableOp$conv3d_22/kernel/Read/ReadVariableOp"conv3d_22/bias/Read/ReadVariableOpConst*
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
 __inference__traced_save_1968356
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_16/kernelconv3d_16/biasconv3d_17/kernelconv3d_17/biasconv3d_18/kernelconv3d_18/biasdense_4/kerneldense_4/biasconv3d_19/kernelconv3d_19/biasconv3d_20/kernelconv3d_20/biasconv3d_21/kernelconv3d_21/biasconv3d_22/kernelconv3d_22/bias*
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
#__inference__traced_restore_1968414��
�
�
+__inference_conv3d_22_layer_call_fn_1968275

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
F__inference_conv3d_22_layer_call_and_return_conditional_losses_19670872
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

l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1968044

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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_1968073

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
��
�
"__inference__wrapped_model_1966752	
inputN
0model_4_conv3d_16_conv3d_readvariableop_resource:?
1model_4_conv3d_16_biasadd_readvariableop_resource:N
0model_4_conv3d_17_conv3d_readvariableop_resource:?
1model_4_conv3d_17_biasadd_readvariableop_resource:N
0model_4_conv3d_18_conv3d_readvariableop_resource:?
1model_4_conv3d_18_biasadd_readvariableop_resource:@
.model_4_dense_4_matmul_readvariableop_resource:@@=
/model_4_dense_4_biasadd_readvariableop_resource:@N
0model_4_conv3d_19_conv3d_readvariableop_resource:?
1model_4_conv3d_19_biasadd_readvariableop_resource:N
0model_4_conv3d_20_conv3d_readvariableop_resource:?
1model_4_conv3d_20_biasadd_readvariableop_resource:N
0model_4_conv3d_21_conv3d_readvariableop_resource:?
1model_4_conv3d_21_biasadd_readvariableop_resource:N
0model_4_conv3d_22_conv3d_readvariableop_resource:?
1model_4_conv3d_22_biasadd_readvariableop_resource:
identity��(model_4/conv3d_16/BiasAdd/ReadVariableOp�'model_4/conv3d_16/Conv3D/ReadVariableOp�(model_4/conv3d_17/BiasAdd/ReadVariableOp�'model_4/conv3d_17/Conv3D/ReadVariableOp�(model_4/conv3d_18/BiasAdd/ReadVariableOp�'model_4/conv3d_18/Conv3D/ReadVariableOp�(model_4/conv3d_19/BiasAdd/ReadVariableOp�'model_4/conv3d_19/Conv3D/ReadVariableOp�(model_4/conv3d_20/BiasAdd/ReadVariableOp�'model_4/conv3d_20/Conv3D/ReadVariableOp�(model_4/conv3d_21/BiasAdd/ReadVariableOp�'model_4/conv3d_21/Conv3D/ReadVariableOp�(model_4/conv3d_22/BiasAdd/ReadVariableOp�'model_4/conv3d_22/Conv3D/ReadVariableOp�&model_4/dense_4/BiasAdd/ReadVariableOp�%model_4/dense_4/MatMul/ReadVariableOp�
8model_4/tf.__operators__.getitem_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_4/tf.__operators__.getitem_154/strided_slice/stack�
:model_4/tf.__operators__.getitem_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_4/tf.__operators__.getitem_154/strided_slice/stack_1�
:model_4/tf.__operators__.getitem_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_4/tf.__operators__.getitem_154/strided_slice/stack_2�
2model_4/tf.__operators__.getitem_154/strided_sliceStridedSliceinputAmodel_4/tf.__operators__.getitem_154/strided_slice/stack:output:0Cmodel_4/tf.__operators__.getitem_154/strided_slice/stack_1:output:0Cmodel_4/tf.__operators__.getitem_154/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask24
2model_4/tf.__operators__.getitem_154/strided_slice�
 model_4/range_conversion_4/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 model_4/range_conversion_4/sub/y�
model_4/range_conversion_4/subSub;model_4/tf.__operators__.getitem_154/strided_slice:output:0)model_4/range_conversion_4/sub/y:output:0*
T0*3
_output_shapes!
:���������  2 
model_4/range_conversion_4/sub�
$model_4/range_conversion_4/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2&
$model_4/range_conversion_4/truediv/y�
"model_4/range_conversion_4/truedivRealDiv"model_4/range_conversion_4/sub:z:0-model_4/range_conversion_4/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2$
"model_4/range_conversion_4/truediv�
 model_4/range_conversion_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 model_4/range_conversion_4/mul/y�
model_4/range_conversion_4/mulMul&model_4/range_conversion_4/truediv:z:0)model_4/range_conversion_4/mul/y:output:0*
T0*3
_output_shapes!
:���������  2 
model_4/range_conversion_4/mul�
 model_4/range_conversion_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2"
 model_4/range_conversion_4/add/y�
model_4/range_conversion_4/addAddV2"model_4/range_conversion_4/mul:z:0)model_4/range_conversion_4/add/y:output:0*
T0*3
_output_shapes!
:���������  2 
model_4/range_conversion_4/add�
8model_4/tf.__operators__.getitem_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_4/tf.__operators__.getitem_155/strided_slice/stack�
:model_4/tf.__operators__.getitem_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_4/tf.__operators__.getitem_155/strided_slice/stack_1�
:model_4/tf.__operators__.getitem_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_4/tf.__operators__.getitem_155/strided_slice/stack_2�
2model_4/tf.__operators__.getitem_155/strided_sliceStridedSliceinputAmodel_4/tf.__operators__.getitem_155/strided_slice/stack:output:0Cmodel_4/tf.__operators__.getitem_155/strided_slice/stack_1:output:0Cmodel_4/tf.__operators__.getitem_155/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask24
2model_4/tf.__operators__.getitem_155/strided_slice�
!model_4/tf.concat_167/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/tf.concat_167/concat/axis�
model_4/tf.concat_167/concatConcatV2"model_4/range_conversion_4/add:z:0;model_4/tf.__operators__.getitem_155/strided_slice:output:0*model_4/tf.concat_167/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_4/tf.concat_167/concat�
'model_4/conv3d_16/Conv3D/ReadVariableOpReadVariableOp0model_4_conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_4/conv3d_16/Conv3D/ReadVariableOp�
model_4/conv3d_16/Conv3DConv3D%model_4/tf.concat_167/concat:output:0/model_4/conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_4/conv3d_16/Conv3D�
(model_4/conv3d_16/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv3d_16/BiasAdd/ReadVariableOp�
model_4/conv3d_16/BiasAddBiasAdd!model_4/conv3d_16/Conv3D:output:00model_4/conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_4/conv3d_16/BiasAdd�
model_4/conv3d_16/SoftplusSoftplus"model_4/conv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_4/conv3d_16/Softplus�
*model_4/average_pooling3d_6/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2,
*model_4/average_pooling3d_6/transpose/perm�
%model_4/average_pooling3d_6/transpose	Transpose(model_4/conv3d_16/Softplus:activations:03model_4/average_pooling3d_6/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2'
%model_4/average_pooling3d_6/transpose�
%model_4/average_pooling3d_6/AvgPool3D	AvgPool3D)model_4/average_pooling3d_6/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2'
%model_4/average_pooling3d_6/AvgPool3D�
,model_4/average_pooling3d_6/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_4/average_pooling3d_6/transpose_1/perm�
'model_4/average_pooling3d_6/transpose_1	Transpose.model_4/average_pooling3d_6/AvgPool3D:output:05model_4/average_pooling3d_6/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_4/average_pooling3d_6/transpose_1�
'model_4/conv3d_17/Conv3D/ReadVariableOpReadVariableOp0model_4_conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_4/conv3d_17/Conv3D/ReadVariableOp�
model_4/conv3d_17/Conv3DConv3D+model_4/average_pooling3d_6/transpose_1:y:0/model_4/conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_4/conv3d_17/Conv3D�
(model_4/conv3d_17/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv3d_17/BiasAdd/ReadVariableOp�
model_4/conv3d_17/BiasAddBiasAdd!model_4/conv3d_17/Conv3D:output:00model_4/conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_4/conv3d_17/BiasAdd�
model_4/conv3d_17/SoftplusSoftplus"model_4/conv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_4/conv3d_17/Softplus�
*model_4/average_pooling3d_7/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2,
*model_4/average_pooling3d_7/transpose/perm�
%model_4/average_pooling3d_7/transpose	Transpose(model_4/conv3d_17/Softplus:activations:03model_4/average_pooling3d_7/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2'
%model_4/average_pooling3d_7/transpose�
%model_4/average_pooling3d_7/AvgPool3D	AvgPool3D)model_4/average_pooling3d_7/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2'
%model_4/average_pooling3d_7/AvgPool3D�
,model_4/average_pooling3d_7/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_4/average_pooling3d_7/transpose_1/perm�
'model_4/average_pooling3d_7/transpose_1	Transpose.model_4/average_pooling3d_7/AvgPool3D:output:05model_4/average_pooling3d_7/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_4/average_pooling3d_7/transpose_1�
'model_4/conv3d_18/Conv3D/ReadVariableOpReadVariableOp0model_4_conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_4/conv3d_18/Conv3D/ReadVariableOp�
model_4/conv3d_18/Conv3DConv3D+model_4/average_pooling3d_7/transpose_1:y:0/model_4/conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_4/conv3d_18/Conv3D�
(model_4/conv3d_18/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv3d_18/BiasAdd/ReadVariableOp�
model_4/conv3d_18/BiasAddBiasAdd!model_4/conv3d_18/Conv3D:output:00model_4/conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_4/conv3d_18/BiasAdd�
model_4/conv3d_18/SoftplusSoftplus"model_4/conv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_4/conv3d_18/Softplus�
*model_4/average_pooling3d_8/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2,
*model_4/average_pooling3d_8/transpose/perm�
%model_4/average_pooling3d_8/transpose	Transpose(model_4/conv3d_18/Softplus:activations:03model_4/average_pooling3d_8/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2'
%model_4/average_pooling3d_8/transpose�
%model_4/average_pooling3d_8/AvgPool3D	AvgPool3D)model_4/average_pooling3d_8/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2'
%model_4/average_pooling3d_8/AvgPool3D�
,model_4/average_pooling3d_8/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_4/average_pooling3d_8/transpose_1/perm�
'model_4/average_pooling3d_8/transpose_1	Transpose.model_4/average_pooling3d_8/AvgPool3D:output:05model_4/average_pooling3d_8/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_4/average_pooling3d_8/transpose_1�
model_4/reshape_8/ShapeShape+model_4/average_pooling3d_8/transpose_1:y:0*
T0*
_output_shapes
:2
model_4/reshape_8/Shape�
%model_4/reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model_4/reshape_8/strided_slice/stack�
'model_4/reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_4/reshape_8/strided_slice/stack_1�
'model_4/reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_4/reshape_8/strided_slice/stack_2�
model_4/reshape_8/strided_sliceStridedSlice model_4/reshape_8/Shape:output:0.model_4/reshape_8/strided_slice/stack:output:00model_4/reshape_8/strided_slice/stack_1:output:00model_4/reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model_4/reshape_8/strided_slice�
!model_4/reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2#
!model_4/reshape_8/Reshape/shape/1�
model_4/reshape_8/Reshape/shapePack(model_4/reshape_8/strided_slice:output:0*model_4/reshape_8/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
model_4/reshape_8/Reshape/shape�
model_4/reshape_8/ReshapeReshape+model_4/average_pooling3d_8/transpose_1:y:0(model_4/reshape_8/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_4/reshape_8/Reshape�
%model_4/dense_4/MatMul/ReadVariableOpReadVariableOp.model_4_dense_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%model_4/dense_4/MatMul/ReadVariableOp�
model_4/dense_4/MatMulMatMul"model_4/reshape_8/Reshape:output:0-model_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_4/dense_4/MatMul�
&model_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_4/dense_4/BiasAdd/ReadVariableOp�
model_4/dense_4/BiasAddBiasAdd model_4/dense_4/MatMul:product:0.model_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_4/dense_4/BiasAdd�
model_4/dense_4/SoftplusSoftplus model_4/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_4/dense_4/Softplus�
model_4/reshape_9/ShapeShape&model_4/dense_4/Softplus:activations:0*
T0*
_output_shapes
:2
model_4/reshape_9/Shape�
%model_4/reshape_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model_4/reshape_9/strided_slice/stack�
'model_4/reshape_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_4/reshape_9/strided_slice/stack_1�
'model_4/reshape_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_4/reshape_9/strided_slice/stack_2�
model_4/reshape_9/strided_sliceStridedSlice model_4/reshape_9/Shape:output:0.model_4/reshape_9/strided_slice/stack:output:00model_4/reshape_9/strided_slice/stack_1:output:00model_4/reshape_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model_4/reshape_9/strided_slice�
!model_4/reshape_9/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/reshape_9/Reshape/shape/1�
!model_4/reshape_9/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/reshape_9/Reshape/shape/2�
!model_4/reshape_9/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/reshape_9/Reshape/shape/3�
!model_4/reshape_9/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/reshape_9/Reshape/shape/4�
model_4/reshape_9/Reshape/shapePack(model_4/reshape_9/strided_slice:output:0*model_4/reshape_9/Reshape/shape/1:output:0*model_4/reshape_9/Reshape/shape/2:output:0*model_4/reshape_9/Reshape/shape/3:output:0*model_4/reshape_9/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2!
model_4/reshape_9/Reshape/shape�
model_4/reshape_9/ReshapeReshape&model_4/dense_4/Softplus:activations:0(model_4/reshape_9/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_4/reshape_9/Reshape�
$model_4/tf.reshape_180/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_4/tf.reshape_180/Reshape/shape�
model_4/tf.reshape_180/ReshapeReshape"model_4/reshape_9/Reshape:output:0-model_4/tf.reshape_180/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_4/tf.reshape_180/Reshape�
!model_4/tf.tile_90/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2#
!model_4/tf.tile_90/Tile/multiples�
model_4/tf.tile_90/TileTile'model_4/tf.reshape_180/Reshape:output:0*model_4/tf.tile_90/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_4/tf.tile_90/Tile�
$model_4/tf.reshape_181/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2&
$model_4/tf.reshape_181/Reshape/shape�
model_4/tf.reshape_181/ReshapeReshape model_4/tf.tile_90/Tile:output:0-model_4/tf.reshape_181/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2 
model_4/tf.reshape_181/Reshape�
!model_4/tf.concat_168/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/tf.concat_168/concat/axis�
model_4/tf.concat_168/concatConcatV2'model_4/tf.reshape_181/Reshape:output:0(model_4/conv3d_18/Softplus:activations:0*model_4/tf.concat_168/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_4/tf.concat_168/concat�
'model_4/conv3d_19/Conv3D/ReadVariableOpReadVariableOp0model_4_conv3d_19_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_4/conv3d_19/Conv3D/ReadVariableOp�
model_4/conv3d_19/Conv3DConv3D%model_4/tf.concat_168/concat:output:0/model_4/conv3d_19/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_4/conv3d_19/Conv3D�
(model_4/conv3d_19/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv3d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv3d_19/BiasAdd/ReadVariableOp�
model_4/conv3d_19/BiasAddBiasAdd!model_4/conv3d_19/Conv3D:output:00model_4/conv3d_19/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_4/conv3d_19/BiasAdd�
model_4/conv3d_19/SoftplusSoftplus"model_4/conv3d_19/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_4/conv3d_19/Softplus�
$model_4/tf.reshape_182/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_4/tf.reshape_182/Reshape/shape�
model_4/tf.reshape_182/ReshapeReshape(model_4/conv3d_19/Softplus:activations:0-model_4/tf.reshape_182/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_4/tf.reshape_182/Reshape�
!model_4/tf.tile_91/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2#
!model_4/tf.tile_91/Tile/multiples�
model_4/tf.tile_91/TileTile'model_4/tf.reshape_182/Reshape:output:0*model_4/tf.tile_91/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_4/tf.tile_91/Tile�
$model_4/tf.reshape_183/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2&
$model_4/tf.reshape_183/Reshape/shape�
model_4/tf.reshape_183/ReshapeReshape model_4/tf.tile_91/Tile:output:0-model_4/tf.reshape_183/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2 
model_4/tf.reshape_183/Reshape�
!model_4/tf.concat_169/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/tf.concat_169/concat/axis�
model_4/tf.concat_169/concatConcatV2'model_4/tf.reshape_183/Reshape:output:0(model_4/conv3d_17/Softplus:activations:0*model_4/tf.concat_169/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_4/tf.concat_169/concat�
'model_4/conv3d_20/Conv3D/ReadVariableOpReadVariableOp0model_4_conv3d_20_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_4/conv3d_20/Conv3D/ReadVariableOp�
model_4/conv3d_20/Conv3DConv3D%model_4/tf.concat_169/concat:output:0/model_4/conv3d_20/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_4/conv3d_20/Conv3D�
(model_4/conv3d_20/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv3d_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv3d_20/BiasAdd/ReadVariableOp�
model_4/conv3d_20/BiasAddBiasAdd!model_4/conv3d_20/Conv3D:output:00model_4/conv3d_20/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_4/conv3d_20/BiasAdd�
model_4/conv3d_20/SoftplusSoftplus"model_4/conv3d_20/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_4/conv3d_20/Softplus�
$model_4/tf.reshape_184/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2&
$model_4/tf.reshape_184/Reshape/shape�
model_4/tf.reshape_184/ReshapeReshape(model_4/conv3d_20/Softplus:activations:0-model_4/tf.reshape_184/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2 
model_4/tf.reshape_184/Reshape�
!model_4/tf.tile_92/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2#
!model_4/tf.tile_92/Tile/multiples�
model_4/tf.tile_92/TileTile'model_4/tf.reshape_184/Reshape:output:0*model_4/tf.tile_92/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_4/tf.tile_92/Tile�
$model_4/tf.reshape_185/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2&
$model_4/tf.reshape_185/Reshape/shape�
model_4/tf.reshape_185/ReshapeReshape model_4/tf.tile_92/Tile:output:0-model_4/tf.reshape_185/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2 
model_4/tf.reshape_185/Reshape�
!model_4/tf.concat_170/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_4/tf.concat_170/concat/axis�
model_4/tf.concat_170/concatConcatV2'model_4/tf.reshape_185/Reshape:output:0(model_4/conv3d_16/Softplus:activations:0*model_4/tf.concat_170/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_4/tf.concat_170/concat�
'model_4/conv3d_21/Conv3D/ReadVariableOpReadVariableOp0model_4_conv3d_21_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_4/conv3d_21/Conv3D/ReadVariableOp�
model_4/conv3d_21/Conv3DConv3D%model_4/tf.concat_170/concat:output:0/model_4/conv3d_21/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_4/conv3d_21/Conv3D�
(model_4/conv3d_21/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv3d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv3d_21/BiasAdd/ReadVariableOp�
model_4/conv3d_21/BiasAddBiasAdd!model_4/conv3d_21/Conv3D:output:00model_4/conv3d_21/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_4/conv3d_21/BiasAdd�
model_4/conv3d_21/SoftplusSoftplus"model_4/conv3d_21/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_4/conv3d_21/Softplus�
'model_4/conv3d_22/Conv3D/ReadVariableOpReadVariableOp0model_4_conv3d_22_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02)
'model_4/conv3d_22/Conv3D/ReadVariableOp�
model_4/conv3d_22/Conv3DConv3D(model_4/conv3d_21/Softplus:activations:0/model_4/conv3d_22/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_4/conv3d_22/Conv3D�
(model_4/conv3d_22/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv3d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv3d_22/BiasAdd/ReadVariableOp�
model_4/conv3d_22/BiasAddBiasAdd!model_4/conv3d_22/Conv3D:output:00model_4/conv3d_22/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_4/conv3d_22/BiasAdd�
IdentityIdentity"model_4/conv3d_22/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp)^model_4/conv3d_16/BiasAdd/ReadVariableOp(^model_4/conv3d_16/Conv3D/ReadVariableOp)^model_4/conv3d_17/BiasAdd/ReadVariableOp(^model_4/conv3d_17/Conv3D/ReadVariableOp)^model_4/conv3d_18/BiasAdd/ReadVariableOp(^model_4/conv3d_18/Conv3D/ReadVariableOp)^model_4/conv3d_19/BiasAdd/ReadVariableOp(^model_4/conv3d_19/Conv3D/ReadVariableOp)^model_4/conv3d_20/BiasAdd/ReadVariableOp(^model_4/conv3d_20/Conv3D/ReadVariableOp)^model_4/conv3d_21/BiasAdd/ReadVariableOp(^model_4/conv3d_21/Conv3D/ReadVariableOp)^model_4/conv3d_22/BiasAdd/ReadVariableOp(^model_4/conv3d_22/Conv3D/ReadVariableOp'^model_4/dense_4/BiasAdd/ReadVariableOp&^model_4/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2T
(model_4/conv3d_16/BiasAdd/ReadVariableOp(model_4/conv3d_16/BiasAdd/ReadVariableOp2R
'model_4/conv3d_16/Conv3D/ReadVariableOp'model_4/conv3d_16/Conv3D/ReadVariableOp2T
(model_4/conv3d_17/BiasAdd/ReadVariableOp(model_4/conv3d_17/BiasAdd/ReadVariableOp2R
'model_4/conv3d_17/Conv3D/ReadVariableOp'model_4/conv3d_17/Conv3D/ReadVariableOp2T
(model_4/conv3d_18/BiasAdd/ReadVariableOp(model_4/conv3d_18/BiasAdd/ReadVariableOp2R
'model_4/conv3d_18/Conv3D/ReadVariableOp'model_4/conv3d_18/Conv3D/ReadVariableOp2T
(model_4/conv3d_19/BiasAdd/ReadVariableOp(model_4/conv3d_19/BiasAdd/ReadVariableOp2R
'model_4/conv3d_19/Conv3D/ReadVariableOp'model_4/conv3d_19/Conv3D/ReadVariableOp2T
(model_4/conv3d_20/BiasAdd/ReadVariableOp(model_4/conv3d_20/BiasAdd/ReadVariableOp2R
'model_4/conv3d_20/Conv3D/ReadVariableOp'model_4/conv3d_20/Conv3D/ReadVariableOp2T
(model_4/conv3d_21/BiasAdd/ReadVariableOp(model_4/conv3d_21/BiasAdd/ReadVariableOp2R
'model_4/conv3d_21/Conv3D/ReadVariableOp'model_4/conv3d_21/Conv3D/ReadVariableOp2T
(model_4/conv3d_22/BiasAdd/ReadVariableOp(model_4/conv3d_22/BiasAdd/ReadVariableOp2R
'model_4/conv3d_22/Conv3D/ReadVariableOp'model_4/conv3d_22/Conv3D/ReadVariableOp2P
&model_4/dense_4/BiasAdd/ReadVariableOp&model_4/dense_4/BiasAdd/ReadVariableOp2N
%model_4/dense_4/MatMul/ReadVariableOp%model_4/dense_4/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
)__inference_model_4_layer_call_fn_1967437	
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_19673652
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
�
F__inference_conv3d_21_layer_call_and_return_conditional_losses_1968266

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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_1966938

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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_1966884

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

l
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1968140

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
Q
5__inference_average_pooling3d_8_layer_call_fn_1968131

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_19669522
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
+__inference_conv3d_21_layer_call_fn_1968255

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
F__inference_conv3d_21_layer_call_and_return_conditional_losses_19670712
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
�,
�
 __inference__traced_save_1968356
file_prefix/
+savev2_conv3d_16_kernel_read_readvariableop-
)savev2_conv3d_16_bias_read_readvariableop/
+savev2_conv3d_17_kernel_read_readvariableop-
)savev2_conv3d_17_bias_read_readvariableop/
+savev2_conv3d_18_kernel_read_readvariableop-
)savev2_conv3d_18_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop/
+savev2_conv3d_19_kernel_read_readvariableop-
)savev2_conv3d_19_bias_read_readvariableop/
+savev2_conv3d_20_kernel_read_readvariableop-
)savev2_conv3d_20_bias_read_readvariableop/
+savev2_conv3d_21_kernel_read_readvariableop-
)savev2_conv3d_21_bias_read_readvariableop/
+savev2_conv3d_22_kernel_read_readvariableop-
)savev2_conv3d_22_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_16_kernel_read_readvariableop)savev2_conv3d_16_bias_read_readvariableop+savev2_conv3d_17_kernel_read_readvariableop)savev2_conv3d_17_bias_read_readvariableop+savev2_conv3d_18_kernel_read_readvariableop)savev2_conv3d_18_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop+savev2_conv3d_19_kernel_read_readvariableop)savev2_conv3d_19_bias_read_readvariableop+savev2_conv3d_20_kernel_read_readvariableop)savev2_conv3d_20_bias_read_readvariableop+savev2_conv3d_21_kernel_read_readvariableop)savev2_conv3d_21_bias_read_readvariableop+savev2_conv3d_22_kernel_read_readvariableop)savev2_conv3d_22_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1968053

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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_1966911

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
l
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1968101

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
F__inference_conv3d_22_layer_call_and_return_conditional_losses_1968285

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
%__inference_signature_wrapper_1967644	
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
"__inference__wrapped_model_19667522
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
�
T
4__inference_range_conversion_4_layer_call_fn_1967993

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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_19668652
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
b
F__inference_reshape_8_layer_call_and_return_conditional_losses_1966966

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
�G
�

#__inference__traced_restore_1968414
file_prefix?
!assignvariableop_conv3d_16_kernel:/
!assignvariableop_1_conv3d_16_bias:A
#assignvariableop_2_conv3d_17_kernel:/
!assignvariableop_3_conv3d_17_bias:A
#assignvariableop_4_conv3d_18_kernel:/
!assignvariableop_5_conv3d_18_bias:3
!assignvariableop_6_dense_4_kernel:@@-
assignvariableop_7_dense_4_bias:@A
#assignvariableop_8_conv3d_19_kernel:/
!assignvariableop_9_conv3d_19_bias:B
$assignvariableop_10_conv3d_20_kernel:0
"assignvariableop_11_conv3d_20_bias:B
$assignvariableop_12_conv3d_21_kernel:0
"assignvariableop_13_conv3d_21_bias:B
$assignvariableop_14_conv3d_22_kernel:0
"assignvariableop_15_conv3d_22_bias:
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
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_16_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_16_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_17_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_17_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_18_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_18_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_19_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_19_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_20_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_20_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv3d_21_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv3d_21_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv3d_22_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv3d_22_biasIdentity_15:output:0"/device:CPU:0*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_1967021

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
D__inference_model_4_layer_call_and_return_conditional_losses_1967094

inputs/
conv3d_16_1966885:
conv3d_16_1966887:/
conv3d_17_1966912:
conv3d_17_1966914:/
conv3d_18_1966939:
conv3d_18_1966941:!
dense_4_1966980:@@
dense_4_1966982:@/
conv3d_19_1967022:
conv3d_19_1967024:/
conv3d_20_1967047:
conv3d_20_1967049:/
conv3d_21_1967072:
conv3d_21_1967074:/
conv3d_22_1967088:
conv3d_22_1967090:
identity��!conv3d_16/StatefulPartitionedCall�!conv3d_17/StatefulPartitionedCall�!conv3d_18/StatefulPartitionedCall�!conv3d_19/StatefulPartitionedCall�!conv3d_20/StatefulPartitionedCall�!conv3d_21/StatefulPartitionedCall�!conv3d_22/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
0tf.__operators__.getitem_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_154/strided_slice/stack�
2tf.__operators__.getitem_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_154/strided_slice/stack_1�
2tf.__operators__.getitem_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_154/strided_slice/stack_2�
*tf.__operators__.getitem_154/strided_sliceStridedSliceinputs9tf.__operators__.getitem_154/strided_slice/stack:output:0;tf.__operators__.getitem_154/strided_slice/stack_1:output:0;tf.__operators__.getitem_154/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_154/strided_slice�
"range_conversion_4/PartitionedCallPartitionedCall3tf.__operators__.getitem_154/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_19668652$
"range_conversion_4/PartitionedCall�
0tf.__operators__.getitem_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_155/strided_slice/stack�
2tf.__operators__.getitem_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_155/strided_slice/stack_1�
2tf.__operators__.getitem_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_155/strided_slice/stack_2�
*tf.__operators__.getitem_155/strided_sliceStridedSliceinputs9tf.__operators__.getitem_155/strided_slice/stack:output:0;tf.__operators__.getitem_155/strided_slice/stack_1:output:0;tf.__operators__.getitem_155/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_155/strided_slicex
tf.concat_167/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_167/concat/axis�
tf.concat_167/concatConcatV2+range_conversion_4/PartitionedCall:output:03tf.__operators__.getitem_155/strided_slice:output:0"tf.concat_167/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_167/concat�
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCalltf.concat_167/concat:output:0conv3d_16_1966885conv3d_16_1966887*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_19668842#
!conv3d_16/StatefulPartitionedCall�
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_19668982%
#average_pooling3d_6/PartitionedCall�
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_6/PartitionedCall:output:0conv3d_17_1966912conv3d_17_1966914*
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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_19669112#
!conv3d_17/StatefulPartitionedCall�
#average_pooling3d_7/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_19669252%
#average_pooling3d_7/PartitionedCall�
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_7/PartitionedCall:output:0conv3d_18_1966939conv3d_18_1966941*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_19669382#
!conv3d_18/StatefulPartitionedCall�
#average_pooling3d_8/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_19669522%
#average_pooling3d_8/PartitionedCall�
reshape_8/PartitionedCallPartitionedCall,average_pooling3d_8/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_8_layer_call_and_return_conditional_losses_19669662
reshape_8/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_8/PartitionedCall:output:0dense_4_1966980dense_4_1966982*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_19669792!
dense_4/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_9_layer_call_and_return_conditional_losses_19670002
reshape_9/PartitionedCall�
tf.reshape_180/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_180/Reshape/shape�
tf.reshape_180/ReshapeReshape"reshape_9/PartitionedCall:output:0%tf.reshape_180/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_180/Reshape�
tf.tile_90/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_90/Tile/multiples�
tf.tile_90/TileTiletf.reshape_180/Reshape:output:0"tf.tile_90/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_90/Tile�
tf.reshape_181/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_181/Reshape/shape�
tf.reshape_181/ReshapeReshapetf.tile_90/Tile:output:0%tf.reshape_181/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_181/Reshapex
tf.concat_168/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_168/concat/axis�
tf.concat_168/concatConcatV2tf.reshape_181/Reshape:output:0*conv3d_18/StatefulPartitionedCall:output:0"tf.concat_168/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_168/concat�
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCalltf.concat_168/concat:output:0conv3d_19_1967022conv3d_19_1967024*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_19670212#
!conv3d_19/StatefulPartitionedCall�
tf.reshape_182/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_182/Reshape/shape�
tf.reshape_182/ReshapeReshape*conv3d_19/StatefulPartitionedCall:output:0%tf.reshape_182/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_182/Reshape�
tf.tile_91/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_91/Tile/multiples�
tf.tile_91/TileTiletf.reshape_182/Reshape:output:0"tf.tile_91/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_91/Tile�
tf.reshape_183/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_183/Reshape/shape�
tf.reshape_183/ReshapeReshapetf.tile_91/Tile:output:0%tf.reshape_183/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_183/Reshapex
tf.concat_169/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_169/concat/axis�
tf.concat_169/concatConcatV2tf.reshape_183/Reshape:output:0*conv3d_17/StatefulPartitionedCall:output:0"tf.concat_169/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_169/concat�
!conv3d_20/StatefulPartitionedCallStatefulPartitionedCalltf.concat_169/concat:output:0conv3d_20_1967047conv3d_20_1967049*
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
F__inference_conv3d_20_layer_call_and_return_conditional_losses_19670462#
!conv3d_20/StatefulPartitionedCall�
tf.reshape_184/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_184/Reshape/shape�
tf.reshape_184/ReshapeReshape*conv3d_20/StatefulPartitionedCall:output:0%tf.reshape_184/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_184/Reshape�
tf.tile_92/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_92/Tile/multiples�
tf.tile_92/TileTiletf.reshape_184/Reshape:output:0"tf.tile_92/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_92/Tile�
tf.reshape_185/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_185/Reshape/shape�
tf.reshape_185/ReshapeReshapetf.tile_92/Tile:output:0%tf.reshape_185/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_185/Reshapex
tf.concat_170/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_170/concat/axis�
tf.concat_170/concatConcatV2tf.reshape_185/Reshape:output:0*conv3d_16/StatefulPartitionedCall:output:0"tf.concat_170/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_170/concat�
!conv3d_21/StatefulPartitionedCallStatefulPartitionedCalltf.concat_170/concat:output:0conv3d_21_1967072conv3d_21_1967074*
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
F__inference_conv3d_21_layer_call_and_return_conditional_losses_19670712#
!conv3d_21/StatefulPartitionedCall�
!conv3d_22/StatefulPartitionedCallStatefulPartitionedCall*conv3d_21/StatefulPartitionedCall:output:0conv3d_22_1967088conv3d_22_1967090*
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
F__inference_conv3d_22_layer_call_and_return_conditional_losses_19670872#
!conv3d_22/StatefulPartitionedCall�
IdentityIdentity*conv3d_22/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall"^conv3d_20/StatefulPartitionedCall"^conv3d_21/StatefulPartitionedCall"^conv3d_22/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2F
!conv3d_20/StatefulPartitionedCall!conv3d_20/StatefulPartitionedCall2F
!conv3d_21/StatefulPartitionedCall!conv3d_21/StatefulPartitionedCall2F
!conv3d_22/StatefulPartitionedCall!conv3d_22/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�	
l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1966898

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
�w
�
D__inference_model_4_layer_call_and_return_conditional_losses_1967521	
input/
conv3d_16_1967451:
conv3d_16_1967453:/
conv3d_17_1967457:
conv3d_17_1967459:/
conv3d_18_1967463:
conv3d_18_1967465:!
dense_4_1967470:@@
dense_4_1967472:@/
conv3d_19_1967484:
conv3d_19_1967486:/
conv3d_20_1967497:
conv3d_20_1967499:/
conv3d_21_1967510:
conv3d_21_1967512:/
conv3d_22_1967515:
conv3d_22_1967517:
identity��!conv3d_16/StatefulPartitionedCall�!conv3d_17/StatefulPartitionedCall�!conv3d_18/StatefulPartitionedCall�!conv3d_19/StatefulPartitionedCall�!conv3d_20/StatefulPartitionedCall�!conv3d_21/StatefulPartitionedCall�!conv3d_22/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
0tf.__operators__.getitem_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_154/strided_slice/stack�
2tf.__operators__.getitem_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_154/strided_slice/stack_1�
2tf.__operators__.getitem_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_154/strided_slice/stack_2�
*tf.__operators__.getitem_154/strided_sliceStridedSliceinput9tf.__operators__.getitem_154/strided_slice/stack:output:0;tf.__operators__.getitem_154/strided_slice/stack_1:output:0;tf.__operators__.getitem_154/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_154/strided_slice�
"range_conversion_4/PartitionedCallPartitionedCall3tf.__operators__.getitem_154/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_19668652$
"range_conversion_4/PartitionedCall�
0tf.__operators__.getitem_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_155/strided_slice/stack�
2tf.__operators__.getitem_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_155/strided_slice/stack_1�
2tf.__operators__.getitem_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_155/strided_slice/stack_2�
*tf.__operators__.getitem_155/strided_sliceStridedSliceinput9tf.__operators__.getitem_155/strided_slice/stack:output:0;tf.__operators__.getitem_155/strided_slice/stack_1:output:0;tf.__operators__.getitem_155/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_155/strided_slicex
tf.concat_167/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_167/concat/axis�
tf.concat_167/concatConcatV2+range_conversion_4/PartitionedCall:output:03tf.__operators__.getitem_155/strided_slice:output:0"tf.concat_167/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_167/concat�
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCalltf.concat_167/concat:output:0conv3d_16_1967451conv3d_16_1967453*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_19668842#
!conv3d_16/StatefulPartitionedCall�
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_19668982%
#average_pooling3d_6/PartitionedCall�
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_6/PartitionedCall:output:0conv3d_17_1967457conv3d_17_1967459*
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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_19669112#
!conv3d_17/StatefulPartitionedCall�
#average_pooling3d_7/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_19669252%
#average_pooling3d_7/PartitionedCall�
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_7/PartitionedCall:output:0conv3d_18_1967463conv3d_18_1967465*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_19669382#
!conv3d_18/StatefulPartitionedCall�
#average_pooling3d_8/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_19669522%
#average_pooling3d_8/PartitionedCall�
reshape_8/PartitionedCallPartitionedCall,average_pooling3d_8/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_8_layer_call_and_return_conditional_losses_19669662
reshape_8/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_8/PartitionedCall:output:0dense_4_1967470dense_4_1967472*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_19669792!
dense_4/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_9_layer_call_and_return_conditional_losses_19670002
reshape_9/PartitionedCall�
tf.reshape_180/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_180/Reshape/shape�
tf.reshape_180/ReshapeReshape"reshape_9/PartitionedCall:output:0%tf.reshape_180/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_180/Reshape�
tf.tile_90/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_90/Tile/multiples�
tf.tile_90/TileTiletf.reshape_180/Reshape:output:0"tf.tile_90/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_90/Tile�
tf.reshape_181/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_181/Reshape/shape�
tf.reshape_181/ReshapeReshapetf.tile_90/Tile:output:0%tf.reshape_181/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_181/Reshapex
tf.concat_168/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_168/concat/axis�
tf.concat_168/concatConcatV2tf.reshape_181/Reshape:output:0*conv3d_18/StatefulPartitionedCall:output:0"tf.concat_168/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_168/concat�
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCalltf.concat_168/concat:output:0conv3d_19_1967484conv3d_19_1967486*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_19670212#
!conv3d_19/StatefulPartitionedCall�
tf.reshape_182/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_182/Reshape/shape�
tf.reshape_182/ReshapeReshape*conv3d_19/StatefulPartitionedCall:output:0%tf.reshape_182/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_182/Reshape�
tf.tile_91/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_91/Tile/multiples�
tf.tile_91/TileTiletf.reshape_182/Reshape:output:0"tf.tile_91/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_91/Tile�
tf.reshape_183/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_183/Reshape/shape�
tf.reshape_183/ReshapeReshapetf.tile_91/Tile:output:0%tf.reshape_183/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_183/Reshapex
tf.concat_169/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_169/concat/axis�
tf.concat_169/concatConcatV2tf.reshape_183/Reshape:output:0*conv3d_17/StatefulPartitionedCall:output:0"tf.concat_169/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_169/concat�
!conv3d_20/StatefulPartitionedCallStatefulPartitionedCalltf.concat_169/concat:output:0conv3d_20_1967497conv3d_20_1967499*
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
F__inference_conv3d_20_layer_call_and_return_conditional_losses_19670462#
!conv3d_20/StatefulPartitionedCall�
tf.reshape_184/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_184/Reshape/shape�
tf.reshape_184/ReshapeReshape*conv3d_20/StatefulPartitionedCall:output:0%tf.reshape_184/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_184/Reshape�
tf.tile_92/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_92/Tile/multiples�
tf.tile_92/TileTiletf.reshape_184/Reshape:output:0"tf.tile_92/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_92/Tile�
tf.reshape_185/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_185/Reshape/shape�
tf.reshape_185/ReshapeReshapetf.tile_92/Tile:output:0%tf.reshape_185/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_185/Reshapex
tf.concat_170/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_170/concat/axis�
tf.concat_170/concatConcatV2tf.reshape_185/Reshape:output:0*conv3d_16/StatefulPartitionedCall:output:0"tf.concat_170/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_170/concat�
!conv3d_21/StatefulPartitionedCallStatefulPartitionedCalltf.concat_170/concat:output:0conv3d_21_1967510conv3d_21_1967512*
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
F__inference_conv3d_21_layer_call_and_return_conditional_losses_19670712#
!conv3d_21/StatefulPartitionedCall�
!conv3d_22/StatefulPartitionedCallStatefulPartitionedCall*conv3d_21/StatefulPartitionedCall:output:0conv3d_22_1967515conv3d_22_1967517*
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
F__inference_conv3d_22_layer_call_and_return_conditional_losses_19670872#
!conv3d_22/StatefulPartitionedCall�
IdentityIdentity*conv3d_22/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall"^conv3d_20/StatefulPartitionedCall"^conv3d_21/StatefulPartitionedCall"^conv3d_22/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2F
!conv3d_20/StatefulPartitionedCall!conv3d_20/StatefulPartitionedCall2F
!conv3d_21/StatefulPartitionedCall!conv3d_21/StatefulPartitionedCall2F
!conv3d_22/StatefulPartitionedCall!conv3d_22/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�w
�
D__inference_model_4_layer_call_and_return_conditional_losses_1967605	
input/
conv3d_16_1967535:
conv3d_16_1967537:/
conv3d_17_1967541:
conv3d_17_1967543:/
conv3d_18_1967547:
conv3d_18_1967549:!
dense_4_1967554:@@
dense_4_1967556:@/
conv3d_19_1967568:
conv3d_19_1967570:/
conv3d_20_1967581:
conv3d_20_1967583:/
conv3d_21_1967594:
conv3d_21_1967596:/
conv3d_22_1967599:
conv3d_22_1967601:
identity��!conv3d_16/StatefulPartitionedCall�!conv3d_17/StatefulPartitionedCall�!conv3d_18/StatefulPartitionedCall�!conv3d_19/StatefulPartitionedCall�!conv3d_20/StatefulPartitionedCall�!conv3d_21/StatefulPartitionedCall�!conv3d_22/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
0tf.__operators__.getitem_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_154/strided_slice/stack�
2tf.__operators__.getitem_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_154/strided_slice/stack_1�
2tf.__operators__.getitem_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_154/strided_slice/stack_2�
*tf.__operators__.getitem_154/strided_sliceStridedSliceinput9tf.__operators__.getitem_154/strided_slice/stack:output:0;tf.__operators__.getitem_154/strided_slice/stack_1:output:0;tf.__operators__.getitem_154/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_154/strided_slice�
"range_conversion_4/PartitionedCallPartitionedCall3tf.__operators__.getitem_154/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_19668652$
"range_conversion_4/PartitionedCall�
0tf.__operators__.getitem_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_155/strided_slice/stack�
2tf.__operators__.getitem_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_155/strided_slice/stack_1�
2tf.__operators__.getitem_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_155/strided_slice/stack_2�
*tf.__operators__.getitem_155/strided_sliceStridedSliceinput9tf.__operators__.getitem_155/strided_slice/stack:output:0;tf.__operators__.getitem_155/strided_slice/stack_1:output:0;tf.__operators__.getitem_155/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_155/strided_slicex
tf.concat_167/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_167/concat/axis�
tf.concat_167/concatConcatV2+range_conversion_4/PartitionedCall:output:03tf.__operators__.getitem_155/strided_slice:output:0"tf.concat_167/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_167/concat�
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCalltf.concat_167/concat:output:0conv3d_16_1967535conv3d_16_1967537*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_19668842#
!conv3d_16/StatefulPartitionedCall�
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_19668982%
#average_pooling3d_6/PartitionedCall�
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_6/PartitionedCall:output:0conv3d_17_1967541conv3d_17_1967543*
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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_19669112#
!conv3d_17/StatefulPartitionedCall�
#average_pooling3d_7/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_19669252%
#average_pooling3d_7/PartitionedCall�
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_7/PartitionedCall:output:0conv3d_18_1967547conv3d_18_1967549*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_19669382#
!conv3d_18/StatefulPartitionedCall�
#average_pooling3d_8/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_19669522%
#average_pooling3d_8/PartitionedCall�
reshape_8/PartitionedCallPartitionedCall,average_pooling3d_8/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_8_layer_call_and_return_conditional_losses_19669662
reshape_8/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_8/PartitionedCall:output:0dense_4_1967554dense_4_1967556*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_19669792!
dense_4/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_9_layer_call_and_return_conditional_losses_19670002
reshape_9/PartitionedCall�
tf.reshape_180/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_180/Reshape/shape�
tf.reshape_180/ReshapeReshape"reshape_9/PartitionedCall:output:0%tf.reshape_180/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_180/Reshape�
tf.tile_90/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_90/Tile/multiples�
tf.tile_90/TileTiletf.reshape_180/Reshape:output:0"tf.tile_90/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_90/Tile�
tf.reshape_181/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_181/Reshape/shape�
tf.reshape_181/ReshapeReshapetf.tile_90/Tile:output:0%tf.reshape_181/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_181/Reshapex
tf.concat_168/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_168/concat/axis�
tf.concat_168/concatConcatV2tf.reshape_181/Reshape:output:0*conv3d_18/StatefulPartitionedCall:output:0"tf.concat_168/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_168/concat�
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCalltf.concat_168/concat:output:0conv3d_19_1967568conv3d_19_1967570*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_19670212#
!conv3d_19/StatefulPartitionedCall�
tf.reshape_182/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_182/Reshape/shape�
tf.reshape_182/ReshapeReshape*conv3d_19/StatefulPartitionedCall:output:0%tf.reshape_182/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_182/Reshape�
tf.tile_91/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_91/Tile/multiples�
tf.tile_91/TileTiletf.reshape_182/Reshape:output:0"tf.tile_91/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_91/Tile�
tf.reshape_183/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_183/Reshape/shape�
tf.reshape_183/ReshapeReshapetf.tile_91/Tile:output:0%tf.reshape_183/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_183/Reshapex
tf.concat_169/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_169/concat/axis�
tf.concat_169/concatConcatV2tf.reshape_183/Reshape:output:0*conv3d_17/StatefulPartitionedCall:output:0"tf.concat_169/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_169/concat�
!conv3d_20/StatefulPartitionedCallStatefulPartitionedCalltf.concat_169/concat:output:0conv3d_20_1967581conv3d_20_1967583*
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
F__inference_conv3d_20_layer_call_and_return_conditional_losses_19670462#
!conv3d_20/StatefulPartitionedCall�
tf.reshape_184/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_184/Reshape/shape�
tf.reshape_184/ReshapeReshape*conv3d_20/StatefulPartitionedCall:output:0%tf.reshape_184/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_184/Reshape�
tf.tile_92/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_92/Tile/multiples�
tf.tile_92/TileTiletf.reshape_184/Reshape:output:0"tf.tile_92/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_92/Tile�
tf.reshape_185/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_185/Reshape/shape�
tf.reshape_185/ReshapeReshapetf.tile_92/Tile:output:0%tf.reshape_185/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_185/Reshapex
tf.concat_170/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_170/concat/axis�
tf.concat_170/concatConcatV2tf.reshape_185/Reshape:output:0*conv3d_16/StatefulPartitionedCall:output:0"tf.concat_170/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_170/concat�
!conv3d_21/StatefulPartitionedCallStatefulPartitionedCalltf.concat_170/concat:output:0conv3d_21_1967594conv3d_21_1967596*
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
F__inference_conv3d_21_layer_call_and_return_conditional_losses_19670712#
!conv3d_21/StatefulPartitionedCall�
!conv3d_22/StatefulPartitionedCallStatefulPartitionedCall*conv3d_21/StatefulPartitionedCall:output:0conv3d_22_1967599conv3d_22_1967601*
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
F__inference_conv3d_22_layer_call_and_return_conditional_losses_19670872#
!conv3d_22/StatefulPartitionedCall�
IdentityIdentity*conv3d_22/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall"^conv3d_20/StatefulPartitionedCall"^conv3d_21/StatefulPartitionedCall"^conv3d_22/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2F
!conv3d_20/StatefulPartitionedCall!conv3d_20/StatefulPartitionedCall2F
!conv3d_21/StatefulPartitionedCall!conv3d_21/StatefulPartitionedCall2F
!conv3d_22/StatefulPartitionedCall!conv3d_22/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�

l
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1966765

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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_1968226

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
D__inference_model_4_layer_call_and_return_conditional_losses_1967365

inputs/
conv3d_16_1967295:
conv3d_16_1967297:/
conv3d_17_1967301:
conv3d_17_1967303:/
conv3d_18_1967307:
conv3d_18_1967309:!
dense_4_1967314:@@
dense_4_1967316:@/
conv3d_19_1967328:
conv3d_19_1967330:/
conv3d_20_1967341:
conv3d_20_1967343:/
conv3d_21_1967354:
conv3d_21_1967356:/
conv3d_22_1967359:
conv3d_22_1967361:
identity��!conv3d_16/StatefulPartitionedCall�!conv3d_17/StatefulPartitionedCall�!conv3d_18/StatefulPartitionedCall�!conv3d_19/StatefulPartitionedCall�!conv3d_20/StatefulPartitionedCall�!conv3d_21/StatefulPartitionedCall�!conv3d_22/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
0tf.__operators__.getitem_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_154/strided_slice/stack�
2tf.__operators__.getitem_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_154/strided_slice/stack_1�
2tf.__operators__.getitem_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_154/strided_slice/stack_2�
*tf.__operators__.getitem_154/strided_sliceStridedSliceinputs9tf.__operators__.getitem_154/strided_slice/stack:output:0;tf.__operators__.getitem_154/strided_slice/stack_1:output:0;tf.__operators__.getitem_154/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_154/strided_slice�
"range_conversion_4/PartitionedCallPartitionedCall3tf.__operators__.getitem_154/strided_slice:output:0*
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
GPU2 *0,1,2,3J 8� *X
fSRQ
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_19668652$
"range_conversion_4/PartitionedCall�
0tf.__operators__.getitem_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_155/strided_slice/stack�
2tf.__operators__.getitem_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_155/strided_slice/stack_1�
2tf.__operators__.getitem_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_155/strided_slice/stack_2�
*tf.__operators__.getitem_155/strided_sliceStridedSliceinputs9tf.__operators__.getitem_155/strided_slice/stack:output:0;tf.__operators__.getitem_155/strided_slice/stack_1:output:0;tf.__operators__.getitem_155/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_155/strided_slicex
tf.concat_167/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_167/concat/axis�
tf.concat_167/concatConcatV2+range_conversion_4/PartitionedCall:output:03tf.__operators__.getitem_155/strided_slice:output:0"tf.concat_167/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_167/concat�
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCalltf.concat_167/concat:output:0conv3d_16_1967295conv3d_16_1967297*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_19668842#
!conv3d_16/StatefulPartitionedCall�
#average_pooling3d_6/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_19668982%
#average_pooling3d_6/PartitionedCall�
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_6/PartitionedCall:output:0conv3d_17_1967301conv3d_17_1967303*
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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_19669112#
!conv3d_17/StatefulPartitionedCall�
#average_pooling3d_7/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_19669252%
#average_pooling3d_7/PartitionedCall�
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall,average_pooling3d_7/PartitionedCall:output:0conv3d_18_1967307conv3d_18_1967309*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_19669382#
!conv3d_18/StatefulPartitionedCall�
#average_pooling3d_8/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_19669522%
#average_pooling3d_8/PartitionedCall�
reshape_8/PartitionedCallPartitionedCall,average_pooling3d_8/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_8_layer_call_and_return_conditional_losses_19669662
reshape_8/PartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"reshape_8/PartitionedCall:output:0dense_4_1967314dense_4_1967316*
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_19669792!
dense_4/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_9_layer_call_and_return_conditional_losses_19670002
reshape_9/PartitionedCall�
tf.reshape_180/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_180/Reshape/shape�
tf.reshape_180/ReshapeReshape"reshape_9/PartitionedCall:output:0%tf.reshape_180/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_180/Reshape�
tf.tile_90/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_90/Tile/multiples�
tf.tile_90/TileTiletf.reshape_180/Reshape:output:0"tf.tile_90/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_90/Tile�
tf.reshape_181/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_181/Reshape/shape�
tf.reshape_181/ReshapeReshapetf.tile_90/Tile:output:0%tf.reshape_181/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_181/Reshapex
tf.concat_168/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_168/concat/axis�
tf.concat_168/concatConcatV2tf.reshape_181/Reshape:output:0*conv3d_18/StatefulPartitionedCall:output:0"tf.concat_168/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_168/concat�
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCalltf.concat_168/concat:output:0conv3d_19_1967328conv3d_19_1967330*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_19670212#
!conv3d_19/StatefulPartitionedCall�
tf.reshape_182/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_182/Reshape/shape�
tf.reshape_182/ReshapeReshape*conv3d_19/StatefulPartitionedCall:output:0%tf.reshape_182/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_182/Reshape�
tf.tile_91/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_91/Tile/multiples�
tf.tile_91/TileTiletf.reshape_182/Reshape:output:0"tf.tile_91/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_91/Tile�
tf.reshape_183/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_183/Reshape/shape�
tf.reshape_183/ReshapeReshapetf.tile_91/Tile:output:0%tf.reshape_183/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_183/Reshapex
tf.concat_169/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_169/concat/axis�
tf.concat_169/concatConcatV2tf.reshape_183/Reshape:output:0*conv3d_17/StatefulPartitionedCall:output:0"tf.concat_169/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_169/concat�
!conv3d_20/StatefulPartitionedCallStatefulPartitionedCalltf.concat_169/concat:output:0conv3d_20_1967341conv3d_20_1967343*
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
F__inference_conv3d_20_layer_call_and_return_conditional_losses_19670462#
!conv3d_20/StatefulPartitionedCall�
tf.reshape_184/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_184/Reshape/shape�
tf.reshape_184/ReshapeReshape*conv3d_20/StatefulPartitionedCall:output:0%tf.reshape_184/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_184/Reshape�
tf.tile_92/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_92/Tile/multiples�
tf.tile_92/TileTiletf.reshape_184/Reshape:output:0"tf.tile_92/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_92/Tile�
tf.reshape_185/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_185/Reshape/shape�
tf.reshape_185/ReshapeReshapetf.tile_92/Tile:output:0%tf.reshape_185/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_185/Reshapex
tf.concat_170/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_170/concat/axis�
tf.concat_170/concatConcatV2tf.reshape_185/Reshape:output:0*conv3d_16/StatefulPartitionedCall:output:0"tf.concat_170/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_170/concat�
!conv3d_21/StatefulPartitionedCallStatefulPartitionedCalltf.concat_170/concat:output:0conv3d_21_1967354conv3d_21_1967356*
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
F__inference_conv3d_21_layer_call_and_return_conditional_losses_19670712#
!conv3d_21/StatefulPartitionedCall�
!conv3d_22/StatefulPartitionedCallStatefulPartitionedCall*conv3d_21/StatefulPartitionedCall:output:0conv3d_22_1967359conv3d_22_1967361*
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
F__inference_conv3d_22_layer_call_and_return_conditional_losses_19670872#
!conv3d_22/StatefulPartitionedCall�
IdentityIdentity*conv3d_22/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall"^conv3d_20/StatefulPartitionedCall"^conv3d_21/StatefulPartitionedCall"^conv3d_22/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2F
!conv3d_20/StatefulPartitionedCall!conv3d_20/StatefulPartitionedCall2F
!conv3d_21/StatefulPartitionedCall!conv3d_21/StatefulPartitionedCall2F
!conv3d_22/StatefulPartitionedCall!conv3d_22/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
F__inference_conv3d_22_layer_call_and_return_conditional_losses_1967087

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
�
�
)__inference_dense_4_layer_call_fn_1968175

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_19669792
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
�
�
+__inference_conv3d_16_layer_call_fn_1968014

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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_19668842
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
l
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1966952

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

l
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1968092

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

l
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1966825

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
�
)__inference_model_4_layer_call_fn_1967129	
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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_19670942
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
+__inference_conv3d_17_layer_call_fn_1968062

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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_19669112
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
o
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_1968005

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
�
b
F__inference_reshape_9_layer_call_and_return_conditional_losses_1967000

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
D__inference_dense_4_layer_call_and_return_conditional_losses_1966979

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
�
�
+__inference_conv3d_19_layer_call_fn_1968215

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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_19670212
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
�
F__inference_conv3d_18_layer_call_and_return_conditional_losses_1968121

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
��
�
D__inference_model_4_layer_call_and_return_conditional_losses_1967988

inputsF
(conv3d_16_conv3d_readvariableop_resource:7
)conv3d_16_biasadd_readvariableop_resource:F
(conv3d_17_conv3d_readvariableop_resource:7
)conv3d_17_biasadd_readvariableop_resource:F
(conv3d_18_conv3d_readvariableop_resource:7
)conv3d_18_biasadd_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:@@5
'dense_4_biasadd_readvariableop_resource:@F
(conv3d_19_conv3d_readvariableop_resource:7
)conv3d_19_biasadd_readvariableop_resource:F
(conv3d_20_conv3d_readvariableop_resource:7
)conv3d_20_biasadd_readvariableop_resource:F
(conv3d_21_conv3d_readvariableop_resource:7
)conv3d_21_biasadd_readvariableop_resource:F
(conv3d_22_conv3d_readvariableop_resource:7
)conv3d_22_biasadd_readvariableop_resource:
identity�� conv3d_16/BiasAdd/ReadVariableOp�conv3d_16/Conv3D/ReadVariableOp� conv3d_17/BiasAdd/ReadVariableOp�conv3d_17/Conv3D/ReadVariableOp� conv3d_18/BiasAdd/ReadVariableOp�conv3d_18/Conv3D/ReadVariableOp� conv3d_19/BiasAdd/ReadVariableOp�conv3d_19/Conv3D/ReadVariableOp� conv3d_20/BiasAdd/ReadVariableOp�conv3d_20/Conv3D/ReadVariableOp� conv3d_21/BiasAdd/ReadVariableOp�conv3d_21/Conv3D/ReadVariableOp� conv3d_22/BiasAdd/ReadVariableOp�conv3d_22/Conv3D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�
0tf.__operators__.getitem_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_154/strided_slice/stack�
2tf.__operators__.getitem_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_154/strided_slice/stack_1�
2tf.__operators__.getitem_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_154/strided_slice/stack_2�
*tf.__operators__.getitem_154/strided_sliceStridedSliceinputs9tf.__operators__.getitem_154/strided_slice/stack:output:0;tf.__operators__.getitem_154/strided_slice/stack_1:output:0;tf.__operators__.getitem_154/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_154/strided_slicey
range_conversion_4/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_4/sub/y�
range_conversion_4/subSub3tf.__operators__.getitem_154/strided_slice:output:0!range_conversion_4/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/sub�
range_conversion_4/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_4/truediv/y�
range_conversion_4/truedivRealDivrange_conversion_4/sub:z:0%range_conversion_4/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/truedivy
range_conversion_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_4/mul/y�
range_conversion_4/mulMulrange_conversion_4/truediv:z:0!range_conversion_4/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/muly
range_conversion_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_4/add/y�
range_conversion_4/addAddV2range_conversion_4/mul:z:0!range_conversion_4/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/add�
0tf.__operators__.getitem_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_155/strided_slice/stack�
2tf.__operators__.getitem_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_155/strided_slice/stack_1�
2tf.__operators__.getitem_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_155/strided_slice/stack_2�
*tf.__operators__.getitem_155/strided_sliceStridedSliceinputs9tf.__operators__.getitem_155/strided_slice/stack:output:0;tf.__operators__.getitem_155/strided_slice/stack_1:output:0;tf.__operators__.getitem_155/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_155/strided_slicex
tf.concat_167/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_167/concat/axis�
tf.concat_167/concatConcatV2range_conversion_4/add:z:03tf.__operators__.getitem_155/strided_slice:output:0"tf.concat_167/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_167/concat�
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_16/Conv3D/ReadVariableOp�
conv3d_16/Conv3DConv3Dtf.concat_167/concat:output:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_16/Conv3D�
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_16/BiasAdd/ReadVariableOp�
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_16/BiasAdd�
conv3d_16/SoftplusSoftplusconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_16/Softplus�
"average_pooling3d_6/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_6/transpose/perm�
average_pooling3d_6/transpose	Transpose conv3d_16/Softplus:activations:0+average_pooling3d_6/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2
average_pooling3d_6/transpose�
average_pooling3d_6/AvgPool3D	AvgPool3D!average_pooling3d_6/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_6/AvgPool3D�
$average_pooling3d_6/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_6/transpose_1/perm�
average_pooling3d_6/transpose_1	Transpose&average_pooling3d_6/AvgPool3D:output:0-average_pooling3d_6/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_6/transpose_1�
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_17/Conv3D/ReadVariableOp�
conv3d_17/Conv3DConv3D#average_pooling3d_6/transpose_1:y:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_17/Conv3D�
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_17/BiasAdd/ReadVariableOp�
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_17/BiasAdd�
conv3d_17/SoftplusSoftplusconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_17/Softplus�
"average_pooling3d_7/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_7/transpose/perm�
average_pooling3d_7/transpose	Transpose conv3d_17/Softplus:activations:0+average_pooling3d_7/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2
average_pooling3d_7/transpose�
average_pooling3d_7/AvgPool3D	AvgPool3D!average_pooling3d_7/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_7/AvgPool3D�
$average_pooling3d_7/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_7/transpose_1/perm�
average_pooling3d_7/transpose_1	Transpose&average_pooling3d_7/AvgPool3D:output:0-average_pooling3d_7/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_7/transpose_1�
conv3d_18/Conv3D/ReadVariableOpReadVariableOp(conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_18/Conv3D/ReadVariableOp�
conv3d_18/Conv3DConv3D#average_pooling3d_7/transpose_1:y:0'conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_18/Conv3D�
 conv3d_18/BiasAdd/ReadVariableOpReadVariableOp)conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_18/BiasAdd/ReadVariableOp�
conv3d_18/BiasAddBiasAddconv3d_18/Conv3D:output:0(conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_18/BiasAdd�
conv3d_18/SoftplusSoftplusconv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_18/Softplus�
"average_pooling3d_8/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_8/transpose/perm�
average_pooling3d_8/transpose	Transpose conv3d_18/Softplus:activations:0+average_pooling3d_8/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2
average_pooling3d_8/transpose�
average_pooling3d_8/AvgPool3D	AvgPool3D!average_pooling3d_8/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_8/AvgPool3D�
$average_pooling3d_8/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_8/transpose_1/perm�
average_pooling3d_8/transpose_1	Transpose&average_pooling3d_8/AvgPool3D:output:0-average_pooling3d_8/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_8/transpose_1u
reshape_8/ShapeShape#average_pooling3d_8/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_8/Shape�
reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_8/strided_slice/stack�
reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_1�
reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_2�
reshape_8/strided_sliceStridedSlicereshape_8/Shape:output:0&reshape_8/strided_slice/stack:output:0(reshape_8/strided_slice/stack_1:output:0(reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_8/strided_slicex
reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_8/Reshape/shape/1�
reshape_8/Reshape/shapePack reshape_8/strided_slice:output:0"reshape_8/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_8/Reshape/shape�
reshape_8/ReshapeReshape#average_pooling3d_8/transpose_1:y:0 reshape_8/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_8/Reshape�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_4/MatMul/ReadVariableOp�
dense_4/MatMulMatMulreshape_8/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_4/MatMul�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_4/BiasAdd|
dense_4/SoftplusSoftplusdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_4/Softplusp
reshape_9/ShapeShapedense_4/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_9/Shape�
reshape_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_9/strided_slice/stack�
reshape_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_9/strided_slice/stack_1�
reshape_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_9/strided_slice/stack_2�
reshape_9/strided_sliceStridedSlicereshape_9/Shape:output:0&reshape_9/strided_slice/stack:output:0(reshape_9/strided_slice/stack_1:output:0(reshape_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_9/strided_slicex
reshape_9/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/1x
reshape_9/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/2x
reshape_9/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/3x
reshape_9/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/4�
reshape_9/Reshape/shapePack reshape_9/strided_slice:output:0"reshape_9/Reshape/shape/1:output:0"reshape_9/Reshape/shape/2:output:0"reshape_9/Reshape/shape/3:output:0"reshape_9/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_9/Reshape/shape�
reshape_9/ReshapeReshapedense_4/Softplus:activations:0 reshape_9/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_9/Reshape�
tf.reshape_180/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_180/Reshape/shape�
tf.reshape_180/ReshapeReshapereshape_9/Reshape:output:0%tf.reshape_180/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_180/Reshape�
tf.tile_90/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_90/Tile/multiples�
tf.tile_90/TileTiletf.reshape_180/Reshape:output:0"tf.tile_90/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_90/Tile�
tf.reshape_181/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_181/Reshape/shape�
tf.reshape_181/ReshapeReshapetf.tile_90/Tile:output:0%tf.reshape_181/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_181/Reshapex
tf.concat_168/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_168/concat/axis�
tf.concat_168/concatConcatV2tf.reshape_181/Reshape:output:0 conv3d_18/Softplus:activations:0"tf.concat_168/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_168/concat�
conv3d_19/Conv3D/ReadVariableOpReadVariableOp(conv3d_19_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_19/Conv3D/ReadVariableOp�
conv3d_19/Conv3DConv3Dtf.concat_168/concat:output:0'conv3d_19/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_19/Conv3D�
 conv3d_19/BiasAdd/ReadVariableOpReadVariableOp)conv3d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_19/BiasAdd/ReadVariableOp�
conv3d_19/BiasAddBiasAddconv3d_19/Conv3D:output:0(conv3d_19/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_19/BiasAdd�
conv3d_19/SoftplusSoftplusconv3d_19/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_19/Softplus�
tf.reshape_182/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_182/Reshape/shape�
tf.reshape_182/ReshapeReshape conv3d_19/Softplus:activations:0%tf.reshape_182/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_182/Reshape�
tf.tile_91/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_91/Tile/multiples�
tf.tile_91/TileTiletf.reshape_182/Reshape:output:0"tf.tile_91/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_91/Tile�
tf.reshape_183/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_183/Reshape/shape�
tf.reshape_183/ReshapeReshapetf.tile_91/Tile:output:0%tf.reshape_183/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_183/Reshapex
tf.concat_169/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_169/concat/axis�
tf.concat_169/concatConcatV2tf.reshape_183/Reshape:output:0 conv3d_17/Softplus:activations:0"tf.concat_169/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_169/concat�
conv3d_20/Conv3D/ReadVariableOpReadVariableOp(conv3d_20_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_20/Conv3D/ReadVariableOp�
conv3d_20/Conv3DConv3Dtf.concat_169/concat:output:0'conv3d_20/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_20/Conv3D�
 conv3d_20/BiasAdd/ReadVariableOpReadVariableOp)conv3d_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_20/BiasAdd/ReadVariableOp�
conv3d_20/BiasAddBiasAddconv3d_20/Conv3D:output:0(conv3d_20/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_20/BiasAdd�
conv3d_20/SoftplusSoftplusconv3d_20/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_20/Softplus�
tf.reshape_184/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_184/Reshape/shape�
tf.reshape_184/ReshapeReshape conv3d_20/Softplus:activations:0%tf.reshape_184/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_184/Reshape�
tf.tile_92/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_92/Tile/multiples�
tf.tile_92/TileTiletf.reshape_184/Reshape:output:0"tf.tile_92/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_92/Tile�
tf.reshape_185/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_185/Reshape/shape�
tf.reshape_185/ReshapeReshapetf.tile_92/Tile:output:0%tf.reshape_185/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_185/Reshapex
tf.concat_170/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_170/concat/axis�
tf.concat_170/concatConcatV2tf.reshape_185/Reshape:output:0 conv3d_16/Softplus:activations:0"tf.concat_170/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_170/concat�
conv3d_21/Conv3D/ReadVariableOpReadVariableOp(conv3d_21_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_21/Conv3D/ReadVariableOp�
conv3d_21/Conv3DConv3Dtf.concat_170/concat:output:0'conv3d_21/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_21/Conv3D�
 conv3d_21/BiasAdd/ReadVariableOpReadVariableOp)conv3d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_21/BiasAdd/ReadVariableOp�
conv3d_21/BiasAddBiasAddconv3d_21/Conv3D:output:0(conv3d_21/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_21/BiasAdd�
conv3d_21/SoftplusSoftplusconv3d_21/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_21/Softplus�
conv3d_22/Conv3D/ReadVariableOpReadVariableOp(conv3d_22_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_22/Conv3D/ReadVariableOp�
conv3d_22/Conv3DConv3D conv3d_21/Softplus:activations:0'conv3d_22/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_22/Conv3D�
 conv3d_22/BiasAdd/ReadVariableOpReadVariableOp)conv3d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_22/BiasAdd/ReadVariableOp�
conv3d_22/BiasAddBiasAddconv3d_22/Conv3D:output:0(conv3d_22/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_22/BiasAdd�
IdentityIdentityconv3d_22/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp!^conv3d_18/BiasAdd/ReadVariableOp ^conv3d_18/Conv3D/ReadVariableOp!^conv3d_19/BiasAdd/ReadVariableOp ^conv3d_19/Conv3D/ReadVariableOp!^conv3d_20/BiasAdd/ReadVariableOp ^conv3d_20/Conv3D/ReadVariableOp!^conv3d_21/BiasAdd/ReadVariableOp ^conv3d_21/Conv3D/ReadVariableOp!^conv3d_22/BiasAdd/ReadVariableOp ^conv3d_22/Conv3D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2D
 conv3d_18/BiasAdd/ReadVariableOp conv3d_18/BiasAdd/ReadVariableOp2B
conv3d_18/Conv3D/ReadVariableOpconv3d_18/Conv3D/ReadVariableOp2D
 conv3d_19/BiasAdd/ReadVariableOp conv3d_19/BiasAdd/ReadVariableOp2B
conv3d_19/Conv3D/ReadVariableOpconv3d_19/Conv3D/ReadVariableOp2D
 conv3d_20/BiasAdd/ReadVariableOp conv3d_20/BiasAdd/ReadVariableOp2B
conv3d_20/Conv3D/ReadVariableOpconv3d_20/Conv3D/ReadVariableOp2D
 conv3d_21/BiasAdd/ReadVariableOp conv3d_21/BiasAdd/ReadVariableOp2B
conv3d_21/Conv3D/ReadVariableOpconv3d_21/Conv3D/ReadVariableOp2D
 conv3d_22/BiasAdd/ReadVariableOp conv3d_22/BiasAdd/ReadVariableOp2B
conv3d_22/Conv3D/ReadVariableOpconv3d_22/Conv3D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
Q
5__inference_average_pooling3d_7_layer_call_fn_1968078

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_19667952
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
+__inference_conv3d_18_layer_call_fn_1968110

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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_19669382
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
�
F__inference_conv3d_20_layer_call_and_return_conditional_losses_1967046

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
F__inference_conv3d_20_layer_call_and_return_conditional_losses_1968246

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
�
Q
5__inference_average_pooling3d_8_layer_call_fn_1968126

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_19668252
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
�
G
+__inference_reshape_8_layer_call_fn_1968154

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_8_layer_call_and_return_conditional_losses_19669662
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
�
)__inference_model_4_layer_call_fn_1967718

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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_19673652
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
F__inference_conv3d_21_layer_call_and_return_conditional_losses_1967071

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
Q
5__inference_average_pooling3d_7_layer_call_fn_1968083

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_19669252
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
�
b
F__inference_reshape_9_layer_call_and_return_conditional_losses_1968206

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
D__inference_dense_4_layer_call_and_return_conditional_losses_1968186

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
��
�
D__inference_model_4_layer_call_and_return_conditional_losses_1967853

inputsF
(conv3d_16_conv3d_readvariableop_resource:7
)conv3d_16_biasadd_readvariableop_resource:F
(conv3d_17_conv3d_readvariableop_resource:7
)conv3d_17_biasadd_readvariableop_resource:F
(conv3d_18_conv3d_readvariableop_resource:7
)conv3d_18_biasadd_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:@@5
'dense_4_biasadd_readvariableop_resource:@F
(conv3d_19_conv3d_readvariableop_resource:7
)conv3d_19_biasadd_readvariableop_resource:F
(conv3d_20_conv3d_readvariableop_resource:7
)conv3d_20_biasadd_readvariableop_resource:F
(conv3d_21_conv3d_readvariableop_resource:7
)conv3d_21_biasadd_readvariableop_resource:F
(conv3d_22_conv3d_readvariableop_resource:7
)conv3d_22_biasadd_readvariableop_resource:
identity�� conv3d_16/BiasAdd/ReadVariableOp�conv3d_16/Conv3D/ReadVariableOp� conv3d_17/BiasAdd/ReadVariableOp�conv3d_17/Conv3D/ReadVariableOp� conv3d_18/BiasAdd/ReadVariableOp�conv3d_18/Conv3D/ReadVariableOp� conv3d_19/BiasAdd/ReadVariableOp�conv3d_19/Conv3D/ReadVariableOp� conv3d_20/BiasAdd/ReadVariableOp�conv3d_20/Conv3D/ReadVariableOp� conv3d_21/BiasAdd/ReadVariableOp�conv3d_21/Conv3D/ReadVariableOp� conv3d_22/BiasAdd/ReadVariableOp�conv3d_22/Conv3D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�
0tf.__operators__.getitem_154/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_154/strided_slice/stack�
2tf.__operators__.getitem_154/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_154/strided_slice/stack_1�
2tf.__operators__.getitem_154/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_154/strided_slice/stack_2�
*tf.__operators__.getitem_154/strided_sliceStridedSliceinputs9tf.__operators__.getitem_154/strided_slice/stack:output:0;tf.__operators__.getitem_154/strided_slice/stack_1:output:0;tf.__operators__.getitem_154/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_154/strided_slicey
range_conversion_4/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_4/sub/y�
range_conversion_4/subSub3tf.__operators__.getitem_154/strided_slice:output:0!range_conversion_4/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/sub�
range_conversion_4/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_4/truediv/y�
range_conversion_4/truedivRealDivrange_conversion_4/sub:z:0%range_conversion_4/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/truedivy
range_conversion_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_4/mul/y�
range_conversion_4/mulMulrange_conversion_4/truediv:z:0!range_conversion_4/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/muly
range_conversion_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_4/add/y�
range_conversion_4/addAddV2range_conversion_4/mul:z:0!range_conversion_4/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_4/add�
0tf.__operators__.getitem_155/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_155/strided_slice/stack�
2tf.__operators__.getitem_155/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_155/strided_slice/stack_1�
2tf.__operators__.getitem_155/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_155/strided_slice/stack_2�
*tf.__operators__.getitem_155/strided_sliceStridedSliceinputs9tf.__operators__.getitem_155/strided_slice/stack:output:0;tf.__operators__.getitem_155/strided_slice/stack_1:output:0;tf.__operators__.getitem_155/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_155/strided_slicex
tf.concat_167/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_167/concat/axis�
tf.concat_167/concatConcatV2range_conversion_4/add:z:03tf.__operators__.getitem_155/strided_slice:output:0"tf.concat_167/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_167/concat�
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_16/Conv3D/ReadVariableOp�
conv3d_16/Conv3DConv3Dtf.concat_167/concat:output:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_16/Conv3D�
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_16/BiasAdd/ReadVariableOp�
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_16/BiasAdd�
conv3d_16/SoftplusSoftplusconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_16/Softplus�
"average_pooling3d_6/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_6/transpose/perm�
average_pooling3d_6/transpose	Transpose conv3d_16/Softplus:activations:0+average_pooling3d_6/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2
average_pooling3d_6/transpose�
average_pooling3d_6/AvgPool3D	AvgPool3D!average_pooling3d_6/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_6/AvgPool3D�
$average_pooling3d_6/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_6/transpose_1/perm�
average_pooling3d_6/transpose_1	Transpose&average_pooling3d_6/AvgPool3D:output:0-average_pooling3d_6/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_6/transpose_1�
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_17/Conv3D/ReadVariableOp�
conv3d_17/Conv3DConv3D#average_pooling3d_6/transpose_1:y:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_17/Conv3D�
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_17/BiasAdd/ReadVariableOp�
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_17/BiasAdd�
conv3d_17/SoftplusSoftplusconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_17/Softplus�
"average_pooling3d_7/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_7/transpose/perm�
average_pooling3d_7/transpose	Transpose conv3d_17/Softplus:activations:0+average_pooling3d_7/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2
average_pooling3d_7/transpose�
average_pooling3d_7/AvgPool3D	AvgPool3D!average_pooling3d_7/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_7/AvgPool3D�
$average_pooling3d_7/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_7/transpose_1/perm�
average_pooling3d_7/transpose_1	Transpose&average_pooling3d_7/AvgPool3D:output:0-average_pooling3d_7/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_7/transpose_1�
conv3d_18/Conv3D/ReadVariableOpReadVariableOp(conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_18/Conv3D/ReadVariableOp�
conv3d_18/Conv3DConv3D#average_pooling3d_7/transpose_1:y:0'conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_18/Conv3D�
 conv3d_18/BiasAdd/ReadVariableOpReadVariableOp)conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_18/BiasAdd/ReadVariableOp�
conv3d_18/BiasAddBiasAddconv3d_18/Conv3D:output:0(conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_18/BiasAdd�
conv3d_18/SoftplusSoftplusconv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_18/Softplus�
"average_pooling3d_8/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2$
"average_pooling3d_8/transpose/perm�
average_pooling3d_8/transpose	Transpose conv3d_18/Softplus:activations:0+average_pooling3d_8/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2
average_pooling3d_8/transpose�
average_pooling3d_8/AvgPool3D	AvgPool3D!average_pooling3d_8/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2
average_pooling3d_8/AvgPool3D�
$average_pooling3d_8/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2&
$average_pooling3d_8/transpose_1/perm�
average_pooling3d_8/transpose_1	Transpose&average_pooling3d_8/AvgPool3D:output:0-average_pooling3d_8/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2!
average_pooling3d_8/transpose_1u
reshape_8/ShapeShape#average_pooling3d_8/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_8/Shape�
reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_8/strided_slice/stack�
reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_1�
reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_2�
reshape_8/strided_sliceStridedSlicereshape_8/Shape:output:0&reshape_8/strided_slice/stack:output:0(reshape_8/strided_slice/stack_1:output:0(reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_8/strided_slicex
reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_8/Reshape/shape/1�
reshape_8/Reshape/shapePack reshape_8/strided_slice:output:0"reshape_8/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_8/Reshape/shape�
reshape_8/ReshapeReshape#average_pooling3d_8/transpose_1:y:0 reshape_8/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_8/Reshape�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_4/MatMul/ReadVariableOp�
dense_4/MatMulMatMulreshape_8/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_4/MatMul�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_4/BiasAdd|
dense_4/SoftplusSoftplusdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_4/Softplusp
reshape_9/ShapeShapedense_4/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_9/Shape�
reshape_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_9/strided_slice/stack�
reshape_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_9/strided_slice/stack_1�
reshape_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_9/strided_slice/stack_2�
reshape_9/strided_sliceStridedSlicereshape_9/Shape:output:0&reshape_9/strided_slice/stack:output:0(reshape_9/strided_slice/stack_1:output:0(reshape_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_9/strided_slicex
reshape_9/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/1x
reshape_9/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/2x
reshape_9/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/3x
reshape_9/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_9/Reshape/shape/4�
reshape_9/Reshape/shapePack reshape_9/strided_slice:output:0"reshape_9/Reshape/shape/1:output:0"reshape_9/Reshape/shape/2:output:0"reshape_9/Reshape/shape/3:output:0"reshape_9/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_9/Reshape/shape�
reshape_9/ReshapeReshapedense_4/Softplus:activations:0 reshape_9/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_9/Reshape�
tf.reshape_180/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_180/Reshape/shape�
tf.reshape_180/ReshapeReshapereshape_9/Reshape:output:0%tf.reshape_180/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_180/Reshape�
tf.tile_90/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_90/Tile/multiples�
tf.tile_90/TileTiletf.reshape_180/Reshape:output:0"tf.tile_90/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_90/Tile�
tf.reshape_181/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_181/Reshape/shape�
tf.reshape_181/ReshapeReshapetf.tile_90/Tile:output:0%tf.reshape_181/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_181/Reshapex
tf.concat_168/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_168/concat/axis�
tf.concat_168/concatConcatV2tf.reshape_181/Reshape:output:0 conv3d_18/Softplus:activations:0"tf.concat_168/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_168/concat�
conv3d_19/Conv3D/ReadVariableOpReadVariableOp(conv3d_19_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_19/Conv3D/ReadVariableOp�
conv3d_19/Conv3DConv3Dtf.concat_168/concat:output:0'conv3d_19/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_19/Conv3D�
 conv3d_19/BiasAdd/ReadVariableOpReadVariableOp)conv3d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_19/BiasAdd/ReadVariableOp�
conv3d_19/BiasAddBiasAddconv3d_19/Conv3D:output:0(conv3d_19/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_19/BiasAdd�
conv3d_19/SoftplusSoftplusconv3d_19/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_19/Softplus�
tf.reshape_182/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_182/Reshape/shape�
tf.reshape_182/ReshapeReshape conv3d_19/Softplus:activations:0%tf.reshape_182/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_182/Reshape�
tf.tile_91/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_91/Tile/multiples�
tf.tile_91/TileTiletf.reshape_182/Reshape:output:0"tf.tile_91/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_91/Tile�
tf.reshape_183/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_183/Reshape/shape�
tf.reshape_183/ReshapeReshapetf.tile_91/Tile:output:0%tf.reshape_183/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_183/Reshapex
tf.concat_169/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_169/concat/axis�
tf.concat_169/concatConcatV2tf.reshape_183/Reshape:output:0 conv3d_17/Softplus:activations:0"tf.concat_169/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_169/concat�
conv3d_20/Conv3D/ReadVariableOpReadVariableOp(conv3d_20_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_20/Conv3D/ReadVariableOp�
conv3d_20/Conv3DConv3Dtf.concat_169/concat:output:0'conv3d_20/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_20/Conv3D�
 conv3d_20/BiasAdd/ReadVariableOpReadVariableOp)conv3d_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_20/BiasAdd/ReadVariableOp�
conv3d_20/BiasAddBiasAddconv3d_20/Conv3D:output:0(conv3d_20/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_20/BiasAdd�
conv3d_20/SoftplusSoftplusconv3d_20/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_20/Softplus�
tf.reshape_184/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_184/Reshape/shape�
tf.reshape_184/ReshapeReshape conv3d_20/Softplus:activations:0%tf.reshape_184/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_184/Reshape�
tf.tile_92/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_92/Tile/multiples�
tf.tile_92/TileTiletf.reshape_184/Reshape:output:0"tf.tile_92/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_92/Tile�
tf.reshape_185/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_185/Reshape/shape�
tf.reshape_185/ReshapeReshapetf.tile_92/Tile:output:0%tf.reshape_185/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_185/Reshapex
tf.concat_170/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_170/concat/axis�
tf.concat_170/concatConcatV2tf.reshape_185/Reshape:output:0 conv3d_16/Softplus:activations:0"tf.concat_170/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_170/concat�
conv3d_21/Conv3D/ReadVariableOpReadVariableOp(conv3d_21_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_21/Conv3D/ReadVariableOp�
conv3d_21/Conv3DConv3Dtf.concat_170/concat:output:0'conv3d_21/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_21/Conv3D�
 conv3d_21/BiasAdd/ReadVariableOpReadVariableOp)conv3d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_21/BiasAdd/ReadVariableOp�
conv3d_21/BiasAddBiasAddconv3d_21/Conv3D:output:0(conv3d_21/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_21/BiasAdd�
conv3d_21/SoftplusSoftplusconv3d_21/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_21/Softplus�
conv3d_22/Conv3D/ReadVariableOpReadVariableOp(conv3d_22_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02!
conv3d_22/Conv3D/ReadVariableOp�
conv3d_22/Conv3DConv3D conv3d_21/Softplus:activations:0'conv3d_22/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_22/Conv3D�
 conv3d_22/BiasAdd/ReadVariableOpReadVariableOp)conv3d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_22/BiasAdd/ReadVariableOp�
conv3d_22/BiasAddBiasAddconv3d_22/Conv3D:output:0(conv3d_22/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_22/BiasAdd�
IdentityIdentityconv3d_22/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp!^conv3d_18/BiasAdd/ReadVariableOp ^conv3d_18/Conv3D/ReadVariableOp!^conv3d_19/BiasAdd/ReadVariableOp ^conv3d_19/Conv3D/ReadVariableOp!^conv3d_20/BiasAdd/ReadVariableOp ^conv3d_20/Conv3D/ReadVariableOp!^conv3d_21/BiasAdd/ReadVariableOp ^conv3d_21/Conv3D/ReadVariableOp!^conv3d_22/BiasAdd/ReadVariableOp ^conv3d_22/Conv3D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2D
 conv3d_18/BiasAdd/ReadVariableOp conv3d_18/BiasAdd/ReadVariableOp2B
conv3d_18/Conv3D/ReadVariableOpconv3d_18/Conv3D/ReadVariableOp2D
 conv3d_19/BiasAdd/ReadVariableOp conv3d_19/BiasAdd/ReadVariableOp2B
conv3d_19/Conv3D/ReadVariableOpconv3d_19/Conv3D/ReadVariableOp2D
 conv3d_20/BiasAdd/ReadVariableOp conv3d_20/BiasAdd/ReadVariableOp2B
conv3d_20/Conv3D/ReadVariableOpconv3d_20/Conv3D/ReadVariableOp2D
 conv3d_21/BiasAdd/ReadVariableOp conv3d_21/BiasAdd/ReadVariableOp2B
conv3d_21/Conv3D/ReadVariableOpconv3d_21/Conv3D/ReadVariableOp2D
 conv3d_22/BiasAdd/ReadVariableOp conv3d_22/BiasAdd/ReadVariableOp2B
conv3d_22/Conv3D/ReadVariableOpconv3d_22/Conv3D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�	
l
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1968149

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
l
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1966925

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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_1968025

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
�
)__inference_model_4_layer_call_fn_1967681

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
GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_19670942
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
�
Q
5__inference_average_pooling3d_6_layer_call_fn_1968030

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_19667652
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
Q
5__inference_average_pooling3d_6_layer_call_fn_1968035

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
GPU2 *0,1,2,3J 8� *Y
fTRR
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_19668982
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
G
+__inference_reshape_9_layer_call_fn_1968191

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
GPU2 *0,1,2,3J 8� *O
fJRH
F__inference_reshape_9_layer_call_and_return_conditional_losses_19670002
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
�
�
+__inference_conv3d_20_layer_call_fn_1968235

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
F__inference_conv3d_20_layer_call_and_return_conditional_losses_19670462
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
b
F__inference_reshape_8_layer_call_and_return_conditional_losses_1968166

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

l
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1966795

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
o
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_1966865

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
parameters"�L
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
	conv3d_22<
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
0:. 2conv3d_16/kernel
: 2conv3d_16/bias
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
0:. 2conv3d_17/kernel
: 2conv3d_17/bias
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
0:. 2conv3d_18/kernel
: 2conv3d_18/bias
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
": @@ 2dense_4/kernel
:@ 2dense_4/bias
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
0:. 2conv3d_19/kernel
: 2conv3d_19/bias
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
0:. 2conv3d_20/kernel
: 2conv3d_20/bias
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
0:. 2conv3d_21/kernel
: 2conv3d_21/bias
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
0:. 2conv3d_22/kernel
: 2conv3d_22/bias
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
)__inference_model_4_layer_call_fn_1967129
)__inference_model_4_layer_call_fn_1967681
)__inference_model_4_layer_call_fn_1967718
)__inference_model_4_layer_call_fn_1967437�
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
D__inference_model_4_layer_call_and_return_conditional_losses_1967853
D__inference_model_4_layer_call_and_return_conditional_losses_1967988
D__inference_model_4_layer_call_and_return_conditional_losses_1967521
D__inference_model_4_layer_call_and_return_conditional_losses_1967605�
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
"__inference__wrapped_model_1966752input"�
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
4__inference_range_conversion_4_layer_call_fn_1967993�
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
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_1968005�
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
+__inference_conv3d_16_layer_call_fn_1968014�
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_1968025�
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
5__inference_average_pooling3d_6_layer_call_fn_1968030
5__inference_average_pooling3d_6_layer_call_fn_1968035�
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
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1968044
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1968053�
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
+__inference_conv3d_17_layer_call_fn_1968062�
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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_1968073�
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
5__inference_average_pooling3d_7_layer_call_fn_1968078
5__inference_average_pooling3d_7_layer_call_fn_1968083�
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
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1968092
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1968101�
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
+__inference_conv3d_18_layer_call_fn_1968110�
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_1968121�
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
5__inference_average_pooling3d_8_layer_call_fn_1968126
5__inference_average_pooling3d_8_layer_call_fn_1968131�
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
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1968140
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1968149�
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
+__inference_reshape_8_layer_call_fn_1968154�
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
F__inference_reshape_8_layer_call_and_return_conditional_losses_1968166�
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
)__inference_dense_4_layer_call_fn_1968175�
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
D__inference_dense_4_layer_call_and_return_conditional_losses_1968186�
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
+__inference_reshape_9_layer_call_fn_1968191�
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
F__inference_reshape_9_layer_call_and_return_conditional_losses_1968206�
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
+__inference_conv3d_19_layer_call_fn_1968215�
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_1968226�
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
+__inference_conv3d_20_layer_call_fn_1968235�
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
F__inference_conv3d_20_layer_call_and_return_conditional_losses_1968246�
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
+__inference_conv3d_21_layer_call_fn_1968255�
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
F__inference_conv3d_21_layer_call_and_return_conditional_losses_1968266�
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
+__inference_conv3d_22_layer_call_fn_1968275�
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
F__inference_conv3d_22_layer_call_and_return_conditional_losses_1968285�
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
%__inference_signature_wrapper_1967644input"�
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
"__inference__wrapped_model_1966752�+,56?@MN[\efopuv:�7
0�-
+�(
input���������  
� "A�>
<
	conv3d_22/�,
	conv3d_22���������  �
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1968044�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
P__inference_average_pooling3d_6_layer_call_and_return_conditional_losses_1968053p;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������
� �
5__inference_average_pooling3d_6_layer_call_fn_1968030�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
5__inference_average_pooling3d_6_layer_call_fn_1968035c;�8
1�.
,�)
inputs���������  
� "$�!����������
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1968092�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
P__inference_average_pooling3d_7_layer_call_and_return_conditional_losses_1968101p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
5__inference_average_pooling3d_7_layer_call_fn_1968078�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
5__inference_average_pooling3d_7_layer_call_fn_1968083c;�8
1�.
,�)
inputs���������
� "$�!����������
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1968140�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
P__inference_average_pooling3d_8_layer_call_and_return_conditional_losses_1968149p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
5__inference_average_pooling3d_8_layer_call_fn_1968126�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
5__inference_average_pooling3d_8_layer_call_fn_1968131c;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_16_layer_call_and_return_conditional_losses_1968025t+,;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_16_layer_call_fn_1968014g+,;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_conv3d_17_layer_call_and_return_conditional_losses_1968073t56;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_17_layer_call_fn_1968062g56;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_18_layer_call_and_return_conditional_losses_1968121t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_18_layer_call_fn_1968110g?@;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_19_layer_call_and_return_conditional_losses_1968226t[\;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_19_layer_call_fn_1968215g[\;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_20_layer_call_and_return_conditional_losses_1968246tef;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
+__inference_conv3d_20_layer_call_fn_1968235gef;�8
1�.
,�)
inputs���������
� "$�!����������
F__inference_conv3d_21_layer_call_and_return_conditional_losses_1968266top;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_21_layer_call_fn_1968255gop;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_conv3d_22_layer_call_and_return_conditional_losses_1968285tuv;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
+__inference_conv3d_22_layer_call_fn_1968275guv;�8
1�.
,�)
inputs���������  
� "$�!���������  �
D__inference_dense_4_layer_call_and_return_conditional_losses_1968186\MN/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� |
)__inference_dense_4_layer_call_fn_1968175OMN/�,
%�"
 �
inputs���������@
� "����������@�
D__inference_model_4_layer_call_and_return_conditional_losses_1967521�+,56?@MN[\efopuvB�?
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
D__inference_model_4_layer_call_and_return_conditional_losses_1967605�+,56?@MN[\efopuvB�?
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
D__inference_model_4_layer_call_and_return_conditional_losses_1967853�+,56?@MN[\efopuvC�@
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
D__inference_model_4_layer_call_and_return_conditional_losses_1967988�+,56?@MN[\efopuvC�@
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
)__inference_model_4_layer_call_fn_1967129|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p 

 
� "$�!���������  �
)__inference_model_4_layer_call_fn_1967437|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p

 
� "$�!���������  �
)__inference_model_4_layer_call_fn_1967681}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p 

 
� "$�!���������  �
)__inference_model_4_layer_call_fn_1967718}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p

 
� "$�!���������  �
O__inference_range_conversion_4_layer_call_and_return_conditional_losses_1968005t?�<
5�2
0�-

parameters���������  
� "1�.
'�$
0���������  
� �
4__inference_range_conversion_4_layer_call_fn_1967993g?�<
5�2
0�-

parameters���������  
� "$�!���������  �
F__inference_reshape_8_layer_call_and_return_conditional_losses_1968166d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
+__inference_reshape_8_layer_call_fn_1968154W;�8
1�.
,�)
inputs���������
� "����������@�
F__inference_reshape_9_layer_call_and_return_conditional_losses_1968206d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
+__inference_reshape_9_layer_call_fn_1968191W/�,
%�"
 �
inputs���������@
� "$�!����������
%__inference_signature_wrapper_1967644�+,56?@MN[\efopuvC�@
� 
9�6
4
input+�(
input���������  "A�>
<
	conv3d_22/�,
	conv3d_22���������  