
ы
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
С
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
ж
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.22v2.6.1-9-gc2363d6d0258Оћ

conv3d_130/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_130/kernel

%conv3d_130/kernel/Read/ReadVariableOpReadVariableOpconv3d_130/kernel**
_output_shapes
:*
dtype0
v
conv3d_130/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_130/bias
o
#conv3d_130/bias/Read/ReadVariableOpReadVariableOpconv3d_130/bias*
_output_shapes
:*
dtype0

conv3d_131/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_131/kernel

%conv3d_131/kernel/Read/ReadVariableOpReadVariableOpconv3d_131/kernel**
_output_shapes
:*
dtype0
v
conv3d_131/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_131/bias
o
#conv3d_131/bias/Read/ReadVariableOpReadVariableOpconv3d_131/bias*
_output_shapes
:*
dtype0

conv3d_132/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_132/kernel

%conv3d_132/kernel/Read/ReadVariableOpReadVariableOpconv3d_132/kernel**
_output_shapes
:*
dtype0
v
conv3d_132/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_132/bias
o
#conv3d_132/bias/Read/ReadVariableOpReadVariableOpconv3d_132/bias*
_output_shapes
:*
dtype0
z
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_46/kernel
s
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel*
_output_shapes

:@@*
dtype0
r
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_46/bias
k
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes
:@*
dtype0

conv3d_133/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_133/kernel

%conv3d_133/kernel/Read/ReadVariableOpReadVariableOpconv3d_133/kernel**
_output_shapes
:*
dtype0
v
conv3d_133/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_133/bias
o
#conv3d_133/bias/Read/ReadVariableOpReadVariableOpconv3d_133/bias*
_output_shapes
:*
dtype0

conv3d_134/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_134/kernel

%conv3d_134/kernel/Read/ReadVariableOpReadVariableOpconv3d_134/kernel**
_output_shapes
:*
dtype0
v
conv3d_134/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_134/bias
o
#conv3d_134/bias/Read/ReadVariableOpReadVariableOpconv3d_134/bias*
_output_shapes
:*
dtype0

conv3d_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_135/kernel

%conv3d_135/kernel/Read/ReadVariableOpReadVariableOpconv3d_135/kernel**
_output_shapes
:*
dtype0
v
conv3d_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_135/bias
o
#conv3d_135/bias/Read/ReadVariableOpReadVariableOpconv3d_135/bias*
_output_shapes
:*
dtype0

conv3d_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_136/kernel

%conv3d_136/kernel/Read/ReadVariableOpReadVariableOpconv3d_136/kernel**
_output_shapes
:*
dtype0
v
conv3d_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_136/bias
o
#conv3d_136/bias/Read/ReadVariableOpReadVariableOpconv3d_136/bias*
_output_shapes
:*
dtype0

NoOpNoOp
;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*б:
valueЧ:BФ: BН:
Ь
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
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
 

$	keras_api
R
%	variables
&trainable_variables
'regularization_losses
(	keras_api

)	keras_api

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
h

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
R
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
R
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
R
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
h

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
R
S	variables
Ttrainable_variables
Uregularization_losses
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
^trainable_variables
_regularization_losses
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
htrainable_variables
iregularization_losses
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
rtrainable_variables
sregularization_losses
t	keras_api
h

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
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
 
­
	variables
{layer_regularization_losses

|layers
 trainable_variables
}non_trainable_variables
~metrics
layer_metrics
!regularization_losses
 
 
 
 
 
В
%	variables
 layer_regularization_losses
