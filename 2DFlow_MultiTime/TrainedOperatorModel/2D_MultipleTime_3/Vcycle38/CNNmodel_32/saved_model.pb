фН
Хл
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
Ѕ
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
÷
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
Њ
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
ц
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258цю
К
conv3d_160/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_160/kernel
Г
%conv3d_160/kernel/Read/ReadVariableOpReadVariableOpconv3d_160/kernel**
_output_shapes
:*
dtype0
v
conv3d_160/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_160/bias
o
#conv3d_160/bias/Read/ReadVariableOpReadVariableOpconv3d_160/bias*
_output_shapes
:*
dtype0
К
conv3d_161/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_161/kernel
Г
%conv3d_161/kernel/Read/ReadVariableOpReadVariableOpconv3d_161/kernel**
_output_shapes
:*
dtype0
v
conv3d_161/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_161/bias
o
#conv3d_161/bias/Read/ReadVariableOpReadVariableOpconv3d_161/bias*
_output_shapes
:*
dtype0
К
conv3d_162/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_162/kernel
Г
%conv3d_162/kernel/Read/ReadVariableOpReadVariableOpconv3d_162/kernel**
_output_shapes
:*
dtype0
v
conv3d_162/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_162/bias
o
#conv3d_162/bias/Read/ReadVariableOpReadVariableOpconv3d_162/bias*
_output_shapes
:*
dtype0
z
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_36/kernel
s
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes

:@@*
dtype0
r
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_36/bias
k
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes
:@*
dtype0
К
conv3d_163/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_163/kernel
Г
%conv3d_163/kernel/Read/ReadVariableOpReadVariableOpconv3d_163/kernel**
_output_shapes
:*
dtype0
v
conv3d_163/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_163/bias
o
#conv3d_163/bias/Read/ReadVariableOpReadVariableOpconv3d_163/bias*
_output_shapes
:*
dtype0
К
conv3d_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_164/kernel
Г
%conv3d_164/kernel/Read/ReadVariableOpReadVariableOpconv3d_164/kernel**
_output_shapes
:*
dtype0
v
conv3d_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_164/bias
o
#conv3d_164/bias/Read/ReadVariableOpReadVariableOpconv3d_164/bias*
_output_shapes
:*
dtype0
К
conv3d_165/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_165/kernel
Г
%conv3d_165/kernel/Read/ReadVariableOpReadVariableOpconv3d_165/kernel**
_output_shapes
:*
dtype0
v
conv3d_165/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_165/bias
o
#conv3d_165/bias/Read/ReadVariableOpReadVariableOpconv3d_165/bias*
_output_shapes
:*
dtype0
К
conv3d_166/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_166/kernel
Г
%conv3d_166/kernel/Read/ReadVariableOpReadVariableOpconv3d_166/kernel**
_output_shapes
:*
dtype0
v
conv3d_166/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_166/bias
o
#conv3d_166/bias/Read/ReadVariableOpReadVariableOpconv3d_166/bias*
_output_shapes
:*
dtype0

NoOpNoOp
Ц;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*—:
value«:Bƒ: Bљ:
ћ
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
≠
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
≤
 Аlayer_regularization_losses
Бlayers
%regularization_losses
Вlayer_metrics
&	variables
Гnon_trainable_variables
'trainable_variables
Дmetrics
 
 
][
VARIABLE_VALUEconv3d_160/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_160/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
≤
 Еlayer_regularization_losses
Жlayers
-regularization_losses
Зlayer_metrics
.	variables
Иnon_trainable_variables
/trainable_variables
Йmetrics
 
 
 
≤
 Кlayer_regularization_losses
Лlayers
1regularization_losses
Мlayer_metrics
2	variables
Нnon_trainable_variables
3trainable_variables
Оmetrics
][
VARIABLE_VALUEconv3d_161/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_161/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
≤
 Пlayer_regularization_losses
Рlayers
7regularization_losses
Сlayer_metrics
8	variables
Тnon_trainable_variables
9trainable_variables
Уmetrics
 
 
 
≤
 Фlayer_regularization_losses
Хlayers
;regularization_losses
Цlayer_metrics
<	variables
Чnon_trainable_variables
=trainable_variables
Шmetrics
][
VARIABLE_VALUEconv3d_162/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_162/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
≤
 Щlayer_regularization_losses
Ъlayers
Aregularization_losses
Ыlayer_metrics
B	variables
Ьnon_trainable_variables
Ctrainable_variables
Эmetrics
 
 
 
≤
 Юlayer_regularization_losses
Яlayers
Eregularization_losses
†layer_metrics
F	variables
°non_trainable_variables
Gtrainable_variables
Ґmetrics
 
 
 
≤
 £layer_regularization_losses
§layers
Iregularization_losses
•layer_metrics
J	variables
¶non_trainable_variables
Ktrainable_variables
Іmetrics
[Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_36/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

M0
N1

M0
N1
≤
 ®layer_regularization_losses
©layers
Oregularization_losses
™layer_metrics
P	variables
Ђnon_trainable_variables
Qtrainable_variables
ђmetrics
 
 
 
≤
 ≠layer_regularization_losses
Ѓlayers
Sregularization_losses
ѓlayer_metrics
T	variables
∞non_trainable_variables
Utrainable_variables
±metrics
 
 
 
 
][
VARIABLE_VALUEconv3d_163/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_163/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

[0
\1
≤
 ≤layer_regularization_losses
≥layers
]regularization_losses
іlayer_metrics
^	variables
µnon_trainable_variables
_trainable_variables
ґmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_164/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_164/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

e0
f1
≤
 Јlayer_regularization_losses
Єlayers
gregularization_losses
єlayer_metrics
h	variables
Їnon_trainable_variables
itrainable_variables
їmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_165/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_165/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

o0
p1

o0
p1
≤
 Љlayer_regularization_losses
љlayers
qregularization_losses
Њlayer_metrics
r	variables
њnon_trainable_variables
strainable_variables
јmetrics
][
VARIABLE_VALUEconv3d_166/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_166/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

u0
v1

u0
v1
≤
 Ѕlayer_regularization_losses
¬layers
wregularization_losses
√layer_metrics
x	variables
ƒnon_trainable_variables
ytrainable_variables
≈metrics
 
ж
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
Р
serving_default_inputPlaceholder*3
_output_shapes!
:€€€€€€€€€  *
dtype0*(
shape:€€€€€€€€€  
Д
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_160/kernelconv3d_160/biasconv3d_161/kernelconv3d_161/biasconv3d_162/kernelconv3d_162/biasdense_36/kerneldense_36/biasconv3d_163/kernelconv3d_163/biasconv3d_164/kernelconv3d_164/biasconv3d_165/kernelconv3d_165/biasconv3d_166/kernelconv3d_166/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *.
f)R'
%__inference_signature_wrapper_8733928
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
У
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_160/kernel/Read/ReadVariableOp#conv3d_160/bias/Read/ReadVariableOp%conv3d_161/kernel/Read/ReadVariableOp#conv3d_161/bias/Read/ReadVariableOp%conv3d_162/kernel/Read/ReadVariableOp#conv3d_162/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp%conv3d_163/kernel/Read/ReadVariableOp#conv3d_163/bias/Read/ReadVariableOp%conv3d_164/kernel/Read/ReadVariableOp#conv3d_164/bias/Read/ReadVariableOp%conv3d_165/kernel/Read/ReadVariableOp#conv3d_165/bias/Read/ReadVariableOp%conv3d_166/kernel/Read/ReadVariableOp#conv3d_166/bias/Read/ReadVariableOpConst*
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
GPU2 *0,1,2,3J 8В *)
f$R"
 __inference__traced_save_8734640
ќ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_160/kernelconv3d_160/biasconv3d_161/kernelconv3d_161/biasconv3d_162/kernelconv3d_162/biasdense_36/kerneldense_36/biasconv3d_163/kernelconv3d_163/biasconv3d_164/kernelconv3d_164/biasconv3d_165/kernelconv3d_165/biasconv3d_166/kernelconv3d_166/bias*
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
GPU2 *0,1,2,3J 8В *,
f'R%
#__inference__traced_restore_8734698ЉС
К	
m
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8733182

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  :[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
÷	
p
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_8734289

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
:€€€€€€€€€  2
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
:€€€€€€€€€  2	
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
:€€€€€€€€€  2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  :_ [
3
_output_shapes!
:€€€€€€€€€  
$
_user_specified_name
parameters
њ
•
,__inference_conv3d_163_layer_call_fn_8734499

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_163_layer_call_and_return_conditional_losses_87333052
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
г

m
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8734376

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
∞«
†
E__inference_model_36_layer_call_and_return_conditional_losses_8734272

inputsG
)conv3d_160_conv3d_readvariableop_resource:8
*conv3d_160_biasadd_readvariableop_resource:G
)conv3d_161_conv3d_readvariableop_resource:8
*conv3d_161_biasadd_readvariableop_resource:G
)conv3d_162_conv3d_readvariableop_resource:8
*conv3d_162_biasadd_readvariableop_resource:9
'dense_36_matmul_readvariableop_resource:@@6
(dense_36_biasadd_readvariableop_resource:@G
)conv3d_163_conv3d_readvariableop_resource:8
*conv3d_163_biasadd_readvariableop_resource:G
)conv3d_164_conv3d_readvariableop_resource:8
*conv3d_164_biasadd_readvariableop_resource:G
)conv3d_165_conv3d_readvariableop_resource:8
*conv3d_165_biasadd_readvariableop_resource:G
)conv3d_166_conv3d_readvariableop_resource:8
*conv3d_166_biasadd_readvariableop_resource:
identityИҐ!conv3d_160/BiasAdd/ReadVariableOpҐ conv3d_160/Conv3D/ReadVariableOpҐ!conv3d_161/BiasAdd/ReadVariableOpҐ conv3d_161/Conv3D/ReadVariableOpҐ!conv3d_162/BiasAdd/ReadVariableOpҐ conv3d_162/Conv3D/ReadVariableOpҐ!conv3d_163/BiasAdd/ReadVariableOpҐ conv3d_163/Conv3D/ReadVariableOpҐ!conv3d_164/BiasAdd/ReadVariableOpҐ conv3d_164/Conv3D/ReadVariableOpҐ!conv3d_165/BiasAdd/ReadVariableOpҐ conv3d_165/Conv3D/ReadVariableOpҐ!conv3d_166/BiasAdd/ReadVariableOpҐ conv3d_166/Conv3D/ReadVariableOpҐdense_36/BiasAdd/ReadVariableOpҐdense_36/MatMul/ReadVariableOpµ
0tf.__operators__.getitem_218/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_218/strided_slice/stackє
2tf.__operators__.getitem_218/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_218/strided_slice/stack_1є
2tf.__operators__.getitem_218/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_218/strided_slice/stack_2Т
*tf.__operators__.getitem_218/strided_sliceStridedSliceinputs9tf.__operators__.getitem_218/strided_slice/stack:output:0;tf.__operators__.getitem_218/strided_slice/stack_1:output:0;tf.__operators__.getitem_218/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_218/strided_slice{
range_conversion_36/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_36/sub/y–
range_conversion_36/subSub3tf.__operators__.getitem_218/strided_slice:output:0"range_conversion_36/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/subГ
range_conversion_36/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_36/truediv/y»
range_conversion_36/truedivRealDivrange_conversion_36/sub:z:0&range_conversion_36/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/truediv{
range_conversion_36/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_36/mul/yЉ
range_conversion_36/mulMulrange_conversion_36/truediv:z:0"range_conversion_36/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/mul{
range_conversion_36/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
range_conversion_36/add/yЇ
range_conversion_36/addAddV2range_conversion_36/mul:z:0"range_conversion_36/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/addµ
0tf.__operators__.getitem_219/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_219/strided_slice/stackє
2tf.__operators__.getitem_219/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_219/strided_slice/stack_1є
2tf.__operators__.getitem_219/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_219/strided_slice/stack_2Т
*tf.__operators__.getitem_219/strided_sliceStridedSliceinputs9tf.__operators__.getitem_219/strided_slice/stack:output:0;tf.__operators__.getitem_219/strided_slice/stack_1:output:0;tf.__operators__.getitem_219/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_219/strided_slicex
tf.concat_255/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_255/concat/axisх
tf.concat_255/concatConcatV2range_conversion_36/add:z:03tf.__operators__.getitem_219/strided_slice:output:0"tf.concat_255/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_255/concatЇ
 conv3d_160/Conv3D/ReadVariableOpReadVariableOp)conv3d_160_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_160/Conv3D/ReadVariableOpш
conv3d_160/Conv3DConv3Dtf.concat_255/concat:output:0(conv3d_160/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_160/Conv3D≠
!conv3d_160/BiasAdd/ReadVariableOpReadVariableOp*conv3d_160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_160/BiasAdd/ReadVariableOpѕ
conv3d_160/BiasAddBiasAddconv3d_160/Conv3D:output:0)conv3d_160/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_160/BiasAddС
conv3d_160/SoftplusSoftplusconv3d_160/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_160/SoftplusІ
#average_pooling3d_62/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_62/transpose/perm№
average_pooling3d_62/transpose	Transpose!conv3d_160/Softplus:activations:0,average_pooling3d_62/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2 
average_pooling3d_62/transposeн
average_pooling3d_62/AvgPool3D	AvgPool3D"average_pooling3d_62/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_62/AvgPool3DЂ
%average_pooling3d_62/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_62/transpose_1/permи
 average_pooling3d_62/transpose_1	Transpose'average_pooling3d_62/AvgPool3D:output:0.average_pooling3d_62/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_62/transpose_1Ї
 conv3d_161/Conv3D/ReadVariableOpReadVariableOp)conv3d_161_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_161/Conv3D/ReadVariableOp€
conv3d_161/Conv3DConv3D$average_pooling3d_62/transpose_1:y:0(conv3d_161/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_161/Conv3D≠
!conv3d_161/BiasAdd/ReadVariableOpReadVariableOp*conv3d_161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_161/BiasAdd/ReadVariableOpѕ
conv3d_161/BiasAddBiasAddconv3d_161/Conv3D:output:0)conv3d_161/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_161/BiasAddС
conv3d_161/SoftplusSoftplusconv3d_161/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_161/SoftplusІ
#average_pooling3d_63/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_63/transpose/perm№
average_pooling3d_63/transpose	Transpose!conv3d_161/Softplus:activations:0,average_pooling3d_63/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_63/transposeн
average_pooling3d_63/AvgPool3D	AvgPool3D"average_pooling3d_63/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_63/AvgPool3DЂ
%average_pooling3d_63/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_63/transpose_1/permи
 average_pooling3d_63/transpose_1	Transpose'average_pooling3d_63/AvgPool3D:output:0.average_pooling3d_63/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_63/transpose_1Ї
 conv3d_162/Conv3D/ReadVariableOpReadVariableOp)conv3d_162_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_162/Conv3D/ReadVariableOp€
