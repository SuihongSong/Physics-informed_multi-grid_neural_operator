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
conv3d_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_102/kernel
Г
%conv3d_102/kernel/Read/ReadVariableOpReadVariableOpconv3d_102/kernel**
_output_shapes
:*
dtype0
v
conv3d_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_102/bias
o
#conv3d_102/bias/Read/ReadVariableOpReadVariableOpconv3d_102/bias*
_output_shapes
:*
dtype0
К
conv3d_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_103/kernel
Г
%conv3d_103/kernel/Read/ReadVariableOpReadVariableOpconv3d_103/kernel**
_output_shapes
:*
dtype0
v
conv3d_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_103/bias
o
#conv3d_103/bias/Read/ReadVariableOpReadVariableOpconv3d_103/bias*
_output_shapes
:*
dtype0
К
conv3d_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_104/kernel
Г
%conv3d_104/kernel/Read/ReadVariableOpReadVariableOpconv3d_104/kernel**
_output_shapes
:*
dtype0
v
conv3d_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_104/bias
o
#conv3d_104/bias/Read/ReadVariableOpReadVariableOpconv3d_104/bias*
_output_shapes
:*
dtype0
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:@@*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:@*
dtype0
К
conv3d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_105/kernel
Г
%conv3d_105/kernel/Read/ReadVariableOpReadVariableOpconv3d_105/kernel**
_output_shapes
:*
dtype0
v
conv3d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_105/bias
o
#conv3d_105/bias/Read/ReadVariableOpReadVariableOpconv3d_105/bias*
_output_shapes
:*
dtype0
К
conv3d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_106/kernel
Г
%conv3d_106/kernel/Read/ReadVariableOpReadVariableOpconv3d_106/kernel**
_output_shapes
:*
dtype0
v
conv3d_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_106/bias
o
#conv3d_106/bias/Read/ReadVariableOpReadVariableOpconv3d_106/bias*
_output_shapes
:*
dtype0
К
conv3d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_107/kernel
Г
%conv3d_107/kernel/Read/ReadVariableOpReadVariableOpconv3d_107/kernel**
_output_shapes
:*
dtype0
v
conv3d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_107/bias
o
#conv3d_107/bias/Read/ReadVariableOpReadVariableOpconv3d_107/bias*
_output_shapes
:*
dtype0
К
conv3d_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_108/kernel
Г
%conv3d_108/kernel/Read/ReadVariableOpReadVariableOpconv3d_108/kernel**
_output_shapes
:*
dtype0
v
conv3d_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_108/bias
o
#conv3d_108/bias/Read/ReadVariableOpReadVariableOpconv3d_108/bias*
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
%	variables
&regularization_losses
'trainable_variables
(	keras_api

)	keras_api

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
h

5kernel
6bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
R
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
R
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
R
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
h

Mkernel
Nbias
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
R
S	variables
Tregularization_losses
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
]	variables
^regularization_losses
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
g	variables
hregularization_losses
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
q	variables
rregularization_losses
strainable_variables
t	keras_api
h

ukernel
vbias
w	variables
xregularization_losses
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
{non_trainable_variables
|metrics
}layer_regularization_losses
~layer_metrics
regularization_losses

layers
 	variables
!trainable_variables
 
 
 
 
 
≤
Аnon_trainable_variables
%	variables
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
&regularization_losses
Дlayers
'trainable_variables
 
 
][
VARIABLE_VALUEconv3d_102/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_102/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
≤
Еnon_trainable_variables
-	variables
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
.regularization_losses
Йlayers
/trainable_variables
 
 
 
≤
Кnon_trainable_variables
1	variables
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
2regularization_losses
Оlayers
3trainable_variables
][
VARIABLE_VALUEconv3d_103/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_103/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61
 

50
61
≤
Пnon_trainable_variables
7	variables
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
8regularization_losses
Уlayers
9trainable_variables
 
 
 
≤
Фnon_trainable_variables
;	variables
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
<regularization_losses
Шlayers
=trainable_variables
][
VARIABLE_VALUEconv3d_104/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_104/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
≤
Щnon_trainable_variables
A	variables
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Bregularization_losses
Эlayers
Ctrainable_variables
 
 
 
≤
Юnon_trainable_variables
E	variables
Яmetrics
 †layer_regularization_losses
°layer_metrics
Fregularization_losses
Ґlayers
Gtrainable_variables
 
 
 
≤
£non_trainable_variables
I	variables
§metrics
 •layer_regularization_losses
¶layer_metrics
Jregularization_losses
Іlayers
Ktrainable_variables
[Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

M0
N1
 

M0
N1
≤
®non_trainable_variables
O	variables
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
Pregularization_losses
ђlayers
Qtrainable_variables
 
 
 
≤
≠non_trainable_variables
S	variables
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
Tregularization_losses
±layers
Utrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_105/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_105/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1
 

[0
\1
≤
≤non_trainable_variables
]	variables
≥metrics
 іlayer_regularization_losses
µlayer_metrics
^regularization_losses
ґlayers
_trainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_106/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_106/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1
 

e0
f1
≤
Јnon_trainable_variables
g	variables
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
hregularization_losses
їlayers
itrainable_variables
 
 
 
 
][
VARIABLE_VALUEconv3d_107/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_107/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1
 

o0
p1
≤
Љnon_trainable_variables
q	variables
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
rregularization_losses
јlayers
strainable_variables
][
VARIABLE_VALUEconv3d_108/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_108/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 

u0
v1
≤
Ѕnon_trainable_variables
w	variables
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
xregularization_losses
≈layers
ytrainable_variables
 
 
 
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
Р
serving_default_inputPlaceholder*3
_output_shapes!
:€€€€€€€€€  *
dtype0*(
shape:€€€€€€€€€  
Д
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_102/kernelconv3d_102/biasconv3d_103/kernelconv3d_103/biasconv3d_104/kernelconv3d_104/biasdense_18/kerneldense_18/biasconv3d_105/kernelconv3d_105/biasconv3d_106/kernelconv3d_106/biasconv3d_107/kernelconv3d_107/biasconv3d_108/kernelconv3d_108/bias*
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
%__inference_signature_wrapper_7245943
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
У
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_102/kernel/Read/ReadVariableOp#conv3d_102/bias/Read/ReadVariableOp%conv3d_103/kernel/Read/ReadVariableOp#conv3d_103/bias/Read/ReadVariableOp%conv3d_104/kernel/Read/ReadVariableOp#conv3d_104/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp%conv3d_105/kernel/Read/ReadVariableOp#conv3d_105/bias/Read/ReadVariableOp%conv3d_106/kernel/Read/ReadVariableOp#conv3d_106/bias/Read/ReadVariableOp%conv3d_107/kernel/Read/ReadVariableOp#conv3d_107/bias/Read/ReadVariableOp%conv3d_108/kernel/Read/ReadVariableOp#conv3d_108/bias/Read/ReadVariableOpConst*
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
 __inference__traced_save_7246655
ќ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_102/kernelconv3d_102/biasconv3d_103/kernelconv3d_103/biasconv3d_104/kernelconv3d_104/biasdense_18/kerneldense_18/biasconv3d_105/kernelconv3d_105/biasconv3d_106/kernelconv3d_106/biasconv3d_107/kernelconv3d_107/biasconv3d_108/kernelconv3d_108/bias*
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
#__inference__traced_restore_7246713ЉС
∞«
†
E__inference_model_18_layer_call_and_return_conditional_losses_7246287

inputsG
)conv3d_102_conv3d_readvariableop_resource:8
*conv3d_102_biasadd_readvariableop_resource:G
)conv3d_103_conv3d_readvariableop_resource:8
*conv3d_103_biasadd_readvariableop_resource:G
)conv3d_104_conv3d_readvariableop_resource:8
*conv3d_104_biasadd_readvariableop_resource:9
'dense_18_matmul_readvariableop_resource:@@6
(dense_18_biasadd_readvariableop_resource:@G
)conv3d_105_conv3d_readvariableop_resource:8
*conv3d_105_biasadd_readvariableop_resource:G
)conv3d_106_conv3d_readvariableop_resource:8
*conv3d_106_biasadd_readvariableop_resource:G
)conv3d_107_conv3d_readvariableop_resource:8
*conv3d_107_biasadd_readvariableop_resource:G
)conv3d_108_conv3d_readvariableop_resource:8
*conv3d_108_biasadd_readvariableop_resource:
identityИҐ!conv3d_102/BiasAdd/ReadVariableOpҐ conv3d_102/Conv3D/ReadVariableOpҐ!conv3d_103/BiasAdd/ReadVariableOpҐ conv3d_103/Conv3D/ReadVariableOpҐ!conv3d_104/BiasAdd/ReadVariableOpҐ conv3d_104/Conv3D/ReadVariableOpҐ!conv3d_105/BiasAdd/ReadVariableOpҐ conv3d_105/Conv3D/ReadVariableOpҐ!conv3d_106/BiasAdd/ReadVariableOpҐ conv3d_106/Conv3D/ReadVariableOpҐ!conv3d_107/BiasAdd/ReadVariableOpҐ conv3d_107/Conv3D/ReadVariableOpҐ!conv3d_108/BiasAdd/ReadVariableOpҐ conv3d_108/Conv3D/ReadVariableOpҐdense_18/BiasAdd/ReadVariableOpҐdense_18/MatMul/ReadVariableOpµ
0tf.__operators__.getitem_372/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_372/strided_slice/stackє
2tf.__operators__.getitem_372/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_372/strided_slice/stack_1є
2tf.__operators__.getitem_372/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_372/strided_slice/stack_2Т
*tf.__operators__.getitem_372/strided_sliceStridedSliceinputs9tf.__operators__.getitem_372/strided_slice/stack:output:0;tf.__operators__.getitem_372/strided_slice/stack_1:output:0;tf.__operators__.getitem_372/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_372/strided_slice{
range_conversion_18/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_18/sub/y–
range_conversion_18/subSub3tf.__operators__.getitem_372/strided_slice:output:0"range_conversion_18/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/subГ
range_conversion_18/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_18/truediv/y»
range_conversion_18/truedivRealDivrange_conversion_18/sub:z:0&range_conversion_18/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/truediv{
range_conversion_18/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_18/mul/yЉ
range_conversion_18/mulMulrange_conversion_18/truediv:z:0"range_conversion_18/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/mul{
range_conversion_18/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
range_conversion_18/add/yЇ
range_conversion_18/addAddV2range_conversion_18/mul:z:0"range_conversion_18/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/addµ
0tf.__operators__.getitem_373/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_373/strided_slice/stackє
2tf.__operators__.getitem_373/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_373/strided_slice/stack_1є
2tf.__operators__.getitem_373/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_373/strided_slice/stack_2Т
*tf.__operators__.getitem_373/strided_sliceStridedSliceinputs9tf.__operators__.getitem_373/strided_slice/stack:output:0;tf.__operators__.getitem_373/strided_slice/stack_1:output:0;tf.__operators__.getitem_373/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_373/strided_slicex
tf.concat_490/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_490/concat/axisх
tf.concat_490/concatConcatV2range_conversion_18/add:z:03tf.__operators__.getitem_373/strided_slice:output:0"tf.concat_490/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_490/concatЇ
 conv3d_102/Conv3D/ReadVariableOpReadVariableOp)conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_102/Conv3D/ReadVariableOpш
conv3d_102/Conv3DConv3Dtf.concat_490/concat:output:0(conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_102/Conv3D≠
!conv3d_102/BiasAdd/ReadVariableOpReadVariableOp*conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_102/BiasAdd/ReadVariableOpѕ
conv3d_102/BiasAddBiasAddconv3d_102/Conv3D:output:0)conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_102/BiasAddС
conv3d_102/SoftplusSoftplusconv3d_102/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_102/SoftplusІ
#average_pooling3d_42/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_42/transpose/perm№
average_pooling3d_42/transpose	Transpose!conv3d_102/Softplus:activations:0,average_pooling3d_42/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2 
average_pooling3d_42/transposeн
average_pooling3d_42/AvgPool3D	AvgPool3D"average_pooling3d_42/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_42/AvgPool3DЂ
%average_pooling3d_42/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_42/transpose_1/permи
 average_pooling3d_42/transpose_1	Transpose'average_pooling3d_42/AvgPool3D:output:0.average_pooling3d_42/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_42/transpose_1Ї
 conv3d_103/Conv3D/ReadVariableOpReadVariableOp)conv3d_103_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_103/Conv3D/ReadVariableOp€
conv3d_103/Conv3DConv3D$average_pooling3d_42/transpose_1:y:0(conv3d_103/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_103/Conv3D≠
!conv3d_103/BiasAdd/ReadVariableOpReadVariableOp*conv3d_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_103/BiasAdd/ReadVariableOpѕ
conv3d_103/BiasAddBiasAddconv3d_103/Conv3D:output:0)conv3d_103/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_103/BiasAddС
conv3d_103/SoftplusSoftplusconv3d_103/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_103/SoftplusІ
#average_pooling3d_43/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_43/transpose/perm№
average_pooling3d_43/transpose	Transpose!conv3d_103/Softplus:activations:0,average_pooling3d_43/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_43/transposeн
average_pooling3d_43/AvgPool3D	AvgPool3D"average_pooling3d_43/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_43/AvgPool3DЂ
%average_pooling3d_43/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_43/transpose_1/permи
 average_pooling3d_43/transpose_1	Transpose'average_pooling3d_43/AvgPool3D:output:0.average_pooling3d_43/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_43/transpose_1Ї
 conv3d_104/Conv3D/ReadVariableOpReadVariableOp)conv3d_104_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_104/Conv3D/ReadVariableOp€