layers
&trainable_variables
non_trainable_variables
metrics
layer_metrics
'regularization_losses
 
 
][
VARIABLE_VALUEconv3d_130/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_130/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
В
-	variables
 layer_regularization_losses
layers
.trainable_variables
non_trainable_variables
metrics
layer_metrics
/regularization_losses
 
 
 
В
1	variables
 layer_regularization_losses
layers
2trainable_variables
non_trainable_variables
metrics
layer_metrics
3regularization_losses
][
VARIABLE_VALUEconv3d_131/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_131/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61

50
61
 
В
7	variables
 layer_regularization_losses
layers
8trainable_variables
non_trainable_variables
metrics
layer_metrics
9regularization_losses
 
 
 
В
;	variables
 layer_regularization_losses
layers
<trainable_variables
non_trainable_variables
metrics
layer_metrics
=regularization_losses
][
VARIABLE_VALUEconv3d_132/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_132/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
В
A	variables
 layer_regularization_losses
layers
Btrainable_variables
non_trainable_variables
metrics
layer_metrics
Cregularization_losses
 
 
 
В
E	variables
 layer_regularization_losses
layers
Ftrainable_variables
 non_trainable_variables
Ёmetrics
Ђlayer_metrics
Gregularization_losses
 
 
 
В
I	variables
 Ѓlayer_regularization_losses
Єlayers
Jtrainable_variables
Ѕnon_trainable_variables
Іmetrics
Їlayer_metrics
Kregularization_losses
[Y
VARIABLE_VALUEdense_46/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_46/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

M0
N1

M0
N1
 
В
O	variables
 Јlayer_regularization_losses
Љlayers
Ptrainable_variables
Њnon_trainable_variables
Ћmetrics
Ќlayer_metrics
Qregularization_losses
 
 
 
В
S	variables
 ­layer_regularization_losses
Ўlayers
Ttrainable_variables
Џnon_trainable_variables
Аmetrics
Бlayer_metrics
Uregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv3d_133/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_133/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1

[0
\1
 
В
]	variables
 Вlayer_regularization_losses
Гlayers
^trainable_variables
Дnon_trainable_variables
Еmetrics
Жlayer_metrics
_regularization_losses
 
 
 
 
][
VARIABLE_VALUEconv3d_134/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_134/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1

e0
f1
 
В
g	variables
 Зlayer_regularization_losses
Иlayers
htrainable_variables
Йnon_trainable_variables
Кmetrics
Лlayer_metrics
iregularization_losses
 
 
 
 
][
VARIABLE_VALUEconv3d_135/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_135/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1

o0
p1
 
В
q	variables
 Мlayer_regularization_losses
Нlayers
rtrainable_variables
Оnon_trainable_variables
Пmetrics
Рlayer_metrics
sregularization_losses
][
VARIABLE_VALUEconv3d_136/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_136/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1

u0
v1
 
В
w	variables
 Сlayer_regularization_losses
Тlayers
xtrainable_variables
Уnon_trainable_variables
Фmetrics
Хlayer_metrics
yregularization_losses
 
ц
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

serving_default_inputPlaceholder*3
_output_shapes!
:џџџџџџџџџ  *
dtype0*(
shape:џџџџџџџџџ  

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_130/kernelconv3d_130/biasconv3d_131/kernelconv3d_131/biasconv3d_132/kernelconv3d_132/biasdense_46/kerneldense_46/biasconv3d_133/kernelconv3d_133/biasconv3d_134/kernelconv3d_134/biasconv3d_135/kernelconv3d_135/biasconv3d_136/kernelconv3d_136/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 */
f*R(
&__inference_signature_wrapper_10230960
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_130/kernel/Read/ReadVariableOp#conv3d_130/bias/Read/ReadVariableOp%conv3d_131/kernel/Read/ReadVariableOp#conv3d_131/bias/Read/ReadVariableOp%conv3d_132/kernel/Read/ReadVariableOp#conv3d_132/bias/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOp%conv3d_133/kernel/Read/ReadVariableOp#conv3d_133/bias/Read/ReadVariableOp%conv3d_134/kernel/Read/ReadVariableOp#conv3d_134/bias/Read/ReadVariableOp%conv3d_135/kernel/Read/ReadVariableOp#conv3d_135/bias/Read/ReadVariableOp%conv3d_136/kernel/Read/ReadVariableOp#conv3d_136/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8 **
f%R#
!__inference__traced_save_10231672
Я
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_130/kernelconv3d_130/biasconv3d_131/kernelconv3d_131/biasconv3d_132/kernelconv3d_132/biasdense_46/kerneldense_46/biasconv3d_133/kernelconv3d_133/biasconv3d_134/kernelconv3d_134/biasconv3d_135/kernelconv3d_135/biasconv3d_136/kernelconv3d_136/bias*
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
GPU2 *0,1,2,3J 8 *-
f(R&
$__inference__traced_restore_10231730
Є
S
7__inference_average_pooling3d_42_layer_call_fn_10231346

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_102300812
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

S
7__inference_average_pooling3d_43_layer_call_fn_10231399

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_102302412
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
С
І
-__inference_conv3d_133_layer_call_fn_10231531

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_133_layer_call_and_return_conditional_losses_102303372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10231456

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю

H__inference_conv3d_134_layer_call_and_return_conditional_losses_10230362

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ж

H__inference_conv3d_136_layer_call_and_return_conditional_losses_10230403

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ю

H__inference_conv3d_133_layer_call_and_return_conditional_losses_10231542

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

ї
F__inference_dense_46_layer_call_and_return_conditional_losses_10230295

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
	
n
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10230241

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
С
І
-__inference_conv3d_134_layer_call_fn_10231551

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_134_layer_call_and_return_conditional_losses_102303622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
x
Ћ
F__inference_model_46_layer_call_and_return_conditional_losses_10230410

inputs1
conv3d_130_10230201:!
conv3d_130_10230203:1
conv3d_131_10230228:!
conv3d_131_10230230:1
conv3d_132_10230255:!
conv3d_132_10230257:#
dense_46_10230296:@@
dense_46_10230298:@1
conv3d_133_10230338:!
conv3d_133_10230340:1
conv3d_134_10230363:!
conv3d_134_10230365:1
conv3d_135_10230388:!
conv3d_135_10230390:1
conv3d_136_10230404:!
conv3d_136_10230406:
identityЂ"conv3d_130/StatefulPartitionedCallЂ"conv3d_131/StatefulPartitionedCallЂ"conv3d_132/StatefulPartitionedCallЂ"conv3d_133/StatefulPartitionedCallЂ"conv3d_134/StatefulPartitionedCallЂ"conv3d_135/StatefulPartitionedCallЂ"conv3d_136/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallГ
/tf.__operators__.getitem_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_90/strided_slice/stackЗ
1tf.__operators__.getitem_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_90/strided_slice/stack_1З
1tf.__operators__.getitem_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_90/strided_slice/stack_2
)tf.__operators__.getitem_90/strided_sliceStridedSliceinputs8tf.__operators__.getitem_90/strided_slice/stack:output:0:tf.__operators__.getitem_90/strided_slice/stack_1:output:0:tf.__operators__.getitem_90/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_90/strided_sliceК
#range_conversion_46/PartitionedCallPartitionedCall2tf.__operators__.getitem_90/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_102301812%
#range_conversion_46/PartitionedCallГ
/tf.__operators__.getitem_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_91/strided_slice/stackЗ
1tf.__operators__.getitem_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_91/strided_slice/stack_1З
1tf.__operators__.getitem_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_91/strided_slice/stack_2
)tf.__operators__.getitem_91/strided_sliceStridedSliceinputs8tf.__operators__.getitem_91/strided_slice/stack:output:0:tf.__operators__.getitem_91/strided_slice/stack_1:output:0:tf.__operators__.getitem_91/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_91/strided_slicev
tf.concat_87/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_87/concat/axis
tf.concat_87/concatConcatV2,range_conversion_46/PartitionedCall:output:02tf.__operators__.getitem_91/strided_slice:output:0!tf.concat_87/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_87/concatб
"conv3d_130/StatefulPartitionedCallStatefulPartitionedCalltf.concat_87/concat:output:0conv3d_130_10230201conv3d_130_10230203*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_130_layer_call_and_return_conditional_losses_102302002$
"conv3d_130/StatefulPartitionedCallЖ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_102302142&
$average_pooling3d_42/PartitionedCallт
"conv3d_131/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_131_10230228conv3d_131_10230230*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_131_layer_call_and_return_conditional_losses_102302272$
"conv3d_131/StatefulPartitionedCallЖ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_102302412&
$average_pooling3d_43/PartitionedCallт
"conv3d_132/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_132_10230255conv3d_132_10230257*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_132_layer_call_and_return_conditional_losses_102302542$
"conv3d_132/StatefulPartitionedCallЖ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_102302682&
$average_pooling3d_44/PartitionedCall
reshape_92/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_92_layer_call_and_return_conditional_losses_102302822
reshape_92/PartitionedCallТ
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#reshape_92/PartitionedCall:output:0dense_46_10230296dense_46_10230298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_dense_46_layer_call_and_return_conditional_losses_102302952"
 dense_46/StatefulPartitionedCall
reshape_93/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_93_layer_call_and_return_conditional_losses_102303162
reshape_93/PartitionedCallЃ
tf.reshape_84/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_84/Reshape/shapeЮ
tf.reshape_84/ReshapeReshape#reshape_93/PartitionedCall:output:0$tf.reshape_84/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_84/Reshape
tf.tile_42/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_42/Tile/multiplesИ
tf.tile_42/TileTiletf.reshape_84/Reshape:output:0"tf.tile_42/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_42/Tile
tf.reshape_85/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_85/Reshape/shapeЗ
tf.reshape_85/ReshapeReshapetf.tile_42/Tile:output:0$tf.reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_85/Reshapev
tf.concat_88/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_88/concat/axisэ
tf.concat_88/concatConcatV2tf.reshape_85/Reshape:output:0+conv3d_132/StatefulPartitionedCall:output:0!tf.concat_88/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_88/concatб
"conv3d_133/StatefulPartitionedCallStatefulPartitionedCalltf.concat_88/concat:output:0conv3d_133_10230338conv3d_133_10230340*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_133_layer_call_and_return_conditional_losses_102303372$
"conv3d_133/StatefulPartitionedCallЃ
tf.reshape_86/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_86/Reshape/shapeж
tf.reshape_86/ReshapeReshape+conv3d_133/StatefulPartitionedCall:output:0$tf.reshape_86/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_86/Reshape
tf.tile_43/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_43/Tile/multiplesИ
tf.tile_43/TileTiletf.reshape_86/Reshape:output:0"tf.tile_43/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_43/Tile
tf.reshape_87/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_87/Reshape/shapeЗ
tf.reshape_87/ReshapeReshapetf.tile_43/Tile:output:0$tf.reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_87/Reshapev
tf.concat_89/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_89/concat/axisэ
tf.concat_89/concatConcatV2tf.reshape_87/Reshape:output:0+conv3d_131/StatefulPartitionedCall:output:0!tf.concat_89/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_89/concatб
"conv3d_134/StatefulPartitionedCallStatefulPartitionedCalltf.concat_89/concat:output:0conv3d_134_10230363conv3d_134_10230365*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_134_layer_call_and_return_conditional_losses_102303622$
"conv3d_134/StatefulPartitionedCallЃ
tf.reshape_88/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_88/Reshape/shapeж
tf.reshape_88/ReshapeReshape+conv3d_134/StatefulPartitionedCall:output:0$tf.reshape_88/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_88/Reshape
tf.tile_44/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_44/Tile/multiplesИ
tf.tile_44/TileTiletf.reshape_88/Reshape:output:0"tf.tile_44/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_44/Tile
tf.reshape_89/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_89/Reshape/shapeЗ
tf.reshape_89/ReshapeReshapetf.tile_44/Tile:output:0$tf.reshape_89/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_89/Reshapev
tf.concat_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_90/concat/axisэ
tf.concat_90/concatConcatV2tf.reshape_89/Reshape:output:0+conv3d_130/StatefulPartitionedCall:output:0!tf.concat_90/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_90/concatб
"conv3d_135/StatefulPartitionedCallStatefulPartitionedCalltf.concat_90/concat:output:0conv3d_135_10230388conv3d_135_10230390*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_135_layer_call_and_return_conditional_losses_102303872$
"conv3d_135/StatefulPartitionedCallр
"conv3d_136/StatefulPartitionedCallStatefulPartitionedCall+conv3d_135/StatefulPartitionedCall:output:0conv3d_136_10230404conv3d_136_10230406*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_136_layer_call_and_return_conditional_losses_102304032$
"conv3d_136/StatefulPartitionedCall
IdentityIdentity+conv3d_136/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityє
NoOpNoOp#^conv3d_130/StatefulPartitionedCall#^conv3d_131/StatefulPartitionedCall#^conv3d_132/StatefulPartitionedCall#^conv3d_133/StatefulPartitionedCall#^conv3d_134/StatefulPartitionedCall#^conv3d_135/StatefulPartitionedCall#^conv3d_136/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 2H
"conv3d_130/StatefulPartitionedCall"conv3d_130/StatefulPartitionedCall2H
"conv3d_131/StatefulPartitionedCall"conv3d_131/StatefulPartitionedCall2H
"conv3d_132/StatefulPartitionedCall"conv3d_132/StatefulPartitionedCall2H
"conv3d_133/StatefulPartitionedCall"conv3d_133/StatefulPartitionedCall2H
"conv3d_134/StatefulPartitionedCall"conv3d_134/StatefulPartitionedCall2H
"conv3d_135/StatefulPartitionedCall"conv3d_135/StatefulPartitionedCall2H
"conv3d_136/StatefulPartitionedCall"conv3d_136/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs

d
H__inference_reshape_93_layer_call_and_return_conditional_losses_10230316

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
Reshape/shape/4д
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ю

H__inference_conv3d_134_layer_call_and_return_conditional_losses_10231562

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
и
ъ
+__inference_model_46_layer_call_fn_10230753	
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
identityЂStatefulPartitionedCallЧ
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
:џџџџџџџџџ  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_46_layer_call_and_return_conditional_losses_102306812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ  

_user_specified_nameinput
Ю

H__inference_conv3d_131_layer_call_and_return_conditional_losses_10230227

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
С
І
-__inference_conv3d_132_layer_call_fn_10231426

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_132_layer_call_and_return_conditional_losses_102302542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_92_layer_call_and_return_conditional_losses_10230282

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
value	B :@2
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
:џџџџџџџџџ@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10230081

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
x
Њ
F__inference_model_46_layer_call_and_return_conditional_losses_10230921	
input1
conv3d_130_10230851:!
conv3d_130_10230853:1
conv3d_131_10230857:!
conv3d_131_10230859:1
conv3d_132_10230863:!
conv3d_132_10230865:#
dense_46_10230870:@@
dense_46_10230872:@1
conv3d_133_10230884:!
conv3d_133_10230886:1
conv3d_134_10230897:!
conv3d_134_10230899:1
conv3d_135_10230910:!
conv3d_135_10230912:1
conv3d_136_10230915:!
conv3d_136_10230917:
identityЂ"conv3d_130/StatefulPartitionedCallЂ"conv3d_131/StatefulPartitionedCallЂ"conv3d_132/StatefulPartitionedCallЂ"conv3d_133/StatefulPartitionedCallЂ"conv3d_134/StatefulPartitionedCallЂ"conv3d_135/StatefulPartitionedCallЂ"conv3d_136/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallГ
/tf.__operators__.getitem_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_90/strided_slice/stackЗ
1tf.__operators__.getitem_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_90/strided_slice/stack_1З
1tf.__operators__.getitem_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_90/strided_slice/stack_2
)tf.__operators__.getitem_90/strided_sliceStridedSliceinput8tf.__operators__.getitem_90/strided_slice/stack:output:0:tf.__operators__.getitem_90/strided_slice/stack_1:output:0:tf.__operators__.getitem_90/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_90/strided_sliceК
#range_conversion_46/PartitionedCallPartitionedCall2tf.__operators__.getitem_90/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_102301812%
#range_conversion_46/PartitionedCallГ
/tf.__operators__.getitem_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_91/strided_slice/stackЗ
1tf.__operators__.getitem_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_91/strided_slice/stack_1З
1tf.__operators__.getitem_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_91/strided_slice/stack_2
)tf.__operators__.getitem_91/strided_sliceStridedSliceinput8tf.__operators__.getitem_91/strided_slice/stack:output:0:tf.__operators__.getitem_91/strided_slice/stack_1:output:0:tf.__operators__.getitem_91/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_91/strided_slicev
tf.concat_87/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_87/concat/axis
tf.concat_87/concatConcatV2,range_conversion_46/PartitionedCall:output:02tf.__operators__.getitem_91/strided_slice:output:0!tf.concat_87/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_87/concatб
"conv3d_130/StatefulPartitionedCallStatefulPartitionedCalltf.concat_87/concat:output:0conv3d_130_10230851conv3d_130_10230853*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_130_layer_call_and_return_conditional_losses_102302002$
"conv3d_130/StatefulPartitionedCallЖ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_102302142&
$average_pooling3d_42/PartitionedCallт
"conv3d_131/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_131_10230857conv3d_131_10230859*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_131_layer_call_and_return_conditional_losses_102302272$
"conv3d_131/StatefulPartitionedCallЖ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_102302412&
$average_pooling3d_43/PartitionedCallт
"conv3d_132/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_132_10230863conv3d_132_10230865*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_132_layer_call_and_return_conditional_losses_102302542$
"conv3d_132/StatefulPartitionedCallЖ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_102302682&
$average_pooling3d_44/PartitionedCall
reshape_92/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_92_layer_call_and_return_conditional_losses_102302822
reshape_92/PartitionedCallТ
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#reshape_92/PartitionedCall:output:0dense_46_10230870dense_46_10230872*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_dense_46_layer_call_and_return_conditional_losses_102302952"
 dense_46/StatefulPartitionedCall
reshape_93/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_93_layer_call_and_return_conditional_losses_102303162
reshape_93/PartitionedCallЃ
tf.reshape_84/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_84/Reshape/shapeЮ
tf.reshape_84/ReshapeReshape#reshape_93/PartitionedCall:output:0$tf.reshape_84/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_84/Reshape
tf.tile_42/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_42/Tile/multiplesИ
tf.tile_42/TileTiletf.reshape_84/Reshape:output:0"tf.tile_42/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_42/Tile
tf.reshape_85/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_85/Reshape/shapeЗ
tf.reshape_85/ReshapeReshapetf.tile_42/Tile:output:0$tf.reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_85/Reshapev
tf.concat_88/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_88/concat/axisэ
tf.concat_88/concatConcatV2tf.reshape_85/Reshape:output:0+conv3d_132/StatefulPartitionedCall:output:0!tf.concat_88/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_88/concatб
"conv3d_133/StatefulPartitionedCallStatefulPartitionedCalltf.concat_88/concat:output:0conv3d_133_10230884conv3d_133_10230886*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_133_layer_call_and_return_conditional_losses_102303372$
"conv3d_133/StatefulPartitionedCallЃ
tf.reshape_86/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_86/Reshape/shapeж
tf.reshape_86/ReshapeReshape+conv3d_133/StatefulPartitionedCall:output:0$tf.reshape_86/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_86/Reshape
tf.tile_43/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_43/Tile/multiplesИ
tf.tile_43/TileTiletf.reshape_86/Reshape:output:0"tf.tile_43/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_43/Tile
tf.reshape_87/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_87/Reshape/shapeЗ
tf.reshape_87/ReshapeReshapetf.tile_43/Tile:output:0$tf.reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_87/Reshapev
tf.concat_89/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_89/concat/axisэ
tf.concat_89/concatConcatV2tf.reshape_87/Reshape:output:0+conv3d_131/StatefulPartitionedCall:output:0!tf.concat_89/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_89/concatб
"conv3d_134/StatefulPartitionedCallStatefulPartitionedCalltf.concat_89/concat:output:0conv3d_134_10230897conv3d_134_10230899*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_134_layer_call_and_return_conditional_losses_102303622$
"conv3d_134/StatefulPartitionedCallЃ
tf.reshape_88/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_88/Reshape/shapeж
tf.reshape_88/ReshapeReshape+conv3d_134/StatefulPartitionedCall:output:0$tf.reshape_88/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_88/Reshape
tf.tile_44/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_44/Tile/multiplesИ
tf.tile_44/TileTiletf.reshape_88/Reshape:output:0"tf.tile_44/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_44/Tile
tf.reshape_89/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_89/Reshape/shapeЗ
tf.reshape_89/ReshapeReshapetf.tile_44/Tile:output:0$tf.reshape_89/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_89/Reshapev
tf.concat_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_90/concat/axisэ
tf.concat_90/concatConcatV2tf.reshape_89/Reshape:output:0+conv3d_130/StatefulPartitionedCall:output:0!tf.concat_90/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_90/concatб
"conv3d_135/StatefulPartitionedCallStatefulPartitionedCalltf.concat_90/concat:output:0conv3d_135_10230910conv3d_135_10230912*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_135_layer_call_and_return_conditional_losses_102303872$
"conv3d_135/StatefulPartitionedCallр
"conv3d_136/StatefulPartitionedCallStatefulPartitionedCall+conv3d_135/StatefulPartitionedCall:output:0conv3d_136_10230915conv3d_136_10230917*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_136_layer_call_and_return_conditional_losses_102304032$
"conv3d_136/StatefulPartitionedCall
IdentityIdentity+conv3d_136/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityє
NoOpNoOp#^conv3d_130/StatefulPartitionedCall#^conv3d_131/StatefulPartitionedCall#^conv3d_132/StatefulPartitionedCall#^conv3d_133/StatefulPartitionedCall#^conv3d_134/StatefulPartitionedCall#^conv3d_135/StatefulPartitionedCall#^conv3d_136/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 2H
"conv3d_130/StatefulPartitionedCall"conv3d_130/StatefulPartitionedCall2H
"conv3d_131/StatefulPartitionedCall"conv3d_131/StatefulPartitionedCall2H
"conv3d_132/StatefulPartitionedCall"conv3d_132/StatefulPartitionedCall2H
"conv3d_133/StatefulPartitionedCall"conv3d_133/StatefulPartitionedCall2H
"conv3d_134/StatefulPartitionedCall"conv3d_134/StatefulPartitionedCall2H
"conv3d_135/StatefulPartitionedCall"conv3d_135/StatefulPartitionedCall2H
"conv3d_136/StatefulPartitionedCall"conv3d_136/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ  

_user_specified_nameinput
Ю

H__inference_conv3d_131_layer_call_and_return_conditional_losses_10231389

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
-
њ
!__inference__traced_save_10231672
file_prefix0
,savev2_conv3d_130_kernel_read_readvariableop.
*savev2_conv3d_130_bias_read_readvariableop0
,savev2_conv3d_131_kernel_read_readvariableop.
*savev2_conv3d_131_bias_read_readvariableop0
,savev2_conv3d_132_kernel_read_readvariableop.
*savev2_conv3d_132_bias_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop0
,savev2_conv3d_133_kernel_read_readvariableop.
*savev2_conv3d_133_bias_read_readvariableop0
,savev2_conv3d_134_kernel_read_readvariableop.
*savev2_conv3d_134_bias_read_readvariableop0
,savev2_conv3d_135_kernel_read_readvariableop.
*savev2_conv3d_135_bias_read_readvariableop0
,savev2_conv3d_136_kernel_read_readvariableop.
*savev2_conv3d_136_bias_read_readvariableop
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
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ѓ
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЊ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_130_kernel_read_readvariableop*savev2_conv3d_130_bias_read_readvariableop,savev2_conv3d_131_kernel_read_readvariableop*savev2_conv3d_131_bias_read_readvariableop,savev2_conv3d_132_kernel_read_readvariableop*savev2_conv3d_132_bias_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop,savev2_conv3d_133_kernel_read_readvariableop*savev2_conv3d_133_bias_read_readvariableop,savev2_conv3d_134_kernel_read_readvariableop*savev2_conv3d_134_bias_read_readvariableop,savev2_conv3d_135_kernel_read_readvariableop*savev2_conv3d_135_bias_read_readvariableop,savev2_conv3d_136_kernel_read_readvariableop*savev2_conv3d_136_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*э
_input_shapesл
и: :::::::@@:@::::::::: 2(
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
ч
I
-__inference_reshape_92_layer_call_fn_10231470

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_92_layer_call_and_return_conditional_losses_102302822
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
	
n
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10230214

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ю

H__inference_conv3d_132_layer_call_and_return_conditional_losses_10230254

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
С
І
-__inference_conv3d_130_layer_call_fn_10231330

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_130_layer_call_and_return_conditional_losses_102302002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
з	
q
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_10231321

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
:џџџџџџџџџ  2
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
:џџџџџџџџџ  2	
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
:џџџџџџџџџ  2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :_ [
3
_output_shapes!
:џџџџџџџџџ  
$
_user_specified_name
parameters
H
У

$__inference__traced_restore_10231730
file_prefix@
"assignvariableop_conv3d_130_kernel:0
"assignvariableop_1_conv3d_130_bias:B
$assignvariableop_2_conv3d_131_kernel:0
"assignvariableop_3_conv3d_131_bias:B
$assignvariableop_4_conv3d_132_kernel:0
"assignvariableop_5_conv3d_132_bias:4
"assignvariableop_6_dense_46_kernel:@@.
 assignvariableop_7_dense_46_bias:@B
$assignvariableop_8_conv3d_133_kernel:0
"assignvariableop_9_conv3d_133_bias:C
%assignvariableop_10_conv3d_134_kernel:1
#assignvariableop_11_conv3d_134_bias:C
%assignvariableop_12_conv3d_135_kernel:1
#assignvariableop_13_conv3d_135_bias:C
%assignvariableop_14_conv3d_136_kernel:1
#assignvariableop_15_conv3d_136_bias:
identity_17ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ѓ
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesА
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
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

IdentityЁ
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_130_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ї
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_130_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Љ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_131_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ї
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_131_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Љ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_132_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ї
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_132_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_46_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_46_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Љ
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_133_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ї
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_133_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10­
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_134_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ћ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_134_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12­
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_135_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ћ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_135_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14­
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_136_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ћ
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_136_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpО
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17І
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
Ю

H__inference_conv3d_130_layer_call_and_return_conditional_losses_10230200

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ю

H__inference_conv3d_135_layer_call_and_return_conditional_losses_10231582

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
ж

H__inference_conv3d_136_layer_call_and_return_conditional_losses_10231601

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
л
ы
+__inference_model_46_layer_call_fn_10231034

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
identityЂStatefulPartitionedCallШ
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
:џџџџџџџџџ  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_46_layer_call_and_return_conditional_losses_102306812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
x
Њ
F__inference_model_46_layer_call_and_return_conditional_losses_10230837	
input1
conv3d_130_10230767:!
conv3d_130_10230769:1
conv3d_131_10230773:!
conv3d_131_10230775:1
conv3d_132_10230779:!
conv3d_132_10230781:#
dense_46_10230786:@@
dense_46_10230788:@1
conv3d_133_10230800:!
conv3d_133_10230802:1
conv3d_134_10230813:!
conv3d_134_10230815:1
conv3d_135_10230826:!
conv3d_135_10230828:1
conv3d_136_10230831:!
conv3d_136_10230833:
identityЂ"conv3d_130/StatefulPartitionedCallЂ"conv3d_131/StatefulPartitionedCallЂ"conv3d_132/StatefulPartitionedCallЂ"conv3d_133/StatefulPartitionedCallЂ"conv3d_134/StatefulPartitionedCallЂ"conv3d_135/StatefulPartitionedCallЂ"conv3d_136/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallГ
/tf.__operators__.getitem_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_90/strided_slice/stackЗ
1tf.__operators__.getitem_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_90/strided_slice/stack_1З
1tf.__operators__.getitem_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_90/strided_slice/stack_2
)tf.__operators__.getitem_90/strided_sliceStridedSliceinput8tf.__operators__.getitem_90/strided_slice/stack:output:0:tf.__operators__.getitem_90/strided_slice/stack_1:output:0:tf.__operators__.getitem_90/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_90/strided_sliceК
#range_conversion_46/PartitionedCallPartitionedCall2tf.__operators__.getitem_90/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_102301812%
#range_conversion_46/PartitionedCallГ
/tf.__operators__.getitem_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_91/strided_slice/stackЗ
1tf.__operators__.getitem_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_91/strided_slice/stack_1З
1tf.__operators__.getitem_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_91/strided_slice/stack_2
)tf.__operators__.getitem_91/strided_sliceStridedSliceinput8tf.__operators__.getitem_91/strided_slice/stack:output:0:tf.__operators__.getitem_91/strided_slice/stack_1:output:0:tf.__operators__.getitem_91/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_91/strided_slicev
tf.concat_87/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_87/concat/axis
tf.concat_87/concatConcatV2,range_conversion_46/PartitionedCall:output:02tf.__operators__.getitem_91/strided_slice:output:0!tf.concat_87/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_87/concatб
"conv3d_130/StatefulPartitionedCallStatefulPartitionedCalltf.concat_87/concat:output:0conv3d_130_10230767conv3d_130_10230769*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_130_layer_call_and_return_conditional_losses_102302002$
"conv3d_130/StatefulPartitionedCallЖ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_102302142&
$average_pooling3d_42/PartitionedCallт
"conv3d_131/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_131_10230773conv3d_131_10230775*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_131_layer_call_and_return_conditional_losses_102302272$
"conv3d_131/StatefulPartitionedCallЖ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_102302412&
$average_pooling3d_43/PartitionedCallт
"conv3d_132/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_132_10230779conv3d_132_10230781*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_132_layer_call_and_return_conditional_losses_102302542$
"conv3d_132/StatefulPartitionedCallЖ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_102302682&
$average_pooling3d_44/PartitionedCall
reshape_92/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_92_layer_call_and_return_conditional_losses_102302822
reshape_92/PartitionedCallТ
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#reshape_92/PartitionedCall:output:0dense_46_10230786dense_46_10230788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_dense_46_layer_call_and_return_conditional_losses_102302952"
 dense_46/StatefulPartitionedCall
reshape_93/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_93_layer_call_and_return_conditional_losses_102303162
reshape_93/PartitionedCallЃ
tf.reshape_84/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_84/Reshape/shapeЮ
tf.reshape_84/ReshapeReshape#reshape_93/PartitionedCall:output:0$tf.reshape_84/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_84/Reshape
tf.tile_42/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_42/Tile/multiplesИ
tf.tile_42/TileTiletf.reshape_84/Reshape:output:0"tf.tile_42/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_42/Tile
tf.reshape_85/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_85/Reshape/shapeЗ
tf.reshape_85/ReshapeReshapetf.tile_42/Tile:output:0$tf.reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_85/Reshapev
tf.concat_88/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_88/concat/axisэ
tf.concat_88/concatConcatV2tf.reshape_85/Reshape:output:0+conv3d_132/StatefulPartitionedCall:output:0!tf.concat_88/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_88/concatб
"conv3d_133/StatefulPartitionedCallStatefulPartitionedCalltf.concat_88/concat:output:0conv3d_133_10230800conv3d_133_10230802*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_133_layer_call_and_return_conditional_losses_102303372$
"conv3d_133/StatefulPartitionedCallЃ
tf.reshape_86/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_86/Reshape/shapeж
tf.reshape_86/ReshapeReshape+conv3d_133/StatefulPartitionedCall:output:0$tf.reshape_86/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_86/Reshape
tf.tile_43/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_43/Tile/multiplesИ
tf.tile_43/TileTiletf.reshape_86/Reshape:output:0"tf.tile_43/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_43/Tile
tf.reshape_87/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_87/Reshape/shapeЗ
tf.reshape_87/ReshapeReshapetf.tile_43/Tile:output:0$tf.reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_87/Reshapev
tf.concat_89/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_89/concat/axisэ
tf.concat_89/concatConcatV2tf.reshape_87/Reshape:output:0+conv3d_131/StatefulPartitionedCall:output:0!tf.concat_89/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_89/concatб
"conv3d_134/StatefulPartitionedCallStatefulPartitionedCalltf.concat_89/concat:output:0conv3d_134_10230813conv3d_134_10230815*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_134_layer_call_and_return_conditional_losses_102303622$
"conv3d_134/StatefulPartitionedCallЃ
tf.reshape_88/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_88/Reshape/shapeж
tf.reshape_88/ReshapeReshape+conv3d_134/StatefulPartitionedCall:output:0$tf.reshape_88/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_88/Reshape
tf.tile_44/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_44/Tile/multiplesИ
tf.tile_44/TileTiletf.reshape_88/Reshape:output:0"tf.tile_44/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_44/Tile
tf.reshape_89/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_89/Reshape/shapeЗ
tf.reshape_89/ReshapeReshapetf.tile_44/Tile:output:0$tf.reshape_89/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_89/Reshapev
tf.concat_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_90/concat/axisэ
tf.concat_90/concatConcatV2tf.reshape_89/Reshape:output:0+conv3d_130/StatefulPartitionedCall:output:0!tf.concat_90/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_90/concatб
"conv3d_135/StatefulPartitionedCallStatefulPartitionedCalltf.concat_90/concat:output:0conv3d_135_10230826conv3d_135_10230828*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_135_layer_call_and_return_conditional_losses_102303872$
"conv3d_135/StatefulPartitionedCallр
"conv3d_136/StatefulPartitionedCallStatefulPartitionedCall+conv3d_135/StatefulPartitionedCall:output:0conv3d_136_10230831conv3d_136_10230833*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_136_layer_call_and_return_conditional_losses_102304032$
"conv3d_136/StatefulPartitionedCall
IdentityIdentity+conv3d_136/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityє
NoOpNoOp#^conv3d_130/StatefulPartitionedCall#^conv3d_131/StatefulPartitionedCall#^conv3d_132/StatefulPartitionedCall#^conv3d_133/StatefulPartitionedCall#^conv3d_134/StatefulPartitionedCall#^conv3d_135/StatefulPartitionedCall#^conv3d_136/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 2H
"conv3d_130/StatefulPartitionedCall"conv3d_130/StatefulPartitionedCall2H
"conv3d_131/StatefulPartitionedCall"conv3d_131/StatefulPartitionedCall2H
"conv3d_132/StatefulPartitionedCall"conv3d_132/StatefulPartitionedCall2H
"conv3d_133/StatefulPartitionedCall"conv3d_133/StatefulPartitionedCall2H
"conv3d_134/StatefulPartitionedCall"conv3d_134/StatefulPartitionedCall2H
"conv3d_135/StatefulPartitionedCall"conv3d_135/StatefulPartitionedCall2H
"conv3d_136/StatefulPartitionedCall"conv3d_136/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ  

_user_specified_nameinput
з	
q
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_10230181

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
:џџџџџџџџџ  2
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
:џџџџџџџџџ  2	
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
:џџџџџџџџџ  2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :_ [
3
_output_shapes!
:џџџџџџџџџ  
$
_user_specified_name
parameters
л
ы
+__inference_model_46_layer_call_fn_10230997

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
identityЂStatefulPartitionedCallШ
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
:џџџџџџџџџ  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_46_layer_call_and_return_conditional_losses_102304102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
С
І
-__inference_conv3d_131_layer_call_fn_10231378

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_131_layer_call_and_return_conditional_losses_102302272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю

H__inference_conv3d_132_layer_call_and_return_conditional_losses_10231437

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10230141

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
С
І
-__inference_conv3d_136_layer_call_fn_10231591

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_136_layer_call_and_return_conditional_losses_102304032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
x
Ћ
F__inference_model_46_layer_call_and_return_conditional_losses_10230681

inputs1
conv3d_130_10230611:!
conv3d_130_10230613:1
conv3d_131_10230617:!
conv3d_131_10230619:1
conv3d_132_10230623:!
conv3d_132_10230625:#
dense_46_10230630:@@
dense_46_10230632:@1
conv3d_133_10230644:!
conv3d_133_10230646:1
conv3d_134_10230657:!
conv3d_134_10230659:1
conv3d_135_10230670:!
conv3d_135_10230672:1
conv3d_136_10230675:!
conv3d_136_10230677:
identityЂ"conv3d_130/StatefulPartitionedCallЂ"conv3d_131/StatefulPartitionedCallЂ"conv3d_132/StatefulPartitionedCallЂ"conv3d_133/StatefulPartitionedCallЂ"conv3d_134/StatefulPartitionedCallЂ"conv3d_135/StatefulPartitionedCallЂ"conv3d_136/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallГ
/tf.__operators__.getitem_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_90/strided_slice/stackЗ
1tf.__operators__.getitem_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_90/strided_slice/stack_1З
1tf.__operators__.getitem_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_90/strided_slice/stack_2
)tf.__operators__.getitem_90/strided_sliceStridedSliceinputs8tf.__operators__.getitem_90/strided_slice/stack:output:0:tf.__operators__.getitem_90/strided_slice/stack_1:output:0:tf.__operators__.getitem_90/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_90/strided_sliceК
#range_conversion_46/PartitionedCallPartitionedCall2tf.__operators__.getitem_90/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_102301812%
#range_conversion_46/PartitionedCallГ
/tf.__operators__.getitem_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_91/strided_slice/stackЗ
1tf.__operators__.getitem_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_91/strided_slice/stack_1З
1tf.__operators__.getitem_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_91/strided_slice/stack_2
)tf.__operators__.getitem_91/strided_sliceStridedSliceinputs8tf.__operators__.getitem_91/strided_slice/stack:output:0:tf.__operators__.getitem_91/strided_slice/stack_1:output:0:tf.__operators__.getitem_91/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_91/strided_slicev
tf.concat_87/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_87/concat/axis
tf.concat_87/concatConcatV2,range_conversion_46/PartitionedCall:output:02tf.__operators__.getitem_91/strided_slice:output:0!tf.concat_87/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_87/concatб
"conv3d_130/StatefulPartitionedCallStatefulPartitionedCalltf.concat_87/concat:output:0conv3d_130_10230611conv3d_130_10230613*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_130_layer_call_and_return_conditional_losses_102302002$
"conv3d_130/StatefulPartitionedCallЖ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_102302142&
$average_pooling3d_42/PartitionedCallт
"conv3d_131/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_131_10230617conv3d_131_10230619*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_131_layer_call_and_return_conditional_losses_102302272$
"conv3d_131/StatefulPartitionedCallЖ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_102302412&
$average_pooling3d_43/PartitionedCallт
"conv3d_132/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_132_10230623conv3d_132_10230625*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_132_layer_call_and_return_conditional_losses_102302542$
"conv3d_132/StatefulPartitionedCallЖ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_132/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_102302682&
$average_pooling3d_44/PartitionedCall
reshape_92/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_92_layer_call_and_return_conditional_losses_102302822
reshape_92/PartitionedCallТ
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#reshape_92/PartitionedCall:output:0dense_46_10230630dense_46_10230632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_dense_46_layer_call_and_return_conditional_losses_102302952"
 dense_46/StatefulPartitionedCall