conv3d_162/Conv3DConv3D$average_pooling3d_63/transpose_1:y:0(conv3d_162/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_162/Conv3D≠
!conv3d_162/BiasAdd/ReadVariableOpReadVariableOp*conv3d_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_162/BiasAdd/ReadVariableOpѕ
conv3d_162/BiasAddBiasAddconv3d_162/Conv3D:output:0)conv3d_162/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_162/BiasAddС
conv3d_162/SoftplusSoftplusconv3d_162/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_162/SoftplusІ
#average_pooling3d_64/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_64/transpose/perm№
average_pooling3d_64/transpose	Transpose!conv3d_162/Softplus:activations:0,average_pooling3d_64/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_64/transposeн
average_pooling3d_64/AvgPool3D	AvgPool3D"average_pooling3d_64/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_64/AvgPool3DЂ
%average_pooling3d_64/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_64/transpose_1/permи
 average_pooling3d_64/transpose_1	Transpose'average_pooling3d_64/AvgPool3D:output:0.average_pooling3d_64/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_64/transpose_1x
reshape_72/ShapeShape$average_pooling3d_64/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_72/ShapeК
reshape_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_72/strided_slice/stackО
 reshape_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_1О
 reshape_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_2§
reshape_72/strided_sliceStridedSlicereshape_72/Shape:output:0'reshape_72/strided_slice/stack:output:0)reshape_72/strided_slice/stack_1:output:0)reshape_72/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_72/strided_slicez
reshape_72/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_72/Reshape/shape/1≤
reshape_72/Reshape/shapePack!reshape_72/strided_slice:output:0#reshape_72/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_72/Reshape/shapeЃ
reshape_72/ReshapeReshape$average_pooling3d_64/transpose_1:y:0!reshape_72/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
reshape_72/Reshape®
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_36/MatMul/ReadVariableOp£
dense_36/MatMulMatMulreshape_72/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_36/MatMulІ
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_36/BiasAdd/ReadVariableOp•
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_36/BiasAdd
dense_36/SoftplusSoftplusdense_36/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_36/Softpluss
reshape_73/ShapeShapedense_36/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_73/ShapeК
reshape_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_73/strided_slice/stackО
 reshape_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_73/strided_slice/stack_1О
 reshape_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_73/strided_slice/stack_2§
reshape_73/strided_sliceStridedSlicereshape_73/Shape:output:0'reshape_73/strided_slice/stack:output:0)reshape_73/strided_slice/stack_1:output:0)reshape_73/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_73/strided_slicez
reshape_73/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/1z
reshape_73/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/2z
reshape_73/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/3z
reshape_73/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/4°
reshape_73/Reshape/shapePack!reshape_73/strided_slice:output:0#reshape_73/Reshape/shape/1:output:0#reshape_73/Reshape/shape/2:output:0#reshape_73/Reshape/shape/3:output:0#reshape_73/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_73/Reshape/shapeµ
reshape_73/ReshapeReshapedense_36/Softplus:activations:0!reshape_73/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
reshape_73/Reshape•
tf.reshape_292/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_292/Reshape/shape…
tf.reshape_292/ReshapeReshapereshape_73/Reshape:output:0%tf.reshape_292/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_292/Reshape°
tf.tile_146/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_146/Tile/multiplesЉ
tf.tile_146/TileTiletf.reshape_292/Reshape:output:0#tf.tile_146/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_146/TileЩ
tf.reshape_293/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_293/Reshape/shapeї
tf.reshape_293/ReshapeReshapetf.tile_146/Tile:output:0%tf.reshape_293/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_293/Reshapex
tf.concat_256/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_256/concat/axisз
tf.concat_256/concatConcatV2tf.reshape_293/Reshape:output:0!conv3d_162/Softplus:activations:0"tf.concat_256/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_256/concatЇ
 conv3d_163/Conv3D/ReadVariableOpReadVariableOp)conv3d_163_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_163/Conv3D/ReadVariableOpш
conv3d_163/Conv3DConv3Dtf.concat_256/concat:output:0(conv3d_163/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_163/Conv3D≠
!conv3d_163/BiasAdd/ReadVariableOpReadVariableOp*conv3d_163_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_163/BiasAdd/ReadVariableOpѕ
conv3d_163/BiasAddBiasAddconv3d_163/Conv3D:output:0)conv3d_163/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_163/BiasAddС
conv3d_163/SoftplusSoftplusconv3d_163/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_163/Softplus•
tf.reshape_294/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_294/Reshape/shapeѕ
tf.reshape_294/ReshapeReshape!conv3d_163/Softplus:activations:0%tf.reshape_294/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_294/Reshape°
tf.tile_147/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_147/Tile/multiplesЉ
tf.tile_147/TileTiletf.reshape_294/Reshape:output:0#tf.tile_147/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_147/TileЩ
tf.reshape_295/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_295/Reshape/shapeї
tf.reshape_295/ReshapeReshapetf.tile_147/Tile:output:0%tf.reshape_295/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_295/Reshapex
tf.concat_257/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_257/concat/axisз
tf.concat_257/concatConcatV2tf.reshape_295/Reshape:output:0!conv3d_161/Softplus:activations:0"tf.concat_257/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_257/concatЇ
 conv3d_164/Conv3D/ReadVariableOpReadVariableOp)conv3d_164_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_164/Conv3D/ReadVariableOpш
conv3d_164/Conv3DConv3Dtf.concat_257/concat:output:0(conv3d_164/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_164/Conv3D≠
!conv3d_164/BiasAdd/ReadVariableOpReadVariableOp*conv3d_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_164/BiasAdd/ReadVariableOpѕ
conv3d_164/BiasAddBiasAddconv3d_164/Conv3D:output:0)conv3d_164/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_164/BiasAddС
conv3d_164/SoftplusSoftplusconv3d_164/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_164/Softplus•
tf.reshape_296/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_296/Reshape/shapeѕ
tf.reshape_296/ReshapeReshape!conv3d_164/Softplus:activations:0%tf.reshape_296/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_296/Reshape°
tf.tile_148/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_148/Tile/multiplesЉ
tf.tile_148/TileTiletf.reshape_296/Reshape:output:0#tf.tile_148/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_148/TileЩ
tf.reshape_297/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_297/Reshape/shapeї
tf.reshape_297/ReshapeReshapetf.tile_148/Tile:output:0%tf.reshape_297/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_297/Reshapex
tf.concat_258/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_258/concat/axisз
tf.concat_258/concatConcatV2tf.reshape_297/Reshape:output:0!conv3d_160/Softplus:activations:0"tf.concat_258/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_258/concatЇ
 conv3d_165/Conv3D/ReadVariableOpReadVariableOp)conv3d_165_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_165/Conv3D/ReadVariableOpш
conv3d_165/Conv3DConv3Dtf.concat_258/concat:output:0(conv3d_165/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_165/Conv3D≠
!conv3d_165/BiasAdd/ReadVariableOpReadVariableOp*conv3d_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_165/BiasAdd/ReadVariableOpѕ
conv3d_165/BiasAddBiasAddconv3d_165/Conv3D:output:0)conv3d_165/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_165/BiasAddС
conv3d_165/SoftplusSoftplusconv3d_165/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_165/SoftplusЇ
 conv3d_166/Conv3D/ReadVariableOpReadVariableOp)conv3d_166_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_166/Conv3D/ReadVariableOpь
conv3d_166/Conv3DConv3D!conv3d_165/Softplus:activations:0(conv3d_166/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_166/Conv3D≠
!conv3d_166/BiasAdd/ReadVariableOpReadVariableOp*conv3d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_166/BiasAdd/ReadVariableOpѕ
conv3d_166/BiasAddBiasAddconv3d_166/Conv3D:output:0)conv3d_166/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_166/BiasAddВ
IdentityIdentityconv3d_166/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

IdentityВ
NoOpNoOp"^conv3d_160/BiasAdd/ReadVariableOp!^conv3d_160/Conv3D/ReadVariableOp"^conv3d_161/BiasAdd/ReadVariableOp!^conv3d_161/Conv3D/ReadVariableOp"^conv3d_162/BiasAdd/ReadVariableOp!^conv3d_162/Conv3D/ReadVariableOp"^conv3d_163/BiasAdd/ReadVariableOp!^conv3d_163/Conv3D/ReadVariableOp"^conv3d_164/BiasAdd/ReadVariableOp!^conv3d_164/Conv3D/ReadVariableOp"^conv3d_165/BiasAdd/ReadVariableOp!^conv3d_165/Conv3D/ReadVariableOp"^conv3d_166/BiasAdd/ReadVariableOp!^conv3d_166/Conv3D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2F
!conv3d_160/BiasAdd/ReadVariableOp!conv3d_160/BiasAdd/ReadVariableOp2D
 conv3d_160/Conv3D/ReadVariableOp conv3d_160/Conv3D/ReadVariableOp2F
!conv3d_161/BiasAdd/ReadVariableOp!conv3d_161/BiasAdd/ReadVariableOp2D
 conv3d_161/Conv3D/ReadVariableOp conv3d_161/Conv3D/ReadVariableOp2F
!conv3d_162/BiasAdd/ReadVariableOp!conv3d_162/BiasAdd/ReadVariableOp2D
 conv3d_162/Conv3D/ReadVariableOp conv3d_162/Conv3D/ReadVariableOp2F
!conv3d_163/BiasAdd/ReadVariableOp!conv3d_163/BiasAdd/ReadVariableOp2D
 conv3d_163/Conv3D/ReadVariableOp conv3d_163/Conv3D/ReadVariableOp2F
!conv3d_164/BiasAdd/ReadVariableOp!conv3d_164/BiasAdd/ReadVariableOp2D
 conv3d_164/Conv3D/ReadVariableOp conv3d_164/Conv3D/ReadVariableOp2F
!conv3d_165/BiasAdd/ReadVariableOp!conv3d_165/BiasAdd/ReadVariableOp2D
 conv3d_165/Conv3D/ReadVariableOp conv3d_165/Conv3D/ReadVariableOp2F
!conv3d_166/BiasAdd/ReadVariableOp!conv3d_166/BiasAdd/ReadVariableOp2D
 conv3d_166/Conv3D/ReadVariableOp conv3d_166/Conv3D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
’
Д
G__inference_conv3d_166_layer_call_and_return_conditional_losses_8733371

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
г