conv3d_104/Conv3DConv3D$average_pooling3d_43/transpose_1:y:0(conv3d_104/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_104/Conv3D≠
!conv3d_104/BiasAdd/ReadVariableOpReadVariableOp*conv3d_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_104/BiasAdd/ReadVariableOpѕ
conv3d_104/BiasAddBiasAddconv3d_104/Conv3D:output:0)conv3d_104/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_104/BiasAddС
conv3d_104/SoftplusSoftplusconv3d_104/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_104/SoftplusІ
#average_pooling3d_44/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_44/transpose/perm№
average_pooling3d_44/transpose	Transpose!conv3d_104/Softplus:activations:0,average_pooling3d_44/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_44/transposeн
average_pooling3d_44/AvgPool3D	AvgPool3D"average_pooling3d_44/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_44/AvgPool3DЂ
%average_pooling3d_44/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_44/transpose_1/permи
 average_pooling3d_44/transpose_1	Transpose'average_pooling3d_44/AvgPool3D:output:0.average_pooling3d_44/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_44/transpose_1x
reshape_36/ShapeShape$average_pooling3d_44/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_36/ShapeК
reshape_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_36/strided_slice/stackО
 reshape_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_36/strided_slice/stack_1О
 reshape_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_36/strided_slice/stack_2§
reshape_36/strided_sliceStridedSlicereshape_36/Shape:output:0'reshape_36/strided_slice/stack:output:0)reshape_36/strided_slice/stack_1:output:0)reshape_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_36/strided_slicez
reshape_36/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_36/Reshape/shape/1≤
reshape_36/Reshape/shapePack!reshape_36/strided_slice:output:0#reshape_36/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_36/Reshape/shapeЃ
reshape_36/ReshapeReshape$average_pooling3d_44/transpose_1:y:0!reshape_36/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
reshape_36/Reshape®
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_18/MatMul/ReadVariableOp£
dense_18/MatMulMatMulreshape_36/Reshape:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_18/MatMulІ
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_18/BiasAdd/ReadVariableOp•
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_18/BiasAdd
dense_18/SoftplusSoftplusdense_18/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_18/Softpluss
reshape_37/ShapeShapedense_18/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_37/ShapeК
reshape_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_37/strided_slice/stackО
 reshape_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_1О
 reshape_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_2§
reshape_37/strided_sliceStridedSlicereshape_37/Shape:output:0'reshape_37/strided_slice/stack:output:0)reshape_37/strided_slice/stack_1:output:0)reshape_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_37/strided_slicez
reshape_37/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/1z
reshape_37/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/2z
reshape_37/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/3z
reshape_37/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/4°
reshape_37/Reshape/shapePack!reshape_37/strided_slice:output:0#reshape_37/Reshape/shape/1:output:0#reshape_37/Reshape/shape/2:output:0#reshape_37/Reshape/shape/3:output:0#reshape_37/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_37/Reshape/shapeµ
reshape_37/ReshapeReshapedense_18/Softplus:activations:0!reshape_37/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
reshape_37/Reshape•
tf.reshape_608/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_608/Reshape/shape…
tf.reshape_608/ReshapeReshapereshape_37/Reshape:output:0%tf.reshape_608/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_608/Reshape°
tf.tile_304/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_304/Tile/multiplesЉ
tf.tile_304/TileTiletf.reshape_608/Reshape:output:0#tf.tile_304/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_304/TileЩ
tf.reshape_609/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_609/Reshape/shapeї
tf.reshape_609/ReshapeReshapetf.tile_304/Tile:output:0%tf.reshape_609/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_609/Reshapex
tf.concat_491/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_491/concat/axisз
tf.concat_491/concatConcatV2tf.reshape_609/Reshape:output:0!conv3d_104/Softplus:activations:0"tf.concat_491/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_491/concatЇ
 conv3d_105/Conv3D/ReadVariableOpReadVariableOp)conv3d_105_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_105/Conv3D/ReadVariableOpш
conv3d_105/Conv3DConv3Dtf.concat_491/concat:output:0(conv3d_105/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_105/Conv3D≠
!conv3d_105/BiasAdd/ReadVariableOpReadVariableOp*conv3d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_105/BiasAdd/ReadVariableOpѕ
conv3d_105/BiasAddBiasAddconv3d_105/Conv3D:output:0)conv3d_105/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_105/BiasAddС
conv3d_105/SoftplusSoftplusconv3d_105/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_105/Softplus•
tf.reshape_610/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_610/Reshape/shapeѕ
tf.reshape_610/ReshapeReshape!conv3d_105/Softplus:activations:0%tf.reshape_610/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_610/Reshape°
tf.tile_305/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_305/Tile/multiplesЉ
tf.tile_305/TileTiletf.reshape_610/Reshape:output:0#tf.tile_305/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_305/TileЩ
tf.reshape_611/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_611/Reshape/shapeї
tf.reshape_611/ReshapeReshapetf.tile_305/Tile:output:0%tf.reshape_611/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_611/Reshapex
tf.concat_492/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_492/concat/axisз
tf.concat_492/concatConcatV2tf.reshape_611/Reshape:output:0!conv3d_103/Softplus:activations:0"tf.concat_492/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_492/concatЇ
 conv3d_106/Conv3D/ReadVariableOpReadVariableOp)conv3d_106_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_106/Conv3D/ReadVariableOpш
conv3d_106/Conv3DConv3Dtf.concat_492/concat:output:0(conv3d_106/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_106/Conv3D≠
!conv3d_106/BiasAdd/ReadVariableOpReadVariableOp*conv3d_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_106/BiasAdd/ReadVariableOpѕ
conv3d_106/BiasAddBiasAddconv3d_106/Conv3D:output:0)conv3d_106/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_106/BiasAddС
conv3d_106/SoftplusSoftplusconv3d_106/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_106/Softplus•
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_612/Reshape/shapeѕ
tf.reshape_612/ReshapeReshape!conv3d_106/Softplus:activations:0%tf.reshape_612/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_612/Reshape°
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_306/Tile/multiplesЉ
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_306/TileЩ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_613/Reshape/shapeї
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_613/Reshapex
tf.concat_493/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_493/concat/axisз
tf.concat_493/concatConcatV2tf.reshape_613/Reshape:output:0!conv3d_102/Softplus:activations:0"tf.concat_493/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_493/concatЇ
 conv3d_107/Conv3D/ReadVariableOpReadVariableOp)conv3d_107_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_107/Conv3D/ReadVariableOpш
conv3d_107/Conv3DConv3Dtf.concat_493/concat:output:0(conv3d_107/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_107/Conv3D≠
!conv3d_107/BiasAdd/ReadVariableOpReadVariableOp*conv3d_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_107/BiasAdd/ReadVariableOpѕ
conv3d_107/BiasAddBiasAddconv3d_107/Conv3D:output:0)conv3d_107/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_107/BiasAddС
conv3d_107/SoftplusSoftplusconv3d_107/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_107/SoftplusЇ
 conv3d_108/Conv3D/ReadVariableOpReadVariableOp)conv3d_108_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_108/Conv3D/ReadVariableOpь
conv3d_108/Conv3DConv3D!conv3d_107/Softplus:activations:0(conv3d_108/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_108/Conv3D≠
!conv3d_108/BiasAdd/ReadVariableOpReadVariableOp*conv3d_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_108/BiasAdd/ReadVariableOpѕ
conv3d_108/BiasAddBiasAddconv3d_108/Conv3D:output:0)conv3d_108/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_108/BiasAddВ
IdentityIdentityconv3d_108/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

IdentityВ
NoOpNoOp"^conv3d_102/BiasAdd/ReadVariableOp!^conv3d_102/Conv3D/ReadVariableOp"^conv3d_103/BiasAdd/ReadVariableOp!^conv3d_103/Conv3D/ReadVariableOp"^conv3d_104/BiasAdd/ReadVariableOp!^conv3d_104/Conv3D/ReadVariableOp"^conv3d_105/BiasAdd/ReadVariableOp!^conv3d_105/Conv3D/ReadVariableOp"^conv3d_106/BiasAdd/ReadVariableOp!^conv3d_106/Conv3D/ReadVariableOp"^conv3d_107/BiasAdd/ReadVariableOp!^conv3d_107/Conv3D/ReadVariableOp"^conv3d_108/BiasAdd/ReadVariableOp!^conv3d_108/Conv3D/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2F
!conv3d_102/BiasAdd/ReadVariableOp!conv3d_102/BiasAdd/ReadVariableOp2D
 conv3d_102/Conv3D/ReadVariableOp conv3d_102/Conv3D/ReadVariableOp2F
!conv3d_103/BiasAdd/ReadVariableOp!conv3d_103/BiasAdd/ReadVariableOp2D
 conv3d_103/Conv3D/ReadVariableOp conv3d_103/Conv3D/ReadVariableOp2F
!conv3d_104/BiasAdd/ReadVariableOp!conv3d_104/BiasAdd/ReadVariableOp2D
 conv3d_104/Conv3D/ReadVariableOp conv3d_104/Conv3D/ReadVariableOp2F
!conv3d_105/BiasAdd/ReadVariableOp!conv3d_105/BiasAdd/ReadVariableOp2D
 conv3d_105/Conv3D/ReadVariableOp conv3d_105/Conv3D/ReadVariableOp2F
!conv3d_106/BiasAdd/ReadVariableOp!conv3d_106/BiasAdd/ReadVariableOp2D
 conv3d_106/Conv3D/ReadVariableOp conv3d_106/Conv3D/ReadVariableOp2F
!conv3d_107/BiasAdd/ReadVariableOp!conv3d_107/BiasAdd/ReadVariableOp2D
 conv3d_107/Conv3D/ReadVariableOp conv3d_107/Conv3D/ReadVariableOp2F
!conv3d_108/BiasAdd/ReadVariableOp!conv3d_108/BiasAdd/ReadVariableOp2D
 conv3d_108/Conv3D/ReadVariableOp conv3d_108/Conv3D/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
К	
m
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7246400

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
г

m
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7246439

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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7245251

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
Ќ
Д
G__inference_conv3d_105_layer_call_and_return_conditional_losses_7246525

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
’
Д
G__inference_conv3d_108_layer_call_and_return_conditional_losses_7246584

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
÷
й
*__inference_model_18_layer_call_fn_7245736	
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
E__inference_model_18_layer_call_and_return_conditional_losses_72456642
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
ЕH
¬

#__inference__traced_restore_7246713
file_prefix@
"assignvariableop_conv3d_102_kernel:0
"assignvariableop_1_conv3d_102_bias:B
$assignvariableop_2_conv3d_103_kernel:0
"assignvariableop_3_conv3d_103_bias:B
$assignvariableop_4_conv3d_104_kernel:0
"assignvariableop_5_conv3d_104_bias:4
"assignvariableop_6_dense_18_kernel:@@.
 assignvariableop_7_dense_18_bias:@B
$assignvariableop_8_conv3d_105_kernel:0
"assignvariableop_9_conv3d_105_bias:C
%assignvariableop_10_conv3d_106_kernel:1
#assignvariableop_11_conv3d_106_bias:C
%assignvariableop_12_conv3d_107_kernel:1
#assignvariableop_13_conv3d_107_bias:C
%assignvariableop_14_conv3d_108_kernel:1
#assignvariableop_15_conv3d_108_bias:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_102_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_102_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2©
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_103_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_103_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4©
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_104_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_104_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6І
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_18_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7•
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_18_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8©
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_105_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9І
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_105_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10≠
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_106_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ђ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_106_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12≠
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_107_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ђ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_107_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14≠
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_108_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ђ
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_108_biasIdentity_15:output:0"/device:CPU:0*
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
ю
Ч
*__inference_dense_18_layer_call_fn_7246474

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
E__inference_dense_18_layer_call_and_return_conditional_losses_72452782
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
Ќ
Д
G__inference_conv3d_104_layer_call_and_return_conditional_losses_7246420

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
њ
•
,__inference_conv3d_108_layer_call_fn_7246574

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
G__inference_conv3d_108_layer_call_and_return_conditional_losses_72453862
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
 
_user_specified_nameinputs
Ќ
Д
G__inference_conv3d_105_layer_call_and_return_conditional_losses_7245320

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
Ъ
c
G__inference_reshape_36_layer_call_and_return_conditional_losses_7246465

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
Љx
Ъ
E__inference_model_18_layer_call_and_return_conditional_losses_7245664

inputs0
conv3d_102_7245594: 
conv3d_102_7245596:0
conv3d_103_7245600: 
conv3d_103_7245602:0
conv3d_104_7245606: 
conv3d_104_7245608:"
dense_18_7245613:@@
dense_18_7245615:@0
conv3d_105_7245627: 
conv3d_105_7245629:0
conv3d_106_7245640: 
conv3d_106_7245642:0
conv3d_107_7245653: 
conv3d_107_7245655:0
conv3d_108_7245658: 
conv3d_108_7245660:
identityИҐ"conv3d_102/StatefulPartitionedCallҐ"conv3d_103/StatefulPartitionedCallҐ"conv3d_104/StatefulPartitionedCallҐ"conv3d_105/StatefulPartitionedCallҐ"conv3d_106/StatefulPartitionedCallҐ"conv3d_107/StatefulPartitionedCallҐ"conv3d_108/StatefulPartitionedCallҐ dense_18/StatefulPartitionedCallµ
0tf.__operators__.getitem_372/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_372/strided_slice/stackє
2tf.__operators__.getitem_372/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_372/strided_slice/stack_1є
2tf.__operators__.getitem_372/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_372/strided_slice/stack_2Т
*tf.__operators__.getitem_372/strided_sliceStridedSliceinputs9tf.__operators__.getitem_372/strided_slice/stack:output:0;tf.__operators__.getitem_372/strided_slice/stack_1:output:0;tf.__operators__.getitem_372/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_372/strided_sliceЇ
#range_conversion_18/PartitionedCallPartitionedCall3tf.__operators__.getitem_372/strided_slice:output:0*
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
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_72451642%
#range_conversion_18/PartitionedCallµ
0tf.__operators__.getitem_373/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_373/strided_slice/stackє
2tf.__operators__.getitem_373/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_373/strided_slice/stack_1є
2tf.__operators__.getitem_373/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_373/strided_slice/stack_2Т
*tf.__operators__.getitem_373/strided_sliceStridedSliceinputs9tf.__operators__.getitem_373/strided_slice/stack:output:0;tf.__operators__.getitem_373/strided_slice/stack_1:output:0;tf.__operators__.getitem_373/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_373/strided_slicex
tf.concat_490/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_490/concat/axisЖ
tf.concat_490/concatConcatV2,range_conversion_18/PartitionedCall:output:03tf.__operators__.getitem_373/strided_slice:output:0"tf.concat_490/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_490/concatѕ
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCalltf.concat_490/concat:output:0conv3d_102_7245594conv3d_102_7245596*
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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_72451832$
"conv3d_102/StatefulPartitionedCallµ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_72451972&
$average_pooling3d_42/PartitionedCallя
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_103_7245600conv3d_103_7245602*
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
G__inference_conv3d_103_layer_call_and_return_conditional_losses_72452102$
"conv3d_103/StatefulPartitionedCallµ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_72452242&
$average_pooling3d_43/PartitionedCallя
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_104_7245606conv3d_104_7245608*
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
G__inference_conv3d_104_layer_call_and_return_conditional_losses_72452372$
"conv3d_104/StatefulPartitionedCallµ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_72452512&
$average_pooling3d_44/PartitionedCallН
reshape_36/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
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
G__inference_reshape_36_layer_call_and_return_conditional_losses_72452652
reshape_36/PartitionedCallњ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#reshape_36/PartitionedCall:output:0dense_18_7245613dense_18_7245615*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_72452782"
 dense_18/StatefulPartitionedCallХ