reshape_93/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_93_layer_call_and_return_conditional_losses_102303162
reshape_93/PartitionedCallЃ
tf.reshape_84/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_84/Reshape/shapeЮ
tf.reshape_84/ReshapeReshape#reshape_93/PartitionedCall:output:0$tf.reshape_84/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_84/Reshape
tf.tile_42/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_42/Tile/multiplesИ
tf.tile_42/TileTiletf.reshape_84/Reshape:output:0"tf.tile_42/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_42/Tile
tf.reshape_85/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_85/Reshape/shapeЗ
tf.reshape_85/ReshapeReshapetf.tile_42/Tile:output:0$tf.reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_85/Reshapev
tf.concat_88/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_88/concat/axisэ
tf.concat_88/concatConcatV2tf.reshape_85/Reshape:output:0+conv3d_132/StatefulPartitionedCall:output:0!tf.concat_88/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_88/concatб
"conv3d_133/StatefulPartitionedCallStatefulPartitionedCalltf.concat_88/concat:output:0conv3d_133_10230644conv3d_133_10230646*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_133_layer_call_and_return_conditional_losses_102303372$
"conv3d_133/StatefulPartitionedCallЃ
tf.reshape_86/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_86/Reshape/shapeж
tf.reshape_86/ReshapeReshape+conv3d_133/StatefulPartitionedCall:output:0$tf.reshape_86/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_86/Reshape
tf.tile_43/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_43/Tile/multiplesИ
tf.tile_43/TileTiletf.reshape_86/Reshape:output:0"tf.tile_43/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_43/Tile
tf.reshape_87/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_87/Reshape/shapeЗ
tf.reshape_87/ReshapeReshapetf.tile_43/Tile:output:0$tf.reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_87/Reshapev
tf.concat_89/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_89/concat/axisэ
tf.concat_89/concatConcatV2tf.reshape_87/Reshape:output:0+conv3d_131/StatefulPartitionedCall:output:0!tf.concat_89/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_89/concatб
"conv3d_134/StatefulPartitionedCallStatefulPartitionedCalltf.concat_89/concat:output:0conv3d_134_10230657conv3d_134_10230659*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_134_layer_call_and_return_conditional_losses_102303622$
"conv3d_134/StatefulPartitionedCallЃ
tf.reshape_88/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_88/Reshape/shapeж
tf.reshape_88/ReshapeReshape+conv3d_134/StatefulPartitionedCall:output:0$tf.reshape_88/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_88/Reshape
tf.tile_44/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_44/Tile/multiplesИ
tf.tile_44/TileTiletf.reshape_88/Reshape:output:0"tf.tile_44/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_44/Tile
tf.reshape_89/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_89/Reshape/shapeЗ
tf.reshape_89/ReshapeReshapetf.tile_44/Tile:output:0$tf.reshape_89/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_89/Reshapev
tf.concat_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_90/concat/axisэ
tf.concat_90/concatConcatV2tf.reshape_89/Reshape:output:0+conv3d_130/StatefulPartitionedCall:output:0!tf.concat_90/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_90/concatб
"conv3d_135/StatefulPartitionedCallStatefulPartitionedCalltf.concat_90/concat:output:0conv3d_135_10230670conv3d_135_10230672*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_135_layer_call_and_return_conditional_losses_102303872$
"conv3d_135/StatefulPartitionedCallр
"conv3d_136/StatefulPartitionedCallStatefulPartitionedCall+conv3d_135/StatefulPartitionedCall:output:0conv3d_136_10230675conv3d_136_10230677*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_136_layer_call_and_return_conditional_losses_102304032$
"conv3d_136/StatefulPartitionedCall
IdentityIdentity+conv3d_136/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityє
NoOpNoOp#^conv3d_130/StatefulPartitionedCall#^conv3d_131/StatefulPartitionedCall#^conv3d_132/StatefulPartitionedCall#^conv3d_133/StatefulPartitionedCall#^conv3d_134/StatefulPartitionedCall#^conv3d_135/StatefulPartitionedCall#^conv3d_136/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 2H
"conv3d_130/StatefulPartitionedCall"conv3d_130/StatefulPartitionedCall2H
"conv3d_131/StatefulPartitionedCall"conv3d_131/StatefulPartitionedCall2H
"conv3d_132/StatefulPartitionedCall"conv3d_132/StatefulPartitionedCall2H
"conv3d_133/StatefulPartitionedCall"conv3d_133/StatefulPartitionedCall2H
"conv3d_134/StatefulPartitionedCall"conv3d_134/StatefulPartitionedCall2H
"conv3d_135/StatefulPartitionedCall"conv3d_135/StatefulPartitionedCall2H
"conv3d_136/StatefulPartitionedCall"conv3d_136/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs

S
7__inference_average_pooling3d_42_layer_call_fn_10231351

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_102302142
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs

d
H__inference_reshape_93_layer_call_and_return_conditional_losses_10231522

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
Reshape/shape/4д
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
и
ъ
+__inference_model_46_layer_call_fn_10230445	
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
identityЂStatefulPartitionedCallЧ
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
:џџџџџџџџџ  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_46_layer_call_and_return_conditional_losses_102304102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ  

_user_specified_nameinput
	
n
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10231465

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю

H__inference_conv3d_133_layer_call_and_return_conditional_losses_10230337

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

V
6__inference_range_conversion_46_layer_call_fn_10231309

parameters
identityъ
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_102301812
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :_ [
3
_output_shapes!
:џџџџџџџџџ  
$
_user_specified_name
parameters
ЫЦ
Ё
F__inference_model_46_layer_call_and_return_conditional_losses_10231169

inputsG
)conv3d_130_conv3d_readvariableop_resource:8
*conv3d_130_biasadd_readvariableop_resource:G
)conv3d_131_conv3d_readvariableop_resource:8
*conv3d_131_biasadd_readvariableop_resource:G
)conv3d_132_conv3d_readvariableop_resource:8
*conv3d_132_biasadd_readvariableop_resource:9
'dense_46_matmul_readvariableop_resource:@@6
(dense_46_biasadd_readvariableop_resource:@G
)conv3d_133_conv3d_readvariableop_resource:8
*conv3d_133_biasadd_readvariableop_resource:G
)conv3d_134_conv3d_readvariableop_resource:8
*conv3d_134_biasadd_readvariableop_resource:G
)conv3d_135_conv3d_readvariableop_resource:8
*conv3d_135_biasadd_readvariableop_resource:G
)conv3d_136_conv3d_readvariableop_resource:8
*conv3d_136_biasadd_readvariableop_resource:
identityЂ!conv3d_130/BiasAdd/ReadVariableOpЂ conv3d_130/Conv3D/ReadVariableOpЂ!conv3d_131/BiasAdd/ReadVariableOpЂ conv3d_131/Conv3D/ReadVariableOpЂ!conv3d_132/BiasAdd/ReadVariableOpЂ conv3d_132/Conv3D/ReadVariableOpЂ!conv3d_133/BiasAdd/ReadVariableOpЂ conv3d_133/Conv3D/ReadVariableOpЂ!conv3d_134/BiasAdd/ReadVariableOpЂ conv3d_134/Conv3D/ReadVariableOpЂ!conv3d_135/BiasAdd/ReadVariableOpЂ conv3d_135/Conv3D/ReadVariableOpЂ!conv3d_136/BiasAdd/ReadVariableOpЂ conv3d_136/Conv3D/ReadVariableOpЂdense_46/BiasAdd/ReadVariableOpЂdense_46/MatMul/ReadVariableOpГ
/tf.__operators__.getitem_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_90/strided_slice/stackЗ
1tf.__operators__.getitem_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_90/strided_slice/stack_1З
1tf.__operators__.getitem_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_90/strided_slice/stack_2
)tf.__operators__.getitem_90/strided_sliceStridedSliceinputs8tf.__operators__.getitem_90/strided_slice/stack:output:0:tf.__operators__.getitem_90/strided_slice/stack_1:output:0:tf.__operators__.getitem_90/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_90/strided_slice{
range_conversion_46/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_46/sub/yЯ
range_conversion_46/subSub2tf.__operators__.getitem_90/strided_slice:output:0"range_conversion_46/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/sub
range_conversion_46/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_46/truediv/yШ
range_conversion_46/truedivRealDivrange_conversion_46/sub:z:0&range_conversion_46/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/truediv{
range_conversion_46/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_46/mul/yМ
range_conversion_46/mulMulrange_conversion_46/truediv:z:0"range_conversion_46/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/mul{
range_conversion_46/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_46/add/yК
range_conversion_46/addAddV2range_conversion_46/mul:z:0"range_conversion_46/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/addГ
/tf.__operators__.getitem_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_91/strided_slice/stackЗ
1tf.__operators__.getitem_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_91/strided_slice/stack_1З
1tf.__operators__.getitem_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_91/strided_slice/stack_2
)tf.__operators__.getitem_91/strided_sliceStridedSliceinputs8tf.__operators__.getitem_91/strided_slice/stack:output:0:tf.__operators__.getitem_91/strided_slice/stack_1:output:0:tf.__operators__.getitem_91/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_91/strided_slicev
tf.concat_87/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_87/concat/axisё
tf.concat_87/concatConcatV2range_conversion_46/add:z:02tf.__operators__.getitem_91/strided_slice:output:0!tf.concat_87/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_87/concatК
 conv3d_130/Conv3D/ReadVariableOpReadVariableOp)conv3d_130_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_130/Conv3D/ReadVariableOpї
conv3d_130/Conv3DConv3Dtf.concat_87/concat:output:0(conv3d_130/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_130/Conv3D­
!conv3d_130/BiasAdd/ReadVariableOpReadVariableOp*conv3d_130_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_130/BiasAdd/ReadVariableOpЯ
conv3d_130/BiasAddBiasAddconv3d_130/Conv3D:output:0)conv3d_130/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_130/BiasAdd
conv3d_130/SoftplusSoftplusconv3d_130/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_130/SoftplusЇ
#average_pooling3d_42/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_42/transpose/permм
average_pooling3d_42/transpose	Transpose!conv3d_130/Softplus:activations:0,average_pooling3d_42/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_42/transposeэ
average_pooling3d_42/AvgPool3D	AvgPool3D"average_pooling3d_42/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_42/AvgPool3DЋ
%average_pooling3d_42/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_42/transpose_1/permш
 average_pooling3d_42/transpose_1	Transpose'average_pooling3d_42/AvgPool3D:output:0.average_pooling3d_42/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_42/transpose_1К
 conv3d_131/Conv3D/ReadVariableOpReadVariableOp)conv3d_131_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_131/Conv3D/ReadVariableOpџ
conv3d_131/Conv3DConv3D$average_pooling3d_42/transpose_1:y:0(conv3d_131/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_131/Conv3D­
!conv3d_131/BiasAdd/ReadVariableOpReadVariableOp*conv3d_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_131/BiasAdd/ReadVariableOpЯ
conv3d_131/BiasAddBiasAddconv3d_131/Conv3D:output:0)conv3d_131/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_131/BiasAdd
conv3d_131/SoftplusSoftplusconv3d_131/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_131/SoftplusЇ
#average_pooling3d_43/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_43/transpose/permм
average_pooling3d_43/transpose	Transpose!conv3d_131/Softplus:activations:0,average_pooling3d_43/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_43/transposeэ
average_pooling3d_43/AvgPool3D	AvgPool3D"average_pooling3d_43/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_43/AvgPool3DЋ
%average_pooling3d_43/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_43/transpose_1/permш
 average_pooling3d_43/transpose_1	Transpose'average_pooling3d_43/AvgPool3D:output:0.average_pooling3d_43/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_43/transpose_1К
 conv3d_132/Conv3D/ReadVariableOpReadVariableOp)conv3d_132_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_132/Conv3D/ReadVariableOpџ
conv3d_132/Conv3DConv3D$average_pooling3d_43/transpose_1:y:0(conv3d_132/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_132/Conv3D­
!conv3d_132/BiasAdd/ReadVariableOpReadVariableOp*conv3d_132_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_132/BiasAdd/ReadVariableOpЯ
conv3d_132/BiasAddBiasAddconv3d_132/Conv3D:output:0)conv3d_132/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_132/BiasAdd
conv3d_132/SoftplusSoftplusconv3d_132/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_132/SoftplusЇ
#average_pooling3d_44/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_44/transpose/permм
average_pooling3d_44/transpose	Transpose!conv3d_132/Softplus:activations:0,average_pooling3d_44/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_44/transposeэ
average_pooling3d_44/AvgPool3D	AvgPool3D"average_pooling3d_44/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_44/AvgPool3DЋ
%average_pooling3d_44/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_44/transpose_1/permш
 average_pooling3d_44/transpose_1	Transpose'average_pooling3d_44/AvgPool3D:output:0.average_pooling3d_44/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_44/transpose_1x
reshape_92/ShapeShape$average_pooling3d_44/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_92/Shape
reshape_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_92/strided_slice/stack
 reshape_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_92/strided_slice/stack_1
 reshape_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_92/strided_slice/stack_2Є
reshape_92/strided_sliceStridedSlicereshape_92/Shape:output:0'reshape_92/strided_slice/stack:output:0)reshape_92/strided_slice/stack_1:output:0)reshape_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_92/strided_slicez
reshape_92/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_92/Reshape/shape/1В
reshape_92/Reshape/shapePack!reshape_92/strided_slice:output:0#reshape_92/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_92/Reshape/shapeЎ
reshape_92/ReshapeReshape$average_pooling3d_44/transpose_1:y:0!reshape_92/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_92/ReshapeЈ
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_46/MatMul/ReadVariableOpЃ
dense_46/MatMulMatMulreshape_92/Reshape:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_46/MatMulЇ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_46/BiasAdd/ReadVariableOpЅ
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_46/BiasAdd
dense_46/SoftplusSoftplusdense_46/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_46/Softpluss
reshape_93/ShapeShapedense_46/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_93/Shape
reshape_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_93/strided_slice/stack
 reshape_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_93/strided_slice/stack_1
 reshape_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_93/strided_slice/stack_2Є
reshape_93/strided_sliceStridedSlicereshape_93/Shape:output:0'reshape_93/strided_slice/stack:output:0)reshape_93/strided_slice/stack_1:output:0)reshape_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_93/strided_slicez
reshape_93/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/1z
reshape_93/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/2z
reshape_93/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/3z
reshape_93/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/4Ё
reshape_93/Reshape/shapePack!reshape_93/strided_slice:output:0#reshape_93/Reshape/shape/1:output:0#reshape_93/Reshape/shape/2:output:0#reshape_93/Reshape/shape/3:output:0#reshape_93/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_93/Reshape/shapeЕ
reshape_93/ReshapeReshapedense_46/Softplus:activations:0!reshape_93/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_93/ReshapeЃ
tf.reshape_84/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_84/Reshape/shapeЦ
tf.reshape_84/ReshapeReshapereshape_93/Reshape:output:0$tf.reshape_84/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_84/Reshape
tf.tile_42/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_42/Tile/multiplesИ
tf.tile_42/TileTiletf.reshape_84/Reshape:output:0"tf.tile_42/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_42/Tile
tf.reshape_85/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_85/Reshape/shapeЗ
tf.reshape_85/ReshapeReshapetf.tile_42/Tile:output:0$tf.reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_85/Reshapev
tf.concat_88/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_88/concat/axisу
tf.concat_88/concatConcatV2tf.reshape_85/Reshape:output:0!conv3d_132/Softplus:activations:0!tf.concat_88/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_88/concatК
 conv3d_133/Conv3D/ReadVariableOpReadVariableOp)conv3d_133_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_133/Conv3D/ReadVariableOpї
