��
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
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258ۂ
�
conv3d_235/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_235/kernel
�
%conv3d_235/kernel/Read/ReadVariableOpReadVariableOpconv3d_235/kernel**
_output_shapes
:*
dtype0
v
conv3d_235/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_235/bias
o
#conv3d_235/bias/Read/ReadVariableOpReadVariableOpconv3d_235/bias*
_output_shapes
:*
dtype0
�
conv3d_236/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_236/kernel
�
%conv3d_236/kernel/Read/ReadVariableOpReadVariableOpconv3d_236/kernel**
_output_shapes
:*
dtype0
v
conv3d_236/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_236/bias
o
#conv3d_236/bias/Read/ReadVariableOpReadVariableOpconv3d_236/bias*
_output_shapes
:*
dtype0
�
conv3d_237/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_237/kernel
�
%conv3d_237/kernel/Read/ReadVariableOpReadVariableOpconv3d_237/kernel**
_output_shapes
:*
dtype0
v
conv3d_237/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_237/bias
o
#conv3d_237/bias/Read/ReadVariableOpReadVariableOpconv3d_237/bias*
_output_shapes
:*
dtype0
z
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_51/kernel
s
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes

:@@*
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
_output_shapes
:@*
dtype0
�
conv3d_238/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_238/kernel
�
%conv3d_238/kernel/Read/ReadVariableOpReadVariableOpconv3d_238/kernel**
_output_shapes
:*
dtype0
v
conv3d_238/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_238/bias
o
#conv3d_238/bias/Read/ReadVariableOpReadVariableOpconv3d_238/bias*
_output_shapes
:*
dtype0
�
conv3d_239/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_239/kernel
�
%conv3d_239/kernel/Read/ReadVariableOpReadVariableOpconv3d_239/kernel**
_output_shapes
:*
dtype0
v
conv3d_239/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_239/bias
o
#conv3d_239/bias/Read/ReadVariableOpReadVariableOpconv3d_239/bias*
_output_shapes
:*
dtype0
�
conv3d_240/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_240/kernel
�
%conv3d_240/kernel/Read/ReadVariableOpReadVariableOpconv3d_240/kernel**
_output_shapes
:*
dtype0
v
conv3d_240/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_240/bias
o
#conv3d_240/bias/Read/ReadVariableOpReadVariableOpconv3d_240/bias*
_output_shapes
:*
dtype0
�
conv3d_241/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_241/kernel
�
%conv3d_241/kernel/Read/ReadVariableOpReadVariableOpconv3d_241/kernel**
_output_shapes
:*
dtype0
v
conv3d_241/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_241/bias
o
#conv3d_241/bias/Read/ReadVariableOpReadVariableOpconv3d_241/bias*
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
][
VARIABLE_VALUEconv3d_235/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_235/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEconv3d_236/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_236/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEconv3d_237/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_237/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_51/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_51/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEconv3d_238/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_238/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_239/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_239/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_240/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_240/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv3d_241/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_241/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
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
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_235/kernelconv3d_235/biasconv3d_236/kernelconv3d_236/biasconv3d_237/kernelconv3d_237/biasdense_51/kerneldense_51/biasconv3d_238/kernelconv3d_238/biasconv3d_239/kernelconv3d_239/biasconv3d_240/kernelconv3d_240/biasconv3d_241/kernelconv3d_241/bias*
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
&__inference_signature_wrapper_12221428
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_235/kernel/Read/ReadVariableOp#conv3d_235/bias/Read/ReadVariableOp%conv3d_236/kernel/Read/ReadVariableOp#conv3d_236/bias/Read/ReadVariableOp%conv3d_237/kernel/Read/ReadVariableOp#conv3d_237/bias/Read/ReadVariableOp#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOp%conv3d_238/kernel/Read/ReadVariableOp#conv3d_238/bias/Read/ReadVariableOp%conv3d_239/kernel/Read/ReadVariableOp#conv3d_239/bias/Read/ReadVariableOp%conv3d_240/kernel/Read/ReadVariableOp#conv3d_240/bias/Read/ReadVariableOp%conv3d_241/kernel/Read/ReadVariableOp#conv3d_241/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_12222140
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_235/kernelconv3d_235/biasconv3d_236/kernelconv3d_236/biasconv3d_237/kernelconv3d_237/biasdense_51/kerneldense_51/biasconv3d_238/kernelconv3d_238/biasconv3d_239/kernelconv3d_239/biasconv3d_240/kernelconv3d_240/biasconv3d_241/kernelconv3d_241/bias*
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
$__inference__traced_restore_12222198��
�
�
F__inference_dense_51_layer_call_and_return_conditional_losses_12220763

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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_12220871

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
�
J
.__inference_reshape_103_layer_call_fn_12221975

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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_103_layer_call_and_return_conditional_losses_122207842
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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_12220668

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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12220609

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
+__inference_model_51_layer_call_fn_12221465

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
F__inference_model_51_layer_call_and_return_conditional_losses_122208782
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
��
�
#__inference__wrapped_model_12220536	
inputP
2model_51_conv3d_235_conv3d_readvariableop_resource:A
3model_51_conv3d_235_biasadd_readvariableop_resource:P
2model_51_conv3d_236_conv3d_readvariableop_resource:A
3model_51_conv3d_236_biasadd_readvariableop_resource:P
2model_51_conv3d_237_conv3d_readvariableop_resource:A
3model_51_conv3d_237_biasadd_readvariableop_resource:B
0model_51_dense_51_matmul_readvariableop_resource:@@?
1model_51_dense_51_biasadd_readvariableop_resource:@P
2model_51_conv3d_238_conv3d_readvariableop_resource:A
3model_51_conv3d_238_biasadd_readvariableop_resource:P
2model_51_conv3d_239_conv3d_readvariableop_resource:A
3model_51_conv3d_239_biasadd_readvariableop_resource:P
2model_51_conv3d_240_conv3d_readvariableop_resource:A
3model_51_conv3d_240_biasadd_readvariableop_resource:P
2model_51_conv3d_241_conv3d_readvariableop_resource:A
3model_51_conv3d_241_biasadd_readvariableop_resource:
identity��*model_51/conv3d_235/BiasAdd/ReadVariableOp�)model_51/conv3d_235/Conv3D/ReadVariableOp�*model_51/conv3d_236/BiasAdd/ReadVariableOp�)model_51/conv3d_236/Conv3D/ReadVariableOp�*model_51/conv3d_237/BiasAdd/ReadVariableOp�)model_51/conv3d_237/Conv3D/ReadVariableOp�*model_51/conv3d_238/BiasAdd/ReadVariableOp�)model_51/conv3d_238/Conv3D/ReadVariableOp�*model_51/conv3d_239/BiasAdd/ReadVariableOp�)model_51/conv3d_239/Conv3D/ReadVariableOp�*model_51/conv3d_240/BiasAdd/ReadVariableOp�)model_51/conv3d_240/Conv3D/ReadVariableOp�*model_51/conv3d_241/BiasAdd/ReadVariableOp�)model_51/conv3d_241/Conv3D/ReadVariableOp�(model_51/dense_51/BiasAdd/ReadVariableOp�'model_51/dense_51/MatMul/ReadVariableOp�
9model_51/tf.__operators__.getitem_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_51/tf.__operators__.getitem_248/strided_slice/stack�
;model_51/tf.__operators__.getitem_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_51/tf.__operators__.getitem_248/strided_slice/stack_1�
;model_51/tf.__operators__.getitem_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_51/tf.__operators__.getitem_248/strided_slice/stack_2�
3model_51/tf.__operators__.getitem_248/strided_sliceStridedSliceinputBmodel_51/tf.__operators__.getitem_248/strided_slice/stack:output:0Dmodel_51/tf.__operators__.getitem_248/strided_slice/stack_1:output:0Dmodel_51/tf.__operators__.getitem_248/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_51/tf.__operators__.getitem_248/strided_slice�
"model_51/range_conversion_51/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_51/range_conversion_51/sub/y�
 model_51/range_conversion_51/subSub<model_51/tf.__operators__.getitem_248/strided_slice:output:0+model_51/range_conversion_51/sub/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_51/range_conversion_51/sub�
&model_51/range_conversion_51/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_51/range_conversion_51/truediv/y�
$model_51/range_conversion_51/truedivRealDiv$model_51/range_conversion_51/sub:z:0/model_51/range_conversion_51/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2&
$model_51/range_conversion_51/truediv�
"model_51/range_conversion_51/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_51/range_conversion_51/mul/y�
 model_51/range_conversion_51/mulMul(model_51/range_conversion_51/truediv:z:0+model_51/range_conversion_51/mul/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_51/range_conversion_51/mul�
"model_51/range_conversion_51/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2$
"model_51/range_conversion_51/add/y�
 model_51/range_conversion_51/addAddV2$model_51/range_conversion_51/mul:z:0+model_51/range_conversion_51/add/y:output:0*
T0*3
_output_shapes!
:���������  2"
 model_51/range_conversion_51/add�
9model_51/tf.__operators__.getitem_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_51/tf.__operators__.getitem_249/strided_slice/stack�
;model_51/tf.__operators__.getitem_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_51/tf.__operators__.getitem_249/strided_slice/stack_1�
;model_51/tf.__operators__.getitem_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_51/tf.__operators__.getitem_249/strided_slice/stack_2�
3model_51/tf.__operators__.getitem_249/strided_sliceStridedSliceinputBmodel_51/tf.__operators__.getitem_249/strided_slice/stack:output:0Dmodel_51/tf.__operators__.getitem_249/strided_slice/stack_1:output:0Dmodel_51/tf.__operators__.getitem_249/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask25
3model_51/tf.__operators__.getitem_249/strided_slice�
"model_51/tf.concat_300/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_51/tf.concat_300/concat/axis�
model_51/tf.concat_300/concatConcatV2$model_51/range_conversion_51/add:z:0<model_51/tf.__operators__.getitem_249/strided_slice:output:0+model_51/tf.concat_300/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_51/tf.concat_300/concat�
)model_51/conv3d_235/Conv3D/ReadVariableOpReadVariableOp2model_51_conv3d_235_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_51/conv3d_235/Conv3D/ReadVariableOp�
model_51/conv3d_235/Conv3DConv3D&model_51/tf.concat_300/concat:output:01model_51/conv3d_235/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_51/conv3d_235/Conv3D�
*model_51/conv3d_235/BiasAdd/ReadVariableOpReadVariableOp3model_51_conv3d_235_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_51/conv3d_235/BiasAdd/ReadVariableOp�
model_51/conv3d_235/BiasAddBiasAdd#model_51/conv3d_235/Conv3D:output:02model_51/conv3d_235/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_51/conv3d_235/BiasAdd�
model_51/conv3d_235/SoftplusSoftplus$model_51/conv3d_235/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_51/conv3d_235/Softplus�
,model_51/average_pooling3d_92/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_51/average_pooling3d_92/transpose/perm�
'model_51/average_pooling3d_92/transpose	Transpose*model_51/conv3d_235/Softplus:activations:05model_51/average_pooling3d_92/transpose/perm:output:0*
T0*3
_output_shapes!
:���������  2)
'model_51/average_pooling3d_92/transpose�
'model_51/average_pooling3d_92/AvgPool3D	AvgPool3D+model_51/average_pooling3d_92/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_51/average_pooling3d_92/AvgPool3D�
.model_51/average_pooling3d_92/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_51/average_pooling3d_92/transpose_1/perm�
)model_51/average_pooling3d_92/transpose_1	Transpose0model_51/average_pooling3d_92/AvgPool3D:output:07model_51/average_pooling3d_92/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_51/average_pooling3d_92/transpose_1�
)model_51/conv3d_236/Conv3D/ReadVariableOpReadVariableOp2model_51_conv3d_236_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_51/conv3d_236/Conv3D/ReadVariableOp�
model_51/conv3d_236/Conv3DConv3D-model_51/average_pooling3d_92/transpose_1:y:01model_51/conv3d_236/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_51/conv3d_236/Conv3D�
*model_51/conv3d_236/BiasAdd/ReadVariableOpReadVariableOp3model_51_conv3d_236_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_51/conv3d_236/BiasAdd/ReadVariableOp�
model_51/conv3d_236/BiasAddBiasAdd#model_51/conv3d_236/Conv3D:output:02model_51/conv3d_236/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_51/conv3d_236/BiasAdd�
model_51/conv3d_236/SoftplusSoftplus$model_51/conv3d_236/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_51/conv3d_236/Softplus�
,model_51/average_pooling3d_93/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_51/average_pooling3d_93/transpose/perm�
'model_51/average_pooling3d_93/transpose	Transpose*model_51/conv3d_236/Softplus:activations:05model_51/average_pooling3d_93/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_51/average_pooling3d_93/transpose�
'model_51/average_pooling3d_93/AvgPool3D	AvgPool3D+model_51/average_pooling3d_93/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_51/average_pooling3d_93/AvgPool3D�
.model_51/average_pooling3d_93/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_51/average_pooling3d_93/transpose_1/perm�
)model_51/average_pooling3d_93/transpose_1	Transpose0model_51/average_pooling3d_93/AvgPool3D:output:07model_51/average_pooling3d_93/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_51/average_pooling3d_93/transpose_1�
)model_51/conv3d_237/Conv3D/ReadVariableOpReadVariableOp2model_51_conv3d_237_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_51/conv3d_237/Conv3D/ReadVariableOp�
model_51/conv3d_237/Conv3DConv3D-model_51/average_pooling3d_93/transpose_1:y:01model_51/conv3d_237/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_51/conv3d_237/Conv3D�
*model_51/conv3d_237/BiasAdd/ReadVariableOpReadVariableOp3model_51_conv3d_237_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_51/conv3d_237/BiasAdd/ReadVariableOp�
model_51/conv3d_237/BiasAddBiasAdd#model_51/conv3d_237/Conv3D:output:02model_51/conv3d_237/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_51/conv3d_237/BiasAdd�
model_51/conv3d_237/SoftplusSoftplus$model_51/conv3d_237/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_51/conv3d_237/Softplus�
,model_51/average_pooling3d_94/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_51/average_pooling3d_94/transpose/perm�
'model_51/average_pooling3d_94/transpose	Transpose*model_51/conv3d_237/Softplus:activations:05model_51/average_pooling3d_94/transpose/perm:output:0*
T0*3
_output_shapes!
:���������2)
'model_51/average_pooling3d_94/transpose�
'model_51/average_pooling3d_94/AvgPool3D	AvgPool3D+model_51/average_pooling3d_94/transpose:y:0*
T0*3
_output_shapes!
:���������*
ksize	
*
paddingVALID*
strides	
2)
'model_51/average_pooling3d_94/AvgPool3D�
.model_51/average_pooling3d_94/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_51/average_pooling3d_94/transpose_1/perm�
)model_51/average_pooling3d_94/transpose_1	Transpose0model_51/average_pooling3d_94/AvgPool3D:output:07model_51/average_pooling3d_94/transpose_1/perm:output:0*
T0*3
_output_shapes!
:���������2+
)model_51/average_pooling3d_94/transpose_1�
model_51/reshape_102/ShapeShape-model_51/average_pooling3d_94/transpose_1:y:0*
T0*
_output_shapes
:2
model_51/reshape_102/Shape�
(model_51/reshape_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_51/reshape_102/strided_slice/stack�
*model_51/reshape_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_51/reshape_102/strided_slice/stack_1�
*model_51/reshape_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_51/reshape_102/strided_slice/stack_2�
"model_51/reshape_102/strided_sliceStridedSlice#model_51/reshape_102/Shape:output:01model_51/reshape_102/strided_slice/stack:output:03model_51/reshape_102/strided_slice/stack_1:output:03model_51/reshape_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_51/reshape_102/strided_slice�
$model_51/reshape_102/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_51/reshape_102/Reshape/shape/1�
"model_51/reshape_102/Reshape/shapePack+model_51/reshape_102/strided_slice:output:0-model_51/reshape_102/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_51/reshape_102/Reshape/shape�
model_51/reshape_102/ReshapeReshape-model_51/average_pooling3d_94/transpose_1:y:0+model_51/reshape_102/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
model_51/reshape_102/Reshape�
'model_51/dense_51/MatMul/ReadVariableOpReadVariableOp0model_51_dense_51_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_51/dense_51/MatMul/ReadVariableOp�
model_51/dense_51/MatMulMatMul%model_51/reshape_102/Reshape:output:0/model_51/dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_51/dense_51/MatMul�
(model_51/dense_51/BiasAdd/ReadVariableOpReadVariableOp1model_51_dense_51_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_51/dense_51/BiasAdd/ReadVariableOp�
model_51/dense_51/BiasAddBiasAdd"model_51/dense_51/MatMul:product:00model_51/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
model_51/dense_51/BiasAdd�
model_51/dense_51/SoftplusSoftplus"model_51/dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
model_51/dense_51/Softplus�
model_51/reshape_103/ShapeShape(model_51/dense_51/Softplus:activations:0*
T0*
_output_shapes
:2
model_51/reshape_103/Shape�
(model_51/reshape_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_51/reshape_103/strided_slice/stack�
*model_51/reshape_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_51/reshape_103/strided_slice/stack_1�
*model_51/reshape_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_51/reshape_103/strided_slice/stack_2�
"model_51/reshape_103/strided_sliceStridedSlice#model_51/reshape_103/Shape:output:01model_51/reshape_103/strided_slice/stack:output:03model_51/reshape_103/strided_slice/stack_1:output:03model_51/reshape_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_51/reshape_103/strided_slice�
$model_51/reshape_103/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_51/reshape_103/Reshape/shape/1�
$model_51/reshape_103/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_51/reshape_103/Reshape/shape/2�
$model_51/reshape_103/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_51/reshape_103/Reshape/shape/3�
$model_51/reshape_103/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_51/reshape_103/Reshape/shape/4�
"model_51/reshape_103/Reshape/shapePack+model_51/reshape_103/strided_slice:output:0-model_51/reshape_103/Reshape/shape/1:output:0-model_51/reshape_103/Reshape/shape/2:output:0-model_51/reshape_103/Reshape/shape/3:output:0-model_51/reshape_103/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_51/reshape_103/Reshape/shape�
model_51/reshape_103/ReshapeReshape(model_51/dense_51/Softplus:activations:0+model_51/reshape_103/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
model_51/reshape_103/Reshape�
%model_51/tf.reshape_352/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_51/tf.reshape_352/Reshape/shape�
model_51/tf.reshape_352/ReshapeReshape%model_51/reshape_103/Reshape:output:0.model_51/tf.reshape_352/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_51/tf.reshape_352/Reshape�
#model_51/tf.tile_176/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_51/tf.tile_176/Tile/multiples�
model_51/tf.tile_176/TileTile(model_51/tf.reshape_352/Reshape:output:0,model_51/tf.tile_176/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_51/tf.tile_176/Tile�
%model_51/tf.reshape_353/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_51/tf.reshape_353/Reshape/shape�
model_51/tf.reshape_353/ReshapeReshape"model_51/tf.tile_176/Tile:output:0.model_51/tf.reshape_353/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_51/tf.reshape_353/Reshape�
"model_51/tf.concat_301/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_51/tf.concat_301/concat/axis�
model_51/tf.concat_301/concatConcatV2(model_51/tf.reshape_353/Reshape:output:0*model_51/conv3d_237/Softplus:activations:0+model_51/tf.concat_301/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_51/tf.concat_301/concat�
)model_51/conv3d_238/Conv3D/ReadVariableOpReadVariableOp2model_51_conv3d_238_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_51/conv3d_238/Conv3D/ReadVariableOp�
model_51/conv3d_238/Conv3DConv3D&model_51/tf.concat_301/concat:output:01model_51/conv3d_238/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_51/conv3d_238/Conv3D�
*model_51/conv3d_238/BiasAdd/ReadVariableOpReadVariableOp3model_51_conv3d_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_51/conv3d_238/BiasAdd/ReadVariableOp�
model_51/conv3d_238/BiasAddBiasAdd#model_51/conv3d_238/Conv3D:output:02model_51/conv3d_238/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_51/conv3d_238/BiasAdd�
model_51/conv3d_238/SoftplusSoftplus$model_51/conv3d_238/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_51/conv3d_238/Softplus�
%model_51/tf.reshape_354/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_51/tf.reshape_354/Reshape/shape�
model_51/tf.reshape_354/ReshapeReshape*model_51/conv3d_238/Softplus:activations:0.model_51/tf.reshape_354/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_51/tf.reshape_354/Reshape�
#model_51/tf.tile_177/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_51/tf.tile_177/Tile/multiples�
model_51/tf.tile_177/TileTile(model_51/tf.reshape_354/Reshape:output:0,model_51/tf.tile_177/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_51/tf.tile_177/Tile�
%model_51/tf.reshape_355/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2'
%model_51/tf.reshape_355/Reshape/shape�
model_51/tf.reshape_355/ReshapeReshape"model_51/tf.tile_177/Tile:output:0.model_51/tf.reshape_355/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2!
model_51/tf.reshape_355/Reshape�
"model_51/tf.concat_302/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_51/tf.concat_302/concat/axis�
model_51/tf.concat_302/concatConcatV2(model_51/tf.reshape_355/Reshape:output:0*model_51/conv3d_236/Softplus:activations:0+model_51/tf.concat_302/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
model_51/tf.concat_302/concat�
)model_51/conv3d_239/Conv3D/ReadVariableOpReadVariableOp2model_51_conv3d_239_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_51/conv3d_239/Conv3D/ReadVariableOp�
model_51/conv3d_239/Conv3DConv3D&model_51/tf.concat_302/concat:output:01model_51/conv3d_239/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
model_51/conv3d_239/Conv3D�
*model_51/conv3d_239/BiasAdd/ReadVariableOpReadVariableOp3model_51_conv3d_239_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_51/conv3d_239/BiasAdd/ReadVariableOp�
model_51/conv3d_239/BiasAddBiasAdd#model_51/conv3d_239/Conv3D:output:02model_51/conv3d_239/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
model_51/conv3d_239/BiasAdd�
model_51/conv3d_239/SoftplusSoftplus$model_51/conv3d_239/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
model_51/conv3d_239/Softplus�
%model_51/tf.reshape_356/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2'
%model_51/tf.reshape_356/Reshape/shape�
model_51/tf.reshape_356/ReshapeReshape*model_51/conv3d_239/Softplus:activations:0.model_51/tf.reshape_356/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2!
model_51/tf.reshape_356/Reshape�
#model_51/tf.tile_178/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_51/tf.tile_178/Tile/multiples�
model_51/tf.tile_178/TileTile(model_51/tf.reshape_356/Reshape:output:0,model_51/tf.tile_178/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
model_51/tf.tile_178/Tile�
%model_51/tf.reshape_357/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2'
%model_51/tf.reshape_357/Reshape/shape�
model_51/tf.reshape_357/ReshapeReshape"model_51/tf.tile_178/Tile:output:0.model_51/tf.reshape_357/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2!
model_51/tf.reshape_357/Reshape�
"model_51/tf.concat_303/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_51/tf.concat_303/concat/axis�
model_51/tf.concat_303/concatConcatV2(model_51/tf.reshape_357/Reshape:output:0*model_51/conv3d_235/Softplus:activations:0+model_51/tf.concat_303/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
model_51/tf.concat_303/concat�
)model_51/conv3d_240/Conv3D/ReadVariableOpReadVariableOp2model_51_conv3d_240_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_51/conv3d_240/Conv3D/ReadVariableOp�
model_51/conv3d_240/Conv3DConv3D&model_51/tf.concat_303/concat:output:01model_51/conv3d_240/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_51/conv3d_240/Conv3D�
*model_51/conv3d_240/BiasAdd/ReadVariableOpReadVariableOp3model_51_conv3d_240_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_51/conv3d_240/BiasAdd/ReadVariableOp�
model_51/conv3d_240/BiasAddBiasAdd#model_51/conv3d_240/Conv3D:output:02model_51/conv3d_240/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_51/conv3d_240/BiasAdd�
model_51/conv3d_240/SoftplusSoftplus$model_51/conv3d_240/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
model_51/conv3d_240/Softplus�
)model_51/conv3d_241/Conv3D/ReadVariableOpReadVariableOp2model_51_conv3d_241_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_51/conv3d_241/Conv3D/ReadVariableOp�
model_51/conv3d_241/Conv3DConv3D*model_51/conv3d_240/Softplus:activations:01model_51/conv3d_241/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_51/conv3d_241/Conv3D�
*model_51/conv3d_241/BiasAdd/ReadVariableOpReadVariableOp3model_51_conv3d_241_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_51/conv3d_241/BiasAdd/ReadVariableOp�
model_51/conv3d_241/BiasAddBiasAdd#model_51/conv3d_241/Conv3D:output:02model_51/conv3d_241/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
model_51/conv3d_241/BiasAdd�
IdentityIdentity$model_51/conv3d_241/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp+^model_51/conv3d_235/BiasAdd/ReadVariableOp*^model_51/conv3d_235/Conv3D/ReadVariableOp+^model_51/conv3d_236/BiasAdd/ReadVariableOp*^model_51/conv3d_236/Conv3D/ReadVariableOp+^model_51/conv3d_237/BiasAdd/ReadVariableOp*^model_51/conv3d_237/Conv3D/ReadVariableOp+^model_51/conv3d_238/BiasAdd/ReadVariableOp*^model_51/conv3d_238/Conv3D/ReadVariableOp+^model_51/conv3d_239/BiasAdd/ReadVariableOp*^model_51/conv3d_239/Conv3D/ReadVariableOp+^model_51/conv3d_240/BiasAdd/ReadVariableOp*^model_51/conv3d_240/Conv3D/ReadVariableOp+^model_51/conv3d_241/BiasAdd/ReadVariableOp*^model_51/conv3d_241/Conv3D/ReadVariableOp)^model_51/dense_51/BiasAdd/ReadVariableOp(^model_51/dense_51/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2X
*model_51/conv3d_235/BiasAdd/ReadVariableOp*model_51/conv3d_235/BiasAdd/ReadVariableOp2V
)model_51/conv3d_235/Conv3D/ReadVariableOp)model_51/conv3d_235/Conv3D/ReadVariableOp2X
*model_51/conv3d_236/BiasAdd/ReadVariableOp*model_51/conv3d_236/BiasAdd/ReadVariableOp2V
)model_51/conv3d_236/Conv3D/ReadVariableOp)model_51/conv3d_236/Conv3D/ReadVariableOp2X
*model_51/conv3d_237/BiasAdd/ReadVariableOp*model_51/conv3d_237/BiasAdd/ReadVariableOp2V
)model_51/conv3d_237/Conv3D/ReadVariableOp)model_51/conv3d_237/Conv3D/ReadVariableOp2X
*model_51/conv3d_238/BiasAdd/ReadVariableOp*model_51/conv3d_238/BiasAdd/ReadVariableOp2V
)model_51/conv3d_238/Conv3D/ReadVariableOp)model_51/conv3d_238/Conv3D/ReadVariableOp2X
*model_51/conv3d_239/BiasAdd/ReadVariableOp*model_51/conv3d_239/BiasAdd/ReadVariableOp2V
)model_51/conv3d_239/Conv3D/ReadVariableOp)model_51/conv3d_239/Conv3D/ReadVariableOp2X
*model_51/conv3d_240/BiasAdd/ReadVariableOp*model_51/conv3d_240/BiasAdd/ReadVariableOp2V
)model_51/conv3d_240/Conv3D/ReadVariableOp)model_51/conv3d_240/Conv3D/ReadVariableOp2X
*model_51/conv3d_241/BiasAdd/ReadVariableOp*model_51/conv3d_241/BiasAdd/ReadVariableOp2V
)model_51/conv3d_241/Conv3D/ReadVariableOp)model_51/conv3d_241/Conv3D/ReadVariableOp2T
(model_51/dense_51/BiasAdd/ReadVariableOp(model_51/dense_51/BiasAdd/ReadVariableOp2R
'model_51/dense_51/MatMul/ReadVariableOp'model_51/dense_51/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
V
6__inference_range_conversion_51_layer_call_fn_12221777

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
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_122206492
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
S
7__inference_average_pooling3d_94_layer_call_fn_12221910

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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_122206092
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
n
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12220682

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
�
+__inference_model_51_layer_call_fn_12220913	
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
F__inference_model_51_layer_call_and_return_conditional_losses_122208782
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
F__inference_model_51_layer_call_and_return_conditional_losses_12221389	
input1
conv3d_235_12221319:!
conv3d_235_12221321:1
conv3d_236_12221325:!
conv3d_236_12221327:1
conv3d_237_12221331:!
conv3d_237_12221333:#
dense_51_12221338:@@
dense_51_12221340:@1
conv3d_238_12221352:!
conv3d_238_12221354:1
conv3d_239_12221365:!
conv3d_239_12221367:1
conv3d_240_12221378:!
conv3d_240_12221380:1
conv3d_241_12221383:!
conv3d_241_12221385:
identity��"conv3d_235/StatefulPartitionedCall�"conv3d_236/StatefulPartitionedCall�"conv3d_237/StatefulPartitionedCall�"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall�"conv3d_241/StatefulPartitionedCall� dense_51/StatefulPartitionedCall�
0tf.__operators__.getitem_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_248/strided_slice/stack�
2tf.__operators__.getitem_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_248/strided_slice/stack_1�
2tf.__operators__.getitem_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_248/strided_slice/stack_2�
*tf.__operators__.getitem_248/strided_sliceStridedSliceinput9tf.__operators__.getitem_248/strided_slice/stack:output:0;tf.__operators__.getitem_248/strided_slice/stack_1:output:0;tf.__operators__.getitem_248/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_248/strided_slice�
#range_conversion_51/PartitionedCallPartitionedCall3tf.__operators__.getitem_248/strided_slice:output:0*
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
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_122206492%
#range_conversion_51/PartitionedCall�
0tf.__operators__.getitem_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_249/strided_slice/stack�
2tf.__operators__.getitem_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_249/strided_slice/stack_1�
2tf.__operators__.getitem_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_249/strided_slice/stack_2�
*tf.__operators__.getitem_249/strided_sliceStridedSliceinput9tf.__operators__.getitem_249/strided_slice/stack:output:0;tf.__operators__.getitem_249/strided_slice/stack_1:output:0;tf.__operators__.getitem_249/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_249/strided_slicex
tf.concat_300/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_300/concat/axis�
tf.concat_300/concatConcatV2,range_conversion_51/PartitionedCall:output:03tf.__operators__.getitem_249/strided_slice:output:0"tf.concat_300/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_300/concat�
"conv3d_235/StatefulPartitionedCallStatefulPartitionedCalltf.concat_300/concat:output:0conv3d_235_12221319conv3d_235_12221321*
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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_122206682$
"conv3d_235/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_235/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_122206822&
$average_pooling3d_92/PartitionedCall�
"conv3d_236/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_236_12221325conv3d_236_12221327*
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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_122206952$
"conv3d_236/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_236/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_122207092&
$average_pooling3d_93/PartitionedCall�
"conv3d_237/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_237_12221331conv3d_237_12221333*
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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_122207222$
"conv3d_237/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_237/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_122207362&
$average_pooling3d_94/PartitionedCall�
reshape_102/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_102_layer_call_and_return_conditional_losses_122207502
reshape_102/PartitionedCall�
 dense_51/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0dense_51_12221338dense_51_12221340*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_122207632"
 dense_51/StatefulPartitionedCall�
reshape_103/PartitionedCallPartitionedCall)dense_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_103_layer_call_and_return_conditional_losses_122207842
reshape_103/PartitionedCall�
tf.reshape_352/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_352/Reshape/shape�
tf.reshape_352/ReshapeReshape$reshape_103/PartitionedCall:output:0%tf.reshape_352/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_352/Reshape�
tf.tile_176/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_176/Tile/multiples�
tf.tile_176/TileTiletf.reshape_352/Reshape:output:0#tf.tile_176/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_176/Tile�
tf.reshape_353/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_353/Reshape/shape�
tf.reshape_353/ReshapeReshapetf.tile_176/Tile:output:0%tf.reshape_353/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_353/Reshapex
tf.concat_301/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_301/concat/axis�
tf.concat_301/concatConcatV2tf.reshape_353/Reshape:output:0+conv3d_237/StatefulPartitionedCall:output:0"tf.concat_301/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_301/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_301/concat:output:0conv3d_238_12221352conv3d_238_12221354*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_122208052$
"conv3d_238/StatefulPartitionedCall�
tf.reshape_354/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_354/Reshape/shape�
tf.reshape_354/ReshapeReshape+conv3d_238/StatefulPartitionedCall:output:0%tf.reshape_354/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_354/Reshape�
tf.tile_177/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_177/Tile/multiples�
tf.tile_177/TileTiletf.reshape_354/Reshape:output:0#tf.tile_177/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_177/Tile�
tf.reshape_355/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_355/Reshape/shape�
tf.reshape_355/ReshapeReshapetf.tile_177/Tile:output:0%tf.reshape_355/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_355/Reshapex
tf.concat_302/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_302/concat/axis�
tf.concat_302/concatConcatV2tf.reshape_355/Reshape:output:0+conv3d_236/StatefulPartitionedCall:output:0"tf.concat_302/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_302/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_302/concat:output:0conv3d_239_12221365conv3d_239_12221367*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_122208302$
"conv3d_239/StatefulPartitionedCall�
tf.reshape_356/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_356/Reshape/shape�
tf.reshape_356/ReshapeReshape+conv3d_239/StatefulPartitionedCall:output:0%tf.reshape_356/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_356/Reshape�
tf.tile_178/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_178/Tile/multiples�
tf.tile_178/TileTiletf.reshape_356/Reshape:output:0#tf.tile_178/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_178/Tile�
tf.reshape_357/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_357/Reshape/shape�
tf.reshape_357/ReshapeReshapetf.tile_178/Tile:output:0%tf.reshape_357/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_357/Reshapex
tf.concat_303/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_303/concat/axis�
tf.concat_303/concatConcatV2tf.reshape_357/Reshape:output:0+conv3d_235/StatefulPartitionedCall:output:0"tf.concat_303/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_303/concat�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCalltf.concat_303/concat:output:0conv3d_240_12221378conv3d_240_12221380*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_122208552$
"conv3d_240/StatefulPartitionedCall�
"conv3d_241/StatefulPartitionedCallStatefulPartitionedCall+conv3d_240/StatefulPartitionedCall:output:0conv3d_241_12221383conv3d_241_12221385*
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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_122208712$
"conv3d_241/StatefulPartitionedCall�
IdentityIdentity+conv3d_241/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_235/StatefulPartitionedCall#^conv3d_236/StatefulPartitionedCall#^conv3d_237/StatefulPartitionedCall#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall#^conv3d_241/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_235/StatefulPartitionedCall"conv3d_235/StatefulPartitionedCall2H
"conv3d_236/StatefulPartitionedCall"conv3d_236/StatefulPartitionedCall2H
"conv3d_237/StatefulPartitionedCall"conv3d_237/StatefulPartitionedCall2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2H
"conv3d_241/StatefulPartitionedCall"conv3d_241/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
S
7__inference_average_pooling3d_92_layer_call_fn_12221819

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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_122206822
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
�x
�
F__inference_model_51_layer_call_and_return_conditional_losses_12221305	
input1
conv3d_235_12221235:!
conv3d_235_12221237:1
conv3d_236_12221241:!
conv3d_236_12221243:1
conv3d_237_12221247:!
conv3d_237_12221249:#
dense_51_12221254:@@
dense_51_12221256:@1
conv3d_238_12221268:!
conv3d_238_12221270:1
conv3d_239_12221281:!
conv3d_239_12221283:1
conv3d_240_12221294:!
conv3d_240_12221296:1
conv3d_241_12221299:!
conv3d_241_12221301:
identity��"conv3d_235/StatefulPartitionedCall�"conv3d_236/StatefulPartitionedCall�"conv3d_237/StatefulPartitionedCall�"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall�"conv3d_241/StatefulPartitionedCall� dense_51/StatefulPartitionedCall�
0tf.__operators__.getitem_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_248/strided_slice/stack�
2tf.__operators__.getitem_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_248/strided_slice/stack_1�
2tf.__operators__.getitem_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_248/strided_slice/stack_2�
*tf.__operators__.getitem_248/strided_sliceStridedSliceinput9tf.__operators__.getitem_248/strided_slice/stack:output:0;tf.__operators__.getitem_248/strided_slice/stack_1:output:0;tf.__operators__.getitem_248/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_248/strided_slice�
#range_conversion_51/PartitionedCallPartitionedCall3tf.__operators__.getitem_248/strided_slice:output:0*
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
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_122206492%
#range_conversion_51/PartitionedCall�
0tf.__operators__.getitem_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_249/strided_slice/stack�
2tf.__operators__.getitem_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_249/strided_slice/stack_1�
2tf.__operators__.getitem_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_249/strided_slice/stack_2�
*tf.__operators__.getitem_249/strided_sliceStridedSliceinput9tf.__operators__.getitem_249/strided_slice/stack:output:0;tf.__operators__.getitem_249/strided_slice/stack_1:output:0;tf.__operators__.getitem_249/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_249/strided_slicex
tf.concat_300/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_300/concat/axis�
tf.concat_300/concatConcatV2,range_conversion_51/PartitionedCall:output:03tf.__operators__.getitem_249/strided_slice:output:0"tf.concat_300/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_300/concat�
"conv3d_235/StatefulPartitionedCallStatefulPartitionedCalltf.concat_300/concat:output:0conv3d_235_12221235conv3d_235_12221237*
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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_122206682$
"conv3d_235/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_235/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_122206822&
$average_pooling3d_92/PartitionedCall�
"conv3d_236/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_236_12221241conv3d_236_12221243*
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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_122206952$
"conv3d_236/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_236/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_122207092&
$average_pooling3d_93/PartitionedCall�
"conv3d_237/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_237_12221247conv3d_237_12221249*
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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_122207222$
"conv3d_237/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_237/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_122207362&
$average_pooling3d_94/PartitionedCall�
reshape_102/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_102_layer_call_and_return_conditional_losses_122207502
reshape_102/PartitionedCall�
 dense_51/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0dense_51_12221254dense_51_12221256*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_122207632"
 dense_51/StatefulPartitionedCall�
reshape_103/PartitionedCallPartitionedCall)dense_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_103_layer_call_and_return_conditional_losses_122207842
reshape_103/PartitionedCall�
tf.reshape_352/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_352/Reshape/shape�
tf.reshape_352/ReshapeReshape$reshape_103/PartitionedCall:output:0%tf.reshape_352/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_352/Reshape�
tf.tile_176/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_176/Tile/multiples�
tf.tile_176/TileTiletf.reshape_352/Reshape:output:0#tf.tile_176/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_176/Tile�
tf.reshape_353/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_353/Reshape/shape�
tf.reshape_353/ReshapeReshapetf.tile_176/Tile:output:0%tf.reshape_353/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_353/Reshapex
tf.concat_301/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_301/concat/axis�
tf.concat_301/concatConcatV2tf.reshape_353/Reshape:output:0+conv3d_237/StatefulPartitionedCall:output:0"tf.concat_301/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_301/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_301/concat:output:0conv3d_238_12221268conv3d_238_12221270*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_122208052$
"conv3d_238/StatefulPartitionedCall�
tf.reshape_354/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_354/Reshape/shape�
tf.reshape_354/ReshapeReshape+conv3d_238/StatefulPartitionedCall:output:0%tf.reshape_354/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_354/Reshape�
tf.tile_177/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_177/Tile/multiples�
tf.tile_177/TileTiletf.reshape_354/Reshape:output:0#tf.tile_177/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_177/Tile�
tf.reshape_355/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_355/Reshape/shape�
tf.reshape_355/ReshapeReshapetf.tile_177/Tile:output:0%tf.reshape_355/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_355/Reshapex
tf.concat_302/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_302/concat/axis�
tf.concat_302/concatConcatV2tf.reshape_355/Reshape:output:0+conv3d_236/StatefulPartitionedCall:output:0"tf.concat_302/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_302/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_302/concat:output:0conv3d_239_12221281conv3d_239_12221283*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_122208302$
"conv3d_239/StatefulPartitionedCall�
tf.reshape_356/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_356/Reshape/shape�
tf.reshape_356/ReshapeReshape+conv3d_239/StatefulPartitionedCall:output:0%tf.reshape_356/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_356/Reshape�
tf.tile_178/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_178/Tile/multiples�
tf.tile_178/TileTiletf.reshape_356/Reshape:output:0#tf.tile_178/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_178/Tile�
tf.reshape_357/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_357/Reshape/shape�
tf.reshape_357/ReshapeReshapetf.tile_178/Tile:output:0%tf.reshape_357/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_357/Reshapex
tf.concat_303/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_303/concat/axis�
tf.concat_303/concatConcatV2tf.reshape_357/Reshape:output:0+conv3d_235/StatefulPartitionedCall:output:0"tf.concat_303/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_303/concat�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCalltf.concat_303/concat:output:0conv3d_240_12221294conv3d_240_12221296*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_122208552$
"conv3d_240/StatefulPartitionedCall�
"conv3d_241/StatefulPartitionedCallStatefulPartitionedCall+conv3d_240/StatefulPartitionedCall:output:0conv3d_241_12221299conv3d_241_12221301*
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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_122208712$
"conv3d_241/StatefulPartitionedCall�
IdentityIdentity+conv3d_241/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_235/StatefulPartitionedCall#^conv3d_236/StatefulPartitionedCall#^conv3d_237/StatefulPartitionedCall#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall#^conv3d_241/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_235/StatefulPartitionedCall"conv3d_235/StatefulPartitionedCall2H
"conv3d_236/StatefulPartitionedCall"conv3d_236/StatefulPartitionedCall2H
"conv3d_237/StatefulPartitionedCall"conv3d_237/StatefulPartitionedCall2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2H
"conv3d_241/StatefulPartitionedCall"conv3d_241/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall:Z V
3
_output_shapes!
:���������  