reshape_37/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_72452992
reshape_37/PartitionedCall•
tf.reshape_608/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_608/Reshape/shape—
tf.reshape_608/ReshapeReshape#reshape_37/PartitionedCall:output:0%tf.reshape_608/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_608/Reshape°
tf.tile_304/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_304/Tile/multiplesЉ
tf.tile_304/TileTiletf.reshape_608/Reshape:output:0#tf.tile_304/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_304/TileЩ
tf.reshape_609/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_609/Reshape/shapeї
tf.reshape_609/ReshapeReshapetf.tile_304/Tile:output:0%tf.reshape_609/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_609/Reshapex
tf.concat_491/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_491/concat/axisс
tf.concat_491/concatConcatV2tf.reshape_609/Reshape:output:0+conv3d_104/StatefulPartitionedCall:output:0"tf.concat_491/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_491/concatѕ
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCalltf.concat_491/concat:output:0conv3d_105_7245627conv3d_105_7245629*
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
G__inference_conv3d_105_layer_call_and_return_conditional_losses_72453202$
"conv3d_105/StatefulPartitionedCall•
tf.reshape_610/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_610/Reshape/shapeў
tf.reshape_610/ReshapeReshape+conv3d_105/StatefulPartitionedCall:output:0%tf.reshape_610/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_610/Reshape°
tf.tile_305/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_305/Tile/multiplesЉ
tf.tile_305/TileTiletf.reshape_610/Reshape:output:0#tf.tile_305/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_305/TileЩ
tf.reshape_611/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_611/Reshape/shapeї
tf.reshape_611/ReshapeReshapetf.tile_305/Tile:output:0%tf.reshape_611/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_611/Reshapex
tf.concat_492/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_492/concat/axisс
tf.concat_492/concatConcatV2tf.reshape_611/Reshape:output:0+conv3d_103/StatefulPartitionedCall:output:0"tf.concat_492/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_492/concatѕ
"conv3d_106/StatefulPartitionedCallStatefulPartitionedCalltf.concat_492/concat:output:0conv3d_106_7245640conv3d_106_7245642*
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
G__inference_conv3d_106_layer_call_and_return_conditional_losses_72453452$
"conv3d_106/StatefulPartitionedCall•
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_612/Reshape/shapeў
tf.reshape_612/ReshapeReshape+conv3d_106/StatefulPartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_612/Reshape°
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_306/Tile/multiplesЉ
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_306/TileЩ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_613/Reshape/shapeї
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_613/Reshapex
tf.concat_493/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_493/concat/axisс
tf.concat_493/concatConcatV2tf.reshape_613/Reshape:output:0+conv3d_102/StatefulPartitionedCall:output:0"tf.concat_493/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_493/concatѕ
"conv3d_107/StatefulPartitionedCallStatefulPartitionedCalltf.concat_493/concat:output:0conv3d_107_7245653conv3d_107_7245655*
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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_72453702$
"conv3d_107/StatefulPartitionedCallЁ
"conv3d_108/StatefulPartitionedCallStatefulPartitionedCall+conv3d_107/StatefulPartitionedCall:output:0conv3d_108_7245658conv3d_108_7245660*
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
G__inference_conv3d_108_layer_call_and_return_conditional_losses_72453862$
"conv3d_108/StatefulPartitionedCallТ
IdentityIdentity+conv3d_108/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall#^conv3d_106/StatefulPartitionedCall#^conv3d_107/StatefulPartitionedCall#^conv3d_108/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2H
"conv3d_106/StatefulPartitionedCall"conv3d_106/StatefulPartitionedCall2H
"conv3d_107/StatefulPartitionedCall"conv3d_107/StatefulPartitionedCall2H
"conv3d_108/StatefulPartitionedCall"conv3d_108/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
г

m
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7245124

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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_7246565

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
ў
к
*__inference_model_18_layer_call_fn_7246017

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
E__inference_model_18_layer_call_and_return_conditional_losses_72456642
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
E__inference_model_18_layer_call_and_return_conditional_losses_7246152

inputsG
)conv3d_102_conv3d_readvariableop_resource:8
*conv3d_102_biasadd_readvariableop_resource:G
)conv3d_103_conv3d_readvariableop_resource:8
*conv3d_103_biasadd_readvariableop_resource:G
)conv3d_104_conv3d_readvariableop_resource:8
*conv3d_104_biasadd_readvariableop_resource:9
'dense_18_matmul_readvariableop_resource:@@6
(dense_18_biasadd_readvariableop_resource:@G
)conv3d_105_conv3d_readvariableop_resource:8
*conv3d_105_biasadd_readvariableop_resource:G
)conv3d_106_conv3d_readvariableop_resource:8
*conv3d_106_biasadd_readvariableop_resource:G
)conv3d_107_conv3d_readvariableop_resource:8
*conv3d_107_biasadd_readvariableop_resource:G
)conv3d_108_conv3d_readvariableop_resource:8
*conv3d_108_biasadd_readvariableop_resource:
identityИҐ!conv3d_102/BiasAdd/ReadVariableOpҐ conv3d_102/Conv3D/ReadVariableOpҐ!conv3d_103/BiasAdd/ReadVariableOpҐ conv3d_103/Conv3D/ReadVariableOpҐ!conv3d_104/BiasAdd/ReadVariableOpҐ conv3d_104/Conv3D/ReadVariableOpҐ!conv3d_105/BiasAdd/ReadVariableOpҐ conv3d_105/Conv3D/ReadVariableOpҐ!conv3d_106/BiasAdd/ReadVariableOpҐ conv3d_106/Conv3D/ReadVariableOpҐ!conv3d_107/BiasAdd/ReadVariableOpҐ conv3d_107/Conv3D/ReadVariableOpҐ!conv3d_108/BiasAdd/ReadVariableOpҐ conv3d_108/Conv3D/ReadVariableOpҐdense_18/BiasAdd/ReadVariableOpҐdense_18/MatMul/ReadVariableOpµ
0tf.__operators__.getitem_372/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_372/strided_slice/stackє
2tf.__operators__.getitem_372/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_372/strided_slice/stack_1є
2tf.__operators__.getitem_372/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_372/strided_slice/stack_2Т
*tf.__operators__.getitem_372/strided_sliceStridedSliceinputs9tf.__operators__.getitem_372/strided_slice/stack:output:0;tf.__operators__.getitem_372/strided_slice/stack_1:output:0;tf.__operators__.getitem_372/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_372/strided_slice{
range_conversion_18/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_18/sub/y–
range_conversion_18/subSub3tf.__operators__.getitem_372/strided_slice:output:0"range_conversion_18/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/subГ
range_conversion_18/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_18/truediv/y»
range_conversion_18/truedivRealDivrange_conversion_18/sub:z:0&range_conversion_18/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/truediv{
range_conversion_18/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_18/mul/yЉ
range_conversion_18/mulMulrange_conversion_18/truediv:z:0"range_conversion_18/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/mul{
range_conversion_18/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2
range_conversion_18/add/yЇ
range_conversion_18/addAddV2range_conversion_18/mul:z:0"range_conversion_18/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
range_conversion_18/addµ
0tf.__operators__.getitem_373/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_373/strided_slice/stackє
2tf.__operators__.getitem_373/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_373/strided_slice/stack_1є
2tf.__operators__.getitem_373/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_373/strided_slice/stack_2Т
*tf.__operators__.getitem_373/strided_sliceStridedSliceinputs9tf.__operators__.getitem_373/strided_slice/stack:output:0;tf.__operators__.getitem_373/strided_slice/stack_1:output:0;tf.__operators__.getitem_373/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_373/strided_slicex
tf.concat_490/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_490/concat/axisх
tf.concat_490/concatConcatV2range_conversion_18/add:z:03tf.__operators__.getitem_373/strided_slice:output:0"tf.concat_490/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_490/concatЇ
 conv3d_102/Conv3D/ReadVariableOpReadVariableOp)conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_102/Conv3D/ReadVariableOpш
conv3d_102/Conv3DConv3Dtf.concat_490/concat:output:0(conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_102/Conv3D≠
!conv3d_102/BiasAdd/ReadVariableOpReadVariableOp*conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_102/BiasAdd/ReadVariableOpѕ
conv3d_102/BiasAddBiasAddconv3d_102/Conv3D:output:0)conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_102/BiasAddС
conv3d_102/SoftplusSoftplusconv3d_102/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_102/SoftplusІ
#average_pooling3d_42/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_42/transpose/perm№
average_pooling3d_42/transpose	Transpose!conv3d_102/Softplus:activations:0,average_pooling3d_42/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2 
average_pooling3d_42/transposeн
average_pooling3d_42/AvgPool3D	AvgPool3D"average_pooling3d_42/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_42/AvgPool3DЂ
%average_pooling3d_42/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_42/transpose_1/permи
 average_pooling3d_42/transpose_1	Transpose'average_pooling3d_42/AvgPool3D:output:0.average_pooling3d_42/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_42/transpose_1Ї
 conv3d_103/Conv3D/ReadVariableOpReadVariableOp)conv3d_103_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_103/Conv3D/ReadVariableOp€
conv3d_103/Conv3DConv3D$average_pooling3d_42/transpose_1:y:0(conv3d_103/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_103/Conv3D≠
!conv3d_103/BiasAdd/ReadVariableOpReadVariableOp*conv3d_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_103/BiasAdd/ReadVariableOpѕ
conv3d_103/BiasAddBiasAddconv3d_103/Conv3D:output:0)conv3d_103/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_103/BiasAddС
conv3d_103/SoftplusSoftplusconv3d_103/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_103/SoftplusІ
#average_pooling3d_43/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_43/transpose/perm№
average_pooling3d_43/transpose	Transpose!conv3d_103/Softplus:activations:0,average_pooling3d_43/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_43/transposeн
average_pooling3d_43/AvgPool3D	AvgPool3D"average_pooling3d_43/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_43/AvgPool3DЂ
%average_pooling3d_43/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_43/transpose_1/permи
 average_pooling3d_43/transpose_1	Transpose'average_pooling3d_43/AvgPool3D:output:0.average_pooling3d_43/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_43/transpose_1Ї
 conv3d_104/Conv3D/ReadVariableOpReadVariableOp)conv3d_104_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_104/Conv3D/ReadVariableOp€
conv3d_104/Conv3DConv3D$average_pooling3d_43/transpose_1:y:0(conv3d_104/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_104/Conv3D≠
!conv3d_104/BiasAdd/ReadVariableOpReadVariableOp*conv3d_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_104/BiasAdd/ReadVariableOpѕ
conv3d_104/BiasAddBiasAddconv3d_104/Conv3D:output:0)conv3d_104/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_104/BiasAddС
conv3d_104/SoftplusSoftplusconv3d_104/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_104/SoftplusІ
#average_pooling3d_44/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_44/transpose/perm№
average_pooling3d_44/transpose	Transpose!conv3d_104/Softplus:activations:0,average_pooling3d_44/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2 
average_pooling3d_44/transposeн
average_pooling3d_44/AvgPool3D	AvgPool3D"average_pooling3d_44/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_44/AvgPool3DЂ
%average_pooling3d_44/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_44/transpose_1/permи
 average_pooling3d_44/transpose_1	Transpose'average_pooling3d_44/AvgPool3D:output:0.average_pooling3d_44/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2"
 average_pooling3d_44/transpose_1x
reshape_36/ShapeShape$average_pooling3d_44/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_36/ShapeК
reshape_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_36/strided_slice/stackО
 reshape_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_36/strided_slice/stack_1О
 reshape_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_36/strided_slice/stack_2§
reshape_36/strided_sliceStridedSlicereshape_36/Shape:output:0'reshape_36/strided_slice/stack:output:0)reshape_36/strided_slice/stack_1:output:0)reshape_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_36/strided_slicez
reshape_36/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_36/Reshape/shape/1≤
reshape_36/Reshape/shapePack!reshape_36/strided_slice:output:0#reshape_36/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_36/Reshape/shapeЃ
reshape_36/ReshapeReshape$average_pooling3d_44/transpose_1:y:0!reshape_36/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
reshape_36/Reshape®
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_18/MatMul/ReadVariableOp£
dense_18/MatMulMatMulreshape_36/Reshape:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_18/MatMulІ
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_18/BiasAdd/ReadVariableOp•
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_18/BiasAdd
dense_18/SoftplusSoftplusdense_18/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_18/Softpluss
reshape_37/ShapeShapedense_18/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_37/ShapeК
reshape_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_37/strided_slice/stackО
 reshape_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_1О
 reshape_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_2§