conv3d_133/Conv3DConv3Dtf.concat_88/concat:output:0(conv3d_133/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_133/Conv3D­
!conv3d_133/BiasAdd/ReadVariableOpReadVariableOp*conv3d_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_133/BiasAdd/ReadVariableOpЯ
conv3d_133/BiasAddBiasAddconv3d_133/Conv3D:output:0)conv3d_133/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_133/BiasAdd
conv3d_133/SoftplusSoftplusconv3d_133/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_133/SoftplusЃ
tf.reshape_86/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_86/Reshape/shapeЬ
tf.reshape_86/ReshapeReshape!conv3d_133/Softplus:activations:0$tf.reshape_86/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_86/Reshape
tf.tile_43/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_43/Tile/multiplesИ
tf.tile_43/TileTiletf.reshape_86/Reshape:output:0"tf.tile_43/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_43/Tile
tf.reshape_87/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_87/Reshape/shapeЗ
tf.reshape_87/ReshapeReshapetf.tile_43/Tile:output:0$tf.reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_87/Reshapev
tf.concat_89/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_89/concat/axisу
tf.concat_89/concatConcatV2tf.reshape_87/Reshape:output:0!conv3d_131/Softplus:activations:0!tf.concat_89/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_89/concatК
 conv3d_134/Conv3D/ReadVariableOpReadVariableOp)conv3d_134_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_134/Conv3D/ReadVariableOpї
conv3d_134/Conv3DConv3Dtf.concat_89/concat:output:0(conv3d_134/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_134/Conv3D­
!conv3d_134/BiasAdd/ReadVariableOpReadVariableOp*conv3d_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_134/BiasAdd/ReadVariableOpЯ
conv3d_134/BiasAddBiasAddconv3d_134/Conv3D:output:0)conv3d_134/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_134/BiasAdd
conv3d_134/SoftplusSoftplusconv3d_134/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_134/SoftplusЃ
tf.reshape_88/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_88/Reshape/shapeЬ
tf.reshape_88/ReshapeReshape!conv3d_134/Softplus:activations:0$tf.reshape_88/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_88/Reshape
tf.tile_44/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_44/Tile/multiplesИ
tf.tile_44/TileTiletf.reshape_88/Reshape:output:0"tf.tile_44/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_44/Tile
tf.reshape_89/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_89/Reshape/shapeЗ
tf.reshape_89/ReshapeReshapetf.tile_44/Tile:output:0$tf.reshape_89/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_89/Reshapev
tf.concat_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_90/concat/axisу
tf.concat_90/concatConcatV2tf.reshape_89/Reshape:output:0!conv3d_130/Softplus:activations:0!tf.concat_90/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_90/concatК
 conv3d_135/Conv3D/ReadVariableOpReadVariableOp)conv3d_135_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_135/Conv3D/ReadVariableOpї
conv3d_135/Conv3DConv3Dtf.concat_90/concat:output:0(conv3d_135/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_135/Conv3D­
!conv3d_135/BiasAdd/ReadVariableOpReadVariableOp*conv3d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_135/BiasAdd/ReadVariableOpЯ
conv3d_135/BiasAddBiasAddconv3d_135/Conv3D:output:0)conv3d_135/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_135/BiasAdd
conv3d_135/SoftplusSoftplusconv3d_135/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_135/SoftplusК
 conv3d_136/Conv3D/ReadVariableOpReadVariableOp)conv3d_136_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_136/Conv3D/ReadVariableOpќ
conv3d_136/Conv3DConv3D!conv3d_135/Softplus:activations:0(conv3d_136/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_136/Conv3D­
!conv3d_136/BiasAdd/ReadVariableOpReadVariableOp*conv3d_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_136/BiasAdd/ReadVariableOpЯ
conv3d_136/BiasAddBiasAddconv3d_136/Conv3D:output:0)conv3d_136/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_136/BiasAdd
IdentityIdentityconv3d_136/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp"^conv3d_130/BiasAdd/ReadVariableOp!^conv3d_130/Conv3D/ReadVariableOp"^conv3d_131/BiasAdd/ReadVariableOp!^conv3d_131/Conv3D/ReadVariableOp"^conv3d_132/BiasAdd/ReadVariableOp!^conv3d_132/Conv3D/ReadVariableOp"^conv3d_133/BiasAdd/ReadVariableOp!^conv3d_133/Conv3D/ReadVariableOp"^conv3d_134/BiasAdd/ReadVariableOp!^conv3d_134/Conv3D/ReadVariableOp"^conv3d_135/BiasAdd/ReadVariableOp!^conv3d_135/Conv3D/ReadVariableOp"^conv3d_136/BiasAdd/ReadVariableOp!^conv3d_136/Conv3D/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 2F
!conv3d_130/BiasAdd/ReadVariableOp!conv3d_130/BiasAdd/ReadVariableOp2D
 conv3d_130/Conv3D/ReadVariableOp conv3d_130/Conv3D/ReadVariableOp2F
!conv3d_131/BiasAdd/ReadVariableOp!conv3d_131/BiasAdd/ReadVariableOp2D
 conv3d_131/Conv3D/ReadVariableOp conv3d_131/Conv3D/ReadVariableOp2F
!conv3d_132/BiasAdd/ReadVariableOp!conv3d_132/BiasAdd/ReadVariableOp2D
 conv3d_132/Conv3D/ReadVariableOp conv3d_132/Conv3D/ReadVariableOp2F
!conv3d_133/BiasAdd/ReadVariableOp!conv3d_133/BiasAdd/ReadVariableOp2D
 conv3d_133/Conv3D/ReadVariableOp conv3d_133/Conv3D/ReadVariableOp2F
!conv3d_134/BiasAdd/ReadVariableOp!conv3d_134/BiasAdd/ReadVariableOp2D
 conv3d_134/Conv3D/ReadVariableOp conv3d_134/Conv3D/ReadVariableOp2F
!conv3d_135/BiasAdd/ReadVariableOp!conv3d_135/BiasAdd/ReadVariableOp2D
 conv3d_135/Conv3D/ReadVariableOp conv3d_135/Conv3D/ReadVariableOp2F
!conv3d_136/BiasAdd/ReadVariableOp!conv3d_136/BiasAdd/ReadVariableOp2D
 conv3d_136/Conv3D/ReadVariableOp conv3d_136/Conv3D/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
	
n
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10230268

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
	
n
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10231417

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
С
І
-__inference_conv3d_135_layer_call_fn_10231571

inputs%
unknown:
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_135_layer_call_and_return_conditional_losses_102303872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
ч
I
-__inference_reshape_93_layer_call_fn_10231507

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_reshape_93_layer_call_and_return_conditional_losses_102303162
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ЫЦ
Ё
F__inference_model_46_layer_call_and_return_conditional_losses_10231304

inputsG
)conv3d_130_conv3d_readvariableop_resource:8
*conv3d_130_biasadd_readvariableop_resource:G
)conv3d_131_conv3d_readvariableop_resource:8
*conv3d_131_biasadd_readvariableop_resource:G
)conv3d_132_conv3d_readvariableop_resource:8
*conv3d_132_biasadd_readvariableop_resource:9
'dense_46_matmul_readvariableop_resource:@@6
(dense_46_biasadd_readvariableop_resource:@G
)conv3d_133_conv3d_readvariableop_resource:8
*conv3d_133_biasadd_readvariableop_resource:G
)conv3d_134_conv3d_readvariableop_resource:8
*conv3d_134_biasadd_readvariableop_resource:G
)conv3d_135_conv3d_readvariableop_resource:8
*conv3d_135_biasadd_readvariableop_resource:G
)conv3d_136_conv3d_readvariableop_resource:8
*conv3d_136_biasadd_readvariableop_resource:
identityЂ!conv3d_130/BiasAdd/ReadVariableOpЂ conv3d_130/Conv3D/ReadVariableOpЂ!conv3d_131/BiasAdd/ReadVariableOpЂ conv3d_131/Conv3D/ReadVariableOpЂ!conv3d_132/BiasAdd/ReadVariableOpЂ conv3d_132/Conv3D/ReadVariableOpЂ!conv3d_133/BiasAdd/ReadVariableOpЂ conv3d_133/Conv3D/ReadVariableOpЂ!conv3d_134/BiasAdd/ReadVariableOpЂ conv3d_134/Conv3D/ReadVariableOpЂ!conv3d_135/BiasAdd/ReadVariableOpЂ conv3d_135/Conv3D/ReadVariableOpЂ!conv3d_136/BiasAdd/ReadVariableOpЂ conv3d_136/Conv3D/ReadVariableOpЂdense_46/BiasAdd/ReadVariableOpЂdense_46/MatMul/ReadVariableOpГ
/tf.__operators__.getitem_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/tf.__operators__.getitem_90/strided_slice/stackЗ
1tf.__operators__.getitem_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_90/strided_slice/stack_1З
1tf.__operators__.getitem_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_90/strided_slice/stack_2
)tf.__operators__.getitem_90/strided_sliceStridedSliceinputs8tf.__operators__.getitem_90/strided_slice/stack:output:0:tf.__operators__.getitem_90/strided_slice/stack_1:output:0:tf.__operators__.getitem_90/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_90/strided_slice{
range_conversion_46/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_46/sub/yЯ
range_conversion_46/subSub2tf.__operators__.getitem_90/strided_slice:output:0"range_conversion_46/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/sub
range_conversion_46/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_46/truediv/yШ
range_conversion_46/truedivRealDivrange_conversion_46/sub:z:0&range_conversion_46/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/truediv{
range_conversion_46/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_46/mul/yМ
range_conversion_46/mulMulrange_conversion_46/truediv:z:0"range_conversion_46/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/mul{
range_conversion_46/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_46/add/yК
range_conversion_46/addAddV2range_conversion_46/mul:z:0"range_conversion_46/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
range_conversion_46/addГ
/tf.__operators__.getitem_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/tf.__operators__.getitem_91/strided_slice/stackЗ
1tf.__operators__.getitem_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1tf.__operators__.getitem_91/strided_slice/stack_1З
1tf.__operators__.getitem_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1tf.__operators__.getitem_91/strided_slice/stack_2
)tf.__operators__.getitem_91/strided_sliceStridedSliceinputs8tf.__operators__.getitem_91/strided_slice/stack:output:0:tf.__operators__.getitem_91/strided_slice/stack_1:output:0:tf.__operators__.getitem_91/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask2+
)tf.__operators__.getitem_91/strided_slicev
tf.concat_87/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_87/concat/axisё
tf.concat_87/concatConcatV2range_conversion_46/add:z:02tf.__operators__.getitem_91/strided_slice:output:0!tf.concat_87/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_87/concatК
 conv3d_130/Conv3D/ReadVariableOpReadVariableOp)conv3d_130_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_130/Conv3D/ReadVariableOpї
conv3d_130/Conv3DConv3Dtf.concat_87/concat:output:0(conv3d_130/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_130/Conv3D­
!conv3d_130/BiasAdd/ReadVariableOpReadVariableOp*conv3d_130_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_130/BiasAdd/ReadVariableOpЯ
conv3d_130/BiasAddBiasAddconv3d_130/Conv3D:output:0)conv3d_130/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_130/BiasAdd
conv3d_130/SoftplusSoftplusconv3d_130/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_130/SoftplusЇ
#average_pooling3d_42/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_42/transpose/permм
average_pooling3d_42/transpose	Transpose!conv3d_130/Softplus:activations:0,average_pooling3d_42/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_42/transposeэ
average_pooling3d_42/AvgPool3D	AvgPool3D"average_pooling3d_42/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_42/AvgPool3DЋ
%average_pooling3d_42/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_42/transpose_1/permш
 average_pooling3d_42/transpose_1	Transpose'average_pooling3d_42/AvgPool3D:output:0.average_pooling3d_42/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_42/transpose_1К
 conv3d_131/Conv3D/ReadVariableOpReadVariableOp)conv3d_131_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_131/Conv3D/ReadVariableOpџ
conv3d_131/Conv3DConv3D$average_pooling3d_42/transpose_1:y:0(conv3d_131/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_131/Conv3D­
!conv3d_131/BiasAdd/ReadVariableOpReadVariableOp*conv3d_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_131/BiasAdd/ReadVariableOpЯ
conv3d_131/BiasAddBiasAddconv3d_131/Conv3D:output:0)conv3d_131/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_131/BiasAdd
conv3d_131/SoftplusSoftplusconv3d_131/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_131/SoftplusЇ
#average_pooling3d_43/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_43/transpose/permм
average_pooling3d_43/transpose	Transpose!conv3d_131/Softplus:activations:0,average_pooling3d_43/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_43/transposeэ
average_pooling3d_43/AvgPool3D	AvgPool3D"average_pooling3d_43/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_43/AvgPool3DЋ
%average_pooling3d_43/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_43/transpose_1/permш
 average_pooling3d_43/transpose_1	Transpose'average_pooling3d_43/AvgPool3D:output:0.average_pooling3d_43/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_43/transpose_1К
 conv3d_132/Conv3D/ReadVariableOpReadVariableOp)conv3d_132_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_132/Conv3D/ReadVariableOpџ
conv3d_132/Conv3DConv3D$average_pooling3d_43/transpose_1:y:0(conv3d_132/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_132/Conv3D­
!conv3d_132/BiasAdd/ReadVariableOpReadVariableOp*conv3d_132_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_132/BiasAdd/ReadVariableOpЯ
conv3d_132/BiasAddBiasAddconv3d_132/Conv3D:output:0)conv3d_132/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_132/BiasAdd
conv3d_132/SoftplusSoftplusconv3d_132/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_132/SoftplusЇ
#average_pooling3d_44/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_44/transpose/permм
average_pooling3d_44/transpose	Transpose!conv3d_132/Softplus:activations:0,average_pooling3d_44/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_44/transposeэ
average_pooling3d_44/AvgPool3D	AvgPool3D"average_pooling3d_44/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_44/AvgPool3DЋ
%average_pooling3d_44/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_44/transpose_1/permш
 average_pooling3d_44/transpose_1	Transpose'average_pooling3d_44/AvgPool3D:output:0.average_pooling3d_44/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_44/transpose_1x
reshape_92/ShapeShape$average_pooling3d_44/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_92/Shape
reshape_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_92/strided_slice/stack
 reshape_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_92/strided_slice/stack_1
 reshape_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_92/strided_slice/stack_2Є
reshape_92/strided_sliceStridedSlicereshape_92/Shape:output:0'reshape_92/strided_slice/stack:output:0)reshape_92/strided_slice/stack_1:output:0)reshape_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_92/strided_slicez
reshape_92/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_92/Reshape/shape/1В
reshape_92/Reshape/shapePack!reshape_92/strided_slice:output:0#reshape_92/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_92/Reshape/shapeЎ
reshape_92/ReshapeReshape$average_pooling3d_44/transpose_1:y:0!reshape_92/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_92/ReshapeЈ
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_46/MatMul/ReadVariableOpЃ
dense_46/MatMulMatMulreshape_92/Reshape:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_46/MatMulЇ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_46/BiasAdd/ReadVariableOpЅ
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_46/BiasAdd
dense_46/SoftplusSoftplusdense_46/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_46/Softpluss
reshape_93/ShapeShapedense_46/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_93/Shape
reshape_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_93/strided_slice/stack
 reshape_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_93/strided_slice/stack_1
 reshape_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_93/strided_slice/stack_2Є