_user_specified_nameinput
�
�
H__inference_conv3d_238_layer_call_and_return_conditional_losses_12222010

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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12220579

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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12221876

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
+__inference_model_51_layer_call_fn_12221502

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
F__inference_model_51_layer_call_and_return_conditional_losses_122211492
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_12220830

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
n
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12220736

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
7__inference_average_pooling3d_93_layer_call_fn_12221862

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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_122205792
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
S
7__inference_average_pooling3d_94_layer_call_fn_12221915

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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_122207362
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
n
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12221933

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
n
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12220709

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
-__inference_conv3d_240_layer_call_fn_12222039

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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_122208552
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
�
e
I__inference_reshape_103_layer_call_and_return_conditional_losses_12220784

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
�H
�

$__inference__traced_restore_12222198
file_prefix@
"assignvariableop_conv3d_235_kernel:0
"assignvariableop_1_conv3d_235_bias:B
$assignvariableop_2_conv3d_236_kernel:0
"assignvariableop_3_conv3d_236_bias:B
$assignvariableop_4_conv3d_237_kernel:0
"assignvariableop_5_conv3d_237_bias:4
"assignvariableop_6_dense_51_kernel:@@.
 assignvariableop_7_dense_51_bias:@B
$assignvariableop_8_conv3d_238_kernel:0
"assignvariableop_9_conv3d_238_bias:C
%assignvariableop_10_conv3d_239_kernel:1
#assignvariableop_11_conv3d_239_bias:C
%assignvariableop_12_conv3d_240_kernel:1
#assignvariableop_13_conv3d_240_bias:C
%assignvariableop_14_conv3d_241_kernel:1
#assignvariableop_15_conv3d_241_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_235_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_235_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_236_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_236_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_237_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_237_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_51_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_51_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_238_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_238_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_239_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_239_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_240_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_240_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_241_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_241_biasIdentity_15:output:0"/device:CPU:0*
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