reshape_37/strided_sliceStridedSlicereshape_37/Shape:output:0'reshape_37/strided_slice/stack:output:0)reshape_37/strided_slice/stack_1:output:0)reshape_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_37/strided_slicez
reshape_37/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/1z
reshape_37/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/2z
reshape_37/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/3z
reshape_37/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/4°
reshape_37/Reshape/shapePack!reshape_37/strided_slice:output:0#reshape_37/Reshape/shape/1:output:0#reshape_37/Reshape/shape/2:output:0#reshape_37/Reshape/shape/3:output:0#reshape_37/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_37/Reshape/shapeµ
reshape_37/ReshapeReshapedense_18/Softplus:activations:0!reshape_37/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
reshape_37/Reshape•
tf.reshape_608/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_608/Reshape/shape…
tf.reshape_608/ReshapeReshapereshape_37/Reshape:output:0%tf.reshape_608/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_608/Reshape°
tf.tile_304/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_304/Tile/multiplesЉ
tf.tile_304/TileTiletf.reshape_608/Reshape:output:0#tf.tile_304/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_304/TileЩ
tf.reshape_609/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_609/Reshape/shapeї
tf.reshape_609/ReshapeReshapetf.tile_304/Tile:output:0%tf.reshape_609/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_609/Reshapex
tf.concat_491/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_491/concat/axisз
tf.concat_491/concatConcatV2tf.reshape_609/Reshape:output:0!conv3d_104/Softplus:activations:0"tf.concat_491/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_491/concatЇ
 conv3d_105/Conv3D/ReadVariableOpReadVariableOp)conv3d_105_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_105/Conv3D/ReadVariableOpш
conv3d_105/Conv3DConv3Dtf.concat_491/concat:output:0(conv3d_105/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_105/Conv3D≠
!conv3d_105/BiasAdd/ReadVariableOpReadVariableOp*conv3d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_105/BiasAdd/ReadVariableOpѕ
conv3d_105/BiasAddBiasAddconv3d_105/Conv3D:output:0)conv3d_105/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_105/BiasAddС
conv3d_105/SoftplusSoftplusconv3d_105/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_105/Softplus•
tf.reshape_610/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_610/Reshape/shapeѕ
tf.reshape_610/ReshapeReshape!conv3d_105/Softplus:activations:0%tf.reshape_610/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_610/Reshape°
tf.tile_305/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_305/Tile/multiplesЉ
tf.tile_305/TileTiletf.reshape_610/Reshape:output:0#tf.tile_305/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_305/TileЩ
tf.reshape_611/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_611/Reshape/shapeї
tf.reshape_611/ReshapeReshapetf.tile_305/Tile:output:0%tf.reshape_611/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_611/Reshapex
tf.concat_492/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_492/concat/axisз
tf.concat_492/concatConcatV2tf.reshape_611/Reshape:output:0!conv3d_103/Softplus:activations:0"tf.concat_492/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_492/concatЇ
 conv3d_106/Conv3D/ReadVariableOpReadVariableOp)conv3d_106_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_106/Conv3D/ReadVariableOpш
conv3d_106/Conv3DConv3Dtf.concat_492/concat:output:0(conv3d_106/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_106/Conv3D≠
!conv3d_106/BiasAdd/ReadVariableOpReadVariableOp*conv3d_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_106/BiasAdd/ReadVariableOpѕ
conv3d_106/BiasAddBiasAddconv3d_106/Conv3D:output:0)conv3d_106/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
conv3d_106/BiasAddС
conv3d_106/SoftplusSoftplusconv3d_106/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv3d_106/Softplus•
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_612/Reshape/shapeѕ
tf.reshape_612/ReshapeReshape!conv3d_106/Softplus:activations:0%tf.reshape_612/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_612/Reshape°
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_306/Tile/multiplesЉ
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_306/TileЩ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_613/Reshape/shapeї
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_613/Reshapex
tf.concat_493/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_493/concat/axisз
tf.concat_493/concatConcatV2tf.reshape_613/Reshape:output:0!conv3d_102/Softplus:activations:0"tf.concat_493/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_493/concatЇ
 conv3d_107/Conv3D/ReadVariableOpReadVariableOp)conv3d_107_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_107/Conv3D/ReadVariableOpш
conv3d_107/Conv3DConv3Dtf.concat_493/concat:output:0(conv3d_107/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_107/Conv3D≠
!conv3d_107/BiasAdd/ReadVariableOpReadVariableOp*conv3d_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_107/BiasAdd/ReadVariableOpѕ
conv3d_107/BiasAddBiasAddconv3d_107/Conv3D:output:0)conv3d_107/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_107/BiasAddС
conv3d_107/SoftplusSoftplusconv3d_107/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
conv3d_107/SoftplusЇ
 conv3d_108/Conv3D/ReadVariableOpReadVariableOp)conv3d_108_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_108/Conv3D/ReadVariableOpь
conv3d_108/Conv3DConv3D!conv3d_107/Softplus:activations:0(conv3d_108/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_108/Conv3D≠
!conv3d_108/BiasAdd/ReadVariableOpReadVariableOp*conv3d_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_108/BiasAdd/ReadVariableOpѕ
conv3d_108/BiasAddBiasAddconv3d_108/Conv3D:output:0)conv3d_108/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
conv3d_108/BiasAddВ
IdentityIdentityconv3d_108/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

IdentityВ
NoOpNoOp"^conv3d_102/BiasAdd/ReadVariableOp!^conv3d_102/Conv3D/ReadVariableOp"^conv3d_103/BiasAdd/ReadVariableOp!^conv3d_103/Conv3D/ReadVariableOp"^conv3d_104/BiasAdd/ReadVariableOp!^conv3d_104/Conv3D/ReadVariableOp"^conv3d_105/BiasAdd/ReadVariableOp!^conv3d_105/Conv3D/ReadVariableOp"^conv3d_106/BiasAdd/ReadVariableOp!^conv3d_106/Conv3D/ReadVariableOp"^conv3d_107/BiasAdd/ReadVariableOp!^conv3d_107/Conv3D/ReadVariableOp"^conv3d_108/BiasAdd/ReadVariableOp!^conv3d_108/Conv3D/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2F
!conv3d_102/BiasAdd/ReadVariableOp!conv3d_102/BiasAdd/ReadVariableOp2D
 conv3d_102/Conv3D/ReadVariableOp conv3d_102/Conv3D/ReadVariableOp2F
!conv3d_103/BiasAdd/ReadVariableOp!conv3d_103/BiasAdd/ReadVariableOp2D
 conv3d_103/Conv3D/ReadVariableOp conv3d_103/Conv3D/ReadVariableOp2F
!conv3d_104/BiasAdd/ReadVariableOp!conv3d_104/BiasAdd/ReadVariableOp2D
 conv3d_104/Conv3D/ReadVariableOp conv3d_104/Conv3D/ReadVariableOp2F
!conv3d_105/BiasAdd/ReadVariableOp!conv3d_105/BiasAdd/ReadVariableOp2D
 conv3d_105/Conv3D/ReadVariableOp conv3d_105/Conv3D/ReadVariableOp2F
!conv3d_106/BiasAdd/ReadVariableOp!conv3d_106/BiasAdd/ReadVariableOp2D
 conv3d_106/Conv3D/ReadVariableOp conv3d_106/Conv3D/ReadVariableOp2F
!conv3d_107/BiasAdd/ReadVariableOp!conv3d_107/BiasAdd/ReadVariableOp2D
 conv3d_107/Conv3D/ReadVariableOp conv3d_107/Conv3D/ReadVariableOp2F
!conv3d_108/BiasAdd/ReadVariableOp!conv3d_108/BiasAdd/ReadVariableOp2D
 conv3d_108/Conv3D/ReadVariableOp conv3d_108/Conv3D/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
њ
•
,__inference_conv3d_103_layer_call_fn_7246361

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
G__inference_conv3d_103_layer_call_and_return_conditional_losses_72452102
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
г

m
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7245064

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
С
R
6__inference_average_pooling3d_44_layer_call_fn_7246430

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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_72452512
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
К	
m
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7246448

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
С
R
6__inference_average_pooling3d_42_layer_call_fn_7246334

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
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_72451972
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
’
Д
G__inference_conv3d_108_layer_call_and_return_conditional_losses_7245386

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
Єx
Щ
E__inference_model_18_layer_call_and_return_conditional_losses_7245820	
input0
conv3d_102_7245750: 
conv3d_102_7245752:0
conv3d_103_7245756: 
conv3d_103_7245758:0
conv3d_104_7245762: 
conv3d_104_7245764:"
dense_18_7245769:@@
dense_18_7245771:@0
conv3d_105_7245783: 
conv3d_105_7245785:0
conv3d_106_7245796: 
conv3d_106_7245798:0
conv3d_107_7245809: 
conv3d_107_7245811:0
conv3d_108_7245814: 
conv3d_108_7245816:
identityИҐ"conv3d_102/StatefulPartitionedCallҐ"conv3d_103/StatefulPartitionedCallҐ"conv3d_104/StatefulPartitionedCallҐ"conv3d_105/StatefulPartitionedCallҐ"conv3d_106/StatefulPartitionedCallҐ"conv3d_107/StatefulPartitionedCallҐ"conv3d_108/StatefulPartitionedCallҐ dense_18/StatefulPartitionedCallµ
0tf.__operators__.getitem_372/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_372/strided_slice/stackє
2tf.__operators__.getitem_372/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_372/strided_slice/stack_1є
2tf.__operators__.getitem_372/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_372/strided_slice/stack_2С
*tf.__operators__.getitem_372/strided_sliceStridedSliceinput9tf.__operators__.getitem_372/strided_slice/stack:output:0;tf.__operators__.getitem_372/strided_slice/stack_1:output:0;tf.__operators__.getitem_372/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_372/strided_sliceЇ
#range_conversion_18/PartitionedCallPartitionedCall3tf.__operators__.getitem_372/strided_slice:output:0*
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
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_72451642%
#range_conversion_18/PartitionedCallµ
0tf.__operators__.getitem_373/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_373/strided_slice/stackє
2tf.__operators__.getitem_373/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_373/strided_slice/stack_1є
2tf.__operators__.getitem_373/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_373/strided_slice/stack_2С
*tf.__operators__.getitem_373/strided_sliceStridedSliceinput9tf.__operators__.getitem_373/strided_slice/stack:output:0;tf.__operators__.getitem_373/strided_slice/stack_1:output:0;tf.__operators__.getitem_373/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_373/strided_slicex
tf.concat_490/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_490/concat/axisЖ
tf.concat_490/concatConcatV2,range_conversion_18/PartitionedCall:output:03tf.__operators__.getitem_373/strided_slice:output:0"tf.concat_490/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_490/concatѕ
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCalltf.concat_490/concat:output:0conv3d_102_7245750conv3d_102_7245752*
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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_72451832$
"conv3d_102/StatefulPartitionedCallµ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_72451972&
$average_pooling3d_42/PartitionedCallя
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_103_7245756conv3d_103_7245758*
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
G__inference_conv3d_103_layer_call_and_return_conditional_losses_72452102$
"conv3d_103/StatefulPartitionedCallµ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_72452242&
$average_pooling3d_43/PartitionedCallя
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_104_7245762conv3d_104_7245764*
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
G__inference_conv3d_104_layer_call_and_return_conditional_losses_72452372$
"conv3d_104/StatefulPartitionedCallµ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_72452512&
$average_pooling3d_44/PartitionedCallН
reshape_36/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
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
G__inference_reshape_36_layer_call_and_return_conditional_losses_72452652
reshape_36/PartitionedCallњ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#reshape_36/PartitionedCall:output:0dense_18_7245769dense_18_7245771*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_72452782"
 dense_18/StatefulPartitionedCallХ