reshape_93/strided_sliceStridedSlicereshape_93/Shape:output:0'reshape_93/strided_slice/stack:output:0)reshape_93/strided_slice/stack_1:output:0)reshape_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_93/strided_slicez
reshape_93/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/1z
reshape_93/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/2z
reshape_93/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/3z
reshape_93/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_93/Reshape/shape/4Ё
reshape_93/Reshape/shapePack!reshape_93/strided_slice:output:0#reshape_93/Reshape/shape/1:output:0#reshape_93/Reshape/shape/2:output:0#reshape_93/Reshape/shape/3:output:0#reshape_93/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_93/Reshape/shapeЕ
reshape_93/ReshapeReshapedense_46/Softplus:activations:0!reshape_93/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_93/ReshapeЃ
tf.reshape_84/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_84/Reshape/shapeЦ
tf.reshape_84/ReshapeReshapereshape_93/Reshape:output:0$tf.reshape_84/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_84/Reshape
tf.tile_42/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_42/Tile/multiplesИ
tf.tile_42/TileTiletf.reshape_84/Reshape:output:0"tf.tile_42/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_42/Tile
tf.reshape_85/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_85/Reshape/shapeЗ
tf.reshape_85/ReshapeReshapetf.tile_42/Tile:output:0$tf.reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_85/Reshapev
tf.concat_88/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_88/concat/axisу
tf.concat_88/concatConcatV2tf.reshape_85/Reshape:output:0!conv3d_132/Softplus:activations:0!tf.concat_88/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_88/concatК
 conv3d_133/Conv3D/ReadVariableOpReadVariableOp)conv3d_133_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_133/Conv3D/ReadVariableOpї
conv3d_133/Conv3DConv3Dtf.concat_88/concat:output:0(conv3d_133/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_133/Conv3D­
!conv3d_133/BiasAdd/ReadVariableOpReadVariableOp*conv3d_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_133/BiasAdd/ReadVariableOpЯ
conv3d_133/BiasAddBiasAddconv3d_133/Conv3D:output:0)conv3d_133/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_133/BiasAdd
conv3d_133/SoftplusSoftplusconv3d_133/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_133/SoftplusЃ
tf.reshape_86/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_86/Reshape/shapeЬ
tf.reshape_86/ReshapeReshape!conv3d_133/Softplus:activations:0$tf.reshape_86/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_86/Reshape
tf.tile_43/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_43/Tile/multiplesИ
tf.tile_43/TileTiletf.reshape_86/Reshape:output:0"tf.tile_43/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_43/Tile
tf.reshape_87/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_87/Reshape/shapeЗ
tf.reshape_87/ReshapeReshapetf.tile_43/Tile:output:0$tf.reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_87/Reshapev
tf.concat_89/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_89/concat/axisу
tf.concat_89/concatConcatV2tf.reshape_87/Reshape:output:0!conv3d_131/Softplus:activations:0!tf.concat_89/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_89/concatК
 conv3d_134/Conv3D/ReadVariableOpReadVariableOp)conv3d_134_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_134/Conv3D/ReadVariableOpї
conv3d_134/Conv3DConv3Dtf.concat_89/concat:output:0(conv3d_134/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_134/Conv3D­
!conv3d_134/BiasAdd/ReadVariableOpReadVariableOp*conv3d_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_134/BiasAdd/ReadVariableOpЯ
conv3d_134/BiasAddBiasAddconv3d_134/Conv3D:output:0)conv3d_134/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_134/BiasAdd
conv3d_134/SoftplusSoftplusconv3d_134/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_134/SoftplusЃ
tf.reshape_88/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_88/Reshape/shapeЬ
tf.reshape_88/ReshapeReshape!conv3d_134/Softplus:activations:0$tf.reshape_88/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_88/Reshape
tf.tile_44/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_44/Tile/multiplesИ
tf.tile_44/TileTiletf.reshape_88/Reshape:output:0"tf.tile_44/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_44/Tile
tf.reshape_89/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_89/Reshape/shapeЗ
tf.reshape_89/ReshapeReshapetf.tile_44/Tile:output:0$tf.reshape_89/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_89/Reshapev
tf.concat_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_90/concat/axisу
tf.concat_90/concatConcatV2tf.reshape_89/Reshape:output:0!conv3d_130/Softplus:activations:0!tf.concat_90/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_90/concatК
 conv3d_135/Conv3D/ReadVariableOpReadVariableOp)conv3d_135_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_135/Conv3D/ReadVariableOpї
conv3d_135/Conv3DConv3Dtf.concat_90/concat:output:0(conv3d_135/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_135/Conv3D­
!conv3d_135/BiasAdd/ReadVariableOpReadVariableOp*conv3d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_135/BiasAdd/ReadVariableOpЯ
conv3d_135/BiasAddBiasAddconv3d_135/Conv3D:output:0)conv3d_135/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_135/BiasAdd
conv3d_135/SoftplusSoftplusconv3d_135/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_135/SoftplusК
 conv3d_136/Conv3D/ReadVariableOpReadVariableOp)conv3d_136_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_136/Conv3D/ReadVariableOpќ
conv3d_136/Conv3DConv3D!conv3d_135/Softplus:activations:0(conv3d_136/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_136/Conv3D­
!conv3d_136/BiasAdd/ReadVariableOpReadVariableOp*conv3d_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_136/BiasAdd/ReadVariableOpЯ
conv3d_136/BiasAddBiasAddconv3d_136/Conv3D:output:0)conv3d_136/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_136/BiasAdd
IdentityIdentityconv3d_136/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp"^conv3d_130/BiasAdd/ReadVariableOp!^conv3d_130/Conv3D/ReadVariableOp"^conv3d_131/BiasAdd/ReadVariableOp!^conv3d_131/Conv3D/ReadVariableOp"^conv3d_132/BiasAdd/ReadVariableOp!^conv3d_132/Conv3D/ReadVariableOp"^conv3d_133/BiasAdd/ReadVariableOp!^conv3d_133/Conv3D/ReadVariableOp"^conv3d_134/BiasAdd/ReadVariableOp!^conv3d_134/Conv3D/ReadVariableOp"^conv3d_135/BiasAdd/ReadVariableOp!^conv3d_135/Conv3D/ReadVariableOp"^conv3d_136/BiasAdd/ReadVariableOp!^conv3d_136/Conv3D/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 2F
!conv3d_130/BiasAdd/ReadVariableOp!conv3d_130/BiasAdd/ReadVariableOp2D
 conv3d_130/Conv3D/ReadVariableOp conv3d_130/Conv3D/ReadVariableOp2F
!conv3d_131/BiasAdd/ReadVariableOp!conv3d_131/BiasAdd/ReadVariableOp2D
 conv3d_131/Conv3D/ReadVariableOp conv3d_131/Conv3D/ReadVariableOp2F
!conv3d_132/BiasAdd/ReadVariableOp!conv3d_132/BiasAdd/ReadVariableOp2D
 conv3d_132/Conv3D/ReadVariableOp conv3d_132/Conv3D/ReadVariableOp2F
!conv3d_133/BiasAdd/ReadVariableOp!conv3d_133/BiasAdd/ReadVariableOp2D
 conv3d_133/Conv3D/ReadVariableOp conv3d_133/Conv3D/ReadVariableOp2F
!conv3d_134/BiasAdd/ReadVariableOp!conv3d_134/BiasAdd/ReadVariableOp2D
 conv3d_134/Conv3D/ReadVariableOp conv3d_134/Conv3D/ReadVariableOp2F
!conv3d_135/BiasAdd/ReadVariableOp!conv3d_135/BiasAdd/ReadVariableOp2D
 conv3d_135/Conv3D/ReadVariableOp conv3d_135/Conv3D/ReadVariableOp2F
!conv3d_136/BiasAdd/ReadVariableOp!conv3d_136/BiasAdd/ReadVariableOp2D
 conv3d_136/Conv3D/ReadVariableOp conv3d_136/Conv3D/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs

S
7__inference_average_pooling3d_44_layer_call_fn_10231447

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_102302682
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs

ї
F__inference_dense_46_layer_call_and_return_conditional_losses_10231502

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ю

H__inference_conv3d_130_layer_call_and_return_conditional_losses_10231341

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ю