m
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8734328

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_161_layer_call_and_return_conditional_losses_8733195

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_160_layer_call_and_return_conditional_losses_8734309

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_165_layer_call_and_return_conditional_losses_8733355

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
∆ж
Ь
"__inference__wrapped_model_8733036	
inputP
2model_36_conv3d_160_conv3d_readvariableop_resource:A
3model_36_conv3d_160_biasadd_readvariableop_resource:P
2model_36_conv3d_161_conv3d_readvariableop_resource:A
3model_36_conv3d_161_biasadd_readvariableop_resource:P
2model_36_conv3d_162_conv3d_readvariableop_resource:A
3model_36_conv3d_162_biasadd_readvariableop_resource:B
0model_36_dense_36_matmul_readvariableop_resource:@@?
1model_36_dense_36_biasadd_readvariableop_resource:@P
2model_36_conv3d_163_conv3d_readvariableop_resource:A
3model_36_conv3d_163_biasadd_readvariableop_resource:P
2model_36_conv3d_164_conv3d_readvariableop_resource:A
3model_36_conv3d_164_biasadd_readvariableop_resource:P
2model_36_conv3d_165_conv3d_readvariableop_resource:A
3model_36_conv3d_165_biasadd_readvariableop_resource:P
2model_36_conv3d_166_conv3d_readvariableop_resource:A
3model_36_conv3d_166_biasadd_readvariableop_resource:
identityИҐ*model_36/conv3d_160/BiasAdd/ReadVariableOpҐ)model_36/conv3d_160/Conv3D/ReadVariableOpҐ*model_36/conv3d_161/BiasAdd/ReadVariableOpҐ)model_36/conv3d_161/Conv3D/ReadVariableOpҐ*model_36/conv3d_162/BiasAdd/ReadVariableOpҐ)model_36/conv3d_162/Conv3D/ReadVariableOpҐ*model_36/conv3d_163/BiasAdd/ReadVariableOpҐ)model_36/conv3d_163/Conv3D/ReadVariableOpҐ*model_36/conv3d_164/BiasAdd/ReadVariableOpҐ)model_36/conv3d_164/Conv3D/ReadVariableOpҐ*model_36/conv3d_165/BiasAdd/ReadVariableOpҐ)model_36/conv3d_165/Conv3D/ReadVariableOpҐ*model_36/conv3d_166/BiasAdd/ReadVariableOpҐ)model_36/conv3d_166/Conv3D/ReadVariableOpҐ(model_36/dense_36/BiasAdd/ReadVariableOpҐ'model_36/dense_36/MatMul/ReadVariableOp«
9model_36/tf.__operators__.getitem_218/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_36/tf.__operators__.getitem_218/strided_slice/stackЋ
;model_36/tf.__operators__.getitem_218/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_36/tf.__operators__.getitem_218/strided_slice/stack_1Ћ
;model_36/tf.__operators__.getitem_218/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_36/tf.__operators__.getitem_218/strided_slice/stack_2Њ
3model_36/tf.__operators__.getitem_218/strided_sliceStridedSliceinputBmodel_36/tf.__operators__.getitem_218/strided_slice/stack:output:0Dmodel_36/tf.__operators__.getitem_218/strided_slice/stack_1:output:0Dmodel_36/tf.__operators__.getitem_218/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask25
3model_36/tf.__operators__.getitem_218/strided_sliceН
"model_36/range_conversion_36/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_36/range_conversion_36/sub/yф
 model_36/range_conversion_36/subSub<model_36/tf.__operators__.getitem_218/strided_slice:output:0+model_36/range_conversion_36/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2"
 model_36/range_conversion_36/subХ
&model_36/range_conversion_36/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_36/range_conversion_36/truediv/yм
$model_36/range_conversion_36/truedivRealDiv$model_36/range_conversion_36/sub:z:0/model_36/range_conversion_36/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2&
$model_36/range_conversion_36/truedivН
"model_36/range_conversion_36/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_36/range_conversion_36/mul/yа
 model_36/range_conversion_36/mulMul(model_36/range_conversion_36/truediv:z:0+model_36/range_conversion_36/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2"
 model_36/range_conversion_36/mulН
"model_36/range_conversion_36/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2$
"model_36/range_conversion_36/add/yё
 model_36/range_conversion_36/addAddV2$model_36/range_conversion_36/mul:z:0+model_36/range_conversion_36/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2"
 model_36/range_conversion_36/add«
9model_36/tf.__operators__.getitem_219/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_36/tf.__operators__.getitem_219/strided_slice/stackЋ
;model_36/tf.__operators__.getitem_219/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_36/tf.__operators__.getitem_219/strided_slice/stack_1Ћ
;model_36/tf.__operators__.getitem_219/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_36/tf.__operators__.getitem_219/strided_slice/stack_2Њ
3model_36/tf.__operators__.getitem_219/strided_sliceStridedSliceinputBmodel_36/tf.__operators__.getitem_219/strided_slice/stack:output:0Dmodel_36/tf.__operators__.getitem_219/strided_slice/stack_1:output:0Dmodel_36/tf.__operators__.getitem_219/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask25
3model_36/tf.__operators__.getitem_219/strided_sliceК
"model_36/tf.concat_255/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_36/tf.concat_255/concat/axisҐ
model_36/tf.concat_255/concatConcatV2$model_36/range_conversion_36/add:z:0<model_36/tf.__operators__.getitem_219/strided_slice:output:0+model_36/tf.concat_255/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_36/tf.concat_255/concat’
)model_36/conv3d_160/Conv3D/ReadVariableOpReadVariableOp2model_36_conv3d_160_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_36/conv3d_160/Conv3D/ReadVariableOpЬ
model_36/conv3d_160/Conv3DConv3D&model_36/tf.concat_255/concat:output:01model_36/conv3d_160/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_36/conv3d_160/Conv3D»
*model_36/conv3d_160/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv3d_160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv3d_160/BiasAdd/ReadVariableOpу
model_36/conv3d_160/BiasAddBiasAdd#model_36/conv3d_160/Conv3D:output:02model_36/conv3d_160/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
model_36/conv3d_160/BiasAddђ
model_36/conv3d_160/SoftplusSoftplus$model_36/conv3d_160/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_36/conv3d_160/Softplusє
,model_36/average_pooling3d_62/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_36/average_pooling3d_62/transpose/permА
'model_36/average_pooling3d_62/transpose	Transpose*model_36/conv3d_160/Softplus:activations:05model_36/average_pooling3d_62/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2)
'model_36/average_pooling3d_62/transposeИ
'model_36/average_pooling3d_62/AvgPool3D	AvgPool3D+model_36/average_pooling3d_62/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_36/average_pooling3d_62/AvgPool3Dљ
.model_36/average_pooling3d_62/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_36/average_pooling3d_62/transpose_1/permМ
)model_36/average_pooling3d_62/transpose_1	Transpose0model_36/average_pooling3d_62/AvgPool3D:output:07model_36/average_pooling3d_62/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_36/average_pooling3d_62/transpose_1’
)model_36/conv3d_161/Conv3D/ReadVariableOpReadVariableOp2model_36_conv3d_161_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_36/conv3d_161/Conv3D/ReadVariableOp£
model_36/conv3d_161/Conv3DConv3D-model_36/average_pooling3d_62/transpose_1:y:01model_36/conv3d_161/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_36/conv3d_161/Conv3D»
*model_36/conv3d_161/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv3d_161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv3d_161/BiasAdd/ReadVariableOpу
model_36/conv3d_161/BiasAddBiasAdd#model_36/conv3d_161/Conv3D:output:02model_36/conv3d_161/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_36/conv3d_161/BiasAddђ
model_36/conv3d_161/SoftplusSoftplus$model_36/conv3d_161/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_36/conv3d_161/Softplusє
,model_36/average_pooling3d_63/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_36/average_pooling3d_63/transpose/permА
'model_36/average_pooling3d_63/transpose	Transpose*model_36/conv3d_161/Softplus:activations:05model_36/average_pooling3d_63/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'model_36/average_pooling3d_63/transposeИ
'model_36/average_pooling3d_63/AvgPool3D	AvgPool3D+model_36/average_pooling3d_63/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_36/average_pooling3d_63/AvgPool3Dљ
.model_36/average_pooling3d_63/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_36/average_pooling3d_63/transpose_1/permМ
)model_36/average_pooling3d_63/transpose_1	Transpose0model_36/average_pooling3d_63/AvgPool3D:output:07model_36/average_pooling3d_63/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_36/average_pooling3d_63/transpose_1’
)model_36/conv3d_162/Conv3D/ReadVariableOpReadVariableOp2model_36_conv3d_162_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_36/conv3d_162/Conv3D/ReadVariableOp£
model_36/conv3d_162/Conv3DConv3D-model_36/average_pooling3d_63/transpose_1:y:01model_36/conv3d_162/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_36/conv3d_162/Conv3D»
*model_36/conv3d_162/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv3d_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv3d_162/BiasAdd/ReadVariableOpу
model_36/conv3d_162/BiasAddBiasAdd#model_36/conv3d_162/Conv3D:output:02model_36/conv3d_162/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_36/conv3d_162/BiasAddђ
model_36/conv3d_162/SoftplusSoftplus$model_36/conv3d_162/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_36/conv3d_162/Softplusє
,model_36/average_pooling3d_64/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_36/average_pooling3d_64/transpose/permА
'model_36/average_pooling3d_64/transpose	Transpose*model_36/conv3d_162/Softplus:activations:05model_36/average_pooling3d_64/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'model_36/average_pooling3d_64/transposeИ
'model_36/average_pooling3d_64/AvgPool3D	AvgPool3D+model_36/average_pooling3d_64/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_36/average_pooling3d_64/AvgPool3Dљ
.model_36/average_pooling3d_64/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_36/average_pooling3d_64/transpose_1/permМ
)model_36/average_pooling3d_64/transpose_1	Transpose0model_36/average_pooling3d_64/AvgPool3D:output:07model_36/average_pooling3d_64/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_36/average_pooling3d_64/transpose_1У
model_36/reshape_72/ShapeShape-model_36/average_pooling3d_64/transpose_1:y:0*
T0*
_output_shapes
:2
model_36/reshape_72/ShapeЬ
'model_36/reshape_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_36/reshape_72/strided_slice/stack†
)model_36/reshape_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_36/reshape_72/strided_slice/stack_1†
)model_36/reshape_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_36/reshape_72/strided_slice/stack_2Џ
!model_36/reshape_72/strided_sliceStridedSlice"model_36/reshape_72/Shape:output:00model_36/reshape_72/strided_slice/stack:output:02model_36/reshape_72/strided_slice/stack_1:output:02model_36/reshape_72/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_36/reshape_72/strided_sliceМ
#model_36/reshape_72/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_36/reshape_72/Reshape/shape/1÷
!model_36/reshape_72/Reshape/shapePack*model_36/reshape_72/strided_slice:output:0,model_36/reshape_72/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_36/reshape_72/Reshape/shape“
model_36/reshape_72/ReshapeReshape-model_36/average_pooling3d_64/transpose_1:y:0*model_36/reshape_72/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_36/reshape_72/Reshape√
'model_36/dense_36/MatMul/ReadVariableOpReadVariableOp0model_36_dense_36_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_36/dense_36/MatMul/ReadVariableOp«
model_36/dense_36/MatMulMatMul$model_36/reshape_72/Reshape:output:0/model_36/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_36/dense_36/MatMul¬
(model_36/dense_36/BiasAdd/ReadVariableOpReadVariableOp1model_36_dense_36_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_36/dense_36/BiasAdd/ReadVariableOp…
model_36/dense_36/BiasAddBiasAdd"model_36/dense_36/MatMul:product:00model_36/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_36/dense_36/BiasAddЪ
model_36/dense_36/SoftplusSoftplus"model_36/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_36/dense_36/SoftplusО
model_36/reshape_73/ShapeShape(model_36/dense_36/Softplus:activations:0*
T0*
_output_shapes
:2
model_36/reshape_73/ShapeЬ
'model_36/reshape_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_36/reshape_73/strided_slice/stack†
)model_36/reshape_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_36/reshape_73/strided_slice/stack_1†
)model_36/reshape_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_36/reshape_73/strided_slice/stack_2Џ
!model_36/reshape_73/strided_sliceStridedSlice"model_36/reshape_73/Shape:output:00model_36/reshape_73/strided_slice/stack:output:02model_36/reshape_73/strided_slice/stack_1:output:02model_36/reshape_73/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_36/reshape_73/strided_sliceМ
#model_36/reshape_73/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_36/reshape_73/Reshape/shape/1М
#model_36/reshape_73/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_36/reshape_73/Reshape/shape/2М
#model_36/reshape_73/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_36/reshape_73/Reshape/shape/3М
#model_36/reshape_73/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_36/reshape_73/Reshape/shape/4а
!model_36/reshape_73/Reshape/shapePack*model_36/reshape_73/strided_slice:output:0,model_36/reshape_73/Reshape/shape/1:output:0,model_36/reshape_73/Reshape/shape/2:output:0,model_36/reshape_73/Reshape/shape/3:output:0,model_36/reshape_73/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_36/reshape_73/Reshape/shapeў
model_36/reshape_73/ReshapeReshape(model_36/dense_36/Softplus:activations:0*model_36/reshape_73/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_36/reshape_73/ReshapeЈ
%model_36/tf.reshape_292/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_36/tf.reshape_292/Reshape/shapeн
model_36/tf.reshape_292/ReshapeReshape$model_36/reshape_73/Reshape:output:0.model_36/tf.reshape_292/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_36/tf.reshape_292/Reshape≥
#model_36/tf.tile_146/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_36/tf.tile_146/Tile/multiplesа
model_36/tf.tile_146/TileTile(model_36/tf.reshape_292/Reshape:output:0,model_36/tf.tile_146/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_36/tf.tile_146/TileЂ
%model_36/tf.reshape_293/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2'
%model_36/tf.reshape_293/Reshape/shapeя
model_36/tf.reshape_293/ReshapeReshape"model_36/tf.tile_146/Tile:output:0.model_36/tf.reshape_293/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2!
model_36/tf.reshape_293/ReshapeК
"model_36/tf.concat_256/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_36/tf.concat_256/concat/axisФ
model_36/tf.concat_256/concatConcatV2(model_36/tf.reshape_293/Reshape:output:0*model_36/conv3d_162/Softplus:activations:0+model_36/tf.concat_256/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
model_36/tf.concat_256/concat’
)model_36/conv3d_163/Conv3D/ReadVariableOpReadVariableOp2model_36_conv3d_163_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_36/conv3d_163/Conv3D/ReadVariableOpЬ
model_36/conv3d_163/Conv3DConv3D&model_36/tf.concat_256/concat:output:01model_36/conv3d_163/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_36/conv3d_163/Conv3D»
*model_36/conv3d_163/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv3d_163_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv3d_163/BiasAdd/ReadVariableOpу
model_36/conv3d_163/BiasAddBiasAdd#model_36/conv3d_163/Conv3D:output:02model_36/conv3d_163/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_36/conv3d_163/BiasAddђ
model_36/conv3d_163/SoftplusSoftplus$model_36/conv3d_163/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_36/conv3d_163/SoftplusЈ
%model_36/tf.reshape_294/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_36/tf.reshape_294/Reshape/shapeу
model_36/tf.reshape_294/ReshapeReshape*model_36/conv3d_163/Softplus:activations:0.model_36/tf.reshape_294/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_36/tf.reshape_294/Reshape≥
#model_36/tf.tile_147/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_36/tf.tile_147/Tile/multiplesа
model_36/tf.tile_147/TileTile(model_36/tf.reshape_294/Reshape:output:0,model_36/tf.tile_147/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_36/tf.tile_147/TileЂ
%model_36/tf.reshape_295/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2'
%model_36/tf.reshape_295/Reshape/shapeя
model_36/tf.reshape_295/ReshapeReshape"model_36/tf.tile_147/Tile:output:0.model_36/tf.reshape_295/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2!
model_36/tf.reshape_295/ReshapeК
"model_36/tf.concat_257/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_36/tf.concat_257/concat/axisФ
model_36/tf.concat_257/concatConcatV2(model_36/tf.reshape_295/Reshape:output:0*model_36/conv3d_161/Softplus:activations:0+model_36/tf.concat_257/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
model_36/tf.concat_257/concat’
)model_36/conv3d_164/Conv3D/ReadVariableOpReadVariableOp2model_36_conv3d_164_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_36/conv3d_164/Conv3D/ReadVariableOpЬ
model_36/conv3d_164/Conv3DConv3D&model_36/tf.concat_257/concat:output:01model_36/conv3d_164/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_36/conv3d_164/Conv3D»
*model_36/conv3d_164/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv3d_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv3d_164/BiasAdd/ReadVariableOpу
model_36/conv3d_164/BiasAddBiasAdd#model_36/conv3d_164/Conv3D:output:02model_36/conv3d_164/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_36/conv3d_164/BiasAddђ
model_36/conv3d_164/SoftplusSoftplus$model_36/conv3d_164/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_36/conv3d_164/SoftplusЈ
%model_36/tf.reshape_296/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_36/tf.reshape_296/Reshape/shapeу
model_36/tf.reshape_296/ReshapeReshape*model_36/conv3d_164/Softplus:activations:0.model_36/tf.reshape_296/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_36/tf.reshape_296/Reshape≥
#model_36/tf.tile_148/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_36/tf.tile_148/Tile/multiplesа
model_36/tf.tile_148/TileTile(model_36/tf.reshape_296/Reshape:output:0,model_36/tf.tile_148/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_36/tf.tile_148/TileЂ
%model_36/tf.reshape_297/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2'
%model_36/tf.reshape_297/Reshape/shapeя
model_36/tf.reshape_297/ReshapeReshape"model_36/tf.tile_148/Tile:output:0.model_36/tf.reshape_297/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2!
model_36/tf.reshape_297/ReshapeК
"model_36/tf.concat_258/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_36/tf.concat_258/concat/axisФ
model_36/tf.concat_258/concatConcatV2(model_36/tf.reshape_297/Reshape:output:0*model_36/conv3d_160/Softplus:activations:0+model_36/tf.concat_258/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_36/tf.concat_258/concat’
)model_36/conv3d_165/Conv3D/ReadVariableOpReadVariableOp2model_36_conv3d_165_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_36/conv3d_165/Conv3D/ReadVariableOpЬ
model_36/conv3d_165/Conv3DConv3D&model_36/tf.concat_258/concat:output:01model_36/conv3d_165/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_36/conv3d_165/Conv3D»
*model_36/conv3d_165/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv3d_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv3d_165/BiasAdd/ReadVariableOpу
model_36/conv3d_165/BiasAddBiasAdd#model_36/conv3d_165/Conv3D:output:02model_36/conv3d_165/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
model_36/conv3d_165/BiasAddђ
model_36/conv3d_165/SoftplusSoftplus$model_36/conv3d_165/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_36/conv3d_165/Softplus’
)model_36/conv3d_166/Conv3D/ReadVariableOpReadVariableOp2model_36_conv3d_166_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_36/conv3d_166/Conv3D/ReadVariableOp†
model_36/conv3d_166/Conv3DConv3D*model_36/conv3d_165/Softplus:activations:01model_36/conv3d_166/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_36/conv3d_166/Conv3D»
*model_36/conv3d_166/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv3d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv3d_166/BiasAdd/ReadVariableOpу
model_36/conv3d_166/BiasAddBiasAdd#model_36/conv3d_166/Conv3D:output:02model_36/conv3d_166/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
model_36/conv3d_166/BiasAddЛ
IdentityIdentity$model_36/conv3d_166/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

IdentityТ
NoOpNoOp+^model_36/conv3d_160/BiasAdd/ReadVariableOp*^model_36/conv3d_160/Conv3D/ReadVariableOp+^model_36/conv3d_161/BiasAdd/ReadVariableOp*^model_36/conv3d_161/Conv3D/ReadVariableOp+^model_36/conv3d_162/BiasAdd/ReadVariableOp*^model_36/conv3d_162/Conv3D/ReadVariableOp+^model_36/conv3d_163/BiasAdd/ReadVariableOp*^model_36/conv3d_163/Conv3D/ReadVariableOp+^model_36/conv3d_164/BiasAdd/ReadVariableOp*^model_36/conv3d_164/Conv3D/ReadVariableOp+^model_36/conv3d_165/BiasAdd/ReadVariableOp*^model_36/conv3d_165/Conv3D/ReadVariableOp+^model_36/conv3d_166/BiasAdd/ReadVariableOp*^model_36/conv3d_166/Conv3D/ReadVariableOp)^model_36/dense_36/BiasAdd/ReadVariableOp(^model_36/dense_36/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2X
*model_36/conv3d_160/BiasAdd/ReadVariableOp*model_36/conv3d_160/BiasAdd/ReadVariableOp2V
)model_36/conv3d_160/Conv3D/ReadVariableOp)model_36/conv3d_160/Conv3D/ReadVariableOp2X
*model_36/conv3d_161/BiasAdd/ReadVariableOp*model_36/conv3d_161/BiasAdd/ReadVariableOp2V
)model_36/conv3d_161/Conv3D/ReadVariableOp)model_36/conv3d_161/Conv3D/ReadVariableOp2X
*model_36/conv3d_162/BiasAdd/ReadVariableOp*model_36/conv3d_162/BiasAdd/ReadVariableOp2V
)model_36/conv3d_162/Conv3D/ReadVariableOp)model_36/conv3d_162/Conv3D/ReadVariableOp2X
*model_36/conv3d_163/BiasAdd/ReadVariableOp*model_36/conv3d_163/BiasAdd/ReadVariableOp2V
)model_36/conv3d_163/Conv3D/ReadVariableOp)model_36/conv3d_163/Conv3D/ReadVariableOp2X
*model_36/conv3d_164/BiasAdd/ReadVariableOp*model_36/conv3d_164/BiasAdd/ReadVariableOp2V
)model_36/conv3d_164/Conv3D/ReadVariableOp)model_36/conv3d_164/Conv3D/ReadVariableOp2X
*model_36/conv3d_165/BiasAdd/ReadVariableOp*model_36/conv3d_165/BiasAdd/ReadVariableOp2V
)model_36/conv3d_165/Conv3D/ReadVariableOp)model_36/conv3d_165/Conv3D/ReadVariableOp2X
*model_36/conv3d_166/BiasAdd/ReadVariableOp*model_36/conv3d_166/BiasAdd/ReadVariableOp2V
)model_36/conv3d_166/Conv3D/ReadVariableOp)model_36/conv3d_166/Conv3D/ReadVariableOp2T
(model_36/dense_36/BiasAdd/ReadVariableOp(model_36/dense_36/BiasAdd/ReadVariableOp2R
'model_36/dense_36/MatMul/ReadVariableOp'model_36/dense_36/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
Ъ
c
G__inference_reshape_73_layer_call_and_return_conditional_losses_8734490

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
strided_slice/stack_2в
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
Reshape/shape/4‘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
У
ц
E__inference_dense_36_layer_call_and_return_conditional_losses_8734470

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_163_layer_call_and_return_conditional_losses_8734510

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
г

m
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8733109

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
њ
•
,__inference_conv3d_164_layer_call_fn_8734519

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_164_layer_call_and_return_conditional_losses_87333302
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Љx
Ъ
E__inference_model_36_layer_call_and_return_conditional_losses_8733649

inputs0
conv3d_160_8733579: 
conv3d_160_8733581:0
conv3d_161_8733585: 
conv3d_161_8733587:0
conv3d_162_8733591: 
conv3d_162_8733593:"
dense_36_8733598:@@
dense_36_8733600:@0
conv3d_163_8733612: 
conv3d_163_8733614:0
conv3d_164_8733625: 
conv3d_164_8733627:0
conv3d_165_8733638: 
conv3d_165_8733640:0
conv3d_166_8733643: 
conv3d_166_8733645:
identityИҐ"conv3d_160/StatefulPartitionedCallҐ"conv3d_161/StatefulPartitionedCallҐ"conv3d_162/StatefulPartitionedCallҐ"conv3d_163/StatefulPartitionedCallҐ"conv3d_164/StatefulPartitionedCallҐ"conv3d_165/StatefulPartitionedCallҐ"conv3d_166/StatefulPartitionedCallҐ dense_36/StatefulPartitionedCallµ
0tf.__operators__.getitem_218/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_218/strided_slice/stackє
2tf.__operators__.getitem_218/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_218/strided_slice/stack_1є
2tf.__operators__.getitem_218/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_218/strided_slice/stack_2Т
*tf.__operators__.getitem_218/strided_sliceStridedSliceinputs9tf.__operators__.getitem_218/strided_slice/stack:output:0;tf.__operators__.getitem_218/strided_slice/stack_1:output:0;tf.__operators__.getitem_218/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_218/strided_sliceЇ
#range_conversion_36/PartitionedCallPartitionedCall3tf.__operators__.getitem_218/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_87331492%
#range_conversion_36/PartitionedCallµ
0tf.__operators__.getitem_219/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_219/strided_slice/stackє
2tf.__operators__.getitem_219/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_219/strided_slice/stack_1є
2tf.__operators__.getitem_219/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_219/strided_slice/stack_2Т
*tf.__operators__.getitem_219/strided_sliceStridedSliceinputs9tf.__operators__.getitem_219/strided_slice/stack:output:0;tf.__operators__.getitem_219/strided_slice/stack_1:output:0;tf.__operators__.getitem_219/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_219/strided_slicex
tf.concat_255/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_255/concat/axisЖ
tf.concat_255/concatConcatV2,range_conversion_36/PartitionedCall:output:03tf.__operators__.getitem_219/strided_slice:output:0"tf.concat_255/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_255/concatѕ
"conv3d_160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_255/concat:output:0conv3d_160_8733579conv3d_160_8733581*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_160_layer_call_and_return_conditional_losses_87331682$
"conv3d_160/StatefulPartitionedCallµ
$average_pooling3d_62/PartitionedCallPartitionedCall+conv3d_160/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_87331822&
$average_pooling3d_62/PartitionedCallя
"conv3d_161/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_62/PartitionedCall:output:0conv3d_161_8733585conv3d_161_8733587*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_161_layer_call_and_return_conditional_losses_87331952$
"conv3d_161/StatefulPartitionedCallµ
$average_pooling3d_63/PartitionedCallPartitionedCall+conv3d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_87332092&
$average_pooling3d_63/PartitionedCallя
"conv3d_162/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_63/PartitionedCall:output:0conv3d_162_8733591conv3d_162_8733593*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_162_layer_call_and_return_conditional_losses_87332222$
"conv3d_162/StatefulPartitionedCallµ
$average_pooling3d_64/PartitionedCallPartitionedCall+conv3d_162/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_87332362&
$average_pooling3d_64/PartitionedCallН
reshape_72/PartitionedCallPartitionedCall-average_pooling3d_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_72_layer_call_and_return_conditional_losses_87332502
reshape_72/PartitionedCallњ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#reshape_72/PartitionedCall:output:0dense_36_8733598dense_36_8733600*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_87332632"
 dense_36/StatefulPartitionedCallХ
reshape_73/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_73_layer_call_and_return_conditional_losses_87332842
reshape_73/PartitionedCall•
tf.reshape_292/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_292/Reshape/shape—
tf.reshape_292/ReshapeReshape#reshape_73/PartitionedCall:output:0%tf.reshape_292/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_292/Reshape°
tf.tile_146/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_146/Tile/multiplesЉ
tf.tile_146/TileTiletf.reshape_292/Reshape:output:0#tf.tile_146/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_146/TileЩ
tf.reshape_293/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_293/Reshape/shapeї
tf.reshape_293/ReshapeReshapetf.tile_146/Tile:output:0%tf.reshape_293/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_293/Reshapex
tf.concat_256/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_256/concat/axisс
tf.concat_256/concatConcatV2tf.reshape_293/Reshape:output:0+conv3d_162/StatefulPartitionedCall:output:0"tf.concat_256/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_256/concatѕ
"conv3d_163/StatefulPartitionedCallStatefulPartitionedCalltf.concat_256/concat:output:0conv3d_163_8733612conv3d_163_8733614*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_163_layer_call_and_return_conditional_losses_87333052$
"conv3d_163/StatefulPartitionedCall•
tf.reshape_294/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_294/Reshape/shapeў
tf.reshape_294/ReshapeReshape+conv3d_163/StatefulPartitionedCall:output:0%tf.reshape_294/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_294/Reshape°
tf.tile_147/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_147/Tile/multiplesЉ
tf.tile_147/TileTiletf.reshape_294/Reshape:output:0#tf.tile_147/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_147/TileЩ
tf.reshape_295/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_295/Reshape/shapeї
tf.reshape_295/ReshapeReshapetf.tile_147/Tile:output:0%tf.reshape_295/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_295/Reshapex
tf.concat_257/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_257/concat/axisс
tf.concat_257/concatConcatV2tf.reshape_295/Reshape:output:0+conv3d_161/StatefulPartitionedCall:output:0"tf.concat_257/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_257/concatѕ
"conv3d_164/StatefulPartitionedCallStatefulPartitionedCalltf.concat_257/concat:output:0conv3d_164_8733625conv3d_164_8733627*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_164_layer_call_and_return_conditional_losses_87333302$
"conv3d_164/StatefulPartitionedCall•
tf.reshape_296/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_296/Reshape/shapeў
tf.reshape_296/ReshapeReshape+conv3d_164/StatefulPartitionedCall:output:0%tf.reshape_296/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_296/Reshape°
tf.tile_148/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_148/Tile/multiplesЉ
tf.tile_148/TileTiletf.reshape_296/Reshape:output:0#tf.tile_148/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_148/TileЩ
tf.reshape_297/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_297/Reshape/shapeї
tf.reshape_297/ReshapeReshapetf.tile_148/Tile:output:0%tf.reshape_297/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_297/Reshapex
tf.concat_258/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_258/concat/axisс
tf.concat_258/concatConcatV2tf.reshape_297/Reshape:output:0+conv3d_160/StatefulPartitionedCall:output:0"tf.concat_258/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_258/concatѕ
"conv3d_165/StatefulPartitionedCallStatefulPartitionedCalltf.concat_258/concat:output:0conv3d_165_8733638conv3d_165_8733640*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_165_layer_call_and_return_conditional_losses_87333552$
"conv3d_165/StatefulPartitionedCallЁ
"conv3d_166/StatefulPartitionedCallStatefulPartitionedCall+conv3d_165/StatefulPartitionedCall:output:0conv3d_166_8733643conv3d_166_8733645*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_166_layer_call_and_return_conditional_losses_87333712$
"conv3d_166/StatefulPartitionedCallТ
IdentityIdentity+conv3d_166/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_160/StatefulPartitionedCall#^conv3d_161/StatefulPartitionedCall#^conv3d_162/StatefulPartitionedCall#^conv3d_163/StatefulPartitionedCall#^conv3d_164/StatefulPartitionedCall#^conv3d_165/StatefulPartitionedCall#^conv3d_166/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_160/StatefulPartitionedCall"conv3d_160/StatefulPartitionedCall2H
"conv3d_161/StatefulPartitionedCall"conv3d_161/StatefulPartitionedCall2H
"conv3d_162/StatefulPartitionedCall"conv3d_162/StatefulPartitionedCall2H
"conv3d_163/StatefulPartitionedCall"conv3d_163/StatefulPartitionedCall2H
"conv3d_164/StatefulPartitionedCall"conv3d_164/StatefulPartitionedCall2H
"conv3d_165/StatefulPartitionedCall"conv3d_165/StatefulPartitionedCall2H
"conv3d_166/StatefulPartitionedCall"conv3d_166/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
Ґ
R
6__inference_average_pooling3d_64_layer_call_fn_8734410

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_87331092
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѓ
д
%__inference_signature_wrapper_8733928	
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
identityИҐStatefulPartitionedCall£
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
:€€€€€€€€€  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *+
f&R$
"__inference__wrapped_model_87330362
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
ў
к
*__inference_model_36_layer_call_fn_8733965

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
identityИҐStatefulPartitionedCall«
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
:€€€€€€€€€  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_87333782
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
∞«
†
E__inference_model_36_layer_call_and_return_conditional_losses_8734137

inputsG
)conv3d_160_conv3d_readvariableop_resource:8
*conv3d_160_biasadd_readvariableop_resource:G
)conv3d_161_conv3d_readvariableop_resource:8
*conv3d_161_biasadd_readvariableop_resource:G
)conv3d_162_conv3d_readvariableop_resource:8
*conv3d_162_biasadd_readvariableop_resource:9
'dense_36_matmul_readvariableop_resource:@@6
(dense_36_biasadd_readvariableop_resource:@G
)conv3d_163_conv3d_readvariableop_resource:8
*conv3d_163_biasadd_readvariableop_resource:G
)conv3d_164_conv3d_readvariableop_resource:8
*conv3d_164_biasadd_readvariableop_resource:G
)conv3d_165_conv3d_readvariableop_resource:8
*conv3d_165_biasadd_readvariableop_resource:G
)conv3d_166_conv3d_readvariableop_resource:8
*conv3d_166_biasadd_readvariableop_resource:
identityИҐ!conv3d_160/BiasAdd/ReadVariableOpҐ conv3d_160/Conv3D/ReadVariableOpҐ!conv3d_161/BiasAdd/ReadVariableOpҐ conv3d_161/Conv3D/ReadVariableOpҐ!conv3d_162/BiasAdd/ReadVariableOpҐ conv3d_162/Conv3D/ReadVariableOpҐ!conv3d_163/BiasAdd/ReadVariableOpҐ conv3d_163/Conv3D/ReadVariableOpҐ!conv3d_164/BiasAdd/ReadVariableOpҐ conv3d_164/Conv3D/ReadVariableOpҐ!conv3d_165/BiasAdd/ReadVariableOpҐ conv3d_165/Conv3D/ReadVariableOpҐ!conv3d_166/BiasAdd/ReadVariableOpҐ conv3d_166/Conv3D/ReadVariableOpҐdense_36/BiasAdd/ReadVariableOpҐdense_36/MatMul/ReadVariableOpµ
0tf.__operators__.getitem_218/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_218/strided_slice/stackє
2tf.__operators__.getitem_218/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_218/strided_slice/stack_1є
2tf.__operators__.getitem_218/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_218/strided_slice/stack_2Т
*tf.__operators__.getitem_218/strided_sliceStridedSliceinputs9tf.__operators__.getitem_218/strided_slice/stack:output:0;tf.__operators__.getitem_218/strided_slice/stack_1:output:0;tf.__operators__.getitem_218/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_218/strided_slice{
range_conversion_36/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_36/sub/y–
range_conversion_36/subSub3tf.__operators__.getitem_218/strided_slice:output:0"range_conversion_36/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/subГ
range_conversion_36/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_36/truediv/y»
range_conversion_36/truedivRealDivrange_conversion_36/sub:z:0&range_conversion_36/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/truediv{
range_conversion_36/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_36/mul/yЉ
range_conversion_36/mulMulrange_conversion_36/truediv:z:0"range_conversion_36/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/mul{
range_conversion_36/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
range_conversion_36/add/yЇ
range_conversion_36/addAddV2range_conversion_36/mul:z:0"range_conversion_36/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_36/addµ
0tf.__operators__.getitem_219/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_219/strided_slice/stackє
2tf.__operators__.getitem_219/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_219/strided_slice/stack_1є
2tf.__operators__.getitem_219/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_219/strided_slice/stack_2Т
*tf.__operators__.getitem_219/strided_sliceStridedSliceinputs9tf.__operators__.getitem_219/strided_slice/stack:output:0;tf.__operators__.getitem_219/strided_slice/stack_1:output:0;tf.__operators__.getitem_219/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_219/strided_slicex
tf.concat_255/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_255/concat/axisх
tf.concat_255/concatConcatV2range_conversion_36/add:z:03tf.__operators__.getitem_219/strided_slice:output:0"tf.concat_255/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_255/concatЇ
 conv3d_160/Conv3D/ReadVariableOpReadVariableOp)conv3d_160_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_160/Conv3D/ReadVariableOpш
conv3d_160/Conv3DConv3Dtf.concat_255/concat:output:0(conv3d_160/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_160/Conv3D≠
!conv3d_160/BiasAdd/ReadVariableOpReadVariableOp*conv3d_160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_160/BiasAdd/ReadVariableOpѕ
conv3d_160/BiasAddBiasAddconv3d_160/Conv3D:output:0)conv3d_160/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_160/BiasAddС
conv3d_160/SoftplusSoftplusconv3d_160/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_160/SoftplusІ
#average_pooling3d_62/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_62/transpose/perm№
average_pooling3d_62/transpose	Transpose!conv3d_160/Softplus:activations:0,average_pooling3d_62/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2 
average_pooling3d_62/transposeн
average_pooling3d_62/AvgPool3D	AvgPool3D"average_pooling3d_62/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_62/AvgPool3DЂ
%average_pooling3d_62/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_62/transpose_1/permи
 average_pooling3d_62/transpose_1	Transpose'average_pooling3d_62/AvgPool3D:output:0.average_pooling3d_62/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_62/transpose_1Ї
 conv3d_161/Conv3D/ReadVariableOpReadVariableOp)conv3d_161_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_161/Conv3D/ReadVariableOp€