n
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12221924

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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12220549

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
-__inference_conv3d_237_layer_call_fn_12221894

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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_122207222
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
�
�
+__inference_dense_51_layer_call_fn_12221959

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
F__inference_dense_51_layer_call_and_return_conditional_losses_122207632
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_12222030

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
�
�
-__inference_conv3d_241_layer_call_fn_12222059

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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_122208712
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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_12221857

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
�
�
-__inference_conv3d_239_layer_call_fn_12222019

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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_122208302
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
n
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12221885

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
F__inference_model_51_layer_call_and_return_conditional_losses_12221772

inputsG
)conv3d_235_conv3d_readvariableop_resource:8
*conv3d_235_biasadd_readvariableop_resource:G
)conv3d_236_conv3d_readvariableop_resource:8
*conv3d_236_biasadd_readvariableop_resource:G
)conv3d_237_conv3d_readvariableop_resource:8
*conv3d_237_biasadd_readvariableop_resource:9
'dense_51_matmul_readvariableop_resource:@@6
(dense_51_biasadd_readvariableop_resource:@G
)conv3d_238_conv3d_readvariableop_resource:8
*conv3d_238_biasadd_readvariableop_resource:G
)conv3d_239_conv3d_readvariableop_resource:8
*conv3d_239_biasadd_readvariableop_resource:G
)conv3d_240_conv3d_readvariableop_resource:8
*conv3d_240_biasadd_readvariableop_resource:G
)conv3d_241_conv3d_readvariableop_resource:8
*conv3d_241_biasadd_readvariableop_resource:
identity��!conv3d_235/BiasAdd/ReadVariableOp� conv3d_235/Conv3D/ReadVariableOp�!conv3d_236/BiasAdd/ReadVariableOp� conv3d_236/Conv3D/ReadVariableOp�!conv3d_237/BiasAdd/ReadVariableOp� conv3d_237/Conv3D/ReadVariableOp�!conv3d_238/BiasAdd/ReadVariableOp� conv3d_238/Conv3D/ReadVariableOp�!conv3d_239/BiasAdd/ReadVariableOp� conv3d_239/Conv3D/ReadVariableOp�!conv3d_240/BiasAdd/ReadVariableOp� conv3d_240/Conv3D/ReadVariableOp�!conv3d_241/BiasAdd/ReadVariableOp� conv3d_241/Conv3D/ReadVariableOp�dense_51/BiasAdd/ReadVariableOp�dense_51/MatMul/ReadVariableOp�
0tf.__operators__.getitem_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_248/strided_slice/stack�
2tf.__operators__.getitem_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_248/strided_slice/stack_1�
2tf.__operators__.getitem_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_248/strided_slice/stack_2�
*tf.__operators__.getitem_248/strided_sliceStridedSliceinputs9tf.__operators__.getitem_248/strided_slice/stack:output:0;tf.__operators__.getitem_248/strided_slice/stack_1:output:0;tf.__operators__.getitem_248/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_248/strided_slice{
range_conversion_51/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_51/sub/y�
range_conversion_51/subSub3tf.__operators__.getitem_248/strided_slice:output:0"range_conversion_51/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/sub�
range_conversion_51/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_51/truediv/y�
range_conversion_51/truedivRealDivrange_conversion_51/sub:z:0&range_conversion_51/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/truediv{
range_conversion_51/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_51/mul/y�
range_conversion_51/mulMulrange_conversion_51/truediv:z:0"range_conversion_51/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/mul{
range_conversion_51/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_51/add/y�
range_conversion_51/addAddV2range_conversion_51/mul:z:0"range_conversion_51/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/add�
0tf.__operators__.getitem_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_249/strided_slice/stack�
2tf.__operators__.getitem_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_249/strided_slice/stack_1�
2tf.__operators__.getitem_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_249/strided_slice/stack_2�
*tf.__operators__.getitem_249/strided_sliceStridedSliceinputs9tf.__operators__.getitem_249/strided_slice/stack:output:0;tf.__operators__.getitem_249/strided_slice/stack_1:output:0;tf.__operators__.getitem_249/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_249/strided_slicex
tf.concat_300/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_300/concat/axis�
tf.concat_300/concatConcatV2range_conversion_51/add:z:03tf.__operators__.getitem_249/strided_slice:output:0"tf.concat_300/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_300/concat�
 conv3d_235/Conv3D/ReadVariableOpReadVariableOp)conv3d_235_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_235/Conv3D/ReadVariableOp�
conv3d_235/Conv3DConv3Dtf.concat_300/concat:output:0(conv3d_235/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_235/Conv3D�
!conv3d_235/BiasAdd/ReadVariableOpReadVariableOp*conv3d_235_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_235/BiasAdd/ReadVariableOp�
conv3d_235/BiasAddBiasAddconv3d_235/Conv3D:output:0)conv3d_235/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_235/BiasAdd�
conv3d_235/SoftplusSoftplusconv3d_235/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_235/Softplus�
#average_pooling3d_92/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_92/transpose/perm�
average_pooling3d_92/transpose	Transpose!conv3d_235/Softplus:activations:0,average_pooling3d_92/transpose/perm:output:0*
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
 conv3d_236/Conv3D/ReadVariableOpReadVariableOp)conv3d_236_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_236/Conv3D/ReadVariableOp�
conv3d_236/Conv3DConv3D$average_pooling3d_92/transpose_1:y:0(conv3d_236/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_236/Conv3D�
!conv3d_236/BiasAdd/ReadVariableOpReadVariableOp*conv3d_236_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_236/BiasAdd/ReadVariableOp�
conv3d_236/BiasAddBiasAddconv3d_236/Conv3D:output:0)conv3d_236/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_236/BiasAdd�
conv3d_236/SoftplusSoftplusconv3d_236/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_236/Softplus�
#average_pooling3d_93/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_93/transpose/perm�
average_pooling3d_93/transpose	Transpose!conv3d_236/Softplus:activations:0,average_pooling3d_93/transpose/perm:output:0*
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
 conv3d_237/Conv3D/ReadVariableOpReadVariableOp)conv3d_237_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_237/Conv3D/ReadVariableOp�
conv3d_237/Conv3DConv3D$average_pooling3d_93/transpose_1:y:0(conv3d_237/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_237/Conv3D�
!conv3d_237/BiasAdd/ReadVariableOpReadVariableOp*conv3d_237_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_237/BiasAdd/ReadVariableOp�
conv3d_237/BiasAddBiasAddconv3d_237/Conv3D:output:0)conv3d_237/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_237/BiasAdd�
conv3d_237/SoftplusSoftplusconv3d_237/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_237/Softplus�
#average_pooling3d_94/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_94/transpose/perm�
average_pooling3d_94/transpose	Transpose!conv3d_237/Softplus:activations:0,average_pooling3d_94/transpose/perm:output:0*
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
 average_pooling3d_94/transpose_1z