reshape_37/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_72452992
reshape_37/PartitionedCall•
tf.reshape_608/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_608/Reshape/shape—
tf.reshape_608/ReshapeReshape#reshape_37/PartitionedCall:output:0%tf.reshape_608/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_608/Reshape°
tf.tile_304/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_304/Tile/multiplesЉ
tf.tile_304/TileTiletf.reshape_608/Reshape:output:0#tf.tile_304/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_304/TileЩ
tf.reshape_609/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_609/Reshape/shapeї
tf.reshape_609/ReshapeReshapetf.tile_304/Tile:output:0%tf.reshape_609/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_609/Reshapex
tf.concat_491/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_491/concat/axisс
tf.concat_491/concatConcatV2tf.reshape_609/Reshape:output:0+conv3d_104/StatefulPartitionedCall:output:0"tf.concat_491/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_491/concatѕ
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCalltf.concat_491/concat:output:0conv3d_105_7245783conv3d_105_7245785*
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
G__inference_conv3d_105_layer_call_and_return_conditional_losses_72453202$
"conv3d_105/StatefulPartitionedCall•
tf.reshape_610/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_610/Reshape/shapeў
tf.reshape_610/ReshapeReshape+conv3d_105/StatefulPartitionedCall:output:0%tf.reshape_610/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_610/Reshape°
tf.tile_305/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_305/Tile/multiplesЉ
tf.tile_305/TileTiletf.reshape_610/Reshape:output:0#tf.tile_305/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_305/TileЩ
tf.reshape_611/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_611/Reshape/shapeї
tf.reshape_611/ReshapeReshapetf.tile_305/Tile:output:0%tf.reshape_611/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_611/Reshapex
tf.concat_492/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_492/concat/axisс
tf.concat_492/concatConcatV2tf.reshape_611/Reshape:output:0+conv3d_103/StatefulPartitionedCall:output:0"tf.concat_492/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_492/concatѕ
"conv3d_106/StatefulPartitionedCallStatefulPartitionedCalltf.concat_492/concat:output:0conv3d_106_7245796conv3d_106_7245798*
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
G__inference_conv3d_106_layer_call_and_return_conditional_losses_72453452$
"conv3d_106/StatefulPartitionedCall•
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_612/Reshape/shapeў
tf.reshape_612/ReshapeReshape+conv3d_106/StatefulPartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_612/Reshape°
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_306/Tile/multiplesЉ
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_306/TileЩ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_613/Reshape/shapeї
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_613/Reshapex
tf.concat_493/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_493/concat/axisс
tf.concat_493/concatConcatV2tf.reshape_613/Reshape:output:0+conv3d_102/StatefulPartitionedCall:output:0"tf.concat_493/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_493/concatѕ
"conv3d_107/StatefulPartitionedCallStatefulPartitionedCalltf.concat_493/concat:output:0conv3d_107_7245809conv3d_107_7245811*
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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_72453702$
"conv3d_107/StatefulPartitionedCallЁ
"conv3d_108/StatefulPartitionedCallStatefulPartitionedCall+conv3d_107/StatefulPartitionedCall:output:0conv3d_108_7245814conv3d_108_7245816*
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
G__inference_conv3d_108_layer_call_and_return_conditional_losses_72453862$
"conv3d_108/StatefulPartitionedCallТ
IdentityIdentity+conv3d_108/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall#^conv3d_106/StatefulPartitionedCall#^conv3d_107/StatefulPartitionedCall#^conv3d_108/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2H
"conv3d_106/StatefulPartitionedCall"conv3d_106/StatefulPartitionedCall2H
"conv3d_107/StatefulPartitionedCall"conv3d_107/StatefulPartitionedCall2H
"conv3d_108/StatefulPartitionedCall"conv3d_108/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
С
R
6__inference_average_pooling3d_43_layer_call_fn_7246382

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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_72452242
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
Єx
Щ
E__inference_model_18_layer_call_and_return_conditional_losses_7245904	
input0
conv3d_102_7245834: 
conv3d_102_7245836:0
conv3d_103_7245840: 
conv3d_103_7245842:0
conv3d_104_7245846: 
conv3d_104_7245848:"
dense_18_7245853:@@
dense_18_7245855:@0
conv3d_105_7245867: 
conv3d_105_7245869:0
conv3d_106_7245880: 
conv3d_106_7245882:0
conv3d_107_7245893: 
conv3d_107_7245895:0
conv3d_108_7245898: 
conv3d_108_7245900:
identityИҐ"conv3d_102/StatefulPartitionedCallҐ"conv3d_103/StatefulPartitionedCallҐ"conv3d_104/StatefulPartitionedCallҐ"conv3d_105/StatefulPartitionedCallҐ"conv3d_106/StatefulPartitionedCallҐ"conv3d_107/StatefulPartitionedCallҐ"conv3d_108/StatefulPartitionedCallҐ dense_18/StatefulPartitionedCallµ
0tf.__operators__.getitem_372/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_372/strided_slice/stackє
2tf.__operators__.getitem_372/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_372/strided_slice/stack_1є
2tf.__operators__.getitem_372/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_372/strided_slice/stack_2С
*tf.__operators__.getitem_372/strided_sliceStridedSliceinput9tf.__operators__.getitem_372/strided_slice/stack:output:0;tf.__operators__.getitem_372/strided_slice/stack_1:output:0;tf.__operators__.getitem_372/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_372/strided_sliceЇ
#range_conversion_18/PartitionedCallPartitionedCall3tf.__operators__.getitem_372/strided_slice:output:0*
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
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_72451642%
#range_conversion_18/PartitionedCallµ
0tf.__operators__.getitem_373/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_373/strided_slice/stackє
2tf.__operators__.getitem_373/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_373/strided_slice/stack_1є
2tf.__operators__.getitem_373/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_373/strided_slice/stack_2С
*tf.__operators__.getitem_373/strided_sliceStridedSliceinput9tf.__operators__.getitem_373/strided_slice/stack:output:0;tf.__operators__.getitem_373/strided_slice/stack_1:output:0;tf.__operators__.getitem_373/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_373/strided_slicex
tf.concat_490/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_490/concat/axisЖ
tf.concat_490/concatConcatV2,range_conversion_18/PartitionedCall:output:03tf.__operators__.getitem_373/strided_slice:output:0"tf.concat_490/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_490/concatѕ
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCalltf.concat_490/concat:output:0conv3d_102_7245834conv3d_102_7245836*
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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_72451832$
"conv3d_102/StatefulPartitionedCallµ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_72451972&
$average_pooling3d_42/PartitionedCallя
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_103_7245840conv3d_103_7245842*
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
G__inference_conv3d_103_layer_call_and_return_conditional_losses_72452102$
"conv3d_103/StatefulPartitionedCallµ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_72452242&
$average_pooling3d_43/PartitionedCallя
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_104_7245846conv3d_104_7245848*
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
G__inference_conv3d_104_layer_call_and_return_conditional_losses_72452372$
"conv3d_104/StatefulPartitionedCallµ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_72452512&
$average_pooling3d_44/PartitionedCallН
reshape_36/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
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
G__inference_reshape_36_layer_call_and_return_conditional_losses_72452652
reshape_36/PartitionedCallњ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#reshape_36/PartitionedCall:output:0dense_18_7245853dense_18_7245855*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_72452782"
 dense_18/StatefulPartitionedCallХ
reshape_37/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_72452992
reshape_37/PartitionedCall•
tf.reshape_608/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_608/Reshape/shape—
tf.reshape_608/ReshapeReshape#reshape_37/PartitionedCall:output:0%tf.reshape_608/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_608/Reshape°
tf.tile_304/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_304/Tile/multiplesЉ
tf.tile_304/TileTiletf.reshape_608/Reshape:output:0#tf.tile_304/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_304/TileЩ
tf.reshape_609/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_609/Reshape/shapeї
tf.reshape_609/ReshapeReshapetf.tile_304/Tile:output:0%tf.reshape_609/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_609/Reshapex
tf.concat_491/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_491/concat/axisс
tf.concat_491/concatConcatV2tf.reshape_609/Reshape:output:0+conv3d_104/StatefulPartitionedCall:output:0"tf.concat_491/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_491/concatѕ
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCalltf.concat_491/concat:output:0conv3d_105_7245867conv3d_105_7245869*
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
G__inference_conv3d_105_layer_call_and_return_conditional_losses_72453202$
"conv3d_105/StatefulPartitionedCall•
tf.reshape_610/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_610/Reshape/shapeў
tf.reshape_610/ReshapeReshape+conv3d_105/StatefulPartitionedCall:output:0%tf.reshape_610/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_610/Reshape°
tf.tile_305/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_305/Tile/multiplesЉ
tf.tile_305/TileTiletf.reshape_610/Reshape:output:0#tf.tile_305/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_305/TileЩ
tf.reshape_611/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_611/Reshape/shapeї
tf.reshape_611/ReshapeReshapetf.tile_305/Tile:output:0%tf.reshape_611/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_611/Reshapex
tf.concat_492/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_492/concat/axisс
tf.concat_492/concatConcatV2tf.reshape_611/Reshape:output:0+conv3d_103/StatefulPartitionedCall:output:0"tf.concat_492/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_492/concatѕ
"conv3d_106/StatefulPartitionedCallStatefulPartitionedCalltf.concat_492/concat:output:0conv3d_106_7245880conv3d_106_7245882*
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
G__inference_conv3d_106_layer_call_and_return_conditional_losses_72453452$
"conv3d_106/StatefulPartitionedCall•
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_612/Reshape/shapeў
tf.reshape_612/ReshapeReshape+conv3d_106/StatefulPartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_612/Reshape°
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_306/Tile/multiplesЉ
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_306/TileЩ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_613/Reshape/shapeї
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_613/Reshapex
tf.concat_493/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_493/concat/axisс
tf.concat_493/concatConcatV2tf.reshape_613/Reshape:output:0+conv3d_102/StatefulPartitionedCall:output:0"tf.concat_493/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_493/concatѕ
"conv3d_107/StatefulPartitionedCallStatefulPartitionedCalltf.concat_493/concat:output:0conv3d_107_7245893conv3d_107_7245895*
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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_72453702$
"conv3d_107/StatefulPartitionedCallЁ
"conv3d_108/StatefulPartitionedCallStatefulPartitionedCall+conv3d_107/StatefulPartitionedCall:output:0conv3d_108_7245898conv3d_108_7245900*
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
G__inference_conv3d_108_layer_call_and_return_conditional_losses_72453862$
"conv3d_108/StatefulPartitionedCallТ
IdentityIdentity+conv3d_108/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall#^conv3d_106/StatefulPartitionedCall#^conv3d_107/StatefulPartitionedCall#^conv3d_108/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2H
"conv3d_106/StatefulPartitionedCall"conv3d_106/StatefulPartitionedCall2H
"conv3d_107/StatefulPartitionedCall"conv3d_107/StatefulPartitionedCall2H
"conv3d_108/StatefulPartitionedCall"conv3d_108/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
Ѓ
д
%__inference_signature_wrapper_7245943	
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
"__inference__wrapped_model_72450512
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
Ы
U
5__inference_range_conversion_18_layer_call_fn_7246292

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
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_72451642
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
Ъ
c
G__inference_reshape_37_layer_call_and_return_conditional_losses_7245299

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
К	
m
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7246352

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
У
ц
E__inference_dense_18_layer_call_and_return_conditional_losses_7246485

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
G__inference_conv3d_106_layer_call_and_return_conditional_losses_7246545

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
Ф-
щ
 __inference__traced_save_7246655
file_prefix0
,savev2_conv3d_102_kernel_read_readvariableop.
*savev2_conv3d_102_bias_read_readvariableop0
,savev2_conv3d_103_kernel_read_readvariableop.
*savev2_conv3d_103_bias_read_readvariableop0
,savev2_conv3d_104_kernel_read_readvariableop.
*savev2_conv3d_104_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop0
,savev2_conv3d_105_kernel_read_readvariableop.
*savev2_conv3d_105_bias_read_readvariableop0
,savev2_conv3d_106_kernel_read_readvariableop.
*savev2_conv3d_106_bias_read_readvariableop0
,savev2_conv3d_107_kernel_read_readvariableop.
*savev2_conv3d_107_bias_read_readvariableop0
,savev2_conv3d_108_kernel_read_readvariableop.
*savev2_conv3d_108_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_102_kernel_read_readvariableop*savev2_conv3d_102_bias_read_readvariableop,savev2_conv3d_103_kernel_read_readvariableop*savev2_conv3d_103_bias_read_readvariableop,savev2_conv3d_104_kernel_read_readvariableop*savev2_conv3d_104_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop,savev2_conv3d_105_kernel_read_readvariableop*savev2_conv3d_105_bias_read_readvariableop,savev2_conv3d_106_kernel_read_readvariableop*savev2_conv3d_106_bias_read_readvariableop,savev2_conv3d_107_kernel_read_readvariableop*savev2_conv3d_107_bias_read_readvariableop,savev2_conv3d_108_kernel_read_readvariableop*savev2_conv3d_108_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
њ
•
,__inference_conv3d_106_layer_call_fn_7246534

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
G__inference_conv3d_106_layer_call_and_return_conditional_losses_72453452
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
Ќ
Д
G__inference_conv3d_103_layer_call_and_return_conditional_losses_7245210

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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_7245370

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
њ
•
,__inference_conv3d_107_layer_call_fn_7246554

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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_72453702
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
г

m
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7246343

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
Ъ
c
G__inference_reshape_36_layer_call_and_return_conditional_losses_7245265

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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7245224

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
Ќ
Д
G__inference_conv3d_106_layer_call_and_return_conditional_losses_7245345

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
е
H
,__inference_reshape_36_layer_call_fn_7246453

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
G__inference_reshape_36_layer_call_and_return_conditional_losses_72452652
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
г

m
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7246391

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
ў
к
*__inference_model_18_layer_call_fn_7245980

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
E__inference_model_18_layer_call_and_return_conditional_losses_72453932
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
њ
•
,__inference_conv3d_105_layer_call_fn_7246514

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
G__inference_conv3d_105_layer_call_and_return_conditional_losses_72453202
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
÷
й
*__inference_model_18_layer_call_fn_7245428	
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
E__inference_model_18_layer_call_and_return_conditional_losses_72453932
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
Ґ
R
6__inference_average_pooling3d_44_layer_call_fn_7246425

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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_72451242
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
Љx
Ъ
E__inference_model_18_layer_call_and_return_conditional_losses_7245393

inputs0
conv3d_102_7245184: 
conv3d_102_7245186:0
conv3d_103_7245211: 
conv3d_103_7245213:0
conv3d_104_7245238: 
conv3d_104_7245240:"
dense_18_7245279:@@
dense_18_7245281:@0
conv3d_105_7245321: 
conv3d_105_7245323:0
conv3d_106_7245346: 
conv3d_106_7245348:0
conv3d_107_7245371: 
conv3d_107_7245373:0
conv3d_108_7245387: 
conv3d_108_7245389:
identityИҐ"conv3d_102/StatefulPartitionedCallҐ"conv3d_103/StatefulPartitionedCallҐ"conv3d_104/StatefulPartitionedCallҐ"conv3d_105/StatefulPartitionedCallҐ"conv3d_106/StatefulPartitionedCallҐ"conv3d_107/StatefulPartitionedCallҐ"conv3d_108/StatefulPartitionedCallҐ dense_18/StatefulPartitionedCallµ
0tf.__operators__.getitem_372/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_372/strided_slice/stackє
2tf.__operators__.getitem_372/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_372/strided_slice/stack_1є
2tf.__operators__.getitem_372/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_372/strided_slice/stack_2Т
*tf.__operators__.getitem_372/strided_sliceStridedSliceinputs9tf.__operators__.getitem_372/strided_slice/stack:output:0;tf.__operators__.getitem_372/strided_slice/stack_1:output:0;tf.__operators__.getitem_372/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_372/strided_sliceЇ
#range_conversion_18/PartitionedCallPartitionedCall3tf.__operators__.getitem_372/strided_slice:output:0*
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
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_72451642%
#range_conversion_18/PartitionedCallµ
0tf.__operators__.getitem_373/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_373/strided_slice/stackє
2tf.__operators__.getitem_373/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_373/strided_slice/stack_1є
2tf.__operators__.getitem_373/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_373/strided_slice/stack_2Т
*tf.__operators__.getitem_373/strided_sliceStridedSliceinputs9tf.__operators__.getitem_373/strided_slice/stack:output:0;tf.__operators__.getitem_373/strided_slice/stack_1:output:0;tf.__operators__.getitem_373/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask2,
*tf.__operators__.getitem_373/strided_slicex
tf.concat_490/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_490/concat/axisЖ
tf.concat_490/concatConcatV2,range_conversion_18/PartitionedCall:output:03tf.__operators__.getitem_373/strided_slice:output:0"tf.concat_490/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_490/concatѕ
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCalltf.concat_490/concat:output:0conv3d_102_7245184conv3d_102_7245186*
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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_72451832$
"conv3d_102/StatefulPartitionedCallµ
$average_pooling3d_42/PartitionedCallPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_72451972&
$average_pooling3d_42/PartitionedCallя
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_42/PartitionedCall:output:0conv3d_103_7245211conv3d_103_7245213*
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
G__inference_conv3d_103_layer_call_and_return_conditional_losses_72452102$
"conv3d_103/StatefulPartitionedCallµ
$average_pooling3d_43/PartitionedCallPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_72452242&
$average_pooling3d_43/PartitionedCallя
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_43/PartitionedCall:output:0conv3d_104_7245238conv3d_104_7245240*
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
G__inference_conv3d_104_layer_call_and_return_conditional_losses_72452372$
"conv3d_104/StatefulPartitionedCallµ
$average_pooling3d_44/PartitionedCallPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0*
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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_72452512&
$average_pooling3d_44/PartitionedCallН
reshape_36/PartitionedCallPartitionedCall-average_pooling3d_44/PartitionedCall:output:0*
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
G__inference_reshape_36_layer_call_and_return_conditional_losses_72452652
reshape_36/PartitionedCallњ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#reshape_36/PartitionedCall:output:0dense_18_7245279dense_18_7245281*
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
E__inference_dense_18_layer_call_and_return_conditional_losses_72452782"
 dense_18/StatefulPartitionedCallХ