conv3d_161/Conv3DConv3D$average_pooling3d_62/transpose_1:y:0(conv3d_161/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_161/Conv3D≠
!conv3d_161/BiasAdd/ReadVariableOpReadVariableOp*conv3d_161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_161/BiasAdd/ReadVariableOpѕ
conv3d_161/BiasAddBiasAddconv3d_161/Conv3D:output:0)conv3d_161/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_161/BiasAddС
conv3d_161/SoftplusSoftplusconv3d_161/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_161/SoftplusІ
#average_pooling3d_63/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_63/transpose/perm№
average_pooling3d_63/transpose	Transpose!conv3d_161/Softplus:activations:0,average_pooling3d_63/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_63/transposeн
average_pooling3d_63/AvgPool3D	AvgPool3D"average_pooling3d_63/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_63/AvgPool3DЂ
%average_pooling3d_63/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_63/transpose_1/permи
 average_pooling3d_63/transpose_1	Transpose'average_pooling3d_63/AvgPool3D:output:0.average_pooling3d_63/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_63/transpose_1Ї
 conv3d_162/Conv3D/ReadVariableOpReadVariableOp)conv3d_162_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_162/Conv3D/ReadVariableOp€
conv3d_162/Conv3DConv3D$average_pooling3d_63/transpose_1:y:0(conv3d_162/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_162/Conv3D≠
!conv3d_162/BiasAdd/ReadVariableOpReadVariableOp*conv3d_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_162/BiasAdd/ReadVariableOpѕ
conv3d_162/BiasAddBiasAddconv3d_162/Conv3D:output:0)conv3d_162/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_162/BiasAddС
conv3d_162/SoftplusSoftplusconv3d_162/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_162/SoftplusІ
#average_pooling3d_64/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_64/transpose/perm№
average_pooling3d_64/transpose	Transpose!conv3d_162/Softplus:activations:0,average_pooling3d_64/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_64/transposeн
average_pooling3d_64/AvgPool3D	AvgPool3D"average_pooling3d_64/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_64/AvgPool3DЂ
%average_pooling3d_64/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_64/transpose_1/permи
 average_pooling3d_64/transpose_1	Transpose'average_pooling3d_64/AvgPool3D:output:0.average_pooling3d_64/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_64/transpose_1x