reshape_102/ShapeShape$average_pooling3d_94/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_102/Shape�
reshape_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_102/strided_slice/stack�
!reshape_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_102/strided_slice/stack_1�
!reshape_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_102/strided_slice/stack_2�
reshape_102/strided_sliceStridedSlicereshape_102/Shape:output:0(reshape_102/strided_slice/stack:output:0*reshape_102/strided_slice/stack_1:output:0*reshape_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_102/strided_slice|
reshape_102/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_102/Reshape/shape/1�
reshape_102/Reshape/shapePack"reshape_102/strided_slice:output:0$reshape_102/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_102/Reshape/shape�
reshape_102/ReshapeReshape$average_pooling3d_94/transpose_1:y:0"reshape_102/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_102/Reshape�
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_51/MatMul/ReadVariableOp�
dense_51/MatMulMatMulreshape_102/Reshape:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_51/MatMul�
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_51/BiasAdd/ReadVariableOp�
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_51/BiasAdd
dense_51/SoftplusSoftplusdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_51/Softplusu
reshape_103/ShapeShapedense_51/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_103/Shape�
reshape_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_103/strided_slice/stack�
!reshape_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_103/strided_slice/stack_1�
!reshape_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_103/strided_slice/stack_2�
reshape_103/strided_sliceStridedSlicereshape_103/Shape:output:0(reshape_103/strided_slice/stack:output:0*reshape_103/strided_slice/stack_1:output:0*reshape_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_103/strided_slice|
reshape_103/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/1|
reshape_103/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/2|
reshape_103/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/3|
reshape_103/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/4�
reshape_103/Reshape/shapePack"reshape_103/strided_slice:output:0$reshape_103/Reshape/shape/1:output:0$reshape_103/Reshape/shape/2:output:0$reshape_103/Reshape/shape/3:output:0$reshape_103/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_103/Reshape/shape�
reshape_103/ReshapeReshapedense_51/Softplus:activations:0"reshape_103/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_103/Reshape�
tf.reshape_352/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_352/Reshape/shape�
tf.reshape_352/ReshapeReshapereshape_103/Reshape:output:0%tf.reshape_352/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_352/Reshape�
tf.tile_176/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_176/Tile/multiples�
tf.tile_176/TileTiletf.reshape_352/Reshape:output:0#tf.tile_176/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_176/Tile�
tf.reshape_353/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_353/Reshape/shape�
tf.reshape_353/ReshapeReshapetf.tile_176/Tile:output:0%tf.reshape_353/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_353/Reshapex
tf.concat_301/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_301/concat/axis�
tf.concat_301/concatConcatV2tf.reshape_353/Reshape:output:0!conv3d_237/Softplus:activations:0"tf.concat_301/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_301/concat�
 conv3d_238/Conv3D/ReadVariableOpReadVariableOp)conv3d_238_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_238/Conv3D/ReadVariableOp�
conv3d_238/Conv3DConv3Dtf.concat_301/concat:output:0(conv3d_238/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_238/Conv3D�
!conv3d_238/BiasAdd/ReadVariableOpReadVariableOp*conv3d_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_238/BiasAdd/ReadVariableOp�
conv3d_238/BiasAddBiasAddconv3d_238/Conv3D:output:0)conv3d_238/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_238/BiasAdd�
conv3d_238/SoftplusSoftplusconv3d_238/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_238/Softplus�
tf.reshape_354/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_354/Reshape/shape�
tf.reshape_354/ReshapeReshape!conv3d_238/Softplus:activations:0%tf.reshape_354/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_354/Reshape�
tf.tile_177/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_177/Tile/multiples�
tf.tile_177/TileTiletf.reshape_354/Reshape:output:0#tf.tile_177/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_177/Tile�
tf.reshape_355/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_355/Reshape/shape�
tf.reshape_355/ReshapeReshapetf.tile_177/Tile:output:0%tf.reshape_355/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_355/Reshapex
tf.concat_302/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_302/concat/axis�
tf.concat_302/concatConcatV2tf.reshape_355/Reshape:output:0!conv3d_236/Softplus:activations:0"tf.concat_302/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_302/concat�
 conv3d_239/Conv3D/ReadVariableOpReadVariableOp)conv3d_239_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_239/Conv3D/ReadVariableOp�
conv3d_239/Conv3DConv3Dtf.concat_302/concat:output:0(conv3d_239/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_239/Conv3D�
!conv3d_239/BiasAdd/ReadVariableOpReadVariableOp*conv3d_239_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_239/BiasAdd/ReadVariableOp�
conv3d_239/BiasAddBiasAddconv3d_239/Conv3D:output:0)conv3d_239/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_239/BiasAdd�
conv3d_239/SoftplusSoftplusconv3d_239/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_239/Softplus�
tf.reshape_356/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_356/Reshape/shape�
tf.reshape_356/ReshapeReshape!conv3d_239/Softplus:activations:0%tf.reshape_356/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_356/Reshape�
tf.tile_178/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_178/Tile/multiples�
tf.tile_178/TileTiletf.reshape_356/Reshape:output:0#tf.tile_178/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_178/Tile�
tf.reshape_357/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_357/Reshape/shape�
tf.reshape_357/ReshapeReshapetf.tile_178/Tile:output:0%tf.reshape_357/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_357/Reshapex
tf.concat_303/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_303/concat/axis�
tf.concat_303/concatConcatV2tf.reshape_357/Reshape:output:0!conv3d_235/Softplus:activations:0"tf.concat_303/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_303/concat�
 conv3d_240/Conv3D/ReadVariableOpReadVariableOp)conv3d_240_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_240/Conv3D/ReadVariableOp�
conv3d_240/Conv3DConv3Dtf.concat_303/concat:output:0(conv3d_240/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_240/Conv3D�
!conv3d_240/BiasAdd/ReadVariableOpReadVariableOp*conv3d_240_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_240/BiasAdd/ReadVariableOp�
conv3d_240/BiasAddBiasAddconv3d_240/Conv3D:output:0)conv3d_240/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_240/BiasAdd�
conv3d_240/SoftplusSoftplusconv3d_240/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_240/Softplus�
 conv3d_241/Conv3D/ReadVariableOpReadVariableOp)conv3d_241_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_241/Conv3D/ReadVariableOp�
conv3d_241/Conv3DConv3D!conv3d_240/Softplus:activations:0(conv3d_241/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_241/Conv3D�
!conv3d_241/BiasAdd/ReadVariableOpReadVariableOp*conv3d_241_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_241/BiasAdd/ReadVariableOp�
conv3d_241/BiasAddBiasAddconv3d_241/Conv3D:output:0)conv3d_241/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_241/BiasAdd�
IdentityIdentityconv3d_241/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_235/BiasAdd/ReadVariableOp!^conv3d_235/Conv3D/ReadVariableOp"^conv3d_236/BiasAdd/ReadVariableOp!^conv3d_236/Conv3D/ReadVariableOp"^conv3d_237/BiasAdd/ReadVariableOp!^conv3d_237/Conv3D/ReadVariableOp"^conv3d_238/BiasAdd/ReadVariableOp!^conv3d_238/Conv3D/ReadVariableOp"^conv3d_239/BiasAdd/ReadVariableOp!^conv3d_239/Conv3D/ReadVariableOp"^conv3d_240/BiasAdd/ReadVariableOp!^conv3d_240/Conv3D/ReadVariableOp"^conv3d_241/BiasAdd/ReadVariableOp!^conv3d_241/Conv3D/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_235/BiasAdd/ReadVariableOp!conv3d_235/BiasAdd/ReadVariableOp2D
 conv3d_235/Conv3D/ReadVariableOp conv3d_235/Conv3D/ReadVariableOp2F
!conv3d_236/BiasAdd/ReadVariableOp!conv3d_236/BiasAdd/ReadVariableOp2D
 conv3d_236/Conv3D/ReadVariableOp conv3d_236/Conv3D/ReadVariableOp2F
!conv3d_237/BiasAdd/ReadVariableOp!conv3d_237/BiasAdd/ReadVariableOp2D
 conv3d_237/Conv3D/ReadVariableOp conv3d_237/Conv3D/ReadVariableOp2F
!conv3d_238/BiasAdd/ReadVariableOp!conv3d_238/BiasAdd/ReadVariableOp2D
 conv3d_238/Conv3D/ReadVariableOp conv3d_238/Conv3D/ReadVariableOp2F
!conv3d_239/BiasAdd/ReadVariableOp!conv3d_239/BiasAdd/ReadVariableOp2D
 conv3d_239/Conv3D/ReadVariableOp conv3d_239/Conv3D/ReadVariableOp2F
!conv3d_240/BiasAdd/ReadVariableOp!conv3d_240/BiasAdd/ReadVariableOp2D
 conv3d_240/Conv3D/ReadVariableOp conv3d_240/Conv3D/ReadVariableOp2F
!conv3d_241/BiasAdd/ReadVariableOp!conv3d_241/BiasAdd/ReadVariableOp2D
 conv3d_241/Conv3D/ReadVariableOp conv3d_241/Conv3D/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�	
q
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_12221789

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
-__inference_conv3d_238_layer_call_fn_12221999

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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_122208052
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
7__inference_average_pooling3d_93_layer_call_fn_12221867

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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_122207092
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
+__inference_model_51_layer_call_fn_12221221	
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
F__inference_model_51_layer_call_and_return_conditional_losses_122211492
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
F__inference_model_51_layer_call_and_return_conditional_losses_12220878

inputs1
conv3d_235_12220669:!
conv3d_235_12220671:1
conv3d_236_12220696:!
conv3d_236_12220698:1
conv3d_237_12220723:!
conv3d_237_12220725:#
dense_51_12220764:@@
dense_51_12220766:@1
conv3d_238_12220806:!
conv3d_238_12220808:1
conv3d_239_12220831:!
conv3d_239_12220833:1
conv3d_240_12220856:!
conv3d_240_12220858:1
conv3d_241_12220872:!
conv3d_241_12220874:
identity��"conv3d_235/StatefulPartitionedCall�"conv3d_236/StatefulPartitionedCall�"conv3d_237/StatefulPartitionedCall�"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall�"conv3d_241/StatefulPartitionedCall� dense_51/StatefulPartitionedCall�
0tf.__operators__.getitem_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_248/strided_slice/stack�
2tf.__operators__.getitem_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_248/strided_slice/stack_1�
2tf.__operators__.getitem_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_248/strided_slice/stack_2�
*tf.__operators__.getitem_248/strided_sliceStridedSliceinputs9tf.__operators__.getitem_248/strided_slice/stack:output:0;tf.__operators__.getitem_248/strided_slice/stack_1:output:0;tf.__operators__.getitem_248/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_248/strided_slice�
#range_conversion_51/PartitionedCallPartitionedCall3tf.__operators__.getitem_248/strided_slice:output:0*
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
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_122206492%
#range_conversion_51/PartitionedCall�
0tf.__operators__.getitem_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_249/strided_slice/stack�
2tf.__operators__.getitem_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_249/strided_slice/stack_1�
2tf.__operators__.getitem_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_249/strided_slice/stack_2�
*tf.__operators__.getitem_249/strided_sliceStridedSliceinputs9tf.__operators__.getitem_249/strided_slice/stack:output:0;tf.__operators__.getitem_249/strided_slice/stack_1:output:0;tf.__operators__.getitem_249/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_249/strided_slicex
tf.concat_300/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_300/concat/axis�
tf.concat_300/concatConcatV2,range_conversion_51/PartitionedCall:output:03tf.__operators__.getitem_249/strided_slice:output:0"tf.concat_300/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_300/concat�
"conv3d_235/StatefulPartitionedCallStatefulPartitionedCalltf.concat_300/concat:output:0conv3d_235_12220669conv3d_235_12220671*
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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_122206682$
"conv3d_235/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_235/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_122206822&
$average_pooling3d_92/PartitionedCall�
"conv3d_236/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_236_12220696conv3d_236_12220698*
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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_122206952$
"conv3d_236/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_236/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_122207092&
$average_pooling3d_93/PartitionedCall�
"conv3d_237/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_237_12220723conv3d_237_12220725*
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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_122207222$
"conv3d_237/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_237/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_122207362&
$average_pooling3d_94/PartitionedCall�
reshape_102/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_102_layer_call_and_return_conditional_losses_122207502
reshape_102/PartitionedCall�
 dense_51/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0dense_51_12220764dense_51_12220766*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_122207632"
 dense_51/StatefulPartitionedCall�
reshape_103/PartitionedCallPartitionedCall)dense_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_103_layer_call_and_return_conditional_losses_122207842
reshape_103/PartitionedCall�
tf.reshape_352/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_352/Reshape/shape�
tf.reshape_352/ReshapeReshape$reshape_103/PartitionedCall:output:0%tf.reshape_352/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_352/Reshape�
tf.tile_176/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_176/Tile/multiples�
tf.tile_176/TileTiletf.reshape_352/Reshape:output:0#tf.tile_176/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_176/Tile�
tf.reshape_353/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_353/Reshape/shape�
tf.reshape_353/ReshapeReshapetf.tile_176/Tile:output:0%tf.reshape_353/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_353/Reshapex
tf.concat_301/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_301/concat/axis�
tf.concat_301/concatConcatV2tf.reshape_353/Reshape:output:0+conv3d_237/StatefulPartitionedCall:output:0"tf.concat_301/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_301/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_301/concat:output:0conv3d_238_12220806conv3d_238_12220808*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_122208052$
"conv3d_238/StatefulPartitionedCall�
tf.reshape_354/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_354/Reshape/shape�
tf.reshape_354/ReshapeReshape+conv3d_238/StatefulPartitionedCall:output:0%tf.reshape_354/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_354/Reshape�
tf.tile_177/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_177/Tile/multiples�
tf.tile_177/TileTiletf.reshape_354/Reshape:output:0#tf.tile_177/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_177/Tile�
tf.reshape_355/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_355/Reshape/shape�
tf.reshape_355/ReshapeReshapetf.tile_177/Tile:output:0%tf.reshape_355/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_355/Reshapex
tf.concat_302/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_302/concat/axis�
tf.concat_302/concatConcatV2tf.reshape_355/Reshape:output:0+conv3d_236/StatefulPartitionedCall:output:0"tf.concat_302/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_302/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_302/concat:output:0conv3d_239_12220831conv3d_239_12220833*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_122208302$
"conv3d_239/StatefulPartitionedCall�
tf.reshape_356/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_356/Reshape/shape�
tf.reshape_356/ReshapeReshape+conv3d_239/StatefulPartitionedCall:output:0%tf.reshape_356/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_356/Reshape�
tf.tile_178/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_178/Tile/multiples�
tf.tile_178/TileTiletf.reshape_356/Reshape:output:0#tf.tile_178/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_178/Tile�
tf.reshape_357/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_357/Reshape/shape�
tf.reshape_357/ReshapeReshapetf.tile_178/Tile:output:0%tf.reshape_357/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_357/Reshapex
tf.concat_303/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_303/concat/axis�
tf.concat_303/concatConcatV2tf.reshape_357/Reshape:output:0+conv3d_235/StatefulPartitionedCall:output:0"tf.concat_303/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_303/concat�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCalltf.concat_303/concat:output:0conv3d_240_12220856conv3d_240_12220858*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_122208552$
"conv3d_240/StatefulPartitionedCall�
"conv3d_241/StatefulPartitionedCallStatefulPartitionedCall+conv3d_240/StatefulPartitionedCall:output:0conv3d_241_12220872conv3d_241_12220874*
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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_122208712$
"conv3d_241/StatefulPartitionedCall�
IdentityIdentity+conv3d_241/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_235/StatefulPartitionedCall#^conv3d_236/StatefulPartitionedCall#^conv3d_237/StatefulPartitionedCall#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall#^conv3d_241/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_235/StatefulPartitionedCall"conv3d_235/StatefulPartitionedCall2H
"conv3d_236/StatefulPartitionedCall"conv3d_236/StatefulPartitionedCall2H
"conv3d_237/StatefulPartitionedCall"conv3d_237/StatefulPartitionedCall2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2H
"conv3d_241/StatefulPartitionedCall"conv3d_241/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
-__inference_conv3d_236_layer_call_fn_12221846

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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_122206952
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
�
�
-__inference_conv3d_235_layer_call_fn_12221798

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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_122206682
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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_12222069

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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_12220722

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
F__inference_model_51_layer_call_and_return_conditional_losses_12221637

inputsG
)conv3d_235_conv3d_readvariableop_resource:8
*conv3d_235_biasadd_readvariableop_resource:G
)conv3d_236_conv3d_readvariableop_resource:8
*conv3d_236_biasadd_readvariableop_resource:G
)conv3d_237_conv3d_readvariableop_resource:8
*conv3d_237_biasadd_readvariableop_resource:9
'dense_51_matmul_readvariableop_resource:@@6
(dense_51_biasadd_readvariableop_resource:@G
)conv3d_238_conv3d_readvariableop_resource:8
*conv3d_238_biasadd_readvariableop_resource:G
)conv3d_239_conv3d_readvariableop_resource:8
*conv3d_239_biasadd_readvariableop_resource:G
)conv3d_240_conv3d_readvariableop_resource:8
*conv3d_240_biasadd_readvariableop_resource:G
)conv3d_241_conv3d_readvariableop_resource:8
*conv3d_241_biasadd_readvariableop_resource:
identity��!conv3d_235/BiasAdd/ReadVariableOp� conv3d_235/Conv3D/ReadVariableOp�!conv3d_236/BiasAdd/ReadVariableOp� conv3d_236/Conv3D/ReadVariableOp�!conv3d_237/BiasAdd/ReadVariableOp� conv3d_237/Conv3D/ReadVariableOp�!conv3d_238/BiasAdd/ReadVariableOp� conv3d_238/Conv3D/ReadVariableOp�!conv3d_239/BiasAdd/ReadVariableOp� conv3d_239/Conv3D/ReadVariableOp�!conv3d_240/BiasAdd/ReadVariableOp� conv3d_240/Conv3D/ReadVariableOp�!conv3d_241/BiasAdd/ReadVariableOp� conv3d_241/Conv3D/ReadVariableOp�dense_51/BiasAdd/ReadVariableOp�dense_51/MatMul/ReadVariableOp�
0tf.__operators__.getitem_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_248/strided_slice/stack�
2tf.__operators__.getitem_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_248/strided_slice/stack_1�
2tf.__operators__.getitem_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_248/strided_slice/stack_2�
*tf.__operators__.getitem_248/strided_sliceStridedSliceinputs9tf.__operators__.getitem_248/strided_slice/stack:output:0;tf.__operators__.getitem_248/strided_slice/stack_1:output:0;tf.__operators__.getitem_248/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_248/strided_slice{
range_conversion_51/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_51/sub/y�
range_conversion_51/subSub3tf.__operators__.getitem_248/strided_slice:output:0"range_conversion_51/sub/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/sub�
range_conversion_51/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_51/truediv/y�
range_conversion_51/truedivRealDivrange_conversion_51/sub:z:0&range_conversion_51/truediv/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/truediv{
range_conversion_51/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_51/mul/y�
range_conversion_51/mulMulrange_conversion_51/truediv:z:0"range_conversion_51/mul/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/mul{
range_conversion_51/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
range_conversion_51/add/y�
range_conversion_51/addAddV2range_conversion_51/mul:z:0"range_conversion_51/add/y:output:0*
T0*3
_output_shapes!
:���������  2
range_conversion_51/add�
0tf.__operators__.getitem_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_249/strided_slice/stack�
2tf.__operators__.getitem_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_249/strided_slice/stack_1�
2tf.__operators__.getitem_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_249/strided_slice/stack_2�
*tf.__operators__.getitem_249/strided_sliceStridedSliceinputs9tf.__operators__.getitem_249/strided_slice/stack:output:0;tf.__operators__.getitem_249/strided_slice/stack_1:output:0;tf.__operators__.getitem_249/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_249/strided_slicex
tf.concat_300/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_300/concat/axis�
tf.concat_300/concatConcatV2range_conversion_51/add:z:03tf.__operators__.getitem_249/strided_slice:output:0"tf.concat_300/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_300/concat�
 conv3d_235/Conv3D/ReadVariableOpReadVariableOp)conv3d_235_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_235/Conv3D/ReadVariableOp�
conv3d_235/Conv3DConv3Dtf.concat_300/concat:output:0(conv3d_235/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_235/Conv3D�
!conv3d_235/BiasAdd/ReadVariableOpReadVariableOp*conv3d_235_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_235/BiasAdd/ReadVariableOp�
conv3d_235/BiasAddBiasAddconv3d_235/Conv3D:output:0)conv3d_235/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_235/BiasAdd�
conv3d_235/SoftplusSoftplusconv3d_235/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_235/Softplus�
#average_pooling3d_92/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_92/transpose/perm�
average_pooling3d_92/transpose	Transpose!conv3d_235/Softplus:activations:0,average_pooling3d_92/transpose/perm:output:0*
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
 conv3d_236/Conv3D/ReadVariableOpReadVariableOp)conv3d_236_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_236/Conv3D/ReadVariableOp�
conv3d_236/Conv3DConv3D$average_pooling3d_92/transpose_1:y:0(conv3d_236/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_236/Conv3D�
!conv3d_236/BiasAdd/ReadVariableOpReadVariableOp*conv3d_236_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_236/BiasAdd/ReadVariableOp�
conv3d_236/BiasAddBiasAddconv3d_236/Conv3D:output:0)conv3d_236/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_236/BiasAdd�
conv3d_236/SoftplusSoftplusconv3d_236/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_236/Softplus�
#average_pooling3d_93/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_93/transpose/perm�
average_pooling3d_93/transpose	Transpose!conv3d_236/Softplus:activations:0,average_pooling3d_93/transpose/perm:output:0*
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
 conv3d_237/Conv3D/ReadVariableOpReadVariableOp)conv3d_237_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_237/Conv3D/ReadVariableOp�
conv3d_237/Conv3DConv3D$average_pooling3d_93/transpose_1:y:0(conv3d_237/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_237/Conv3D�
!conv3d_237/BiasAdd/ReadVariableOpReadVariableOp*conv3d_237_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_237/BiasAdd/ReadVariableOp�
conv3d_237/BiasAddBiasAddconv3d_237/Conv3D:output:0)conv3d_237/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_237/BiasAdd�
conv3d_237/SoftplusSoftplusconv3d_237/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_237/Softplus�
#average_pooling3d_94/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_94/transpose/perm�
average_pooling3d_94/transpose	Transpose!conv3d_237/Softplus:activations:0,average_pooling3d_94/transpose/perm:output:0*
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
 average_pooling3d_94/transpose_1z
reshape_102/ShapeShape$average_pooling3d_94/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_102/Shape�
reshape_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_102/strided_slice/stack�
!reshape_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_102/strided_slice/stack_1�
!reshape_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_102/strided_slice/stack_2�
reshape_102/strided_sliceStridedSlicereshape_102/Shape:output:0(reshape_102/strided_slice/stack:output:0*reshape_102/strided_slice/stack_1:output:0*reshape_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_102/strided_slice|
reshape_102/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_102/Reshape/shape/1�
reshape_102/Reshape/shapePack"reshape_102/strided_slice:output:0$reshape_102/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_102/Reshape/shape�
reshape_102/ReshapeReshape$average_pooling3d_94/transpose_1:y:0"reshape_102/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
reshape_102/Reshape�
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_51/MatMul/ReadVariableOp�
dense_51/MatMulMatMulreshape_102/Reshape:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_51/MatMul�
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_51/BiasAdd/ReadVariableOp�
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_51/BiasAdd
dense_51/SoftplusSoftplusdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_51/Softplusu
reshape_103/ShapeShapedense_51/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_103/Shape�
reshape_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_103/strided_slice/stack�
!reshape_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_103/strided_slice/stack_1�
!reshape_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_103/strided_slice/stack_2�
reshape_103/strided_sliceStridedSlicereshape_103/Shape:output:0(reshape_103/strided_slice/stack:output:0*reshape_103/strided_slice/stack_1:output:0*reshape_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_103/strided_slice|
reshape_103/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/1|
reshape_103/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/2|
reshape_103/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/3|
reshape_103/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_103/Reshape/shape/4�
reshape_103/Reshape/shapePack"reshape_103/strided_slice:output:0$reshape_103/Reshape/shape/1:output:0$reshape_103/Reshape/shape/2:output:0$reshape_103/Reshape/shape/3:output:0$reshape_103/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_103/Reshape/shape�
reshape_103/ReshapeReshapedense_51/Softplus:activations:0"reshape_103/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
reshape_103/Reshape�
tf.reshape_352/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_352/Reshape/shape�
tf.reshape_352/ReshapeReshapereshape_103/Reshape:output:0%tf.reshape_352/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_352/Reshape�
tf.tile_176/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_176/Tile/multiples�
tf.tile_176/TileTiletf.reshape_352/Reshape:output:0#tf.tile_176/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_176/Tile�
tf.reshape_353/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_353/Reshape/shape�
tf.reshape_353/ReshapeReshapetf.tile_176/Tile:output:0%tf.reshape_353/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_353/Reshapex
tf.concat_301/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_301/concat/axis�
tf.concat_301/concatConcatV2tf.reshape_353/Reshape:output:0!conv3d_237/Softplus:activations:0"tf.concat_301/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_301/concat�
 conv3d_238/Conv3D/ReadVariableOpReadVariableOp)conv3d_238_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_238/Conv3D/ReadVariableOp�
conv3d_238/Conv3DConv3Dtf.concat_301/concat:output:0(conv3d_238/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_238/Conv3D�
!conv3d_238/BiasAdd/ReadVariableOpReadVariableOp*conv3d_238_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_238/BiasAdd/ReadVariableOp�
conv3d_238/BiasAddBiasAddconv3d_238/Conv3D:output:0)conv3d_238/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_238/BiasAdd�
conv3d_238/SoftplusSoftplusconv3d_238/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_238/Softplus�
tf.reshape_354/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_354/Reshape/shape�
tf.reshape_354/ReshapeReshape!conv3d_238/Softplus:activations:0%tf.reshape_354/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_354/Reshape�
tf.tile_177/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_177/Tile/multiples�
tf.tile_177/TileTiletf.reshape_354/Reshape:output:0#tf.tile_177/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_177/Tile�
tf.reshape_355/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_355/Reshape/shape�
tf.reshape_355/ReshapeReshapetf.tile_177/Tile:output:0%tf.reshape_355/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_355/Reshapex
tf.concat_302/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_302/concat/axis�
tf.concat_302/concatConcatV2tf.reshape_355/Reshape:output:0!conv3d_236/Softplus:activations:0"tf.concat_302/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_302/concat�
 conv3d_239/Conv3D/ReadVariableOpReadVariableOp)conv3d_239_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_239/Conv3D/ReadVariableOp�
conv3d_239/Conv3DConv3Dtf.concat_302/concat:output:0(conv3d_239/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_239/Conv3D�
!conv3d_239/BiasAdd/ReadVariableOpReadVariableOp*conv3d_239_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_239/BiasAdd/ReadVariableOp�
conv3d_239/BiasAddBiasAddconv3d_239/Conv3D:output:0)conv3d_239/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������*
data_formatNCHW2
conv3d_239/BiasAdd�
conv3d_239/SoftplusSoftplusconv3d_239/BiasAdd:output:0*
T0*3
_output_shapes!
:���������2
conv3d_239/Softplus�
tf.reshape_356/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_356/Reshape/shape�
tf.reshape_356/ReshapeReshape!conv3d_239/Softplus:activations:0%tf.reshape_356/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_356/Reshape�
tf.tile_178/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_178/Tile/multiples�
tf.tile_178/TileTiletf.reshape_356/Reshape:output:0#tf.tile_178/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_178/Tile�
tf.reshape_357/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_357/Reshape/shape�
tf.reshape_357/ReshapeReshapetf.tile_178/Tile:output:0%tf.reshape_357/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_357/Reshapex
tf.concat_303/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_303/concat/axis�
tf.concat_303/concatConcatV2tf.reshape_357/Reshape:output:0!conv3d_235/Softplus:activations:0"tf.concat_303/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_303/concat�
 conv3d_240/Conv3D/ReadVariableOpReadVariableOp)conv3d_240_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_240/Conv3D/ReadVariableOp�
conv3d_240/Conv3DConv3Dtf.concat_303/concat:output:0(conv3d_240/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_240/Conv3D�
!conv3d_240/BiasAdd/ReadVariableOpReadVariableOp*conv3d_240_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_240/BiasAdd/ReadVariableOp�
conv3d_240/BiasAddBiasAddconv3d_240/Conv3D:output:0)conv3d_240/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_240/BiasAdd�
conv3d_240/SoftplusSoftplusconv3d_240/BiasAdd:output:0*
T0*3
_output_shapes!
:���������  2
conv3d_240/Softplus�
 conv3d_241/Conv3D/ReadVariableOpReadVariableOp)conv3d_241_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_241/Conv3D/ReadVariableOp�
conv3d_241/Conv3DConv3D!conv3d_240/Softplus:activations:0(conv3d_241/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_241/Conv3D�
!conv3d_241/BiasAdd/ReadVariableOpReadVariableOp*conv3d_241_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_241/BiasAdd/ReadVariableOp�
conv3d_241/BiasAddBiasAddconv3d_241/Conv3D:output:0)conv3d_241/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������  *
data_formatNCHW2
conv3d_241/BiasAdd�
IdentityIdentityconv3d_241/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp"^conv3d_235/BiasAdd/ReadVariableOp!^conv3d_235/Conv3D/ReadVariableOp"^conv3d_236/BiasAdd/ReadVariableOp!^conv3d_236/Conv3D/ReadVariableOp"^conv3d_237/BiasAdd/ReadVariableOp!^conv3d_237/Conv3D/ReadVariableOp"^conv3d_238/BiasAdd/ReadVariableOp!^conv3d_238/Conv3D/ReadVariableOp"^conv3d_239/BiasAdd/ReadVariableOp!^conv3d_239/Conv3D/ReadVariableOp"^conv3d_240/BiasAdd/ReadVariableOp!^conv3d_240/Conv3D/ReadVariableOp"^conv3d_241/BiasAdd/ReadVariableOp!^conv3d_241/Conv3D/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2F
!conv3d_235/BiasAdd/ReadVariableOp!conv3d_235/BiasAdd/ReadVariableOp2D
 conv3d_235/Conv3D/ReadVariableOp conv3d_235/Conv3D/ReadVariableOp2F
!conv3d_236/BiasAdd/ReadVariableOp!conv3d_236/BiasAdd/ReadVariableOp2D
 conv3d_236/Conv3D/ReadVariableOp conv3d_236/Conv3D/ReadVariableOp2F
!conv3d_237/BiasAdd/ReadVariableOp!conv3d_237/BiasAdd/ReadVariableOp2D
 conv3d_237/Conv3D/ReadVariableOp conv3d_237/Conv3D/ReadVariableOp2F
!conv3d_238/BiasAdd/ReadVariableOp!conv3d_238/BiasAdd/ReadVariableOp2D
 conv3d_238/Conv3D/ReadVariableOp conv3d_238/Conv3D/ReadVariableOp2F
!conv3d_239/BiasAdd/ReadVariableOp!conv3d_239/BiasAdd/ReadVariableOp2D
 conv3d_239/Conv3D/ReadVariableOp conv3d_239/Conv3D/ReadVariableOp2F
!conv3d_240/BiasAdd/ReadVariableOp!conv3d_240/BiasAdd/ReadVariableOp2D
 conv3d_240/Conv3D/ReadVariableOp conv3d_240/Conv3D/ReadVariableOp2F
!conv3d_241/BiasAdd/ReadVariableOp!conv3d_241/BiasAdd/ReadVariableOp2D
 conv3d_241/Conv3D/ReadVariableOp conv3d_241/Conv3D/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
�
H__inference_conv3d_238_layer_call_and_return_conditional_losses_12220805

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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_12221809

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
&__inference_signature_wrapper_12221428	
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
#__inference__wrapped_model_122205362
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12221837

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
e
I__inference_reshape_102_layer_call_and_return_conditional_losses_12221950

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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_12221905

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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_12222050

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
q
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_12220649

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
�
H__inference_conv3d_240_layer_call_and_return_conditional_losses_12220855

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
�
F__inference_dense_51_layer_call_and_return_conditional_losses_12221970

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
�
e
I__inference_reshape_103_layer_call_and_return_conditional_losses_12221990

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
�-
�
!__inference__traced_save_12222140
file_prefix0
,savev2_conv3d_235_kernel_read_readvariableop.
*savev2_conv3d_235_bias_read_readvariableop0
,savev2_conv3d_236_kernel_read_readvariableop.
*savev2_conv3d_236_bias_read_readvariableop0
,savev2_conv3d_237_kernel_read_readvariableop.
*savev2_conv3d_237_bias_read_readvariableop.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop0
,savev2_conv3d_238_kernel_read_readvariableop.
*savev2_conv3d_238_bias_read_readvariableop0
,savev2_conv3d_239_kernel_read_readvariableop.
*savev2_conv3d_239_bias_read_readvariableop0
,savev2_conv3d_240_kernel_read_readvariableop.
*savev2_conv3d_240_bias_read_readvariableop0
,savev2_conv3d_241_kernel_read_readvariableop.
*savev2_conv3d_241_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_235_kernel_read_readvariableop*savev2_conv3d_235_bias_read_readvariableop,savev2_conv3d_236_kernel_read_readvariableop*savev2_conv3d_236_bias_read_readvariableop,savev2_conv3d_237_kernel_read_readvariableop*savev2_conv3d_237_bias_read_readvariableop*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop,savev2_conv3d_238_kernel_read_readvariableop*savev2_conv3d_238_bias_read_readvariableop,savev2_conv3d_239_kernel_read_readvariableop*savev2_conv3d_239_bias_read_readvariableop,savev2_conv3d_240_kernel_read_readvariableop*savev2_conv3d_240_bias_read_readvariableop,savev2_conv3d_241_kernel_read_readvariableop*savev2_conv3d_241_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�x
�
F__inference_model_51_layer_call_and_return_conditional_losses_12221149

inputs1
conv3d_235_12221079:!
conv3d_235_12221081:1
conv3d_236_12221085:!
conv3d_236_12221087:1
conv3d_237_12221091:!
conv3d_237_12221093:#
dense_51_12221098:@@
dense_51_12221100:@1
conv3d_238_12221112:!
conv3d_238_12221114:1
conv3d_239_12221125:!
conv3d_239_12221127:1
conv3d_240_12221138:!
conv3d_240_12221140:1
conv3d_241_12221143:!
conv3d_241_12221145:
identity��"conv3d_235/StatefulPartitionedCall�"conv3d_236/StatefulPartitionedCall�"conv3d_237/StatefulPartitionedCall�"conv3d_238/StatefulPartitionedCall�"conv3d_239/StatefulPartitionedCall�"conv3d_240/StatefulPartitionedCall�"conv3d_241/StatefulPartitionedCall� dense_51/StatefulPartitionedCall�
0tf.__operators__.getitem_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_248/strided_slice/stack�
2tf.__operators__.getitem_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_248/strided_slice/stack_1�
2tf.__operators__.getitem_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_248/strided_slice/stack_2�
*tf.__operators__.getitem_248/strided_sliceStridedSliceinputs9tf.__operators__.getitem_248/strided_slice/stack:output:0;tf.__operators__.getitem_248/strided_slice/stack_1:output:0;tf.__operators__.getitem_248/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_248/strided_slice�
#range_conversion_51/PartitionedCallPartitionedCall3tf.__operators__.getitem_248/strided_slice:output:0*
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
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_122206492%
#range_conversion_51/PartitionedCall�
0tf.__operators__.getitem_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_249/strided_slice/stack�
2tf.__operators__.getitem_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_249/strided_slice/stack_1�
2tf.__operators__.getitem_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_249/strided_slice/stack_2�
*tf.__operators__.getitem_249/strided_sliceStridedSliceinputs9tf.__operators__.getitem_249/strided_slice/stack:output:0;tf.__operators__.getitem_249/strided_slice/stack_1:output:0;tf.__operators__.getitem_249/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:���������  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_249/strided_slicex
tf.concat_300/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_300/concat/axis�
tf.concat_300/concatConcatV2,range_conversion_51/PartitionedCall:output:03tf.__operators__.getitem_249/strided_slice:output:0"tf.concat_300/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_300/concat�
"conv3d_235/StatefulPartitionedCallStatefulPartitionedCalltf.concat_300/concat:output:0conv3d_235_12221079conv3d_235_12221081*
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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_122206682$
"conv3d_235/StatefulPartitionedCall�
$average_pooling3d_92/PartitionedCallPartitionedCall+conv3d_235/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_122206822&
$average_pooling3d_92/PartitionedCall�
"conv3d_236/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_92/PartitionedCall:output:0conv3d_236_12221085conv3d_236_12221087*
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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_122206952$
"conv3d_236/StatefulPartitionedCall�
$average_pooling3d_93/PartitionedCallPartitionedCall+conv3d_236/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_122207092&
$average_pooling3d_93/PartitionedCall�
"conv3d_237/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_93/PartitionedCall:output:0conv3d_237_12221091conv3d_237_12221093*
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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_122207222$
"conv3d_237/StatefulPartitionedCall�
$average_pooling3d_94/PartitionedCallPartitionedCall+conv3d_237/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_122207362&
$average_pooling3d_94/PartitionedCall�
reshape_102/PartitionedCallPartitionedCall-average_pooling3d_94/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_102_layer_call_and_return_conditional_losses_122207502
reshape_102/PartitionedCall�
 dense_51/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0dense_51_12221098dense_51_12221100*
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
F__inference_dense_51_layer_call_and_return_conditional_losses_122207632"
 dense_51/StatefulPartitionedCall�
reshape_103/PartitionedCallPartitionedCall)dense_51/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_103_layer_call_and_return_conditional_losses_122207842
reshape_103/PartitionedCall�
tf.reshape_352/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_352/Reshape/shape�
tf.reshape_352/ReshapeReshape$reshape_103/PartitionedCall:output:0%tf.reshape_352/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_352/Reshape�
tf.tile_176/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_176/Tile/multiples�
tf.tile_176/TileTiletf.reshape_352/Reshape:output:0#tf.tile_176/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_176/Tile�
tf.reshape_353/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_353/Reshape/shape�
tf.reshape_353/ReshapeReshapetf.tile_176/Tile:output:0%tf.reshape_353/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_353/Reshapex
tf.concat_301/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_301/concat/axis�
tf.concat_301/concatConcatV2tf.reshape_353/Reshape:output:0+conv3d_237/StatefulPartitionedCall:output:0"tf.concat_301/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_301/concat�
"conv3d_238/StatefulPartitionedCallStatefulPartitionedCalltf.concat_301/concat:output:0conv3d_238_12221112conv3d_238_12221114*
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_122208052$
"conv3d_238/StatefulPartitionedCall�
tf.reshape_354/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_354/Reshape/shape�
tf.reshape_354/ReshapeReshape+conv3d_238/StatefulPartitionedCall:output:0%tf.reshape_354/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_354/Reshape�
tf.tile_177/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_177/Tile/multiples�
tf.tile_177/TileTiletf.reshape_354/Reshape:output:0#tf.tile_177/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_177/Tile�
tf.reshape_355/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����            2
tf.reshape_355/Reshape/shape�
tf.reshape_355/ReshapeReshapetf.tile_177/Tile:output:0%tf.reshape_355/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������2
tf.reshape_355/Reshapex
tf.concat_302/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_302/concat/axis�
tf.concat_302/concatConcatV2tf.reshape_355/Reshape:output:0+conv3d_236/StatefulPartitionedCall:output:0"tf.concat_302/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������2
tf.concat_302/concat�
"conv3d_239/StatefulPartitionedCallStatefulPartitionedCalltf.concat_302/concat:output:0conv3d_239_12221125conv3d_239_12221127*
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_122208302$
"conv3d_239/StatefulPartitionedCall�
tf.reshape_356/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" ����                     2
tf.reshape_356/Reshape/shape�
tf.reshape_356/ReshapeReshape+conv3d_239/StatefulPartitionedCall:output:0%tf.reshape_356/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)���������2
tf.reshape_356/Reshape�
tf.tile_178/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_178/Tile/multiples�
tf.tile_178/TileTiletf.reshape_356/Reshape:output:0#tf.tile_178/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)���������2
tf.tile_178/Tile�
tf.reshape_357/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"����              2
tf.reshape_357/Reshape/shape�
tf.reshape_357/ReshapeReshapetf.tile_178/Tile:output:0%tf.reshape_357/Reshape/shape:output:0*
T0*3
_output_shapes!
:���������  2
tf.reshape_357/Reshapex
tf.concat_303/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_303/concat/axis�
tf.concat_303/concatConcatV2tf.reshape_357/Reshape:output:0+conv3d_235/StatefulPartitionedCall:output:0"tf.concat_303/concat/axis:output:0*
N*
T0*3
_output_shapes!
:���������  2
tf.concat_303/concat�
"conv3d_240/StatefulPartitionedCallStatefulPartitionedCalltf.concat_303/concat:output:0conv3d_240_12221138conv3d_240_12221140*
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_122208552$
"conv3d_240/StatefulPartitionedCall�
"conv3d_241/StatefulPartitionedCallStatefulPartitionedCall+conv3d_240/StatefulPartitionedCall:output:0conv3d_241_12221143conv3d_241_12221145*
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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_122208712$
"conv3d_241/StatefulPartitionedCall�
IdentityIdentity+conv3d_241/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:���������  2

Identity�
NoOpNoOp#^conv3d_235/StatefulPartitionedCall#^conv3d_236/StatefulPartitionedCall#^conv3d_237/StatefulPartitionedCall#^conv3d_238/StatefulPartitionedCall#^conv3d_239/StatefulPartitionedCall#^conv3d_240/StatefulPartitionedCall#^conv3d_241/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : 2H
"conv3d_235/StatefulPartitionedCall"conv3d_235/StatefulPartitionedCall2H
"conv3d_236/StatefulPartitionedCall"conv3d_236/StatefulPartitionedCall2H
"conv3d_237/StatefulPartitionedCall"conv3d_237/StatefulPartitionedCall2H
"conv3d_238/StatefulPartitionedCall"conv3d_238/StatefulPartitionedCall2H
"conv3d_239/StatefulPartitionedCall"conv3d_239/StatefulPartitionedCall2H
"conv3d_240/StatefulPartitionedCall"conv3d_240/StatefulPartitionedCall2H
"conv3d_241/StatefulPartitionedCall"conv3d_241/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall:[ W
3
_output_shapes!
:���������  
 
_user_specified_nameinputs
�
J
.__inference_reshape_102_layer_call_fn_12221938

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
GPU2 *0,1,2,3J 8� *R
fMRK
I__inference_reshape_102_layer_call_and_return_conditional_losses_122207502
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12221828

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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_12220695

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
�
S
7__inference_average_pooling3d_92_layer_call_fn_12221814

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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_122205492
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
e
I__inference_reshape_102_layer_call_and_return_conditional_losses_12220750

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

conv3d_241<
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
1:/ 2conv3d_235/kernel
: 2conv3d_235/bias
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
1:/ 2conv3d_236/kernel
: 2conv3d_236/bias
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
1:/ 2conv3d_237/kernel
: 2conv3d_237/bias
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
#:!@@ 2dense_51/kernel
:@ 2dense_51/bias
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
1:/ 2conv3d_238/kernel
: 2conv3d_238/bias
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
1:/ 2conv3d_239/kernel
: 2conv3d_239/bias
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
1:/ 2conv3d_240/kernel
: 2conv3d_240/bias
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
1:/ 2conv3d_241/kernel
: 2conv3d_241/bias
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
+__inference_model_51_layer_call_fn_12220913
+__inference_model_51_layer_call_fn_12221465
+__inference_model_51_layer_call_fn_12221502
+__inference_model_51_layer_call_fn_12221221�
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
F__inference_model_51_layer_call_and_return_conditional_losses_12221637
F__inference_model_51_layer_call_and_return_conditional_losses_12221772
F__inference_model_51_layer_call_and_return_conditional_losses_12221305
F__inference_model_51_layer_call_and_return_conditional_losses_12221389�
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
#__inference__wrapped_model_12220536input"�
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
6__inference_range_conversion_51_layer_call_fn_12221777�
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
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_12221789�
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
-__inference_conv3d_235_layer_call_fn_12221798�
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
H__inference_conv3d_235_layer_call_and_return_conditional_losses_12221809�
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
7__inference_average_pooling3d_92_layer_call_fn_12221814
7__inference_average_pooling3d_92_layer_call_fn_12221819�
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
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12221828
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12221837�
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
-__inference_conv3d_236_layer_call_fn_12221846�
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
H__inference_conv3d_236_layer_call_and_return_conditional_losses_12221857�
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
7__inference_average_pooling3d_93_layer_call_fn_12221862
7__inference_average_pooling3d_93_layer_call_fn_12221867�
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
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12221876
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12221885�
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
-__inference_conv3d_237_layer_call_fn_12221894�
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
H__inference_conv3d_237_layer_call_and_return_conditional_losses_12221905�
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
7__inference_average_pooling3d_94_layer_call_fn_12221910
7__inference_average_pooling3d_94_layer_call_fn_12221915�
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
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12221924
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12221933�
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
.__inference_reshape_102_layer_call_fn_12221938�
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
I__inference_reshape_102_layer_call_and_return_conditional_losses_12221950�
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
+__inference_dense_51_layer_call_fn_12221959�
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
F__inference_dense_51_layer_call_and_return_conditional_losses_12221970�
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
.__inference_reshape_103_layer_call_fn_12221975�
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
I__inference_reshape_103_layer_call_and_return_conditional_losses_12221990�
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
-__inference_conv3d_238_layer_call_fn_12221999�
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
H__inference_conv3d_238_layer_call_and_return_conditional_losses_12222010�
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
-__inference_conv3d_239_layer_call_fn_12222019�
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
H__inference_conv3d_239_layer_call_and_return_conditional_losses_12222030�
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
-__inference_conv3d_240_layer_call_fn_12222039�
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
H__inference_conv3d_240_layer_call_and_return_conditional_losses_12222050�
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
-__inference_conv3d_241_layer_call_fn_12222059�
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
H__inference_conv3d_241_layer_call_and_return_conditional_losses_12222069�
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
&__inference_signature_wrapper_12221428input"�
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
#__inference__wrapped_model_12220536�+,56?@MN[\efopuv:�7
0�-
+�(
input���������  
� "C�@
>

conv3d_2410�-

conv3d_241���������  �
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12221828�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_92_layer_call_and_return_conditional_losses_12221837p;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_92_layer_call_fn_12221814�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_92_layer_call_fn_12221819c;�8
1�.
,�)
inputs���������  
� "$�!����������
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12221876�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_93_layer_call_and_return_conditional_losses_12221885p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_93_layer_call_fn_12221862�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_93_layer_call_fn_12221867c;�8
1�.
,�)
inputs���������
� "$�!����������
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12221924�_�\
U�R
P�M
inputsA���������������������������������������������
� "U�R
K�H
0A���������������������������������������������
� �
R__inference_average_pooling3d_94_layer_call_and_return_conditional_losses_12221933p;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
7__inference_average_pooling3d_94_layer_call_fn_12221910�_�\
U�R
P�M
inputsA���������������������������������������������
� "H�EA����������������������������������������������
7__inference_average_pooling3d_94_layer_call_fn_12221915c;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_235_layer_call_and_return_conditional_losses_12221809t+,;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
-__inference_conv3d_235_layer_call_fn_12221798g+,;�8
1�.
,�)
inputs���������  
� "$�!���������  �
H__inference_conv3d_236_layer_call_and_return_conditional_losses_12221857t56;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_236_layer_call_fn_12221846g56;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_237_layer_call_and_return_conditional_losses_12221905t?@;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_237_layer_call_fn_12221894g?@;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_238_layer_call_and_return_conditional_losses_12222010t[\;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_238_layer_call_fn_12221999g[\;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_239_layer_call_and_return_conditional_losses_12222030tef;�8
1�.
,�)
inputs���������
� "1�.
'�$
0���������
� �
-__inference_conv3d_239_layer_call_fn_12222019gef;�8
1�.
,�)
inputs���������
� "$�!����������
H__inference_conv3d_240_layer_call_and_return_conditional_losses_12222050top;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
-__inference_conv3d_240_layer_call_fn_12222039gop;�8
1�.
,�)
inputs���������  
� "$�!���������  �
H__inference_conv3d_241_layer_call_and_return_conditional_losses_12222069tuv;�8
1�.
,�)
inputs���������  
� "1�.
'�$
0���������  
� �
-__inference_conv3d_241_layer_call_fn_12222059guv;�8
1�.
,�)
inputs���������  
� "$�!���������  �
F__inference_dense_51_layer_call_and_return_conditional_losses_12221970\MN/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_51_layer_call_fn_12221959OMN/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_model_51_layer_call_and_return_conditional_losses_12221305�+,56?@MN[\efopuvB�?
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
F__inference_model_51_layer_call_and_return_conditional_losses_12221389�+,56?@MN[\efopuvB�?
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
F__inference_model_51_layer_call_and_return_conditional_losses_12221637�+,56?@MN[\efopuvC�@
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
F__inference_model_51_layer_call_and_return_conditional_losses_12221772�+,56?@MN[\efopuvC�@
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
+__inference_model_51_layer_call_fn_12220913|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p 

 
� "$�!���������  �
+__inference_model_51_layer_call_fn_12221221|+,56?@MN[\efopuvB�?
8�5
+�(
input���������  
p

 
� "$�!���������  �
+__inference_model_51_layer_call_fn_12221465}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p 

 
� "$�!���������  �
+__inference_model_51_layer_call_fn_12221502}+,56?@MN[\efopuvC�@
9�6
,�)
inputs���������  
p

 
� "$�!���������  �
Q__inference_range_conversion_51_layer_call_and_return_conditional_losses_12221789t?�<
5�2
0�-

parameters���������  
� "1�.
'�$
0���������  
� �
6__inference_range_conversion_51_layer_call_fn_12221777g?�<
5�2
0�-

parameters���������  
� "$�!���������  �
I__inference_reshape_102_layer_call_and_return_conditional_losses_12221950d;�8
1�.
,�)
inputs���������
� "%�"
�
0���������@
� �
.__inference_reshape_102_layer_call_fn_12221938W;�8
1�.
,�)
inputs���������
� "����������@�
I__inference_reshape_103_layer_call_and_return_conditional_losses_12221990d/�,
%�"
 �
inputs���������@
� "1�.
'�$
0���������
� �
.__inference_reshape_103_layer_call_fn_12221975W/�,
%�"
 �
inputs���������@
� "$�!����������
&__inference_signature_wrapper_12221428�+,56?@MN[\efopuvC�@
� 
9�6
4
input+�(
input���������  "C�@
>

conv3d_2410�-

conv3d_241���������  