reshape_37/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_72452992
reshape_37/PartitionedCall•
tf.reshape_608/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_608/Reshape/shape—
tf.reshape_608/ReshapeReshape#reshape_37/PartitionedCall:output:0%tf.reshape_608/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_608/Reshape°
tf.tile_304/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_304/Tile/multiplesЉ
tf.tile_304/TileTiletf.reshape_608/Reshape:output:0#tf.tile_304/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_304/TileЩ
tf.reshape_609/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_609/Reshape/shapeї
tf.reshape_609/ReshapeReshapetf.tile_304/Tile:output:0%tf.reshape_609/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_609/Reshapex
tf.concat_491/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_491/concat/axisс
tf.concat_491/concatConcatV2tf.reshape_609/Reshape:output:0+conv3d_104/StatefulPartitionedCall:output:0"tf.concat_491/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_491/concatѕ
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCalltf.concat_491/concat:output:0conv3d_105_7245321conv3d_105_7245323*
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
G__inference_conv3d_105_layer_call_and_return_conditional_losses_72453202$
"conv3d_105/StatefulPartitionedCall•
tf.reshape_610/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_610/Reshape/shapeў
tf.reshape_610/ReshapeReshape+conv3d_105/StatefulPartitionedCall:output:0%tf.reshape_610/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_610/Reshape°
tf.tile_305/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_305/Tile/multiplesЉ
tf.tile_305/TileTiletf.reshape_610/Reshape:output:0#tf.tile_305/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_305/TileЩ
tf.reshape_611/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2
tf.reshape_611/Reshape/shapeї
tf.reshape_611/ReshapeReshapetf.tile_305/Tile:output:0%tf.reshape_611/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.reshape_611/Reshapex
tf.concat_492/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_492/concat/axisс
tf.concat_492/concatConcatV2tf.reshape_611/Reshape:output:0+conv3d_103/StatefulPartitionedCall:output:0"tf.concat_492/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
tf.concat_492/concatѕ
"conv3d_106/StatefulPartitionedCallStatefulPartitionedCalltf.concat_492/concat:output:0conv3d_106_7245346conv3d_106_7245348*
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
G__inference_conv3d_106_layer_call_and_return_conditional_losses_72453452$
"conv3d_106/StatefulPartitionedCall•
tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2
tf.reshape_612/Reshape/shapeў
tf.reshape_612/ReshapeReshape+conv3d_106/StatefulPartitionedCall:output:0%tf.reshape_612/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.reshape_612/Reshape°
tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_306/Tile/multiplesЉ
tf.tile_306/TileTiletf.reshape_612/Reshape:output:0#tf.tile_306/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
tf.tile_306/TileЩ
tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2
tf.reshape_613/Reshape/shapeї
tf.reshape_613/ReshapeReshapetf.tile_306/Tile:output:0%tf.reshape_613/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.reshape_613/Reshapex
tf.concat_493/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_493/concat/axisс
tf.concat_493/concatConcatV2tf.reshape_613/Reshape:output:0+conv3d_102/StatefulPartitionedCall:output:0"tf.concat_493/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
tf.concat_493/concatѕ
"conv3d_107/StatefulPartitionedCallStatefulPartitionedCalltf.concat_493/concat:output:0conv3d_107_7245371conv3d_107_7245373*
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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_72453702$
"conv3d_107/StatefulPartitionedCallЁ
"conv3d_108/StatefulPartitionedCallStatefulPartitionedCall+conv3d_107/StatefulPartitionedCall:output:0conv3d_108_7245387conv3d_108_7245389*
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
G__inference_conv3d_108_layer_call_and_return_conditional_losses_72453862$
"conv3d_108/StatefulPartitionedCallТ
IdentityIdentity+conv3d_108/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