reshape_72/ShapeShape$average_pooling3d_64/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_72/ShapeК
reshape_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_72/strided_slice/stackО
 reshape_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_1О
 reshape_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_2§
reshape_72/strided_sliceStridedSlicereshape_72/Shape:output:0'reshape_72/strided_slice/stack:output:0)reshape_72/strided_slice/stack_1:output:0)reshape_72/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_72/strided_slicez
reshape_72/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_72/Reshape/shape/1≤
reshape_72/Reshape/shapePack!reshape_72/strided_slice:output:0#reshape_72/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_72/Reshape/shapeЃ
reshape_72/ReshapeReshape$average_pooling3d_64/transpose_1:y:0!reshape_72/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
reshape_72/Reshape®
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_36/MatMul/ReadVariableOp£
dense_36/MatMulMatMulreshape_72/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_36/MatMulІ
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_36/BiasAdd/ReadVariableOp•
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_36/BiasAdd
dense_36/SoftplusSoftplusdense_36/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_36/Softpluss
reshape_73/ShapeShapedense_36/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_73/ShapeК
reshape_73/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_73/strided_slice/stackО
 reshape_73/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_73/strided_slice/stack_1О
 reshape_73/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_73/strided_slice/stack_2§
reshape_73/strided_sliceStridedSlicereshape_73/Shape:output:0'reshape_73/strided_slice/stack:output:0)reshape_73/strided_slice/stack_1:output:0)reshape_73/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_73/strided_slicez
reshape_73/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/1z
reshape_73/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/2z
reshape_73/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/3z
reshape_73/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_73/Reshape/shape/4°
reshape_73/Reshape/shapePack!reshape_73/strided_slice:output:0#reshape_73/Reshape/shape/1:output:0#reshape_73/Reshape/shape/2:output:0#reshape_73/Reshape/shape/3:output:0#reshape_73/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_73/Reshape/shapeµ
reshape_73/ReshapeReshapedense_36/Softplus:activations:0!reshape_73/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
reshape_73/Reshape•
tf.reshape_292/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_292/Reshape/shape…
tf.reshape_292/ReshapeReshapereshape_73/Reshape:output:0%tf.reshape_292/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_292/Reshape°
tf.tile_146/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_146/Tile/multiplesЉ
tf.tile_146/TileTiletf.reshape_292/Reshape:output:0#tf.tile_146/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_146/TileЩ
tf.reshape_293/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_293/Reshape/shapeї
tf.reshape_293/ReshapeReshapetf.tile_146/Tile:output:0%tf.reshape_293/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_293/Reshapex
tf.concat_256/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_256/concat/axisз
tf.concat_256/concatConcatV2tf.reshape_293/Reshape:output:0!conv3d_162/Softplus:activations:0"tf.concat_256/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_256/concatЇ
 conv3d_163/Conv3D/ReadVariableOpReadVariableOp)conv3d_163_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_163/Conv3D/ReadVariableOpш
conv3d_163/Conv3DConv3Dtf.concat_256/concat:output:0(conv3d_163/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_163/Conv3D≠
!conv3d_163/BiasAdd/ReadVariableOpReadVariableOp*conv3d_163_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_163/BiasAdd/ReadVariableOpѕ
conv3d_163/BiasAddBiasAddconv3d_163/Conv3D:output:0)conv3d_163/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_163/BiasAddС
conv3d_163/SoftplusSoftplusconv3d_163/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_163/Softplus•
tf.reshape_294/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_294/Reshape/shapeѕ
tf.reshape_294/ReshapeReshape!conv3d_163/Softplus:activations:0%tf.reshape_294/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_294/Reshape°
tf.tile_147/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_147/Tile/multiplesЉ
tf.tile_147/TileTiletf.reshape_294/Reshape:output:0#tf.tile_147/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_147/TileЩ
tf.reshape_295/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_295/Reshape/shapeї
tf.reshape_295/ReshapeReshapetf.tile_147/Tile:output:0%tf.reshape_295/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_295/Reshapex
tf.concat_257/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_257/concat/axisз
tf.concat_257/concatConcatV2tf.reshape_295/Reshape:output:0!conv3d_161/Softplus:activations:0"tf.concat_257/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_257/concatЇ
 conv3d_164/Conv3D/ReadVariableOpReadVariableOp)conv3d_164_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_164/Conv3D/ReadVariableOpш
conv3d_164/Conv3DConv3Dtf.concat_257/concat:output:0(conv3d_164/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_164/Conv3D≠
!conv3d_164/BiasAdd/ReadVariableOpReadVariableOp*conv3d_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_164/BiasAdd/ReadVariableOpѕ
conv3d_164/BiasAddBiasAddconv3d_164/Conv3D:output:0)conv3d_164/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_164/BiasAddС
conv3d_164/SoftplusSoftplusconv3d_164/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_164/Softplus•
tf.reshape_296/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_296/Reshape/shapeѕ
tf.reshape_296/ReshapeReshape!conv3d_164/Softplus:activations:0%tf.reshape_296/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_296/Reshape°
tf.tile_148/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_148/Tile/multiplesЉ
tf.tile_148/TileTiletf.reshape_296/Reshape:output:0#tf.tile_148/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_148/TileЩ
tf.reshape_297/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_297/Reshape/shapeї
tf.reshape_297/ReshapeReshapetf.tile_148/Tile:output:0%tf.reshape_297/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_297/Reshapex
tf.concat_258/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_258/concat/axisз
tf.concat_258/concatConcatV2tf.reshape_297/Reshape:output:0!conv3d_160/Softplus:activations:0"tf.concat_258/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_258/concatЇ
 conv3d_165/Conv3D/ReadVariableOpReadVariableOp)conv3d_165_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_165/Conv3D/ReadVariableOpш
conv3d_165/Conv3DConv3Dtf.concat_258/concat:output:0(conv3d_165/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_165/Conv3D≠
!conv3d_165/BiasAdd/ReadVariableOpReadVariableOp*conv3d_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_165/BiasAdd/ReadVariableOpѕ
conv3d_165/BiasAddBiasAddconv3d_165/Conv3D:output:0)conv3d_165/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_165/BiasAddС
conv3d_165/SoftplusSoftplusconv3d_165/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_165/SoftplusЇ
 conv3d_166/Conv3D/ReadVariableOpReadVariableOp)conv3d_166_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_166/Conv3D/ReadVariableOpь
conv3d_166/Conv3DConv3D!conv3d_165/Softplus:activations:0(conv3d_166/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_166/Conv3D≠
!conv3d_166/BiasAdd/ReadVariableOpReadVariableOp*conv3d_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_166/BiasAdd/ReadVariableOpѕ
conv3d_166/BiasAddBiasAddconv3d_166/Conv3D:output:0)conv3d_166/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_166/BiasAddВ
IdentityIdentityconv3d_166/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

IdentityВ
NoOpNoOp"^conv3d_160/BiasAdd/ReadVariableOp!^conv3d_160/Conv3D/ReadVariableOp"^conv3d_161/BiasAdd/ReadVariableOp!^conv3d_161/Conv3D/ReadVariableOp"^conv3d_162/BiasAdd/ReadVariableOp!^conv3d_162/Conv3D/ReadVariableOp"^conv3d_163/BiasAdd/ReadVariableOp!^conv3d_163/Conv3D/ReadVariableOp"^conv3d_164/BiasAdd/ReadVariableOp!^conv3d_164/Conv3D/ReadVariableOp"^conv3d_165/BiasAdd/ReadVariableOp!^conv3d_165/Conv3D/ReadVariableOp"^conv3d_166/BiasAdd/ReadVariableOp!^conv3d_166/Conv3D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2F
!conv3d_160/BiasAdd/ReadVariableOp!conv3d_160/BiasAdd/ReadVariableOp2D
 conv3d_160/Conv3D/ReadVariableOp conv3d_160/Conv3D/ReadVariableOp2F
!conv3d_161/BiasAdd/ReadVariableOp!conv3d_161/BiasAdd/ReadVariableOp2D
 conv3d_161/Conv3D/ReadVariableOp conv3d_161/Conv3D/ReadVariableOp2F
!conv3d_162/BiasAdd/ReadVariableOp!conv3d_162/BiasAdd/ReadVariableOp2D
 conv3d_162/Conv3D/ReadVariableOp conv3d_162/Conv3D/ReadVariableOp2F
!conv3d_163/BiasAdd/ReadVariableOp!conv3d_163/BiasAdd/ReadVariableOp2D
 conv3d_163/Conv3D/ReadVariableOp conv3d_163/Conv3D/ReadVariableOp2F
!conv3d_164/BiasAdd/ReadVariableOp!conv3d_164/BiasAdd/ReadVariableOp2D
 conv3d_164/Conv3D/ReadVariableOp conv3d_164/Conv3D/ReadVariableOp2F
!conv3d_165/BiasAdd/ReadVariableOp!conv3d_165/BiasAdd/ReadVariableOp2D
 conv3d_165/Conv3D/ReadVariableOp conv3d_165/Conv3D/ReadVariableOp2F
!conv3d_166/BiasAdd/ReadVariableOp!conv3d_166/BiasAdd/ReadVariableOp2D
 conv3d_166/Conv3D/ReadVariableOp conv3d_166/Conv3D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