H__inference_conv3d_135_layer_call_and_return_conditional_losses_10230387

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs
Є
S
7__inference_average_pooling3d_43_layer_call_fn_10231394

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_102301112
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_reshape_92_layer_call_and_return_conditional_losses_10231482

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
value	B :@2
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
:џџџџџџџџџ@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:[ W
3
_output_shapes!
:џџџџџџџџџ
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10230111

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
сх

#__inference__wrapped_model_10230068	
inputP
2model_46_conv3d_130_conv3d_readvariableop_resource:A
3model_46_conv3d_130_biasadd_readvariableop_resource:P
2model_46_conv3d_131_conv3d_readvariableop_resource:A
3model_46_conv3d_131_biasadd_readvariableop_resource:P
2model_46_conv3d_132_conv3d_readvariableop_resource:A
3model_46_conv3d_132_biasadd_readvariableop_resource:B
0model_46_dense_46_matmul_readvariableop_resource:@@?
1model_46_dense_46_biasadd_readvariableop_resource:@P
2model_46_conv3d_133_conv3d_readvariableop_resource:A
3model_46_conv3d_133_biasadd_readvariableop_resource:P
2model_46_conv3d_134_conv3d_readvariableop_resource:A
3model_46_conv3d_134_biasadd_readvariableop_resource:P
2model_46_conv3d_135_conv3d_readvariableop_resource:A
3model_46_conv3d_135_biasadd_readvariableop_resource:P
2model_46_conv3d_136_conv3d_readvariableop_resource:A
3model_46_conv3d_136_biasadd_readvariableop_resource:
identityЂ*model_46/conv3d_130/BiasAdd/ReadVariableOpЂ)model_46/conv3d_130/Conv3D/ReadVariableOpЂ*model_46/conv3d_131/BiasAdd/ReadVariableOpЂ)model_46/conv3d_131/Conv3D/ReadVariableOpЂ*model_46/conv3d_132/BiasAdd/ReadVariableOpЂ)model_46/conv3d_132/Conv3D/ReadVariableOpЂ*model_46/conv3d_133/BiasAdd/ReadVariableOpЂ)model_46/conv3d_133/Conv3D/ReadVariableOpЂ*model_46/conv3d_134/BiasAdd/ReadVariableOpЂ)model_46/conv3d_134/Conv3D/ReadVariableOpЂ*model_46/conv3d_135/BiasAdd/ReadVariableOpЂ)model_46/conv3d_135/Conv3D/ReadVariableOpЂ*model_46/conv3d_136/BiasAdd/ReadVariableOpЂ)model_46/conv3d_136/Conv3D/ReadVariableOpЂ(model_46/dense_46/BiasAdd/ReadVariableOpЂ'model_46/dense_46/MatMul/ReadVariableOpХ
8model_46/tf.__operators__.getitem_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model_46/tf.__operators__.getitem_90/strided_slice/stackЩ
:model_46/tf.__operators__.getitem_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_46/tf.__operators__.getitem_90/strided_slice/stack_1Щ
:model_46/tf.__operators__.getitem_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_46/tf.__operators__.getitem_90/strided_slice/stack_2Й
2model_46/tf.__operators__.getitem_90/strided_sliceStridedSliceinputAmodel_46/tf.__operators__.getitem_90/strided_slice/stack:output:0Cmodel_46/tf.__operators__.getitem_90/strided_slice/stack_1:output:0Cmodel_46/tf.__operators__.getitem_90/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask24
2model_46/tf.__operators__.getitem_90/strided_slice
"model_46/range_conversion_46/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_46/range_conversion_46/sub/yѓ
 model_46/range_conversion_46/subSub;model_46/tf.__operators__.getitem_90/strided_slice:output:0+model_46/range_conversion_46/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2"
 model_46/range_conversion_46/sub
&model_46/range_conversion_46/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_46/range_conversion_46/truediv/yь
$model_46/range_conversion_46/truedivRealDiv$model_46/range_conversion_46/sub:z:0/model_46/range_conversion_46/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2&
$model_46/range_conversion_46/truediv
"model_46/range_conversion_46/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_46/range_conversion_46/mul/yр
 model_46/range_conversion_46/mulMul(model_46/range_conversion_46/truediv:z:0+model_46/range_conversion_46/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2"
 model_46/range_conversion_46/mul
"model_46/range_conversion_46/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2$
"model_46/range_conversion_46/add/yо
 model_46/range_conversion_46/addAddV2$model_46/range_conversion_46/mul:z:0+model_46/range_conversion_46/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2"
 model_46/range_conversion_46/addХ
8model_46/tf.__operators__.getitem_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2:
8model_46/tf.__operators__.getitem_91/strided_slice/stackЩ
:model_46/tf.__operators__.getitem_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model_46/tf.__operators__.getitem_91/strided_slice/stack_1Щ
:model_46/tf.__operators__.getitem_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model_46/tf.__operators__.getitem_91/strided_slice/stack_2Й
2model_46/tf.__operators__.getitem_91/strided_sliceStridedSliceinputAmodel_46/tf.__operators__.getitem_91/strided_slice/stack:output:0Cmodel_46/tf.__operators__.getitem_91/strided_slice/stack_1:output:0Cmodel_46/tf.__operators__.getitem_91/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ  *

begin_mask*
end_mask24
2model_46/tf.__operators__.getitem_91/strided_slice
!model_46/tf.concat_87/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_46/tf.concat_87/concat/axis
model_46/tf.concat_87/concatConcatV2$model_46/range_conversion_46/add:z:0;model_46/tf.__operators__.getitem_91/strided_slice:output:0*model_46/tf.concat_87/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_46/tf.concat_87/concatе
)model_46/conv3d_130/Conv3D/ReadVariableOpReadVariableOp2model_46_conv3d_130_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_46/conv3d_130/Conv3D/ReadVariableOp
model_46/conv3d_130/Conv3DConv3D%model_46/tf.concat_87/concat:output:01model_46/conv3d_130/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_46/conv3d_130/Conv3DШ
*model_46/conv3d_130/BiasAdd/ReadVariableOpReadVariableOp3model_46_conv3d_130_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_46/conv3d_130/BiasAdd/ReadVariableOpѓ
model_46/conv3d_130/BiasAddBiasAdd#model_46/conv3d_130/Conv3D:output:02model_46/conv3d_130/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_46/conv3d_130/BiasAddЌ
model_46/conv3d_130/SoftplusSoftplus$model_46/conv3d_130/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_46/conv3d_130/SoftplusЙ
,model_46/average_pooling3d_42/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_46/average_pooling3d_42/transpose/perm
'model_46/average_pooling3d_42/transpose	Transpose*model_46/conv3d_130/Softplus:activations:05model_46/average_pooling3d_42/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2)
'model_46/average_pooling3d_42/transpose
'model_46/average_pooling3d_42/AvgPool3D	AvgPool3D+model_46/average_pooling3d_42/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_46/average_pooling3d_42/AvgPool3DН
.model_46/average_pooling3d_42/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_46/average_pooling3d_42/transpose_1/perm
)model_46/average_pooling3d_42/transpose_1	Transpose0model_46/average_pooling3d_42/AvgPool3D:output:07model_46/average_pooling3d_42/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_46/average_pooling3d_42/transpose_1е
)model_46/conv3d_131/Conv3D/ReadVariableOpReadVariableOp2model_46_conv3d_131_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_46/conv3d_131/Conv3D/ReadVariableOpЃ
model_46/conv3d_131/Conv3DConv3D-model_46/average_pooling3d_42/transpose_1:y:01model_46/conv3d_131/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_46/conv3d_131/Conv3DШ
*model_46/conv3d_131/BiasAdd/ReadVariableOpReadVariableOp3model_46_conv3d_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_46/conv3d_131/BiasAdd/ReadVariableOpѓ
model_46/conv3d_131/BiasAddBiasAdd#model_46/conv3d_131/Conv3D:output:02model_46/conv3d_131/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_46/conv3d_131/BiasAddЌ
model_46/conv3d_131/SoftplusSoftplus$model_46/conv3d_131/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_46/conv3d_131/SoftplusЙ
,model_46/average_pooling3d_43/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_46/average_pooling3d_43/transpose/perm
'model_46/average_pooling3d_43/transpose	Transpose*model_46/conv3d_131/Softplus:activations:05model_46/average_pooling3d_43/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_46/average_pooling3d_43/transpose
'model_46/average_pooling3d_43/AvgPool3D	AvgPool3D+model_46/average_pooling3d_43/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_46/average_pooling3d_43/AvgPool3DН
.model_46/average_pooling3d_43/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_46/average_pooling3d_43/transpose_1/perm
)model_46/average_pooling3d_43/transpose_1	Transpose0model_46/average_pooling3d_43/AvgPool3D:output:07model_46/average_pooling3d_43/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_46/average_pooling3d_43/transpose_1е
)model_46/conv3d_132/Conv3D/ReadVariableOpReadVariableOp2model_46_conv3d_132_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_46/conv3d_132/Conv3D/ReadVariableOpЃ
model_46/conv3d_132/Conv3DConv3D-model_46/average_pooling3d_43/transpose_1:y:01model_46/conv3d_132/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_46/conv3d_132/Conv3DШ
*model_46/conv3d_132/BiasAdd/ReadVariableOpReadVariableOp3model_46_conv3d_132_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_46/conv3d_132/BiasAdd/ReadVariableOpѓ
model_46/conv3d_132/BiasAddBiasAdd#model_46/conv3d_132/Conv3D:output:02model_46/conv3d_132/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_46/conv3d_132/BiasAddЌ
model_46/conv3d_132/SoftplusSoftplus$model_46/conv3d_132/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_46/conv3d_132/SoftplusЙ
,model_46/average_pooling3d_44/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_46/average_pooling3d_44/transpose/perm
'model_46/average_pooling3d_44/transpose	Transpose*model_46/conv3d_132/Softplus:activations:05model_46/average_pooling3d_44/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_46/average_pooling3d_44/transpose
'model_46/average_pooling3d_44/AvgPool3D	AvgPool3D+model_46/average_pooling3d_44/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_46/average_pooling3d_44/AvgPool3DН
.model_46/average_pooling3d_44/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_46/average_pooling3d_44/transpose_1/perm
)model_46/average_pooling3d_44/transpose_1	Transpose0model_46/average_pooling3d_44/AvgPool3D:output:07model_46/average_pooling3d_44/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_46/average_pooling3d_44/transpose_1
model_46/reshape_92/ShapeShape-model_46/average_pooling3d_44/transpose_1:y:0*
T0*
_output_shapes
:2
model_46/reshape_92/Shape
'model_46/reshape_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_46/reshape_92/strided_slice/stack 
)model_46/reshape_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_46/reshape_92/strided_slice/stack_1 
)model_46/reshape_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_46/reshape_92/strided_slice/stack_2к
!model_46/reshape_92/strided_sliceStridedSlice"model_46/reshape_92/Shape:output:00model_46/reshape_92/strided_slice/stack:output:02model_46/reshape_92/strided_slice/stack_1:output:02model_46/reshape_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_46/reshape_92/strided_slice
#model_46/reshape_92/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_46/reshape_92/Reshape/shape/1ж
!model_46/reshape_92/Reshape/shapePack*model_46/reshape_92/strided_slice:output:0,model_46/reshape_92/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_46/reshape_92/Reshape/shapeв
model_46/reshape_92/ReshapeReshape-model_46/average_pooling3d_44/transpose_1:y:0*model_46/reshape_92/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_46/reshape_92/ReshapeУ
'model_46/dense_46/MatMul/ReadVariableOpReadVariableOp0model_46_dense_46_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_46/dense_46/MatMul/ReadVariableOpЧ
model_46/dense_46/MatMulMatMul$model_46/reshape_92/Reshape:output:0/model_46/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_46/dense_46/MatMulТ
(model_46/dense_46/BiasAdd/ReadVariableOpReadVariableOp1model_46_dense_46_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_46/dense_46/BiasAdd/ReadVariableOpЩ
model_46/dense_46/BiasAddBiasAdd"model_46/dense_46/MatMul:product:00model_46/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_46/dense_46/BiasAdd
model_46/dense_46/SoftplusSoftplus"model_46/dense_46/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_46/dense_46/Softplus
model_46/reshape_93/ShapeShape(model_46/dense_46/Softplus:activations:0*
T0*
_output_shapes
:2
model_46/reshape_93/Shape
'model_46/reshape_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_46/reshape_93/strided_slice/stack 
)model_46/reshape_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_46/reshape_93/strided_slice/stack_1 
)model_46/reshape_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_46/reshape_93/strided_slice/stack_2к
!model_46/reshape_93/strided_sliceStridedSlice"model_46/reshape_93/Shape:output:00model_46/reshape_93/strided_slice/stack:output:02model_46/reshape_93/strided_slice/stack_1:output:02model_46/reshape_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_46/reshape_93/strided_slice
#model_46/reshape_93/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_46/reshape_93/Reshape/shape/1
#model_46/reshape_93/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_46/reshape_93/Reshape/shape/2
#model_46/reshape_93/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_46/reshape_93/Reshape/shape/3
#model_46/reshape_93/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_46/reshape_93/Reshape/shape/4р
!model_46/reshape_93/Reshape/shapePack*model_46/reshape_93/strided_slice:output:0,model_46/reshape_93/Reshape/shape/1:output:0,model_46/reshape_93/Reshape/shape/2:output:0,model_46/reshape_93/Reshape/shape/3:output:0,model_46/reshape_93/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_46/reshape_93/Reshape/shapeй
model_46/reshape_93/ReshapeReshape(model_46/dense_46/Softplus:activations:0*model_46/reshape_93/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_46/reshape_93/ReshapeЕ
$model_46/tf.reshape_84/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2&
$model_46/tf.reshape_84/Reshape/shapeъ
model_46/tf.reshape_84/ReshapeReshape$model_46/reshape_93/Reshape:output:0-model_46/tf.reshape_84/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2 
model_46/tf.reshape_84/ReshapeБ
"model_46/tf.tile_42/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_46/tf.tile_42/Tile/multiplesм
model_46/tf.tile_42/TileTile'model_46/tf.reshape_84/Reshape:output:0+model_46/tf.tile_42/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_46/tf.tile_42/TileЉ
$model_46/tf.reshape_85/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2&
$model_46/tf.reshape_85/Reshape/shapeл
model_46/tf.reshape_85/ReshapeReshape!model_46/tf.tile_42/Tile:output:0-model_46/tf.reshape_85/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
model_46/tf.reshape_85/Reshape
!model_46/tf.concat_88/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_46/tf.concat_88/concat/axis
model_46/tf.concat_88/concatConcatV2'model_46/tf.reshape_85/Reshape:output:0*model_46/conv3d_132/Softplus:activations:0*model_46/tf.concat_88/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_46/tf.concat_88/concatе
)model_46/conv3d_133/Conv3D/ReadVariableOpReadVariableOp2model_46_conv3d_133_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_46/conv3d_133/Conv3D/ReadVariableOp
model_46/conv3d_133/Conv3DConv3D%model_46/tf.concat_88/concat:output:01model_46/conv3d_133/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_46/conv3d_133/Conv3DШ
*model_46/conv3d_133/BiasAdd/ReadVariableOpReadVariableOp3model_46_conv3d_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_46/conv3d_133/BiasAdd/ReadVariableOpѓ
model_46/conv3d_133/BiasAddBiasAdd#model_46/conv3d_133/Conv3D:output:02model_46/conv3d_133/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_46/conv3d_133/BiasAddЌ
model_46/conv3d_133/SoftplusSoftplus$model_46/conv3d_133/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_46/conv3d_133/SoftplusЕ
$model_46/tf.reshape_86/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2&
$model_46/tf.reshape_86/Reshape/shape№
model_46/tf.reshape_86/ReshapeReshape*model_46/conv3d_133/Softplus:activations:0-model_46/tf.reshape_86/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2 
model_46/tf.reshape_86/ReshapeБ
"model_46/tf.tile_43/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_46/tf.tile_43/Tile/multiplesм
model_46/tf.tile_43/TileTile'model_46/tf.reshape_86/Reshape:output:0+model_46/tf.tile_43/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_46/tf.tile_43/TileЉ
$model_46/tf.reshape_87/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2&
$model_46/tf.reshape_87/Reshape/shapeл
model_46/tf.reshape_87/ReshapeReshape!model_46/tf.tile_43/Tile:output:0-model_46/tf.reshape_87/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
model_46/tf.reshape_87/Reshape
!model_46/tf.concat_89/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_46/tf.concat_89/concat/axis
model_46/tf.concat_89/concatConcatV2'model_46/tf.reshape_87/Reshape:output:0*model_46/conv3d_131/Softplus:activations:0*model_46/tf.concat_89/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_46/tf.concat_89/concatе
)model_46/conv3d_134/Conv3D/ReadVariableOpReadVariableOp2model_46_conv3d_134_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_46/conv3d_134/Conv3D/ReadVariableOp
model_46/conv3d_134/Conv3DConv3D%model_46/tf.concat_89/concat:output:01model_46/conv3d_134/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_46/conv3d_134/Conv3DШ
*model_46/conv3d_134/BiasAdd/ReadVariableOpReadVariableOp3model_46_conv3d_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_46/conv3d_134/BiasAdd/ReadVariableOpѓ
model_46/conv3d_134/BiasAddBiasAdd#model_46/conv3d_134/Conv3D:output:02model_46/conv3d_134/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_46/conv3d_134/BiasAddЌ
model_46/conv3d_134/SoftplusSoftplus$model_46/conv3d_134/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_46/conv3d_134/SoftplusЕ
$model_46/tf.reshape_88/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2&
$model_46/tf.reshape_88/Reshape/shape№
model_46/tf.reshape_88/ReshapeReshape*model_46/conv3d_134/Softplus:activations:0-model_46/tf.reshape_88/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2 
model_46/tf.reshape_88/ReshapeБ
"model_46/tf.tile_44/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2$
"model_46/tf.tile_44/Tile/multiplesм
model_46/tf.tile_44/TileTile'model_46/tf.reshape_88/Reshape:output:0+model_46/tf.tile_44/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_46/tf.tile_44/TileЉ
$model_46/tf.reshape_89/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2&
$model_46/tf.reshape_89/Reshape/shapeл
model_46/tf.reshape_89/ReshapeReshape!model_46/tf.tile_44/Tile:output:0-model_46/tf.reshape_89/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
model_46/tf.reshape_89/Reshape
!model_46/tf.concat_90/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_46/tf.concat_90/concat/axis
model_46/tf.concat_90/concatConcatV2'model_46/tf.reshape_89/Reshape:output:0*model_46/conv3d_130/Softplus:activations:0*model_46/tf.concat_90/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_46/tf.concat_90/concatе
)model_46/conv3d_135/Conv3D/ReadVariableOpReadVariableOp2model_46_conv3d_135_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_46/conv3d_135/Conv3D/ReadVariableOp
model_46/conv3d_135/Conv3DConv3D%model_46/tf.concat_90/concat:output:01model_46/conv3d_135/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_46/conv3d_135/Conv3DШ
*model_46/conv3d_135/BiasAdd/ReadVariableOpReadVariableOp3model_46_conv3d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_46/conv3d_135/BiasAdd/ReadVariableOpѓ
model_46/conv3d_135/BiasAddBiasAdd#model_46/conv3d_135/Conv3D:output:02model_46/conv3d_135/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_46/conv3d_135/BiasAddЌ
model_46/conv3d_135/SoftplusSoftplus$model_46/conv3d_135/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_46/conv3d_135/Softplusе
)model_46/conv3d_136/Conv3D/ReadVariableOpReadVariableOp2model_46_conv3d_136_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_46/conv3d_136/Conv3D/ReadVariableOp 
model_46/conv3d_136/Conv3DConv3D*model_46/conv3d_135/Softplus:activations:01model_46/conv3d_136/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_46/conv3d_136/Conv3DШ
*model_46/conv3d_136/BiasAdd/ReadVariableOpReadVariableOp3model_46_conv3d_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_46/conv3d_136/BiasAdd/ReadVariableOpѓ
model_46/conv3d_136/BiasAddBiasAdd#model_46/conv3d_136/Conv3D:output:02model_46/conv3d_136/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_46/conv3d_136/BiasAdd
IdentityIdentity$model_46/conv3d_136/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identity
NoOpNoOp+^model_46/conv3d_130/BiasAdd/ReadVariableOp*^model_46/conv3d_130/Conv3D/ReadVariableOp+^model_46/conv3d_131/BiasAdd/ReadVariableOp*^model_46/conv3d_131/Conv3D/ReadVariableOp+^model_46/conv3d_132/BiasAdd/ReadVariableOp*^model_46/conv3d_132/Conv3D/ReadVariableOp+^model_46/conv3d_133/BiasAdd/ReadVariableOp*^model_46/conv3d_133/Conv3D/ReadVariableOp+^model_46/conv3d_134/BiasAdd/ReadVariableOp*^model_46/conv3d_134/Conv3D/ReadVariableOp+^model_46/conv3d_135/BiasAdd/ReadVariableOp*^model_46/conv3d_135/Conv3D/ReadVariableOp+^model_46/conv3d_136/BiasAdd/ReadVariableOp*^model_46/conv3d_136/Conv3D/ReadVariableOp)^model_46/dense_46/BiasAdd/ReadVariableOp(^model_46/dense_46/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 2X
*model_46/conv3d_130/BiasAdd/ReadVariableOp*model_46/conv3d_130/BiasAdd/ReadVariableOp2V
)model_46/conv3d_130/Conv3D/ReadVariableOp)model_46/conv3d_130/Conv3D/ReadVariableOp2X
*model_46/conv3d_131/BiasAdd/ReadVariableOp*model_46/conv3d_131/BiasAdd/ReadVariableOp2V
)model_46/conv3d_131/Conv3D/ReadVariableOp)model_46/conv3d_131/Conv3D/ReadVariableOp2X
*model_46/conv3d_132/BiasAdd/ReadVariableOp*model_46/conv3d_132/BiasAdd/ReadVariableOp2V
)model_46/conv3d_132/Conv3D/ReadVariableOp)model_46/conv3d_132/Conv3D/ReadVariableOp2X
*model_46/conv3d_133/BiasAdd/ReadVariableOp*model_46/conv3d_133/BiasAdd/ReadVariableOp2V
)model_46/conv3d_133/Conv3D/ReadVariableOp)model_46/conv3d_133/Conv3D/ReadVariableOp2X
*model_46/conv3d_134/BiasAdd/ReadVariableOp*model_46/conv3d_134/BiasAdd/ReadVariableOp2V
)model_46/conv3d_134/Conv3D/ReadVariableOp)model_46/conv3d_134/Conv3D/ReadVariableOp2X
*model_46/conv3d_135/BiasAdd/ReadVariableOp*model_46/conv3d_135/BiasAdd/ReadVariableOp2V
)model_46/conv3d_135/Conv3D/ReadVariableOp)model_46/conv3d_135/Conv3D/ReadVariableOp2X
*model_46/conv3d_136/BiasAdd/ReadVariableOp*model_46/conv3d_136/BiasAdd/ReadVariableOp2V
)model_46/conv3d_136/Conv3D/ReadVariableOp)model_46/conv3d_136/Conv3D/ReadVariableOp2T
(model_46/dense_46/BiasAdd/ReadVariableOp(model_46/dense_46/BiasAdd/ReadVariableOp2R
'model_46/dense_46/MatMul/ReadVariableOp'model_46/dense_46/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:џџџџџџџџџ  

_user_specified_nameinput
Є
S
7__inference_average_pooling3d_44_layer_call_fn_10231442

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_102301412
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А
х
&__inference_signature_wrapper_10230960	
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
identityЂStatefulPartitionedCallЄ
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
:џџџџџџџџџ  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *,
f'R%
#__inference__wrapped_model_102300682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ  

_user_specified_nameinput
ф

n
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10231360

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
n
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10231369

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ  :[ W
3
_output_shapes!
:џџџџџџџџџ  
 
_user_specified_nameinputs


+__inference_dense_46_layer_call_fn_10231491

inputs
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_dense_46_layer_call_and_return_conditional_losses_102302952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10231408

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permІ
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
	transposeв
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3D
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permИ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2
transpose_1
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*С
serving_default­
C
input:
serving_default_input:0џџџџџџџџџ  J

conv3d_136<
StatefulPartitionedCall:0џџџџџџџџџ  tensorflow/serving/predict:Ує
С
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
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
Ц__call__
+Ч&call_and_return_all_conditional_losses
Ш_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
Ї
%	variables
&trainable_variables
'regularization_losses
(	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
(
)	keras_api"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
Н

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
1	variables
2trainable_variables
3regularization_losses
4	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
;	variables
<trainable_variables
=regularization_losses
>	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
л__call__
+м&call_and_return_all_conditional_losses"
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
Н

[kernel
\bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
н__call__
+о&call_and_return_all_conditional_losses"
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
Н

ekernel
fbias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
п__call__
+р&call_and_return_all_conditional_losses"
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
Н

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer

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

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
 "
trackable_list_wrapper
Ю
	variables
{layer_regularization_losses

|layers
 trainable_variables
}non_trainable_variables
~metrics
layer_metrics
!regularization_losses
Ц__call__
Ш_default_save_signature
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
-
хserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
%	variables
 layer_regularization_losses
layers
&trainable_variables
non_trainable_variables
metrics
layer_metrics
'regularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_130/kernel
: 2conv3d_130/bias
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
Е
-	variables
 layer_regularization_losses
layers
.trainable_variables
non_trainable_variables
metrics
layer_metrics
/regularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
1	variables
 layer_regularization_losses
layers
2trainable_variables
non_trainable_variables
metrics
layer_metrics
3regularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_131/kernel
: 2conv3d_131/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
7	variables
 layer_regularization_losses
layers
8trainable_variables
non_trainable_variables
metrics
layer_metrics
9regularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
;	variables
 layer_regularization_losses
layers
<trainable_variables
non_trainable_variables
metrics
layer_metrics
=regularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_132/kernel
: 2conv3d_132/bias
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
Е
A	variables
 layer_regularization_losses
layers
Btrainable_variables
non_trainable_variables
metrics
layer_metrics
Cregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
E	variables
 layer_regularization_losses
layers
Ftrainable_variables
 non_trainable_variables
Ёmetrics
Ђlayer_metrics
Gregularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
I	variables
 Ѓlayer_regularization_losses
Єlayers
Jtrainable_variables
Ѕnon_trainable_variables
Іmetrics
Їlayer_metrics
Kregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_46/kernel
:@ 2dense_46/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
O	variables
 Јlayer_regularization_losses
Љlayers
Ptrainable_variables
Њnon_trainable_variables
Ћmetrics
Ќlayer_metrics
Qregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
S	variables
 ­layer_regularization_losses
Ўlayers
Ttrainable_variables
Џnon_trainable_variables
Аmetrics
Бlayer_metrics
Uregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_133/kernel
: 2conv3d_133/bias
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
]	variables
 Вlayer_regularization_losses
Гlayers
^trainable_variables
Дnon_trainable_variables
Еmetrics
Жlayer_metrics
_regularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_134/kernel
: 2conv3d_134/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
g	variables
 Зlayer_regularization_losses
Иlayers
htrainable_variables
Йnon_trainable_variables
Кmetrics
Лlayer_metrics
iregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_135/kernel
: 2conv3d_135/bias
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
q	variables
 Мlayer_regularization_losses
Нlayers
rtrainable_variables
Оnon_trainable_variables
Пmetrics
Рlayer_metrics
sregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_136/kernel
: 2conv3d_136/bias
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
w	variables
 Сlayer_regularization_losses
Тlayers
xtrainable_variables
Уnon_trainable_variables
Фmetrics
Хlayer_metrics
yregularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper

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
њ2ї
+__inference_model_46_layer_call_fn_10230445
+__inference_model_46_layer_call_fn_10230997
+__inference_model_46_layer_call_fn_10231034
+__inference_model_46_layer_call_fn_10230753Р
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
ц2у
F__inference_model_46_layer_call_and_return_conditional_losses_10231169
F__inference_model_46_layer_call_and_return_conditional_losses_10231304
F__inference_model_46_layer_call_and_return_conditional_losses_10230837
F__inference_model_46_layer_call_and_return_conditional_losses_10230921Р
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
#__inference__wrapped_model_10230068input"
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
ф2с
6__inference_range_conversion_46_layer_call_fn_10231309І
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
џ2ќ
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_10231321І
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
з2д
-__inference_conv3d_130_layer_call_fn_10231330Ђ
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
ђ2я
H__inference_conv3d_130_layer_call_and_return_conditional_losses_10231341Ђ
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
2
7__inference_average_pooling3d_42_layer_call_fn_10231346
7__inference_average_pooling3d_42_layer_call_fn_10231351Ђ
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
а2Э
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10231360
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10231369Ђ
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
з2д
-__inference_conv3d_131_layer_call_fn_10231378Ђ
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
ђ2я
H__inference_conv3d_131_layer_call_and_return_conditional_losses_10231389Ђ
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
2
7__inference_average_pooling3d_43_layer_call_fn_10231394
7__inference_average_pooling3d_43_layer_call_fn_10231399Ђ
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
а2Э
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10231408
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10231417Ђ
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
з2д
-__inference_conv3d_132_layer_call_fn_10231426Ђ
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
ђ2я
H__inference_conv3d_132_layer_call_and_return_conditional_losses_10231437Ђ
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
2
7__inference_average_pooling3d_44_layer_call_fn_10231442
7__inference_average_pooling3d_44_layer_call_fn_10231447Ђ
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
а2Э
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10231456
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10231465Ђ
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
з2д
-__inference_reshape_92_layer_call_fn_10231470Ђ
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
ђ2я
H__inference_reshape_92_layer_call_and_return_conditional_losses_10231482Ђ
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
е2в
+__inference_dense_46_layer_call_fn_10231491Ђ
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
№2э
F__inference_dense_46_layer_call_and_return_conditional_losses_10231502Ђ
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
з2д
-__inference_reshape_93_layer_call_fn_10231507Ђ
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
ђ2я
H__inference_reshape_93_layer_call_and_return_conditional_losses_10231522Ђ
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
з2д
-__inference_conv3d_133_layer_call_fn_10231531Ђ
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
ђ2я
H__inference_conv3d_133_layer_call_and_return_conditional_losses_10231542Ђ
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
з2д
-__inference_conv3d_134_layer_call_fn_10231551Ђ
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
ђ2я
H__inference_conv3d_134_layer_call_and_return_conditional_losses_10231562Ђ
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
з2д
-__inference_conv3d_135_layer_call_fn_10231571Ђ
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
ђ2я
H__inference_conv3d_135_layer_call_and_return_conditional_losses_10231582Ђ
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
з2д
-__inference_conv3d_136_layer_call_fn_10231591Ђ
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
ђ2я
H__inference_conv3d_136_layer_call_and_return_conditional_losses_10231601Ђ
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
&__inference_signature_wrapper_10230960input"
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
 Л
#__inference__wrapped_model_10230068+,56?@MN[\efopuv:Ђ7
0Ђ-
+(
inputџџџџџџџџџ  
Њ "CЊ@
>

conv3d_1360-

conv3d_136џџџџџџџџџ  
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10231360И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
R__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_10231369p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ
 ч
7__inference_average_pooling3d_42_layer_call_fn_10231346Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_average_pooling3d_42_layer_call_fn_10231351c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10231408И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
R__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_10231417p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ч
7__inference_average_pooling3d_43_layer_call_fn_10231394Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_average_pooling3d_43_layer_call_fn_10231399c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџ
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10231456И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
R__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_10231465p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ч
7__inference_average_pooling3d_44_layer_call_fn_10231442Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_average_pooling3d_44_layer_call_fn_10231447c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_130_layer_call_and_return_conditional_losses_10231341t+,;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
-__inference_conv3d_130_layer_call_fn_10231330g+,;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ  Р
H__inference_conv3d_131_layer_call_and_return_conditional_losses_10231389t56;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_131_layer_call_fn_10231378g56;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_132_layer_call_and_return_conditional_losses_10231437t?@;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_132_layer_call_fn_10231426g?@;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_133_layer_call_and_return_conditional_losses_10231542t[\;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_133_layer_call_fn_10231531g[\;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_134_layer_call_and_return_conditional_losses_10231562tef;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_134_layer_call_fn_10231551gef;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_135_layer_call_and_return_conditional_losses_10231582top;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
-__inference_conv3d_135_layer_call_fn_10231571gop;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ  Р
H__inference_conv3d_136_layer_call_and_return_conditional_losses_10231601tuv;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
-__inference_conv3d_136_layer_call_fn_10231591guv;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ  І
F__inference_dense_46_layer_call_and_return_conditional_losses_10231502\MN/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 ~
+__inference_dense_46_layer_call_fn_10231491OMN/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@д
F__inference_model_46_layer_call_and_return_conditional_losses_10230837+,56?@MN[\efopuvBЂ?
8Ђ5
+(
inputџџџџџџџџџ  
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ  
 д
F__inference_model_46_layer_call_and_return_conditional_losses_10230921+,56?@MN[\efopuvBЂ?
8Ђ5
+(
inputџџџџџџџџџ  
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ  
 е
F__inference_model_46_layer_call_and_return_conditional_losses_10231169+,56?@MN[\efopuvCЂ@
9Ђ6
,)
inputsџџџџџџџџџ  
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ  
 е
F__inference_model_46_layer_call_and_return_conditional_losses_10231304+,56?@MN[\efopuvCЂ@
9Ђ6
,)
inputsџџџџџџџџџ  
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ  
 Ћ
+__inference_model_46_layer_call_fn_10230445|+,56?@MN[\efopuvBЂ?
8Ђ5
+(
inputџџџџџџџџџ  
p 

 
Њ "$!џџџџџџџџџ  Ћ
+__inference_model_46_layer_call_fn_10230753|+,56?@MN[\efopuvBЂ?
8Ђ5
+(
inputџџџџџџџџџ  
p

 
Њ "$!џџџџџџџџџ  Ќ
+__inference_model_46_layer_call_fn_10230997}+,56?@MN[\efopuvCЂ@
9Ђ6
,)
inputsџџџџџџџџџ  
p 

 
Њ "$!џџџџџџџџџ  Ќ
+__inference_model_46_layer_call_fn_10231034}+,56?@MN[\efopuvCЂ@
9Ђ6
,)
inputsџџџџџџџџџ  
p

 
Њ "$!џџџџџџџџџ  Щ
Q__inference_range_conversion_46_layer_call_and_return_conditional_losses_10231321t?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 Ё
6__inference_range_conversion_46_layer_call_fn_10231309g?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ  
Њ "$!џџџџџџџџџ  А
H__inference_reshape_92_layer_call_and_return_conditional_losses_10231482d;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 
-__inference_reshape_92_layer_call_fn_10231470W;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@А
H__inference_reshape_93_layer_call_and_return_conditional_losses_10231522d/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_reshape_93_layer_call_fn_10231507W/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "$!џџџџџџџџџЧ
&__inference_signature_wrapper_10230960+,56?@MN[\efopuvCЂ@
Ђ 
9Њ6
4
input+(
inputџџџџџџџџџ  "CЊ@
>

conv3d_1360-

conv3d_136џџџџџџџџџ  