Identityф
NoOpNoOp#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall#^conv3d_106/StatefulPartitionedCall#^conv3d_107/StatefulPartitionedCall#^conv3d_108/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2H
"conv3d_106/StatefulPartitionedCall"conv3d_106/StatefulPartitionedCall2H
"conv3d_107/StatefulPartitionedCall"conv3d_107/StatefulPartitionedCall2H
"conv3d_108/StatefulPartitionedCall"conv3d_108/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall:[ W
3
_output_shapes!
:€€€€€€€€€  
 
_user_specified_nameinputs
Ґ
R
6__inference_average_pooling3d_42_layer_call_fn_7246329

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
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_72450642
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
Ґ
R
6__inference_average_pooling3d_43_layer_call_fn_7246377

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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_72450942
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
е
H
,__inference_reshape_37_layer_call_fn_7246490

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
G__inference_reshape_37_layer_call_and_return_conditional_losses_72452992
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
њ
•
,__inference_conv3d_102_layer_call_fn_7246313

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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_72451832
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
Ќ
Д
G__inference_conv3d_102_layer_call_and_return_conditional_losses_7245183

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
∆ж
Ь
"__inference__wrapped_model_7245051	
inputP
2model_18_conv3d_102_conv3d_readvariableop_resource:A
3model_18_conv3d_102_biasadd_readvariableop_resource:P
2model_18_conv3d_103_conv3d_readvariableop_resource:A
3model_18_conv3d_103_biasadd_readvariableop_resource:P
2model_18_conv3d_104_conv3d_readvariableop_resource:A
3model_18_conv3d_104_biasadd_readvariableop_resource:B
0model_18_dense_18_matmul_readvariableop_resource:@@?
1model_18_dense_18_biasadd_readvariableop_resource:@P
2model_18_conv3d_105_conv3d_readvariableop_resource:A
3model_18_conv3d_105_biasadd_readvariableop_resource:P
2model_18_conv3d_106_conv3d_readvariableop_resource:A
3model_18_conv3d_106_biasadd_readvariableop_resource:P
2model_18_conv3d_107_conv3d_readvariableop_resource:A
3model_18_conv3d_107_biasadd_readvariableop_resource:P
2model_18_conv3d_108_conv3d_readvariableop_resource:A
3model_18_conv3d_108_biasadd_readvariableop_resource:
identityИҐ*model_18/conv3d_102/BiasAdd/ReadVariableOpҐ)model_18/conv3d_102/Conv3D/ReadVariableOpҐ*model_18/conv3d_103/BiasAdd/ReadVariableOpҐ)model_18/conv3d_103/Conv3D/ReadVariableOpҐ*model_18/conv3d_104/BiasAdd/ReadVariableOpҐ)model_18/conv3d_104/Conv3D/ReadVariableOpҐ*model_18/conv3d_105/BiasAdd/ReadVariableOpҐ)model_18/conv3d_105/Conv3D/ReadVariableOpҐ*model_18/conv3d_106/BiasAdd/ReadVariableOpҐ)model_18/conv3d_106/Conv3D/ReadVariableOpҐ*model_18/conv3d_107/BiasAdd/ReadVariableOpҐ)model_18/conv3d_107/Conv3D/ReadVariableOpҐ*model_18/conv3d_108/BiasAdd/ReadVariableOpҐ)model_18/conv3d_108/Conv3D/ReadVariableOpҐ(model_18/dense_18/BiasAdd/ReadVariableOpҐ'model_18/dense_18/MatMul/ReadVariableOp«
9model_18/tf.__operators__.getitem_372/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_18/tf.__operators__.getitem_372/strided_slice/stackЋ
;model_18/tf.__operators__.getitem_372/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_18/tf.__operators__.getitem_372/strided_slice/stack_1Ћ
;model_18/tf.__operators__.getitem_372/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_18/tf.__operators__.getitem_372/strided_slice/stack_2Њ
3model_18/tf.__operators__.getitem_372/strided_sliceStridedSliceinputBmodel_18/tf.__operators__.getitem_372/strided_slice/stack:output:0Dmodel_18/tf.__operators__.getitem_372/strided_slice/stack_1:output:0Dmodel_18/tf.__operators__.getitem_372/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask25
3model_18/tf.__operators__.getitem_372/strided_sliceН
"model_18/range_conversion_18/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_18/range_conversion_18/sub/yф
 model_18/range_conversion_18/subSub<model_18/tf.__operators__.getitem_372/strided_slice:output:0+model_18/range_conversion_18/sub/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2"
 model_18/range_conversion_18/subХ
&model_18/range_conversion_18/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_18/range_conversion_18/truediv/yм
$model_18/range_conversion_18/truedivRealDiv$model_18/range_conversion_18/sub:z:0/model_18/range_conversion_18/truediv/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2&
$model_18/range_conversion_18/truedivН
"model_18/range_conversion_18/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_18/range_conversion_18/mul/yа
 model_18/range_conversion_18/mulMul(model_18/range_conversion_18/truediv:z:0+model_18/range_conversion_18/mul/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2"
 model_18/range_conversion_18/mulН
"model_18/range_conversion_18/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањ2$
"model_18/range_conversion_18/add/yё
 model_18/range_conversion_18/addAddV2$model_18/range_conversion_18/mul:z:0+model_18/range_conversion_18/add/y:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2"
 model_18/range_conversion_18/add«
9model_18/tf.__operators__.getitem_373/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_18/tf.__operators__.getitem_373/strided_slice/stackЋ
;model_18/tf.__operators__.getitem_373/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_18/tf.__operators__.getitem_373/strided_slice/stack_1Ћ
;model_18/tf.__operators__.getitem_373/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_18/tf.__operators__.getitem_373/strided_slice/stack_2Њ
3model_18/tf.__operators__.getitem_373/strided_sliceStridedSliceinputBmodel_18/tf.__operators__.getitem_373/strided_slice/stack:output:0Dmodel_18/tf.__operators__.getitem_373/strided_slice/stack_1:output:0Dmodel_18/tf.__operators__.getitem_373/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:€€€€€€€€€  *

begin_mask*
end_mask25
3model_18/tf.__operators__.getitem_373/strided_sliceК
"model_18/tf.concat_490/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_18/tf.concat_490/concat/axisҐ
model_18/tf.concat_490/concatConcatV2$model_18/range_conversion_18/add:z:0<model_18/tf.__operators__.getitem_373/strided_slice:output:0+model_18/tf.concat_490/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_18/tf.concat_490/concat’
)model_18/conv3d_102/Conv3D/ReadVariableOpReadVariableOp2model_18_conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_18/conv3d_102/Conv3D/ReadVariableOpЬ
model_18/conv3d_102/Conv3DConv3D&model_18/tf.concat_490/concat:output:01model_18/conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_18/conv3d_102/Conv3D»
*model_18/conv3d_102/BiasAdd/ReadVariableOpReadVariableOp3model_18_conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_18/conv3d_102/BiasAdd/ReadVariableOpу
model_18/conv3d_102/BiasAddBiasAdd#model_18/conv3d_102/Conv3D:output:02model_18/conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
model_18/conv3d_102/BiasAddђ
model_18/conv3d_102/SoftplusSoftplus$model_18/conv3d_102/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_18/conv3d_102/Softplusє
,model_18/average_pooling3d_42/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_18/average_pooling3d_42/transpose/permА
'model_18/average_pooling3d_42/transpose	Transpose*model_18/conv3d_102/Softplus:activations:05model_18/average_pooling3d_42/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2)
'model_18/average_pooling3d_42/transposeИ
'model_18/average_pooling3d_42/AvgPool3D	AvgPool3D+model_18/average_pooling3d_42/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_18/average_pooling3d_42/AvgPool3Dљ
.model_18/average_pooling3d_42/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_18/average_pooling3d_42/transpose_1/permМ
)model_18/average_pooling3d_42/transpose_1	Transpose0model_18/average_pooling3d_42/AvgPool3D:output:07model_18/average_pooling3d_42/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_18/average_pooling3d_42/transpose_1’
)model_18/conv3d_103/Conv3D/ReadVariableOpReadVariableOp2model_18_conv3d_103_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_18/conv3d_103/Conv3D/ReadVariableOp£
model_18/conv3d_103/Conv3DConv3D-model_18/average_pooling3d_42/transpose_1:y:01model_18/conv3d_103/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_18/conv3d_103/Conv3D»
*model_18/conv3d_103/BiasAdd/ReadVariableOpReadVariableOp3model_18_conv3d_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_18/conv3d_103/BiasAdd/ReadVariableOpу
model_18/conv3d_103/BiasAddBiasAdd#model_18/conv3d_103/Conv3D:output:02model_18/conv3d_103/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_18/conv3d_103/BiasAddђ
model_18/conv3d_103/SoftplusSoftplus$model_18/conv3d_103/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_18/conv3d_103/Softplusє
,model_18/average_pooling3d_43/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_18/average_pooling3d_43/transpose/permА
'model_18/average_pooling3d_43/transpose	Transpose*model_18/conv3d_103/Softplus:activations:05model_18/average_pooling3d_43/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'model_18/average_pooling3d_43/transposeИ
'model_18/average_pooling3d_43/AvgPool3D	AvgPool3D+model_18/average_pooling3d_43/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_18/average_pooling3d_43/AvgPool3Dљ
.model_18/average_pooling3d_43/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_18/average_pooling3d_43/transpose_1/permМ
)model_18/average_pooling3d_43/transpose_1	Transpose0model_18/average_pooling3d_43/AvgPool3D:output:07model_18/average_pooling3d_43/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_18/average_pooling3d_43/transpose_1’
)model_18/conv3d_104/Conv3D/ReadVariableOpReadVariableOp2model_18_conv3d_104_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_18/conv3d_104/Conv3D/ReadVariableOp£
model_18/conv3d_104/Conv3DConv3D-model_18/average_pooling3d_43/transpose_1:y:01model_18/conv3d_104/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_18/conv3d_104/Conv3D»
*model_18/conv3d_104/BiasAdd/ReadVariableOpReadVariableOp3model_18_conv3d_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_18/conv3d_104/BiasAdd/ReadVariableOpу
model_18/conv3d_104/BiasAddBiasAdd#model_18/conv3d_104/Conv3D:output:02model_18/conv3d_104/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_18/conv3d_104/BiasAddђ
model_18/conv3d_104/SoftplusSoftplus$model_18/conv3d_104/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_18/conv3d_104/Softplusє
,model_18/average_pooling3d_44/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_18/average_pooling3d_44/transpose/permА
'model_18/average_pooling3d_44/transpose	Transpose*model_18/conv3d_104/Softplus:activations:05model_18/average_pooling3d_44/transpose/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'model_18/average_pooling3d_44/transposeИ
'model_18/average_pooling3d_44/AvgPool3D	AvgPool3D+model_18/average_pooling3d_44/transpose:y:0*
T0*3
_output_shapes!
:€€€€€€€€€*
ksize	
*
paddingVALID*
strides	
2)
'model_18/average_pooling3d_44/AvgPool3Dљ
.model_18/average_pooling3d_44/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_18/average_pooling3d_44/transpose_1/permМ
)model_18/average_pooling3d_44/transpose_1	Transpose0model_18/average_pooling3d_44/AvgPool3D:output:07model_18/average_pooling3d_44/transpose_1/perm:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2+
)model_18/average_pooling3d_44/transpose_1У
model_18/reshape_36/ShapeShape-model_18/average_pooling3d_44/transpose_1:y:0*
T0*
_output_shapes
:2
model_18/reshape_36/ShapeЬ
'model_18/reshape_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_18/reshape_36/strided_slice/stack†
)model_18/reshape_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_18/reshape_36/strided_slice/stack_1†
)model_18/reshape_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_18/reshape_36/strided_slice/stack_2Џ
!model_18/reshape_36/strided_sliceStridedSlice"model_18/reshape_36/Shape:output:00model_18/reshape_36/strided_slice/stack:output:02model_18/reshape_36/strided_slice/stack_1:output:02model_18/reshape_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_18/reshape_36/strided_sliceМ
#model_18/reshape_36/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_18/reshape_36/Reshape/shape/1÷
!model_18/reshape_36/Reshape/shapePack*model_18/reshape_36/strided_slice:output:0,model_18/reshape_36/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_18/reshape_36/Reshape/shape“
model_18/reshape_36/ReshapeReshape-model_18/average_pooling3d_44/transpose_1:y:0*model_18/reshape_36/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_18/reshape_36/Reshape√
'model_18/dense_18/MatMul/ReadVariableOpReadVariableOp0model_18_dense_18_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_18/dense_18/MatMul/ReadVariableOp«
model_18/dense_18/MatMulMatMul$model_18/reshape_36/Reshape:output:0/model_18/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_18/dense_18/MatMul¬
(model_18/dense_18/BiasAdd/ReadVariableOpReadVariableOp1model_18_dense_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_18/dense_18/BiasAdd/ReadVariableOp…
model_18/dense_18/BiasAddBiasAdd"model_18/dense_18/MatMul:product:00model_18/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_18/dense_18/BiasAddЪ
model_18/dense_18/SoftplusSoftplus"model_18/dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_18/dense_18/SoftplusО
model_18/reshape_37/ShapeShape(model_18/dense_18/Softplus:activations:0*
T0*
_output_shapes
:2
model_18/reshape_37/ShapeЬ
'model_18/reshape_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_18/reshape_37/strided_slice/stack†
)model_18/reshape_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_18/reshape_37/strided_slice/stack_1†
)model_18/reshape_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_18/reshape_37/strided_slice/stack_2Џ
!model_18/reshape_37/strided_sliceStridedSlice"model_18/reshape_37/Shape:output:00model_18/reshape_37/strided_slice/stack:output:02model_18/reshape_37/strided_slice/stack_1:output:02model_18/reshape_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_18/reshape_37/strided_sliceМ
#model_18/reshape_37/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_18/reshape_37/Reshape/shape/1М
#model_18/reshape_37/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_18/reshape_37/Reshape/shape/2М
#model_18/reshape_37/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_18/reshape_37/Reshape/shape/3М
#model_18/reshape_37/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_18/reshape_37/Reshape/shape/4а
!model_18/reshape_37/Reshape/shapePack*model_18/reshape_37/strided_slice:output:0,model_18/reshape_37/Reshape/shape/1:output:0,model_18/reshape_37/Reshape/shape/2:output:0,model_18/reshape_37/Reshape/shape/3:output:0,model_18/reshape_37/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2#
!model_18/reshape_37/Reshape/shapeў
model_18/reshape_37/ReshapeReshape(model_18/dense_18/Softplus:activations:0*model_18/reshape_37/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_18/reshape_37/ReshapeЈ
%model_18/tf.reshape_608/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_18/tf.reshape_608/Reshape/shapeн
model_18/tf.reshape_608/ReshapeReshape$model_18/reshape_37/Reshape:output:0.model_18/tf.reshape_608/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_18/tf.reshape_608/Reshape≥
#model_18/tf.tile_304/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_18/tf.tile_304/Tile/multiplesа
model_18/tf.tile_304/TileTile(model_18/tf.reshape_608/Reshape:output:0,model_18/tf.tile_304/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_18/tf.tile_304/TileЂ
%model_18/tf.reshape_609/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2'
%model_18/tf.reshape_609/Reshape/shapeя
model_18/tf.reshape_609/ReshapeReshape"model_18/tf.tile_304/Tile:output:0.model_18/tf.reshape_609/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2!
model_18/tf.reshape_609/ReshapeК
"model_18/tf.concat_491/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_18/tf.concat_491/concat/axisФ
model_18/tf.concat_491/concatConcatV2(model_18/tf.reshape_609/Reshape:output:0*model_18/conv3d_104/Softplus:activations:0+model_18/tf.concat_491/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
model_18/tf.concat_491/concat’
)model_18/conv3d_105/Conv3D/ReadVariableOpReadVariableOp2model_18_conv3d_105_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_18/conv3d_105/Conv3D/ReadVariableOpЬ
model_18/conv3d_105/Conv3DConv3D&model_18/tf.concat_491/concat:output:01model_18/conv3d_105/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_18/conv3d_105/Conv3D»
*model_18/conv3d_105/BiasAdd/ReadVariableOpReadVariableOp3model_18_conv3d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_18/conv3d_105/BiasAdd/ReadVariableOpу
model_18/conv3d_105/BiasAddBiasAdd#model_18/conv3d_105/Conv3D:output:02model_18/conv3d_105/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_18/conv3d_105/BiasAddђ
model_18/conv3d_105/SoftplusSoftplus$model_18/conv3d_105/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_18/conv3d_105/SoftplusЈ
%model_18/tf.reshape_610/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_18/tf.reshape_610/Reshape/shapeу
model_18/tf.reshape_610/ReshapeReshape*model_18/conv3d_105/Softplus:activations:0.model_18/tf.reshape_610/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_18/tf.reshape_610/Reshape≥
#model_18/tf.tile_305/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_18/tf.tile_305/Tile/multiplesа
model_18/tf.tile_305/TileTile(model_18/tf.reshape_610/Reshape:output:0,model_18/tf.tile_305/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_18/tf.tile_305/TileЂ
%model_18/tf.reshape_611/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€            2'
%model_18/tf.reshape_611/Reshape/shapeя
model_18/tf.reshape_611/ReshapeReshape"model_18/tf.tile_305/Tile:output:0.model_18/tf.reshape_611/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2!
model_18/tf.reshape_611/ReshapeК
"model_18/tf.concat_492/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_18/tf.concat_492/concat/axisФ
model_18/tf.concat_492/concatConcatV2(model_18/tf.reshape_611/Reshape:output:0*model_18/conv3d_103/Softplus:activations:0+model_18/tf.concat_492/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€2
model_18/tf.concat_492/concat’
)model_18/conv3d_106/Conv3D/ReadVariableOpReadVariableOp2model_18_conv3d_106_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_18/conv3d_106/Conv3D/ReadVariableOpЬ
model_18/conv3d_106/Conv3DConv3D&model_18/tf.concat_492/concat:output:01model_18/conv3d_106/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCDHW*
paddingSAME*
strides	
2
model_18/conv3d_106/Conv3D»
*model_18/conv3d_106/BiasAdd/ReadVariableOpReadVariableOp3model_18_conv3d_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_18/conv3d_106/BiasAdd/ReadVariableOpу
model_18/conv3d_106/BiasAddBiasAdd#model_18/conv3d_106/Conv3D:output:02model_18/conv3d_106/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNCHW2
model_18/conv3d_106/BiasAddђ
model_18/conv3d_106/SoftplusSoftplus$model_18/conv3d_106/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
model_18/conv3d_106/SoftplusЈ
%model_18/tf.reshape_612/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" €€€€                     2'
%model_18/tf.reshape_612/Reshape/shapeу
model_18/tf.reshape_612/ReshapeReshape*model_18/conv3d_106/Softplus:activations:0.model_18/tf.reshape_612/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2!
model_18/tf.reshape_612/Reshape≥
#model_18/tf.tile_306/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_18/tf.tile_306/Tile/multiplesа
model_18/tf.tile_306/TileTile(model_18/tf.reshape_612/Reshape:output:0,model_18/tf.tile_306/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)€€€€€€€€€2
model_18/tf.tile_306/TileЂ
%model_18/tf.reshape_613/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"€€€€              2'
%model_18/tf.reshape_613/Reshape/shapeя
model_18/tf.reshape_613/ReshapeReshape"model_18/tf.tile_306/Tile:output:0.model_18/tf.reshape_613/Reshape/shape:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2!
model_18/tf.reshape_613/ReshapeК
"model_18/tf.concat_493/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_18/tf.concat_493/concat/axisФ
model_18/tf.concat_493/concatConcatV2(model_18/tf.reshape_613/Reshape:output:0*model_18/conv3d_102/Softplus:activations:0+model_18/tf.concat_493/concat/axis:output:0*
N*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_18/tf.concat_493/concat’
)model_18/conv3d_107/Conv3D/ReadVariableOpReadVariableOp2model_18_conv3d_107_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_18/conv3d_107/Conv3D/ReadVariableOpЬ
model_18/conv3d_107/Conv3DConv3D&model_18/tf.concat_493/concat:output:01model_18/conv3d_107/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_18/conv3d_107/Conv3D»
*model_18/conv3d_107/BiasAdd/ReadVariableOpReadVariableOp3model_18_conv3d_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_18/conv3d_107/BiasAdd/ReadVariableOpу
model_18/conv3d_107/BiasAddBiasAdd#model_18/conv3d_107/Conv3D:output:02model_18/conv3d_107/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
model_18/conv3d_107/BiasAddђ
model_18/conv3d_107/SoftplusSoftplus$model_18/conv3d_107/BiasAdd:output:0*
T0*3
_output_shapes!
:€€€€€€€€€  2
model_18/conv3d_107/Softplus’
)model_18/conv3d_108/Conv3D/ReadVariableOpReadVariableOp2model_18_conv3d_108_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_18/conv3d_108/Conv3D/ReadVariableOp†
model_18/conv3d_108/Conv3DConv3D*model_18/conv3d_107/Softplus:activations:01model_18/conv3d_108/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_18/conv3d_108/Conv3D»
*model_18/conv3d_108/BiasAdd/ReadVariableOpReadVariableOp3model_18_conv3d_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_18/conv3d_108/BiasAdd/ReadVariableOpу
model_18/conv3d_108/BiasAddBiasAdd#model_18/conv3d_108/Conv3D:output:02model_18/conv3d_108/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:€€€€€€€€€  *
data_formatNCHW2
model_18/conv3d_108/BiasAddЛ
IdentityIdentity$model_18/conv3d_108/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:€€€€€€€€€  2

IdentityТ
NoOpNoOp+^model_18/conv3d_102/BiasAdd/ReadVariableOp*^model_18/conv3d_102/Conv3D/ReadVariableOp+^model_18/conv3d_103/BiasAdd/ReadVariableOp*^model_18/conv3d_103/Conv3D/ReadVariableOp+^model_18/conv3d_104/BiasAdd/ReadVariableOp*^model_18/conv3d_104/Conv3D/ReadVariableOp+^model_18/conv3d_105/BiasAdd/ReadVariableOp*^model_18/conv3d_105/Conv3D/ReadVariableOp+^model_18/conv3d_106/BiasAdd/ReadVariableOp*^model_18/conv3d_106/Conv3D/ReadVariableOp+^model_18/conv3d_107/BiasAdd/ReadVariableOp*^model_18/conv3d_107/Conv3D/ReadVariableOp+^model_18/conv3d_108/BiasAdd/ReadVariableOp*^model_18/conv3d_108/Conv3D/ReadVariableOp)^model_18/dense_18/BiasAdd/ReadVariableOp(^model_18/dense_18/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : 2X
*model_18/conv3d_102/BiasAdd/ReadVariableOp*model_18/conv3d_102/BiasAdd/ReadVariableOp2V
)model_18/conv3d_102/Conv3D/ReadVariableOp)model_18/conv3d_102/Conv3D/ReadVariableOp2X
*model_18/conv3d_103/BiasAdd/ReadVariableOp*model_18/conv3d_103/BiasAdd/ReadVariableOp2V
)model_18/conv3d_103/Conv3D/ReadVariableOp)model_18/conv3d_103/Conv3D/ReadVariableOp2X
*model_18/conv3d_104/BiasAdd/ReadVariableOp*model_18/conv3d_104/BiasAdd/ReadVariableOp2V
)model_18/conv3d_104/Conv3D/ReadVariableOp)model_18/conv3d_104/Conv3D/ReadVariableOp2X
*model_18/conv3d_105/BiasAdd/ReadVariableOp*model_18/conv3d_105/BiasAdd/ReadVariableOp2V
)model_18/conv3d_105/Conv3D/ReadVariableOp)model_18/conv3d_105/Conv3D/ReadVariableOp2X
*model_18/conv3d_106/BiasAdd/ReadVariableOp*model_18/conv3d_106/BiasAdd/ReadVariableOp2V
)model_18/conv3d_106/Conv3D/ReadVariableOp)model_18/conv3d_106/Conv3D/ReadVariableOp2X
*model_18/conv3d_107/BiasAdd/ReadVariableOp*model_18/conv3d_107/BiasAdd/ReadVariableOp2V
)model_18/conv3d_107/Conv3D/ReadVariableOp)model_18/conv3d_107/Conv3D/ReadVariableOp2X
*model_18/conv3d_108/BiasAdd/ReadVariableOp*model_18/conv3d_108/BiasAdd/ReadVariableOp2V
)model_18/conv3d_108/Conv3D/ReadVariableOp)model_18/conv3d_108/Conv3D/ReadVariableOp2T
(model_18/dense_18/BiasAdd/ReadVariableOp(model_18/dense_18/BiasAdd/ReadVariableOp2R
'model_18/dense_18/MatMul/ReadVariableOp'model_18/dense_18/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:€€€€€€€€€  

_user_specified_nameinput
Ќ
Д
G__inference_conv3d_102_layer_call_and_return_conditional_losses_7246324

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
г

m
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7245094

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
Ъ
c
G__inference_reshape_37_layer_call_and_return_conditional_losses_7246505

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
÷	
p
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_7245164

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
Ќ
Д
G__inference_conv3d_103_layer_call_and_return_conditional_losses_7246372

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
G__inference_conv3d_104_layer_call_and_return_conditional_losses_7245237

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
њ
•
,__inference_conv3d_104_layer_call_fn_7246409

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
G__inference_conv3d_104_layer_call_and_return_conditional_losses_72452372
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
У
ц
E__inference_dense_18_layer_call_and_return_conditional_losses_7245278

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
К	
m
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7245197

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
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_7246304

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
parameters"®L
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

conv3d_108<
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
«_default_save_signature
+»&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
$	keras_api"
_tf_keras_layer
І
%	variables
&regularization_losses
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
-	variables
.regularization_losses
/trainable_variables
0	keras_api
Ћ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
1	variables
2regularization_losses
3trainable_variables
4	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

5kernel
6bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
ѕ__call__
+–&call_and_return_all_conditional_losses"
_tf_keras_layer
І
;	variables
<regularization_losses
=trainable_variables
>	keras_api
—__call__
+“&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
”__call__
+‘&call_and_return_all_conditional_losses"
_tf_keras_layer
І
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
’__call__
+÷&call_and_return_all_conditional_losses"
_tf_keras_layer
І
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
„__call__
+Ў&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

Mkernel
Nbias
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
ў__call__
+Џ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
S	variables
Tregularization_losses
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
]	variables
^regularization_losses
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
g	variables
hregularization_losses
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
q	variables
rregularization_losses
strainable_variables
t	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

ukernel
vbias
w	variables
xregularization_losses
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
{non_trainable_variables
|metrics
}layer_regularization_losses
~layer_metrics
regularization_losses

layers
 	variables
!trainable_variables
∆__call__
«_default_save_signature
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
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
Аnon_trainable_variables
%	variables
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
&regularization_losses
Дlayers
'trainable_variables
…__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_102/kernel
: 2conv3d_102/bias
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
µ
Еnon_trainable_variables
-	variables
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
.regularization_losses
Йlayers
/trainable_variables
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
Кnon_trainable_variables
1	variables
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
2regularization_losses
Оlayers
3trainable_variables
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_103/kernel
: 2conv3d_103/bias
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
µ
Пnon_trainable_variables
7	variables
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
8regularization_losses
Уlayers
9trainable_variables
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
Фnon_trainable_variables
;	variables
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
<regularization_losses
Шlayers
=trainable_variables
—__call__
+“&call_and_return_all_conditional_losses
'“"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_104/kernel
: 2conv3d_104/bias
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
µ
Щnon_trainable_variables
A	variables
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Bregularization_losses
Эlayers
Ctrainable_variables
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
Юnon_trainable_variables
E	variables
Яmetrics
 †layer_regularization_losses
°layer_metrics
Fregularization_losses
Ґlayers
Gtrainable_variables
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
£non_trainable_variables
I	variables
§metrics
 •layer_regularization_losses
¶layer_metrics
Jregularization_losses
Іlayers
Ktrainable_variables
„__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_18/kernel
:@ 2dense_18/bias
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
µ
®non_trainable_variables
O	variables
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
Pregularization_losses
ђlayers
Qtrainable_variables
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
≠non_trainable_variables
S	variables
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
Tregularization_losses
±layers
Utrainable_variables
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
1:/ 2conv3d_105/kernel
: 2conv3d_105/bias
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
µ
≤non_trainable_variables
]	variables
≥metrics
 іlayer_regularization_losses