К	
m
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8734337

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  :[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
Љx
Ъ
E__inference_model_36_layer_call_and_return_conditional_losses_8733378

inputs0
conv3d_160_8733169: 
conv3d_160_8733171:0
conv3d_161_8733196: 
conv3d_161_8733198:0
conv3d_162_8733223: 
conv3d_162_8733225:"
dense_36_8733264:@@
dense_36_8733266:@0
conv3d_163_8733306: 
conv3d_163_8733308:0
conv3d_164_8733331: 
conv3d_164_8733333:0
conv3d_165_8733356: 
conv3d_165_8733358:0
conv3d_166_8733372: 
conv3d_166_8733374:
identityИҐ"conv3d_160/StatefulPartitionedCallҐ"conv3d_161/StatefulPartitionedCallҐ"conv3d_162/StatefulPartitionedCallҐ"conv3d_163/StatefulPartitionedCallҐ"conv3d_164/StatefulPartitionedCallҐ"conv3d_165/StatefulPartitionedCallҐ"conv3d_166/StatefulPartitionedCallҐ dense_36/StatefulPartitionedCallµ
0tf.__operators__.getitem_218/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_218/strided_slice/stackє
2tf.__operators__.getitem_218/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_218/strided_slice/stack_1є
2tf.__operators__.getitem_218/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_218/strided_slice/stack_2Т
*tf.__operators__.getitem_218/strided_sliceStridedSliceinputs9tf.__operators__.getitem_218/strided_slice/stack:output:0;tf.__operators__.getitem_218/strided_slice/stack_1:output:0;tf.__operators__.getitem_218/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_218/strided_sliceЇ
#range_conversion_36/PartitionedCallPartitionedCall3tf.__operators__.getitem_218/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_87331492%
#range_conversion_36/PartitionedCallµ
0tf.__operators__.getitem_219/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_219/strided_slice/stackє
2tf.__operators__.getitem_219/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_219/strided_slice/stack_1є
2tf.__operators__.getitem_219/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_219/strided_slice/stack_2Т
*tf.__operators__.getitem_219/strided_sliceStridedSliceinputs9tf.__operators__.getitem_219/strided_slice/stack:output:0;tf.__operators__.getitem_219/strided_slice/stack_1:output:0;tf.__operators__.getitem_219/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_219/strided_slicex
tf.concat_255/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_255/concat/axisЖ
tf.concat_255/concatConcatV2,range_conversion_36/PartitionedCall:output:03tf.__operators__.getitem_219/strided_slice:output:0"tf.concat_255/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_255/concatѕ
"conv3d_160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_255/concat:output:0conv3d_160_8733169conv3d_160_8733171*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_160_layer_call_and_return_conditional_losses_87331682$
"conv3d_160/StatefulPartitionedCallµ
$average_pooling3d_62/PartitionedCallPartitionedCall+conv3d_160/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_87331822&
$average_pooling3d_62/PartitionedCallя
"conv3d_161/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_62/PartitionedCall:output:0conv3d_161_8733196conv3d_161_8733198*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_161_layer_call_and_return_conditional_losses_87331952$
"conv3d_161/StatefulPartitionedCallµ
$average_pooling3d_63/PartitionedCallPartitionedCall+conv3d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_87332092&
$average_pooling3d_63/PartitionedCallя
"conv3d_162/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_63/PartitionedCall:output:0conv3d_162_8733223conv3d_162_8733225*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_162_layer_call_and_return_conditional_losses_87332222$
"conv3d_162/StatefulPartitionedCallµ
$average_pooling3d_64/PartitionedCallPartitionedCall+conv3d_162/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_87332362&
$average_pooling3d_64/PartitionedCallН
reshape_72/PartitionedCallPartitionedCall-average_pooling3d_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_72_layer_call_and_return_conditional_losses_87332502
reshape_72/PartitionedCallњ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#reshape_72/PartitionedCall:output:0dense_36_8733264dense_36_8733266*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_87332632"
 dense_36/StatefulPartitionedCallХ
reshape_73/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_73_layer_call_and_return_conditional_losses_87332842
reshape_73/PartitionedCall•
tf.reshape_292/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_292/Reshape/shape—
tf.reshape_292/ReshapeReshape#reshape_73/PartitionedCall:output:0%tf.reshape_292/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_292/Reshape°
tf.tile_146/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_146/Tile/multiplesЉ
tf.tile_146/TileTiletf.reshape_292/Reshape:output:0#tf.tile_146/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_146/TileЩ
tf.reshape_293/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_293/Reshape/shapeї
tf.reshape_293/ReshapeReshapetf.tile_146/Tile:output:0%tf.reshape_293/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_293/Reshapex
tf.concat_256/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_256/concat/axisс
tf.concat_256/concatConcatV2tf.reshape_293/Reshape:output:0+conv3d_162/StatefulPartitionedCall:output:0"tf.concat_256/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_256/concatѕ
"conv3d_163/StatefulPartitionedCallStatefulPartitionedCalltf.concat_256/concat:output:0conv3d_163_8733306conv3d_163_8733308*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_163_layer_call_and_return_conditional_losses_87333052$
"conv3d_163/StatefulPartitionedCall•
tf.reshape_294/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_294/Reshape/shapeў
tf.reshape_294/ReshapeReshape+conv3d_163/StatefulPartitionedCall:output:0%tf.reshape_294/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_294/Reshape°
tf.tile_147/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_147/Tile/multiplesЉ
tf.tile_147/TileTiletf.reshape_294/Reshape:output:0#tf.tile_147/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_147/TileЩ
tf.reshape_295/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_295/Reshape/shapeї
tf.reshape_295/ReshapeReshapetf.tile_147/Tile:output:0%tf.reshape_295/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_295/Reshapex
tf.concat_257/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_257/concat/axisс
tf.concat_257/concatConcatV2tf.reshape_295/Reshape:output:0+conv3d_161/StatefulPartitionedCall:output:0"tf.concat_257/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_257/concatѕ
"conv3d_164/StatefulPartitionedCallStatefulPartitionedCalltf.concat_257/concat:output:0conv3d_164_8733331conv3d_164_8733333*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_164_layer_call_and_return_conditional_losses_87333302$
"conv3d_164/StatefulPartitionedCall•
tf.reshape_296/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_296/Reshape/shapeў
tf.reshape_296/ReshapeReshape+conv3d_164/StatefulPartitionedCall:output:0%tf.reshape_296/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_296/Reshape°
tf.tile_148/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_148/Tile/multiplesЉ
tf.tile_148/TileTiletf.reshape_296/Reshape:output:0#tf.tile_148/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_148/TileЩ
tf.reshape_297/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_297/Reshape/shapeї
tf.reshape_297/ReshapeReshapetf.tile_148/Tile:output:0%tf.reshape_297/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_297/Reshapex
tf.concat_258/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_258/concat/axisс
tf.concat_258/concatConcatV2tf.reshape_297/Reshape:output:0+conv3d_160/StatefulPartitionedCall:output:0"tf.concat_258/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_258/concatѕ
"conv3d_165/StatefulPartitionedCallStatefulPartitionedCalltf.concat_258/concat:output:0conv3d_165_8733356conv3d_165_8733358*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_165_layer_call_and_return_conditional_losses_87333552$
"conv3d_165/StatefulPartitionedCallЁ
"conv3d_166/StatefulPartitionedCallStatefulPartitionedCall+conv3d_165/StatefulPartitionedCall:output:0conv3d_166_8733372conv3d_166_8733374*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_166_layer_call_and_return_conditional_losses_87333712$
"conv3d_166/StatefulPartitionedCallТ
IdentityIdentity+conv3d_166/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_160/StatefulPartitionedCall#^conv3d_161/StatefulPartitionedCall#^conv3d_162/StatefulPartitionedCall#^conv3d_163/StatefulPartitionedCall#^conv3d_164/StatefulPartitionedCall#^conv3d_165/StatefulPartitionedCall#^conv3d_166/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_160/StatefulPartitionedCall"conv3d_160/StatefulPartitionedCall2H
"conv3d_161/StatefulPartitionedCall"conv3d_161/StatefulPartitionedCall2H
"conv3d_162/StatefulPartitionedCall"conv3d_162/StatefulPartitionedCall2H
"conv3d_163/StatefulPartitionedCall"conv3d_163/StatefulPartitionedCall2H
"conv3d_164/StatefulPartitionedCall"conv3d_164/StatefulPartitionedCall2H
"conv3d_165/StatefulPartitionedCall"conv3d_165/StatefulPartitionedCall2H
"conv3d_166/StatefulPartitionedCall"conv3d_166/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
ЕH
¬

#__inference__traced_restore_8734698
file_prefix@
"assignvariableop_conv3d_160_kernel:0
"assignvariableop_1_conv3d_160_bias:B
$assignvariableop_2_conv3d_161_kernel:0
"assignvariableop_3_conv3d_161_bias:B
$assignvariableop_4_conv3d_162_kernel:0
"assignvariableop_5_conv3d_162_bias:4
"assignvariableop_6_dense_36_kernel:@@.
 assignvariableop_7_dense_36_bias:@B
$assignvariableop_8_conv3d_163_kernel:0
"assignvariableop_9_conv3d_163_bias:C
%assignvariableop_10_conv3d_164_kernel:1
#assignvariableop_11_conv3d_164_bias:C
%assignvariableop_12_conv3d_165_kernel:1
#assignvariableop_13_conv3d_165_bias:C
%assignvariableop_14_conv3d_166_kernel:1
#assignvariableop_15_conv3d_166_bias:
identity_17ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ч
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names∞
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesА
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

Identity°
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_160_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_160_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2©
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_161_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_161_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4©
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_162_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_162_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6І
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_36_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7•
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_36_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8©
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_163_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9І
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_163_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10≠
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_164_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ђ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_164_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12≠
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_165_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ђ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_165_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14≠
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_166_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ђ
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_166_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЊ
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17¶
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
Ъ
c
G__inference_reshape_72_layer_call_and_return_conditional_losses_8734450

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
strided_slice/stack_2в
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
:€€€€€€€€€@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ
c
G__inference_reshape_72_layer_call_and_return_conditional_losses_8733250

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
strided_slice/stack_2в
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
:€€€€€€€€€@2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
К	
m
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8733209

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
R
6__inference_average_pooling3d_63_layer_call_fn_8734362

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_87330792
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
г

m
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8733079

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_165_layer_call_and_return_conditional_losses_8734550

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
÷
й
*__inference_model_36_layer_call_fn_8733413	
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
identityИҐStatefulPartitionedCall∆
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
:€€€€€€€€€  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_87333782
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
÷	
p
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_8733149

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
:€€€€€€€€€  2
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
:€€€€€€€€€  2	
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
:€€€€€€€€€  2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
add/yj
addAddV2mul:z:0add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  :_ [
3
_output_shapes!
:€€€€€€€€€  
$
_user_specified_name
parameters
ў
к
*__inference_model_36_layer_call_fn_8734002

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
identityИҐStatefulPartitionedCall«
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
:€€€€€€€€€  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_87336492
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
К	
m
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8733236

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Єx
Щ
E__inference_model_36_layer_call_and_return_conditional_losses_8733805	
input0
conv3d_160_8733735: 
conv3d_160_8733737:0
conv3d_161_8733741: 
conv3d_161_8733743:0
conv3d_162_8733747: 
conv3d_162_8733749:"
dense_36_8733754:@@
dense_36_8733756:@0
conv3d_163_8733768: 
conv3d_163_8733770:0
conv3d_164_8733781: 
conv3d_164_8733783:0
conv3d_165_8733794: 
conv3d_165_8733796:0
conv3d_166_8733799: 
conv3d_166_8733801:
identityИҐ"conv3d_160/StatefulPartitionedCallҐ"conv3d_161/StatefulPartitionedCallҐ"conv3d_162/StatefulPartitionedCallҐ"conv3d_163/StatefulPartitionedCallҐ"conv3d_164/StatefulPartitionedCallҐ"conv3d_165/StatefulPartitionedCallҐ"conv3d_166/StatefulPartitionedCallҐ dense_36/StatefulPartitionedCallµ
0tf.__operators__.getitem_218/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_218/strided_slice/stackє
2tf.__operators__.getitem_218/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_218/strided_slice/stack_1є
2tf.__operators__.getitem_218/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_218/strided_slice/stack_2С
*tf.__operators__.getitem_218/strided_sliceStridedSliceinput9tf.__operators__.getitem_218/strided_slice/stack:output:0;tf.__operators__.getitem_218/strided_slice/stack_1:output:0;tf.__operators__.getitem_218/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_218/strided_sliceЇ
#range_conversion_36/PartitionedCallPartitionedCall3tf.__operators__.getitem_218/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_87331492%
#range_conversion_36/PartitionedCallµ
0tf.__operators__.getitem_219/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_219/strided_slice/stackє
2tf.__operators__.getitem_219/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_219/strided_slice/stack_1є
2tf.__operators__.getitem_219/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_219/strided_slice/stack_2С
*tf.__operators__.getitem_219/strided_sliceStridedSliceinput9tf.__operators__.getitem_219/strided_slice/stack:output:0;tf.__operators__.getitem_219/strided_slice/stack_1:output:0;tf.__operators__.getitem_219/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_219/strided_slicex
tf.concat_255/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_255/concat/axisЖ
tf.concat_255/concatConcatV2,range_conversion_36/PartitionedCall:output:03tf.__operators__.getitem_219/strided_slice:output:0"tf.concat_255/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_255/concatѕ
"conv3d_160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_255/concat:output:0conv3d_160_8733735conv3d_160_8733737*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_160_layer_call_and_return_conditional_losses_87331682$
"conv3d_160/StatefulPartitionedCallµ
$average_pooling3d_62/PartitionedCallPartitionedCall+conv3d_160/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_87331822&
$average_pooling3d_62/PartitionedCallя
"conv3d_161/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_62/PartitionedCall:output:0conv3d_161_8733741conv3d_161_8733743*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_161_layer_call_and_return_conditional_losses_87331952$
"conv3d_161/StatefulPartitionedCallµ
$average_pooling3d_63/PartitionedCallPartitionedCall+conv3d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_87332092&
$average_pooling3d_63/PartitionedCallя
"conv3d_162/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_63/PartitionedCall:output:0conv3d_162_8733747conv3d_162_8733749*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_162_layer_call_and_return_conditional_losses_87332222$
"conv3d_162/StatefulPartitionedCallµ
$average_pooling3d_64/PartitionedCallPartitionedCall+conv3d_162/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_87332362&
$average_pooling3d_64/PartitionedCallН
reshape_72/PartitionedCallPartitionedCall-average_pooling3d_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_72_layer_call_and_return_conditional_losses_87332502
reshape_72/PartitionedCallњ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#reshape_72/PartitionedCall:output:0dense_36_8733754dense_36_8733756*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_87332632"
 dense_36/StatefulPartitionedCallХ
reshape_73/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_73_layer_call_and_return_conditional_losses_87332842
reshape_73/PartitionedCall•
tf.reshape_292/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_292/Reshape/shape—
tf.reshape_292/ReshapeReshape#reshape_73/PartitionedCall:output:0%tf.reshape_292/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_292/Reshape°
tf.tile_146/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_146/Tile/multiplesЉ
tf.tile_146/TileTiletf.reshape_292/Reshape:output:0#tf.tile_146/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_146/TileЩ
tf.reshape_293/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_293/Reshape/shapeї
tf.reshape_293/ReshapeReshapetf.tile_146/Tile:output:0%tf.reshape_293/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_293/Reshapex
tf.concat_256/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_256/concat/axisс
tf.concat_256/concatConcatV2tf.reshape_293/Reshape:output:0+conv3d_162/StatefulPartitionedCall:output:0"tf.concat_256/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_256/concatѕ
"conv3d_163/StatefulPartitionedCallStatefulPartitionedCalltf.concat_256/concat:output:0conv3d_163_8733768conv3d_163_8733770*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_163_layer_call_and_return_conditional_losses_87333052$
"conv3d_163/StatefulPartitionedCall•
tf.reshape_294/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_294/Reshape/shapeў
tf.reshape_294/ReshapeReshape+conv3d_163/StatefulPartitionedCall:output:0%tf.reshape_294/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_294/Reshape°
tf.tile_147/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_147/Tile/multiplesЉ
tf.tile_147/TileTiletf.reshape_294/Reshape:output:0#tf.tile_147/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_147/TileЩ
tf.reshape_295/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_295/Reshape/shapeї
tf.reshape_295/ReshapeReshapetf.tile_147/Tile:output:0%tf.reshape_295/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_295/Reshapex
tf.concat_257/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_257/concat/axisс
tf.concat_257/concatConcatV2tf.reshape_295/Reshape:output:0+conv3d_161/StatefulPartitionedCall:output:0"tf.concat_257/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_257/concatѕ
"conv3d_164/StatefulPartitionedCallStatefulPartitionedCalltf.concat_257/concat:output:0conv3d_164_8733781conv3d_164_8733783*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_164_layer_call_and_return_conditional_losses_87333302$
"conv3d_164/StatefulPartitionedCall•
tf.reshape_296/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_296/Reshape/shapeў
tf.reshape_296/ReshapeReshape+conv3d_164/StatefulPartitionedCall:output:0%tf.reshape_296/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_296/Reshape°
tf.tile_148/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_148/Tile/multiplesЉ
tf.tile_148/TileTiletf.reshape_296/Reshape:output:0#tf.tile_148/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_148/TileЩ
tf.reshape_297/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_297/Reshape/shapeї
tf.reshape_297/ReshapeReshapetf.tile_148/Tile:output:0%tf.reshape_297/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_297/Reshapex
tf.concat_258/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_258/concat/axisс
tf.concat_258/concatConcatV2tf.reshape_297/Reshape:output:0+conv3d_160/StatefulPartitionedCall:output:0"tf.concat_258/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_258/concatѕ
"conv3d_165/StatefulPartitionedCallStatefulPartitionedCalltf.concat_258/concat:output:0conv3d_165_8733794conv3d_165_8733796*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_165_layer_call_and_return_conditional_losses_87333552$
"conv3d_165/StatefulPartitionedCallЁ
"conv3d_166/StatefulPartitionedCallStatefulPartitionedCall+conv3d_165/StatefulPartitionedCall:output:0conv3d_166_8733799conv3d_166_8733801*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_166_layer_call_and_return_conditional_losses_87333712$
"conv3d_166/StatefulPartitionedCallТ
IdentityIdentity+conv3d_166/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_160/StatefulPartitionedCall#^conv3d_161/StatefulPartitionedCall#^conv3d_162/StatefulPartitionedCall#^conv3d_163/StatefulPartitionedCall#^conv3d_164/StatefulPartitionedCall#^conv3d_165/StatefulPartitionedCall#^conv3d_166/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_160/StatefulPartitionedCall"conv3d_160/StatefulPartitionedCall2H
"conv3d_161/StatefulPartitionedCall"conv3d_161/StatefulPartitionedCall2H
"conv3d_162/StatefulPartitionedCall"conv3d_162/StatefulPartitionedCall2H
"conv3d_163/StatefulPartitionedCall"conv3d_163/StatefulPartitionedCall2H
"conv3d_164/StatefulPartitionedCall"conv3d_164/StatefulPartitionedCall2H
"conv3d_165/StatefulPartitionedCall"conv3d_165/StatefulPartitionedCall2H
"conv3d_166/StatefulPartitionedCall"conv3d_166/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
г

m
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8734424

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
К	
m
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8734433

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
е
H
,__inference_reshape_73_layer_call_fn_8734475

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_73_layer_call_and_return_conditional_losses_87332842
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ф-
щ
 __inference__traced_save_8734640
file_prefix0
,savev2_conv3d_160_kernel_read_readvariableop.
*savev2_conv3d_160_bias_read_readvariableop0
,savev2_conv3d_161_kernel_read_readvariableop.
*savev2_conv3d_161_bias_read_readvariableop0
,savev2_conv3d_162_kernel_read_readvariableop.
*savev2_conv3d_162_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop0
,savev2_conv3d_163_kernel_read_readvariableop.
*savev2_conv3d_163_bias_read_readvariableop0
,savev2_conv3d_164_kernel_read_readvariableop.
*savev2_conv3d_164_bias_read_readvariableop0
,savev2_conv3d_165_kernel_read_readvariableop.
*savev2_conv3d_165_bias_read_readvariableop0
,savev2_conv3d_166_kernel_read_readvariableop.
*savev2_conv3d_166_bias_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameС
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names™
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЦ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_160_kernel_read_readvariableop*savev2_conv3d_160_bias_read_readvariableop,savev2_conv3d_161_kernel_read_readvariableop*savev2_conv3d_161_bias_read_readvariableop,savev2_conv3d_162_kernel_read_readvariableop*savev2_conv3d_162_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop,savev2_conv3d_163_kernel_read_readvariableop*savev2_conv3d_163_bias_read_readvariableop,savev2_conv3d_164_kernel_read_readvariableop*savev2_conv3d_164_bias_read_readvariableop,savev2_conv3d_165_kernel_read_readvariableop*savev2_conv3d_165_bias_read_readvariableop,savev2_conv3d_166_kernel_read_readvariableop*savev2_conv3d_166_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*н
_input_shapesџ
Ў: :::::::@@:@::::::::: 2(
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
У
ц
E__inference_dense_36_layer_call_and_return_conditional_losses_8733263

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddd
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Softplusq
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
е
H
,__inference_reshape_72_layer_call_fn_8734438

inputs
identity–
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_72_layer_call_and_return_conditional_losses_87332502
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ы
U
5__inference_range_conversion_36_layer_call_fn_8734277

parameters
identityй
PartitionedCallPartitionedCall
parameters*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_87331492
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  :_ [
3
_output_shapes!
:€€€€€€€€€  
$
_user_specified_name
parameters
Ќ
Д
G__inference_conv3d_164_layer_call_and_return_conditional_losses_8734530

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
R
6__inference_average_pooling3d_62_layer_call_fn_8734314

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_87330492
PartitionedCallЬ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
њ
•
,__inference_conv3d_161_layer_call_fn_8734346

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_161_layer_call_and_return_conditional_losses_87331952
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_163_layer_call_and_return_conditional_losses_8733305

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_161_layer_call_and_return_conditional_losses_8734357

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_164_layer_call_and_return_conditional_losses_8733330

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_162_layer_call_and_return_conditional_losses_8734405

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_160_layer_call_and_return_conditional_losses_8733168

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
Ъ
c
G__inference_reshape_73_layer_call_and_return_conditional_losses_8733284

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
strided_slice/stack_2в
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
Reshape/shape/4‘
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape{
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2	
Reshapep
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
С
R
6__inference_average_pooling3d_63_layer_call_fn_8734367

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_87332092
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
С
R
6__inference_average_pooling3d_62_layer_call_fn_8734319

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_87331822
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  :[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
ю
Ч
*__inference_dense_36_layer_call_fn_8734459

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_87332632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
њ
•
,__inference_conv3d_165_layer_call_fn_8734539

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_165_layer_call_and_return_conditional_losses_87333552
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
К	
m
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8734385

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/permВ
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
	transposeЃ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permФ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
’
Д
G__inference_conv3d_166_layer_call_and_return_conditional_losses_8734569

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
њ
•
,__inference_conv3d_160_layer_call_fn_8734298

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_160_layer_call_and_return_conditional_losses_87331682
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
г

m
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8733049

inputs
identity}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm¶
	transpose	Transposeinputstranspose/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
	transpose“
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2
	AvgPool3DБ
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/permЄ
transpose_1	TransposeAvgPool3D:output:0transpose_1/perm:output:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2
transpose_1У
IdentityIdentitytranspose_1:y:0*
T0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€: {
W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
÷
й
*__inference_model_36_layer_call_fn_8733721	
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
identityИҐStatefulPartitionedCall∆
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
:€€€€€€€€€  *2
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_87336492
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
С
R
6__inference_average_pooling3d_64_layer_call_fn_8734415

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_87332362
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
њ
•
,__inference_conv3d_162_layer_call_fn_8734394

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_162_layer_call_and_return_conditional_losses_87332222
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_162_layer_call_and_return_conditional_losses_8733222

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv3D/ReadVariableOpЩ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpј
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp£
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€
 
_user_specified_nameinputs
Єx
Щ
E__inference_model_36_layer_call_and_return_conditional_losses_8733889	
input0
conv3d_160_8733819: 
conv3d_160_8733821:0
conv3d_161_8733825: 
conv3d_161_8733827:0
conv3d_162_8733831: 
conv3d_162_8733833:"
dense_36_8733838:@@
dense_36_8733840:@0
conv3d_163_8733852: 
conv3d_163_8733854:0
conv3d_164_8733865: 
conv3d_164_8733867:0
conv3d_165_8733878: 
conv3d_165_8733880:0
conv3d_166_8733883: 
conv3d_166_8733885:
identityИҐ"conv3d_160/StatefulPartitionedCallҐ"conv3d_161/StatefulPartitionedCallҐ"conv3d_162/StatefulPartitionedCallҐ"conv3d_163/StatefulPartitionedCallҐ"conv3d_164/StatefulPartitionedCallҐ"conv3d_165/StatefulPartitionedCallҐ"conv3d_166/StatefulPartitionedCallҐ dense_36/StatefulPartitionedCallµ
0tf.__operators__.getitem_218/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_218/strided_slice/stackє
2tf.__operators__.getitem_218/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_218/strided_slice/stack_1є
2tf.__operators__.getitem_218/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_218/strided_slice/stack_2С
*tf.__operators__.getitem_218/strided_sliceStridedSliceinput9tf.__operators__.getitem_218/strided_slice/stack:output:0;tf.__operators__.getitem_218/strided_slice/stack_1:output:0;tf.__operators__.getitem_218/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_218/strided_sliceЇ
#range_conversion_36/PartitionedCallPartitionedCall3tf.__operators__.getitem_218/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Y
fTRR
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_87331492%
#range_conversion_36/PartitionedCallµ
0tf.__operators__.getitem_219/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_219/strided_slice/stackє
2tf.__operators__.getitem_219/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_219/strided_slice/stack_1є
2tf.__operators__.getitem_219/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_219/strided_slice/stack_2С
*tf.__operators__.getitem_219/strided_sliceStridedSliceinput9tf.__operators__.getitem_219/strided_slice/stack:output:0;tf.__operators__.getitem_219/strided_slice/stack_1:output:0;tf.__operators__.getitem_219/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_219/strided_slicex
tf.concat_255/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_255/concat/axisЖ
tf.concat_255/concatConcatV2,range_conversion_36/PartitionedCall:output:03tf.__operators__.getitem_219/strided_slice:output:0"tf.concat_255/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_255/concatѕ
"conv3d_160/StatefulPartitionedCallStatefulPartitionedCalltf.concat_255/concat:output:0conv3d_160_8733819conv3d_160_8733821*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_160_layer_call_and_return_conditional_losses_87331682$
"conv3d_160/StatefulPartitionedCallµ
$average_pooling3d_62/PartitionedCallPartitionedCall+conv3d_160/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_87331822&
$average_pooling3d_62/PartitionedCallя
"conv3d_161/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_62/PartitionedCall:output:0conv3d_161_8733825conv3d_161_8733827*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_161_layer_call_and_return_conditional_losses_87331952$
"conv3d_161/StatefulPartitionedCallµ
$average_pooling3d_63/PartitionedCallPartitionedCall+conv3d_161/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_87332092&
$average_pooling3d_63/PartitionedCallя
"conv3d_162/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_63/PartitionedCall:output:0conv3d_162_8733831conv3d_162_8733833*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_162_layer_call_and_return_conditional_losses_87332222$
"conv3d_162/StatefulPartitionedCallµ
$average_pooling3d_64/PartitionedCallPartitionedCall+conv3d_162/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *Z
fURS
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_87332362&
$average_pooling3d_64/PartitionedCallН
reshape_72/PartitionedCallPartitionedCall-average_pooling3d_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_72_layer_call_and_return_conditional_losses_87332502
reshape_72/PartitionedCallњ
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#reshape_72/PartitionedCall:output:0dense_36_8733838dense_36_8733840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *N
fIRG
E__inference_dense_36_layer_call_and_return_conditional_losses_87332632"
 dense_36/StatefulPartitionedCallХ
reshape_73/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_reshape_73_layer_call_and_return_conditional_losses_87332842
reshape_73/PartitionedCall•
tf.reshape_292/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_292/Reshape/shape—
tf.reshape_292/ReshapeReshape#reshape_73/PartitionedCall:output:0%tf.reshape_292/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_292/Reshape°
tf.tile_146/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_146/Tile/multiplesЉ
tf.tile_146/TileTiletf.reshape_292/Reshape:output:0#tf.tile_146/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_146/TileЩ
tf.reshape_293/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_293/Reshape/shapeї
tf.reshape_293/ReshapeReshapetf.tile_146/Tile:output:0%tf.reshape_293/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_293/Reshapex
tf.concat_256/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_256/concat/axisс
tf.concat_256/concatConcatV2tf.reshape_293/Reshape:output:0+conv3d_162/StatefulPartitionedCall:output:0"tf.concat_256/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_256/concatѕ
"conv3d_163/StatefulPartitionedCallStatefulPartitionedCalltf.concat_256/concat:output:0conv3d_163_8733852conv3d_163_8733854*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_163_layer_call_and_return_conditional_losses_87333052$
"conv3d_163/StatefulPartitionedCall•
tf.reshape_294/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_294/Reshape/shapeў
tf.reshape_294/ReshapeReshape+conv3d_163/StatefulPartitionedCall:output:0%tf.reshape_294/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_294/Reshape°
tf.tile_147/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_147/Tile/multiplesЉ
tf.tile_147/TileTiletf.reshape_294/Reshape:output:0#tf.tile_147/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_147/TileЩ
tf.reshape_295/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_295/Reshape/shapeї
tf.reshape_295/ReshapeReshapetf.tile_147/Tile:output:0%tf.reshape_295/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_295/Reshapex
tf.concat_257/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_257/concat/axisс
tf.concat_257/concatConcatV2tf.reshape_295/Reshape:output:0+conv3d_161/StatefulPartitionedCall:output:0"tf.concat_257/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_257/concatѕ
"conv3d_164/StatefulPartitionedCallStatefulPartitionedCalltf.concat_257/concat:output:0conv3d_164_8733865conv3d_164_8733867*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_164_layer_call_and_return_conditional_losses_87333302$
"conv3d_164/StatefulPartitionedCall•
tf.reshape_296/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_296/Reshape/shapeў
tf.reshape_296/ReshapeReshape+conv3d_164/StatefulPartitionedCall:output:0%tf.reshape_296/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_296/Reshape°
tf.tile_148/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_148/Tile/multiplesЉ
tf.tile_148/TileTiletf.reshape_296/Reshape:output:0#tf.tile_148/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_148/TileЩ
tf.reshape_297/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_297/Reshape/shapeї
tf.reshape_297/ReshapeReshapetf.tile_148/Tile:output:0%tf.reshape_297/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_297/Reshapex
tf.concat_258/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_258/concat/axisс
tf.concat_258/concatConcatV2tf.reshape_297/Reshape:output:0+conv3d_160/StatefulPartitionedCall:output:0"tf.concat_258/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_258/concatѕ
"conv3d_165/StatefulPartitionedCallStatefulPartitionedCalltf.concat_258/concat:output:0conv3d_165_8733878conv3d_165_8733880*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_165_layer_call_and_return_conditional_losses_87333552$
"conv3d_165/StatefulPartitionedCallЁ
"conv3d_166/StatefulPartitionedCallStatefulPartitionedCall+conv3d_165/StatefulPartitionedCall:output:0conv3d_166_8733883conv3d_166_8733885*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_166_layer_call_and_return_conditional_losses_87333712$
"conv3d_166/StatefulPartitionedCallТ
IdentityIdentity+conv3d_166/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_160/StatefulPartitionedCall#^conv3d_161/StatefulPartitionedCall#^conv3d_162/StatefulPartitionedCall#^conv3d_163/StatefulPartitionedCall#^conv3d_164/StatefulPartitionedCall#^conv3d_165/StatefulPartitionedCall#^conv3d_166/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_160/StatefulPartitionedCall"conv3d_160/StatefulPartitionedCall2H
"conv3d_161/StatefulPartitionedCall"conv3d_161/StatefulPartitionedCall2H
"conv3d_162/StatefulPartitionedCall"conv3d_162/StatefulPartitionedCall2H
"conv3d_163/StatefulPartitionedCall"conv3d_163/StatefulPartitionedCall2H
"conv3d_164/StatefulPartitionedCall"conv3d_164/StatefulPartitionedCall2H
"conv3d_165/StatefulPartitionedCall"conv3d_165/StatefulPartitionedCall2H
"conv3d_166/StatefulPartitionedCall"conv3d_166/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
њ
•
,__inference_conv3d_166_layer_call_fn_8734559

inputs%
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8В *P
fKRI
G__inference_conv3d_166_layer_call_and_return_conditional_losses_87333712
StatefulPartitionedCallЗ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€  : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ѕ
serving_default≠
C
input:
serving_default_input:0€€€€€€€€€  J

conv3d_166<
StatefulPartitionedCall:0€€€€€€€€€  tensorflow/serving/predict:лу
Ѕ
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
∆__call__
+«&call_and_return_all_conditional_losses
»_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
І
%regularization_losses
&	variables
'trainable_variables
(	keras_api
…__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
(
)	keras_api"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
љ

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
Ћ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
1regularization_losses
2	variables
3trainable_variables
4	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

5kernel
6bias
7regularization_losses
8	variables
9trainable_variables
:	keras_api
ѕ__call__
+–&call_and_return_all_conditional_losses"
_tf_keras_layer
І
;regularization_losses
<	variables
=trainable_variables
>	keras_api
—__call__
+“&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

?kernel
@bias
Aregularization_losses
B	variables
Ctrainable_variables
D	keras_api
”__call__
+‘&call_and_return_all_conditional_losses"
_tf_keras_layer
І
Eregularization_losses
F	variables
Gtrainable_variables
H	keras_api
’__call__
+÷&call_and_return_all_conditional_losses"
_tf_keras_layer
І
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
„__call__
+Ў&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

Mkernel
Nbias
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
ў__call__
+Џ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
џ__call__
+№&call_and_return_all_conditional_losses"
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
љ

[kernel
\bias
]regularization_losses
^	variables
_trainable_variables
`	keras_api
Ё__call__
+ё&call_and_return_all_conditional_losses"
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
љ

ekernel
fbias
gregularization_losses
h	variables
itrainable_variables
j	keras_api
я__call__
+а&call_and_return_all_conditional_losses"
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
љ

okernel
pbias
qregularization_losses
r	variables
strainable_variables
t	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

ukernel
vbias
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
Ц
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
Ц
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
ќ
{layer_regularization_losses

|layers
regularization_losses
}layer_metrics
 	variables
~non_trainable_variables
!trainable_variables
metrics
∆__call__
»_default_save_signature
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
-
еserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Аlayer_regularization_losses
Бlayers
%regularization_losses
Вlayer_metrics
&	variables
Гnon_trainable_variables
'trainable_variables
Дmetrics
…__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_160/kernel
: 2conv3d_160/bias
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
µ
 Еlayer_regularization_losses
Жlayers
-regularization_losses
Зlayer_metrics
.	variables
Иnon_trainable_variables
/trainable_variables
Йmetrics
Ћ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Кlayer_regularization_losses
Лlayers
1regularization_losses
Мlayer_metrics
2	variables
Нnon_trainable_variables
3trainable_variables
Оmetrics
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_161/kernel
: 2conv3d_161/bias
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
µ
 Пlayer_regularization_losses
Рlayers
7regularization_losses
Сlayer_metrics
8	variables
Тnon_trainable_variables
9trainable_variables
Уmetrics
ѕ__call__
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Фlayer_regularization_losses
Хlayers
;regularization_losses
Цlayer_metrics
<	variables
Чnon_trainable_variables
=trainable_variables
Шmetrics
—__call__
+“&call_and_return_all_conditional_losses
'“"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_162/kernel
: 2conv3d_162/bias
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
µ
 Щlayer_regularization_losses
Ъlayers
Aregularization_losses
Ыlayer_metrics
B	variables
Ьnon_trainable_variables
Ctrainable_variables
Эmetrics
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Юlayer_regularization_losses
Яlayers
Eregularization_losses
†layer_metrics
F	variables
°non_trainable_variables
Gtrainable_variables
Ґmetrics
’__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 £layer_regularization_losses
§layers
Iregularization_losses
•layer_metrics
J	variables
¶non_trainable_variables
Ktrainable_variables
Іmetrics
„__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_36/kernel
:@ 2dense_36/bias
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
µ
 ®layer_regularization_losses
©layers
Oregularization_losses
™layer_metrics
P	variables
Ђnon_trainable_variables
Qtrainable_variables
ђmetrics
ў__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 ≠layer_regularization_losses
Ѓlayers
Sregularization_losses
ѓlayer_metrics
T	variables
∞non_trainable_variables
Utrainable_variables
±metrics
џ__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_163/kernel
: 2conv3d_163/bias
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
µ
 ≤layer_regularization_losses
≥layers
]regularization_losses
іlayer_metrics
^	variables
µnon_trainable_variables
_trainable_variables
ґmetrics
Ё__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_164/kernel
: 2conv3d_164/bias
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
µ
 Јlayer_regularization_losses
Єlayers
gregularization_losses
єlayer_metrics
h	variables
Їnon_trainable_variables
itrainable_variables
їmetrics
я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_165/kernel
: 2conv3d_165/bias
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
µ
 Љlayer_regularization_losses
љlayers
qregularization_losses
Њlayer_metrics
r	variables
њnon_trainable_variables
strainable_variables
јmetrics
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_166/kernel
: 2conv3d_166/bias
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
µ
 Ѕlayer_regularization_losses
¬layers
wregularization_losses
√layer_metrics
x	variables
ƒnon_trainable_variables
ytrainable_variables
≈metrics
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
Ж
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
ц2у
*__inference_model_36_layer_call_fn_8733413
*__inference_model_36_layer_call_fn_8733965
*__inference_model_36_layer_call_fn_8734002
*__inference_model_36_layer_call_fn_8733721ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
в2я
E__inference_model_36_layer_call_and_return_conditional_losses_8734137
E__inference_model_36_layer_call_and_return_conditional_losses_8734272
E__inference_model_36_layer_call_and_return_conditional_losses_8733805
E__inference_model_36_layer_call_and_return_conditional_losses_8733889ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
ЋB»
"__inference__wrapped_model_8733036input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
г2а
5__inference_range_conversion_36_layer_call_fn_8734277¶
Э≤Щ
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
annotations™ *
 
ю2ы
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_8734289¶
Э≤Щ
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
annotations™ *
 
÷2”
,__inference_conv3d_160_layer_call_fn_8734298Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_conv3d_160_layer_call_and_return_conditional_losses_8734309Ґ
Щ≤Х
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
annotations™ *
 
Ш2Х
6__inference_average_pooling3d_62_layer_call_fn_8734314
6__inference_average_pooling3d_62_layer_call_fn_8734319Ґ
Щ≤Х
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
annotations™ *
 
ќ2Ћ
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8734328
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8734337Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_conv3d_161_layer_call_fn_8734346Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_conv3d_161_layer_call_and_return_conditional_losses_8734357Ґ
Щ≤Х
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
annotations™ *
 
Ш2Х
6__inference_average_pooling3d_63_layer_call_fn_8734362
6__inference_average_pooling3d_63_layer_call_fn_8734367Ґ
Щ≤Х
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
annotations™ *
 
ќ2Ћ
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8734376
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8734385Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_conv3d_162_layer_call_fn_8734394Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_conv3d_162_layer_call_and_return_conditional_losses_8734405Ґ
Щ≤Х
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
annotations™ *
 
Ш2Х
6__inference_average_pooling3d_64_layer_call_fn_8734410
6__inference_average_pooling3d_64_layer_call_fn_8734415Ґ
Щ≤Х
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
annotations™ *
 
ќ2Ћ
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8734424
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8734433Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_reshape_72_layer_call_fn_8734438Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_reshape_72_layer_call_and_return_conditional_losses_8734450Ґ
Щ≤Х
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
annotations™ *
 
‘2—
*__inference_dense_36_layer_call_fn_8734459Ґ
Щ≤Х
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
annotations™ *
 
п2м
E__inference_dense_36_layer_call_and_return_conditional_losses_8734470Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_reshape_73_layer_call_fn_8734475Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_reshape_73_layer_call_and_return_conditional_losses_8734490Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_conv3d_163_layer_call_fn_8734499Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_conv3d_163_layer_call_and_return_conditional_losses_8734510Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_conv3d_164_layer_call_fn_8734519Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_conv3d_164_layer_call_and_return_conditional_losses_8734530Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_conv3d_165_layer_call_fn_8734539Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_conv3d_165_layer_call_and_return_conditional_losses_8734550Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_conv3d_166_layer_call_fn_8734559Ґ
Щ≤Х
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
annotations™ *
 
с2о
G__inference_conv3d_166_layer_call_and_return_conditional_losses_8734569Ґ
Щ≤Х
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
annotations™ *
 
 B«
%__inference_signature_wrapper_8733928input"Ф
Н≤Й
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
annotations™ *
 Ї
"__inference__wrapped_model_8733036У+,56?@MN[\efopuv:Ґ7
0Ґ-
+К(
input€€€€€€€€€  
™ "C™@
>

conv3d_1660К-

conv3d_166€€€€€€€€€  О
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8734328Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ≈
Q__inference_average_pooling3d_62_layer_call_and_return_conditional_losses_8734337p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ ж
6__inference_average_pooling3d_62_layer_call_fn_8734314Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Э
6__inference_average_pooling3d_62_layer_call_fn_8734319c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€О
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8734376Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ≈
Q__inference_average_pooling3d_63_layer_call_and_return_conditional_losses_8734385p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ ж
6__inference_average_pooling3d_63_layer_call_fn_8734362Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Э
6__inference_average_pooling3d_63_layer_call_fn_8734367c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€О
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8734424Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ≈
Q__inference_average_pooling3d_64_layer_call_and_return_conditional_losses_8734433p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ ж
6__inference_average_pooling3d_64_layer_call_fn_8734410Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Э
6__inference_average_pooling3d_64_layer_call_fn_8734415c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_160_layer_call_and_return_conditional_losses_8734309t+,;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ Ч
,__inference_conv3d_160_layer_call_fn_8734298g+,;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€  њ
G__inference_conv3d_161_layer_call_and_return_conditional_losses_8734357t56;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_161_layer_call_fn_8734346g56;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_162_layer_call_and_return_conditional_losses_8734405t?@;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_162_layer_call_fn_8734394g?@;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_163_layer_call_and_return_conditional_losses_8734510t[\;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_163_layer_call_fn_8734499g[\;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_164_layer_call_and_return_conditional_losses_8734530tef;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_164_layer_call_fn_8734519gef;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_165_layer_call_and_return_conditional_losses_8734550top;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ Ч
,__inference_conv3d_165_layer_call_fn_8734539gop;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€  њ
G__inference_conv3d_166_layer_call_and_return_conditional_losses_8734569tuv;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ Ч
,__inference_conv3d_166_layer_call_fn_8734559guv;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€  •
E__inference_dense_36_layer_call_and_return_conditional_losses_8734470\MN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
*__inference_dense_36_layer_call_fn_8734459OMN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€@”
E__inference_model_36_layer_call_and_return_conditional_losses_8733805Й+,56?@MN[\efopuvBҐ?
8Ґ5
+К(
input€€€€€€€€€  
p 

 
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ ”
E__inference_model_36_layer_call_and_return_conditional_losses_8733889Й+,56?@MN[\efopuvBҐ?
8Ґ5
+К(
input€€€€€€€€€  
p

 
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ ‘
E__inference_model_36_layer_call_and_return_conditional_losses_8734137К+,56?@MN[\efopuvCҐ@
9Ґ6
,К)
inputs€€€€€€€€€  
p 

 
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ ‘
E__inference_model_36_layer_call_and_return_conditional_losses_8734272К+,56?@MN[\efopuvCҐ@
9Ґ6
,К)
inputs€€€€€€€€€  
p

 
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ ™
*__inference_model_36_layer_call_fn_8733413|+,56?@MN[\efopuvBҐ?
8Ґ5
+К(
input€€€€€€€€€  
p 

 
™ "$К!€€€€€€€€€  ™
*__inference_model_36_layer_call_fn_8733721|+,56?@MN[\efopuvBҐ?
8Ґ5
+К(
input€€€€€€€€€  
p

 
™ "$К!€€€€€€€€€  Ђ
*__inference_model_36_layer_call_fn_8733965}+,56?@MN[\efopuvCҐ@
9Ґ6
,К)
inputs€€€€€€€€€  
p 

 
™ "$К!€€€€€€€€€  Ђ
*__inference_model_36_layer_call_fn_8734002}+,56?@MN[\efopuvCҐ@
9Ґ6
,К)
inputs€€€€€€€€€  
p

 
™ "$К!€€€€€€€€€  »
P__inference_range_conversion_36_layer_call_and_return_conditional_losses_8734289t?Ґ<
5Ґ2
0К-

parameters€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ †
5__inference_range_conversion_36_layer_call_fn_8734277g?Ґ<
5Ґ2
0К-

parameters€€€€€€€€€  
™ "$К!€€€€€€€€€  ѓ
G__inference_reshape_72_layer_call_and_return_conditional_losses_8734450d;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€@
Ъ З
,__inference_reshape_72_layer_call_fn_8734438W;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "К€€€€€€€€€@ѓ
G__inference_reshape_73_layer_call_and_return_conditional_losses_8734490d/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ З
,__inference_reshape_73_layer_call_fn_8734475W/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "$К!€€€€€€€€€∆
%__inference_signature_wrapper_8733928Ь+,56?@MN[\efopuvCҐ@
Ґ 
9™6
4
input+К(
input€€€€€€€€€  "C™@
>

conv3d_1660К-

conv3d_166€€€€€€€€€  