µlayer_metrics
^regularization_losses
ґlayers
_trainable_variables
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
1:/ 2conv3d_106/kernel
: 2conv3d_106/bias
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
µ
Јnon_trainable_variables
g	variables
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
hregularization_losses
їlayers
itrainable_variables
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
1:/ 2conv3d_107/kernel
: 2conv3d_107/bias
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
µ
Љnon_trainable_variables
q	variables
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
rregularization_losses
јlayers
strainable_variables
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_108/kernel
: 2conv3d_108/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
µ
Ѕnon_trainable_variables
w	variables
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
xregularization_losses
≈layers
ytrainable_variables
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
 "
trackable_dict_wrapper
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
ц2у
*__inference_model_18_layer_call_fn_7245428
*__inference_model_18_layer_call_fn_7245980
*__inference_model_18_layer_call_fn_7246017
*__inference_model_18_layer_call_fn_7245736ј
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
"__inference__wrapped_model_7245051input"Ш
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
в2я
E__inference_model_18_layer_call_and_return_conditional_losses_7246152
E__inference_model_18_layer_call_and_return_conditional_losses_7246287
E__inference_model_18_layer_call_and_return_conditional_losses_7245820
E__inference_model_18_layer_call_and_return_conditional_losses_7245904ј
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
г2а
5__inference_range_conversion_18_layer_call_fn_7246292¶
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
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_7246304¶
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
,__inference_conv3d_102_layer_call_fn_7246313Ґ
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
G__inference_conv3d_102_layer_call_and_return_conditional_losses_7246324Ґ
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
6__inference_average_pooling3d_42_layer_call_fn_7246329
6__inference_average_pooling3d_42_layer_call_fn_7246334Ґ
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
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7246343
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7246352Ґ
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
,__inference_conv3d_103_layer_call_fn_7246361Ґ
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
G__inference_conv3d_103_layer_call_and_return_conditional_losses_7246372Ґ
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
6__inference_average_pooling3d_43_layer_call_fn_7246377
6__inference_average_pooling3d_43_layer_call_fn_7246382Ґ
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
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7246391
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7246400Ґ
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
,__inference_conv3d_104_layer_call_fn_7246409Ґ
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
G__inference_conv3d_104_layer_call_and_return_conditional_losses_7246420Ґ
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
6__inference_average_pooling3d_44_layer_call_fn_7246425
6__inference_average_pooling3d_44_layer_call_fn_7246430Ґ
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
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7246439
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7246448Ґ
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
,__inference_reshape_36_layer_call_fn_7246453Ґ
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
G__inference_reshape_36_layer_call_and_return_conditional_losses_7246465Ґ
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
*__inference_dense_18_layer_call_fn_7246474Ґ
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
E__inference_dense_18_layer_call_and_return_conditional_losses_7246485Ґ
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
,__inference_reshape_37_layer_call_fn_7246490Ґ
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_7246505Ґ
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
,__inference_conv3d_105_layer_call_fn_7246514Ґ
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
G__inference_conv3d_105_layer_call_and_return_conditional_losses_7246525Ґ
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
,__inference_conv3d_106_layer_call_fn_7246534Ґ
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
G__inference_conv3d_106_layer_call_and_return_conditional_losses_7246545Ґ
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
,__inference_conv3d_107_layer_call_fn_7246554Ґ
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
G__inference_conv3d_107_layer_call_and_return_conditional_losses_7246565Ґ
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
,__inference_conv3d_108_layer_call_fn_7246574Ґ
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
G__inference_conv3d_108_layer_call_and_return_conditional_losses_7246584Ґ
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
%__inference_signature_wrapper_7245943input"Ф
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
"__inference__wrapped_model_7245051У+,56?@MN[\efopuv:Ґ7
0Ґ-
+К(
input€€€€€€€€€  
™ "C™@
>

conv3d_1080К-

conv3d_108€€€€€€€€€  О
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7246343Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ≈
Q__inference_average_pooling3d_42_layer_call_and_return_conditional_losses_7246352p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ ж
6__inference_average_pooling3d_42_layer_call_fn_7246329Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Э
6__inference_average_pooling3d_42_layer_call_fn_7246334c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€О
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7246391Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ≈
Q__inference_average_pooling3d_43_layer_call_and_return_conditional_losses_7246400p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ ж
6__inference_average_pooling3d_43_layer_call_fn_7246377Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Э
6__inference_average_pooling3d_43_layer_call_fn_7246382c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€О
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7246439Є_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "UҐR
KКH
0A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ≈
Q__inference_average_pooling3d_44_layer_call_and_return_conditional_losses_7246448p;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ ж
6__inference_average_pooling3d_44_layer_call_fn_7246425Ђ_Ґ\
UҐR
PКM
inputsA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HКEA€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Э
6__inference_average_pooling3d_44_layer_call_fn_7246430c;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_102_layer_call_and_return_conditional_losses_7246324t+,;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ Ч
,__inference_conv3d_102_layer_call_fn_7246313g+,;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€  њ
G__inference_conv3d_103_layer_call_and_return_conditional_losses_7246372t56;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_103_layer_call_fn_7246361g56;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_104_layer_call_and_return_conditional_losses_7246420t?@;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_104_layer_call_fn_7246409g?@;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_105_layer_call_and_return_conditional_losses_7246525t[\;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_105_layer_call_fn_7246514g[\;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_106_layer_call_and_return_conditional_losses_7246545tef;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ Ч
,__inference_conv3d_106_layer_call_fn_7246534gef;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "$К!€€€€€€€€€њ
G__inference_conv3d_107_layer_call_and_return_conditional_losses_7246565top;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ Ч
,__inference_conv3d_107_layer_call_fn_7246554gop;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€  њ
G__inference_conv3d_108_layer_call_and_return_conditional_losses_7246584tuv;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ Ч
,__inference_conv3d_108_layer_call_fn_7246574guv;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€  
™ "$К!€€€€€€€€€  •
E__inference_dense_18_layer_call_and_return_conditional_losses_7246485\MN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
*__inference_dense_18_layer_call_fn_7246474OMN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€@”
E__inference_model_18_layer_call_and_return_conditional_losses_7245820Й+,56?@MN[\efopuvBҐ?
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
E__inference_model_18_layer_call_and_return_conditional_losses_7245904Й+,56?@MN[\efopuvBҐ?
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
E__inference_model_18_layer_call_and_return_conditional_losses_7246152К+,56?@MN[\efopuvCҐ@
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
E__inference_model_18_layer_call_and_return_conditional_losses_7246287К+,56?@MN[\efopuvCҐ@
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
*__inference_model_18_layer_call_fn_7245428|+,56?@MN[\efopuvBҐ?
8Ґ5
+К(
input€€€€€€€€€  
p 

 
™ "$К!€€€€€€€€€  ™
*__inference_model_18_layer_call_fn_7245736|+,56?@MN[\efopuvBҐ?
8Ґ5
+К(
input€€€€€€€€€  
p

 
™ "$К!€€€€€€€€€  Ђ
*__inference_model_18_layer_call_fn_7245980}+,56?@MN[\efopuvCҐ@
9Ґ6
,К)
inputs€€€€€€€€€  
p 

 
™ "$К!€€€€€€€€€  Ђ
*__inference_model_18_layer_call_fn_7246017}+,56?@MN[\efopuvCҐ@
9Ґ6
,К)
inputs€€€€€€€€€  
p

 
™ "$К!€€€€€€€€€  »
P__inference_range_conversion_18_layer_call_and_return_conditional_losses_7246304t?Ґ<
5Ґ2
0К-

parameters€€€€€€€€€  
™ "1Ґ.
'К$
0€€€€€€€€€  
Ъ †
5__inference_range_conversion_18_layer_call_fn_7246292g?Ґ<
5Ґ2
0К-

parameters€€€€€€€€€  
™ "$К!€€€€€€€€€  ѓ
G__inference_reshape_36_layer_call_and_return_conditional_losses_7246465d;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€@
Ъ З
,__inference_reshape_36_layer_call_fn_7246453W;Ґ8
1Ґ.
,К)
inputs€€€€€€€€€
™ "К€€€€€€€€€@ѓ
G__inference_reshape_37_layer_call_and_return_conditional_losses_7246505d/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "1Ґ.
'К$
0€€€€€€€€€
Ъ З
,__inference_reshape_37_layer_call_fn_7246490W/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "$К!€€€€€€€€€∆
%__inference_signature_wrapper_7245943Ь+,56?@MN[\efopuvCҐ@
Ґ 
9™6
4
input+К(
input€€€€€€€€€  "C™@
>

conv3d_1080К-

conv3d_108€€€€€€€€€  